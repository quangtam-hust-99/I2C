
module i2c_0(
    input   clk,
    input   rst,
    input   [6:0] addr,
    input   [7:0] data,
    input rw,
    inout  sda,
    output  scl
);
reg data_ival,data_oval;
wire sclk;
wire sda_i;
reg sda_o,i2c_done;
reg nack;
localparam  [3:0]   state_idle = 1,
                    state_start = 2,
                    state_addr = 3,
                    state_RW = 4,
                    state_NA = 5,
                    state_data_w = 6,
                    state_NA_w = 7, 
                    state_data_r =8,
                    state_NA_r = 9,
                    state_stop = 10;
 reg[3:0] Q,Q_next;
 reg [3:0] counter;
div_clk #(.m(249),.n(10)) uut(
    .clk(clk),
    .rst(rst),
    .scl_clk(scl),
    .sclk(sclk)
);
always @(posedge sclk or negedge rst)
    begin
        if(~rst)
        begin
            Q_next <=state_idle;  
        end
            else
           begin
                Q<=Q_next;
            end
    end
always@(posedge sclk)
        case(Q_next)
            state_idle: 
                    begin // 1
                        sda_o <= 1'b1;
                        data_oval <=0;
                        Q_next <= state_start;
                        i2c_done<=0;
                    end
            state_start: 
                    begin//2
                        sda_o <= 1'b0;
                        Q_next <= state_addr;
                        counter <= 4'd6;
                    end
            state_addr : 
                    begin //3
                        sda_o <= addr[ counter];
                        if(counter==0)
                            begin
                            Q_next <= state_RW;
                            end
                        else
                        counter <= counter - 4'b1;
                    end
            state_RW ://4
                    begin
                        if(rw==0) //&& (sda_i ==0)) // bit check nack
                            begin
                                counter <= 4'd7;
                                Q_next <= state_data_w; 
                                sda_o <=0;
                                end
                        else if ( rw==1) //&& (sda_i ==0)) // bit check nack
                            begin
                                Q_next <= state_data_r;
                                sda_o <=1;
                            end
                        else 
                            begin
                                Q_next <= state_addr;
                                sda_o <= 1'bz;
                            end
                        end            
       /*     state_NA : begin //4
                        sda_o <= 1'b0;
                        Q_next <= state_NA;
                        end*/

            state_data_w : //6
                        begin 
                        sda_o <= data[counter];
                            if(counter == 0)
                                begin
                                    counter <= 4'd7;
                                    data_oval <=1;
                                    Q_next <= state_NA_w;
                                end
                            else
                                begin
                                    counter <= counter -4'b1;
                                end
                        end
            state_NA_w ://7
                        begin 
                            //sda_o<= 1'bz;
                            counter <= 4'd7;
                            Q_next <= state_stop; 
                        end       
            state_data_r ://8
                        begin 
                            if(data_ival)
                                begin
                                    sda_o <= 0;
                                    Q_next <= state_NA_r;
                                end
                            else 
                                Q_next<=state_NA;
                        end
            state_NA_r ://9
                        begin 
                          //  if(sda_i)
                            begin
                                sda_o <=0;
                                Q_next <= state_stop;
                            end
                           // else 
                             //    Q_next <= state_NA;
                        end
            state_stop : //10
                        begin 
                            sda_o <= 1'b0;
                            Q_next <= state_idle;
                            i2c_done <=1;
                        end
        endcase    
        
   assign sda = (( Q== state_start ) || (Q==state_stop)) ? 1'b1 : sda_o;
   assign sda_i = ((Q == state_RW) || (Q == state_NA_w)) ? sda : 1'bz;
endmodule            