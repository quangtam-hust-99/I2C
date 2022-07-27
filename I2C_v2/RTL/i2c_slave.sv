/*          start condition                        stop condition
        scl    ____     _   _   _                 _   _____
                   |___| |_| |_| |.............|_| |_|
        sda    __     ___     ___              __      ____
                 |___|   |___|   |.............  |____|
        sta                                             sto
               __|________________............._______|_____      //   1 clock pulse

    time_out of slave > time_out master 0.5 cycle scl       
    if clock stretching > time_out then return IDLE (loop)
               
        

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
    input       wire    [1:0]   mode_i2c       ,   // select mode i2c if 1 -> slave , 0 -> master
    input       wire    [6:0]   addr_device    ,   
    input       wire            tx_data_en     ,
    input       wire    [19:0]  time_out       ,

    output      wire    [7:0]   status         ,
    output      reg     [7:0]   data_out          // data from master to slave                      
        
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
reg             reg_addr            ;   // delay accept address device  
reg             ready               ;   // slave active

// filter start stop condition
wire            d_scl_i             ;   // delay  scl_i 8 cycle clock to fillter signal sta ,sto too small
wire            d_sda_falling       ;   // delay  sda_falling 8 cycle clock to fillter signal start condition too small  
wire            d_sda_rising        ;   // delay  sda_rising 8 cycle clock to fillter signal stop condition too small
reg             d_sta , d_sto       ;   
reg     [7:0]   cnt_st              ;


// detect edge signal
reg             reg_sda             ;
reg             reg_scl             ;
reg             scl_falling         ;  
reg             scl_rising          ; 
reg             sda_rising          ;
reg             sda_falling         ;

// status
wire            tx_da_ack           ;    // interrupts transmit data 
wire            rx_da_ack           ;    // interrupts receive data
reg             sta , sto           ;    // start condition , stop condition 
reg             rw                  ;    // master send bit read / write 

// streching
reg             reg_tx_da_ack       ;
wire            tx_da_ack_rising    ;
wire            stretch             ;   // stretchig
reg             stc                 ;   // reg stretching
reg             reg_stretch         ;   // delay stretching 1 clock
reg  [19:0]     cnt_stretch         ;

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

delay_signal   delay_scl(
    .clk        (clk            ),
    .rst        (rst            ),
    .signal_in  (scl_i          ),
    .signal_out (d_scl_i        )
); 
// detected edge of signal scl , sda

always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        begin
            reg_scl         <= 1'b1 ;
            reg_sda         <= 1'b1 ;
            reg_tx_da_ack   <= 1'b0 ;
            reg_stretch     <= 1'b0 ;
        end
    else
        begin
            reg_scl         <= scl_i     ;
            reg_sda         <= sda_i     ;
            reg_tx_da_ack   <= tx_da_ack ;
            reg_stretch     <= stretch   ;
        end
end

always_comb
begin
    scl_falling = 1'b0 ;
    scl_rising  = 1'b0 ;
    sda_falling = 1'b0 ;
    sda_rising  = 1'b0 ;
        if(reg_scl && ~scl_i)
            begin
                scl_falling = 1'b1 ;
            end
        else if (~reg_scl && scl_i)
            begin
                scl_rising = 1'b1 ;
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
                scl_rising  = 1'b0 ;
                sda_rising  = 1'b0 ;
                sda_falling = 1'b0 ;
            end
    
end
////detected start condition and stop condition
always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        cnt_st <= 8'b0 ;
    else if((sda_falling && d_scl_i) || (sda_rising && d_scl_i))
        cnt_st <= 8'b0 ;
    else   
        cnt_st <= cnt_st + 8'b1 ;
end

always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        begin
            sta   <= 1'b0 ;
            sto   <= 1'b0 ; 
            d_sta <= 1'b0 ;
            d_sto <= 1'b0 ;         
        end
    else if ( sda_falling && d_scl_i )
        d_sta <= 1'b1 ;                
    else if (( d_sda_falling && scl_i ) && d_sta) 
        sta <= 1'b1 ;
    else if (sda_rising && d_scl_i)
        d_sto <= 1'b1 ;
    else if (( d_sda_rising && scl_i ) && d_sto)
        sto <= 1'b1 ;
    else if(cnt_st > 8'd10)  // need bigger number clock delay signal
        begin
            d_sto <= 1'b0 ;
            d_sta <= 1'b0 ;
        end    
    else
        begin
            sta <= 1'b0 ;
            sto <= 1'b0 ;
        end
end

always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        ready <= 1'b0;
    else if (sta)
        ready <= 1'b1 ;
    else if (sto)
        ready <= 1'b0 ;
end

// shift register 
always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        begin
            sr  <= 8'd0 ;           
        end
    else if(scl_rising)   
        begin
            sr <= {sr[6:0],sda_i} ;
        end
end

////////////////////////////////////////////////////////////
//// next state
always_ff @(posedge clk or negedge rst)
    begin
        if(~rst)
            begin
                Q <= IDLE ;         
                reg_addr <= 1'b0 ;      
            end
        else if( scl_falling)
            begin
                Q <= Q_next ;
                reg_addr <= acc_addr ;
            end 
        else if( sto || sta ||(cnt_stretch >= time_out ))
                Q = IDLE ;
    end

//// control path
always_comb
begin
    case(Q)
    IDLE :     //0 
        begin
            if(ready && (mode_i2c == 2'b01))
                Q_next = READ_ADDR ;
        end
    READ_ADDR :if( scl_falling)    //1 
        begin
            if(cnt_bit == 0 )
                Q_next = ACK_ADDR ;
        end
    ACK_ADDR :if( scl_falling)    //2 
        begin
            if(reg_addr && rw)
                Q_next = WRITE_DATA ;
            else if(reg_addr && ~rw)
                Q_next = READ_DATA ;
            else 
                Q_next = IDLE ; 
        end
    READ_DATA :if( scl_falling)   //3 
        begin
            if(cnt_bit == 0)
                Q_next = ACK_READ ;
        end
    ACK_READ :if( scl_falling)    //4 
        begin
                Q_next = READ_DATA ;
        end
    WRITE_DATA :if( scl_falling)   //5 
        begin
            if(cnt_bit == 0)
                Q_next = ACK_WRITE ;

        end
    ACK_WRITE :if( scl_falling)    // 6
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
                    if(scl_rising  )
                        cnt_bit <= cnt_bit - 4'd1 ;          
                    else if ( cnt_bit == 0 )
                        rw      <= sr[0] ;             
                end
            ACK_ADDR :   // 2
                begin 
                    if(rw)
                    cnt_bit <= 4'd7  ;         
                    else
                    cnt_bit <= 4'd8  ;           
                    if(reg_addr)
                        sda_o   <= 1'b0 ;
                    else 
                        sda_o   <= 1'b1 ;
                end
            READ_DATA :    //3
                begin
                    sda_o    <= 1'b1 ;
                    if(scl_rising  )
                        cnt_bit <= cnt_bit - 4'd1 ;
                    else if (cnt_bit == 0)
                        data_out <= sr   ;
                end
            ACK_READ :     //4
                begin
                    cnt_bit  <= 4'd8 ;
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
 
always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        begin
            stc <= 1'b0  ;           
        end
     else
        begin
             if (tx_da_ack_rising) 
                begin
                    stc <= 1'b1 ;
                end
            else if ( tx_data_en || (cnt_stretch > time_out)) 
                begin
                    stc <= 1'b0 ;
                end
        end
end

always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        cnt_stretch <= 20'd0 ;
    else if (stretch)
        cnt_stretch <= cnt_stretch + 20'b1 ;
    else if((stretch && ~reg_stretch) || (~stretch && reg_stretch) || (Q ==  ACK_ADDR || Q == ACK_WRITE))
        cnt_stretch <= 20'd0 ;  
end

assign acc_addr             =   ( sr[7:1] == addr_device )                               ;
assign byte_done            =   ( cnt_bit == 4'd0 )                                      ;
assign stretch              =   (stc & ~tx_da_ack)                                       ; // only stretching when write data
assign scl_o                =   (Q ==  WRITE_DATA && rw && stretch) ? 1'b0 : 1'b1        ; // streching -> hold scl low 
assign tx_da_ack_rising     =   tx_da_ack && ~reg_tx_da_ack                              ;

assign rx_da_ack            =   ( Q == ACK_READ)                                                        ; 
assign tx_da_ack            =   (((Q == ACK_ADDR || Q == ACK_WRITE ) && Q_next != IDLE ) && rw )        ;
assign status               =   {2'b0 ,rw, rx_da_ack , tx_da_ack  , sto , sta }                         ;   

endmodule
