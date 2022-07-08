
module core_i2c(
    
    input   wire                clk                 ,
    input   wire                rst                 ,

    // apb interface  
    input   wire                i2c_ready           ,
    output  reg     [7:0]       status              ,
    input   wire    [7:0]       tx_apb_addr         ,   
    input   wire    [7:0]       tx_apb_data_cnt     ,
    input   wire    [15:0]      tx_ctrl             ,   
    input   reg     [7:0]       tx_apb_data         , 
    input   wire                tx_data_en          ,
    input   wire    [19:0]      time_out            ,
    output  reg     [7:0]       rx_apb_data         ,   
    
    // PAD
    input   wire                scl_i               ,
    output  reg                 scl_o               ,
    output  reg                 sda_o               ,
    input   wire                sda_i          

    );

reg  [6:0]   addr_device     ;
reg  [7:0]   data_cnt        ;
reg  [7:0]   data_addr_rw    ;
wire [7:0]   data_out_si     ;
reg  [7:0]   data_in_si      ;
wire [7:0]   data_out_mi     ;
reg  [7:0]   data_in_mi      ;
wire [7:0]   m_status        ;
wire [7:0]   s_status        ;       
wire         sda_mo ,scl_mo  ; 
reg          sda_mi ,scl_mi  ;
wire         sda_so ,scl_so  ; 
reg          sda_si ,scl_si  ;



    i2c_master i2c_master
        (
            .clk            (clk                ),
            .rst            (rst                ),
            .i2c_ready      (i2c_ready          ),
            .data_addr_rw   (data_addr_rw       ),
            .data_in        (data_in_mi         ),
            .data_out       (data_out_mi        ),
            .data_cnt       (tx_apb_data_cnt    ),
            .div_cnt        (tx_ctrl[10:0]      ),           
            .mode_i2c       (tx_ctrl[13:12]     ),
            .status         (m_status           ),
            .sda_o          (sda_mo             ),
            .sda_i          (sda_mi             ),
            .scl_o          (scl_mo             ),
            .scl_i          (scl_mi             )
        );

    i2c_slave i2c_slave
        (
            .clk            (clk                ),
            .rst            (rst                ),
            .sda_i          (sda_si             ),
            .sda_o          (sda_so             ),
            .scl_i          (scl_si             ), 
            .scl_o          (scl_so             ),
            .data_in        (data_in_si         ),
            .data_out       (data_out_si        ),
            .addr_device    (addr_device        ),
            .time_out       (time_out           ),
            .status         (s_status           ),       
            .mode_i2c       (tx_ctrl[13:12]     ),
            .tx_data_en     (tx_data_en         )
  
        );

/////////////////////////////////////////////////////////////////
// control select mode master or slave
    always_comb
    begin
        // default 
    addr_device     =   7'd0    ;
    data_addr_rw    =   8'd0    ;
    data_cnt        =   8'd0    ;
    status          =   8'b0    ;
    data_in_mi      =   8'b0    ;
    data_in_si      =   8'b0    ;
    sda_si          =   1'b1    ;
    scl_si          =   1'b1    ;
    sda_mi          =   1'b1    ;
    scl_mi          =   1'b1    ;
    sda_o           =   1'b1    ;
    scl_o           =   1'b1    ;            
    
        if(tx_ctrl[13:12] == 2'b01) // slave
            begin
                sda_o           =   sda_so              ;
                scl_o           =   scl_so              ;
                sda_si          =   sda_i               ;
                scl_si          =   scl_i               ;
                addr_device     =   tx_apb_addr[7:1]    ;
                rx_apb_data     =   data_out_si         ;
                data_in_si      =   tx_apb_data         ;
                status          =   s_status            ;
            end
        else if(tx_ctrl[13:12] == 2'b10) // master
            begin
                sda_o           =   sda_mo              ;
                sda_mi          =   sda_i               ;
                scl_o           =   scl_mo              ;
                scl_mi          =   scl_i               ;
                data_addr_rw    =   tx_apb_addr         ;
                data_cnt        =   tx_apb_data_cnt     ;
                rx_apb_data     =   data_out_mi         ;
                data_in_mi      =   tx_apb_data         ;
                status          =   m_status            ;
            end
            
        else
            begin 
                status          =   8'b0    ;                            
                addr_device     =   7'd0    ;
                data_addr_rw    =   8'd0    ;
                data_cnt        =   8'd0    ;
                data_in_mi      =   8'b0    ;
                data_in_si      =   8'b0    ;
                sda_si          =   1'b1    ;
                scl_si          =   1'b1    ;
                scl_mi          =   1'b1    ;
                sda_mi          =   1'b1    ;
                sda_o           =   1'b1    ;
                scl_o           =   1'b1    ;
            end
    end

endmodule
