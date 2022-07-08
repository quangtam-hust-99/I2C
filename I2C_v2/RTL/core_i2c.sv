

module core_i2c(

    
    input   wire                clk                 ,
    input   wire                rst                 ,

    // apb interface  
    input   wire                i_ready             ,
    output  wire    [7:0]       status              ,
    input   wire    [7:0]       tx_apb_addr         ,   
    input   wire    [7:0]       tx_apb_data_cnt     ,
    input   wire    [15:0]      tx_ctrl             ,
    input   wire    [7:0]       data_out_apb        ,
    output  reg     [7:0]       data_in_apb         ,   
    
    // PAD
    input   wire                scl_i               ,
    output  reg                 scl_o               ,
    output  reg                 sda_o               ,
    input   wire                sda_i          

    );

reg  [7:0]   data_si_i2c     ;
wire [7:0]   data_so_i2c     ;
reg  [7:0]   data_mi_i2c     ;
wire [7:0]   data_mo_i2c     ;
wire         i2c_done        ;
wire         i_ack           ;

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
            .mode_i2c       (tx_ctrl[13:12]     ),
            .i2c_done       (i2c_done           ),
            .i_ack          (i_ack              ),
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
            .mode_i2c       (tx_ctrl[13:12]     )
  
        );

/////////////////////////////////////////////////////////////////
// control select mode master or slave
    always_comb
    begin
        // default 
    data_in_apb     =   8'b0    ;
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
                data_in_apb      =   data_so_i2c    ;
                data_si_i2c     =   data_out_apb    ;
                addr_device     =   tx_apb_addr[7:1];
            end
        else if(tx_ctrl[13:12] == 2'b10) // master
            begin
                sda_o           =   sda_mo          ;
                sda_mi          =   sda_i           ;
                scl_o           =   scl_mo          ;
                scl_mi          =   scl_i           ;
                data_in_apb     =   data_mo_i2c     ;
                data_mi_i2c     =   data_out_apb    ;
                data_addr_rw    =   tx_apb_addr     ;
                data_cnt        =   tx_apb_data_cnt ;
            end
            
        else
            begin                
                data_in_apb     =   8'b0    ;
                data_mi_i2c     =   8'b0    ;
                data_si_i2c     =   8'b0    ;              
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
