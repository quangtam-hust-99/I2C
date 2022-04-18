
// clock = 100Mhz
module div_clk 
# (parameter m=249 , n=10 )
(   
    input clk, rst,
    output reg sclk ,clk_en
);
reg [n-1:0] counter;
reg [n-1:0] counter_clk;
always @( posedge clk or negedge rst)
    begin
        if(~rst)
        begin
        counter <=0;
        sclk <= 1'b0;
        end
            else if (counter == m)
                begin
                counter <=0;
                sclk <= 1'b1 ;
                end
            else 
                begin
                counter <= counter +1'b1;
                sclk <= 1'b0;
                end

    end
always @(posedge clk or negedge rst)
    begin
        if(~rst)
            begin
                counter_clk <= 0;
                clk_en <= 1'b0;
            end
        else if (counter_clk == m/2)
            begin
                clk_en <= ~ clk_en;
                counter_clk <= 0;
            end
        else 
            begin
                clk_en <= 1'b0;
                counter_clk <= counter_clk +1;
            end
    end
endmodule