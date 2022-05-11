module fifo_generator
(
    input   wire    clk,reset       , // reset active low
    input   wire    wr,rd           ,
    input   wire    [7:0] data_in   , // write data
    output  wire    full,empty      ,
    output  wire     [7:0] data_out    // read data
);

reg   [7:0]   mem [0:15]  ;
reg   [3:0]   wr_ptr      ;
reg   [3:0]   rd_ptr      ;
wire  [3:0]   wr_en       ;
wire  [3:0]   rd_en       ;
reg   [3:0]   counter     ;


//////////////////////////////////////
/// write pointer

always@ (posedge clk or negedge reset)
begin
    if(~reset)
        begin
            wr_ptr <= 7'b0  ;
        end
    else if( wr /*&& !full*/)
        begin
            mem[wr_ptr]<=data_in  ;
            wr_ptr <= wr_en       ;
        end
end

////////////////////////////////////////
/// read pointer

always@ (posedge clk or negedge reset)
begin
    if(~reset)
        begin
            rd_ptr <= 4'b0  ;
        end
    else if( rd /*&& !empty*/)
        begin
            rd_ptr <= rd_en ;
        end
end

/////////////////////////////////////////
/// counter

always@(posedge clk or negedge reset)
begin
    if(~reset)
        begin
            counter <= 4'b0;
        end
    else if( rd /*&& !empty*/ && !wr)
        begin
            counter <= counter - 4'b1;
        end
    else if( wr /*&& !full*/ && !rd)
        begin
            counter <= counter + 4'b1;
        end
    else 
        counter <= 4'b0;
end

assign wr_en    = ( wr /*&& !full*/)   ? wr_ptr + 4'b1 : wr_ptr + 4'b0 ;
assign rd_en    = ( rd /*&& !empty*/)  ? rd_ptr + 4'b1 : rd_ptr + 4'b0 ;
assign full     = (counter == 15)  ? 4'b1  : 4'b0  ;
assign empty    = (counter == 0)   ? 4'b1  : 4'b0  ;
assign data_out = mem[rd_ptr];

endmodule