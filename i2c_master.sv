
module i2c_master(
    input   clk,
    input   rst,
    input   [6:0] addr,
    input   [7:0] data,
    input rw,
    inout  sda,
    inout  scl
);
reg[3:0] Q,Q_next;
reg [3:0] counter;
wire [7:0] mem[0:3] ;
wire sclk,clk_en;
reg sda_o,sda_i;
reg scl_en,scl_idle,sta_sto;
reg i2c_done =0;
reg ready;
reg [7:0] data_out = 0 ;
reg [7:0] data_addr_rw ;
//assign mem = {data1,data2,data3,data4};
localparam  [3:0]   
                    state_idle = 1,
                    state_start = 2,
                    state_addr = 3,
                    state_RW = 4,
                    state_NA = 5,
                    state_data_w = 6,
                    state_NA_w = 7, 
                    state_data_r =8,
                    state_NA_r = 9,
                    state_stop = 10;
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
                Q<=state_idle;
            end
        else
            begin
                Q<= Q_next;
            end
end
always_comb
    case(Q)
            state_idle: 
                    begin // 1
                        Q_next = state_start;
                        sda_o = 1'b1;
                        scl_idle = 1'b1;
                        data_addr_rw = {addr,rw};
                    end
            state_start: 
                    begin//2
                        Q_next = state_addr;
                        sda_o = 1'b0;

                    end
            state_addr : 
                    begin //3
                        sda_o = data_addr_rw[counter];
                        if(counter==0)  
                            begin                            
                            Q_next = state_RW;
                            end
                    end
            state_RW ://4
                    begin
                        if((rw==0) && (sda ==0)) 
                            begin
                                Q_next = state_data_w; 
                            end
                        else if ((rw==1) && (sda ==0)) 
                            begin
                                Q_next = state_data_r;
                            end
                        else 
                            begin
                                Q_next = state_stop;
                            end
                    end            
            state_data_w : //6
                        begin 
                            sda_o = data[counter];
                            if(counter == 0)
                                begin
                                    Q_next = state_NA_w;
                                end
                                
                        end
            state_NA_w ://7
                        begin 
                            if(sda== 1'b0)
                            begin
                                Q_next = state_idle; 
                            end
                            else 
                            begin
                                Q_next = state_stop;
                            end
                        end   
            state_data_r ://8
                        begin 
                            data_out[counter] = sda;
                            if(counter==0)
                                begin
                                    Q_next = state_NA_r;
                                end
                        end
            state_NA_r ://9
                        begin 
                            if(sda)
                            begin
                                Q_next = state_stop;
                            end
                            else 
                                Q_next = state_data_r;
                        end
            state_stop : //10
                        begin 
                            sda_o = 1'b0;
                            i2c_done =1;
                            Q_next = state_idle;
                        end

        endcase
            


always_ff @(negedge sclk) 
      case(Q)
                    state_start :begin 
                                    counter <= 7;
                                end
                    state_addr : 
                                begin 
                                    counter <= counter-1; 
                                end
                    state_RW : 
                                begin
                                     counter <= 7;
                                 end
                    state_data_w :
                                begin 
                                    counter <= counter -1;
                                end
                    state_data_w:
                                begin 
                                    counter <= counter -1;
                                end
                    state_NA_w : 
                                begin
                                    counter <= 7;
                                end
                    default : 
                                begin 
                                    counter <=0 ;
                                end
                endcase


always_comb 
begin
    case(Q)
        state_idle : 
                begin 
                    scl_en = scl_idle; 
                end
        state_start : 
                begin 
                    scl_en = ~ sta_sto; 
                end
        state_addr : 
                begin 
                    scl_en = sta_sto; 
                end
        state_RW : 
                begin 
                    scl_en = sta_sto;
                    sda_i = sda; 
                end
        state_data_w : 
                begin 
                    scl_en = sta_sto; 
                end
        state_NA_w : 
                begin 
                    scl_en = sta_sto; 
                    sda_i = sda;
                end
        state_data_r : 
                begin 
                    scl_en = sta_sto; 
                end
        state_NA_r : 
                begin 
                    scl_en = sta_sto; 
                    sda_i = sda;
                end
        state_stop : 
                begin 
                    scl_en = ~ sta_sto; 
                end
    endcase
end
   assign  sda = sda_o ? 1'bz : 1'b0;
   assign scl = scl_en ? 1'bz : 1'b0; 
endmodule            