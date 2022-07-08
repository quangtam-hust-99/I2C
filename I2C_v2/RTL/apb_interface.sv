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
    output      reg                 PINT                , 

    //// ports cornect core_i2c
    
    input       wire    [7:0]       rx_apb_data         ,   //// recivered data
    output      reg     [7:0]       tx_apb_data         ,   //// transmit data
    output      reg     [7:0]       tx_apb_addr         ,   //// address + read/write
    output      reg     [7:0]       tx_apb_data_cnt     ,   //// number byta data
    output      reg     [15:0]      tx_ctrl             ,   //// control i2c
    output      reg                 tx_data_en          ,
    output      reg     [19:0]      time_out            ,
    input       wire                error               ,
    input       wire    [7:0]       status              ,   //// addr_ack , rx_da_ack , rx_da_ack , i2c_done , i2c_ready 
    output      reg                 i2c_ready 

);
////////////////////////////////////////////////////// 
//// APB SLAVE 

wire        cmd                 ;
reg         irpt_en             ;
wire        cmd_rising          ;
wire        i2c_ready_rising    ;
reg         reg_cmd             ;
reg         reg_i2c_ready       ;

always_ff @(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)
         begin
            i2c_ready    <= 1'b0 ;
        end
    else if( status[1] ) // i2c_done , stop condition
        begin
            i2c_ready    <= 1'b0 ;
        end   
    else if ( tx_ctrl[11]) // i2c_ready 
        begin
            i2c_ready <= 1'b1 ;
        end  
end

// write

always_ff @(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)
    begin
        tx_apb_data <= 8'b0     ;
        tx_apb_addr <= 8'b0     ;
        tx_ctrl     <= 16'b0    ;
        irpt_en     <= 1'b0     ;
        tx_data_en  <= 1'b0     ;
        time_out    <= 20'b0    ;
        PRDATA      <= 0        ;
        tx_apb_data_cnt <= 8'b0 ;
    end
    else if(PWRITE & PSEL & ~PENABLE) // assert 1st clock
    begin
        case(PADDR[8:2])
            7'd0:
                begin
                    tx_apb_addr <= PWDATA[7:0] ;
                end
            7'd2:
                begin
                    tx_apb_data <= PWDATA[7:0] ;   
                    tx_data_en  <= 1'b1        ;       
                end
            7'd4:
                begin
                    tx_apb_data_cnt <= PWDATA[7:0] ;
                end
            7'd6: 
                begin
                    tx_ctrl <= PWDATA[15:0] ; 
                end
            7'd8:
                begin
                    irpt_en <= PWDATA[0] ; // clear interrupt 
                end
             7'd10:
                begin
                    time_out <= PWDATA[19:0] ; 
                end
        endcase
    end
    // read
     else if(~PWRITE & PSEL & ~PENABLE) // assert 1st clock
        begin
            case(PADDR[8:2])
            7'd1: 
                begin
                    PRDATA <= {24'd0 , status}  ;
                end
            7'd3: 
                begin
                    PRDATA <= {24'd0 , rx_apb_data} ;   
                    
                end
            endcase
        end
      else
        begin
            tx_data_en <= 1'b0 ;
            irpt_en    <= 1'b0 ;
        end
end

/// interrupt
always_ff @(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)
        begin
            reg_cmd       <= 1'b0 ;
            reg_i2c_ready <= 1'b0 ;
        end
    else 
        begin
            reg_cmd       <= cmd        ;
            reg_i2c_ready <= i2c_ready  ;
        end
end 
always_ff @(posedge PCLK or negedge PRESETn)
begin
    if(~PRESETn)
        PINT <= 1'b0 ;
    else if(cmd_rising || i2c_ready_rising)
        PINT <= 1'b1 ;
    else if(irpt_en)
        PINT <= 1'b0 ;
end

// always ready , not error
    assign PREADY     = 1'b1 ;
    assign PSLVERR    = 1'b0 ;
      
    assign cmd_rising = (cmd && ~reg_cmd)                       ;
    assign i2c_ready_rising = i2c_ready && ~reg_i2c_ready       ;
    assign cmd = status[3] | status[2] | status[1] |status[0]   ; // tx , rx , sto , sta
endmodule
 