// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Jun  3 09:41:38 2022
// Host        : DESKTOP-6HAUL8U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/vivado/project/test_core_apb_i2c/test_core_apb_i2c.srcs/sources_1/bd/design_1/ip/design_1_top_core_i2c_0_0/design_1_top_core_i2c_0_0_sim_netlist.v
// Design      : design_1_top_core_i2c_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_core_i2c_0_0,top_core_i2c,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "top_core_i2c,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_top_core_i2c_0_0
   (PCLK,
    PRESETn,
    PSEL,
    PENABLE,
    PWRITE,
    PADDR,
    PWDATA,
    PRDATA,
    PREADY,
    PSLVERR,
    sda_i,
    sda_o,
    scl_o);
  input PCLK;
  input PRESETn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PSEL" *) input PSEL;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PENABLE" *) input PENABLE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PWRITE" *) input PWRITE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PADDR" *) input [31:0]PADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PWDATA" *) input [31:0]PWDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PRDATA" *) output [31:0]PRDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PREADY" *) output PREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PSLVERR" *) output PSLVERR;
  input sda_i;
  output sda_o;
  output scl_o;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]PADDR;
  wire PCLK;
  wire PENABLE;
  wire [7:0]\^PRDATA ;
  wire PRESETn;
  wire PSEL;
  wire [31:0]PWDATA;
  wire PWRITE;
  wire scl_o;
  wire sda_i;
  wire sda_o;

  assign PRDATA[31] = \<const0> ;
  assign PRDATA[30] = \<const0> ;
  assign PRDATA[29] = \<const0> ;
  assign PRDATA[28] = \<const0> ;
  assign PRDATA[27] = \<const0> ;
  assign PRDATA[26] = \<const0> ;
  assign PRDATA[25] = \<const0> ;
  assign PRDATA[24] = \<const0> ;
  assign PRDATA[23] = \<const0> ;
  assign PRDATA[22] = \<const0> ;
  assign PRDATA[21] = \<const0> ;
  assign PRDATA[20] = \<const0> ;
  assign PRDATA[19] = \<const0> ;
  assign PRDATA[18] = \<const0> ;
  assign PRDATA[17] = \<const0> ;
  assign PRDATA[16] = \<const0> ;
  assign PRDATA[15] = \<const0> ;
  assign PRDATA[14] = \<const0> ;
  assign PRDATA[13] = \<const0> ;
  assign PRDATA[12] = \<const0> ;
  assign PRDATA[11] = \<const0> ;
  assign PRDATA[10] = \<const0> ;
  assign PRDATA[9] = \<const0> ;
  assign PRDATA[8] = \<const0> ;
  assign PRDATA[7:0] = \^PRDATA [7:0];
  assign PREADY = \<const1> ;
  assign PSLVERR = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_top_core_i2c_0_0_top_core_i2c inst
       (.PADDR(PADDR[4:2]),
        .PCLK(PCLK),
        .PENABLE(PENABLE),
        .PRDATA(\^PRDATA ),
        .PRESETn(PRESETn),
        .PSEL(PSEL),
        .PWDATA(PWDATA[15:0]),
        .PWRITE(PWRITE),
        .scl_o(scl_o),
        .sda_i(sda_i),
        .sda_o(sda_o));
endmodule

(* ORIG_REF_NAME = "apb_interface" *) 
module design_1_top_core_i2c_0_0_apb_interface
   (\rx_status_reg[0]_0 ,
    \tx_apb_data_cnt_reg[0]_0 ,
    apb_txff_wr,
    apb_rxff_rd,
    i_ready,
    \tx_apb_data_reg[7]_0 ,
    \tx_ctrl_reg[0]_0 ,
    i_ready_reg_0,
    S,
    Q,
    sclk_reg,
    DI,
    clk_en_reg,
    \counter_byte_reg[1] ,
    \counter_byte_reg[7] ,
    sda_o_reg,
    \Q_reg[1] ,
    PRDATA,
    \mem_reg[15][7] ,
    \rx_status_reg[0]_1 ,
    PCLK,
    apb_txff_wr_reg_0,
    apb_rxff_rd_reg_0,
    PENABLE,
    PSEL,
    PWRITE,
    PADDR,
    counter_reg,
    counter_clk_reg,
    \counter_byte_reg[7]_0 ,
    counter,
    PRESETn,
    PWDATA,
    i2c_done,
    E,
    D,
    \counter_reg[0] );
  output \rx_status_reg[0]_0 ;
  output \tx_apb_data_cnt_reg[0]_0 ;
  output apb_txff_wr;
  output apb_rxff_rd;
  output i_ready;
  output \tx_apb_data_reg[7]_0 ;
  output \tx_ctrl_reg[0]_0 ;
  output i_ready_reg_0;
  output [3:0]S;
  output [15:0]Q;
  output [3:0]sclk_reg;
  output [3:0]DI;
  output [2:0]clk_en_reg;
  output [3:0]\counter_byte_reg[1] ;
  output [7:0]\counter_byte_reg[7] ;
  output sda_o_reg;
  output [0:0]\Q_reg[1] ;
  output [7:0]PRDATA;
  output [7:0]\mem_reg[15][7] ;
  input \rx_status_reg[0]_1 ;
  input PCLK;
  input apb_txff_wr_reg_0;
  input apb_rxff_rd_reg_0;
  input PENABLE;
  input PSEL;
  input PWRITE;
  input [2:0]PADDR;
  input [15:0]counter_reg;
  input [13:0]counter_clk_reg;
  input [7:0]\counter_byte_reg[7]_0 ;
  input [2:0]counter;
  input PRESETn;
  input [15:0]PWDATA;
  input i2c_done;
  input [0:0]E;
  input [7:0]D;
  input [0:0]\counter_reg[0] ;

  wire [7:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [2:0]PADDR;
  wire PCLK;
  wire PENABLE;
  wire [7:0]PRDATA;
  wire PRESETn;
  wire PSEL;
  wire [15:0]PWDATA;
  wire PWRITE;
  wire [15:0]Q;
  wire [0:0]\Q_reg[1] ;
  wire [3:0]S;
  wire apb_rxff_rd;
  wire apb_rxff_rd_reg_0;
  wire apb_txff_wr;
  wire apb_txff_wr_reg_0;
  wire [2:0]clk_en_reg;
  wire [2:0]counter;
  wire [3:0]\counter_byte_reg[1] ;
  wire [7:0]\counter_byte_reg[7] ;
  wire [7:0]\counter_byte_reg[7]_0 ;
  wire [13:0]counter_clk_reg;
  wire [15:0]counter_reg;
  wire [0:0]\counter_reg[0] ;
  wire i2c_done;
  wire i_ready;
  wire i_ready_i_1_n_0;
  wire i_ready_reg_0;
  wire [7:0]\mem_reg[15][7] ;
  wire \rx_status_reg[0]_0 ;
  wire \rx_status_reg[0]_1 ;
  wire [3:0]sclk_reg;
  wire sda_o_i_7_n_0;
  wire sda_o_i_8_n_0;
  wire sda_o_reg;
  wire [7:1]tx_apb_addr;
  wire \tx_apb_addr[7]_i_1_n_0 ;
  wire \tx_apb_data_cnt[7]_i_1_n_0 ;
  wire \tx_apb_data_cnt_reg[0]_0 ;
  wire \tx_apb_data_reg[7]_0 ;
  wire \tx_ctrl[0]_i_1_n_0 ;
  wire \tx_ctrl[0]_i_2_n_0 ;
  wire \tx_ctrl_reg[0]_0 ;
  wire \tx_ctrl_reg_n_0_[0] ;
  wire \tx_div_cnt[15]_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \PRDATA[7]_i_3 
       (.I0(PRESETn),
        .O(\tx_apb_data_cnt_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \PRDATA[7]_i_4 
       (.I0(PSEL),
        .I1(PENABLE),
        .O(\tx_ctrl_reg[0]_0 ));
  FDCE \PRDATA_reg[0] 
       (.C(PCLK),
        .CE(E),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(D[0]),
        .Q(PRDATA[0]));
  FDCE \PRDATA_reg[1] 
       (.C(PCLK),
        .CE(E),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(D[1]),
        .Q(PRDATA[1]));
  FDCE \PRDATA_reg[2] 
       (.C(PCLK),
        .CE(E),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(D[2]),
        .Q(PRDATA[2]));
  FDCE \PRDATA_reg[3] 
       (.C(PCLK),
        .CE(E),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(D[3]),
        .Q(PRDATA[3]));
  FDCE \PRDATA_reg[4] 
       (.C(PCLK),
        .CE(E),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(D[4]),
        .Q(PRDATA[4]));
  FDCE \PRDATA_reg[5] 
       (.C(PCLK),
        .CE(E),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(D[5]),
        .Q(PRDATA[5]));
  FDCE \PRDATA_reg[6] 
       (.C(PCLK),
        .CE(E),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(D[6]),
        .Q(PRDATA[6]));
  FDCE \PRDATA_reg[7] 
       (.C(PCLK),
        .CE(E),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(D[7]),
        .Q(PRDATA[7]));
  FDCE apb_rxff_rd_reg
       (.C(PCLK),
        .CE(1'b1),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(apb_rxff_rd_reg_0),
        .Q(apb_rxff_rd));
  FDCE apb_txff_wr_reg
       (.C(PCLK),
        .CE(1'b1),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(apb_txff_wr_reg_0),
        .Q(apb_txff_wr));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__0_i_5
       (.I0(Q[15]),
        .I1(counter_reg[15]),
        .I2(Q[14]),
        .I3(counter_reg[14]),
        .O(sclk_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__0_i_6
       (.I0(Q[13]),
        .I1(counter_reg[13]),
        .I2(Q[12]),
        .I3(counter_reg[12]),
        .O(sclk_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__0_i_7
       (.I0(Q[11]),
        .I1(counter_reg[11]),
        .I2(Q[10]),
        .I3(counter_reg[10]),
        .O(sclk_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__0_i_8
       (.I0(Q[9]),
        .I1(counter_reg[9]),
        .I2(Q[8]),
        .I3(counter_reg[8]),
        .O(sclk_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry_i_5
       (.I0(Q[7]),
        .I1(counter_reg[7]),
        .I2(Q[6]),
        .I3(counter_reg[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry_i_6
       (.I0(Q[5]),
        .I1(counter_reg[5]),
        .I2(Q[4]),
        .I3(counter_reg[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry_i_7
       (.I0(Q[3]),
        .I1(counter_reg[3]),
        .I2(Q[2]),
        .I3(counter_reg[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry_i_8
       (.I0(Q[1]),
        .I1(counter_reg[1]),
        .I2(Q[0]),
        .I3(counter_reg[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_byte1_carry_i_5
       (.I0(\counter_byte_reg[7] [7]),
        .I1(\counter_byte_reg[7]_0 [7]),
        .I2(\counter_byte_reg[7] [6]),
        .I3(\counter_byte_reg[7]_0 [6]),
        .O(\counter_byte_reg[1] [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_byte1_carry_i_6
       (.I0(\counter_byte_reg[7] [5]),
        .I1(\counter_byte_reg[7]_0 [5]),
        .I2(\counter_byte_reg[7] [4]),
        .I3(\counter_byte_reg[7]_0 [4]),
        .O(\counter_byte_reg[1] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_byte1_carry_i_7
       (.I0(\counter_byte_reg[7] [3]),
        .I1(\counter_byte_reg[7]_0 [3]),
        .I2(\counter_byte_reg[7] [2]),
        .I3(\counter_byte_reg[7]_0 [2]),
        .O(\counter_byte_reg[1] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_byte1_carry_i_8
       (.I0(\counter_byte_reg[7] [1]),
        .I1(\counter_byte_reg[7]_0 [1]),
        .I2(\counter_byte_reg[7] [0]),
        .I3(\counter_byte_reg[7]_0 [0]),
        .O(\counter_byte_reg[1] [0]));
  LUT4 #(
    .INIT(16'h44D4)) 
    counter_clk1_carry__0_i_2
       (.I0(Q[14]),
        .I1(counter_clk_reg[13]),
        .I2(counter_clk_reg[12]),
        .I3(Q[13]),
        .O(clk_en_reg[2]));
  LUT4 #(
    .INIT(16'h44D4)) 
    counter_clk1_carry__0_i_3
       (.I0(Q[12]),
        .I1(counter_clk_reg[11]),
        .I2(counter_clk_reg[10]),
        .I3(Q[11]),
        .O(clk_en_reg[1]));
  LUT4 #(
    .INIT(16'h44D4)) 
    counter_clk1_carry__0_i_4
       (.I0(Q[10]),
        .I1(counter_clk_reg[9]),
        .I2(counter_clk_reg[8]),
        .I3(Q[9]),
        .O(clk_en_reg[0]));
  LUT4 #(
    .INIT(16'h44D4)) 
    counter_clk1_carry_i_1
       (.I0(Q[8]),
        .I1(counter_clk_reg[7]),
        .I2(counter_clk_reg[6]),
        .I3(Q[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h44D4)) 
    counter_clk1_carry_i_2
       (.I0(Q[6]),
        .I1(counter_clk_reg[5]),
        .I2(counter_clk_reg[4]),
        .I3(Q[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h44D4)) 
    counter_clk1_carry_i_3
       (.I0(Q[4]),
        .I1(counter_clk_reg[3]),
        .I2(counter_clk_reg[2]),
        .I3(Q[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h44D4)) 
    counter_clk1_carry_i_4
       (.I0(Q[2]),
        .I1(counter_clk_reg[1]),
        .I2(counter_clk_reg[0]),
        .I3(Q[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h0F04)) 
    i_ready_i_1
       (.I0(i_ready_reg_0),
        .I1(\tx_ctrl_reg_n_0_[0] ),
        .I2(i2c_done),
        .I3(i_ready),
        .O(i_ready_i_1_n_0));
  FDCE i_ready_reg
       (.C(PCLK),
        .CE(1'b1),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(i_ready_i_1_n_0),
        .Q(i_ready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \rx_status[0]_i_2 
       (.I0(PADDR[2]),
        .I1(PADDR[1]),
        .I2(PADDR[0]),
        .I3(PENABLE),
        .I4(PSEL),
        .O(i_ready_reg_0));
  FDCE \rx_status_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(\rx_status_reg[0]_1 ),
        .Q(\rx_status_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_o_i_7
       (.I0(tx_apb_addr[3]),
        .I1(tx_apb_addr[2]),
        .I2(counter[1]),
        .I3(tx_apb_addr[1]),
        .I4(counter[0]),
        .I5(\Q_reg[1] ),
        .O(sda_o_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_o_i_8
       (.I0(tx_apb_addr[7]),
        .I1(tx_apb_addr[6]),
        .I2(counter[1]),
        .I3(tx_apb_addr[5]),
        .I4(counter[0]),
        .I5(tx_apb_addr[4]),
        .O(sda_o_i_8_n_0));
  MUXF7 sda_o_reg_i_5
       (.I0(sda_o_i_7_n_0),
        .I1(sda_o_i_8_n_0),
        .O(sda_o_reg),
        .S(counter[2]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \tx_apb_addr[7]_i_1 
       (.I0(PWRITE),
        .I1(PSEL),
        .I2(PENABLE),
        .I3(PADDR[2]),
        .I4(PADDR[0]),
        .I5(PADDR[1]),
        .O(\tx_apb_addr[7]_i_1_n_0 ));
  FDCE \tx_apb_addr_reg[0] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[0]),
        .Q(\Q_reg[1] ));
  FDCE \tx_apb_addr_reg[1] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[1]),
        .Q(tx_apb_addr[1]));
  FDCE \tx_apb_addr_reg[2] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[2]),
        .Q(tx_apb_addr[2]));
  FDCE \tx_apb_addr_reg[3] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[3]),
        .Q(tx_apb_addr[3]));
  FDCE \tx_apb_addr_reg[4] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[4]),
        .Q(tx_apb_addr[4]));
  FDCE \tx_apb_addr_reg[5] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[5]),
        .Q(tx_apb_addr[5]));
  FDCE \tx_apb_addr_reg[6] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[6]),
        .Q(tx_apb_addr[6]));
  FDCE \tx_apb_addr_reg[7] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[7]),
        .Q(tx_apb_addr[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \tx_apb_data[7]_i_2 
       (.I0(PENABLE),
        .I1(PSEL),
        .I2(PWRITE),
        .O(\tx_apb_data_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \tx_apb_data_cnt[7]_i_1 
       (.I0(PADDR[0]),
        .I1(PADDR[2]),
        .I2(PADDR[1]),
        .I3(PENABLE),
        .I4(PSEL),
        .I5(PWRITE),
        .O(\tx_apb_data_cnt[7]_i_1_n_0 ));
  FDCE \tx_apb_data_cnt_reg[0] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[0]),
        .Q(\counter_byte_reg[7] [0]));
  FDCE \tx_apb_data_cnt_reg[1] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[1]),
        .Q(\counter_byte_reg[7] [1]));
  FDCE \tx_apb_data_cnt_reg[2] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[2]),
        .Q(\counter_byte_reg[7] [2]));
  FDCE \tx_apb_data_cnt_reg[3] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[3]),
        .Q(\counter_byte_reg[7] [3]));
  FDCE \tx_apb_data_cnt_reg[4] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[4]),
        .Q(\counter_byte_reg[7] [4]));
  FDCE \tx_apb_data_cnt_reg[5] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[5]),
        .Q(\counter_byte_reg[7] [5]));
  FDCE \tx_apb_data_cnt_reg[6] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[6]),
        .Q(\counter_byte_reg[7] [6]));
  FDCE \tx_apb_data_cnt_reg[7] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[7]),
        .Q(\counter_byte_reg[7] [7]));
  FDCE \tx_apb_data_reg[0] 
       (.C(PCLK),
        .CE(\counter_reg[0] ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[0]),
        .Q(\mem_reg[15][7] [0]));
  FDCE \tx_apb_data_reg[1] 
       (.C(PCLK),
        .CE(\counter_reg[0] ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[1]),
        .Q(\mem_reg[15][7] [1]));
  FDCE \tx_apb_data_reg[2] 
       (.C(PCLK),
        .CE(\counter_reg[0] ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[2]),
        .Q(\mem_reg[15][7] [2]));
  FDCE \tx_apb_data_reg[3] 
       (.C(PCLK),
        .CE(\counter_reg[0] ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[3]),
        .Q(\mem_reg[15][7] [3]));
  FDCE \tx_apb_data_reg[4] 
       (.C(PCLK),
        .CE(\counter_reg[0] ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[4]),
        .Q(\mem_reg[15][7] [4]));
  FDCE \tx_apb_data_reg[5] 
       (.C(PCLK),
        .CE(\counter_reg[0] ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[5]),
        .Q(\mem_reg[15][7] [5]));
  FDCE \tx_apb_data_reg[6] 
       (.C(PCLK),
        .CE(\counter_reg[0] ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[6]),
        .Q(\mem_reg[15][7] [6]));
  FDCE \tx_apb_data_reg[7] 
       (.C(PCLK),
        .CE(\counter_reg[0] ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[7]),
        .Q(\mem_reg[15][7] [7]));
  LUT6 #(
    .INIT(64'hCCCCCC8C00000080)) 
    \tx_ctrl[0]_i_1 
       (.I0(PWDATA[0]),
        .I1(\tx_ctrl_reg[0]_0 ),
        .I2(PWRITE),
        .I3(PADDR[1]),
        .I4(\tx_ctrl[0]_i_2_n_0 ),
        .I5(\tx_ctrl_reg_n_0_[0] ),
        .O(\tx_ctrl[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tx_ctrl[0]_i_2 
       (.I0(PADDR[0]),
        .I1(PADDR[2]),
        .O(\tx_ctrl[0]_i_2_n_0 ));
  FDCE \tx_ctrl_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(\tx_ctrl[0]_i_1_n_0 ),
        .Q(\tx_ctrl_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \tx_div_cnt[15]_i_1 
       (.I0(PADDR[1]),
        .I1(PENABLE),
        .I2(PSEL),
        .I3(PWRITE),
        .I4(PADDR[2]),
        .I5(PADDR[0]),
        .O(\tx_div_cnt[15]_i_1_n_0 ));
  FDCE \tx_div_cnt_reg[0] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[0]),
        .Q(Q[0]));
  FDCE \tx_div_cnt_reg[10] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[10]),
        .Q(Q[10]));
  FDCE \tx_div_cnt_reg[11] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[11]),
        .Q(Q[11]));
  FDCE \tx_div_cnt_reg[12] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[12]),
        .Q(Q[12]));
  FDCE \tx_div_cnt_reg[13] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[13]),
        .Q(Q[13]));
  FDCE \tx_div_cnt_reg[14] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[14]),
        .Q(Q[14]));
  FDCE \tx_div_cnt_reg[15] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[15]),
        .Q(Q[15]));
  FDCE \tx_div_cnt_reg[1] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[1]),
        .Q(Q[1]));
  FDCE \tx_div_cnt_reg[2] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[2]),
        .Q(Q[2]));
  FDCE \tx_div_cnt_reg[3] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[3]),
        .Q(Q[3]));
  FDCE \tx_div_cnt_reg[4] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[4]),
        .Q(Q[4]));
  FDCE \tx_div_cnt_reg[5] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[5]),
        .Q(Q[5]));
  FDCE \tx_div_cnt_reg[6] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[6]),
        .Q(Q[6]));
  FDCE \tx_div_cnt_reg[7] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[7]),
        .Q(Q[7]));
  FDCE \tx_div_cnt_reg[8] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[8]),
        .Q(Q[8]));
  FDCE \tx_div_cnt_reg[9] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(\tx_apb_data_cnt_reg[0]_0 ),
        .D(PWDATA[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "div_clk" *) 
module design_1_top_core_i2c_0_0_div_clk
   (sclk,
    \counter_reg[3]_0 ,
    counter_reg,
    \counter_clk_reg[3]_0 ,
    \counter_clk_reg[15]_0 ,
    \counter_reg[7]_0 ,
    \wr_ptr_reg[0] ,
    i2c_done,
    \counter_reg[3]_1 ,
    D,
    E,
    \counter_byte_reg[0] ,
    \Q_reg[2] ,
    \rx_status_reg[0] ,
    sta_sto_reg,
    PCLK,
    PRESETn,
    S,
    \tx_div_cnt_reg[15] ,
    DI,
    \tx_div_cnt_reg[14] ,
    Q,
    \counter_reg[2]_0 ,
    \counter_byte_reg[6] ,
    \Q_reg[0] ,
    \Q_reg[1] ,
    \counter_reg[5]_0 ,
    \Q_reg[3] ,
    \Q_reg[0]_0 ,
    \counter_byte_reg[3] ,
    \counter_byte_reg[6]_0 ,
    \Q_reg[2]_0 ,
    \counter_byte_reg[6]_1 ,
    \counter_reg[4]_0 ,
    \counter_reg[7]_1 ,
    \counter_reg[5]_1 ,
    \counter_reg[5]_2 ,
    \counter_reg[6]_0 ,
    i_ready,
    sda_i,
    \Q_reg[0]_1 ,
    \tx_div_cnt_reg[15]_0 ,
    PSEL,
    \rx_status_reg[0]_0 ,
    sta_sto);
  output sclk;
  output \counter_reg[3]_0 ;
  output [14:0]counter_reg;
  output \counter_clk_reg[3]_0 ;
  output [12:0]\counter_clk_reg[15]_0 ;
  output \counter_reg[7]_0 ;
  output \wr_ptr_reg[0] ;
  output i2c_done;
  output \counter_reg[3]_1 ;
  output [3:0]D;
  output [0:0]E;
  output [0:0]\counter_byte_reg[0] ;
  output \Q_reg[2] ;
  output \rx_status_reg[0] ;
  output sta_sto_reg;
  input PCLK;
  input PRESETn;
  input [3:0]S;
  input [3:0]\tx_div_cnt_reg[15] ;
  input [3:0]DI;
  input [2:0]\tx_div_cnt_reg[14] ;
  input [3:0]Q;
  input \counter_reg[2]_0 ;
  input \counter_byte_reg[6] ;
  input \Q_reg[0] ;
  input \Q_reg[1] ;
  input \counter_reg[5]_0 ;
  input \Q_reg[3] ;
  input \Q_reg[0]_0 ;
  input \counter_byte_reg[3] ;
  input \counter_byte_reg[6]_0 ;
  input \Q_reg[2]_0 ;
  input \counter_byte_reg[6]_1 ;
  input \counter_reg[4]_0 ;
  input \counter_reg[7]_1 ;
  input \counter_reg[5]_1 ;
  input \counter_reg[5]_2 ;
  input \counter_reg[6]_0 ;
  input i_ready;
  input sda_i;
  input \Q_reg[0]_1 ;
  input [15:0]\tx_div_cnt_reg[15]_0 ;
  input PSEL;
  input \rx_status_reg[0]_0 ;
  input sta_sto;

  wire [3:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire PCLK;
  wire PRESETn;
  wire PSEL;
  wire [3:0]Q;
  wire \Q[0]_i_2_n_0 ;
  wire \Q[0]_i_3_n_0 ;
  wire \Q[0]_i_4_n_0 ;
  wire \Q[0]_i_5_n_0 ;
  wire \Q[1]_i_2_n_0 ;
  wire \Q[1]_i_4_n_0 ;
  wire \Q[1]_i_5_n_0 ;
  wire \Q[1]_i_9_n_0 ;
  wire \Q[2]_i_5_n_0 ;
  wire \Q[3]_i_2_n_0 ;
  wire \Q[3]_i_4_n_0 ;
  wire \Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire \Q_reg[1] ;
  wire \Q_reg[2] ;
  wire \Q_reg[2]_0 ;
  wire \Q_reg[3] ;
  wire [3:0]S;
  wire clk_en;
  wire clk_en_i_1_n_0;
  wire counter1_carry__0_i_1_n_0;
  wire counter1_carry__0_i_2_n_0;
  wire counter1_carry__0_i_3_n_0;
  wire counter1_carry__0_i_4_n_0;
  wire counter1_carry__0_n_1;
  wire counter1_carry__0_n_2;
  wire counter1_carry__0_n_3;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [0:0]\counter_byte_reg[0] ;
  wire \counter_byte_reg[3] ;
  wire \counter_byte_reg[6] ;
  wire \counter_byte_reg[6]_0 ;
  wire \counter_byte_reg[6]_1 ;
  wire counter_clk1_carry__0_i_1_n_0;
  wire counter_clk1_carry__0_i_5_n_0;
  wire counter_clk1_carry__0_i_6_n_0;
  wire counter_clk1_carry__0_i_7_n_0;
  wire counter_clk1_carry__0_i_8_n_0;
  wire counter_clk1_carry__0_n_0;
  wire counter_clk1_carry__0_n_1;
  wire counter_clk1_carry__0_n_2;
  wire counter_clk1_carry__0_n_3;
  wire counter_clk1_carry_i_5_n_0;
  wire counter_clk1_carry_i_6_n_0;
  wire counter_clk1_carry_i_7_n_0;
  wire counter_clk1_carry_i_8_n_0;
  wire counter_clk1_carry_n_0;
  wire counter_clk1_carry_n_1;
  wire counter_clk1_carry_n_2;
  wire counter_clk1_carry_n_3;
  wire \counter_clk[0]_i_2_n_0 ;
  wire \counter_clk[0]_i_3_n_0 ;
  wire \counter_clk[0]_i_4_n_0 ;
  wire \counter_clk[0]_i_5_n_0 ;
  wire \counter_clk[0]_i_6_n_0 ;
  wire \counter_clk[12]_i_2_n_0 ;
  wire \counter_clk[12]_i_3_n_0 ;
  wire \counter_clk[12]_i_4_n_0 ;
  wire \counter_clk[12]_i_5_n_0 ;
  wire \counter_clk[4]_i_2_n_0 ;
  wire \counter_clk[4]_i_3_n_0 ;
  wire \counter_clk[4]_i_4_n_0 ;
  wire \counter_clk[4]_i_5_n_0 ;
  wire \counter_clk[8]_i_2_n_0 ;
  wire \counter_clk[8]_i_3_n_0 ;
  wire \counter_clk[8]_i_4_n_0 ;
  wire \counter_clk[8]_i_5_n_0 ;
  wire [15:14]counter_clk_reg;
  wire \counter_clk_reg[0]_i_1_n_0 ;
  wire \counter_clk_reg[0]_i_1_n_1 ;
  wire \counter_clk_reg[0]_i_1_n_2 ;
  wire \counter_clk_reg[0]_i_1_n_3 ;
  wire \counter_clk_reg[0]_i_1_n_4 ;
  wire \counter_clk_reg[0]_i_1_n_5 ;
  wire \counter_clk_reg[0]_i_1_n_6 ;
  wire \counter_clk_reg[0]_i_1_n_7 ;
  wire \counter_clk_reg[12]_i_1_n_1 ;
  wire \counter_clk_reg[12]_i_1_n_2 ;
  wire \counter_clk_reg[12]_i_1_n_3 ;
  wire \counter_clk_reg[12]_i_1_n_4 ;
  wire \counter_clk_reg[12]_i_1_n_5 ;
  wire \counter_clk_reg[12]_i_1_n_6 ;
  wire \counter_clk_reg[12]_i_1_n_7 ;
  wire [12:0]\counter_clk_reg[15]_0 ;
  wire \counter_clk_reg[3]_0 ;
  wire \counter_clk_reg[4]_i_1_n_0 ;
  wire \counter_clk_reg[4]_i_1_n_1 ;
  wire \counter_clk_reg[4]_i_1_n_2 ;
  wire \counter_clk_reg[4]_i_1_n_3 ;
  wire \counter_clk_reg[4]_i_1_n_4 ;
  wire \counter_clk_reg[4]_i_1_n_5 ;
  wire \counter_clk_reg[4]_i_1_n_6 ;
  wire \counter_clk_reg[4]_i_1_n_7 ;
  wire \counter_clk_reg[8]_i_1_n_0 ;
  wire \counter_clk_reg[8]_i_1_n_1 ;
  wire \counter_clk_reg[8]_i_1_n_2 ;
  wire \counter_clk_reg[8]_i_1_n_3 ;
  wire \counter_clk_reg[8]_i_1_n_4 ;
  wire \counter_clk_reg[8]_i_1_n_5 ;
  wire \counter_clk_reg[8]_i_1_n_6 ;
  wire \counter_clk_reg[8]_i_1_n_7 ;
  wire [14:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[2]_0 ;
  wire \counter_reg[3]_0 ;
  wire \counter_reg[3]_1 ;
  wire \counter_reg[4]_0 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[5]_0 ;
  wire \counter_reg[5]_1 ;
  wire \counter_reg[5]_2 ;
  wire \counter_reg[6]_0 ;
  wire \counter_reg[7]_0 ;
  wire \counter_reg[7]_1 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire i2c_done;
  wire i_ready;
  wire load;
  wire \rx_status_reg[0] ;
  wire \rx_status_reg[0]_0 ;
  wire sclk;
  wire sda_i;
  wire sta_sto;
  wire sta_sto_reg;
  wire [2:0]\tx_div_cnt_reg[14] ;
  wire [3:0]\tx_div_cnt_reg[15] ;
  wire [15:0]\tx_div_cnt_reg[15]_0 ;
  wire \wr_ptr_reg[0] ;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_counter_clk1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter_clk1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_counter_clk_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000FFE0FFEA)) 
    \Q[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\Q[0]_i_2_n_0 ),
        .I3(\Q[0]_i_3_n_0 ),
        .I4(\Q[0]_i_4_n_0 ),
        .I5(\Q[0]_i_5_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCC4)) 
    \Q[0]_i_2 
       (.I0(sclk),
        .I1(Q[0]),
        .I2(\counter_reg[5]_2 ),
        .I3(\counter_reg[6]_0 ),
        .I4(\counter_reg[7]_1 ),
        .I5(\counter_reg[4]_0 ),
        .O(\Q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEBABEBA)) 
    \Q[0]_i_3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(sclk),
        .I4(i_ready),
        .I5(Q[2]),
        .O(\Q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF22FFFFFFF0FFFF)) 
    \Q[0]_i_4 
       (.I0(\counter_byte_reg[3] ),
        .I1(\counter_byte_reg[6]_0 ),
        .I2(sda_i),
        .I3(Q[0]),
        .I4(sclk),
        .I5(Q[1]),
        .O(\Q[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBBBBFBB)) 
    \Q[0]_i_5 
       (.I0(Q[2]),
        .I1(sclk),
        .I2(\counter_byte_reg[6]_0 ),
        .I3(\counter_byte_reg[3] ),
        .I4(Q[1]),
        .I5(\Q_reg[0]_1 ),
        .O(\Q[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB8B88)) 
    \Q[1]_i_1 
       (.I0(\Q[1]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\Q_reg[2]_0 ),
        .I3(\Q[1]_i_4_n_0 ),
        .I4(\Q[1]_i_5_n_0 ),
        .I5(\counter_byte_reg[6]_1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFB04)) 
    \Q[1]_i_2 
       (.I0(Q[2]),
        .I1(sclk),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\Q[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q[1]_i_4 
       (.I0(sclk),
        .I1(Q[1]),
        .O(\Q[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA888888888)) 
    \Q[1]_i_5 
       (.I0(Q[1]),
        .I1(\Q[1]_i_9_n_0 ),
        .I2(\counter_reg[4]_0 ),
        .I3(\counter_reg[7]_1 ),
        .I4(\counter_reg[5]_1 ),
        .I5(Q[0]),
        .O(\Q[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \Q[1]_i_9 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(sclk),
        .O(\Q[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0075007500000075)) 
    \Q[2]_i_1 
       (.I0(\Q_reg[2] ),
        .I1(\Q_reg[0] ),
        .I2(\counter_reg[5]_0 ),
        .I3(\Q[2]_i_5_n_0 ),
        .I4(\Q_reg[3] ),
        .I5(\Q_reg[1] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q[2]_i_2 
       (.I0(sclk),
        .I1(Q[3]),
        .O(\Q_reg[2] ));
  LUT6 #(
    .INIT(64'h00000000AEFF00FF)) 
    \Q[2]_i_5 
       (.I0(\Q_reg[0]_0 ),
        .I1(\counter_byte_reg[3] ),
        .I2(\counter_byte_reg[6]_0 ),
        .I3(sclk),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\Q[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Q[3]_i_1 
       (.I0(\Q[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0444044404444444)) 
    \Q[3]_i_2 
       (.I0(\counter_byte_reg[6] ),
        .I1(\Q[3]_i_4_n_0 ),
        .I2(sclk),
        .I3(Q[2]),
        .I4(\Q_reg[0] ),
        .I5(\Q_reg[1] ),
        .O(\Q[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h04FF)) 
    \Q[3]_i_4 
       (.I0(Q[0]),
        .I1(sclk),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\Q[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    clk_en_i_1
       (.I0(counter_clk1_carry__0_n_0),
        .I1(clk_en),
        .O(clk_en_i_1_n_0));
  FDCE clk_en_reg
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(clk_en_i_1_n_0),
        .Q(clk_en));
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,counter1_carry_n_1,counter1_carry_n_2,counter1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({counter1_carry_i_1_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4_n_0}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({load,counter1_carry__0_n_1,counter1_carry__0_n_2,counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({counter1_carry__0_i_1_n_0,counter1_carry__0_i_2_n_0,counter1_carry__0_i_3_n_0,counter1_carry__0_i_4_n_0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S(\tx_div_cnt_reg[15] ));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__0_i_1
       (.I0(counter_reg[14]),
        .I1(\tx_div_cnt_reg[15]_0 [15]),
        .I2(counter_reg[13]),
        .I3(\tx_div_cnt_reg[15]_0 [14]),
        .O(counter1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__0_i_2
       (.I0(counter_reg[12]),
        .I1(\tx_div_cnt_reg[15]_0 [13]),
        .I2(counter_reg[11]),
        .I3(\tx_div_cnt_reg[15]_0 [12]),
        .O(counter1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__0_i_3
       (.I0(counter_reg[10]),
        .I1(\tx_div_cnt_reg[15]_0 [11]),
        .I2(counter_reg[9]),
        .I3(\tx_div_cnt_reg[15]_0 [10]),
        .O(counter1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__0_i_4
       (.I0(counter_reg[8]),
        .I1(\tx_div_cnt_reg[15]_0 [9]),
        .I2(counter_reg[7]),
        .I3(\tx_div_cnt_reg[15]_0 [8]),
        .O(counter1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry_i_1
       (.I0(counter_reg[6]),
        .I1(\tx_div_cnt_reg[15]_0 [7]),
        .I2(counter_reg[5]),
        .I3(\tx_div_cnt_reg[15]_0 [6]),
        .O(counter1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry_i_2
       (.I0(counter_reg[4]),
        .I1(\tx_div_cnt_reg[15]_0 [5]),
        .I2(counter_reg[3]),
        .I3(\tx_div_cnt_reg[15]_0 [4]),
        .O(counter1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry_i_3
       (.I0(counter_reg[2]),
        .I1(\tx_div_cnt_reg[15]_0 [3]),
        .I2(counter_reg[1]),
        .I3(\tx_div_cnt_reg[15]_0 [2]),
        .O(counter1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry_i_4
       (.I0(counter_reg[0]),
        .I1(\tx_div_cnt_reg[15]_0 [1]),
        .I2(\counter_reg[3]_0 ),
        .I3(\tx_div_cnt_reg[15]_0 [0]),
        .O(counter1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_2 
       (.I0(\counter_reg[3]_0 ),
        .I1(load),
        .O(\counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_3 
       (.I0(counter_reg[2]),
        .I1(load),
        .O(\counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_4 
       (.I0(counter_reg[1]),
        .I1(load),
        .O(\counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_5 
       (.I0(counter_reg[0]),
        .I1(load),
        .O(\counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_6 
       (.I0(\counter_reg[3]_0 ),
        .I1(load),
        .O(\counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[14]),
        .I1(load),
        .O(\counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[13]),
        .I1(load),
        .O(\counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_4 
       (.I0(counter_reg[12]),
        .I1(load),
        .O(\counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_5 
       (.I0(counter_reg[11]),
        .I1(load),
        .O(\counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[6]),
        .I1(load),
        .O(\counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[5]),
        .I1(load),
        .O(\counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[4]),
        .I1(load),
        .O(\counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[3]),
        .I1(load),
        .O(\counter[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00054548)) 
    \counter[7]_i_1 
       (.I0(Q[3]),
        .I1(sclk),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\counter_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0A0B0B28)) 
    \counter[7]_i_2 
       (.I0(sclk),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\counter_reg[3]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[10]),
        .I1(load),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[9]),
        .I1(load),
        .O(\counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[8]),
        .I1(load),
        .O(\counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[7]),
        .I1(load),
        .O(\counter[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h003203B8)) 
    \counter_byte[7]_i_1 
       (.I0(sclk),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\counter_byte_reg[0] ));
  CARRY4 counter_clk1_carry
       (.CI(1'b0),
        .CO({counter_clk1_carry_n_0,counter_clk1_carry_n_1,counter_clk1_carry_n_2,counter_clk1_carry_n_3}),
        .CYINIT(1'b1),
        .DI(DI),
        .O(NLW_counter_clk1_carry_O_UNCONNECTED[3:0]),
        .S({counter_clk1_carry_i_5_n_0,counter_clk1_carry_i_6_n_0,counter_clk1_carry_i_7_n_0,counter_clk1_carry_i_8_n_0}));
  CARRY4 counter_clk1_carry__0
       (.CI(counter_clk1_carry_n_0),
        .CO({counter_clk1_carry__0_n_0,counter_clk1_carry__0_n_1,counter_clk1_carry__0_n_2,counter_clk1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({counter_clk1_carry__0_i_1_n_0,\tx_div_cnt_reg[14] }),
        .O(NLW_counter_clk1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter_clk1_carry__0_i_5_n_0,counter_clk1_carry__0_i_6_n_0,counter_clk1_carry__0_i_7_n_0,counter_clk1_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hBA)) 
    counter_clk1_carry__0_i_1
       (.I0(counter_clk_reg[15]),
        .I1(\tx_div_cnt_reg[15]_0 [15]),
        .I2(counter_clk_reg[14]),
        .O(counter_clk1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    counter_clk1_carry__0_i_5
       (.I0(counter_clk_reg[15]),
        .I1(counter_clk_reg[14]),
        .I2(\tx_div_cnt_reg[15]_0 [15]),
        .O(counter_clk1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_clk1_carry__0_i_6
       (.I0(\counter_clk_reg[15]_0 [12]),
        .I1(\tx_div_cnt_reg[15]_0 [14]),
        .I2(\counter_clk_reg[15]_0 [11]),
        .I3(\tx_div_cnt_reg[15]_0 [13]),
        .O(counter_clk1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_clk1_carry__0_i_7
       (.I0(\counter_clk_reg[15]_0 [10]),
        .I1(\tx_div_cnt_reg[15]_0 [12]),
        .I2(\counter_clk_reg[15]_0 [9]),
        .I3(\tx_div_cnt_reg[15]_0 [11]),
        .O(counter_clk1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_clk1_carry__0_i_8
       (.I0(\counter_clk_reg[15]_0 [8]),
        .I1(\tx_div_cnt_reg[15]_0 [10]),
        .I2(\counter_clk_reg[15]_0 [7]),
        .I3(\tx_div_cnt_reg[15]_0 [9]),
        .O(counter_clk1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_clk1_carry_i_5
       (.I0(\counter_clk_reg[15]_0 [6]),
        .I1(\tx_div_cnt_reg[15]_0 [8]),
        .I2(\counter_clk_reg[15]_0 [5]),
        .I3(\tx_div_cnt_reg[15]_0 [7]),
        .O(counter_clk1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_clk1_carry_i_6
       (.I0(\counter_clk_reg[15]_0 [4]),
        .I1(\tx_div_cnt_reg[15]_0 [6]),
        .I2(\counter_clk_reg[15]_0 [3]),
        .I3(\tx_div_cnt_reg[15]_0 [5]),
        .O(counter_clk1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_clk1_carry_i_7
       (.I0(\counter_clk_reg[15]_0 [2]),
        .I1(\tx_div_cnt_reg[15]_0 [4]),
        .I2(\counter_clk_reg[15]_0 [1]),
        .I3(\tx_div_cnt_reg[15]_0 [3]),
        .O(counter_clk1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_clk1_carry_i_8
       (.I0(\counter_clk_reg[15]_0 [0]),
        .I1(\tx_div_cnt_reg[15]_0 [2]),
        .I2(\counter_clk_reg[3]_0 ),
        .I3(\tx_div_cnt_reg[15]_0 [1]),
        .O(counter_clk1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[0]_i_2 
       (.I0(\counter_clk_reg[3]_0 ),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[0]_i_3 
       (.I0(\counter_clk_reg[15]_0 [2]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[0]_i_4 
       (.I0(\counter_clk_reg[15]_0 [1]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[0]_i_5 
       (.I0(\counter_clk_reg[15]_0 [0]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_clk[0]_i_6 
       (.I0(\counter_clk_reg[3]_0 ),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[12]_i_2 
       (.I0(counter_clk_reg[15]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[12]_i_3 
       (.I0(counter_clk_reg[14]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[12]_i_4 
       (.I0(\counter_clk_reg[15]_0 [12]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[12]_i_5 
       (.I0(\counter_clk_reg[15]_0 [11]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[4]_i_2 
       (.I0(\counter_clk_reg[15]_0 [6]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[4]_i_3 
       (.I0(\counter_clk_reg[15]_0 [5]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[4]_i_4 
       (.I0(\counter_clk_reg[15]_0 [4]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[4]_i_5 
       (.I0(\counter_clk_reg[15]_0 [3]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[8]_i_2 
       (.I0(\counter_clk_reg[15]_0 [10]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[8]_i_3 
       (.I0(\counter_clk_reg[15]_0 [9]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[8]_i_4 
       (.I0(\counter_clk_reg[15]_0 [8]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[8]_i_5 
       (.I0(\counter_clk_reg[15]_0 [7]),
        .I1(counter_clk1_carry__0_n_0),
        .O(\counter_clk[8]_i_5_n_0 ));
  FDCE \counter_clk_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[0]_i_1_n_7 ),
        .Q(\counter_clk_reg[3]_0 ));
  CARRY4 \counter_clk_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_clk_reg[0]_i_1_n_0 ,\counter_clk_reg[0]_i_1_n_1 ,\counter_clk_reg[0]_i_1_n_2 ,\counter_clk_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter_clk[0]_i_2_n_0 }),
        .O({\counter_clk_reg[0]_i_1_n_4 ,\counter_clk_reg[0]_i_1_n_5 ,\counter_clk_reg[0]_i_1_n_6 ,\counter_clk_reg[0]_i_1_n_7 }),
        .S({\counter_clk[0]_i_3_n_0 ,\counter_clk[0]_i_4_n_0 ,\counter_clk[0]_i_5_n_0 ,\counter_clk[0]_i_6_n_0 }));
  FDCE \counter_clk_reg[10] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[8]_i_1_n_5 ),
        .Q(\counter_clk_reg[15]_0 [9]));
  FDCE \counter_clk_reg[11] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[8]_i_1_n_4 ),
        .Q(\counter_clk_reg[15]_0 [10]));
  FDCE \counter_clk_reg[12] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[12]_i_1_n_7 ),
        .Q(\counter_clk_reg[15]_0 [11]));
  CARRY4 \counter_clk_reg[12]_i_1 
       (.CI(\counter_clk_reg[8]_i_1_n_0 ),
        .CO({\NLW_counter_clk_reg[12]_i_1_CO_UNCONNECTED [3],\counter_clk_reg[12]_i_1_n_1 ,\counter_clk_reg[12]_i_1_n_2 ,\counter_clk_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[12]_i_1_n_4 ,\counter_clk_reg[12]_i_1_n_5 ,\counter_clk_reg[12]_i_1_n_6 ,\counter_clk_reg[12]_i_1_n_7 }),
        .S({\counter_clk[12]_i_2_n_0 ,\counter_clk[12]_i_3_n_0 ,\counter_clk[12]_i_4_n_0 ,\counter_clk[12]_i_5_n_0 }));
  FDCE \counter_clk_reg[13] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[12]_i_1_n_6 ),
        .Q(\counter_clk_reg[15]_0 [12]));
  FDCE \counter_clk_reg[14] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[12]_i_1_n_5 ),
        .Q(counter_clk_reg[14]));
  FDCE \counter_clk_reg[15] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[12]_i_1_n_4 ),
        .Q(counter_clk_reg[15]));
  FDCE \counter_clk_reg[1] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[0]_i_1_n_6 ),
        .Q(\counter_clk_reg[15]_0 [0]));
  FDCE \counter_clk_reg[2] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[0]_i_1_n_5 ),
        .Q(\counter_clk_reg[15]_0 [1]));
  FDCE \counter_clk_reg[3] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[0]_i_1_n_4 ),
        .Q(\counter_clk_reg[15]_0 [2]));
  FDCE \counter_clk_reg[4] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[4]_i_1_n_7 ),
        .Q(\counter_clk_reg[15]_0 [3]));
  CARRY4 \counter_clk_reg[4]_i_1 
       (.CI(\counter_clk_reg[0]_i_1_n_0 ),
        .CO({\counter_clk_reg[4]_i_1_n_0 ,\counter_clk_reg[4]_i_1_n_1 ,\counter_clk_reg[4]_i_1_n_2 ,\counter_clk_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[4]_i_1_n_4 ,\counter_clk_reg[4]_i_1_n_5 ,\counter_clk_reg[4]_i_1_n_6 ,\counter_clk_reg[4]_i_1_n_7 }),
        .S({\counter_clk[4]_i_2_n_0 ,\counter_clk[4]_i_3_n_0 ,\counter_clk[4]_i_4_n_0 ,\counter_clk[4]_i_5_n_0 }));
  FDCE \counter_clk_reg[5] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[4]_i_1_n_6 ),
        .Q(\counter_clk_reg[15]_0 [4]));
  FDCE \counter_clk_reg[6] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[4]_i_1_n_5 ),
        .Q(\counter_clk_reg[15]_0 [5]));
  FDCE \counter_clk_reg[7] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[4]_i_1_n_4 ),
        .Q(\counter_clk_reg[15]_0 [6]));
  FDCE \counter_clk_reg[8] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[8]_i_1_n_7 ),
        .Q(\counter_clk_reg[15]_0 [7]));
  CARRY4 \counter_clk_reg[8]_i_1 
       (.CI(\counter_clk_reg[4]_i_1_n_0 ),
        .CO({\counter_clk_reg[8]_i_1_n_0 ,\counter_clk_reg[8]_i_1_n_1 ,\counter_clk_reg[8]_i_1_n_2 ,\counter_clk_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[8]_i_1_n_4 ,\counter_clk_reg[8]_i_1_n_5 ,\counter_clk_reg[8]_i_1_n_6 ,\counter_clk_reg[8]_i_1_n_7 }),
        .S({\counter_clk[8]_i_2_n_0 ,\counter_clk[8]_i_3_n_0 ,\counter_clk[8]_i_4_n_0 ,\counter_clk[8]_i_5_n_0 }));
  FDCE \counter_clk_reg[9] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[8]_i_1_n_6 ),
        .Q(\counter_clk_reg[15]_0 [8]));
  FDCE \counter_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(\counter_reg[3]_0 ));
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2_n_0 }),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter[0]_i_3_n_0 ,\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 }));
  FDCE \counter_reg[10] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[9]));
  FDCE \counter_reg[11] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[10]));
  FDCE \counter_reg[12] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[11]));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [3],\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDCE \counter_reg[13] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[12]));
  FDCE \counter_reg[14] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[13]));
  FDCE \counter_reg[15] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[14]));
  FDCE \counter_reg[1] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[0]));
  FDCE \counter_reg[2] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[1]));
  FDCE \counter_reg[3] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[2]));
  FDCE \counter_reg[4] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[3]));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDCE \counter_reg[5] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[4]));
  FDCE \counter_reg[6] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[5]));
  FDCE \counter_reg[7] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[6]));
  FDCE \counter_reg[8] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[7]));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDCE \counter_reg[9] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0000FFFD)) 
    \reg_data_in[7]_i_1 
       (.I0(D[1]),
        .I1(D[0]),
        .I2(\Q[3]_i_2_n_0 ),
        .I3(D[2]),
        .I4(\counter_reg[2]_0 ),
        .O(E));
  LUT3 #(
    .INIT(8'hDC)) 
    \rx_status[0]_i_1 
       (.I0(PSEL),
        .I1(i2c_done),
        .I2(\rx_status_reg[0]_0 ),
        .O(\rx_status_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \rx_status[0]_i_3 
       (.I0(Q[0]),
        .I1(sclk),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(i2c_done));
  FDCE sclk_reg
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(load),
        .Q(sclk));
  LUT6 #(
    .INIT(64'h55555545AAAAAA8A)) 
    sta_sto_i_1
       (.I0(clk_en),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(sta_sto),
        .O(sta_sto_reg));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \wr_ptr[3]_i_3 
       (.I0(Q[0]),
        .I1(sclk),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\wr_ptr_reg[0] ));
endmodule

(* ORIG_REF_NAME = "fifo_generator" *) 
module design_1_top_core_i2c_0_0_fifo_generator
   (D,
    E,
    apb_rxff_rd_reg,
    apb_txff_wr_reg,
    apb_rxff_rd,
    PADDR,
    PWRITE,
    PENABLE_0,
    PRESETn,
    \Q_reg[0] ,
    \rx_status_reg[0] ,
    PENABLE,
    PSEL,
    \counter_reg[0]_0 ,
    apb_txff_wr,
    \data_out_reg[7] ,
    PCLK,
    PRESETn_0);
  output [7:0]D;
  output [0:0]E;
  output apb_rxff_rd_reg;
  output apb_txff_wr_reg;
  input apb_rxff_rd;
  input [2:0]PADDR;
  input PWRITE;
  input PENABLE_0;
  input PRESETn;
  input \Q_reg[0] ;
  input \rx_status_reg[0] ;
  input PENABLE;
  input PSEL;
  input \counter_reg[0]_0 ;
  input apb_txff_wr;
  input [7:0]\data_out_reg[7] ;
  input PCLK;
  input PRESETn_0;

  wire [7:0]D;
  wire [0:0]E;
  wire [2:0]PADDR;
  wire PCLK;
  wire PENABLE;
  wire PENABLE_0;
  wire \PRDATA[0]_i_4_n_0 ;
  wire \PRDATA[0]_i_5_n_0 ;
  wire \PRDATA[0]_i_6_n_0 ;
  wire \PRDATA[0]_i_7_n_0 ;
  wire \PRDATA[1]_i_3_n_0 ;
  wire \PRDATA[1]_i_4_n_0 ;
  wire \PRDATA[1]_i_5_n_0 ;
  wire \PRDATA[1]_i_6_n_0 ;
  wire \PRDATA[2]_i_3_n_0 ;
  wire \PRDATA[2]_i_4_n_0 ;
  wire \PRDATA[2]_i_5_n_0 ;
  wire \PRDATA[2]_i_6_n_0 ;
  wire \PRDATA[3]_i_3_n_0 ;
  wire \PRDATA[3]_i_4_n_0 ;
  wire \PRDATA[3]_i_5_n_0 ;
  wire \PRDATA[3]_i_6_n_0 ;
  wire \PRDATA[4]_i_3_n_0 ;
  wire \PRDATA[4]_i_4_n_0 ;
  wire \PRDATA[4]_i_5_n_0 ;
  wire \PRDATA[4]_i_6_n_0 ;
  wire \PRDATA[5]_i_3_n_0 ;
  wire \PRDATA[5]_i_4_n_0 ;
  wire \PRDATA[5]_i_5_n_0 ;
  wire \PRDATA[5]_i_6_n_0 ;
  wire \PRDATA[6]_i_3_n_0 ;
  wire \PRDATA[6]_i_4_n_0 ;
  wire \PRDATA[6]_i_5_n_0 ;
  wire \PRDATA[6]_i_6_n_0 ;
  wire \PRDATA[7]_i_10_n_0 ;
  wire \PRDATA[7]_i_5_n_0 ;
  wire \PRDATA[7]_i_7_n_0 ;
  wire \PRDATA[7]_i_8_n_0 ;
  wire \PRDATA[7]_i_9_n_0 ;
  wire \PRDATA_reg[0]_i_2_n_0 ;
  wire \PRDATA_reg[0]_i_3_n_0 ;
  wire \PRDATA_reg[1]_i_2_n_0 ;
  wire \PRDATA_reg[2]_i_2_n_0 ;
  wire \PRDATA_reg[3]_i_2_n_0 ;
  wire \PRDATA_reg[4]_i_2_n_0 ;
  wire \PRDATA_reg[5]_i_2_n_0 ;
  wire \PRDATA_reg[6]_i_2_n_0 ;
  wire \PRDATA_reg[7]_i_6_n_0 ;
  wire PRESETn;
  wire PRESETn_0;
  wire PSEL;
  wire PWRITE;
  wire \Q_reg[0] ;
  wire apb_rxff_rd;
  wire apb_rxff_rd_reg;
  wire apb_txff_wr;
  wire apb_txff_wr_reg;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1__0_n_0 ;
  wire \counter[3]_i_1__0_n_0 ;
  wire \counter[3]_i_2__0_n_0 ;
  wire \counter_reg[0]_0 ;
  wire [3:0]counter_reg__0;
  wire [7:0]\data_out_reg[7] ;
  wire \mem[0][7]_i_1__0_n_0 ;
  wire \mem[10][7]_i_1__0_n_0 ;
  wire \mem[11][7]_i_1__0_n_0 ;
  wire \mem[12][7]_i_1__0_n_0 ;
  wire \mem[13][7]_i_1__0_n_0 ;
  wire \mem[14][7]_i_1__0_n_0 ;
  wire \mem[15][7]_i_1__0_n_0 ;
  wire \mem[1][7]_i_1__0_n_0 ;
  wire \mem[2][7]_i_1__0_n_0 ;
  wire \mem[3][7]_i_1__0_n_0 ;
  wire \mem[4][7]_i_1__0_n_0 ;
  wire \mem[5][7]_i_1__0_n_0 ;
  wire \mem[6][7]_i_1__0_n_0 ;
  wire \mem[7][7]_i_1__0_n_0 ;
  wire \mem[8][7]_i_1__0_n_0 ;
  wire \mem[9][7]_i_1__0_n_0 ;
  wire \mem_reg_n_0_[0][0] ;
  wire \mem_reg_n_0_[0][1] ;
  wire \mem_reg_n_0_[0][2] ;
  wire \mem_reg_n_0_[0][3] ;
  wire \mem_reg_n_0_[0][4] ;
  wire \mem_reg_n_0_[0][5] ;
  wire \mem_reg_n_0_[0][6] ;
  wire \mem_reg_n_0_[0][7] ;
  wire \mem_reg_n_0_[10][0] ;
  wire \mem_reg_n_0_[10][1] ;
  wire \mem_reg_n_0_[10][2] ;
  wire \mem_reg_n_0_[10][3] ;
  wire \mem_reg_n_0_[10][4] ;
  wire \mem_reg_n_0_[10][5] ;
  wire \mem_reg_n_0_[10][6] ;
  wire \mem_reg_n_0_[10][7] ;
  wire \mem_reg_n_0_[11][0] ;
  wire \mem_reg_n_0_[11][1] ;
  wire \mem_reg_n_0_[11][2] ;
  wire \mem_reg_n_0_[11][3] ;
  wire \mem_reg_n_0_[11][4] ;
  wire \mem_reg_n_0_[11][5] ;
  wire \mem_reg_n_0_[11][6] ;
  wire \mem_reg_n_0_[11][7] ;
  wire \mem_reg_n_0_[12][0] ;
  wire \mem_reg_n_0_[12][1] ;
  wire \mem_reg_n_0_[12][2] ;
  wire \mem_reg_n_0_[12][3] ;
  wire \mem_reg_n_0_[12][4] ;
  wire \mem_reg_n_0_[12][5] ;
  wire \mem_reg_n_0_[12][6] ;
  wire \mem_reg_n_0_[12][7] ;
  wire \mem_reg_n_0_[13][0] ;
  wire \mem_reg_n_0_[13][1] ;
  wire \mem_reg_n_0_[13][2] ;
  wire \mem_reg_n_0_[13][3] ;
  wire \mem_reg_n_0_[13][4] ;
  wire \mem_reg_n_0_[13][5] ;
  wire \mem_reg_n_0_[13][6] ;
  wire \mem_reg_n_0_[13][7] ;
  wire \mem_reg_n_0_[14][0] ;
  wire \mem_reg_n_0_[14][1] ;
  wire \mem_reg_n_0_[14][2] ;
  wire \mem_reg_n_0_[14][3] ;
  wire \mem_reg_n_0_[14][4] ;
  wire \mem_reg_n_0_[14][5] ;
  wire \mem_reg_n_0_[14][6] ;
  wire \mem_reg_n_0_[14][7] ;
  wire \mem_reg_n_0_[15][0] ;
  wire \mem_reg_n_0_[15][1] ;
  wire \mem_reg_n_0_[15][2] ;
  wire \mem_reg_n_0_[15][3] ;
  wire \mem_reg_n_0_[15][4] ;
  wire \mem_reg_n_0_[15][5] ;
  wire \mem_reg_n_0_[15][6] ;
  wire \mem_reg_n_0_[15][7] ;
  wire \mem_reg_n_0_[1][0] ;
  wire \mem_reg_n_0_[1][1] ;
  wire \mem_reg_n_0_[1][2] ;
  wire \mem_reg_n_0_[1][3] ;
  wire \mem_reg_n_0_[1][4] ;
  wire \mem_reg_n_0_[1][5] ;
  wire \mem_reg_n_0_[1][6] ;
  wire \mem_reg_n_0_[1][7] ;
  wire \mem_reg_n_0_[2][0] ;
  wire \mem_reg_n_0_[2][1] ;
  wire \mem_reg_n_0_[2][2] ;
  wire \mem_reg_n_0_[2][3] ;
  wire \mem_reg_n_0_[2][4] ;
  wire \mem_reg_n_0_[2][5] ;
  wire \mem_reg_n_0_[2][6] ;
  wire \mem_reg_n_0_[2][7] ;
  wire \mem_reg_n_0_[3][0] ;
  wire \mem_reg_n_0_[3][1] ;
  wire \mem_reg_n_0_[3][2] ;
  wire \mem_reg_n_0_[3][3] ;
  wire \mem_reg_n_0_[3][4] ;
  wire \mem_reg_n_0_[3][5] ;
  wire \mem_reg_n_0_[3][6] ;
  wire \mem_reg_n_0_[3][7] ;
  wire \mem_reg_n_0_[4][0] ;
  wire \mem_reg_n_0_[4][1] ;
  wire \mem_reg_n_0_[4][2] ;
  wire \mem_reg_n_0_[4][3] ;
  wire \mem_reg_n_0_[4][4] ;
  wire \mem_reg_n_0_[4][5] ;
  wire \mem_reg_n_0_[4][6] ;
  wire \mem_reg_n_0_[4][7] ;
  wire \mem_reg_n_0_[5][0] ;
  wire \mem_reg_n_0_[5][1] ;
  wire \mem_reg_n_0_[5][2] ;
  wire \mem_reg_n_0_[5][3] ;
  wire \mem_reg_n_0_[5][4] ;
  wire \mem_reg_n_0_[5][5] ;
  wire \mem_reg_n_0_[5][6] ;
  wire \mem_reg_n_0_[5][7] ;
  wire \mem_reg_n_0_[6][0] ;
  wire \mem_reg_n_0_[6][1] ;
  wire \mem_reg_n_0_[6][2] ;
  wire \mem_reg_n_0_[6][3] ;
  wire \mem_reg_n_0_[6][4] ;
  wire \mem_reg_n_0_[6][5] ;
  wire \mem_reg_n_0_[6][6] ;
  wire \mem_reg_n_0_[6][7] ;
  wire \mem_reg_n_0_[7][0] ;
  wire \mem_reg_n_0_[7][1] ;
  wire \mem_reg_n_0_[7][2] ;
  wire \mem_reg_n_0_[7][3] ;
  wire \mem_reg_n_0_[7][4] ;
  wire \mem_reg_n_0_[7][5] ;
  wire \mem_reg_n_0_[7][6] ;
  wire \mem_reg_n_0_[7][7] ;
  wire \mem_reg_n_0_[8][0] ;
  wire \mem_reg_n_0_[8][1] ;
  wire \mem_reg_n_0_[8][2] ;
  wire \mem_reg_n_0_[8][3] ;
  wire \mem_reg_n_0_[8][4] ;
  wire \mem_reg_n_0_[8][5] ;
  wire \mem_reg_n_0_[8][6] ;
  wire \mem_reg_n_0_[8][7] ;
  wire \mem_reg_n_0_[9][0] ;
  wire \mem_reg_n_0_[9][1] ;
  wire \mem_reg_n_0_[9][2] ;
  wire \mem_reg_n_0_[9][3] ;
  wire \mem_reg_n_0_[9][4] ;
  wire \mem_reg_n_0_[9][5] ;
  wire \mem_reg_n_0_[9][6] ;
  wire \mem_reg_n_0_[9][7] ;
  wire [3:0]p_0_in;
  wire [3:1]p_0_in__1;
  wire rd_ptr1;
  wire [3:0]rd_ptr_reg__0;
  wire \rx_status_reg[0] ;
  wire wr_ptr1;
  wire \wr_ptr[0]_i_1_n_0 ;
  wire [3:0]wr_ptr_reg__0;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PRDATA[0]_i_1 
       (.I0(\PRDATA_reg[0]_i_2_n_0 ),
        .I1(rd_ptr_reg__0[3]),
        .I2(\PRDATA_reg[0]_i_3_n_0 ),
        .I3(PADDR[2]),
        .I4(\rx_status_reg[0] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[0]_i_4 
       (.I0(\mem_reg_n_0_[11][0] ),
        .I1(\mem_reg_n_0_[10][0] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[9][0] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[8][0] ),
        .O(\PRDATA[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[0]_i_5 
       (.I0(\mem_reg_n_0_[15][0] ),
        .I1(\mem_reg_n_0_[14][0] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[13][0] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[12][0] ),
        .O(\PRDATA[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[0]_i_6 
       (.I0(\mem_reg_n_0_[3][0] ),
        .I1(\mem_reg_n_0_[2][0] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[1][0] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[0][0] ),
        .O(\PRDATA[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[0]_i_7 
       (.I0(\mem_reg_n_0_[7][0] ),
        .I1(\mem_reg_n_0_[6][0] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[5][0] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[4][0] ),
        .O(\PRDATA[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \PRDATA[1]_i_1 
       (.I0(\PRDATA_reg[1]_i_2_n_0 ),
        .I1(rd_ptr_reg__0[3]),
        .I2(\PRDATA[1]_i_3_n_0 ),
        .I3(rd_ptr_reg__0[2]),
        .I4(\PRDATA[1]_i_4_n_0 ),
        .I5(PADDR[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[1]_i_3 
       (.I0(\mem_reg_n_0_[11][1] ),
        .I1(\mem_reg_n_0_[10][1] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[9][1] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[8][1] ),
        .O(\PRDATA[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[1]_i_4 
       (.I0(\mem_reg_n_0_[15][1] ),
        .I1(\mem_reg_n_0_[14][1] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[13][1] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[12][1] ),
        .O(\PRDATA[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[1]_i_5 
       (.I0(\mem_reg_n_0_[3][1] ),
        .I1(\mem_reg_n_0_[2][1] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[1][1] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[0][1] ),
        .O(\PRDATA[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[1]_i_6 
       (.I0(\mem_reg_n_0_[7][1] ),
        .I1(\mem_reg_n_0_[6][1] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[5][1] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[4][1] ),
        .O(\PRDATA[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \PRDATA[2]_i_1 
       (.I0(\PRDATA_reg[2]_i_2_n_0 ),
        .I1(rd_ptr_reg__0[3]),
        .I2(\PRDATA[2]_i_3_n_0 ),
        .I3(rd_ptr_reg__0[2]),
        .I4(\PRDATA[2]_i_4_n_0 ),
        .I5(PADDR[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[2]_i_3 
       (.I0(\mem_reg_n_0_[11][2] ),
        .I1(\mem_reg_n_0_[10][2] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[9][2] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[8][2] ),
        .O(\PRDATA[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[2]_i_4 
       (.I0(\mem_reg_n_0_[15][2] ),
        .I1(\mem_reg_n_0_[14][2] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[13][2] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[12][2] ),
        .O(\PRDATA[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[2]_i_5 
       (.I0(\mem_reg_n_0_[3][2] ),
        .I1(\mem_reg_n_0_[2][2] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[1][2] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[0][2] ),
        .O(\PRDATA[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[2]_i_6 
       (.I0(\mem_reg_n_0_[7][2] ),
        .I1(\mem_reg_n_0_[6][2] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[5][2] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[4][2] ),
        .O(\PRDATA[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \PRDATA[3]_i_1 
       (.I0(\PRDATA_reg[3]_i_2_n_0 ),
        .I1(rd_ptr_reg__0[3]),
        .I2(\PRDATA[3]_i_3_n_0 ),
        .I3(rd_ptr_reg__0[2]),
        .I4(\PRDATA[3]_i_4_n_0 ),
        .I5(PADDR[2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[3]_i_3 
       (.I0(\mem_reg_n_0_[11][3] ),
        .I1(\mem_reg_n_0_[10][3] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[9][3] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[8][3] ),
        .O(\PRDATA[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[3]_i_4 
       (.I0(\mem_reg_n_0_[15][3] ),
        .I1(\mem_reg_n_0_[14][3] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[13][3] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[12][3] ),
        .O(\PRDATA[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[3]_i_5 
       (.I0(\mem_reg_n_0_[3][3] ),
        .I1(\mem_reg_n_0_[2][3] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[1][3] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[0][3] ),
        .O(\PRDATA[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[3]_i_6 
       (.I0(\mem_reg_n_0_[7][3] ),
        .I1(\mem_reg_n_0_[6][3] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[5][3] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[4][3] ),
        .O(\PRDATA[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \PRDATA[4]_i_1 
       (.I0(\PRDATA_reg[4]_i_2_n_0 ),
        .I1(rd_ptr_reg__0[3]),
        .I2(\PRDATA[4]_i_3_n_0 ),
        .I3(rd_ptr_reg__0[2]),
        .I4(\PRDATA[4]_i_4_n_0 ),
        .I5(PADDR[2]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[4]_i_3 
       (.I0(\mem_reg_n_0_[11][4] ),
        .I1(\mem_reg_n_0_[10][4] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[9][4] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[8][4] ),
        .O(\PRDATA[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[4]_i_4 
       (.I0(\mem_reg_n_0_[15][4] ),
        .I1(\mem_reg_n_0_[14][4] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[13][4] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[12][4] ),
        .O(\PRDATA[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[4]_i_5 
       (.I0(\mem_reg_n_0_[3][4] ),
        .I1(\mem_reg_n_0_[2][4] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[1][4] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[0][4] ),
        .O(\PRDATA[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[4]_i_6 
       (.I0(\mem_reg_n_0_[7][4] ),
        .I1(\mem_reg_n_0_[6][4] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[5][4] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[4][4] ),
        .O(\PRDATA[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \PRDATA[5]_i_1 
       (.I0(\PRDATA_reg[5]_i_2_n_0 ),
        .I1(rd_ptr_reg__0[3]),
        .I2(\PRDATA[5]_i_3_n_0 ),
        .I3(rd_ptr_reg__0[2]),
        .I4(\PRDATA[5]_i_4_n_0 ),
        .I5(PADDR[2]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[5]_i_3 
       (.I0(\mem_reg_n_0_[11][5] ),
        .I1(\mem_reg_n_0_[10][5] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[9][5] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[8][5] ),
        .O(\PRDATA[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[5]_i_4 
       (.I0(\mem_reg_n_0_[15][5] ),
        .I1(\mem_reg_n_0_[14][5] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[13][5] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[12][5] ),
        .O(\PRDATA[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[5]_i_5 
       (.I0(\mem_reg_n_0_[3][5] ),
        .I1(\mem_reg_n_0_[2][5] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[1][5] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[0][5] ),
        .O(\PRDATA[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[5]_i_6 
       (.I0(\mem_reg_n_0_[7][5] ),
        .I1(\mem_reg_n_0_[6][5] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[5][5] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[4][5] ),
        .O(\PRDATA[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \PRDATA[6]_i_1 
       (.I0(\PRDATA_reg[6]_i_2_n_0 ),
        .I1(rd_ptr_reg__0[3]),
        .I2(\PRDATA[6]_i_3_n_0 ),
        .I3(rd_ptr_reg__0[2]),
        .I4(\PRDATA[6]_i_4_n_0 ),
        .I5(PADDR[2]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[6]_i_3 
       (.I0(\mem_reg_n_0_[11][6] ),
        .I1(\mem_reg_n_0_[10][6] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[9][6] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[8][6] ),
        .O(\PRDATA[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[6]_i_4 
       (.I0(\mem_reg_n_0_[15][6] ),
        .I1(\mem_reg_n_0_[14][6] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[13][6] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[12][6] ),
        .O(\PRDATA[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[6]_i_5 
       (.I0(\mem_reg_n_0_[3][6] ),
        .I1(\mem_reg_n_0_[2][6] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[1][6] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[0][6] ),
        .O(\PRDATA[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[6]_i_6 
       (.I0(\mem_reg_n_0_[7][6] ),
        .I1(\mem_reg_n_0_[6][6] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[5][6] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[4][6] ),
        .O(\PRDATA[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000400004004000)) 
    \PRDATA[7]_i_1 
       (.I0(PWRITE),
        .I1(PENABLE_0),
        .I2(PADDR[1]),
        .I3(PADDR[0]),
        .I4(PADDR[2]),
        .I5(\PRDATA[7]_i_5_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[7]_i_10 
       (.I0(\mem_reg_n_0_[7][7] ),
        .I1(\mem_reg_n_0_[6][7] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[5][7] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[4][7] ),
        .O(\PRDATA[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \PRDATA[7]_i_2 
       (.I0(\PRDATA_reg[7]_i_6_n_0 ),
        .I1(rd_ptr_reg__0[3]),
        .I2(\PRDATA[7]_i_7_n_0 ),
        .I3(rd_ptr_reg__0[2]),
        .I4(\PRDATA[7]_i_8_n_0 ),
        .I5(PADDR[2]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \PRDATA[7]_i_5 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[2]),
        .O(\PRDATA[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[7]_i_7 
       (.I0(\mem_reg_n_0_[11][7] ),
        .I1(\mem_reg_n_0_[10][7] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[9][7] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[8][7] ),
        .O(\PRDATA[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[7]_i_8 
       (.I0(\mem_reg_n_0_[15][7] ),
        .I1(\mem_reg_n_0_[14][7] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[13][7] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[12][7] ),
        .O(\PRDATA[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[7]_i_9 
       (.I0(\mem_reg_n_0_[3][7] ),
        .I1(\mem_reg_n_0_[2][7] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[1][7] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[0][7] ),
        .O(\PRDATA[7]_i_9_n_0 ));
  MUXF7 \PRDATA_reg[0]_i_2 
       (.I0(\PRDATA[0]_i_4_n_0 ),
        .I1(\PRDATA[0]_i_5_n_0 ),
        .O(\PRDATA_reg[0]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \PRDATA_reg[0]_i_3 
       (.I0(\PRDATA[0]_i_6_n_0 ),
        .I1(\PRDATA[0]_i_7_n_0 ),
        .O(\PRDATA_reg[0]_i_3_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \PRDATA_reg[1]_i_2 
       (.I0(\PRDATA[1]_i_5_n_0 ),
        .I1(\PRDATA[1]_i_6_n_0 ),
        .O(\PRDATA_reg[1]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \PRDATA_reg[2]_i_2 
       (.I0(\PRDATA[2]_i_5_n_0 ),
        .I1(\PRDATA[2]_i_6_n_0 ),
        .O(\PRDATA_reg[2]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \PRDATA_reg[3]_i_2 
       (.I0(\PRDATA[3]_i_5_n_0 ),
        .I1(\PRDATA[3]_i_6_n_0 ),
        .O(\PRDATA_reg[3]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \PRDATA_reg[4]_i_2 
       (.I0(\PRDATA[4]_i_5_n_0 ),
        .I1(\PRDATA[4]_i_6_n_0 ),
        .O(\PRDATA_reg[4]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \PRDATA_reg[5]_i_2 
       (.I0(\PRDATA[5]_i_5_n_0 ),
        .I1(\PRDATA[5]_i_6_n_0 ),
        .O(\PRDATA_reg[5]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \PRDATA_reg[6]_i_2 
       (.I0(\PRDATA[6]_i_5_n_0 ),
        .I1(\PRDATA[6]_i_6_n_0 ),
        .O(\PRDATA_reg[6]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \PRDATA_reg[7]_i_6 
       (.I0(\PRDATA[7]_i_9_n_0 ),
        .I1(\PRDATA[7]_i_10_n_0 ),
        .O(\PRDATA_reg[7]_i_6_n_0 ),
        .S(rd_ptr_reg__0[2]));
  LUT6 #(
    .INIT(64'h4440FFFF44400000)) 
    apb_txff_wr_i_1
       (.I0(PENABLE),
        .I1(PSEL),
        .I2(\PRDATA[7]_i_5_n_0 ),
        .I3(PWRITE),
        .I4(\counter_reg[0]_0 ),
        .I5(apb_txff_wr),
        .O(apb_txff_wr_reg));
  LUT4 #(
    .INIT(16'h0040)) 
    apb_txff_wr_i_4
       (.I0(PADDR[1]),
        .I1(PADDR[0]),
        .I2(PADDR[2]),
        .I3(\PRDATA[7]_i_5_n_0 ),
        .O(apb_rxff_rd_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter_reg__0[0]),
        .O(\counter[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4444BBBBBBBB4440)) 
    \counter[1]_i_1 
       (.I0(wr_ptr1),
        .I1(apb_rxff_rd),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[0]),
        .I5(counter_reg__0[1]),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4B4BF0F0F0F0B4B0)) 
    \counter[2]_i_1__0 
       (.I0(wr_ptr1),
        .I1(apb_rxff_rd),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[1]),
        .I5(counter_reg__0[0]),
        .O(\counter[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666666662)) 
    \counter[3]_i_1__0 
       (.I0(wr_ptr1),
        .I1(apb_rxff_rd),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[1]),
        .I5(counter_reg__0[0]),
        .O(\counter[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h78F078F0F0E078F0)) 
    \counter[3]_i_2__0 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[2]),
        .I4(apb_rxff_rd),
        .I5(wr_ptr1),
        .O(\counter[3]_i_2__0_n_0 ));
  FDCE \counter_reg[0] 
       (.C(PCLK),
        .CE(\counter[3]_i_1__0_n_0 ),
        .CLR(PRESETn_0),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(counter_reg__0[0]));
  FDCE \counter_reg[1] 
       (.C(PCLK),
        .CE(\counter[3]_i_1__0_n_0 ),
        .CLR(PRESETn_0),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter_reg__0[1]));
  FDCE \counter_reg[2] 
       (.C(PCLK),
        .CE(\counter[3]_i_1__0_n_0 ),
        .CLR(PRESETn_0),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(counter_reg__0[2]));
  FDCE \counter_reg[3] 
       (.C(PCLK),
        .CE(\counter[3]_i_1__0_n_0 ),
        .CLR(PRESETn_0),
        .D(\counter[3]_i_2__0_n_0 ),
        .Q(counter_reg__0[3]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \mem[0][7]_i_1__0 
       (.I0(wr_ptr_reg__0[1]),
        .I1(PRESETn),
        .I2(wr_ptr1),
        .I3(wr_ptr_reg__0[0]),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[0][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \mem[10][7]_i_1__0 
       (.I0(wr_ptr_reg__0[0]),
        .I1(wr_ptr_reg__0[1]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[10][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \mem[11][7]_i_1__0 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[11][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \mem[12][7]_i_1__0 
       (.I0(wr_ptr_reg__0[3]),
        .I1(wr_ptr_reg__0[2]),
        .I2(wr_ptr_reg__0[1]),
        .I3(PRESETn),
        .I4(wr_ptr1),
        .I5(wr_ptr_reg__0[0]),
        .O(\mem[12][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \mem[13][7]_i_1__0 
       (.I0(wr_ptr_reg__0[3]),
        .I1(wr_ptr_reg__0[2]),
        .I2(wr_ptr_reg__0[1]),
        .I3(PRESETn),
        .I4(wr_ptr1),
        .I5(wr_ptr_reg__0[0]),
        .O(\mem[13][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \mem[14][7]_i_1__0 
       (.I0(wr_ptr_reg__0[3]),
        .I1(wr_ptr_reg__0[2]),
        .I2(wr_ptr_reg__0[0]),
        .I3(wr_ptr_reg__0[1]),
        .I4(wr_ptr1),
        .I5(PRESETn),
        .O(\mem[14][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \mem[15][7]_i_1__0 
       (.I0(wr_ptr_reg__0[3]),
        .I1(wr_ptr_reg__0[2]),
        .I2(wr_ptr_reg__0[1]),
        .I3(wr_ptr_reg__0[0]),
        .I4(wr_ptr1),
        .I5(PRESETn),
        .O(\mem[15][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \mem[1][7]_i_1__0 
       (.I0(wr_ptr_reg__0[1]),
        .I1(PRESETn),
        .I2(wr_ptr1),
        .I3(wr_ptr_reg__0[0]),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[1][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \mem[2][7]_i_1__0 
       (.I0(wr_ptr_reg__0[0]),
        .I1(wr_ptr_reg__0[1]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[2][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \mem[3][7]_i_1__0 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[3][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \mem[4][7]_i_1__0 
       (.I0(wr_ptr_reg__0[1]),
        .I1(PRESETn),
        .I2(wr_ptr1),
        .I3(wr_ptr_reg__0[0]),
        .I4(wr_ptr_reg__0[2]),
        .I5(wr_ptr_reg__0[3]),
        .O(\mem[4][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \mem[5][7]_i_1__0 
       (.I0(wr_ptr_reg__0[1]),
        .I1(PRESETn),
        .I2(wr_ptr1),
        .I3(wr_ptr_reg__0[0]),
        .I4(wr_ptr_reg__0[2]),
        .I5(wr_ptr_reg__0[3]),
        .O(\mem[5][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \mem[6][7]_i_1__0 
       (.I0(wr_ptr_reg__0[0]),
        .I1(wr_ptr_reg__0[1]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[2]),
        .I5(wr_ptr_reg__0[3]),
        .O(\mem[6][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \mem[7][7]_i_1__0 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[2]),
        .I5(wr_ptr_reg__0[3]),
        .O(\mem[7][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \mem[8][7]_i_1__0 
       (.I0(wr_ptr_reg__0[1]),
        .I1(PRESETn),
        .I2(wr_ptr1),
        .I3(wr_ptr_reg__0[0]),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[8][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \mem[9][7]_i_1__0 
       (.I0(wr_ptr_reg__0[1]),
        .I1(PRESETn),
        .I2(wr_ptr1),
        .I3(wr_ptr_reg__0[0]),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[9][7]_i_1__0_n_0 ));
  FDRE \mem_reg[0][0] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \mem_reg[0][1] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \mem_reg[0][2] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \mem_reg[0][3] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \mem_reg[0][4] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \mem_reg[0][5] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \mem_reg[0][6] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \mem_reg[0][7] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \mem_reg[10][0] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[10][0] ),
        .R(1'b0));
  FDRE \mem_reg[10][1] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[10][1] ),
        .R(1'b0));
  FDRE \mem_reg[10][2] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[10][2] ),
        .R(1'b0));
  FDRE \mem_reg[10][3] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[10][3] ),
        .R(1'b0));
  FDRE \mem_reg[10][4] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[10][4] ),
        .R(1'b0));
  FDRE \mem_reg[10][5] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[10][5] ),
        .R(1'b0));
  FDRE \mem_reg[10][6] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[10][6] ),
        .R(1'b0));
  FDRE \mem_reg[10][7] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[10][7] ),
        .R(1'b0));
  FDRE \mem_reg[11][0] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[11][0] ),
        .R(1'b0));
  FDRE \mem_reg[11][1] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[11][1] ),
        .R(1'b0));
  FDRE \mem_reg[11][2] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[11][2] ),
        .R(1'b0));
  FDRE \mem_reg[11][3] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[11][3] ),
        .R(1'b0));
  FDRE \mem_reg[11][4] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[11][4] ),
        .R(1'b0));
  FDRE \mem_reg[11][5] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[11][5] ),
        .R(1'b0));
  FDRE \mem_reg[11][6] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[11][6] ),
        .R(1'b0));
  FDRE \mem_reg[11][7] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[11][7] ),
        .R(1'b0));
  FDRE \mem_reg[12][0] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[12][0] ),
        .R(1'b0));
  FDRE \mem_reg[12][1] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[12][1] ),
        .R(1'b0));
  FDRE \mem_reg[12][2] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[12][2] ),
        .R(1'b0));
  FDRE \mem_reg[12][3] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[12][3] ),
        .R(1'b0));
  FDRE \mem_reg[12][4] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[12][4] ),
        .R(1'b0));
  FDRE \mem_reg[12][5] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[12][5] ),
        .R(1'b0));
  FDRE \mem_reg[12][6] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[12][6] ),
        .R(1'b0));
  FDRE \mem_reg[12][7] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[12][7] ),
        .R(1'b0));
  FDRE \mem_reg[13][0] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[13][0] ),
        .R(1'b0));
  FDRE \mem_reg[13][1] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[13][1] ),
        .R(1'b0));
  FDRE \mem_reg[13][2] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[13][2] ),
        .R(1'b0));
  FDRE \mem_reg[13][3] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[13][3] ),
        .R(1'b0));
  FDRE \mem_reg[13][4] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[13][4] ),
        .R(1'b0));
  FDRE \mem_reg[13][5] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[13][5] ),
        .R(1'b0));
  FDRE \mem_reg[13][6] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[13][6] ),
        .R(1'b0));
  FDRE \mem_reg[13][7] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[13][7] ),
        .R(1'b0));
  FDRE \mem_reg[14][0] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[14][0] ),
        .R(1'b0));
  FDRE \mem_reg[14][1] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[14][1] ),
        .R(1'b0));
  FDRE \mem_reg[14][2] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[14][2] ),
        .R(1'b0));
  FDRE \mem_reg[14][3] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[14][3] ),
        .R(1'b0));
  FDRE \mem_reg[14][4] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[14][4] ),
        .R(1'b0));
  FDRE \mem_reg[14][5] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[14][5] ),
        .R(1'b0));
  FDRE \mem_reg[14][6] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[14][6] ),
        .R(1'b0));
  FDRE \mem_reg[14][7] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[14][7] ),
        .R(1'b0));
  FDRE \mem_reg[15][0] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[15][0] ),
        .R(1'b0));
  FDRE \mem_reg[15][1] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[15][1] ),
        .R(1'b0));
  FDRE \mem_reg[15][2] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[15][2] ),
        .R(1'b0));
  FDRE \mem_reg[15][3] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[15][3] ),
        .R(1'b0));
  FDRE \mem_reg[15][4] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[15][4] ),
        .R(1'b0));
  FDRE \mem_reg[15][5] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[15][5] ),
        .R(1'b0));
  FDRE \mem_reg[15][6] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[15][6] ),
        .R(1'b0));
  FDRE \mem_reg[15][7] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[15][7] ),
        .R(1'b0));
  FDRE \mem_reg[1][0] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \mem_reg[1][1] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \mem_reg[1][2] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \mem_reg[1][3] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \mem_reg[1][4] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \mem_reg[1][5] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \mem_reg[1][6] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \mem_reg[1][7] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \mem_reg[2][0] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE \mem_reg[2][1] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[2][1] ),
        .R(1'b0));
  FDRE \mem_reg[2][2] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[2][2] ),
        .R(1'b0));
  FDRE \mem_reg[2][3] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[2][3] ),
        .R(1'b0));
  FDRE \mem_reg[2][4] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[2][4] ),
        .R(1'b0));
  FDRE \mem_reg[2][5] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[2][5] ),
        .R(1'b0));
  FDRE \mem_reg[2][6] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[2][6] ),
        .R(1'b0));
  FDRE \mem_reg[2][7] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[2][7] ),
        .R(1'b0));
  FDRE \mem_reg[3][0] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[3][0] ),
        .R(1'b0));
  FDRE \mem_reg[3][1] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[3][1] ),
        .R(1'b0));
  FDRE \mem_reg[3][2] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[3][2] ),
        .R(1'b0));
  FDRE \mem_reg[3][3] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[3][3] ),
        .R(1'b0));
  FDRE \mem_reg[3][4] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[3][4] ),
        .R(1'b0));
  FDRE \mem_reg[3][5] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[3][5] ),
        .R(1'b0));
  FDRE \mem_reg[3][6] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[3][6] ),
        .R(1'b0));
  FDRE \mem_reg[3][7] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[3][7] ),
        .R(1'b0));
  FDRE \mem_reg[4][0] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[4][0] ),
        .R(1'b0));
  FDRE \mem_reg[4][1] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[4][1] ),
        .R(1'b0));
  FDRE \mem_reg[4][2] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[4][2] ),
        .R(1'b0));
  FDRE \mem_reg[4][3] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[4][3] ),
        .R(1'b0));
  FDRE \mem_reg[4][4] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[4][4] ),
        .R(1'b0));
  FDRE \mem_reg[4][5] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[4][5] ),
        .R(1'b0));
  FDRE \mem_reg[4][6] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[4][6] ),
        .R(1'b0));
  FDRE \mem_reg[4][7] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[4][7] ),
        .R(1'b0));
  FDRE \mem_reg[5][0] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[5][0] ),
        .R(1'b0));
  FDRE \mem_reg[5][1] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[5][1] ),
        .R(1'b0));
  FDRE \mem_reg[5][2] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[5][2] ),
        .R(1'b0));
  FDRE \mem_reg[5][3] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[5][3] ),
        .R(1'b0));
  FDRE \mem_reg[5][4] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[5][4] ),
        .R(1'b0));
  FDRE \mem_reg[5][5] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[5][5] ),
        .R(1'b0));
  FDRE \mem_reg[5][6] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[5][6] ),
        .R(1'b0));
  FDRE \mem_reg[5][7] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[5][7] ),
        .R(1'b0));
  FDRE \mem_reg[6][0] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[6][0] ),
        .R(1'b0));
  FDRE \mem_reg[6][1] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[6][1] ),
        .R(1'b0));
  FDRE \mem_reg[6][2] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[6][2] ),
        .R(1'b0));
  FDRE \mem_reg[6][3] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[6][3] ),
        .R(1'b0));
  FDRE \mem_reg[6][4] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[6][4] ),
        .R(1'b0));
  FDRE \mem_reg[6][5] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[6][5] ),
        .R(1'b0));
  FDRE \mem_reg[6][6] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[6][6] ),
        .R(1'b0));
  FDRE \mem_reg[6][7] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[6][7] ),
        .R(1'b0));
  FDRE \mem_reg[7][0] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[7][0] ),
        .R(1'b0));
  FDRE \mem_reg[7][1] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[7][1] ),
        .R(1'b0));
  FDRE \mem_reg[7][2] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[7][2] ),
        .R(1'b0));
  FDRE \mem_reg[7][3] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[7][3] ),
        .R(1'b0));
  FDRE \mem_reg[7][4] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[7][4] ),
        .R(1'b0));
  FDRE \mem_reg[7][5] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[7][5] ),
        .R(1'b0));
  FDRE \mem_reg[7][6] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[7][6] ),
        .R(1'b0));
  FDRE \mem_reg[7][7] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[7][7] ),
        .R(1'b0));
  FDRE \mem_reg[8][0] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[8][0] ),
        .R(1'b0));
  FDRE \mem_reg[8][1] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[8][1] ),
        .R(1'b0));
  FDRE \mem_reg[8][2] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[8][2] ),
        .R(1'b0));
  FDRE \mem_reg[8][3] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[8][3] ),
        .R(1'b0));
  FDRE \mem_reg[8][4] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[8][4] ),
        .R(1'b0));
  FDRE \mem_reg[8][5] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[8][5] ),
        .R(1'b0));
  FDRE \mem_reg[8][6] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[8][6] ),
        .R(1'b0));
  FDRE \mem_reg[8][7] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[8][7] ),
        .R(1'b0));
  FDRE \mem_reg[9][0] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[9][0] ),
        .R(1'b0));
  FDRE \mem_reg[9][1] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[9][1] ),
        .R(1'b0));
  FDRE \mem_reg[9][2] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[9][2] ),
        .R(1'b0));
  FDRE \mem_reg[9][3] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[9][3] ),
        .R(1'b0));
  FDRE \mem_reg[9][4] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[9][4] ),
        .R(1'b0));
  FDRE \mem_reg[9][5] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[9][5] ),
        .R(1'b0));
  FDRE \mem_reg[9][6] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[9][6] ),
        .R(1'b0));
  FDRE \mem_reg[9][7] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[9][7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(rd_ptr_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr_reg__0[0]),
        .I1(rd_ptr_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_ptr[2]_i_1 
       (.I0(rd_ptr_reg__0[2]),
        .I1(rd_ptr_reg__0[1]),
        .I2(rd_ptr_reg__0[0]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \rd_ptr[3]_i_1 
       (.I0(apb_rxff_rd),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[0]),
        .O(rd_ptr1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_ptr[3]_i_2 
       (.I0(rd_ptr_reg__0[3]),
        .I1(rd_ptr_reg__0[2]),
        .I2(rd_ptr_reg__0[0]),
        .I3(rd_ptr_reg__0[1]),
        .O(p_0_in[3]));
  FDCE \rd_ptr_reg[0] 
       (.C(PCLK),
        .CE(rd_ptr1),
        .CLR(PRESETn_0),
        .D(p_0_in[0]),
        .Q(rd_ptr_reg__0[0]));
  FDCE \rd_ptr_reg[1] 
       (.C(PCLK),
        .CE(rd_ptr1),
        .CLR(PRESETn_0),
        .D(p_0_in[1]),
        .Q(rd_ptr_reg__0[1]));
  FDCE \rd_ptr_reg[2] 
       (.C(PCLK),
        .CE(rd_ptr1),
        .CLR(PRESETn_0),
        .D(p_0_in[2]),
        .Q(rd_ptr_reg__0[2]));
  FDCE \rd_ptr_reg[3] 
       (.C(PCLK),
        .CE(rd_ptr1),
        .CLR(PRESETn_0),
        .D(p_0_in[3]),
        .Q(rd_ptr_reg__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1 
       (.I0(wr_ptr_reg__0[0]),
        .O(\wr_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1__0 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_ptr[2]_i_1__0 
       (.I0(wr_ptr_reg__0[2]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr_reg__0[1]),
        .O(p_0_in__1[2]));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \wr_ptr[3]_i_1__0 
       (.I0(\Q_reg[0] ),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[0]),
        .O(wr_ptr1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_ptr[3]_i_2__0 
       (.I0(wr_ptr_reg__0[3]),
        .I1(wr_ptr_reg__0[1]),
        .I2(wr_ptr_reg__0[0]),
        .I3(wr_ptr_reg__0[2]),
        .O(p_0_in__1[3]));
  FDCE \wr_ptr_reg[0] 
       (.C(PCLK),
        .CE(wr_ptr1),
        .CLR(PRESETn_0),
        .D(\wr_ptr[0]_i_1_n_0 ),
        .Q(wr_ptr_reg__0[0]));
  FDCE \wr_ptr_reg[1] 
       (.C(PCLK),
        .CE(wr_ptr1),
        .CLR(PRESETn_0),
        .D(p_0_in__1[1]),
        .Q(wr_ptr_reg__0[1]));
  FDCE \wr_ptr_reg[2] 
       (.C(PCLK),
        .CE(wr_ptr1),
        .CLR(PRESETn_0),
        .D(p_0_in__1[2]),
        .Q(wr_ptr_reg__0[2]));
  FDCE \wr_ptr_reg[3] 
       (.C(PCLK),
        .CE(wr_ptr1),
        .CLR(PRESETn_0),
        .D(p_0_in__1[3]),
        .Q(wr_ptr_reg__0[3]));
endmodule

(* ORIG_REF_NAME = "fifo_generator" *) 
module design_1_top_core_i2c_0_0_fifo_generator_0
   (apb_rxff_rd_reg,
    \tx_apb_data_reg[7] ,
    \reg_data_in_reg[7] ,
    D,
    apb_rxff_rd_reg_0,
    apb_txff_wr,
    i_txff_rd,
    PENABLE,
    PSEL,
    PWRITE,
    \counter_reg[0]_0 ,
    PWRITE_0,
    PADDR,
    PRESETn,
    Q,
    sclk_reg,
    apb_rxff_rd,
    \tx_apb_data_reg[7]_0 ,
    PCLK,
    PRESETn_0);
  output apb_rxff_rd_reg;
  output [0:0]\tx_apb_data_reg[7] ;
  output \reg_data_in_reg[7] ;
  output [7:0]D;
  output apb_rxff_rd_reg_0;
  input apb_txff_wr;
  input i_txff_rd;
  input PENABLE;
  input PSEL;
  input PWRITE;
  input \counter_reg[0]_0 ;
  input PWRITE_0;
  input [2:0]PADDR;
  input PRESETn;
  input [1:0]Q;
  input sclk_reg;
  input apb_rxff_rd;
  input [7:0]\tx_apb_data_reg[7]_0 ;
  input PCLK;
  input PRESETn_0;

  wire [7:0]D;
  wire [2:0]PADDR;
  wire PCLK;
  wire PENABLE;
  wire PRESETn;
  wire PRESETn_0;
  wire PSEL;
  wire PWRITE;
  wire PWRITE_0;
  wire [1:0]Q;
  wire apb_rxff_rd;
  wire apb_rxff_rd_reg;
  wire apb_rxff_rd_reg_0;
  wire apb_txff_wr;
  wire apb_txff_wr_i_3_n_0;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1__0_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter_reg[0]_0 ;
  wire [3:0]counter_reg__0;
  wire i_txff_rd;
  wire \mem[0][7]_i_1_n_0 ;
  wire \mem[10][7]_i_1_n_0 ;
  wire \mem[11][7]_i_1_n_0 ;
  wire \mem[12][7]_i_1_n_0 ;
  wire \mem[13][7]_i_1_n_0 ;
  wire \mem[14][7]_i_1_n_0 ;
  wire \mem[15][7]_i_1_n_0 ;
  wire \mem[1][7]_i_1_n_0 ;
  wire \mem[2][7]_i_1_n_0 ;
  wire \mem[3][7]_i_1_n_0 ;
  wire \mem[4][7]_i_1_n_0 ;
  wire \mem[5][7]_i_1_n_0 ;
  wire \mem[6][7]_i_1_n_0 ;
  wire \mem[7][7]_i_1_n_0 ;
  wire \mem[8][7]_i_1_n_0 ;
  wire \mem[9][7]_i_1_n_0 ;
  wire [7:0]\mem_reg[0] ;
  wire [7:0]\mem_reg[10] ;
  wire [7:0]\mem_reg[11] ;
  wire [7:0]\mem_reg[12] ;
  wire [7:0]\mem_reg[13] ;
  wire [7:0]\mem_reg[14] ;
  wire [7:0]\mem_reg[15] ;
  wire [7:0]\mem_reg[1] ;
  wire [7:0]\mem_reg[2] ;
  wire [7:0]\mem_reg[3] ;
  wire [7:0]\mem_reg[4] ;
  wire [7:0]\mem_reg[5] ;
  wire [7:0]\mem_reg[6] ;
  wire [7:0]\mem_reg[7] ;
  wire [7:0]\mem_reg[8] ;
  wire [7:0]\mem_reg[9] ;
  wire [3:1]p_0_in__0;
  wire [3:0]p_0_in__2;
  wire [3:0]rd_ptr_reg__0;
  wire \reg_data_in[0]_i_4_n_0 ;
  wire \reg_data_in[0]_i_5_n_0 ;
  wire \reg_data_in[0]_i_6_n_0 ;
  wire \reg_data_in[0]_i_7_n_0 ;
  wire \reg_data_in[1]_i_4_n_0 ;
  wire \reg_data_in[1]_i_5_n_0 ;
  wire \reg_data_in[1]_i_6_n_0 ;
  wire \reg_data_in[1]_i_7_n_0 ;
  wire \reg_data_in[2]_i_4_n_0 ;
  wire \reg_data_in[2]_i_5_n_0 ;
  wire \reg_data_in[2]_i_6_n_0 ;
  wire \reg_data_in[2]_i_7_n_0 ;
  wire \reg_data_in[3]_i_4_n_0 ;
  wire \reg_data_in[3]_i_5_n_0 ;
  wire \reg_data_in[3]_i_6_n_0 ;
  wire \reg_data_in[3]_i_7_n_0 ;
  wire \reg_data_in[4]_i_4_n_0 ;
  wire \reg_data_in[4]_i_5_n_0 ;
  wire \reg_data_in[4]_i_6_n_0 ;
  wire \reg_data_in[4]_i_7_n_0 ;
  wire \reg_data_in[5]_i_4_n_0 ;
  wire \reg_data_in[5]_i_5_n_0 ;
  wire \reg_data_in[5]_i_6_n_0 ;
  wire \reg_data_in[5]_i_7_n_0 ;
  wire \reg_data_in[6]_i_4_n_0 ;
  wire \reg_data_in[6]_i_5_n_0 ;
  wire \reg_data_in[6]_i_6_n_0 ;
  wire \reg_data_in[6]_i_7_n_0 ;
  wire \reg_data_in[7]_i_10_n_0 ;
  wire \reg_data_in[7]_i_6_n_0 ;
  wire \reg_data_in[7]_i_7_n_0 ;
  wire \reg_data_in[7]_i_8_n_0 ;
  wire \reg_data_in[7]_i_9_n_0 ;
  wire \reg_data_in_reg[0]_i_2_n_0 ;
  wire \reg_data_in_reg[0]_i_3_n_0 ;
  wire \reg_data_in_reg[1]_i_2_n_0 ;
  wire \reg_data_in_reg[1]_i_3_n_0 ;
  wire \reg_data_in_reg[2]_i_2_n_0 ;
  wire \reg_data_in_reg[2]_i_3_n_0 ;
  wire \reg_data_in_reg[3]_i_2_n_0 ;
  wire \reg_data_in_reg[3]_i_3_n_0 ;
  wire \reg_data_in_reg[4]_i_2_n_0 ;
  wire \reg_data_in_reg[4]_i_3_n_0 ;
  wire \reg_data_in_reg[5]_i_2_n_0 ;
  wire \reg_data_in_reg[5]_i_3_n_0 ;
  wire \reg_data_in_reg[6]_i_2_n_0 ;
  wire \reg_data_in_reg[6]_i_3_n_0 ;
  wire \reg_data_in_reg[7] ;
  wire \reg_data_in_reg[7]_i_4_n_0 ;
  wire \reg_data_in_reg[7]_i_5_n_0 ;
  wire sclk_reg;
  wire \tx_apb_data[7]_i_3_n_0 ;
  wire [0:0]\tx_apb_data_reg[7] ;
  wire [7:0]\tx_apb_data_reg[7]_0 ;
  wire wr_ptr1;
  wire \wr_ptr[0]_i_1__0_n_0 ;
  wire [3:0]wr_ptr_reg__0;

  LUT6 #(
    .INIT(64'h4044FFFF40440000)) 
    apb_rxff_rd_i_1
       (.I0(PENABLE),
        .I1(PSEL),
        .I2(\tx_apb_data[7]_i_3_n_0 ),
        .I3(PWRITE),
        .I4(apb_rxff_rd_reg),
        .I5(apb_rxff_rd),
        .O(apb_rxff_rd_reg_0));
  LUT5 #(
    .INIT(32'hEFFFEFCF)) 
    apb_txff_wr_i_2
       (.I0(apb_txff_wr_i_3_n_0),
        .I1(PENABLE),
        .I2(PSEL),
        .I3(PWRITE),
        .I4(\counter_reg[0]_0 ),
        .O(apb_rxff_rd_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    apb_txff_wr_i_3
       (.I0(\tx_apb_data[7]_i_3_n_0 ),
        .I1(PADDR[1]),
        .I2(PADDR[0]),
        .I3(PADDR[2]),
        .O(apb_txff_wr_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg__0[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \counter[1]_i_1__0 
       (.I0(apb_txff_wr),
        .I1(i_txff_rd),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[1]),
        .O(\counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AA96A6A)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(apb_txff_wr),
        .I4(i_txff_rd),
        .O(\counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF7FFF0000)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[3]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[0]),
        .I4(apb_txff_wr),
        .I5(i_txff_rd),
        .O(\counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h66A6AAAAAAAAAA9A)) 
    \counter[3]_i_2 
       (.I0(counter_reg__0[3]),
        .I1(counter_reg__0[2]),
        .I2(i_txff_rd),
        .I3(apb_txff_wr),
        .I4(counter_reg__0[1]),
        .I5(counter_reg__0[0]),
        .O(\counter[3]_i_2_n_0 ));
  FDCE \counter_reg[0] 
       (.C(PCLK),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(PRESETn_0),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter_reg__0[0]));
  FDCE \counter_reg[1] 
       (.C(PCLK),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(PRESETn_0),
        .D(\counter[1]_i_1__0_n_0 ),
        .Q(counter_reg__0[1]));
  FDCE \counter_reg[2] 
       (.C(PCLK),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(PRESETn_0),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter_reg__0[2]));
  FDCE \counter_reg[3] 
       (.C(PCLK),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(PRESETn_0),
        .D(\counter[3]_i_2_n_0 ),
        .Q(counter_reg__0[3]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \mem[0][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \mem[10][7]_i_1 
       (.I0(wr_ptr_reg__0[0]),
        .I1(wr_ptr_reg__0[1]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[10][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \mem[11][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[11][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \mem[12][7]_i_1 
       (.I0(wr_ptr_reg__0[3]),
        .I1(wr_ptr_reg__0[2]),
        .I2(wr_ptr_reg__0[1]),
        .I3(wr_ptr_reg__0[0]),
        .I4(wr_ptr1),
        .I5(PRESETn),
        .O(\mem[12][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \mem[13][7]_i_1 
       (.I0(wr_ptr_reg__0[3]),
        .I1(wr_ptr_reg__0[2]),
        .I2(wr_ptr_reg__0[1]),
        .I3(wr_ptr_reg__0[0]),
        .I4(wr_ptr1),
        .I5(PRESETn),
        .O(\mem[13][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \mem[14][7]_i_1 
       (.I0(wr_ptr_reg__0[3]),
        .I1(wr_ptr_reg__0[2]),
        .I2(wr_ptr_reg__0[0]),
        .I3(wr_ptr_reg__0[1]),
        .I4(wr_ptr1),
        .I5(PRESETn),
        .O(\mem[14][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \mem[15][7]_i_1 
       (.I0(wr_ptr_reg__0[3]),
        .I1(wr_ptr_reg__0[2]),
        .I2(wr_ptr_reg__0[1]),
        .I3(wr_ptr_reg__0[0]),
        .I4(wr_ptr1),
        .I5(PRESETn),
        .O(\mem[15][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \mem[1][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \mem[2][7]_i_1 
       (.I0(wr_ptr_reg__0[0]),
        .I1(wr_ptr_reg__0[1]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \mem[3][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \mem[4][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[2]),
        .I5(wr_ptr_reg__0[3]),
        .O(\mem[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \mem[5][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[2]),
        .I5(wr_ptr_reg__0[3]),
        .O(\mem[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \mem[6][7]_i_1 
       (.I0(wr_ptr_reg__0[0]),
        .I1(wr_ptr_reg__0[1]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[2]),
        .I5(wr_ptr_reg__0[3]),
        .O(\mem[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \mem[7][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[2]),
        .I5(wr_ptr_reg__0[3]),
        .O(\mem[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \mem[8][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \mem[9][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr1),
        .I3(PRESETn),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[9][7]_i_1_n_0 ));
  FDRE \mem_reg[0][0] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[0] [0]),
        .R(1'b0));
  FDRE \mem_reg[0][1] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[0] [1]),
        .R(1'b0));
  FDRE \mem_reg[0][2] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[0] [2]),
        .R(1'b0));
  FDRE \mem_reg[0][3] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[0] [3]),
        .R(1'b0));
  FDRE \mem_reg[0][4] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[0] [4]),
        .R(1'b0));
  FDRE \mem_reg[0][5] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[0] [5]),
        .R(1'b0));
  FDRE \mem_reg[0][6] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[0] [6]),
        .R(1'b0));
  FDRE \mem_reg[0][7] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[0] [7]),
        .R(1'b0));
  FDRE \mem_reg[10][0] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[10] [0]),
        .R(1'b0));
  FDRE \mem_reg[10][1] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[10] [1]),
        .R(1'b0));
  FDRE \mem_reg[10][2] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[10] [2]),
        .R(1'b0));
  FDRE \mem_reg[10][3] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[10] [3]),
        .R(1'b0));
  FDRE \mem_reg[10][4] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[10] [4]),
        .R(1'b0));
  FDRE \mem_reg[10][5] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[10] [5]),
        .R(1'b0));
  FDRE \mem_reg[10][6] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[10] [6]),
        .R(1'b0));
  FDRE \mem_reg[10][7] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[10] [7]),
        .R(1'b0));
  FDRE \mem_reg[11][0] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[11] [0]),
        .R(1'b0));
  FDRE \mem_reg[11][1] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[11] [1]),
        .R(1'b0));
  FDRE \mem_reg[11][2] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[11] [2]),
        .R(1'b0));
  FDRE \mem_reg[11][3] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[11] [3]),
        .R(1'b0));
  FDRE \mem_reg[11][4] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[11] [4]),
        .R(1'b0));
  FDRE \mem_reg[11][5] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[11] [5]),
        .R(1'b0));
  FDRE \mem_reg[11][6] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[11] [6]),
        .R(1'b0));
  FDRE \mem_reg[11][7] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[11] [7]),
        .R(1'b0));
  FDRE \mem_reg[12][0] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[12] [0]),
        .R(1'b0));
  FDRE \mem_reg[12][1] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[12] [1]),
        .R(1'b0));
  FDRE \mem_reg[12][2] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[12] [2]),
        .R(1'b0));
  FDRE \mem_reg[12][3] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[12] [3]),
        .R(1'b0));
  FDRE \mem_reg[12][4] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[12] [4]),
        .R(1'b0));
  FDRE \mem_reg[12][5] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[12] [5]),
        .R(1'b0));
  FDRE \mem_reg[12][6] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[12] [6]),
        .R(1'b0));
  FDRE \mem_reg[12][7] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[12] [7]),
        .R(1'b0));
  FDRE \mem_reg[13][0] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[13] [0]),
        .R(1'b0));
  FDRE \mem_reg[13][1] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[13] [1]),
        .R(1'b0));
  FDRE \mem_reg[13][2] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[13] [2]),
        .R(1'b0));
  FDRE \mem_reg[13][3] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[13] [3]),
        .R(1'b0));
  FDRE \mem_reg[13][4] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[13] [4]),
        .R(1'b0));
  FDRE \mem_reg[13][5] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[13] [5]),
        .R(1'b0));
  FDRE \mem_reg[13][6] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[13] [6]),
        .R(1'b0));
  FDRE \mem_reg[13][7] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[13] [7]),
        .R(1'b0));
  FDRE \mem_reg[14][0] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[14] [0]),
        .R(1'b0));
  FDRE \mem_reg[14][1] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[14] [1]),
        .R(1'b0));
  FDRE \mem_reg[14][2] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[14] [2]),
        .R(1'b0));
  FDRE \mem_reg[14][3] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[14] [3]),
        .R(1'b0));
  FDRE \mem_reg[14][4] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[14] [4]),
        .R(1'b0));
  FDRE \mem_reg[14][5] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[14] [5]),
        .R(1'b0));
  FDRE \mem_reg[14][6] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[14] [6]),
        .R(1'b0));
  FDRE \mem_reg[14][7] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[14] [7]),
        .R(1'b0));
  FDRE \mem_reg[15][0] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[15] [0]),
        .R(1'b0));
  FDRE \mem_reg[15][1] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[15] [1]),
        .R(1'b0));
  FDRE \mem_reg[15][2] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[15] [2]),
        .R(1'b0));
  FDRE \mem_reg[15][3] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[15] [3]),
        .R(1'b0));
  FDRE \mem_reg[15][4] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[15] [4]),
        .R(1'b0));
  FDRE \mem_reg[15][5] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[15] [5]),
        .R(1'b0));
  FDRE \mem_reg[15][6] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[15] [6]),
        .R(1'b0));
  FDRE \mem_reg[15][7] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[15] [7]),
        .R(1'b0));
  FDRE \mem_reg[1][0] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[1] [0]),
        .R(1'b0));
  FDRE \mem_reg[1][1] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[1] [1]),
        .R(1'b0));
  FDRE \mem_reg[1][2] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[1] [2]),
        .R(1'b0));
  FDRE \mem_reg[1][3] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[1] [3]),
        .R(1'b0));
  FDRE \mem_reg[1][4] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[1] [4]),
        .R(1'b0));
  FDRE \mem_reg[1][5] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[1] [5]),
        .R(1'b0));
  FDRE \mem_reg[1][6] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[1] [6]),
        .R(1'b0));
  FDRE \mem_reg[1][7] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[1] [7]),
        .R(1'b0));
  FDRE \mem_reg[2][0] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[2] [0]),
        .R(1'b0));
  FDRE \mem_reg[2][1] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[2] [1]),
        .R(1'b0));
  FDRE \mem_reg[2][2] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[2] [2]),
        .R(1'b0));
  FDRE \mem_reg[2][3] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[2] [3]),
        .R(1'b0));
  FDRE \mem_reg[2][4] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[2] [4]),
        .R(1'b0));
  FDRE \mem_reg[2][5] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[2] [5]),
        .R(1'b0));
  FDRE \mem_reg[2][6] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[2] [6]),
        .R(1'b0));
  FDRE \mem_reg[2][7] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[2] [7]),
        .R(1'b0));
  FDRE \mem_reg[3][0] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[3] [0]),
        .R(1'b0));
  FDRE \mem_reg[3][1] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[3] [1]),
        .R(1'b0));
  FDRE \mem_reg[3][2] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[3] [2]),
        .R(1'b0));
  FDRE \mem_reg[3][3] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[3] [3]),
        .R(1'b0));
  FDRE \mem_reg[3][4] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[3] [4]),
        .R(1'b0));
  FDRE \mem_reg[3][5] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[3] [5]),
        .R(1'b0));
  FDRE \mem_reg[3][6] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[3] [6]),
        .R(1'b0));
  FDRE \mem_reg[3][7] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[3] [7]),
        .R(1'b0));
  FDRE \mem_reg[4][0] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[4] [0]),
        .R(1'b0));
  FDRE \mem_reg[4][1] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[4] [1]),
        .R(1'b0));
  FDRE \mem_reg[4][2] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[4] [2]),
        .R(1'b0));
  FDRE \mem_reg[4][3] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[4] [3]),
        .R(1'b0));
  FDRE \mem_reg[4][4] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[4] [4]),
        .R(1'b0));
  FDRE \mem_reg[4][5] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[4] [5]),
        .R(1'b0));
  FDRE \mem_reg[4][6] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[4] [6]),
        .R(1'b0));
  FDRE \mem_reg[4][7] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[4] [7]),
        .R(1'b0));
  FDRE \mem_reg[5][0] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[5] [0]),
        .R(1'b0));
  FDRE \mem_reg[5][1] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[5] [1]),
        .R(1'b0));
  FDRE \mem_reg[5][2] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[5] [2]),
        .R(1'b0));
  FDRE \mem_reg[5][3] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[5] [3]),
        .R(1'b0));
  FDRE \mem_reg[5][4] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[5] [4]),
        .R(1'b0));
  FDRE \mem_reg[5][5] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[5] [5]),
        .R(1'b0));
  FDRE \mem_reg[5][6] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[5] [6]),
        .R(1'b0));
  FDRE \mem_reg[5][7] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[5] [7]),
        .R(1'b0));
  FDRE \mem_reg[6][0] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[6] [0]),
        .R(1'b0));
  FDRE \mem_reg[6][1] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[6] [1]),
        .R(1'b0));
  FDRE \mem_reg[6][2] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[6] [2]),
        .R(1'b0));
  FDRE \mem_reg[6][3] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[6] [3]),
        .R(1'b0));
  FDRE \mem_reg[6][4] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[6] [4]),
        .R(1'b0));
  FDRE \mem_reg[6][5] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[6] [5]),
        .R(1'b0));
  FDRE \mem_reg[6][6] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[6] [6]),
        .R(1'b0));
  FDRE \mem_reg[6][7] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[6] [7]),
        .R(1'b0));
  FDRE \mem_reg[7][0] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[7] [0]),
        .R(1'b0));
  FDRE \mem_reg[7][1] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[7] [1]),
        .R(1'b0));
  FDRE \mem_reg[7][2] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[7] [2]),
        .R(1'b0));
  FDRE \mem_reg[7][3] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[7] [3]),
        .R(1'b0));
  FDRE \mem_reg[7][4] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[7] [4]),
        .R(1'b0));
  FDRE \mem_reg[7][5] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[7] [5]),
        .R(1'b0));
  FDRE \mem_reg[7][6] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[7] [6]),
        .R(1'b0));
  FDRE \mem_reg[7][7] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[7] [7]),
        .R(1'b0));
  FDRE \mem_reg[8][0] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[8] [0]),
        .R(1'b0));
  FDRE \mem_reg[8][1] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[8] [1]),
        .R(1'b0));
  FDRE \mem_reg[8][2] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[8] [2]),
        .R(1'b0));
  FDRE \mem_reg[8][3] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[8] [3]),
        .R(1'b0));
  FDRE \mem_reg[8][4] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[8] [4]),
        .R(1'b0));
  FDRE \mem_reg[8][5] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[8] [5]),
        .R(1'b0));
  FDRE \mem_reg[8][6] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[8] [6]),
        .R(1'b0));
  FDRE \mem_reg[8][7] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[8] [7]),
        .R(1'b0));
  FDRE \mem_reg[9][0] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [0]),
        .Q(\mem_reg[9] [0]),
        .R(1'b0));
  FDRE \mem_reg[9][1] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [1]),
        .Q(\mem_reg[9] [1]),
        .R(1'b0));
  FDRE \mem_reg[9][2] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [2]),
        .Q(\mem_reg[9] [2]),
        .R(1'b0));
  FDRE \mem_reg[9][3] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [3]),
        .Q(\mem_reg[9] [3]),
        .R(1'b0));
  FDRE \mem_reg[9][4] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [4]),
        .Q(\mem_reg[9] [4]),
        .R(1'b0));
  FDRE \mem_reg[9][5] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [5]),
        .Q(\mem_reg[9] [5]),
        .R(1'b0));
  FDRE \mem_reg[9][6] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [6]),
        .Q(\mem_reg[9] [6]),
        .R(1'b0));
  FDRE \mem_reg[9][7] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\tx_apb_data_reg[7]_0 [7]),
        .Q(\mem_reg[9] [7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1__0 
       (.I0(rd_ptr_reg__0[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1__0 
       (.I0(rd_ptr_reg__0[0]),
        .I1(rd_ptr_reg__0[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_ptr[2]_i_1__0 
       (.I0(rd_ptr_reg__0[2]),
        .I1(rd_ptr_reg__0[1]),
        .I2(rd_ptr_reg__0[0]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_ptr[3]_i_1__0 
       (.I0(rd_ptr_reg__0[3]),
        .I1(rd_ptr_reg__0[2]),
        .I2(rd_ptr_reg__0[0]),
        .I3(rd_ptr_reg__0[1]),
        .O(p_0_in__2[3]));
  FDCE \rd_ptr_reg[0] 
       (.C(PCLK),
        .CE(i_txff_rd),
        .CLR(PRESETn_0),
        .D(p_0_in__2[0]),
        .Q(rd_ptr_reg__0[0]));
  FDCE \rd_ptr_reg[1] 
       (.C(PCLK),
        .CE(i_txff_rd),
        .CLR(PRESETn_0),
        .D(p_0_in__2[1]),
        .Q(rd_ptr_reg__0[1]));
  FDCE \rd_ptr_reg[2] 
       (.C(PCLK),
        .CE(i_txff_rd),
        .CLR(PRESETn_0),
        .D(p_0_in__2[2]),
        .Q(rd_ptr_reg__0[2]));
  FDCE \rd_ptr_reg[3] 
       (.C(PCLK),
        .CE(i_txff_rd),
        .CLR(PRESETn_0),
        .D(p_0_in__2[3]),
        .Q(rd_ptr_reg__0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[0]_i_4 
       (.I0(\mem_reg[3] [0]),
        .I1(\mem_reg[2] [0]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[1] [0]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[0] [0]),
        .O(\reg_data_in[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[0]_i_5 
       (.I0(\mem_reg[7] [0]),
        .I1(\mem_reg[6] [0]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[5] [0]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[4] [0]),
        .O(\reg_data_in[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[0]_i_6 
       (.I0(\mem_reg[11] [0]),
        .I1(\mem_reg[10] [0]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[9] [0]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[8] [0]),
        .O(\reg_data_in[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[0]_i_7 
       (.I0(\mem_reg[15] [0]),
        .I1(\mem_reg[14] [0]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[13] [0]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[12] [0]),
        .O(\reg_data_in[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[1]_i_4 
       (.I0(\mem_reg[3] [1]),
        .I1(\mem_reg[2] [1]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[1] [1]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[0] [1]),
        .O(\reg_data_in[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[1]_i_5 
       (.I0(\mem_reg[7] [1]),
        .I1(\mem_reg[6] [1]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[5] [1]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[4] [1]),
        .O(\reg_data_in[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[1]_i_6 
       (.I0(\mem_reg[11] [1]),
        .I1(\mem_reg[10] [1]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[9] [1]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[8] [1]),
        .O(\reg_data_in[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[1]_i_7 
       (.I0(\mem_reg[15] [1]),
        .I1(\mem_reg[14] [1]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[13] [1]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[12] [1]),
        .O(\reg_data_in[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[2]_i_4 
       (.I0(\mem_reg[3] [2]),
        .I1(\mem_reg[2] [2]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[1] [2]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[0] [2]),
        .O(\reg_data_in[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[2]_i_5 
       (.I0(\mem_reg[7] [2]),
        .I1(\mem_reg[6] [2]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[5] [2]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[4] [2]),
        .O(\reg_data_in[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[2]_i_6 
       (.I0(\mem_reg[11] [2]),
        .I1(\mem_reg[10] [2]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[9] [2]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[8] [2]),
        .O(\reg_data_in[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[2]_i_7 
       (.I0(\mem_reg[15] [2]),
        .I1(\mem_reg[14] [2]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[13] [2]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[12] [2]),
        .O(\reg_data_in[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[3]_i_4 
       (.I0(\mem_reg[3] [3]),
        .I1(\mem_reg[2] [3]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[1] [3]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[0] [3]),
        .O(\reg_data_in[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[3]_i_5 
       (.I0(\mem_reg[7] [3]),
        .I1(\mem_reg[6] [3]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[5] [3]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[4] [3]),
        .O(\reg_data_in[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[3]_i_6 
       (.I0(\mem_reg[11] [3]),
        .I1(\mem_reg[10] [3]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[9] [3]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[8] [3]),
        .O(\reg_data_in[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[3]_i_7 
       (.I0(\mem_reg[15] [3]),
        .I1(\mem_reg[14] [3]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[13] [3]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[12] [3]),
        .O(\reg_data_in[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[4]_i_4 
       (.I0(\mem_reg[3] [4]),
        .I1(\mem_reg[2] [4]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[1] [4]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[0] [4]),
        .O(\reg_data_in[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[4]_i_5 
       (.I0(\mem_reg[7] [4]),
        .I1(\mem_reg[6] [4]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[5] [4]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[4] [4]),
        .O(\reg_data_in[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[4]_i_6 
       (.I0(\mem_reg[11] [4]),
        .I1(\mem_reg[10] [4]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[9] [4]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[8] [4]),
        .O(\reg_data_in[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[4]_i_7 
       (.I0(\mem_reg[15] [4]),
        .I1(\mem_reg[14] [4]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[13] [4]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[12] [4]),
        .O(\reg_data_in[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[5]_i_4 
       (.I0(\mem_reg[3] [5]),
        .I1(\mem_reg[2] [5]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[1] [5]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[0] [5]),
        .O(\reg_data_in[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[5]_i_5 
       (.I0(\mem_reg[7] [5]),
        .I1(\mem_reg[6] [5]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[5] [5]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[4] [5]),
        .O(\reg_data_in[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[5]_i_6 
       (.I0(\mem_reg[11] [5]),
        .I1(\mem_reg[10] [5]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[9] [5]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[8] [5]),
        .O(\reg_data_in[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[5]_i_7 
       (.I0(\mem_reg[15] [5]),
        .I1(\mem_reg[14] [5]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[13] [5]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[12] [5]),
        .O(\reg_data_in[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[6]_i_4 
       (.I0(\mem_reg[3] [6]),
        .I1(\mem_reg[2] [6]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[1] [6]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[0] [6]),
        .O(\reg_data_in[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[6]_i_5 
       (.I0(\mem_reg[7] [6]),
        .I1(\mem_reg[6] [6]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[5] [6]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[4] [6]),
        .O(\reg_data_in[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[6]_i_6 
       (.I0(\mem_reg[11] [6]),
        .I1(\mem_reg[10] [6]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[9] [6]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[8] [6]),
        .O(\reg_data_in[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[6]_i_7 
       (.I0(\mem_reg[15] [6]),
        .I1(\mem_reg[14] [6]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[13] [6]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[12] [6]),
        .O(\reg_data_in[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[7]_i_10 
       (.I0(\mem_reg[15] [7]),
        .I1(\mem_reg[14] [7]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[13] [7]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[12] [7]),
        .O(\reg_data_in[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FFFFFFFFFF)) 
    \reg_data_in[7]_i_3 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[3]),
        .I2(\reg_data_in[7]_i_6_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(sclk_reg),
        .O(\reg_data_in_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \reg_data_in[7]_i_6 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .O(\reg_data_in[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[7]_i_7 
       (.I0(\mem_reg[3] [7]),
        .I1(\mem_reg[2] [7]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[1] [7]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[0] [7]),
        .O(\reg_data_in[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[7]_i_8 
       (.I0(\mem_reg[7] [7]),
        .I1(\mem_reg[6] [7]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[5] [7]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[4] [7]),
        .O(\reg_data_in[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_data_in[7]_i_9 
       (.I0(\mem_reg[11] [7]),
        .I1(\mem_reg[10] [7]),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg[9] [7]),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg[8] [7]),
        .O(\reg_data_in[7]_i_9_n_0 ));
  MUXF8 \reg_data_in_reg[0]_i_1 
       (.I0(\reg_data_in_reg[0]_i_2_n_0 ),
        .I1(\reg_data_in_reg[0]_i_3_n_0 ),
        .O(D[0]),
        .S(rd_ptr_reg__0[3]));
  MUXF7 \reg_data_in_reg[0]_i_2 
       (.I0(\reg_data_in[0]_i_4_n_0 ),
        .I1(\reg_data_in[0]_i_5_n_0 ),
        .O(\reg_data_in_reg[0]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \reg_data_in_reg[0]_i_3 
       (.I0(\reg_data_in[0]_i_6_n_0 ),
        .I1(\reg_data_in[0]_i_7_n_0 ),
        .O(\reg_data_in_reg[0]_i_3_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF8 \reg_data_in_reg[1]_i_1 
       (.I0(\reg_data_in_reg[1]_i_2_n_0 ),
        .I1(\reg_data_in_reg[1]_i_3_n_0 ),
        .O(D[1]),
        .S(rd_ptr_reg__0[3]));
  MUXF7 \reg_data_in_reg[1]_i_2 
       (.I0(\reg_data_in[1]_i_4_n_0 ),
        .I1(\reg_data_in[1]_i_5_n_0 ),
        .O(\reg_data_in_reg[1]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \reg_data_in_reg[1]_i_3 
       (.I0(\reg_data_in[1]_i_6_n_0 ),
        .I1(\reg_data_in[1]_i_7_n_0 ),
        .O(\reg_data_in_reg[1]_i_3_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF8 \reg_data_in_reg[2]_i_1 
       (.I0(\reg_data_in_reg[2]_i_2_n_0 ),
        .I1(\reg_data_in_reg[2]_i_3_n_0 ),
        .O(D[2]),
        .S(rd_ptr_reg__0[3]));
  MUXF7 \reg_data_in_reg[2]_i_2 
       (.I0(\reg_data_in[2]_i_4_n_0 ),
        .I1(\reg_data_in[2]_i_5_n_0 ),
        .O(\reg_data_in_reg[2]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \reg_data_in_reg[2]_i_3 
       (.I0(\reg_data_in[2]_i_6_n_0 ),
        .I1(\reg_data_in[2]_i_7_n_0 ),
        .O(\reg_data_in_reg[2]_i_3_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF8 \reg_data_in_reg[3]_i_1 
       (.I0(\reg_data_in_reg[3]_i_2_n_0 ),
        .I1(\reg_data_in_reg[3]_i_3_n_0 ),
        .O(D[3]),
        .S(rd_ptr_reg__0[3]));
  MUXF7 \reg_data_in_reg[3]_i_2 
       (.I0(\reg_data_in[3]_i_4_n_0 ),
        .I1(\reg_data_in[3]_i_5_n_0 ),
        .O(\reg_data_in_reg[3]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \reg_data_in_reg[3]_i_3 
       (.I0(\reg_data_in[3]_i_6_n_0 ),
        .I1(\reg_data_in[3]_i_7_n_0 ),
        .O(\reg_data_in_reg[3]_i_3_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF8 \reg_data_in_reg[4]_i_1 
       (.I0(\reg_data_in_reg[4]_i_2_n_0 ),
        .I1(\reg_data_in_reg[4]_i_3_n_0 ),
        .O(D[4]),
        .S(rd_ptr_reg__0[3]));
  MUXF7 \reg_data_in_reg[4]_i_2 
       (.I0(\reg_data_in[4]_i_4_n_0 ),
        .I1(\reg_data_in[4]_i_5_n_0 ),
        .O(\reg_data_in_reg[4]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \reg_data_in_reg[4]_i_3 
       (.I0(\reg_data_in[4]_i_6_n_0 ),
        .I1(\reg_data_in[4]_i_7_n_0 ),
        .O(\reg_data_in_reg[4]_i_3_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF8 \reg_data_in_reg[5]_i_1 
       (.I0(\reg_data_in_reg[5]_i_2_n_0 ),
        .I1(\reg_data_in_reg[5]_i_3_n_0 ),
        .O(D[5]),
        .S(rd_ptr_reg__0[3]));
  MUXF7 \reg_data_in_reg[5]_i_2 
       (.I0(\reg_data_in[5]_i_4_n_0 ),
        .I1(\reg_data_in[5]_i_5_n_0 ),
        .O(\reg_data_in_reg[5]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \reg_data_in_reg[5]_i_3 
       (.I0(\reg_data_in[5]_i_6_n_0 ),
        .I1(\reg_data_in[5]_i_7_n_0 ),
        .O(\reg_data_in_reg[5]_i_3_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF8 \reg_data_in_reg[6]_i_1 
       (.I0(\reg_data_in_reg[6]_i_2_n_0 ),
        .I1(\reg_data_in_reg[6]_i_3_n_0 ),
        .O(D[6]),
        .S(rd_ptr_reg__0[3]));
  MUXF7 \reg_data_in_reg[6]_i_2 
       (.I0(\reg_data_in[6]_i_4_n_0 ),
        .I1(\reg_data_in[6]_i_5_n_0 ),
        .O(\reg_data_in_reg[6]_i_2_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \reg_data_in_reg[6]_i_3 
       (.I0(\reg_data_in[6]_i_6_n_0 ),
        .I1(\reg_data_in[6]_i_7_n_0 ),
        .O(\reg_data_in_reg[6]_i_3_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF8 \reg_data_in_reg[7]_i_2 
       (.I0(\reg_data_in_reg[7]_i_4_n_0 ),
        .I1(\reg_data_in_reg[7]_i_5_n_0 ),
        .O(D[7]),
        .S(rd_ptr_reg__0[3]));
  MUXF7 \reg_data_in_reg[7]_i_4 
       (.I0(\reg_data_in[7]_i_7_n_0 ),
        .I1(\reg_data_in[7]_i_8_n_0 ),
        .O(\reg_data_in_reg[7]_i_4_n_0 ),
        .S(rd_ptr_reg__0[2]));
  MUXF7 \reg_data_in_reg[7]_i_5 
       (.I0(\reg_data_in[7]_i_9_n_0 ),
        .I1(\reg_data_in[7]_i_10_n_0 ),
        .O(\reg_data_in_reg[7]_i_5_n_0 ),
        .S(rd_ptr_reg__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \tx_apb_data[7]_i_1 
       (.I0(PWRITE_0),
        .I1(PADDR[2]),
        .I2(PADDR[0]),
        .I3(PADDR[1]),
        .I4(\tx_apb_data[7]_i_3_n_0 ),
        .O(\tx_apb_data_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \tx_apb_data[7]_i_3 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[2]),
        .O(\tx_apb_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1__0 
       (.I0(wr_ptr_reg__0[0]),
        .O(\wr_ptr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_ptr[2]_i_1 
       (.I0(wr_ptr_reg__0[2]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr_reg__0[1]),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \wr_ptr[3]_i_1 
       (.I0(apb_txff_wr),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[0]),
        .O(wr_ptr1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_ptr[3]_i_2 
       (.I0(wr_ptr_reg__0[3]),
        .I1(wr_ptr_reg__0[1]),
        .I2(wr_ptr_reg__0[0]),
        .I3(wr_ptr_reg__0[2]),
        .O(p_0_in__0[3]));
  FDCE \wr_ptr_reg[0] 
       (.C(PCLK),
        .CE(wr_ptr1),
        .CLR(PRESETn_0),
        .D(\wr_ptr[0]_i_1__0_n_0 ),
        .Q(wr_ptr_reg__0[0]));
  FDCE \wr_ptr_reg[1] 
       (.C(PCLK),
        .CE(wr_ptr1),
        .CLR(PRESETn_0),
        .D(p_0_in__0[1]),
        .Q(wr_ptr_reg__0[1]));
  FDCE \wr_ptr_reg[2] 
       (.C(PCLK),
        .CE(wr_ptr1),
        .CLR(PRESETn_0),
        .D(p_0_in__0[2]),
        .Q(wr_ptr_reg__0[2]));
  FDCE \wr_ptr_reg[3] 
       (.C(PCLK),
        .CE(wr_ptr1),
        .CLR(PRESETn_0),
        .D(p_0_in__0[3]),
        .Q(wr_ptr_reg__0[3]));
endmodule

(* ORIG_REF_NAME = "i2c_master" *) 
module design_1_top_core_i2c_0_0_i2c_master
   (counter_reg,
    \counter_clk_reg[15] ,
    sda_o,
    Q,
    \wr_ptr_reg[0] ,
    counter,
    \counter_byte_reg[7]_0 ,
    i2c_done,
    E,
    \Q_reg[2]_0 ,
    scl_o,
    \rx_status_reg[0] ,
    \mem_reg[15][7] ,
    PCLK,
    PRESETn,
    S,
    \tx_div_cnt_reg[15] ,
    DI,
    \tx_div_cnt_reg[14] ,
    \tx_apb_data_cnt_reg[7] ,
    \tx_apb_addr_reg[0] ,
    sda_i,
    \counter_reg[2]_0 ,
    \counter_reg[2]_1 ,
    i_ready,
    \tx_apb_data_cnt_reg[7]_0 ,
    \tx_div_cnt_reg[15]_0 ,
    PSEL,
    \rx_status_reg[0]_0 ,
    D);
  output [15:0]counter_reg;
  output [13:0]\counter_clk_reg[15] ;
  output sda_o;
  output [1:0]Q;
  output \wr_ptr_reg[0] ;
  output [2:0]counter;
  output [7:0]\counter_byte_reg[7]_0 ;
  output i2c_done;
  output [0:0]E;
  output \Q_reg[2]_0 ;
  output scl_o;
  output \rx_status_reg[0] ;
  output [7:0]\mem_reg[15][7] ;
  input PCLK;
  input PRESETn;
  input [3:0]S;
  input [3:0]\tx_div_cnt_reg[15] ;
  input [3:0]DI;
  input [2:0]\tx_div_cnt_reg[14] ;
  input [3:0]\tx_apb_data_cnt_reg[7] ;
  input [0:0]\tx_apb_addr_reg[0] ;
  input sda_i;
  input \counter_reg[2]_0 ;
  input \counter_reg[2]_1 ;
  input i_ready;
  input [7:0]\tx_apb_data_cnt_reg[7]_0 ;
  input [15:0]\tx_div_cnt_reg[15]_0 ;
  input PSEL;
  input \rx_status_reg[0]_0 ;
  input [7:0]D;

  wire [7:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire PCLK;
  wire PRESETn;
  wire PSEL;
  wire [1:0]Q;
  wire \Q[0]_i_6_n_0 ;
  wire \Q[1]_i_10_n_0 ;
  wire \Q[1]_i_11_n_0 ;
  wire \Q[1]_i_3_n_0 ;
  wire \Q[1]_i_6_n_0 ;
  wire \Q[1]_i_7_n_0 ;
  wire \Q[1]_i_8_n_0 ;
  wire \Q[2]_i_10_n_0 ;
  wire \Q[2]_i_3_n_0 ;
  wire \Q[2]_i_4_n_0 ;
  wire \Q[2]_i_6_n_0 ;
  wire \Q[2]_i_7_n_0 ;
  wire \Q[2]_i_8_n_0 ;
  wire \Q[2]_i_9_n_0 ;
  wire \Q[3]_i_3_n_0 ;
  wire \Q[3]_i_5_n_0 ;
  wire [3:1]Q_0;
  wire [3:0]Q_next;
  wire \Q_reg[2]_0 ;
  wire [3:0]S;
  wire [2:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[2]_i_2_n_0 ;
  wire \counter[3]_i_1__1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_3_n_0 ;
  wire \counter[7]_i_4_n_0 ;
  wire counter_byte1;
  wire counter_byte1_carry_i_1_n_0;
  wire counter_byte1_carry_i_2_n_0;
  wire counter_byte1_carry_i_3_n_0;
  wire counter_byte1_carry_i_4_n_0;
  wire counter_byte1_carry_n_1;
  wire counter_byte1_carry_n_2;
  wire counter_byte1_carry_n_3;
  wire \counter_byte[0]_i_1_n_0 ;
  wire \counter_byte[1]_i_1_n_0 ;
  wire \counter_byte[2]_i_1_n_0 ;
  wire \counter_byte[2]_i_2_n_0 ;
  wire \counter_byte[3]_i_1_n_0 ;
  wire \counter_byte[3]_i_2_n_0 ;
  wire \counter_byte[4]_i_1_n_0 ;
  wire \counter_byte[4]_i_2_n_0 ;
  wire \counter_byte[5]_i_1_n_0 ;
  wire \counter_byte[5]_i_2_n_0 ;
  wire \counter_byte[6]_i_1_n_0 ;
  wire \counter_byte[6]_i_2_n_0 ;
  wire \counter_byte[7]_i_2_n_0 ;
  wire \counter_byte[7]_i_3_n_0 ;
  wire \counter_byte[7]_i_4_n_0 ;
  wire \counter_byte[7]_i_5_n_0 ;
  wire [7:0]\counter_byte_reg[7]_0 ;
  wire [13:0]\counter_clk_reg[15] ;
  wire [15:0]counter_reg;
  wire \counter_reg[2]_0 ;
  wire \counter_reg[2]_1 ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[0]_i_2_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[7]_i_3_n_0 ;
  wire div_clk_n_31;
  wire div_clk_n_34;
  wire div_clk_n_40;
  wire div_clk_n_43;
  wire i2c_done;
  wire i_ready;
  wire [7:0]\mem_reg[15][7] ;
  wire [7:0]reg_data_in;
  wire \rx_status_reg[0] ;
  wire \rx_status_reg[0]_0 ;
  wire scl_o;
  wire sclk;
  wire sda_i;
  wire sda_o;
  wire sda_o_i_10_n_0;
  wire sda_o_i_1_n_0;
  wire sda_o_i_2_n_0;
  wire sda_o_i_3_n_0;
  wire sda_o_i_4_n_0;
  wire sda_o_i_9_n_0;
  wire sda_o_reg_i_6_n_0;
  wire sta_sto;
  wire [0:0]\tx_apb_addr_reg[0] ;
  wire [3:0]\tx_apb_data_cnt_reg[7] ;
  wire [7:0]\tx_apb_data_cnt_reg[7]_0 ;
  wire [2:0]\tx_div_cnt_reg[14] ;
  wire [3:0]\tx_div_cnt_reg[15] ;
  wire [15:0]\tx_div_cnt_reg[15]_0 ;
  wire \wr_ptr_reg[0] ;
  wire [3:0]NLW_counter_byte1_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Q[0]_i_6 
       (.I0(Q[0]),
        .I1(Q_0[3]),
        .O(\Q[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Q[1]_i_10 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[6] ),
        .O(\Q[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Q[1]_i_11 
       (.I0(Q[0]),
        .I1(Q_0[1]),
        .O(\Q[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBF0F0F0F0)) 
    \Q[1]_i_3 
       (.I0(Q[1]),
        .I1(i_ready),
        .I2(\Q[1]_i_7_n_0 ),
        .I3(\counter[7]_i_4_n_0 ),
        .I4(\Q[1]_i_8_n_0 ),
        .I5(Q[0]),
        .O(\Q[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \Q[1]_i_6 
       (.I0(\counter_byte_reg[7]_0 [6]),
        .I1(\counter_byte_reg[7]_0 [5]),
        .I2(\counter_byte_reg[7]_0 [7]),
        .I3(\counter_byte_reg[7]_0 [4]),
        .I4(\counter_byte[4]_i_2_n_0 ),
        .I5(\Q[1]_i_11_n_0 ),
        .O(\Q[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \Q[1]_i_7 
       (.I0(\tx_apb_addr_reg[0] ),
        .I1(sda_i),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\Q[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \Q[1]_i_8 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter_reg_n_0_[5] ),
        .O(\Q[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Q[2]_i_10 
       (.I0(Q[0]),
        .I1(Q_0[1]),
        .O(\Q[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h020F0200)) 
    \Q[2]_i_3 
       (.I0(\counter_byte[4]_i_2_n_0 ),
        .I1(\Q[2]_i_8_n_0 ),
        .I2(Q[0]),
        .I3(Q_0[1]),
        .I4(sda_i),
        .O(\Q[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \Q[2]_i_4 
       (.I0(\Q[2]_i_9_n_0 ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter[7]_i_4_n_0 ),
        .I5(Q[0]),
        .O(\Q[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Q[2]_i_6 
       (.I0(Q_0[3]),
        .I1(Q[1]),
        .O(\Q[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \Q[2]_i_7 
       (.I0(Q_0[1]),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter[7]_i_4_n_0 ),
        .I5(Q[0]),
        .O(\Q[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Q[2]_i_8 
       (.I0(\counter_byte_reg[7]_0 [6]),
        .I1(\counter_byte_reg[7]_0 [5]),
        .I2(\counter_byte_reg[7]_0 [7]),
        .I3(\counter_byte_reg[7]_0 [4]),
        .O(\Q[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[2]_i_9 
       (.I0(Q[1]),
        .I1(Q_0[1]),
        .O(\Q[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \Q[3]_i_3 
       (.I0(\counter_byte_reg[7]_0 [6]),
        .I1(\counter_byte_reg[7]_0 [5]),
        .I2(\counter_byte_reg[7]_0 [7]),
        .I3(\counter_byte_reg[7]_0 [4]),
        .I4(\counter_byte[4]_i_2_n_0 ),
        .I5(\Q[3]_i_5_n_0 ),
        .O(\Q[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q[3]_i_5 
       (.I0(Q_0[3]),
        .I1(Q_0[1]),
        .O(\Q[3]_i_5_n_0 ));
  FDPE \Q_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .D(Q_next[0]),
        .PRE(PRESETn),
        .Q(Q[0]));
  FDCE \Q_reg[1] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(Q_next[1]),
        .Q(Q_0[1]));
  FDCE \Q_reg[2] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(Q_next[2]),
        .Q(Q[1]));
  FDCE \Q_reg[3] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(Q_next[3]),
        .Q(Q_0[3]));
  LUT6 #(
    .INIT(64'hAA66AA6FAAEFAEEA)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .I1(sclk),
        .I2(Q[1]),
        .I3(Q_0[3]),
        .I4(Q_0[1]),
        .I5(Q[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF1FFFFF1FFF0000)) 
    \counter[1]_i_1 
       (.I0(Q[1]),
        .I1(Q_0[1]),
        .I2(Q[0]),
        .I3(counter[0]),
        .I4(div_clk_n_34),
        .I5(counter[1]),
        .O(\counter[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDFF5700)) 
    \counter[2]_i_1 
       (.I0(\counter[2]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(div_clk_n_34),
        .I4(counter[2]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \counter[2]_i_2 
       (.I0(Q[0]),
        .I1(Q_0[1]),
        .I2(Q[1]),
        .O(\counter[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \counter[3]_i_1__1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .O(\counter[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \counter[4]_i_1 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(counter[2]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(counter[0]),
        .I4(counter[1]),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \counter[5]_i_1 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(\counter_reg_n_0_[3] ),
        .I4(counter[2]),
        .I5(\counter_reg_n_0_[4] ),
        .O(\counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \counter[6]_i_1 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter[7]_i_4_n_0 ),
        .I2(\counter_reg_n_0_[5] ),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \counter[7]_i_3 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter[7]_i_4_n_0 ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[6] ),
        .O(\counter[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[7]_i_4 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(counter[2]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(counter[0]),
        .I4(counter[1]),
        .O(\counter[7]_i_4_n_0 ));
  CARRY4 counter_byte1_carry
       (.CI(1'b0),
        .CO({counter_byte1,counter_byte1_carry_n_1,counter_byte1_carry_n_2,counter_byte1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({counter_byte1_carry_i_1_n_0,counter_byte1_carry_i_2_n_0,counter_byte1_carry_i_3_n_0,counter_byte1_carry_i_4_n_0}),
        .O(NLW_counter_byte1_carry_O_UNCONNECTED[3:0]),
        .S(\tx_apb_data_cnt_reg[7] ));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter_byte1_carry_i_1
       (.I0(\counter_byte_reg[7]_0 [7]),
        .I1(\tx_apb_data_cnt_reg[7]_0 [7]),
        .I2(\counter_byte_reg[7]_0 [6]),
        .I3(\tx_apb_data_cnt_reg[7]_0 [6]),
        .O(counter_byte1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter_byte1_carry_i_2
       (.I0(\counter_byte_reg[7]_0 [5]),
        .I1(\tx_apb_data_cnt_reg[7]_0 [5]),
        .I2(\counter_byte_reg[7]_0 [4]),
        .I3(\tx_apb_data_cnt_reg[7]_0 [4]),
        .O(counter_byte1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter_byte1_carry_i_3
       (.I0(\counter_byte_reg[7]_0 [3]),
        .I1(\tx_apb_data_cnt_reg[7]_0 [3]),
        .I2(\counter_byte_reg[7]_0 [2]),
        .I3(\tx_apb_data_cnt_reg[7]_0 [2]),
        .O(counter_byte1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter_byte1_carry_i_4
       (.I0(\counter_byte_reg[7]_0 [1]),
        .I1(\tx_apb_data_cnt_reg[7]_0 [1]),
        .I2(\counter_byte_reg[7]_0 [0]),
        .I3(\tx_apb_data_cnt_reg[7]_0 [0]),
        .O(counter_byte1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hBBFFFFB011001010)) 
    \counter_byte[0]_i_1 
       (.I0(counter_byte1),
        .I1(\counter_byte_reg[7]_0 [0]),
        .I2(Q_0[3]),
        .I3(Q[1]),
        .I4(Q_0[1]),
        .I5(\tx_apb_data_cnt_reg[7]_0 [0]),
        .O(\counter_byte[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA88A20022002)) 
    \counter_byte[1]_i_1 
       (.I0(\counter_byte[7]_i_3_n_0 ),
        .I1(counter_byte1),
        .I2(\counter_byte_reg[7]_0 [1]),
        .I3(\counter_byte_reg[7]_0 [0]),
        .I4(\counter_byte[7]_i_5_n_0 ),
        .I5(\tx_apb_data_cnt_reg[7]_0 [1]),
        .O(\counter_byte[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA88A20022002)) 
    \counter_byte[2]_i_1 
       (.I0(\counter_byte[7]_i_3_n_0 ),
        .I1(counter_byte1),
        .I2(\counter_byte[2]_i_2_n_0 ),
        .I3(\counter_byte_reg[7]_0 [2]),
        .I4(\counter_byte[7]_i_5_n_0 ),
        .I5(\tx_apb_data_cnt_reg[7]_0 [2]),
        .O(\counter_byte[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter_byte[2]_i_2 
       (.I0(\counter_byte_reg[7]_0 [0]),
        .I1(\counter_byte_reg[7]_0 [1]),
        .O(\counter_byte[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA88A20022002)) 
    \counter_byte[3]_i_1 
       (.I0(\counter_byte[7]_i_3_n_0 ),
        .I1(counter_byte1),
        .I2(\counter_byte[3]_i_2_n_0 ),
        .I3(\counter_byte_reg[7]_0 [3]),
        .I4(\counter_byte[7]_i_5_n_0 ),
        .I5(\tx_apb_data_cnt_reg[7]_0 [3]),
        .O(\counter_byte[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \counter_byte[3]_i_2 
       (.I0(\counter_byte_reg[7]_0 [2]),
        .I1(\counter_byte_reg[7]_0 [1]),
        .I2(\counter_byte_reg[7]_0 [0]),
        .O(\counter_byte[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8AA802200220)) 
    \counter_byte[4]_i_1 
       (.I0(\counter_byte[7]_i_3_n_0 ),
        .I1(counter_byte1),
        .I2(\counter_byte[4]_i_2_n_0 ),
        .I3(\counter_byte_reg[7]_0 [4]),
        .I4(\counter_byte[7]_i_5_n_0 ),
        .I5(\tx_apb_data_cnt_reg[7]_0 [4]),
        .O(\counter_byte[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \counter_byte[4]_i_2 
       (.I0(\counter_byte_reg[7]_0 [3]),
        .I1(\counter_byte_reg[7]_0 [0]),
        .I2(\counter_byte_reg[7]_0 [1]),
        .I3(\counter_byte_reg[7]_0 [2]),
        .O(\counter_byte[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8AA802200220)) 
    \counter_byte[5]_i_1 
       (.I0(\counter_byte[7]_i_3_n_0 ),
        .I1(counter_byte1),
        .I2(\counter_byte[5]_i_2_n_0 ),
        .I3(\counter_byte_reg[7]_0 [5]),
        .I4(\counter_byte[7]_i_5_n_0 ),
        .I5(\tx_apb_data_cnt_reg[7]_0 [5]),
        .O(\counter_byte[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \counter_byte[5]_i_2 
       (.I0(\counter_byte_reg[7]_0 [2]),
        .I1(\counter_byte_reg[7]_0 [1]),
        .I2(\counter_byte_reg[7]_0 [0]),
        .I3(\counter_byte_reg[7]_0 [3]),
        .I4(\counter_byte_reg[7]_0 [4]),
        .O(\counter_byte[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFFA030002020)) 
    \counter_byte[6]_i_1 
       (.I0(Q_0[3]),
        .I1(counter_byte1),
        .I2(\counter_byte[6]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q_0[1]),
        .I5(\tx_apb_data_cnt_reg[7]_0 [6]),
        .O(\counter_byte[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFC6)) 
    \counter_byte[6]_i_2 
       (.I0(\counter_byte[5]_i_2_n_0 ),
        .I1(\counter_byte_reg[7]_0 [6]),
        .I2(\counter_byte_reg[7]_0 [5]),
        .I3(counter_byte1),
        .O(\counter_byte[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8CC804400440)) 
    \counter_byte[7]_i_2 
       (.I0(counter_byte1),
        .I1(\counter_byte[7]_i_3_n_0 ),
        .I2(\counter_byte[7]_i_4_n_0 ),
        .I3(\counter_byte_reg[7]_0 [7]),
        .I4(\counter_byte[7]_i_5_n_0 ),
        .I5(\tx_apb_data_cnt_reg[7]_0 [7]),
        .O(\counter_byte[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \counter_byte[7]_i_3 
       (.I0(Q_0[3]),
        .I1(Q_0[1]),
        .I2(Q[1]),
        .O(\counter_byte[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \counter_byte[7]_i_4 
       (.I0(\counter_byte[5]_i_2_n_0 ),
        .I1(\counter_byte_reg[7]_0 [6]),
        .I2(\counter_byte_reg[7]_0 [5]),
        .O(\counter_byte[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_byte[7]_i_5 
       (.I0(Q[1]),
        .I1(Q_0[1]),
        .O(\counter_byte[7]_i_5_n_0 ));
  FDRE \counter_byte_reg[0] 
       (.C(PCLK),
        .CE(div_clk_n_40),
        .D(\counter_byte[0]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \counter_byte_reg[1] 
       (.C(PCLK),
        .CE(div_clk_n_40),
        .D(\counter_byte[1]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \counter_byte_reg[2] 
       (.C(PCLK),
        .CE(div_clk_n_40),
        .D(\counter_byte[2]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \counter_byte_reg[3] 
       (.C(PCLK),
        .CE(div_clk_n_40),
        .D(\counter_byte[3]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \counter_byte_reg[4] 
       (.C(PCLK),
        .CE(div_clk_n_40),
        .D(\counter_byte[4]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \counter_byte_reg[5] 
       (.C(PCLK),
        .CE(div_clk_n_40),
        .D(\counter_byte[5]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \counter_byte_reg[6] 
       (.C(PCLK),
        .CE(div_clk_n_40),
        .D(\counter_byte[6]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \counter_byte_reg[7] 
       (.C(PCLK),
        .CE(div_clk_n_40),
        .D(\counter_byte[7]_i_2_n_0 ),
        .Q(\counter_byte_reg[7]_0 [7]),
        .R(1'b0));
  FDRE \counter_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(1'b0));
  FDRE \counter_reg[3] 
       (.C(PCLK),
        .CE(div_clk_n_34),
        .D(\counter[3]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(div_clk_n_31));
  FDRE \counter_reg[4] 
       (.C(PCLK),
        .CE(div_clk_n_34),
        .D(\counter[4]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[4] ),
        .R(div_clk_n_31));
  FDRE \counter_reg[5] 
       (.C(PCLK),
        .CE(div_clk_n_34),
        .D(\counter[5]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[5] ),
        .R(div_clk_n_31));
  FDRE \counter_reg[6] 
       (.C(PCLK),
        .CE(div_clk_n_34),
        .D(\counter[6]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[6] ),
        .R(div_clk_n_31));
  FDRE \counter_reg[7] 
       (.C(PCLK),
        .CE(div_clk_n_34),
        .D(\counter[7]_i_3_n_0 ),
        .Q(\counter_reg_n_0_[7] ),
        .R(div_clk_n_31));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \data_out[0]_i_1 
       (.I0(sda_i),
        .I1(Q_0[3]),
        .I2(\data_out[0]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q_0[1]),
        .I5(\mem_reg[15][7] [0]),
        .O(\data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \data_out[0]_i_2 
       (.I0(Q[0]),
        .I1(\counter[7]_i_4_n_0 ),
        .I2(\counter_reg_n_0_[7] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[5] ),
        .O(\data_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[1]_i_1 
       (.I0(sda_i),
        .I1(\data_out[3]_i_2_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(\mem_reg[15][7] [1]),
        .O(\data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[2]_i_1 
       (.I0(sda_i),
        .I1(\data_out[3]_i_2_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(\mem_reg[15][7] [2]),
        .O(\data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \data_out[3]_i_1 
       (.I0(sda_i),
        .I1(\data_out[3]_i_2_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(\mem_reg[15][7] [3]),
        .O(\data_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_out[3]_i_2 
       (.I0(counter[2]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[7] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[6] ),
        .O(\data_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_out[4]_i_1 
       (.I0(sda_i),
        .I1(\data_out[7]_i_2_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(\mem_reg[15][7] [4]),
        .O(\data_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[5]_i_1 
       (.I0(sda_i),
        .I1(\data_out[7]_i_2_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(\mem_reg[15][7] [5]),
        .O(\data_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[6]_i_1 
       (.I0(sda_i),
        .I1(\data_out[7]_i_2_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(\mem_reg[15][7] [6]),
        .O(\data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \data_out[7]_i_1 
       (.I0(sda_i),
        .I1(\data_out[7]_i_2_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(\mem_reg[15][7] [7]),
        .O(\data_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \data_out[7]_i_2 
       (.I0(counter[2]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[7] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[6] ),
        .O(\data_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \data_out[7]_i_3 
       (.I0(Q_0[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q_0[3]),
        .O(\data_out[7]_i_3_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(\mem_reg[15][7] [0]),
        .R(1'b0));
  FDRE \data_out_reg[1] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(\mem_reg[15][7] [1]),
        .R(1'b0));
  FDRE \data_out_reg[2] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(\mem_reg[15][7] [2]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(\mem_reg[15][7] [3]),
        .R(1'b0));
  FDRE \data_out_reg[4] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(\mem_reg[15][7] [4]),
        .R(1'b0));
  FDRE \data_out_reg[5] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(\mem_reg[15][7] [5]),
        .R(1'b0));
  FDRE \data_out_reg[6] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(\mem_reg[15][7] [6]),
        .R(1'b0));
  FDRE \data_out_reg[7] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(\mem_reg[15][7] [7]),
        .R(1'b0));
  design_1_top_core_i2c_0_0_div_clk div_clk
       (.D(Q_next),
        .DI(DI),
        .E(E),
        .PCLK(PCLK),
        .PRESETn(PRESETn),
        .PSEL(PSEL),
        .Q({Q_0[3],Q[1],Q_0[1],Q[0]}),
        .\Q_reg[0] (\Q[2]_i_3_n_0 ),
        .\Q_reg[0]_0 (\Q[2]_i_10_n_0 ),
        .\Q_reg[0]_1 (\Q[0]_i_6_n_0 ),
        .\Q_reg[1] (\Q[2]_i_7_n_0 ),
        .\Q_reg[2] (\Q_reg[2]_0 ),
        .\Q_reg[2]_0 (\Q[1]_i_3_n_0 ),
        .\Q_reg[3] (\Q[2]_i_6_n_0 ),
        .S(S),
        .\counter_byte_reg[0] (div_clk_n_40),
        .\counter_byte_reg[3] (\counter_byte[4]_i_2_n_0 ),
        .\counter_byte_reg[6] (\Q[3]_i_3_n_0 ),
        .\counter_byte_reg[6]_0 (\Q[2]_i_8_n_0 ),
        .\counter_byte_reg[6]_1 (\Q[1]_i_6_n_0 ),
        .\counter_clk_reg[15]_0 (\counter_clk_reg[15] [13:1]),
        .\counter_clk_reg[3]_0 (\counter_clk_reg[15] [0]),
        .counter_reg(counter_reg[15:1]),
        .\counter_reg[2]_0 (\counter_reg[2]_1 ),
        .\counter_reg[3]_0 (counter_reg[0]),
        .\counter_reg[3]_1 (div_clk_n_34),
        .\counter_reg[4]_0 (\counter[7]_i_4_n_0 ),
        .\counter_reg[5]_0 (\Q[2]_i_4_n_0 ),
        .\counter_reg[5]_1 (\Q[1]_i_10_n_0 ),
        .\counter_reg[5]_2 (\counter_reg_n_0_[5] ),
        .\counter_reg[6]_0 (\counter_reg_n_0_[6] ),
        .\counter_reg[7]_0 (div_clk_n_31),
        .\counter_reg[7]_1 (\counter_reg_n_0_[7] ),
        .i2c_done(i2c_done),
        .i_ready(i_ready),
        .\rx_status_reg[0] (\rx_status_reg[0] ),
        .\rx_status_reg[0]_0 (\rx_status_reg[0]_0 ),
        .sclk(sclk),
        .sda_i(sda_i),
        .sta_sto(sta_sto),
        .sta_sto_reg(div_clk_n_43),
        .\tx_div_cnt_reg[14] (\tx_div_cnt_reg[14] ),
        .\tx_div_cnt_reg[15] (\tx_div_cnt_reg[15] ),
        .\tx_div_cnt_reg[15]_0 (\tx_div_cnt_reg[15]_0 ),
        .\wr_ptr_reg[0] (\wr_ptr_reg[0] ));
  FDCE \reg_data_in_reg[0] 
       (.C(PCLK),
        .CE(E),
        .CLR(PRESETn),
        .D(D[0]),
        .Q(reg_data_in[0]));
  FDCE \reg_data_in_reg[1] 
       (.C(PCLK),
        .CE(E),
        .CLR(PRESETn),
        .D(D[1]),
        .Q(reg_data_in[1]));
  FDCE \reg_data_in_reg[2] 
       (.C(PCLK),
        .CE(E),
        .CLR(PRESETn),
        .D(D[2]),
        .Q(reg_data_in[2]));
  FDCE \reg_data_in_reg[3] 
       (.C(PCLK),
        .CE(E),
        .CLR(PRESETn),
        .D(D[3]),
        .Q(reg_data_in[3]));
  FDCE \reg_data_in_reg[4] 
       (.C(PCLK),
        .CE(E),
        .CLR(PRESETn),
        .D(D[4]),
        .Q(reg_data_in[4]));
  FDCE \reg_data_in_reg[5] 
       (.C(PCLK),
        .CE(E),
        .CLR(PRESETn),
        .D(D[5]),
        .Q(reg_data_in[5]));
  FDCE \reg_data_in_reg[6] 
       (.C(PCLK),
        .CE(E),
        .CLR(PRESETn),
        .D(D[6]),
        .Q(reg_data_in[6]));
  FDCE \reg_data_in_reg[7] 
       (.C(PCLK),
        .CE(E),
        .CLR(PRESETn),
        .D(D[7]),
        .Q(reg_data_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFB0006)) 
    scl_o_INST_0
       (.I0(Q[0]),
        .I1(Q_0[1]),
        .I2(Q[1]),
        .I3(Q_0[3]),
        .I4(sta_sto),
        .O(scl_o));
  LUT6 #(
    .INIT(64'hFF20FFFFFF200000)) 
    sda_o_i_1
       (.I0(Q_0[3]),
        .I1(Q_0[1]),
        .I2(sda_o_i_2_n_0),
        .I3(sda_o_i_3_n_0),
        .I4(sda_o_i_4_n_0),
        .I5(sda_o),
        .O(sda_o_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_o_i_10
       (.I0(reg_data_in[7]),
        .I1(reg_data_in[6]),
        .I2(counter[1]),
        .I3(reg_data_in[5]),
        .I4(counter[0]),
        .I5(reg_data_in[4]),
        .O(sda_o_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    sda_o_i_2
       (.I0(\counter_byte[4]_i_2_n_0 ),
        .I1(\counter_byte_reg[7]_0 [4]),
        .I2(\counter_byte_reg[7]_0 [7]),
        .I3(\counter_byte_reg[7]_0 [5]),
        .I4(\counter_byte_reg[7]_0 [6]),
        .O(sda_o_i_2_n_0));
  LUT6 #(
    .INIT(64'h5555405555054055)) 
    sda_o_i_3
       (.I0(Q_0[3]),
        .I1(\counter_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q_0[1]),
        .I4(Q[1]),
        .I5(sda_o_reg_i_6_n_0),
        .O(sda_o_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0F5E)) 
    sda_o_i_4
       (.I0(Q[0]),
        .I1(Q_0[1]),
        .I2(Q_0[3]),
        .I3(Q[1]),
        .O(sda_o_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_o_i_9
       (.I0(reg_data_in[3]),
        .I1(reg_data_in[2]),
        .I2(counter[1]),
        .I3(reg_data_in[1]),
        .I4(counter[0]),
        .I5(reg_data_in[0]),
        .O(sda_o_i_9_n_0));
  FDRE sda_o_reg
       (.C(PCLK),
        .CE(1'b1),
        .D(sda_o_i_1_n_0),
        .Q(sda_o),
        .R(1'b0));
  MUXF7 sda_o_reg_i_6
       (.I0(sda_o_i_9_n_0),
        .I1(sda_o_i_10_n_0),
        .O(sda_o_reg_i_6_n_0),
        .S(counter[2]));
  FDCE sta_sto_reg
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(div_clk_n_43),
        .Q(sta_sto));
endmodule

(* ORIG_REF_NAME = "top_core_i2c" *) 
module design_1_top_core_i2c_0_0_top_core_i2c
   (PRDATA,
    scl_o,
    sda_o,
    PENABLE,
    PSEL,
    PWRITE,
    sda_i,
    PADDR,
    PCLK,
    PWDATA,
    PRESETn);
  output [7:0]PRDATA;
  output scl_o;
  output sda_o;
  input PENABLE;
  input PSEL;
  input PWRITE;
  input sda_i;
  input [2:0]PADDR;
  input PCLK;
  input [15:0]PWDATA;
  input PRESETn;

  wire [2:0]PADDR;
  wire PCLK;
  wire PENABLE;
  wire [7:0]PRDATA;
  wire PRESETn;
  wire PSEL;
  wire [15:0]PWDATA;
  wire PWRITE;
  wire [2:0]Q;
  wire apb_interface_n_0;
  wire apb_interface_n_1;
  wire apb_interface_n_10;
  wire apb_interface_n_11;
  wire apb_interface_n_28;
  wire apb_interface_n_29;
  wire apb_interface_n_30;
  wire apb_interface_n_31;
  wire apb_interface_n_32;
  wire apb_interface_n_33;
  wire apb_interface_n_34;
  wire apb_interface_n_35;
  wire apb_interface_n_36;
  wire apb_interface_n_37;
  wire apb_interface_n_38;
  wire apb_interface_n_39;
  wire apb_interface_n_40;
  wire apb_interface_n_41;
  wire apb_interface_n_42;
  wire apb_interface_n_5;
  wire apb_interface_n_51;
  wire apb_interface_n_6;
  wire apb_interface_n_7;
  wire apb_interface_n_8;
  wire apb_interface_n_9;
  wire apb_rxff_rd;
  wire apb_txff_wr;
  wire [2:0]counter;
  wire [7:0]counter_byte;
  wire [7:0]data_cnt;
  wire [7:0]data_out;
  wire [13:0]\div_clk/counter_clk_reg ;
  wire [15:0]\div_clk/counter_reg ;
  wire [15:0]div_cnt;
  wire fifo_rx_0_n_0;
  wire fifo_rx_0_n_1;
  wire fifo_rx_0_n_10;
  wire fifo_rx_0_n_2;
  wire fifo_rx_0_n_3;
  wire fifo_rx_0_n_4;
  wire fifo_rx_0_n_5;
  wire fifo_rx_0_n_6;
  wire fifo_rx_0_n_7;
  wire fifo_rx_0_n_8;
  wire fifo_rx_0_n_9;
  wire fifo_tx_0_n_0;
  wire fifo_tx_0_n_1;
  wire fifo_tx_0_n_10;
  wire fifo_tx_0_n_11;
  wire fifo_tx_0_n_2;
  wire fifo_tx_0_n_3;
  wire fifo_tx_0_n_4;
  wire fifo_tx_0_n_5;
  wire fifo_tx_0_n_6;
  wire fifo_tx_0_n_7;
  wire fifo_tx_0_n_8;
  wire fifo_tx_0_n_9;
  wire i2c_done;
  wire i2c_master_n_33;
  wire i2c_master_n_47;
  wire i2c_master_n_49;
  wire i_ready;
  wire i_txff_rd;
  wire scl_o;
  wire sda_i;
  wire sda_o;
  wire [0:0]tx_apb_addr;
  wire [7:0]tx_apb_data;

  design_1_top_core_i2c_0_0_apb_interface apb_interface
       (.D({fifo_rx_0_n_0,fifo_rx_0_n_1,fifo_rx_0_n_2,fifo_rx_0_n_3,fifo_rx_0_n_4,fifo_rx_0_n_5,fifo_rx_0_n_6,fifo_rx_0_n_7}),
        .DI({apb_interface_n_32,apb_interface_n_33,apb_interface_n_34,apb_interface_n_35}),
        .E(fifo_rx_0_n_8),
        .PADDR(PADDR),
        .PCLK(PCLK),
        .PENABLE(PENABLE),
        .PRDATA(PRDATA),
        .PRESETn(PRESETn),
        .PSEL(PSEL),
        .PWDATA(PWDATA),
        .PWRITE(PWRITE),
        .Q(div_cnt),
        .\Q_reg[1] (tx_apb_addr),
        .S({apb_interface_n_8,apb_interface_n_9,apb_interface_n_10,apb_interface_n_11}),
        .apb_rxff_rd(apb_rxff_rd),
        .apb_rxff_rd_reg_0(fifo_tx_0_n_11),
        .apb_txff_wr(apb_txff_wr),
        .apb_txff_wr_reg_0(fifo_rx_0_n_10),
        .clk_en_reg({apb_interface_n_36,apb_interface_n_37,apb_interface_n_38}),
        .counter(counter),
        .\counter_byte_reg[1] ({apb_interface_n_39,apb_interface_n_40,apb_interface_n_41,apb_interface_n_42}),
        .\counter_byte_reg[7] (data_cnt),
        .\counter_byte_reg[7]_0 (counter_byte),
        .counter_clk_reg(\div_clk/counter_clk_reg ),
        .counter_reg(\div_clk/counter_reg ),
        .\counter_reg[0] (fifo_tx_0_n_1),
        .i2c_done(i2c_done),
        .i_ready(i_ready),
        .i_ready_reg_0(apb_interface_n_7),
        .\mem_reg[15][7] (tx_apb_data),
        .\rx_status_reg[0]_0 (apb_interface_n_0),
        .\rx_status_reg[0]_1 (i2c_master_n_49),
        .sclk_reg({apb_interface_n_28,apb_interface_n_29,apb_interface_n_30,apb_interface_n_31}),
        .sda_o_reg(apb_interface_n_51),
        .\tx_apb_data_cnt_reg[0]_0 (apb_interface_n_1),
        .\tx_apb_data_reg[7]_0 (apb_interface_n_5),
        .\tx_ctrl_reg[0]_0 (apb_interface_n_6));
  design_1_top_core_i2c_0_0_fifo_generator fifo_rx_0
       (.D({fifo_rx_0_n_0,fifo_rx_0_n_1,fifo_rx_0_n_2,fifo_rx_0_n_3,fifo_rx_0_n_4,fifo_rx_0_n_5,fifo_rx_0_n_6,fifo_rx_0_n_7}),
        .E(fifo_rx_0_n_8),
        .PADDR(PADDR),
        .PCLK(PCLK),
        .PENABLE(PENABLE),
        .PENABLE_0(apb_interface_n_6),
        .PRESETn(PRESETn),
        .PRESETn_0(apb_interface_n_1),
        .PSEL(PSEL),
        .PWRITE(PWRITE),
        .\Q_reg[0] (i2c_master_n_33),
        .apb_rxff_rd(apb_rxff_rd),
        .apb_rxff_rd_reg(fifo_rx_0_n_9),
        .apb_txff_wr(apb_txff_wr),
        .apb_txff_wr_reg(fifo_rx_0_n_10),
        .\counter_reg[0]_0 (fifo_tx_0_n_0),
        .\data_out_reg[7] (data_out),
        .\rx_status_reg[0] (apb_interface_n_0));
  design_1_top_core_i2c_0_0_fifo_generator_0 fifo_tx_0
       (.D({fifo_tx_0_n_3,fifo_tx_0_n_4,fifo_tx_0_n_5,fifo_tx_0_n_6,fifo_tx_0_n_7,fifo_tx_0_n_8,fifo_tx_0_n_9,fifo_tx_0_n_10}),
        .PADDR(PADDR),
        .PCLK(PCLK),
        .PENABLE(PENABLE),
        .PRESETn(PRESETn),
        .PRESETn_0(apb_interface_n_1),
        .PSEL(PSEL),
        .PWRITE(PWRITE),
        .PWRITE_0(apb_interface_n_5),
        .Q({Q[2],Q[0]}),
        .apb_rxff_rd(apb_rxff_rd),
        .apb_rxff_rd_reg(fifo_tx_0_n_0),
        .apb_rxff_rd_reg_0(fifo_tx_0_n_11),
        .apb_txff_wr(apb_txff_wr),
        .\counter_reg[0]_0 (fifo_rx_0_n_9),
        .i_txff_rd(i_txff_rd),
        .\reg_data_in_reg[7] (fifo_tx_0_n_2),
        .sclk_reg(i2c_master_n_47),
        .\tx_apb_data_reg[7] (fifo_tx_0_n_1),
        .\tx_apb_data_reg[7]_0 (tx_apb_data));
  design_1_top_core_i2c_0_0_i2c_master i2c_master
       (.D({fifo_tx_0_n_3,fifo_tx_0_n_4,fifo_tx_0_n_5,fifo_tx_0_n_6,fifo_tx_0_n_7,fifo_tx_0_n_8,fifo_tx_0_n_9,fifo_tx_0_n_10}),
        .DI({apb_interface_n_32,apb_interface_n_33,apb_interface_n_34,apb_interface_n_35}),
        .E(i_txff_rd),
        .PCLK(PCLK),
        .PRESETn(apb_interface_n_1),
        .PSEL(apb_interface_n_7),
        .Q({Q[2],Q[0]}),
        .\Q_reg[2]_0 (i2c_master_n_47),
        .S({apb_interface_n_8,apb_interface_n_9,apb_interface_n_10,apb_interface_n_11}),
        .counter(counter),
        .\counter_byte_reg[7]_0 (counter_byte),
        .\counter_clk_reg[15] (\div_clk/counter_clk_reg ),
        .counter_reg(\div_clk/counter_reg ),
        .\counter_reg[2]_0 (apb_interface_n_51),
        .\counter_reg[2]_1 (fifo_tx_0_n_2),
        .i2c_done(i2c_done),
        .i_ready(i_ready),
        .\mem_reg[15][7] (data_out),
        .\rx_status_reg[0] (i2c_master_n_49),
        .\rx_status_reg[0]_0 (apb_interface_n_0),
        .scl_o(scl_o),
        .sda_i(sda_i),
        .sda_o(sda_o),
        .\tx_apb_addr_reg[0] (tx_apb_addr),
        .\tx_apb_data_cnt_reg[7] ({apb_interface_n_39,apb_interface_n_40,apb_interface_n_41,apb_interface_n_42}),
        .\tx_apb_data_cnt_reg[7]_0 (data_cnt),
        .\tx_div_cnt_reg[14] ({apb_interface_n_36,apb_interface_n_37,apb_interface_n_38}),
        .\tx_div_cnt_reg[15] ({apb_interface_n_28,apb_interface_n_29,apb_interface_n_30,apb_interface_n_31}),
        .\tx_div_cnt_reg[15]_0 (div_cnt),
        .\wr_ptr_reg[0] (i2c_master_n_33));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
