module tb_i2c;

reg clk ,rst;

reg [6:0] addr;
reg [7:0] data;//data2,data3,data4;
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
   data = 8'b0000_0001;
  /* data2 = 8'b0000_0010;
   data3 = 8'b0000_0100;
   data4 = 8'b0000_1000;*/
    forever #5 clk =~clk;
end
endmodule