
module top_cpu(
input clk_n,clk_p,
input reset,
output clk_out2,
inout sda ,
inout scl ,
input rx ,
output tx 
    );
wire sda_o , sda_i , scl_o , scl_i ;

design_1 design_1
(
    .clk_n(clk_n),
    .clk_p(clk_p),
    .reset(reset),
    .sda_i(sda_i),
    .sda_o(sda_o),
    .scl_i(scl_i),
    .scl_o(scl_o),
    .clk_out2(clk_out2),
    .rx(rx),
    .tx(tx)
    ); 

assign scl_i  = scl ;
assign scl = scl_o ? 1'bz : 1'b0 ;
assign sda_i  = sda ;
assign sda = sda_o ? 1'bz : 1'b0 ; 
endmodule