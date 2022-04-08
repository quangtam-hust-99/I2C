
module i2c_0(
    input   clk,
    input   rst,
    input   [6:0] addr,
    input   [7:0] data,data2,
    output reg sda,
    output  scl
);
localparam  [3:0]   state_idle = 1,
                    state_start = 2,
                    state_addr = 3,
                    state_RW = 4,
                    state_NA = 5,
                    state_data = 6,
                    state_NA2 = 7,
                    state_data2 = 8,
                    state_NA3 = 9,
                    state_stop = 10;
 reg[3:0] Q;
 reg [3:0] counter;
always@ (posedge clk or negedge rst)
    begin
        if(rst)
        begin
            sda <= 1'b1;
            Q <=1;  
            counter <= 3'b0;
        end
        else
        begin
        case(Q)
            state_idle: begin // 1
                        sda <= 1'b1;
                        Q <= state_start;
                    end
            state_start: begin//2
                        sda <= 1'b0;
                        Q <= state_addr;
                        counter <= 4'd6;
                    end
            state_addr : begin //3
                        sda <= addr[ counter];
                        if(counter==0)
                            begin
                            Q <= state_RW;
                            end
                        else
                        counter <= counter - 4'b1;
                    end
            state_RW : begin //4
                        sda <= 1'b0;
                        Q <= state_NA;
                        end
            state_NA : begin//5
    //                      sda <= 1'b0;
                            counter <= 4'd7;
                        Q <= state_data; 
                        end
            state_data : begin//6
                            sda <= data[counter];
                            if(counter == 0)
                                begin
                                counter <= 4'd7;
                                Q <= state_NA2;
                                end
                            else
                                counter <= counter -4'b1;
                            end
            state_NA2 : begin//7
    //                           sda <= 1'b0;
                                counter <= 4'd7;
                                Q <= state_data2; 
                            end       
            state_data2 : begin//8
                            sda <= data2[counter];
                                if(counter == 0)
                                begin
                                counter <= 4'b0;
                                    Q <= state_NA3;
                                end
                                else
                                    counter <= counter - 4'b1;
                        end
            state_NA3 : begin//9
    //                         sda <= 1'b0;
                            Q <= state_stop;
                            end
            state_stop : begin//10
                            sda <= 1'b1;
                            Q <= state_idle;
                            end
        endcase
        end
    end
assign scl = (Q == state_addr ||Q == state_NA ||Q == state_RW ||Q == state_data ||Q == state_NA2 ||Q == state_data2 || Q == state_NA3  ) ? clk : 1;

endmodule            