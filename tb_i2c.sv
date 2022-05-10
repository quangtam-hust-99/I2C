module tb_i2c;

reg clk ,rst;
reg i_ready;
reg [6:0] addr;
reg [3:0] data_cnt;
reg [7:0] data_in;
wire [7:0] data_out;
wire i_rxff_wr,i_txff_rd;
reg rw;
wire i2c_done;
wire sda,scl;
/*
i2c_master uut(
    .*
);
wire sclk,clk_en;
div_clk uut(
    .*
);*/
top_i2c uut(
    .clk(clk),
    .rst(rst),
    .i_ready(i_ready),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out),
    .data_cnt(data_cnt),
    .i_rxff_wr(i_rxff_wr),
    .i_txff_rd(i_txff_rd),
    .rw(rw),
    .i2c_done(i2c_done),
    .scl(scl),
    .sda(sda)
);
pullup p1(sda);
pullup p2(scl);
initial begin
    clk =0;
    rst =0;
    #10 rst =1;
    i_ready=1;
   addr = 7'b001_0000;
   rw =0;
   data_cnt = 4;
   #25000 
   data_in = 8'b0000_0000;
   #22500 
   data_in = 8'b0000_1000;
   #22500
   data_in = 8'b0000_0100;
   #22500
   data_in = 8'b0000_0010;
   #22500
   data_in = 8'b0000_0001;
   #25000
   data_cnt = 1 ;
   #23000
   data_in = 8'b0000_0000;
   #25000;
   rw = 1;
   data_cnt = 3;

end
always begin #5 clk =~clk; end
endmodule