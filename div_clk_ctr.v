module div_clk_ctr
#( parameter n = 10,
            m = 4
 )
( input clk,reset,
    output reg scl,sda,
    output reg clk_ctr
);
reg [n-1:0] counter_clk;
always @ (posedge clk or reset)
begin
    if(reset)
    begin
        clk_ctr <=0;
        counter_clk <=0;
        sda <=1;
        scl<=1;
    end
    else if(counter_clk == m)
    begin
        counter_clk<=0;
        clk_ctr<=~clk_ctr;
    end
    else 
    counter_clk <=counter_clk + 1;
end
always @(posedge clk_ctr)
begin
    scl <= ~scl;
end
always @(negedge clk_ctr)
begin
    sda <= ~sda;
end
endmodule