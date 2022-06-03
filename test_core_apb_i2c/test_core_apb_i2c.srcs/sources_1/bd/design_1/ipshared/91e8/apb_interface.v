module apb_interface
(   
    //// ports apb
    input   wire            PCLK,PRESETn    ,
    input   wire            PSEL,PENABLE    ,
    input   wire            PWRITE          , //1 WRITE ,0 READ
    input   wire    [31:0]  PADDR           ,
    input   wire    [31:0]  PWDATA          ,
    output  reg     [31:0]  PRDATA          ,
    output  wire            PREADY          ,
    output  wire            PSLVERR         ,

    //// ports cornect apb_slave,fifo,i2c_master
    input   wire    [7:0]   rx_apb_data     , //// recivered data
    output  reg     [7:0]   tx_apb_data     , //// transmit data
    output  reg     [7:0]   tx_apb_addr     , //// address + read/write
    output  reg     [7:0]   tx_apb_data_cnt , //// number byta data
    output  reg     [15:0]  tx_div_cnt      , //// division frequency 
    input   wire            apb_txff_full   ,
    input   wire            apb_rxff_empty  ,
    output  wire            apb_txff_wr     ,
    output  wire            apb_rxff_rd     , 
    input   wire            i2c_done        ,
    output  reg             i_ready          //// i2c ready      

);
//////////////////////////////////////////////////////
//// APB SLAVE 

assign PREADY     = 1'b1 ;
assign PSLVERR    = 1'b0 ;
reg [7:0] rx_status ;
reg [7:0] tx_ctrl   ;
always@(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)
         begin
            rx_status <= 8'b0 ;
            i_ready <= 1'b0;
        end
    else if(i2c_done)
        begin
            rx_status[0] <= 1'b1;
            i_ready <= 1'b0;
        end
    else if(PADDR[4:2] == 3 & PSEL & PENABLE)
        begin
            rx_status[0] <= 1'b0;
        end
    else if(tx_ctrl[0])
        begin
            i_ready <= 1'b1;
        end
        
end
// write
always@(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)
    begin
        tx_apb_data <= 8'b0 ;
        tx_apb_addr <= 8'b0 ;
        tx_ctrl     <= 8'b0 ;
        tx_div_cnt  <= 16'b0;
        tx_apb_data_cnt <= 8'b0 ;
    end
    else if(PWRITE & PSEL & PENABLE)
    begin
        case(PADDR[4:2])
            3'd0: begin
                tx_apb_addr = PWDATA[7:0] ;
            end
            3'd1: if(~apb_txff_full)
            begin
                tx_apb_data  = PWDATA[7:0] ;           
            end
            3'd2: begin
                tx_apb_data_cnt = PWDATA[7:0] ;
            end
            3'd4: begin
                tx_ctrl = PWDATA[7:0] ;
             end
            3'd6: begin
                tx_div_cnt = PWDATA[15:0];
            end
        endcase
    end
    else
            tx_ctrl <= 8'b0;
end
    // read
 always@(posedge PCLK or negedge PRESETn)
 begin
     if(~PRESETn)
        begin
            PRDATA <= 32'b0;
        end
     else if(~PWRITE & PSEL & PENABLE)
        begin
            case(PADDR[4:2])
            3'd3: begin
                     PRDATA <= {31'd0 , rx_status[0]} ;
                 end
            3'd5: if(~apb_rxff_empty)
                begin
                     PRDATA <= {24'd0 , rx_apb_data} ;
                end       
            endcase
        end
end
assign apb_txff_wr = apb_txff_full  ?  1'b0 : (  PWRITE & PSEL & PENABLE & PADDR[4:2] == 3'd1 ) ;
assign apb_rxff_rd = apb_rxff_empty ?  1'b0 : ( ~PWRITE & PSEL & PENABLE & PADDR[4:2] == 3'd5 ) ;
endmodule
 