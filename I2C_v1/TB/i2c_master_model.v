
module i2c_master_model(

    input               clk         ,
    input               rst         ,
    input               i_ready     ,
    input       [7:0]   data_addr_rw,
    input       [7:0]   data_in     ,
    output  reg [7:0]   data_out    ,
    input       [7:0]   data_cnt    , // byte data = n <=> data_cnt = n-1
    
    inout               sda       ,
    inout               scl       ,
    
    output              i2c_done    ,
    input   wire        i_txff_empty,
    input   wire        i_rxff_full ,
    output  wire        i_txff_rd   ,
    output  wire        i_rxff_wr   ,
    // div clock interface
    input   wire [15:0] div_cnt     ,   // divsion frequency 
    output  wire        stretch
);
reg   [3:0]   Q,Q_next    ;
reg   [15:0]  cnt_clk   ;
reg   [7:0]   counter, counter_byte;
wire          sclk,clk_en;
reg           sta_sto;
wire sda_i ,scl_i,scl_buf;
reg scl_o;
reg sda_o  ;
reg reg_scl_i ;

wire scl_falling , scl_rising ;
localparam  [3:0]   
                    IDLE            = 4'd1 ,
                    START           = 4'd2 ,
                    ADDR            = 4'd3 ,     // tranfer address and bit read/wrtite
                    READ_ACK        = 4'd4 ,     // ACK address
                    WRITE_DATA      = 4'd5 ,     // data from master to slave
                    READ_ACK_DATA   = 4'd6 ,     // ACK data from master to slave
                    READ_DATA       = 4'd7 ,     // data from slave to master
                    WRITE_ACK_DATA  = 4'd8 ,     // ACK data from slave to master
                    SR              = 4'd9 ,     // repeat start
                    STOP            = 4'd10;
div_clk_model  div_clk(
    .clk    (clk    ),
    .rst    (rst    ),
    .div_cnt(div_cnt),
    .stretch(stretch),
    .clk_en (clk_en ),
    .sclk   (sclk   )
);
always @(posedge clk or negedge rst)
begin
    if(~rst)
        cnt_clk <= 16'b0;
    else if(scl_falling || scl_rising || Q == IDLE || Q==START || Q==ADDR)
        cnt_clk <= 16'b0 ;
    else if (i_ready)
        cnt_clk <= cnt_clk + 1 ;
end

        
///////////////////////////////////////////////
// next state

always @(posedge clk or negedge rst)
begin
        if(~rst)
            begin
                Q <= IDLE ;
                reg_scl_i<= 1'b0;
            end
        else 
            begin
                Q <= Q_next ;
                reg_scl_i<= scl_i;
            end
end

///////////////////////////////////////////////////
// control path

always@*
begin
Q_next = Q;
    case(Q)
            IDLE:   if(sclk)//1
                    begin
                        if(i_ready)
                            begin 
                                Q_next = START ;
                            end
                        else
                            begin
                                Q_next = IDLE ;
                            end
                    end
            START: if(sclk)    //2 
                    begin   
                        Q_next = ADDR ;
                    end
            ADDR : if(sclk)  //3    
                    begin 
                        if(counter == 0)  
                            begin                            
                                Q_next = READ_ACK;
                            end
                    end
            READ_ACK :if(sclk)    //4
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
            WRITE_DATA :if(sclk)       //5
                        begin 
                            if(counter == 0)
                                begin
                                    Q_next = READ_ACK_DATA;
                                end
                                
                        end
            READ_ACK_DATA : if(sclk)     //6
                        begin 
                            if((counter_byte > 0) && (sda_i == 0))
                                begin    
                                    Q_next = WRITE_DATA;
                                    
                                end
                            else 
                                begin
                                    Q_next = STOP ;
                                end 
                        end   
            READ_DATA :  if(sclk)    //7
                        begin 
                            if(counter == 0)
                                begin
                                    Q_next = WRITE_ACK_DATA;
                                end
                        end
            WRITE_ACK_DATA :if(sclk)      //8
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
            STOP :  if(sclk)     //10
                        begin 
                            Q_next = IDLE;
                        end

        endcase
            
end

/////////////////////////////////////////////////////
// data path

always @(posedge clk )
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
                    READ_ACK :begin
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
                    WRITE_ACK_DATA :begin
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
                    READ_ACK_DATA :
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

always @(posedge clk or negedge rst)
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
always @ (posedge clk or negedge rst)
begin
    if(~rst)
        begin
            scl_o <= 1'b0 ;
        end
     else if( Q == IDLE )
         scl_o <= 1'b1 ;
     else if (Q == START)
         scl_o <= ~sta_sto ;
     else
         scl_o <= sta_sto ;
end
   // assign  scl_o     = (Q == IDLE ) ? 1'b1 : ((Q == START) ? ~sta_sto : sta_sto ) ;
    assign  i2c_done  = ((Q == STOP)&&(sclk))   ;
    assign  i_txff_rd = i_txff_empty  ?  1'b0 : ((((Q == READ_ACK_DATA)||(Q == READ_ACK))) && (sclk)) ;
    assign  i_rxff_wr = i_rxff_full   ?  1'b0 : ((Q == WRITE_ACK_DATA) && (sclk)) ;
    assign scl_falling =  ~scl_i &&  reg_scl_i ;
    assign scl_rising  =   scl_i && ~reg_scl_i ;
    assign  stretch   = (cnt_clk > div_cnt/2 +1 )  ;
    
    assign sda_i = sda ;
    assign sda = sda_o ? 1'bz : 1'b0 ;
    assign scl_i = scl ;
    assign scl = scl_o ? 1'bz : 1'b0 ;
endmodule            
