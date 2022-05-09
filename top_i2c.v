module top_i2c
( 
    input   clk,
    input   rst,
    input   wire [3:0] data_cnt  ,
    input        [6:0] addr      ,
    input        [7:0] data_in   ,
    input              rw        ,
    inout              sda       ,
    inout              scl       ,
    output             i_txff_rd
);
i2c_master master_i2c(
    .clk(clk),
    .rst(rst),
    .addr(addr),
    .rw(rw),
    .data_cnt(data_cnt),
    .data_in(data_in),
    .sda(sda),
    .scl(scl),
    .i_txff_rd(i_txff_rd)
);

i2c_slave_model salve_i2c(
    .sda(sda),
    .scl(scl)
);
endmodule 