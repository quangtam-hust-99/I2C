`timescale 1ns / 1ps

module tb(

    );
    reg   reset = 0;
    wire   clk_n;
    reg   clk_p = 0;
    wire scl,sda;
    
    reg  [7:0]   data_in    ;
    wire  [7:0]   data_out   ;
    // master
    reg  [19:0]  time_out       ;
    reg  [7:0]   data_cnt        ;
    reg  [7:0]   data_addr_rw    ;
    reg          i2c_ready   ;
    reg  [10:0]  div_cnt   ;
    // slave
    reg  [6:0]   addr_device     ;
    reg  [1:0]   mode_i2c        ;
    
    top_cpu top_cpu(
    .reset(reset),
    .clk_n(clk_n),
    .clk_p(clk_p),
    .clk_out2(clk_out2),
    .sda(sda),
    .scl(scl)
    );
/*
    i2c_slave_model slave(
    .clk(clk_out2),
    .rst(reset),
    .data_in(data_in),
    .data_out(data_out),
    .addr_device(addr_device),
    .mode_i2c(mode_i2c),  
    .sda(sda),
    .scl(scl)
    );*/
    i2c_master_model    master
    (
    .clk(clk_out2),
    .rst(reset),
    .i2c_ready(i2c_ready),
    .mode_i2c(mode_i2c),
    .data_in(data_in),
    .data_out(data_out),
    .div_cnt(div_cnt),
    .data_addr_rw(data_addr_rw),
    .data_cnt(data_cnt),
    .time_out(time_out),
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
       i2c_ready =0;
       reset = 1; 
          
                #20000
                mode_i2c = 2'b10 ;
                time_out = 20'd2000;
                  i2c_ready = 1;
                 div_cnt  = 11'd499 ;
                 data_addr_rw = 8'b0010_0000;
                 data_cnt = 4 ;
              
                  #200000
                  data_in = 8'b0000_0000;
                  #180000
                  data_in = 8'b0000_1000;
                  #180000
                  data_in = 8'b0000_0001;
                  #180000
                  data_in = 8'b0000_0010;
                  #180000
                  data_in = 8'b0000_0001;
                  #200000
                  data_addr_rw = 8'b0010_0001 ;
                  data_cnt = 3 ;
                  #1000000
                  i2c_ready = 0 ;
    end
    
endmodule