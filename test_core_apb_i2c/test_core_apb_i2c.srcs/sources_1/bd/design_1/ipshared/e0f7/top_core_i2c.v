module top_core_i2c
(
    //// ports apb
    input   wire            PCLK,PRESETn  ,
    input   wire            PSEL,PENABLE  ,
    input   wire            PWRITE        , //1 WRITE ,0 READ
    input   wire    [31:0]  PADDR         ,
    input   wire    [31:0]  PWDATA        ,
    output  wire    [31:0]  PRDATA        ,
    output  wire            PREADY        , 
    output  wire            PSLVERR       ,
    //// pad
    input   wire            sda_i         ,
    output  wire            sda_o         ,
    output  wire            scl_o       
);
    wire    [7:0]   rx_apb_data     ;
    wire    [7:0]   rx_status       ;
    wire    [7:0]   tx_apb_data     ;
    wire    [7:0]   tx_apb_addr     ; 
    wire    [7:0]   tx_apb_data_cnt ;
    wire    [15:0]  tx_div_cnt      ;
    wire            apb_rxff_empty  ;
    wire            apb_txff_full   ;
    wire            apb_rxff_rd     ;
    wire            apb_txff_wr     ;     
    wire    [7:0]   data_in_i2c     ;
    wire    [7:0]   data_out_i2c    ;
    wire            i_txff_empty    ;
    wire            i_rxff_full     ;
    wire            i_rxff_wr       ; 
    wire            i_txff_rd       ;
    wire            i_ready         ;   
    wire            i2c_done        ;

  
apb_interface apb_interface
(
    .PCLK           (PCLK           ),
    .PSEL           (PSEL           ),
    .PRESETn        (PRESETn        ),
    .PENABLE        (PENABLE        ),
    .PWDATA         (PWDATA         ),
    .PWRITE         (PWRITE         ),
    .PRDATA         (PRDATA         ),  
    .PREADY         (PREADY         ),
    .PADDR          (PADDR          ),
    .PSLVERR        (PSLVERR        ),
    .rx_apb_data    (rx_apb_data    ),
    .tx_apb_data    (tx_apb_data    ),
    .tx_apb_addr    (tx_apb_addr    ),
    .tx_apb_data_cnt(tx_apb_data_cnt),
    .apb_rxff_empty (apb_rxff_empty ),
    .apb_txff_full  (apb_txff_full  ),
    .apb_rxff_rd    (apb_rxff_rd    ),
    .apb_txff_wr    (apb_txff_wr    ),
    .i_ready        (i_ready        ),
    .tx_div_cnt     (tx_div_cnt     ),
    .i2c_done       (i2c_done       )
);

fifo_generator fifo_tx_0
(
    .clk        (PCLK           ),
    .reset      (PRESETn        ),
    .rd         (i_txff_rd      ),
    .wr         (apb_txff_wr    ),
    .full       (apb_txff_full  ),
    .empty      (i_txff_empty   ),
    .data_in    (tx_apb_data    ),
    .data_out   (data_in_i2c    )   
);

fifo_generator fifo_rx_0
(
    .clk        (PCLK           ),
    .reset      (PRESETn        ),
    .rd         (apb_rxff_rd    ),
    .wr         (i_rxff_wr      ),
    .full       (i_rxff_full    ),
    .empty      (apb_rxff_empty ),
    .data_in    (data_out_i2c   ),
    .data_out   (rx_apb_data    )
);

i2c_master i2c_master
(
    .clk        (PCLK               ),
    .rst        (PRESETn            ),
    .i_ready    (i_ready            ),
    .data_addr_rw(tx_apb_addr       ),
    .data_in    (data_in_i2c        ),
    .data_out   (data_out_i2c       ),
    .data_cnt   (tx_apb_data_cnt    ),
    .div_cnt    (tx_div_cnt         ),
    .i_rxff_full(i_rxff_full        ),
    .i_txff_empty(i_txff_empty      ),
    .i_txff_rd  (i_txff_rd          ),
    .i_rxff_wr  (i_rxff_wr          ),
    .i2c_done   (i2c_done           ),
    .sda_o      (sda_o              ),
    .sda_i      (sda_i              ),
    .scl_o      (scl_o              )
);
endmodule