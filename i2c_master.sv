
module i2c_master(
    input   clk,
    input   rst,
    input   [6:0] addr,
    input   [7:0] data0,data1,data2,data3,data4,
    input rw,
    inout  sda,
    inout  scl
);
reg[3:0] Q,Q_next;
reg [3:0] counter, counter_byte,counter_data_read;
wire [7:0] mem_in[0:4]; // tranfer data from master to slave
reg [7:0] mem_out [0:4]; // tranfer data from master to slave
wire sclk,clk_en;
reg sda_o;
reg scl_en,scl_idle,sta_sto;
reg i2c_done =0;
reg ready = 0;
//reg [7:0] data_out = 0 ;
reg [7:0] data_addr_rw ;
reg data_read_inval;
reg [3:0] cnt;
assign mem_in = {data0,data1,data2,data3,data4};
localparam  [3:0]   
                    IDLE = 1,
                    START = 2,
                    ADDR = 3,           // tranfer address and bit read/wrtite
                    READ_ACK = 4,       //ACK address
                    WRITE_DATA = 5,     // data from master to slave
                    READ_ACK_DATA = 6,  // ACK data from master to slave
                    READ_DATA = 7,      // data from slave to master
                    WRITE_ACK_DATA = 8,      // ACK data from slave to master
                    SR = 9,             // repeat start
                    STOP = 10;
div_clk #(.m(249),.n(10)) uut(
    .clk(clk),
    .rst(rst),
    .clk_en(clk_en),
    .sclk(sclk)
);
always_ff @(negedge clk_en or negedge rst)
begin
    if(~rst)
        begin
            sta_sto<=0;
        end
    else 
        begin
            sta_sto <= ~ sta_sto;
        end
end
always_ff @(negedge sclk or negedge rst)
begin
        if(~rst)
            begin
                Q<=IDLE;
            end
        else
            begin
                Q<= Q_next;
            end
end
always_comb
    case(Q)
            IDLE: 
                    begin // 1
                        Q_next = START;
                        sda_o = 1'b1;
                        scl_idle = 1'b1;
                        data_addr_rw = {addr,rw};
                    end
            START: 
                    begin//2
                        Q_next = ADDR;
                        sda_o = 1'b0;
                        ready = 1;

                    end
            ADDR : 
                    begin //3
                        sda_o = data_addr_rw[counter];
                        if(counter==0)  
                            begin                            
                            Q_next = READ_ACK;
                            end
                    end
            READ_ACK ://4
                    begin
                        if((rw==0) && (sda ==0)) 
                            begin
                                Q_next = WRITE_DATA; 
                            end
                        else if ((rw==1) && (sda ==0)) 
                            begin
                                Q_next = READ_DATA;
                            end
                        else 
                            begin
                                Q_next = STOP;
                            end
                    end            
            WRITE_DATA : //5
                        begin 
                            sda_o = mem_in[counter_byte][counter];
                            if(counter == 0)
                                begin
                                    Q_next = READ_ACK_DATA;
                                end
                                
                        end
            READ_ACK_DATA ://6
                        begin 
                            if((sda== 1'b1) && (counter_byte ==0))
                            begin
                                Q_next = IDLE; 
                            end
                            else if  (counter_byte !=0)
                            begin
                                Q_next = WRITE_DATA;
                            end
                            else 
                                Q_next = STOP;
                        end   
            READ_DATA ://7
                        begin 
                            mem_out[counter_byte][counter] = sda;
                            if(counter==0)
                                begin
                                    Q_next = WRITE_ACK_DATA;
                                end
                        end
            WRITE_ACK_DATA ://8
                        begin 
                            if(counter_byte == 0)
                            begin
                                Q_next = STOP;
                                sda_o = 1'b0;
                            end
                            else 
                            begin
                                Q_next = READ_DATA;
                            end
                        end
            STOP : //9
                        begin 
                            sda_o = 1'b0;
                            i2c_done =1;
                            Q_next = IDLE;
                        end

        endcase
            


always_ff @(negedge sclk) 
      case(Q)
                    START :begin 
                                    counter <= 7;
                                    counter_byte <=0;
                                end
                    ADDR : 
                                begin 
                                    counter <= counter-1; 
                                end
                    READ_ACK : 
                                begin
                                     counter <= 7;
                                     counter_byte <= 4;
                                 end
                    WRITE_DATA :
                                begin 
                                    counter <= counter -1;
                                end
                    READ_DATA:
                                begin 
                                    counter <= counter -1;
                                end
                    WRITE_ACK_DATA :
                                begin
                                    counter <= 7;
                                    if((counter_byte > 4) || (counter < 0))
                                    counter_byte <= 4;
                                    else
                                    counter_byte <= counter_byte -1;
                                end
                    READ_ACK_DATA : 
                                begin
                                    counter <= 7;
                                    if((counter_byte > 4) || (counter < 0))
                                    counter_byte <= 4;
                                    else
                                    counter_byte <= counter_byte -1;
                                end
                    default : 
                                begin 
                                    counter <=0 ;
                                end
                endcase


always_comb 
begin
    case(Q)
        IDLE : 
                begin 
                    scl_en = scl_idle; 
                end
        START : 
                begin 
                    scl_en = ~ sta_sto; 
                end
        ADDR : 
                begin 
                    scl_en = sta_sto; 
                end
        READ_ACK : 
                begin 
                    scl_en = sta_sto;
                end
        WRITE_DATA : 
                begin 
                    scl_en = sta_sto; 
                end
        READ_ACK_DATA : 
                begin 
                    scl_en = sta_sto; 
                end
        READ_DATA : 
                begin 
                    scl_en = sta_sto; 
                end
        WRITE_ACK_DATA : 
                begin 
                    scl_en = sta_sto; 
                end
        STOP : 
                begin 
                    scl_en = ~ sta_sto; 
                end
    endcase
end
   assign  sda = sda_o ? 1'bz : 1'b0;
   assign scl = scl_en ? 1'bz : 1'b0; 
endmodule            