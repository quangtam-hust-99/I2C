module top_i2c
( 
    input   clk,
    input   rst,
    input   [6:0] addr,
    input   [7:0] data,
    input rw,
    inout  sda,
    output  scl
);
i2c_0 master_i2c(
    .clk(clk),
    .rst(rst),
    .addr(addr),
    .rw(rw),
    .data(data),
    .sda(sda),
    .scl(scl)
);
/*
i2c_slave_model salve_i2c(
    .sda(sda),
    .scl(scl)
);*/
endmodule 