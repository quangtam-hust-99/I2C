

module core_i2c(

    
    input   wire                clk                 ,
    input   wire                rst                 ,

    // apb interface  
    input   wire                i_ready             ,
    output  wire    [7:0]       status              ,
    input   wire    [7:0]       tx_apb_addr         ,   
    input   wire    [7:0]       tx_apb_data_cnt     ,
    input   wire    [15:0]      tx_ctrl             ,
    
    // fifo 
    input   wire                i_txff_empty        ,
    input   wire                i_rxff_full         ,
    output  reg                 i_rxff_wr           , 
    output  reg                 i_txff_rd           ,
    input   wire    [7:0]       data_out_ff         ,
    output  reg     [7:0]       data_in_ff          ,   
    
    // PAD
    input   wire                scl_i               ,
    output  reg                 scl_o               ,
    output  reg                 sda_o               ,
    input   wire                sda_i          

    );

wire         si_txff_rd      ;   
wire         si_rxff_wr      ;   
reg          si_rxff_full    ;
reg          si_txff_empty   ;
reg          mi_txff_empty   ;
reg          mi_rxff_full    ;
wire         mi_txff_rd      ;
wire         mi_rxff_wr      ;
reg  [7:0]   data_si_i2c     ;
wire [7:0]   data_so_i2c     ;
reg  [7:0]   data_mi_i2c     ;
wire [7:0]   data_mo_i2c     ;
wire         i2c_done        ;

reg  [6:0]   addr_device     ;
reg  [7:0]   data_cnt        ;
reg  [7:0]   data_addr_rw    ;

wire         slave_rw        ;
wire         slave_sta       ;
wire         slave_sto       ;
wire         sda_mo ,scl_mo  ; 
reg          sda_mi ,scl_mi  ;
wire         sda_so ,scl_so  ; 
reg          sda_si ,scl_si  ;



    i2c_master i2c_master
        (
            .clk            (clk                ),
            .rst            (rst                ),
            .i_ready        (i_ready            ),
            .data_addr_rw   (data_addr_rw       ),
            .data_in        (data_mi_i2c        ),
            .data_out       (data_mo_i2c        ),
            .data_cnt       (tx_apb_data_cnt    ),
            .div_cnt        (tx_ctrl[10:0]      ),
            .mi_rxff_full   (mi_rxff_full       ),
            .mi_txff_empty  (mi_txff_empty      ),
            .mi_txff_rd     (mi_txff_rd         ),
            .mi_rxff_wr     (mi_rxff_wr         ),
            .mode_i2c       (tx_ctrl[13:12]     ),
            .i2c_done       (i2c_done           ),
            .sda_o          (sda_mo             ),
            .sda_i          (sda_mi             ),
            .scl_o          (scl_mo             ),
            .scl_i          (scl_si             )
        );

    i2c_slave i2c_slave
        (
            .clk            (clk                ),
            .rst            (rst                ),
            .sda_i          (sda_si             ),
            .sda_o          (sda_so             ),
            .scl_i          (scl_si             ), 
            .scl_o          (scl_so             ),
            .data_in        (data_si_i2c        ),
            .data_out       (data_so_i2c        ),
            .addr_device    (addr_device        ),
            .rw             (slave_rw           ),
            .sta            (slave_sta          ),
            .sto            (slave_sto          ),
            .si_rxff_wr     (si_rxff_wr         ),
            .si_txff_rd     (si_txff_rd         ),
            .si_rxff_full   (si_rxff_full       ),
            .si_txff_empty  (si_txff_empty      ),
            .mode_i2c       (tx_ctrl[13:12]     )
  
        );

/////////////////////////////////////////////////////////////////
// control select mode master or slave
    always_comb
    begin
        // default 
    i_rxff_wr       =   1'b0    ;
    i_txff_rd       =   1'b0    ;
    si_rxff_full    =   1'b0    ;
    si_txff_empty   =   1'b0    ;
    mi_rxff_full    =   1'b0    ;
    mi_txff_empty   =   1'b0    ;
    data_in_ff      =   8'b0    ;
    data_mi_i2c     =   8'b0    ;
    data_si_i2c     =   8'b0    ;
    addr_device     =   7'd0    ;
    data_addr_rw    =   8'd0    ;
    data_cnt        =   8'd0    ;
    sda_si          =   1'b1    ;
    scl_si          =   1'b1    ;
    sda_mi          =   1'b1    ;
    scl_mi          =   1'b1    ;
    sda_o           =   1'b1    ;
    scl_o           =   1'b1    ;            
    
        if(tx_ctrl[13:12] == 2'b01) // slave
            begin
                sda_o           =   sda_so          ;
                scl_o           =   scl_so          ;
                sda_si          =   sda_i           ;
                scl_si          =   scl_i           ;
                i_rxff_wr       =   si_rxff_wr      ;
                i_txff_rd       =   si_txff_rd      ;
                si_rxff_full    =   i_rxff_full     ;
                si_txff_empty   =   i_txff_empty    ;
                data_in_ff      =   data_so_i2c     ;
                data_si_i2c     =   data_out_ff     ;
                addr_device     =   tx_apb_addr[7:1];
            end
        else if(tx_ctrl[13:12] == 2'b10) // master
            begin
                sda_o           =   sda_mo          ;
                sda_mi          =   sda_i           ;
                scl_o           =   scl_mo          ;
                scl_mi          =   scl_i           ;
                i_rxff_wr       =   mi_rxff_wr      ;
                i_txff_rd       =   mi_txff_rd      ;
                mi_rxff_full    =   i_rxff_full     ;
                mi_txff_empty   =   i_txff_empty    ;
                data_in_ff      =   data_mo_i2c     ;
                data_mi_i2c     =   data_out_ff     ;
                data_addr_rw    =   tx_apb_addr     ;
                data_cnt        =   tx_apb_data_cnt ;
            end
            
        else
            begin
                i_rxff_wr       =   1'b0    ;
                i_txff_rd       =   1'b0    ;
                si_rxff_full    =   1'b0    ;
                si_txff_empty   =   1'b0    ;
                data_in_ff      =   8'b0    ;
                data_mi_i2c     =   8'b0    ;
                data_si_i2c     =   8'b0    ;
                mi_rxff_full    =   1'b0    ;
                mi_txff_empty   =   1'b0    ;
                addr_device     =   7'd0    ;
                data_addr_rw    =   8'd0    ;
                data_cnt        =   8'd0    ;
                sda_si          =   1'b1    ;
                scl_si          =   1'b1    ;
                scl_mi          =   1'b1    ;
                sda_mi          =   1'b1    ;
                sda_o           =   1'b1    ;
                scl_o           =   1'b1    ;
            end
    end

assign  status  =   {4'd0 ,i2c_done , slave_rw , slave_sta , slave_sto } ;
endmodule
