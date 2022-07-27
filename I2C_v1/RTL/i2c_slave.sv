/*          start condition                        stop condition
        scl    ____     _   _   _                 _   _____
                   |___| |_| |_| |.............|_| |_|
        sda    __     ___     ___              __      ____
                 |___|   |___|   |.............  |____|
        sta                                             sto
               __|________________............._______|_____      //   1 clock pulse

                      
               
        

*/
module i2c_slave
(
    // pad i2c 
    input       wire            scl_i          ,
    output      wire            scl_o          ,
    output      reg             sda_o          ,
    input       wire            sda_i          ,

    // user interface 
    input       wire            clk            ,
    input       wire            rst            ,
    input       wire    [7:0]   data_in        ,   // data from slave to master
    input       wire            si_rxff_full   ,
    input       wire            si_txff_empty  ,
    input       wire    [1:0]   mode_i2c       ,    // select mode i2c if 1 -> slave , 0 -> master
    input       wire    [6:0]   addr_device    ,  

    output      reg     [7:0]   data_out       ,   // data from master to slave 
    output      wire            si_txff_rd     ,   
    output      wire            si_rxff_wr     ,   
    output      reg             rw             ,   // master send bit read / write ,
    output      reg             sta , sto          // start condition , stop condition 
);

localparam [4:0] 
                IDLE        = 4'd0 ,
                READ_ADDR   = 4'd1 ,
                ACK_ADDR    = 4'd2 ,
                READ_DATA   = 4'd3 ,
                ACK_READ    = 4'd4 ,
                WRITE_DATA  = 4'd5 ,
                ACK_WRITE   = 4'd6 ;
 

reg     [4:0]   Q , Q_next          ;   // state , state_next 
reg     [7:0]   sr                  ;   // shift register
reg     [3:0]   cnt_bit             ;   // counter bit 0 -> 7 = 1 byte
wire            byte_done           ;   // done counter 1 byte
wire            acc_addr            ;   // accept address device

wire            d_scl_falling       ;   // delay  scl_falling 8 cycle clock to fillter signal sda less than 1 cycle scl 
wire            d_sda_falling       ;   // delay  sda_falling 8 cycle clock to fillter signal start condition too small  
wire            d_sda_rising        ;   // delay  sda_rising 8 cycle clock to fillter signal stop condition too small
reg             reg_addr            ;   // delay accept address device 1 st scl 
reg             reg_sda             ;
reg             reg_scl             ;
reg             scl_falling         ;   
reg             sda_rising          ;
reg             sda_falling         ;



///////////////////////////////////////////////////
//// delay 8st clock 
delay_signal   delay_sda_falling(
    .clk        (clk            ),
    .rst        (rst            ),
    .signal_in  (sda_falling    ),
    .signal_out (d_sda_falling  )
   
);

delay_signal   delay_sda_rising(
    .clk        (clk            ),
    .rst        (rst            ),
    .signal_in  (sda_rising     ),
    .signal_out (d_sda_rising   )
   
);

delay_signal   delay_scl_falling(
    .clk        (clk            ),
    .rst        (rst            ),
    .signal_in  (scl_falling    ),
    .signal_out (d_scl_falling  )
   
);
////detected start condition and stop condition
always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        begin
            sta <= 1'b0 ;
            sto <= 1'b0 ;           
        end
    else if ( d_sda_falling && scl_i )
        begin
            sta <= 1'b1 ;
        end
    else if ( d_sda_rising && scl_i )
        begin
            sto <= 1'b1 ;
        end
    else 
        begin
            sta <= 1'b0 ;
            sto <= 1'b0 ;
        end
end

// detected edge of signal scl , sda

always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        begin
            reg_scl  <= 1'b1 ;
            reg_sda  <= 1'b1 ;
        end
    else
        begin
            reg_scl <= scl_i ;
            reg_sda <= sda_i ;
        end
end

always_comb
begin
    scl_falling = 1'b0 ;
    sda_falling = 1'b0 ;
    sda_rising  = 1'b0 ;
        if(reg_scl && ~scl_i)
            begin
                scl_falling = 1'b1 ;
            end
        else if (~reg_sda && sda_i)
            begin
                sda_rising = 1'b1 ;
            end
        else if(reg_sda && ~sda_i)
            begin
                sda_falling = 1'b1 ;
            end
        else 
            begin   
                scl_falling = 1'b0 ; 
                sda_rising  = 1'b0 ;
                sda_falling = 1'b0 ;
            end
    
end


// shift register 
always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        begin
            sr       <= 8'd0 ;
            reg_addr <= 1'b0 ;
        end
    else if(d_scl_falling)   
        begin
            sr       <= {sr[6:0],sda_i} ;
            reg_addr <= acc_addr ;
        end
end

////////////////////////////////////////////////////////////
//// next state
always_ff @(posedge clk or negedge rst)
    begin
        if(~rst)
            begin
                Q <= IDLE ;               
            end
        else
            begin
                Q <= Q_next ;
            end 
    end

//// control path
always_comb
begin
    Q_next = Q ;
    if( sto ) 
        Q_next = IDLE ;
    case(Q)
    IDLE :     //0 
        begin
            if(sta && (mode_i2c == 2'b01))
                Q_next = READ_ADDR ;
        end
    READ_ADDR : if( scl_falling)   //1 
        begin
            if(cnt_bit == 0 )
                Q_next = ACK_ADDR ;
        end
    ACK_ADDR : if( scl_falling)    //2 
        begin
            if(reg_addr && rw)
                Q_next = WRITE_DATA ;
            else if(reg_addr && ~rw)
                Q_next = READ_DATA ;
            else 
                Q_next = IDLE ; 
        end
    READ_DATA : if( scl_falling)   //3 
        begin
            if(cnt_bit == 0)
                Q_next = ACK_READ ;
        end
    ACK_READ : if( scl_falling)    //4 
        begin
            if(sr[0] )        // master send NACK 
                Q_next = IDLE ;
            else
                Q_next = READ_DATA ;
        end
    WRITE_DATA : if( scl_falling)   //5 
        begin
            if(cnt_bit == 0)
                Q_next = ACK_WRITE ;

        end
    ACK_WRITE : if( scl_falling)    // 6
        begin
            if(sr[0] )        // master send NACK 
                Q_next = IDLE ;
            else
                Q_next = WRITE_DATA ;
        end
    endcase
end
//// data path

always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        begin
            sda_o    <= 1'b1 ;
            cnt_bit  <= 4'd7 ;
            data_out <= 8'b0 ;
            rw       <= 1'b0 ;
        end
    else 
    begin
            case(Q)
            IDLE :     //0 
                begin
                    sda_o    <= 1'd1 ;
                    cnt_bit  <= 4'd8 ;
                end
            READ_ADDR :  //1 
                begin
                    sda_o   <= 1'b1  ;
                    if(scl_falling  )
                        cnt_bit <= cnt_bit - 4'd1 ;          
                    else if ( cnt_bit == 0 )
                        rw      <= sr[0] ;             
                end
            ACK_ADDR :   // 2
                begin 
                    cnt_bit <= 4'd7  ;                    
                    if(reg_addr)
                        sda_o   <= 1'b0 ;
                    else 
                        sda_o   <= 1'b1 ;
                end
            READ_DATA :    //3
                begin
                    sda_o    <= 1'b1 ;
                    if(scl_falling  )
                        cnt_bit <= cnt_bit - 4'd1 ;
                    else if (cnt_bit == 0)
                        data_out <= sr   ;
                end
            ACK_READ :     //4
                begin
                    cnt_bit  <= 4'd7 ;
                    sda_o    <= 1'b0 ;                                      
                end
            WRITE_DATA :    //5
                begin
                    if(data_in !== 8'bx)
                    sda_o   <= data_in[cnt_bit] ; 
                    if(scl_falling  )
                        cnt_bit <= cnt_bit - 4'd1 ;
                end
            ACK_WRITE :     // 6
                begin
                    sda_o   <= 1'b1 ;
                    cnt_bit <= 4'd7 ;
                end
            endcase 
        end

end

assign acc_addr         =   ( sr[7:1] == addr_device ) ;
assign byte_done        =   ( cnt_bit == 4'd0 )        ;
assign si_rxff_wr       =   si_rxff_full  ? 1'b0 : ( Q == ACK_READ  ) && scl_falling   ; 
assign si_txff_rd       =   si_txff_empty ? 1'b0 : ( Q == ACK_WRITE ) && scl_falling   ;

assign scl_o            =   (Q ==  WRITE_DATA && rw && data_in === 8'bx ) ? 1'b0 : 1'b1 ; // streching -> hold scl low  

endmodule