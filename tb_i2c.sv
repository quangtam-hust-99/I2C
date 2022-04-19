`timescale 1ns / 1ps
module tb_i2c;

reg clk ,rst;

reg [6:0] addr;
reg [7:0] data0,data1,data2,data3,data4;
reg rw;
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
    .*
);
pullup p1(sda);
pullup p2(scl);
initial begin
    clk =0;
    rst =0;
    #10 rst =1;
   addr = 7'b001_0000;
   rw =0;
    data4 = 8'b0000_0000; // byte data ??u ti�n l� byte ??a ch? n�n ph?i truy?n n+1 byte data
   data1 = 8'b0000_1000;
   data2 = 8'b0000_0100;
   data3 = 8'b0000_0010;
   data0 = 8'b0000_0001;
   # 285000 rw =0;
    data4 = 8'b1111_1100;
    # 50000 rw =1;




end
always begin #5 clk =~clk; end
endmodule