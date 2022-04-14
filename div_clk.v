
// clock = 100Mhz
module div_clk 
# (parameter m=249 , n=10 )
(   
    input clk, rst,
    output reg scl_clk,sclk  // clock scl and sda = 100 khz ,clk_ctr =200khz
);
reg [n-1:0] counter;
reg [3:0] counter_clk;
always @( posedge clk or posedge rst)
    begin
        if(~rst)
        begin
        counter <=0;
        counter_clk<=0;
        end
            else if (counter == m)
            begin
            counter <=0;
            counter_clk <= counter_clk+1;
            end
            else if (counter_clk ==4)
            counter_clk <=0;
            else 
            begin
            counter <= counter +1;
            end

    end
always @(posedge clk or posedge rst)
    begin
        if(~rst)
            begin
            scl_clk<=0;
            sclk<=0;
        end
        else
            case(counter_clk)
                4'd1:
                    begin
                    sclk <= 1;
                    scl_clk <= 0;
                    end
                4'd2:
                    begin
                    sclk <= 1;
                    scl_clk <= 1;
                    end
                4'd3:
                    begin
                    sclk <= 0;
                    scl_clk <= 1;
                    end
                4'd4:
                    begin
                    sclk <= 0;
                    scl_clk <= 0;
                    end
                
               /* 4'd5:
                        begin
                        sclk <= 0;
                        scl_clk <= 0;
                        end
                
                4'd6:
                        begin
                        sclk <= 0;
                        scl_clk <= 1;
                        end
                
                4'd7:
                        begin
                        sclk <= 0;
                        scl_clk <= 1;
                        end
                
                4'd8:
                        begin
                        sclk <= 0;
                        scl_clk <= 0;
                        end
                */
            endcase
           
      end
endmodule