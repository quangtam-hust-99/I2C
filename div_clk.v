
module div_clk 
(   
    input  wire         clk, rst,
    input  wire [15:0]  div_cnt,
    input  wire         start ,
    output reg          sclk ,clk_en
);
reg [15:0] counter;
reg [15:0] counter_clk;
always @( posedge clk or negedge rst)
    begin
        if(~rst)
            begin
            counter <=0      ;
            sclk    <= 1'b0  ;
            end
                else if (counter >= div_cnt)
                    begin
                    counter <=0  ;
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
        else if (counter_clk >= div_cnt/2)
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