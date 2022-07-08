module top_ip_i2c
(
    //// ports apb
    input       wire                PCLK,PRESETn  ,
    input       wire                PSEL,PENABLE  ,
    input       wire                PWRITE        ,     //1 WRITE ,0 READ
    input       wire    [31:0]      PADDR         ,
    input       wire    [31:0]      PWDATA        ,
    output      wire    [31:0]      PRDATA        ,
    output      wire                PREADY        , 
    output      wire                PSLVERR       ,
    output      wire                PINT          , 

    //// pad
    input       wire                sda_i         ,
    output      wire                sda_o         ,
    output      wire                scl_o         ,
    input       wire                scl_i         

);

    wire    [7:0]   rx_apb_data     ;
    wire    [7:0]   tx_apb_data     ;
    wire            tx_data_en      ;
    wire    [7:0]   tx_apb_addr     ; 
    wire    [7:0]   tx_apb_data_cnt ;
    wire    [15:0]  tx_ctrl         ;
    wire    [19:0]  time_out        ;

    wire            i2c_ready       ;   
    wire    [7:0]   status          ;
    wire    [6:0]   addr_device     ;
    wire    [1:0]   mode_i2c        ;   // select mode 10 -> i2c_master , 01 -> i2c_slave
  
        apb_interface apb_interface
            (
                .PCLK               (PCLK               ),
                .PSEL               (PSEL               ),
                .PRESETn            (PRESETn            ),
                .PENABLE            (PENABLE            ),
                .PWDATA             (PWDATA             ),
                .PWRITE             (PWRITE             ),
                .PRDATA             (PRDATA             ),  
                .PREADY             (PREADY             ),
                .PADDR              (PADDR              ),
                .PSLVERR            (PSLVERR            ),
                .rx_apb_data        (rx_apb_data        ),
                .tx_apb_data        (tx_apb_data        ),
                .tx_data_en         (tx_data_en         ),
                .tx_apb_addr        (tx_apb_addr        ),
                .tx_apb_data_cnt    (tx_apb_data_cnt    ),
                .tx_ctrl            (tx_ctrl            ),
                .i2c_ready          (i2c_ready          ),
                .status             (status             ),
                .time_out           (time_out           ),
                .PINT               (PINT               )
            );

        core_i2c    core_i2c
            (
                .clk                (PCLK               ),
                .rst                (PRESETn            ),
                .tx_apb_addr        (tx_apb_addr        ),
                .tx_apb_data_cnt    (tx_apb_data_cnt    ),                
                .i2c_ready          (i2c_ready          ),
                .tx_apb_data        (tx_apb_data        ),
                .tx_data_en         (tx_data_en         ),
                .rx_apb_data        (rx_apb_data        ),                
                .tx_ctrl            (tx_ctrl            ),
                .time_out           (time_out           ),
                .status             (status             ),
                .scl_i              (scl_i              ),
                .scl_o              (scl_o              ),
                .sda_i              (sda_i              ),
                .sda_o              (sda_o              )
            );

endmodule