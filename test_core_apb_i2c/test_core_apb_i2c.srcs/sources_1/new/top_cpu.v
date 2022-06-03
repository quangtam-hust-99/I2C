

module top_cpu(
input clk_n,clk_p,
input reset,
inout sda ,
input rx,
output tx ,
output cs ,
output scl 
    );
wire sda_o,scl_o,sda_i,clk_out2;
design_1 top_cpu
(
    .clk_n(clk_n),
    .clk_p(clk_p),
    .clk_out2(clk_out2),
    .reset(reset),
    .sda_o(sda_o),
    .sda_i(sda_i),
    .scl_o(scl_o),
    .rx(rx),
    .tx(tx)
    );
    
ila_0 debug(
    .clk(clk_out2),
    .probe0(sda),
    .probe1(scl)
    );
   
assign sda_i = sda ;
assign sda   = sda_o ? 1'bz : 1'b0;
assign scl   = scl_o ;//? 1'bz : 1'b0;
assign cs = 1; 

endmodule
