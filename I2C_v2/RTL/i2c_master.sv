/*    
        start condition                scl low           stop condition
        scl    ____     _   _   _                 _   _____
                   |___| |_| |_| |_______________| |_|
        
        sda    __     ___     ___              __      ____
                 |___|   |___|   |.............  |____|      
                ___________________________________     ______
i2c_ready _____|                                   |___|
                 
        clk_en   |_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|
        
        sclk     |___|___|___|___|___|___|___|___|___|

- scl hold low due to microbalze hasn't sent data to slave 
    if scl is hold low then  sda not change
- clk_en = 1 every 0.5 cycle scl 
  sclk   = 1 every 1 cycle scl






*/

module i2c_master(

    input       wire            clk             ,
    input       wire            rst             ,
    input       wire            i2c_ready       ,
    input       wire    [6:0]   addr            ,
    input       wire    [1:0]   rw              ,
    input       wire    [7:0]   data_in         ,
    output      reg     [7:0]   data_out        ,
    input       wire    [7:0]   data_cnt        ,       // byte data = n <=> data_cnt = n-1
    
    input       wire            sda_i           ,
    input       wire            scl_i           ,
    output      reg             sda_o           ,
    output      wire            scl_o           ,
    
    output      wire    [7:0]   status          ,
    input       wire    [10:0]  div_cnt         ,       // divsion frequency 
    input       wire    [1 :0]  mode_i2c
                          
);

reg   [3:0]     Q,Q_next                  ;
reg   [7:0]     counter, counter_byte     ;
reg   [7:0]     data_addr_rw              ;
reg             repeat_sta                ;
wire            sclk,clk_en               ;
reg             sta_sto                   ;


// check slave hold scl low 

reg   [15:0]    cnt_clk                   ;
wire            scl_falling               ;
wire            scl_rising                ;
reg             reg_scl_i                 ;
wire            stretch                   ;

// interrupt
wire            tx_da_ack                 ;
wire            rx_da_ack                 ;
wire            i2c_done                  ;
localparam  [3:0]   
                    IDLE            = 4'd1 ,
                    START           = 4'd2 ,
                    ADDR            = 4'd3 ,     // tranfer address and bit read/wrtite
                    ADDR_ACK        = 4'd4 ,     // ACK address
                    WRITE_DATA      = 4'd5 ,     // data from master to slave
                    READ_ACK_DATA   = 4'd6 ,     // ACK data from master to slave
                    READ_DATA       = 4'd7 ,     // data from slave to master
                    WRITE_ACK_DATA  = 4'd8 ,     // ACK data from slave to master
                    SR              = 4'd9 ,     // repeat start
                    STOP            = 4'd10;
                    
div_clk  div_clk(
    .clk        (clk        ),
    .rst        (rst        ),
    .div_cnt    (div_cnt    ),
    .stretch    (stretch    ),
    .clk_en     (clk_en     ),
    .sclk       (sclk       )
);

// check scl low 
always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        cnt_clk <= 16'b0;
    else 
    begin
        if(scl_falling || scl_rising || Q == IDLE || Q==START || Q==ADDR || Q==STOP || Q==SR)
            cnt_clk <= 16'b0 ;
        else if (i2c_ready)
            cnt_clk <= cnt_clk + 1 ;
    end
end

always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        reg_scl_i <= 1'b0 ;
    else
        reg_scl_i <= scl_i ;
end
///////////////////////////////////////////////
// next state

always_ff @(posedge clk or negedge rst)
begin
        if(~rst)
            begin
                Q <= IDLE ;              
            end
        else if(sclk)
            begin
                Q <= Q_next ;               
            end
end

///////////////////////////////////////////////////
// control path

always_comb
begin
    case(Q)
            IDLE:  
                    begin
                        if(i2c_ready && (mode_i2c == 2'b10))
                            begin 
                                Q_next = START ;
                            end
                        else
                            begin
                                Q_next = IDLE ;
                            end
                    end
            START:     //2 
                    begin   
                        Q_next = ADDR ;
                    end
            ADDR :   //3    
                    begin 
                        if(counter == 0)  
                            begin                            
                                Q_next = ADDR_ACK;
                            end
                    end
            ADDR_ACK:    //4
                    begin
                        if((data_addr_rw[0] == 1'b0) && (sda_i == 1'b0)) 
                            begin
                                Q_next = WRITE_DATA; 
                            end
                        else if ((data_addr_rw[0] == 1'b1) && (sda_i == 1'b0)) 
                            begin
                                Q_next = READ_DATA;
                            end
                        else 
                            begin
                                Q_next = STOP;
                            end
                    end            
            WRITE_DATA :       //5
                        begin 
                            if(counter == 8'd0)
                                begin
                                    Q_next = READ_ACK_DATA;
                                end                                
                        end
            READ_ACK_DATA :     //6
                        begin 
                            if((counter_byte > 0) && ( sda_i == 0 ))
                            begin
                                if (rw == 2'b10)
                                    begin
                                        Q_next = SR ;
                                    end
                                else
                                    begin    
                                        Q_next = WRITE_DATA;                                   
                                    end
                            end 
                            else
                                begin
                                    Q_next = STOP ;
                                end 
                        end   
            READ_DATA :      //7
                        begin 
                            if(counter == 0)
                                begin
                                    Q_next = WRITE_ACK_DATA;
                                end
                        end
            WRITE_ACK_DATA :     //8
                        begin 
                            if(counter_byte > 0) 
                                begin  
                                    Q_next = READ_DATA;  
                                end
                            else 
                                begin
                                    Q_next = STOP ;
                                end
                        end
            SR :
                        begin
                            Q_next = START ;
                        end
            STOP :      //10
                        begin 
                            Q_next = IDLE;
                        end

        endcase
            
end

/////////////////////////////////////////////////////
// data path

always_ff @(posedge clk )
begin
    if(~rst)
    begin
        sda_o               <= 1'b1     ;
        counter             <= 8'b0     ;
        counter_byte        <= 8'b0     ;
        repeat_sta          <= 1'b0     ;
        data_addr_rw        <= 8'b0     ;
    end
    else
        case(Q)
                    IDLE: begin
                            sda_o           <= 1'b1     ;
                            counter_byte    <= 8'b0     ;
                            counter         <= 8'd7     ;
                          end
                            
                    START :                     
                        begin 
                            counter         <= 8'd7     ;
                            counter_byte    <= data_cnt ;
                            sda_o           <= 1'b0     ;
                            if(repeat_sta)
                                data_addr_rw  <= {addr , rw[1]} ;
                            else
                                data_addr_rw  <= {addr , rw[0]} ;
                        end
                    ADDR : begin
                        if(sclk) 
                        begin 
                            counter <= counter - 1      ;                            
                        end                     
                        sda_o <= data_addr_rw[counter]  ;
                        repeat_sta <= 1'b0 ;
                        end
                    ADDR_ACK:begin
                        if(sclk)
                        begin
                            counter      <= 8'd7        ;
                            counter_byte <= data_cnt    ;                            
                        end
                        sda_o <= 1'b1 ;
                        end 
                    WRITE_DATA :
                    begin
                       if(sclk)  
                        begin 
                            counter <= counter -1    ;
                        end
                        sda_o <= data_in[counter];
                        end
                    READ_DATA:begin
                       if(sclk)  
                        begin 
                            counter <= counter - 1    ;
                        end
                        sda_o <= 1'b1;
                        data_out[counter] <= sda_i    ;
                        end
                    WRITE_ACK_DATA :begin
                        if(sclk)  
                            begin 
                                counter <= 8'd7 ;
                                if((counter_byte > data_cnt) || (counter < 0)) begin
                                    counter_byte <= data_cnt         ;                                   
                                    end
                                else begin
                                    counter_byte <= counter_byte - 1 ;                                   
                                    end
                            end
                        if(counter_byte > 0)
                            sda_o  <= 1'b0 ;
                            else
                            sda_o  <= 1'b1 ;
                        end
                    READ_ACK_DATA :
                    begin
                        if(sclk)  
                        begin
                            counter <= 8'd7 ;
                            if((counter_byte > data_cnt) || (counter < 0))
                                counter_byte <= data_cnt        ;
                            else
                                counter_byte <= counter_byte -1 ;
                        end
                        sda_o <= 1'b1 ;
                        end
                    SR:
                    begin
                        sda_o       <= 1'b1 ;
                        repeat_sta  <= 1'b1 ;
                    end
                    STOP :  
                        
                        begin
                            counter_byte    <= data_cnt     ;
                            sda_o           <= 1'b0         ;
                        end
        endcase                  
end                  
// gen signal scl 
always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        begin
            sta_sto <= 1'b0 ;
        end
    else if( Q == IDLE)
        begin
            sta_sto <= 1'b0 ;
        end
    else if(clk_en)
        begin
            sta_sto <= ~ sta_sto ;
        end
end

    assign  scl_o           = (Q == IDLE ) ? 1'b1 : ( Q == START ? ~sta_sto : sta_sto )      ;
    assign  i2c_done        =  Q == STOP                                                                ;
    assign  rx_da_ack       = (Q == WRITE_ACK_DATA  )                                                   ;
    assign  tx_da_ack       = (Q == READ_ACK_DATA  || Q == ADDR_ACK) && Q_next != STOP                  ;
    assign  start           = (Q == IDLE || Q == SR )                                                   ;                                                               ; // same i2c_ready
    assign  status          = { 4'b0  , rx_da_ack , tx_da_ack  , i2c_done ,1'b0}                        ;
    
    assign  scl_falling =  ~scl_i &&  reg_scl_i      ;    // detected edge scl 
    assign  scl_rising  =   scl_i && ~reg_scl_i      ;
    assign  stretch     = (cnt_clk > div_cnt/2 +1 )  ;    // counter to edge scl if cnt_bit more than div_cnt/2+1 then there haven't edge scl => scl is low 
endmodule            
