module apb_interface
(   
    //// ports apb
    input       wire                PCLK,PRESETn        ,
    input       wire                PSEL,PENABLE        ,
    input       wire                PWRITE              ,   //1 WRITE ,0 READ
    input       wire    [31:0]      PADDR               ,
    input       wire    [31:0]      PWDATA              ,
    output      reg     [31:0]      PRDATA              ,
    output      wire                PREADY              ,
    output      wire                PSLVERR             ,

    //// ports cornect fifo , core_i2c
    input       wire    [7:0]       rx_apb_data         ,   //// recivered data
    output      reg     [7:0]       tx_apb_data         ,   //// transmit data
    output      reg     [7:0]       tx_apb_addr         ,   //// address + read/write
    output      reg     [7:0]       tx_apb_data_cnt     ,   //// number byta data
    output      reg     [15:0]      tx_ctrl             ,   //// control i2c
    input       wire                apb_txff_full       ,
    input       wire                apb_rxff_empty      ,
    output      reg                 apb_txff_wr         ,
    output      reg                 apb_rxff_rd         , 
    input       wire    [7:0]       status              ,   //// i2c_done ,  rw ,sta , sto , 
    output      reg                 i_ready 

);
//////////////////////////////////////////////////////
//// APB SLAVE 

assign PREADY     = 1'b1 ;
assign PSLVERR    = 1'b0 ;
reg [7:0] rx_status ;

always_ff @(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)
         begin
            rx_status <= 8'b0 ;
            i_ready   <= 1'b0 ;
        end
    else if(status[3] || status[0]) // i2c_done or sto
        begin
            rx_status[0] <= 1'b1 ;
            i_ready      <= 1'b0 ;
        end
    else if(PADDR[8:2] == 1 & PSEL & PENABLE) // hold rx_status to PSEL , PENABLE 
        begin
            rx_status[0] <= 1'b0 ;
        end    
    else if ( tx_ctrl[11])
        begin
            i_ready <= 1'b1 ;
        end  
end
// write
always_ff @(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)
    begin
        apb_txff_wr <= 1'b0 ;
        apb_rxff_rd <= 1'b0 ;
        tx_apb_data <= 8'b0 ;
        tx_apb_addr <= 8'b0 ;
        tx_ctrl     <= 16'b0;
        PRDATA      <= 0    ;
        tx_apb_data_cnt <= 8'b0 ;
    end
    else if(PWRITE & PSEL & ~PENABLE) // assert 1st clock
    begin
        case(PADDR[8:2])
            7'd0: begin
                tx_apb_addr <= PWDATA[7:0] ;
            end
            7'd2: if(~apb_txff_full)
            begin
                tx_apb_data <= PWDATA[7:0] ;  
                apb_txff_wr <= 1'b1 ;
                apb_rxff_rd <= 1'b0 ;          
            end
            7'd4: begin
                tx_apb_data_cnt <= PWDATA[7:0] ;
            end
            7'd6: begin
                tx_ctrl <= PWDATA[15:0] ;  
            end
        endcase
    end
    // read
     else if(~PWRITE & PSEL & ~PENABLE) // assert 1st clock
        begin
            case(PADDR[8:2])
            7'd1: begin
                    PRDATA       <= {31'd0 , rx_status[0]}  ;
                    tx_ctrl[11]  <= 1'b0 ; // end i_ready
            end
            7'd3: 
                if(~apb_rxff_empty)
                    begin
                        PRDATA <= {24'd0 , rx_apb_data} ;
                        apb_txff_wr <= 1'b0 ;
                        apb_rxff_rd <= 1'b1 ;   
                    end
            7'd5: begin
                    PRDATA <= {24'd0 , status}  ;
            end
            endcase
        end
     else
          begin
              apb_txff_wr <= 1'b0 ;
              apb_rxff_rd <= 1'b0 ;
            end
end

endmodule
 