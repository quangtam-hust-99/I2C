`timescale 1ns / 1ps

module tb(

    );
    reg   reset = 0;
    wire   clk_n;
    reg   clk_p = 0;
    wire scl,sda;
    top_cpu top_cpu(
    .reset(reset),
    .clk_n(clk_n),
    .clk_p(clk_p),
    .sda(sda),
    .scl(scl)
    );
    i2c_slave_model slave(
    .sda(sda),
    .scl(scl)
    );
    pullup p1(sda);
    pullup p2(scl);
    always #10 clk_p = ~clk_p;
    assign clk_n = ~clk_p;
    initial begin
       reset = 0;
       #100;
       reset = 1; 
    end
    
endmodule
