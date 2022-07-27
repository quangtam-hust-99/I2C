`timescale 1ns / 1ps

module tb(

    );
    reg   reset = 0;
    wire   clk_n;
    reg   clk_p = 0;
    wire scl,sda;
    wire clk_out2 ;
    
    reg  [7:0]   data_cnt        ;
    reg  [7:0]   data_addr_rw    ;
    reg  [7:0]   data_in   ;
    wire [7:0]   data_out  ;
    
    reg          i_ready   ;
    wire         i2c_done  ;
    reg  [15:0]  div_cnt   ;
    
    wire    i_txff_rd ;
    wire    i_rxff_wr ;

    top_cpu top_cpu(
    .reset(reset),
    .clk_n(clk_n),
    .clk_p(clk_p),
    .sda(sda),
    .scl(scl),
    .clk_out2(clk_out2)
    );
    /*
    i2c_slave_model slave(
    .sda(sda),
    .scl(scl)
    );*/
    i2c_master_model master_model
    (
        .clk            (clk_out2       ),
        .rst            (reset          ),
        .data_addr_rw   (data_addr_rw   ),
        .i_ready        (i_ready        ),
        .data_cnt       (data_cnt       ),
        .data_in        (data_in        ),
        .data_out       (data_out       ),
        .sda            (sda            ),
        .scl            (scl            ),
        .i2c_done       (i2c_done       ),
        .div_cnt        (div_cnt        ),
        .i_txff_rd      (i_txff_rd      ),
        .i_rxff_wr      (i_rxff_wr      ),
        .i_txff_empty   (1'b0           ),
        .i_rxff_full    (1'b0           )
    );
    pullup p1(sda);
    pullup p2(scl);
    always #10 clk_p = ~clk_p;
    assign clk_n = ~clk_p;
    initial begin
       reset = 0;
       #100;
       reset = 1; 
       #20000
           i_ready = 1;
          div_cnt  = 16'd249 ;
          data_addr_rw = 8'b0010_0000;
          data_cnt = 4 ;
       
           #110000
           data_in = 8'b0000_0000;
           #90000
           data_in = 8'b0000_1000;
           #90000
           data_in = 8'b0000_0001;
           #90000
           data_in = 8'b0000_0010;
           #90000
           data_in = 8'b0000_0001;
           # 100000
           data_addr_rw = 8'b0010_0001 ;
           data_cnt = 3 ;
           # 500000
           i_ready = 0 ;
          
    end
    
endmodule