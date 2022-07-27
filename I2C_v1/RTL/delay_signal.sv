module delay_signal
(
    input   wire          clk           ,  // using clock 100mhz -> cnt_wait = 124
    input   wire          rst           ,  
    input   wire          signal_in     ,
    output  wire          signal_out  
);
reg [7:0] reg_delay  ;
always_ff @(posedge clk or negedge rst)
begin
    if(~rst)
        begin
            reg_delay <= 8'b0 ;
        end
    else
        begin
            reg_delay  <= {reg_delay[6:0] ,signal_in} ;
        end
end
assign signal_out = reg_delay[7] ;
endmodule