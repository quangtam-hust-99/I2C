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
    input       wire    [7:0]   data_addr_rw    ,
    input       wire    [7:0]   data_in         ,
    output      reg     [7:0]   data_out        ,
    input       wire    [7:0]   data_cnt        ,       // byte data = n <=> data_cnt = n-1
    
    input       wire            sda_i           ,
    input       wire            scl_i           ,
    output      reg             sda_o           ,
    output      wire            scl_o           ,
    
    output      wire    [7:0]   status          ,
    input       wire    [19:0]  time_out        ,       // time_out
    input       wire    [10:0]  div_cnt         ,       // divsion frequency 
    input       wire    [1 :0]  mode_i2c                // mode_i2c 10 -> master ; 01 -> slave
                          
);

reg   [3:0]     Q,Q_next                  ;
reg   [7:0]     counter, counter_byte     ;
wire            sclk,clk_en               ;
reg             sta_sto                   ;

// check slave hold scl low 

reg   [15:0]    cnt_clk                   ;
reg   [19:0]    cnt_stretch               ;
wire            scl_falling               ;
wire            scl_rising                ;
reg             reg_scl_i                 ;
wire            stretch                   ;
reg             reg_stretch               ;

// interrupt
wire            tx_da_ack                 ;
wire            rx_da_ack                 ;
wire            start                     ;
wire            i2c_done                  ;
localparam  [3:0]   
                    IDLE            = 4'd1  ,
                    START           = 4'd2  ,
                    ADDR            = 4'd3  ,     // tranfer address and bit read/wrtite
                    ADDR_ACK        = 4'd4  ,     // ACK address
                    WRITE_DATA      = 4'd5  ,     // data from master to slave
                    ACK_WRITE       = 4'd6  ,     // ACK data from master to slave
                    READ_DATA       = 4'd7  ,     // data from slave to master
                    ACK_READ        = 4'd8  ,     // ACK data from slave to master
                    SR              = 4'd9  ,     // repeat start
                    STOP            = 4'd10 ;
                    
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
    else if(scl_falling || scl_rising || Q == IDLE || Q==START || Q==ADDR || Q==STOP)
        cnt_clk <= 16'b0 ;
    else if (i2c_ready)
        cnt_clk <= cnt_clk + 1 ;
end

always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        cnt_stretch <= 20'd0 ;
    else if(stretch)
        cnt_stretch <= cnt_stretch + 20'b1 ;   
    else if ((stretch && ~ reg_stretch )||(~stretch && reg_stretch ))   // edge rising and falling stretching
        cnt_stretch <= 20'd0 ; 
end

always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        begin
        reg_stretch <= 1'b0 ;
        reg_scl_i   <= 1'b0 ;
        end
    else
        begin
        reg_stretch <= stretch ;
        reg_scl_i   <= scl_i   ;
        end
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
    if(cnt_stretch >= time_out)       
    Q_next = IDLE ;
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
                        if((data_addr_rw[0]==0) && (sda_i ==0)) 
                            begin
                                Q_next = WRITE_DATA; 
                            end
                        else if ((data_addr_rw[0]==1) && (sda_i ==0)) 
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
                            if(counter == 0)
                                begin
                                    Q_next = ACK_WRITE;
                                end                                
                        end
            ACK_WRITE :     //6
                        begin 
                            if((counter_byte > 0) && ( sda_i == 0 ))
                                begin    
                                    Q_next = WRITE_DATA;                                   
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
                                    Q_next = ACK_READ;
                                end
                        end
            ACK_READ :     //8
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
            STOP :      //10
                        begin 
                            Q_next = IDLE;
                        end

        endcase
            
end

/////////////////////////////////////////////////////
// data path

always_ff @(posedge clk )
      case(Q)
                    IDLE: begin
                            sda_o  <= 1'b1  ;
                            counter_byte <= 0;
                            counter <= 7  ;
                          end
                            
                    START :                     
                        begin 
                            counter <= 7             ;
                            counter_byte <= data_cnt ;
                            sda_o  <= 1'b0 ;
                        end
                    ADDR : begin
                        if(sclk) 
                        begin 
                            counter <= counter-1 ;                            
                        end
                        sda_o <= data_addr_rw[counter];
                        end
                    ADDR_ACK:begin
                        if(sclk)
                        begin
                            counter <= 7             ;
                            counter_byte <= data_cnt ;                            
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
                            counter <= counter -1    ;
                        end
                        sda_o <= 1'b1;
                        data_out[counter] <= sda_i;
                        end
                    ACK_READ :begin
                        if(sclk)  
                            begin 
                                counter <= 7 ;
                                if((counter_byte > data_cnt) || (counter < 0)) begin
                                    counter_byte <= data_cnt        ;                                   
                                    end
                                else begin
                                    counter_byte <= counter_byte -1 ;                                   
                                    end
                            end
                        if(counter_byte > 0)
                            sda_o  <= 1'b0 ;
                            else
                            sda_o  <= 1'b1 ;
                        end
                    ACK_WRITE :
                    begin
                        if(sclk)  
                        begin
                            counter <= 7;
                            if((counter_byte > data_cnt) || (counter < 0))
                                counter_byte <= data_cnt        ;
                            else
                                counter_byte <= counter_byte -1 ;
                        end
                        sda_o <= 1'b1 ;
                        end
                    STOP :  
                        
                        begin
                            counter_byte <= data_cnt ;
                            sda_o <= 1'b0;
                        end
                endcase   
                
//// wait signal read from fifo
                     
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

    assign  scl_o     = (Q == IDLE )  ? 1'b1 : ( Q == START ? ~sta_sto : sta_sto ) ;
    assign  i2c_done  = (Q == STOP )                                               ;
    assign  rx_da_ack = (Q == ACK_READ )                                           ;
    assign  tx_da_ack = (Q == ACK_WRITE  || Q == ADDR_ACK) && Q_next != STOP       ;
    assign  start     = (Q == IDLE )                                               ; // same i2c_ready
    assign  status    = { 4'b0  , rx_da_ack , tx_da_ack  , i2c_done , start }      ;
    
    assign  scl_falling =  ~scl_i &&  reg_scl_i      ;    // detected edge scl 
    assign  scl_rising  =   scl_i && ~reg_scl_i      ;
    assign  stretch     = (cnt_clk > div_cnt/2 +1 ) ? ((cnt_stretch > time_out) ? 1'b0 : 1'b1) : 1'b0 ;   // counter to edge scl if cnt_bit more than div_cnt/2+1 then there haven't edge scl => scl is low 

endmodule            