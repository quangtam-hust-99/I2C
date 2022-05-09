
module i2c_master(
    input               clk         ,
    input               rst         ,
    input               i_ready     ,
    input       [6:0]   addr        ,
    input       [7:0]   data_in     ,
    output  reg [7:0]   data_out    ,
    input       [3:0]   data_cnt    ,
    input               rw          ,
    inout               sda         ,
    inout               scl ,

    output  wire             i_txff_rd   ,
    output  wire             i_rxff_wr   
    /*input   wire            i_txff_empty,
    input   wire            i_rxff_full */
);
reg   [3:0]   Q,Q_next    ;
reg   [3:0]   counter, counter_byte,counter_data_read;
wire  [7:0]   mem_in  [0:4]   ;           // tranfer data from master to slave
reg   [7:0]   mem_out [0:4]   ;            // tranfer data from master to slave
wire          sclk,clk_en;
reg           sda_o;
reg           scl_en,scl_idle,sta_sto;


reg [7:0] data_addr_rw ;
reg [3:0] cnt;

localparam  [3:0]   
                    IDLE            = 1 ,
                    START           = 2 ,
                    ADDR            = 3 ,     // tranfer address and bit read/wrtite
                    READ_ACK        = 4 ,     //ACK address
                    WRITE_DATA      = 5 ,     // data from master to slave
                    READ_ACK_DATA   = 6 ,     // ACK data from master to slave
                    READ_DATA       = 7 ,     // data from slave to master
                    WRITE_ACK_DATA  = 8 ,     // ACK data from slave to master
                    SR              = 9 ,     // repeat start
                    STOP            = 10;
div_clk #(.m(249),.n(10)) uut(
    .clk(clk),
    .rst(rst),
    .clk_en(clk_en),
    .sclk(sclk)
);
always_ff @(posedge clk_en or negedge rst)
begin
    if(~rst)
        begin
            sta_sto<=0;
        end
    else 
        begin
            sta_sto <= ~ sta_sto;
        end
end
always_ff @(posedge sclk or negedge rst)
begin
        if(~rst)
            begin
                Q<=IDLE;
            end
        else
            begin
                Q<= Q_next;
            end
end
always_comb
begin
    case(Q)
            IDLE:
                    begin // 1
                        Q_next = START ;
                        sda_o  = 1'b1  ;
                        data_addr_rw = {addr,rw} ;
                    end
            START:      
                    begin//2
                        Q_next = ADDR ;
                        sda_o  = 1'b0 ;

                    end
            ADDR :      
                    begin //3
                        sda_o = data_addr_rw[counter];
                        if(counter == 0)  
                            begin                            
                            Q_next = READ_ACK;
                            end
                    end
            READ_ACK :     //4
                    begin
                        if((rw==0) && (sda ==0)) 
                            begin
                                Q_next = WRITE_DATA; 
                            end
                        else if ((rw==1) && (sda ==0)) 
                            begin
                                Q_next = READ_DATA;
                            end
                        else 
                            begin
                                Q_next = STOP;
                            end
                    end            
            WRITE_DATA :      //5
                        begin 
                            sda_o = data_in[counter];
                            if(counter == 0)
                                begin
                                    Q_next = READ_ACK_DATA;
                                end
                                
                        end
            READ_ACK_DATA :     //6
                        begin 
                            if(counter_byte > 0) 
                                begin    
                                    Q_next = WRITE_DATA;
                                    
                                end
                            else 
                                begin
                                    Q_next = STOP ;
                                end
                        end   
            READ_DATA :     //7
                        begin 
                            data_out[counter] = sda;
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
                                    sda_o  = 1'b0 ;
                                end
                        end
            STOP :      //9
                        begin 
                            sda_o = 1'b0;
                            Q_next = IDLE;
                        end

        endcase
            
end

always_ff @(posedge sclk) 
      case(Q)
                    START :                     
                        begin 
                            counter <= 7             ;
                            counter_byte <= data_cnt ;
                        end
                    ADDR : 
                       
                        begin 
                            counter <= counter-1 ; 
                        end
                    READ_ACK :
                        
                        begin
                            counter <= 7             ;
                            counter_byte <= data_cnt ;
                        end
                    WRITE_DATA :
                       
                        begin 
                            counter <= counter -1    ;
                        end
                    READ_DATA:
                       
                        begin 
                            counter <= counter -1    ;
                        end
                    WRITE_ACK_DATA :
                       
                        begin
                            counter <= 7 ;
                            if((counter_byte > data_cnt) || (counter < 0))
                                counter_byte <= data_cnt        ;
                            else
                                counter_byte <= counter_byte -1 ;
                        end
                    READ_ACK_DATA :
                        
                        begin
                            counter <= 7;
                            if((counter_byte > data_cnt) || (counter < 0))
                                counter_byte <= data_cnt        ;
                            else
                                counter_byte <= counter_byte -1 ;
                        end
                    STOP :  
                       
                        begin
                            counter_byte <= data_cnt ;
                        end
                    default :
                        
                        begin 
                            counter <=0              ;
                            counter_byte <= data_cnt ;
                        end
                endcase
always_comb 
begin
    if(Q == START)
        begin 
            scl_en = ~ sta_sto; 
        end
    else if ( Q == IDLE )
        begin 
            scl_en = 1'b1; 
        end
    else 
        begin 
            scl_en = sta_sto; 
        end
end
    assign  i_txff_rd = ((Q == READ_ACK_DATA ) || (Q == READ_ACK)) && (sclk) ;
    assign  i_rxff_wr = (Q == WRITE_ACK_DATA) && (sclk) ;
    assign  sda = sda_o  ? 1'bz : 1'b0;
    assign  scl = scl_en ? 1'bz : 1'b0; 
endmodule            