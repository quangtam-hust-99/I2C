// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu May 26 23:04:40 2022
// Host        : DESKTOP-6HAUL8U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_core_i2c_0_0_sim_netlist.v
// Design      : design_1_top_core_i2c_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apb_interface
   (\rx_status_reg[0]_0 ,
    i_ready_reg_0,
    apb_rxff_rd,
    i_ready,
    apb_rxff_rd_reg_0,
    S,
    Q,
    sda_o_reg,
    sda_o_reg_0,
    sda_o_reg_1,
    PRDATA,
    clk_en_reg,
    \rx_status_reg[0]_1 ,
    PCLK,
    PADDR,
    PWRITE,
    PENABLE,
    PSEL,
    \counter_byte_reg[7] ,
    \counter_reg[1] ,
    PRESETn,
    PWDATA,
    i2c_done,
    D);
  output \rx_status_reg[0]_0 ;
  output i_ready_reg_0;
  output apb_rxff_rd;
  output i_ready;
  output apb_rxff_rd_reg_0;
  output [3:0]S;
  output [7:0]Q;
  output sda_o_reg;
  output [0:0]sda_o_reg_0;
  output sda_o_reg_1;
  output [7:0]PRDATA;
  output [14:0]clk_en_reg;
  input \rx_status_reg[0]_1 ;
  input PCLK;
  input [2:0]PADDR;
  input PWRITE;
  input PENABLE;
  input PSEL;
  input [7:0]\counter_byte_reg[7] ;
  input [1:0]\counter_reg[1] ;
  input PRESETn;
  input [15:0]PWDATA;
  input i2c_done;
  input [7:0]D;

  wire [7:0]D;
  wire [2:0]PADDR;
  wire PCLK;
  wire PENABLE;
  wire [7:0]PRDATA;
  wire \PRDATA[7]_i_1_n_0 ;
  wire PRESETn;
  wire PSEL;
  wire [15:0]PWDATA;
  wire PWRITE;
  wire [7:0]Q;
  wire [3:0]S;
  wire apb_rxff_rd;
  wire apb_rxff_rd_i_1_n_0;
  wire apb_rxff_rd_reg_0;
  wire [14:0]clk_en_reg;
  wire [7:0]\counter_byte_reg[7] ;
  wire [1:0]\counter_reg[1] ;
  wire i2c_done;
  wire i_ready;
  wire i_ready_i_1_n_0;
  wire i_ready_i_2_n_0;
  wire i_ready_reg_0;
  wire \rx_status_reg[0]_0 ;
  wire \rx_status_reg[0]_1 ;
  wire sda_o_reg;
  wire [0:0]sda_o_reg_0;
  wire sda_o_reg_1;
  wire [7:1]tx_apb_addr;
  wire \tx_apb_addr[7]_i_1_n_0 ;
  wire \tx_apb_data_cnt[7]_i_1_n_0 ;
  wire tx_ctrl;
  wire \tx_ctrl[0]_i_1_n_0 ;
  wire \tx_ctrl_reg_n_0_[0] ;
  wire \tx_div_cnt[15]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'h0040400000000000)) 
    \PRDATA[7]_i_1 
       (.I0(PWRITE),
        .I1(PSEL),
        .I2(PENABLE),
        .I3(PADDR[2]),
        .I4(PADDR[1]),
        .I5(PADDR[0]),
        .O(\PRDATA[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \PRDATA[7]_i_3 
       (.I0(PRESETn),
        .O(i_ready_reg_0));
  FDCE \PRDATA_reg[0] 
       (.C(PCLK),
        .CE(\PRDATA[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(D[0]),
        .Q(PRDATA[0]));
  FDCE \PRDATA_reg[1] 
       (.C(PCLK),
        .CE(\PRDATA[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(D[1]),
        .Q(PRDATA[1]));
  FDCE \PRDATA_reg[2] 
       (.C(PCLK),
        .CE(\PRDATA[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(D[2]),
        .Q(PRDATA[2]));
  FDCE \PRDATA_reg[3] 
       (.C(PCLK),
        .CE(\PRDATA[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(D[3]),
        .Q(PRDATA[3]));
  FDCE \PRDATA_reg[4] 
       (.C(PCLK),
        .CE(\PRDATA[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(D[4]),
        .Q(PRDATA[4]));
  FDCE \PRDATA_reg[5] 
       (.C(PCLK),
        .CE(\PRDATA[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(D[5]),
        .Q(PRDATA[5]));
  FDCE \PRDATA_reg[6] 
       (.C(PCLK),
        .CE(\PRDATA[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(D[6]),
        .Q(PRDATA[6]));
  FDCE \PRDATA_reg[7] 
       (.C(PCLK),
        .CE(\PRDATA[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(D[7]),
        .Q(PRDATA[7]));
  LUT6 #(
    .INIT(64'hFDFF000000200000)) 
    apb_rxff_rd_i_1
       (.I0(PADDR[0]),
        .I1(PADDR[1]),
        .I2(PADDR[2]),
        .I3(PWRITE),
        .I4(apb_rxff_rd_reg_0),
        .I5(apb_rxff_rd),
        .O(apb_rxff_rd_i_1_n_0));
  FDCE apb_rxff_rd_reg
       (.C(PCLK),
        .CE(1'b1),
        .CLR(i_ready_reg_0),
        .D(apb_rxff_rd_i_1_n_0),
        .Q(apb_rxff_rd));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_byte1_carry_i_5
       (.I0(Q[7]),
        .I1(\counter_byte_reg[7] [7]),
        .I2(Q[6]),
        .I3(\counter_byte_reg[7] [6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_byte1_carry_i_6
       (.I0(Q[5]),
        .I1(\counter_byte_reg[7] [5]),
        .I2(Q[4]),
        .I3(\counter_byte_reg[7] [4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_byte1_carry_i_7
       (.I0(Q[3]),
        .I1(\counter_byte_reg[7] [3]),
        .I2(Q[2]),
        .I3(\counter_byte_reg[7] [2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    counter_byte1_carry_i_8
       (.I0(Q[1]),
        .I1(\counter_byte_reg[7] [1]),
        .I2(Q[0]),
        .I3(\counter_byte_reg[7] [0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h0F04)) 
    i_ready_i_1
       (.I0(i_ready_i_2_n_0),
        .I1(\tx_ctrl_reg_n_0_[0] ),
        .I2(i2c_done),
        .I3(i_ready),
        .O(i_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    i_ready_i_2
       (.I0(PENABLE),
        .I1(PSEL),
        .I2(PADDR[0]),
        .I3(PADDR[2]),
        .I4(PADDR[1]),
        .O(i_ready_i_2_n_0));
  FDCE i_ready_reg
       (.C(PCLK),
        .CE(1'b1),
        .CLR(i_ready_reg_0),
        .D(i_ready_i_1_n_0),
        .Q(i_ready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_status[0]_i_2 
       (.I0(PSEL),
        .I1(PENABLE),
        .O(apb_rxff_rd_reg_0));
  FDCE \rx_status_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(i_ready_reg_0),
        .D(\rx_status_reg[0]_1 ),
        .Q(\rx_status_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_o_i_6
       (.I0(tx_apb_addr[7]),
        .I1(tx_apb_addr[6]),
        .I2(\counter_reg[1] [1]),
        .I3(tx_apb_addr[5]),
        .I4(\counter_reg[1] [0]),
        .I5(tx_apb_addr[4]),
        .O(sda_o_reg_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_o_i_7
       (.I0(tx_apb_addr[3]),
        .I1(tx_apb_addr[2]),
        .I2(\counter_reg[1] [1]),
        .I3(tx_apb_addr[1]),
        .I4(\counter_reg[1] [0]),
        .I5(sda_o_reg_0),
        .O(sda_o_reg));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \tx_apb_addr[7]_i_1 
       (.I0(PADDR[0]),
        .I1(PWRITE),
        .I2(PENABLE),
        .I3(PSEL),
        .I4(PADDR[1]),
        .I5(PADDR[2]),
        .O(\tx_apb_addr[7]_i_1_n_0 ));
  FDCE \tx_apb_addr_reg[0] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[0]),
        .Q(sda_o_reg_0));
  FDCE \tx_apb_addr_reg[1] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[1]),
        .Q(tx_apb_addr[1]));
  FDCE \tx_apb_addr_reg[2] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[2]),
        .Q(tx_apb_addr[2]));
  FDCE \tx_apb_addr_reg[3] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[3]),
        .Q(tx_apb_addr[3]));
  FDCE \tx_apb_addr_reg[4] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[4]),
        .Q(tx_apb_addr[4]));
  FDCE \tx_apb_addr_reg[5] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[5]),
        .Q(tx_apb_addr[5]));
  FDCE \tx_apb_addr_reg[6] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[6]),
        .Q(tx_apb_addr[6]));
  FDCE \tx_apb_addr_reg[7] 
       (.C(PCLK),
        .CE(\tx_apb_addr[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[7]),
        .Q(tx_apb_addr[7]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \tx_apb_data_cnt[7]_i_1 
       (.I0(PADDR[0]),
        .I1(PWRITE),
        .I2(PENABLE),
        .I3(PSEL),
        .I4(PADDR[1]),
        .I5(PADDR[2]),
        .O(\tx_apb_data_cnt[7]_i_1_n_0 ));
  FDCE \tx_apb_data_cnt_reg[0] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[0]),
        .Q(Q[0]));
  FDCE \tx_apb_data_cnt_reg[1] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[1]),
        .Q(Q[1]));
  FDCE \tx_apb_data_cnt_reg[2] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[2]),
        .Q(Q[2]));
  FDCE \tx_apb_data_cnt_reg[3] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[3]),
        .Q(Q[3]));
  FDCE \tx_apb_data_cnt_reg[4] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[4]),
        .Q(Q[4]));
  FDCE \tx_apb_data_cnt_reg[5] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[5]),
        .Q(Q[5]));
  FDCE \tx_apb_data_cnt_reg[6] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[6]),
        .Q(Q[6]));
  FDCE \tx_apb_data_cnt_reg[7] 
       (.C(PCLK),
        .CE(\tx_apb_data_cnt[7]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[7]),
        .Q(Q[7]));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \tx_ctrl[0]_i_1 
       (.I0(PWDATA[0]),
        .I1(PSEL),
        .I2(PENABLE),
        .I3(PWRITE),
        .I4(tx_ctrl),
        .I5(\tx_ctrl_reg_n_0_[0] ),
        .O(\tx_ctrl[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h777F777777777777)) 
    \tx_ctrl[0]_i_2 
       (.I0(PENABLE),
        .I1(PSEL),
        .I2(PADDR[1]),
        .I3(PADDR[0]),
        .I4(PADDR[2]),
        .I5(PWRITE),
        .O(tx_ctrl));
  FDCE \tx_ctrl_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(i_ready_reg_0),
        .D(\tx_ctrl[0]_i_1_n_0 ),
        .Q(\tx_ctrl_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \tx_div_cnt[15]_i_1 
       (.I0(PADDR[0]),
        .I1(PWRITE),
        .I2(PENABLE),
        .I3(PSEL),
        .I4(PADDR[1]),
        .I5(PADDR[2]),
        .O(\tx_div_cnt[15]_i_1_n_0 ));
  FDCE \tx_div_cnt_reg[10] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[10]),
        .Q(clk_en_reg[9]));
  FDCE \tx_div_cnt_reg[11] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[11]),
        .Q(clk_en_reg[10]));
  FDCE \tx_div_cnt_reg[12] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[12]),
        .Q(clk_en_reg[11]));
  FDCE \tx_div_cnt_reg[13] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[13]),
        .Q(clk_en_reg[12]));
  FDCE \tx_div_cnt_reg[14] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[14]),
        .Q(clk_en_reg[13]));
  FDCE \tx_div_cnt_reg[15] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[15]),
        .Q(clk_en_reg[14]));
  FDCE \tx_div_cnt_reg[1] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[1]),
        .Q(clk_en_reg[0]));
  FDCE \tx_div_cnt_reg[2] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[2]),
        .Q(clk_en_reg[1]));
  FDCE \tx_div_cnt_reg[3] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[3]),
        .Q(clk_en_reg[2]));
  FDCE \tx_div_cnt_reg[4] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[4]),
        .Q(clk_en_reg[3]));
  FDCE \tx_div_cnt_reg[5] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[5]),
        .Q(clk_en_reg[4]));
  FDCE \tx_div_cnt_reg[6] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[6]),
        .Q(clk_en_reg[5]));
  FDCE \tx_div_cnt_reg[7] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[7]),
        .Q(clk_en_reg[6]));
  FDCE \tx_div_cnt_reg[8] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[8]),
        .Q(clk_en_reg[7]));
  FDCE \tx_div_cnt_reg[9] 
       (.C(PCLK),
        .CE(\tx_div_cnt[15]_i_1_n_0 ),
        .CLR(i_ready_reg_0),
        .D(PWDATA[9]),
        .Q(clk_en_reg[8]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_top_core_i2c_0_0,top_core_i2c,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "top_core_i2c,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_core_i2c inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_div_clk
   (sclk,
    D,
    i2c_done,
    E,
    \counter_reg[4]_0 ,
    \counter_reg[0]_0 ,
    \rx_status_reg[0] ,
    sta_sto_reg,
    PCLK,
    PRESETn,
    \counter_reg[5]_0 ,
    \counter_reg[6]_0 ,
    \counter_reg[7]_0 ,
    \counter_reg[4]_1 ,
    Q,
    i_ready,
    \Q_reg[2] ,
    \counter_byte_reg[6] ,
    \counter_reg[7]_1 ,
    \Q_reg[1] ,
    \counter_byte_reg[3] ,
    \counter_byte_reg[6]_0 ,
    sda_i,
    \counter_reg[5]_1 ,
    \Q_reg[1]_0 ,
    \Q_reg[0] ,
    \Q_reg[1]_1 ,
    \counter_reg[7]_2 ,
    \Q_reg[3] ,
    \Q_reg[0]_0 ,
    \tx_apb_addr_reg[0] ,
    \tx_div_cnt_reg[15] ,
    PADDR,
    PENABLE,
    \rx_status_reg[0]_0 ,
    sta_sto);
  output sclk;
  output [3:0]D;
  output i2c_done;
  output [0:0]E;
  output \counter_reg[4]_0 ;
  output \counter_reg[0]_0 ;
  output \rx_status_reg[0] ;
  output sta_sto_reg;
  input PCLK;
  input PRESETn;
  input \counter_reg[5]_0 ;
  input \counter_reg[6]_0 ;
  input \counter_reg[7]_0 ;
  input \counter_reg[4]_1 ;
  input [3:0]Q;
  input i_ready;
  input \Q_reg[2] ;
  input \counter_byte_reg[6] ;
  input \counter_reg[7]_1 ;
  input \Q_reg[1] ;
  input \counter_byte_reg[3] ;
  input \counter_byte_reg[6]_0 ;
  input sda_i;
  input \counter_reg[5]_1 ;
  input \Q_reg[1]_0 ;
  input \Q_reg[0] ;
  input \Q_reg[1]_1 ;
  input \counter_reg[7]_2 ;
  input \Q_reg[3] ;
  input \Q_reg[0]_0 ;
  input \tx_apb_addr_reg[0] ;
  input [14:0]\tx_div_cnt_reg[15] ;
  input [2:0]PADDR;
  input PENABLE;
  input \rx_status_reg[0]_0 ;
  input sta_sto;

  wire [3:0]D;
  wire [0:0]E;
  wire [2:0]PADDR;
  wire PCLK;
  wire PENABLE;
  wire PRESETn;
  wire [3:0]Q;
  wire \Q[0]_i_2_n_0 ;
  wire \Q[0]_i_3_n_0 ;
  wire \Q[0]_i_4_n_0 ;
  wire \Q[0]_i_5_n_0 ;
  wire \Q[0]_i_8_n_0 ;
  wire \Q[0]_i_9_n_0 ;
  wire \Q[1]_i_10_n_0 ;
  wire \Q[1]_i_2_n_0 ;
  wire \Q[1]_i_3_n_0 ;
  wire \Q[1]_i_6_n_0 ;
  wire \Q[2]_i_3_n_0 ;
  wire \Q[2]_i_4_n_0 ;
  wire \Q[3]_i_4_n_0 ;
  wire \Q[3]_i_5_n_0 ;
  wire \Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[1] ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[1]_1 ;
  wire \Q_reg[2] ;
  wire \Q_reg[3] ;
  wire clk_en;
  wire clk_en_i_1_n_0;
  wire counter1_carry__0_i_1_n_0;
  wire counter1_carry__0_i_2_n_0;
  wire counter1_carry__0_i_3_n_0;
  wire counter1_carry__0_i_4_n_0;
  wire counter1_carry__0_i_5_n_0;
  wire counter1_carry__0_i_6_n_0;
  wire counter1_carry__0_i_7_n_0;
  wire counter1_carry__0_i_8_n_0;
  wire counter1_carry__0_n_1;
  wire counter1_carry__0_n_2;
  wire counter1_carry__0_n_3;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_i_5_n_0;
  wire counter1_carry_i_6_n_0;
  wire counter1_carry_i_7_n_0;
  wire counter1_carry_i_8_n_0;
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
  wire \counter_byte_reg[3] ;
  wire \counter_byte_reg[6] ;
  wire \counter_byte_reg[6]_0 ;
  wire counter_clk1_carry__0_i_1_n_0;
  wire counter_clk1_carry__0_i_2_n_0;
  wire counter_clk1_carry__0_n_2;
  wire counter_clk1_carry__0_n_3;
  wire counter_clk1_carry_i_1_n_0;
  wire counter_clk1_carry_i_2_n_0;
  wire counter_clk1_carry_i_3_n_0;
  wire counter_clk1_carry_i_4_n_0;
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
  wire [15:0]counter_clk_reg;
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
  wire [15:0]counter_reg;
  wire \counter_reg[0]_0 ;
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
  wire \counter_reg[4]_0 ;
  wire \counter_reg[4]_1 ;
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
  wire \counter_reg[6]_0 ;
  wire \counter_reg[7]_0 ;
  wire \counter_reg[7]_1 ;
  wire \counter_reg[7]_2 ;
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
  wire \tx_apb_addr_reg[0] ;
  wire [14:0]\tx_div_cnt_reg[15] ;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_counter_clk1_carry_O_UNCONNECTED;
  wire [3:2]NLW_counter_clk1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_counter_clk1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_counter_clk_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000FFFFFBAA)) 
    \Q[0]_i_1 
       (.I0(Q[3]),
        .I1(\Q[0]_i_2_n_0 ),
        .I2(\Q[0]_i_3_n_0 ),
        .I3(Q[2]),
        .I4(\Q[0]_i_4_n_0 ),
        .I5(\Q[0]_i_5_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \Q[0]_i_2 
       (.I0(\counter_reg[5]_0 ),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[7]_0 ),
        .I3(\counter_reg[4]_1 ),
        .I4(sclk),
        .I5(Q[0]),
        .O(\Q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0EF0000)) 
    \Q[0]_i_3 
       (.I0(\counter_byte_reg[3] ),
        .I1(\counter_byte_reg[6]_0 ),
        .I2(Q[1]),
        .I3(sda_i),
        .I4(sclk),
        .I5(Q[0]),
        .O(\Q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFF00000)) 
    \Q[0]_i_4 
       (.I0(\counter_reg[4]_1 ),
        .I1(\counter_reg[7]_1 ),
        .I2(Q[0]),
        .I3(sclk),
        .I4(\Q_reg[1] ),
        .I5(\Q[0]_i_8_n_0 ),
        .O(\Q[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF010000)) 
    \Q[0]_i_5 
       (.I0(Q[1]),
        .I1(\counter_byte_reg[6]_0 ),
        .I2(\counter_byte_reg[3] ),
        .I3(\Q[0]_i_9_n_0 ),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\Q[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00001500)) 
    \Q[0]_i_8 
       (.I0(Q[2]),
        .I1(sclk),
        .I2(i_ready),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\Q[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Q[0]_i_9 
       (.I0(Q[2]),
        .I1(sclk),
        .O(\Q[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBABBBBBBBB)) 
    \Q[1]_i_1 
       (.I0(\Q[1]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\Q[1]_i_3_n_0 ),
        .I3(\Q_reg[2] ),
        .I4(\counter_byte_reg[6] ),
        .I5(\Q[1]_i_6_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFF575F)) 
    \Q[1]_i_10 
       (.I0(sclk),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(i_ready),
        .I4(Q[1]),
        .O(\Q[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h88888288)) 
    \Q[1]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(sclk),
        .I4(Q[2]),
        .O(\Q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888880CCCCCCCC)) 
    \Q[1]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\counter_reg[5]_1 ),
        .I3(\counter_reg[7]_0 ),
        .I4(\counter_reg[4]_1 ),
        .I5(sclk),
        .O(\Q[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55545555)) 
    \Q[1]_i_6 
       (.I0(\tx_apb_addr_reg[0] ),
        .I1(\counter_reg[4]_1 ),
        .I2(\counter_reg[7]_0 ),
        .I3(\counter_reg[5]_1 ),
        .I4(Q[0]),
        .I5(\Q[1]_i_10_n_0 ),
        .O(\Q[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h004F004F0000004F)) 
    \Q[2]_i_1 
       (.I0(\Q_reg[0] ),
        .I1(\counter_reg[7]_2 ),
        .I2(\Q[2]_i_3_n_0 ),
        .I3(\Q[2]_i_4_n_0 ),
        .I4(\Q_reg[3] ),
        .I5(\Q_reg[1]_0 ),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \Q[2]_i_3 
       (.I0(sclk),
        .I1(Q[3]),
        .O(\Q[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1FF00FF)) 
    \Q[2]_i_4 
       (.I0(\counter_byte_reg[3] ),
        .I1(\counter_byte_reg[6]_0 ),
        .I2(\Q_reg[0]_0 ),
        .I3(sclk),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\Q[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF0EFFFF0E0E0E0E)) 
    \Q[3]_i_1 
       (.I0(\Q_reg[1]_0 ),
        .I1(\Q_reg[0] ),
        .I2(\Q[3]_i_4_n_0 ),
        .I3(\Q_reg[1]_1 ),
        .I4(\Q[3]_i_5_n_0 ),
        .I5(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[3]_i_4 
       (.I0(sclk),
        .I1(Q[2]),
        .O(\Q[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Q[3]_i_5 
       (.I0(Q[0]),
        .I1(sclk),
        .I2(Q[2]),
        .O(\Q[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk_en_i_1
       (.I0(counter_clk1_carry__0_n_2),
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
        .S({counter1_carry_i_5_n_0,counter1_carry_i_6_n_0,counter1_carry_i_7_n_0,counter1_carry_i_8_n_0}));
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({load,counter1_carry__0_n_1,counter1_carry__0_n_2,counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({counter1_carry__0_i_1_n_0,counter1_carry__0_i_2_n_0,counter1_carry__0_i_3_n_0,counter1_carry__0_i_4_n_0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter1_carry__0_i_5_n_0,counter1_carry__0_i_6_n_0,counter1_carry__0_i_7_n_0,counter1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__0_i_1
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(counter1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__0_i_2
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(counter1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__0_i_3
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(counter1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__0_i_4
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(counter1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__0_i_5
       (.I0(counter_reg[15]),
        .I1(counter_reg[14]),
        .O(counter1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__0_i_6
       (.I0(counter_reg[13]),
        .I1(counter_reg[12]),
        .O(counter1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__0_i_7
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .O(counter1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__0_i_8
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .O(counter1_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry_i_1
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .O(counter1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry_i_2
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(counter1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry_i_3
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .O(counter1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry_i_4
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(counter1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry_i_5
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .O(counter1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry_i_6
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .O(counter1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry_i_7
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .O(counter1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry_i_8
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(counter1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .I1(load),
        .O(\counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_3 
       (.I0(counter_reg[3]),
        .I1(load),
        .O(\counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_4 
       (.I0(counter_reg[2]),
        .I1(load),
        .O(\counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_5 
       (.I0(counter_reg[1]),
        .I1(load),
        .O(\counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_6 
       (.I0(counter_reg[0]),
        .I1(load),
        .O(\counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .I1(load),
        .O(\counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .I1(load),
        .O(\counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .I1(load),
        .O(\counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .I1(load),
        .O(\counter[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0F1E0006)) 
    \counter[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(sclk),
        .O(\counter_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \counter[3]_i_2 
       (.I0(sclk),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\counter_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .I1(load),
        .O(\counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .I1(load),
        .O(\counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .I1(load),
        .O(\counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .I1(load),
        .O(\counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .I1(load),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(load),
        .O(\counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .I1(load),
        .O(\counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .I1(load),
        .O(\counter[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000E0A3C)) 
    \counter_byte[7]_i_1 
       (.I0(sclk),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(E));
  CARRY4 counter_clk1_carry
       (.CI(1'b0),
        .CO({counter_clk1_carry_n_0,counter_clk1_carry_n_1,counter_clk1_carry_n_2,counter_clk1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter_clk1_carry_O_UNCONNECTED[3:0]),
        .S({counter_clk1_carry_i_1_n_0,counter_clk1_carry_i_2_n_0,counter_clk1_carry_i_3_n_0,counter_clk1_carry_i_4_n_0}));
  CARRY4 counter_clk1_carry__0
       (.CI(counter_clk1_carry_n_0),
        .CO({NLW_counter_clk1_carry__0_CO_UNCONNECTED[3:2],counter_clk1_carry__0_n_2,counter_clk1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter_clk1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,counter_clk1_carry__0_i_1_n_0,counter_clk1_carry__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_clk1_carry__0_i_1
       (.I0(counter_clk_reg[15]),
        .O(counter_clk1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter_clk1_carry__0_i_2
       (.I0(counter_clk_reg[12]),
        .I1(\tx_div_cnt_reg[15] [12]),
        .I2(counter_clk_reg[13]),
        .I3(\tx_div_cnt_reg[15] [13]),
        .I4(\tx_div_cnt_reg[15] [14]),
        .I5(counter_clk_reg[14]),
        .O(counter_clk1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter_clk1_carry_i_1
       (.I0(counter_clk_reg[10]),
        .I1(\tx_div_cnt_reg[15] [10]),
        .I2(counter_clk_reg[9]),
        .I3(\tx_div_cnt_reg[15] [9]),
        .I4(\tx_div_cnt_reg[15] [11]),
        .I5(counter_clk_reg[11]),
        .O(counter_clk1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter_clk1_carry_i_2
       (.I0(counter_clk_reg[6]),
        .I1(\tx_div_cnt_reg[15] [6]),
        .I2(counter_clk_reg[7]),
        .I3(\tx_div_cnt_reg[15] [7]),
        .I4(\tx_div_cnt_reg[15] [8]),
        .I5(counter_clk_reg[8]),
        .O(counter_clk1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter_clk1_carry_i_3
       (.I0(counter_clk_reg[3]),
        .I1(\tx_div_cnt_reg[15] [3]),
        .I2(counter_clk_reg[4]),
        .I3(\tx_div_cnt_reg[15] [4]),
        .I4(\tx_div_cnt_reg[15] [5]),
        .I5(counter_clk_reg[5]),
        .O(counter_clk1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter_clk1_carry_i_4
       (.I0(counter_clk_reg[2]),
        .I1(\tx_div_cnt_reg[15] [2]),
        .I2(counter_clk_reg[0]),
        .I3(\tx_div_cnt_reg[15] [0]),
        .I4(\tx_div_cnt_reg[15] [1]),
        .I5(counter_clk_reg[1]),
        .O(counter_clk1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[0]_i_2 
       (.I0(counter_clk_reg[0]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[0]_i_3 
       (.I0(counter_clk_reg[3]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[0]_i_4 
       (.I0(counter_clk_reg[2]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[0]_i_5 
       (.I0(counter_clk_reg[1]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_clk[0]_i_6 
       (.I0(counter_clk_reg[0]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[12]_i_2 
       (.I0(counter_clk_reg[15]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[12]_i_3 
       (.I0(counter_clk_reg[14]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[12]_i_4 
       (.I0(counter_clk_reg[13]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[12]_i_5 
       (.I0(counter_clk_reg[12]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[4]_i_2 
       (.I0(counter_clk_reg[7]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[4]_i_3 
       (.I0(counter_clk_reg[6]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[4]_i_4 
       (.I0(counter_clk_reg[5]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[4]_i_5 
       (.I0(counter_clk_reg[4]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[8]_i_2 
       (.I0(counter_clk_reg[11]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[8]_i_3 
       (.I0(counter_clk_reg[10]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[8]_i_4 
       (.I0(counter_clk_reg[9]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[8]_i_5 
       (.I0(counter_clk_reg[8]),
        .I1(counter_clk1_carry__0_n_2),
        .O(\counter_clk[8]_i_5_n_0 ));
  FDCE \counter_clk_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[0]_i_1_n_7 ),
        .Q(counter_clk_reg[0]));
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
        .Q(counter_clk_reg[10]));
  FDCE \counter_clk_reg[11] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[8]_i_1_n_4 ),
        .Q(counter_clk_reg[11]));
  FDCE \counter_clk_reg[12] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[12]_i_1_n_7 ),
        .Q(counter_clk_reg[12]));
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
        .Q(counter_clk_reg[13]));
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
        .Q(counter_clk_reg[1]));
  FDCE \counter_clk_reg[2] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[0]_i_1_n_5 ),
        .Q(counter_clk_reg[2]));
  FDCE \counter_clk_reg[3] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[0]_i_1_n_4 ),
        .Q(counter_clk_reg[3]));
  FDCE \counter_clk_reg[4] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[4]_i_1_n_7 ),
        .Q(counter_clk_reg[4]));
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
        .Q(counter_clk_reg[5]));
  FDCE \counter_clk_reg[6] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[4]_i_1_n_5 ),
        .Q(counter_clk_reg[6]));
  FDCE \counter_clk_reg[7] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[4]_i_1_n_4 ),
        .Q(counter_clk_reg[7]));
  FDCE \counter_clk_reg[8] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_clk_reg[8]_i_1_n_7 ),
        .Q(counter_clk_reg[8]));
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
        .Q(counter_clk_reg[9]));
  FDCE \counter_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]));
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
        .Q(counter_reg[10]));
  FDCE \counter_reg[11] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE \counter_reg[12] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
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
        .Q(counter_reg[13]));
  FDCE \counter_reg[14] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]));
  FDCE \counter_reg[15] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]));
  FDCE \counter_reg[1] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]));
  FDCE \counter_reg[2] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]));
  FDCE \counter_reg[3] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]));
  FDCE \counter_reg[4] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
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
        .Q(counter_reg[5]));
  FDCE \counter_reg[6] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE \counter_reg[7] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE \counter_reg[8] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
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
        .Q(counter_reg[9]));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFF0000)) 
    \rx_status[0]_i_1 
       (.I0(PADDR[1]),
        .I1(PADDR[2]),
        .I2(PADDR[0]),
        .I3(PENABLE),
        .I4(i2c_done),
        .I5(\rx_status_reg[0]_0 ),
        .O(\rx_status_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \rx_status[0]_i_3 
       (.I0(Q[2]),
        .I1(sclk),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(i2c_done));
  FDCE sclk_reg
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(load),
        .Q(sclk));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    sta_sto_i_1
       (.I0(clk_en),
        .I1(sta_sto),
        .O(sta_sto_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator
   (D,
    PADDR,
    sclk_reg,
    apb_rxff_rd,
    PRESETn,
    \rx_status_reg[0] ,
    \data_out_reg[7] ,
    PCLK,
    PRESETn_0);
  output [7:0]D;
  input [0:0]PADDR;
  input sclk_reg;
  input apb_rxff_rd;
  input PRESETn;
  input \rx_status_reg[0] ;
  input [7:0]\data_out_reg[7] ;
  input PCLK;
  input PRESETn_0;

  wire [7:0]D;
  wire [0:0]PADDR;
  wire PCLK;
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
  wire \PRDATA[7]_i_5_n_0 ;
  wire \PRDATA[7]_i_6_n_0 ;
  wire \PRDATA[7]_i_7_n_0 ;
  wire \PRDATA[7]_i_8_n_0 ;
  wire \PRDATA_reg[0]_i_2_n_0 ;
  wire \PRDATA_reg[0]_i_3_n_0 ;
  wire \PRDATA_reg[1]_i_2_n_0 ;
  wire \PRDATA_reg[2]_i_2_n_0 ;
  wire \PRDATA_reg[3]_i_2_n_0 ;
  wire \PRDATA_reg[4]_i_2_n_0 ;
  wire \PRDATA_reg[5]_i_2_n_0 ;
  wire \PRDATA_reg[6]_i_2_n_0 ;
  wire \PRDATA_reg[7]_i_4_n_0 ;
  wire PRESETn;
  wire PRESETn_0;
  wire apb_rxff_rd;
  wire [3:0]counter_reg__0;
  wire [7:0]\data_out_reg[7] ;
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
  wire [3:0]p_0_in__0;
  wire [3:1]p_0_in__1;
  wire rd_ptr1;
  wire [3:0]rd_ptr_reg__0;
  wire \rx_status_reg[0] ;
  wire sclk_reg;
  wire wr_ptr1;
  wire \wr_ptr[0]_i_1_n_0 ;
  wire [3:0]wr_ptr_reg__0;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PRDATA[0]_i_1 
       (.I0(\PRDATA_reg[0]_i_2_n_0 ),
        .I1(rd_ptr_reg__0[3]),
        .I2(\PRDATA_reg[0]_i_3_n_0 ),
        .I3(PADDR),
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
        .I5(PADDR),
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
        .I5(PADDR),
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
        .I5(PADDR),
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
        .I5(PADDR),
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
        .I5(PADDR),
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
        .I5(PADDR),
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
    .INIT(64'hEEE222E200000000)) 
    \PRDATA[7]_i_2 
       (.I0(\PRDATA_reg[7]_i_4_n_0 ),
        .I1(rd_ptr_reg__0[3]),
        .I2(\PRDATA[7]_i_5_n_0 ),
        .I3(rd_ptr_reg__0[2]),
        .I4(\PRDATA[7]_i_6_n_0 ),
        .I5(PADDR),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[7]_i_5 
       (.I0(\mem_reg_n_0_[11][7] ),
        .I1(\mem_reg_n_0_[10][7] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[9][7] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[8][7] ),
        .O(\PRDATA[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[7]_i_6 
       (.I0(\mem_reg_n_0_[15][7] ),
        .I1(\mem_reg_n_0_[14][7] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[13][7] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[12][7] ),
        .O(\PRDATA[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[7]_i_7 
       (.I0(\mem_reg_n_0_[3][7] ),
        .I1(\mem_reg_n_0_[2][7] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[1][7] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[0][7] ),
        .O(\PRDATA[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \PRDATA[7]_i_8 
       (.I0(\mem_reg_n_0_[7][7] ),
        .I1(\mem_reg_n_0_[6][7] ),
        .I2(rd_ptr_reg__0[1]),
        .I3(\mem_reg_n_0_[5][7] ),
        .I4(rd_ptr_reg__0[0]),
        .I5(\mem_reg_n_0_[4][7] ),
        .O(\PRDATA[7]_i_8_n_0 ));
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
  MUXF7 \PRDATA_reg[7]_i_4 
       (.I0(\PRDATA[7]_i_7_n_0 ),
        .I1(\PRDATA[7]_i_8_n_0 ),
        .O(\PRDATA_reg[7]_i_4_n_0 ),
        .S(rd_ptr_reg__0[2]));
  LUT6 #(
    .INIT(64'h00000000AAA85555)) 
    \counter[0]_i_1 
       (.I0(sclk_reg),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .I4(apb_rxff_rd),
        .I5(counter_reg__0[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'h9090908006060606)) 
    \counter[1]_i_1 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(sclk_reg),
        .I3(counter_reg__0[2]),
        .I4(counter_reg__0[3]),
        .I5(apb_rxff_rd),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'hA900A800006A006A)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(sclk_reg),
        .I4(counter_reg__0[3]),
        .I5(apb_rxff_rd),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hAAA8000000006AAA)) 
    \counter[3]_i_1__0 
       (.I0(counter_reg__0[3]),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[0]),
        .I4(sclk_reg),
        .I5(apb_rxff_rd),
        .O(p_0_in__0[3]));
  FDCE \counter_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn_0),
        .D(p_0_in__0[0]),
        .Q(counter_reg__0[0]));
  FDCE \counter_reg[1] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn_0),
        .D(p_0_in__0[1]),
        .Q(counter_reg__0[1]));
  FDCE \counter_reg[2] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn_0),
        .D(p_0_in__0[2]),
        .Q(counter_reg__0[2]));
  FDCE \counter_reg[3] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn_0),
        .D(p_0_in__0[3]),
        .Q(counter_reg__0[3]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \mem[0][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(PRESETn),
        .I2(wr_ptr1),
        .I3(wr_ptr_reg__0[0]),
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
    .INIT(64'h0000000008000000)) 
    \mem[12][7]_i_1 
       (.I0(wr_ptr_reg__0[3]),
        .I1(wr_ptr_reg__0[2]),
        .I2(wr_ptr_reg__0[1]),
        .I3(PRESETn),
        .I4(wr_ptr1),
        .I5(wr_ptr_reg__0[0]),
        .O(\mem[12][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \mem[13][7]_i_1 
       (.I0(wr_ptr_reg__0[3]),
        .I1(wr_ptr_reg__0[2]),
        .I2(wr_ptr_reg__0[1]),
        .I3(PRESETn),
        .I4(wr_ptr1),
        .I5(wr_ptr_reg__0[0]),
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
        .I1(PRESETn),
        .I2(wr_ptr1),
        .I3(wr_ptr_reg__0[0]),
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
    .INIT(64'h0000000000400000)) 
    \mem[4][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(PRESETn),
        .I2(wr_ptr1),
        .I3(wr_ptr_reg__0[0]),
        .I4(wr_ptr_reg__0[2]),
        .I5(wr_ptr_reg__0[3]),
        .O(\mem[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \mem[5][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(PRESETn),
        .I2(wr_ptr1),
        .I3(wr_ptr_reg__0[0]),
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
    .INIT(64'h0000000000400000)) 
    \mem[8][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(PRESETn),
        .I2(wr_ptr1),
        .I3(wr_ptr_reg__0[0]),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \mem[9][7]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(PRESETn),
        .I2(wr_ptr1),
        .I3(wr_ptr_reg__0[0]),
        .I4(wr_ptr_reg__0[3]),
        .I5(wr_ptr_reg__0[2]),
        .O(\mem[9][7]_i_1_n_0 ));
  FDRE \mem_reg[0][0] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \mem_reg[0][1] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \mem_reg[0][2] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \mem_reg[0][3] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \mem_reg[0][4] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \mem_reg[0][5] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \mem_reg[0][6] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \mem_reg[0][7] 
       (.C(PCLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \mem_reg[10][0] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[10][0] ),
        .R(1'b0));
  FDRE \mem_reg[10][1] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[10][1] ),
        .R(1'b0));
  FDRE \mem_reg[10][2] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[10][2] ),
        .R(1'b0));
  FDRE \mem_reg[10][3] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[10][3] ),
        .R(1'b0));
  FDRE \mem_reg[10][4] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[10][4] ),
        .R(1'b0));
  FDRE \mem_reg[10][5] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[10][5] ),
        .R(1'b0));
  FDRE \mem_reg[10][6] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[10][6] ),
        .R(1'b0));
  FDRE \mem_reg[10][7] 
       (.C(PCLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[10][7] ),
        .R(1'b0));
  FDRE \mem_reg[11][0] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[11][0] ),
        .R(1'b0));
  FDRE \mem_reg[11][1] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[11][1] ),
        .R(1'b0));
  FDRE \mem_reg[11][2] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[11][2] ),
        .R(1'b0));
  FDRE \mem_reg[11][3] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[11][3] ),
        .R(1'b0));
  FDRE \mem_reg[11][4] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[11][4] ),
        .R(1'b0));
  FDRE \mem_reg[11][5] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[11][5] ),
        .R(1'b0));
  FDRE \mem_reg[11][6] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[11][6] ),
        .R(1'b0));
  FDRE \mem_reg[11][7] 
       (.C(PCLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[11][7] ),
        .R(1'b0));
  FDRE \mem_reg[12][0] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[12][0] ),
        .R(1'b0));
  FDRE \mem_reg[12][1] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[12][1] ),
        .R(1'b0));
  FDRE \mem_reg[12][2] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[12][2] ),
        .R(1'b0));
  FDRE \mem_reg[12][3] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[12][3] ),
        .R(1'b0));
  FDRE \mem_reg[12][4] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[12][4] ),
        .R(1'b0));
  FDRE \mem_reg[12][5] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[12][5] ),
        .R(1'b0));
  FDRE \mem_reg[12][6] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[12][6] ),
        .R(1'b0));
  FDRE \mem_reg[12][7] 
       (.C(PCLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[12][7] ),
        .R(1'b0));
  FDRE \mem_reg[13][0] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[13][0] ),
        .R(1'b0));
  FDRE \mem_reg[13][1] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[13][1] ),
        .R(1'b0));
  FDRE \mem_reg[13][2] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[13][2] ),
        .R(1'b0));
  FDRE \mem_reg[13][3] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[13][3] ),
        .R(1'b0));
  FDRE \mem_reg[13][4] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[13][4] ),
        .R(1'b0));
  FDRE \mem_reg[13][5] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[13][5] ),
        .R(1'b0));
  FDRE \mem_reg[13][6] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[13][6] ),
        .R(1'b0));
  FDRE \mem_reg[13][7] 
       (.C(PCLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[13][7] ),
        .R(1'b0));
  FDRE \mem_reg[14][0] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[14][0] ),
        .R(1'b0));
  FDRE \mem_reg[14][1] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[14][1] ),
        .R(1'b0));
  FDRE \mem_reg[14][2] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[14][2] ),
        .R(1'b0));
  FDRE \mem_reg[14][3] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[14][3] ),
        .R(1'b0));
  FDRE \mem_reg[14][4] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[14][4] ),
        .R(1'b0));
  FDRE \mem_reg[14][5] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[14][5] ),
        .R(1'b0));
  FDRE \mem_reg[14][6] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[14][6] ),
        .R(1'b0));
  FDRE \mem_reg[14][7] 
       (.C(PCLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[14][7] ),
        .R(1'b0));
  FDRE \mem_reg[15][0] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[15][0] ),
        .R(1'b0));
  FDRE \mem_reg[15][1] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[15][1] ),
        .R(1'b0));
  FDRE \mem_reg[15][2] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[15][2] ),
        .R(1'b0));
  FDRE \mem_reg[15][3] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[15][3] ),
        .R(1'b0));
  FDRE \mem_reg[15][4] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[15][4] ),
        .R(1'b0));
  FDRE \mem_reg[15][5] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[15][5] ),
        .R(1'b0));
  FDRE \mem_reg[15][6] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[15][6] ),
        .R(1'b0));
  FDRE \mem_reg[15][7] 
       (.C(PCLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[15][7] ),
        .R(1'b0));
  FDRE \mem_reg[1][0] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \mem_reg[1][1] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \mem_reg[1][2] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \mem_reg[1][3] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \mem_reg[1][4] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \mem_reg[1][5] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \mem_reg[1][6] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \mem_reg[1][7] 
       (.C(PCLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \mem_reg[2][0] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE \mem_reg[2][1] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[2][1] ),
        .R(1'b0));
  FDRE \mem_reg[2][2] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[2][2] ),
        .R(1'b0));
  FDRE \mem_reg[2][3] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[2][3] ),
        .R(1'b0));
  FDRE \mem_reg[2][4] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[2][4] ),
        .R(1'b0));
  FDRE \mem_reg[2][5] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[2][5] ),
        .R(1'b0));
  FDRE \mem_reg[2][6] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[2][6] ),
        .R(1'b0));
  FDRE \mem_reg[2][7] 
       (.C(PCLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[2][7] ),
        .R(1'b0));
  FDRE \mem_reg[3][0] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[3][0] ),
        .R(1'b0));
  FDRE \mem_reg[3][1] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[3][1] ),
        .R(1'b0));
  FDRE \mem_reg[3][2] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[3][2] ),
        .R(1'b0));
  FDRE \mem_reg[3][3] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[3][3] ),
        .R(1'b0));
  FDRE \mem_reg[3][4] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[3][4] ),
        .R(1'b0));
  FDRE \mem_reg[3][5] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[3][5] ),
        .R(1'b0));
  FDRE \mem_reg[3][6] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[3][6] ),
        .R(1'b0));
  FDRE \mem_reg[3][7] 
       (.C(PCLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[3][7] ),
        .R(1'b0));
  FDRE \mem_reg[4][0] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[4][0] ),
        .R(1'b0));
  FDRE \mem_reg[4][1] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[4][1] ),
        .R(1'b0));
  FDRE \mem_reg[4][2] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[4][2] ),
        .R(1'b0));
  FDRE \mem_reg[4][3] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[4][3] ),
        .R(1'b0));
  FDRE \mem_reg[4][4] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[4][4] ),
        .R(1'b0));
  FDRE \mem_reg[4][5] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[4][5] ),
        .R(1'b0));
  FDRE \mem_reg[4][6] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[4][6] ),
        .R(1'b0));
  FDRE \mem_reg[4][7] 
       (.C(PCLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[4][7] ),
        .R(1'b0));
  FDRE \mem_reg[5][0] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[5][0] ),
        .R(1'b0));
  FDRE \mem_reg[5][1] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[5][1] ),
        .R(1'b0));
  FDRE \mem_reg[5][2] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[5][2] ),
        .R(1'b0));
  FDRE \mem_reg[5][3] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[5][3] ),
        .R(1'b0));
  FDRE \mem_reg[5][4] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[5][4] ),
        .R(1'b0));
  FDRE \mem_reg[5][5] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[5][5] ),
        .R(1'b0));
  FDRE \mem_reg[5][6] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[5][6] ),
        .R(1'b0));
  FDRE \mem_reg[5][7] 
       (.C(PCLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[5][7] ),
        .R(1'b0));
  FDRE \mem_reg[6][0] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[6][0] ),
        .R(1'b0));
  FDRE \mem_reg[6][1] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[6][1] ),
        .R(1'b0));
  FDRE \mem_reg[6][2] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[6][2] ),
        .R(1'b0));
  FDRE \mem_reg[6][3] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[6][3] ),
        .R(1'b0));
  FDRE \mem_reg[6][4] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[6][4] ),
        .R(1'b0));
  FDRE \mem_reg[6][5] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[6][5] ),
        .R(1'b0));
  FDRE \mem_reg[6][6] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[6][6] ),
        .R(1'b0));
  FDRE \mem_reg[6][7] 
       (.C(PCLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[6][7] ),
        .R(1'b0));
  FDRE \mem_reg[7][0] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[7][0] ),
        .R(1'b0));
  FDRE \mem_reg[7][1] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[7][1] ),
        .R(1'b0));
  FDRE \mem_reg[7][2] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[7][2] ),
        .R(1'b0));
  FDRE \mem_reg[7][3] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[7][3] ),
        .R(1'b0));
  FDRE \mem_reg[7][4] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[7][4] ),
        .R(1'b0));
  FDRE \mem_reg[7][5] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[7][5] ),
        .R(1'b0));
  FDRE \mem_reg[7][6] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[7][6] ),
        .R(1'b0));
  FDRE \mem_reg[7][7] 
       (.C(PCLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[7][7] ),
        .R(1'b0));
  FDRE \mem_reg[8][0] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[8][0] ),
        .R(1'b0));
  FDRE \mem_reg[8][1] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[8][1] ),
        .R(1'b0));
  FDRE \mem_reg[8][2] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[8][2] ),
        .R(1'b0));
  FDRE \mem_reg[8][3] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[8][3] ),
        .R(1'b0));
  FDRE \mem_reg[8][4] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[8][4] ),
        .R(1'b0));
  FDRE \mem_reg[8][5] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[8][5] ),
        .R(1'b0));
  FDRE \mem_reg[8][6] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[8][6] ),
        .R(1'b0));
  FDRE \mem_reg[8][7] 
       (.C(PCLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[8][7] ),
        .R(1'b0));
  FDRE \mem_reg[9][0] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [0]),
        .Q(\mem_reg_n_0_[9][0] ),
        .R(1'b0));
  FDRE \mem_reg[9][1] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [1]),
        .Q(\mem_reg_n_0_[9][1] ),
        .R(1'b0));
  FDRE \mem_reg[9][2] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [2]),
        .Q(\mem_reg_n_0_[9][2] ),
        .R(1'b0));
  FDRE \mem_reg[9][3] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [3]),
        .Q(\mem_reg_n_0_[9][3] ),
        .R(1'b0));
  FDRE \mem_reg[9][4] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [4]),
        .Q(\mem_reg_n_0_[9][4] ),
        .R(1'b0));
  FDRE \mem_reg[9][5] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [5]),
        .Q(\mem_reg_n_0_[9][5] ),
        .R(1'b0));
  FDRE \mem_reg[9][6] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [6]),
        .Q(\mem_reg_n_0_[9][6] ),
        .R(1'b0));
  FDRE \mem_reg[9][7] 
       (.C(PCLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\data_out_reg[7] [7]),
        .Q(\mem_reg_n_0_[9][7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(rd_ptr_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr_reg__0[0]),
        .I1(rd_ptr_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
        .I1(counter_reg__0[3]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[2]),
        .O(rd_ptr1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1 
       (.I0(wr_ptr_reg__0[0]),
        .O(\wr_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_ptr[2]_i_1 
       (.I0(wr_ptr_reg__0[2]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr_reg__0[1]),
        .O(p_0_in__1[2]));
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \wr_ptr[3]_i_1 
       (.I0(counter_reg__0[3]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[2]),
        .I4(sclk_reg),
        .O(wr_ptr1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_ptr[3]_i_2 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_master
   (sda_o,
    Q,
    \counter_byte_reg[7]_0 ,
    i2c_done,
    \counter_reg[0]_0 ,
    scl_o,
    \rx_status_reg[0] ,
    \mem_reg[15][7] ,
    PCLK,
    PRESETn,
    S,
    \tx_apb_addr_reg[0] ,
    sda_i,
    i_ready,
    \tx_apb_data_cnt_reg[7] ,
    \tx_apb_addr_reg[7] ,
    \tx_apb_addr_reg[3] ,
    \tx_div_cnt_reg[15] ,
    PADDR,
    PENABLE,
    \rx_status_reg[0]_0 );
  output sda_o;
  output [1:0]Q;
  output [7:0]\counter_byte_reg[7]_0 ;
  output i2c_done;
  output \counter_reg[0]_0 ;
  output scl_o;
  output \rx_status_reg[0] ;
  output [7:0]\mem_reg[15][7] ;
  input PCLK;
  input PRESETn;
  input [3:0]S;
  input [0:0]\tx_apb_addr_reg[0] ;
  input sda_i;
  input i_ready;
  input [7:0]\tx_apb_data_cnt_reg[7] ;
  input \tx_apb_addr_reg[7] ;
  input \tx_apb_addr_reg[3] ;
  input [14:0]\tx_div_cnt_reg[15] ;
  input [2:0]PADDR;
  input PENABLE;
  input \rx_status_reg[0]_0 ;

  wire [2:0]PADDR;
  wire PCLK;
  wire PENABLE;
  wire PRESETn;
  wire [1:0]Q;
  wire \Q[0]_i_6_n_0 ;
  wire \Q[0]_i_7_n_0 ;
  wire \Q[1]_i_4_n_0 ;
  wire \Q[1]_i_5_n_0 ;
  wire \Q[1]_i_7_n_0 ;
  wire \Q[1]_i_8_n_0 ;
  wire \Q[1]_i_9_n_0 ;
  wire \Q[2]_i_2_n_0 ;
  wire \Q[2]_i_5_n_0 ;
  wire \Q[2]_i_6_n_0 ;
  wire \Q[2]_i_7_n_0 ;
  wire \Q[3]_i_2_n_0 ;
  wire \Q[3]_i_3_n_0 ;
  wire \Q[3]_i_6_n_0 ;
  wire [3:0]Q_0;
  wire [3:0]Q_next;
  wire [3:0]S;
  wire [2:2]counter;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire \counter[7]_i_3_n_0 ;
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
  wire \counter_reg[0]_0 ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \data_out[0]_i_1_n_0 ;
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
  wire div_clk_n_10;
  wire div_clk_n_6;
  wire div_clk_n_7;
  wire i2c_done;
  wire i_ready;
  wire [7:0]\mem_reg[15][7] ;
  wire [3:1]p_1_in;
  wire \rx_status_reg[0] ;
  wire \rx_status_reg[0]_0 ;
  wire scl_o;
  wire sclk;
  wire sda_i;
  wire sda_o;
  wire sda_o_i_1_n_0;
  wire sda_o_i_2_n_0;
  wire sda_o_i_3_n_0;
  wire sda_o_i_4_n_0;
  wire sda_o_i_5_n_0;
  wire sta_sto;
  wire [0:0]\tx_apb_addr_reg[0] ;
  wire \tx_apb_addr_reg[3] ;
  wire \tx_apb_addr_reg[7] ;
  wire [7:0]\tx_apb_data_cnt_reg[7] ;
  wire [14:0]\tx_div_cnt_reg[15] ;
  wire [3:0]NLW_counter_byte1_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[0]_i_6 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter_reg_n_0_[5] ),
        .O(\Q[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q[0]_i_7 
       (.I0(Q_0[1]),
        .I1(Q_0[2]),
        .O(\Q[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Q[1]_i_4 
       (.I0(Q_0[2]),
        .I1(Q_0[1]),
        .I2(Q_0[0]),
        .O(\Q[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[1]_i_5 
       (.I0(\counter_byte_reg[7]_0 [6]),
        .I1(\counter_byte_reg[7]_0 [5]),
        .I2(\counter_byte_reg[7]_0 [7]),
        .I3(\counter_byte_reg[7]_0 [4]),
        .I4(\counter_byte[4]_i_2_n_0 ),
        .I5(\Q[1]_i_8_n_0 ),
        .O(\Q[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Q[1]_i_7 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[6] ),
        .O(\Q[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Q[1]_i_8 
       (.I0(Q_0[0]),
        .I1(Q_0[1]),
        .O(\Q[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0EFF)) 
    \Q[1]_i_9 
       (.I0(\tx_apb_addr_reg[0] ),
        .I1(sda_i),
        .I2(Q_0[0]),
        .I3(Q_0[2]),
        .O(\Q[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Q[2]_i_2 
       (.I0(\counter[7]_i_3_n_0 ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\Q[2]_i_6_n_0 ),
        .O(\Q[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Q[2]_i_5 
       (.I0(Q_0[3]),
        .I1(Q_0[2]),
        .O(\Q[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \Q[2]_i_6 
       (.I0(Q_0[1]),
        .I1(Q_0[0]),
        .I2(Q_0[2]),
        .O(\Q[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Q[2]_i_7 
       (.I0(Q_0[0]),
        .I1(Q_0[1]),
        .O(\Q[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \Q[3]_i_2 
       (.I0(Q_0[1]),
        .I1(Q_0[0]),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[7] ),
        .I5(\counter[7]_i_3_n_0 ),
        .O(\Q[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h010F0100)) 
    \Q[3]_i_3 
       (.I0(\counter_byte[4]_i_2_n_0 ),
        .I1(\Q[3]_i_6_n_0 ),
        .I2(Q_0[0]),
        .I3(Q_0[1]),
        .I4(sda_i),
        .O(\Q[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Q[3]_i_6 
       (.I0(\counter_byte_reg[7]_0 [6]),
        .I1(\counter_byte_reg[7]_0 [5]),
        .I2(\counter_byte_reg[7]_0 [7]),
        .I3(\counter_byte_reg[7]_0 [4]),
        .O(\Q[3]_i_6_n_0 ));
  FDPE \Q_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .D(Q_next[0]),
        .PRE(PRESETn),
        .Q(Q_0[0]));
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
        .Q(Q_0[2]));
  FDCE \Q_reg[3] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(Q_next[3]),
        .Q(Q_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h37FF)) 
    \counter[0]_i_1__0 
       (.I0(Q_0[2]),
        .I1(Q_0[0]),
        .I2(Q_0[1]),
        .I3(Q[0]),
        .O(\counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFF3737FF)) 
    \counter[1]_i_1__0 
       (.I0(Q_0[2]),
        .I1(Q_0[0]),
        .I2(Q_0[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFFFF37373737FF)) 
    \counter[2]_i_1__0 
       (.I0(Q_0[2]),
        .I1(Q_0[0]),
        .I2(Q_0[1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(counter),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'h0000FE01)) 
    \counter[3]_i_2__0 
       (.I0(counter),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter[3]_i_3_n_0 ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h37)) 
    \counter[3]_i_3 
       (.I0(Q_0[1]),
        .I1(Q_0[0]),
        .I2(Q_0[2]),
        .O(\counter[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \counter[4]_i_1 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(counter),
        .I2(\counter_reg_n_0_[3] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \counter[5]_i_1 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\counter_reg_n_0_[3] ),
        .I4(counter),
        .I5(\counter_reg_n_0_[4] ),
        .O(\counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \counter[6]_i_1 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter[7]_i_3_n_0 ),
        .I2(\counter_reg_n_0_[5] ),
        .O(\counter[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000B0328)) 
    \counter[7]_i_1 
       (.I0(sclk),
        .I1(Q_0[2]),
        .I2(Q_0[3]),
        .I3(Q_0[0]),
        .I4(Q_0[1]),
        .O(\counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \counter[7]_i_2 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter[7]_i_3_n_0 ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[6] ),
        .O(\counter[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[7]_i_3 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(counter),
        .I2(\counter_reg_n_0_[3] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\counter[7]_i_3_n_0 ));
  CARRY4 counter_byte1_carry
       (.CI(1'b0),
        .CO({counter_byte1,counter_byte1_carry_n_1,counter_byte1_carry_n_2,counter_byte1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({counter_byte1_carry_i_1_n_0,counter_byte1_carry_i_2_n_0,counter_byte1_carry_i_3_n_0,counter_byte1_carry_i_4_n_0}),
        .O(NLW_counter_byte1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter_byte1_carry_i_1
       (.I0(\counter_byte_reg[7]_0 [7]),
        .I1(\tx_apb_data_cnt_reg[7] [7]),
        .I2(\counter_byte_reg[7]_0 [6]),
        .I3(\tx_apb_data_cnt_reg[7] [6]),
        .O(counter_byte1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter_byte1_carry_i_2
       (.I0(\counter_byte_reg[7]_0 [5]),
        .I1(\tx_apb_data_cnt_reg[7] [5]),
        .I2(\counter_byte_reg[7]_0 [4]),
        .I3(\tx_apb_data_cnt_reg[7] [4]),
        .O(counter_byte1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter_byte1_carry_i_3
       (.I0(\counter_byte_reg[7]_0 [3]),
        .I1(\tx_apb_data_cnt_reg[7] [3]),
        .I2(\counter_byte_reg[7]_0 [2]),
        .I3(\tx_apb_data_cnt_reg[7] [2]),
        .O(counter_byte1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter_byte1_carry_i_4
       (.I0(\counter_byte_reg[7]_0 [1]),
        .I1(\tx_apb_data_cnt_reg[7] [1]),
        .I2(\counter_byte_reg[7]_0 [0]),
        .I3(\tx_apb_data_cnt_reg[7] [0]),
        .O(counter_byte1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hBBFFFFB011001010)) 
    \counter_byte[0]_i_1 
       (.I0(counter_byte1),
        .I1(\counter_byte_reg[7]_0 [0]),
        .I2(Q_0[3]),
        .I3(Q_0[2]),
        .I4(Q_0[1]),
        .I5(\tx_apb_data_cnt_reg[7] [0]),
        .O(\counter_byte[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA88A20022002)) 
    \counter_byte[1]_i_1 
       (.I0(\counter_byte[7]_i_3_n_0 ),
        .I1(counter_byte1),
        .I2(\counter_byte_reg[7]_0 [1]),
        .I3(\counter_byte_reg[7]_0 [0]),
        .I4(\counter_byte[7]_i_5_n_0 ),
        .I5(\tx_apb_data_cnt_reg[7] [1]),
        .O(\counter_byte[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA88A20022002)) 
    \counter_byte[2]_i_1 
       (.I0(\counter_byte[7]_i_3_n_0 ),
        .I1(counter_byte1),
        .I2(\counter_byte[2]_i_2_n_0 ),
        .I3(\counter_byte_reg[7]_0 [2]),
        .I4(\counter_byte[7]_i_5_n_0 ),
        .I5(\tx_apb_data_cnt_reg[7] [2]),
        .O(\counter_byte[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
        .I5(\tx_apb_data_cnt_reg[7] [3]),
        .O(\counter_byte[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \counter_byte[3]_i_2 
       (.I0(\counter_byte_reg[7]_0 [2]),
        .I1(\counter_byte_reg[7]_0 [1]),
        .I2(\counter_byte_reg[7]_0 [0]),
        .O(\counter_byte[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA88A20022002)) 
    \counter_byte[4]_i_1 
       (.I0(\counter_byte[7]_i_3_n_0 ),
        .I1(counter_byte1),
        .I2(\counter_byte[4]_i_2_n_0 ),
        .I3(\counter_byte_reg[7]_0 [4]),
        .I4(\counter_byte[7]_i_5_n_0 ),
        .I5(\tx_apb_data_cnt_reg[7] [4]),
        .O(\counter_byte[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
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
        .I5(\tx_apb_data_cnt_reg[7] [5]),
        .O(\counter_byte[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \counter_byte[5]_i_2 
       (.I0(\counter_byte_reg[7]_0 [4]),
        .I1(\counter_byte_reg[7]_0 [2]),
        .I2(\counter_byte_reg[7]_0 [1]),
        .I3(\counter_byte_reg[7]_0 [0]),
        .I4(\counter_byte_reg[7]_0 [3]),
        .O(\counter_byte[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAA822202220)) 
    \counter_byte[6]_i_1 
       (.I0(\counter_byte[7]_i_3_n_0 ),
        .I1(counter_byte1),
        .I2(\counter_byte[6]_i_2_n_0 ),
        .I3(\counter_byte[7]_i_4_n_0 ),
        .I4(\counter_byte[7]_i_5_n_0 ),
        .I5(\tx_apb_data_cnt_reg[7] [6]),
        .O(\counter_byte[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \counter_byte[6]_i_2 
       (.I0(\counter_byte_reg[7]_0 [6]),
        .I1(\counter_byte_reg[7]_0 [5]),
        .I2(\counter_byte[5]_i_2_n_0 ),
        .O(\counter_byte[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8CC804400440)) 
    \counter_byte[7]_i_2 
       (.I0(counter_byte1),
        .I1(\counter_byte[7]_i_3_n_0 ),
        .I2(\counter_byte[7]_i_4_n_0 ),
        .I3(\counter_byte_reg[7]_0 [7]),
        .I4(\counter_byte[7]_i_5_n_0 ),
        .I5(\tx_apb_data_cnt_reg[7] [7]),
        .O(\counter_byte[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_byte[7]_i_3 
       (.I0(Q_0[2]),
        .I1(Q_0[1]),
        .I2(Q_0[3]),
        .O(\counter_byte[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \counter_byte[7]_i_4 
       (.I0(\counter_byte[5]_i_2_n_0 ),
        .I1(\counter_byte_reg[7]_0 [6]),
        .I2(\counter_byte_reg[7]_0 [5]),
        .O(\counter_byte[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_byte[7]_i_5 
       (.I0(Q_0[2]),
        .I1(Q_0[1]),
        .O(\counter_byte[7]_i_5_n_0 ));
  FDRE \counter_byte_reg[0] 
       (.C(PCLK),
        .CE(div_clk_n_6),
        .D(\counter_byte[0]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \counter_byte_reg[1] 
       (.C(PCLK),
        .CE(div_clk_n_6),
        .D(\counter_byte[1]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \counter_byte_reg[2] 
       (.C(PCLK),
        .CE(div_clk_n_6),
        .D(\counter_byte[2]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \counter_byte_reg[3] 
       (.C(PCLK),
        .CE(div_clk_n_6),
        .D(\counter_byte[3]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \counter_byte_reg[4] 
       (.C(PCLK),
        .CE(div_clk_n_6),
        .D(\counter_byte[4]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \counter_byte_reg[5] 
       (.C(PCLK),
        .CE(div_clk_n_6),
        .D(\counter_byte[5]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \counter_byte_reg[6] 
       (.C(PCLK),
        .CE(div_clk_n_6),
        .D(\counter_byte[6]_i_1_n_0 ),
        .Q(\counter_byte_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \counter_byte_reg[7] 
       (.C(PCLK),
        .CE(div_clk_n_6),
        .D(\counter_byte[7]_i_2_n_0 ),
        .Q(\counter_byte_reg[7]_0 [7]),
        .R(1'b0));
  FDRE \counter_reg[0] 
       (.C(PCLK),
        .CE(div_clk_n_7),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(PCLK),
        .CE(div_clk_n_7),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(PCLK),
        .CE(div_clk_n_7),
        .D(p_1_in[2]),
        .Q(counter),
        .R(1'b0));
  FDRE \counter_reg[3] 
       (.C(PCLK),
        .CE(div_clk_n_7),
        .D(p_1_in[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \counter_reg[4] 
       (.C(PCLK),
        .CE(div_clk_n_7),
        .D(\counter[4]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[4] ),
        .R(\counter[7]_i_1_n_0 ));
  FDRE \counter_reg[5] 
       (.C(PCLK),
        .CE(div_clk_n_7),
        .D(\counter[5]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[5] ),
        .R(\counter[7]_i_1_n_0 ));
  FDRE \counter_reg[6] 
       (.C(PCLK),
        .CE(div_clk_n_7),
        .D(\counter[6]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[6] ),
        .R(\counter[7]_i_1_n_0 ));
  FDRE \counter_reg[7] 
       (.C(PCLK),
        .CE(div_clk_n_7),
        .D(\counter[7]_i_2_n_0 ),
        .Q(\counter_reg_n_0_[7] ),
        .R(\counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    \data_out[0]_i_1 
       (.I0(sda_i),
        .I1(Q_0[3]),
        .I2(\Q[2]_i_2_n_0 ),
        .I3(\mem_reg[15][7] [0]),
        .O(\data_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[1]_i_1 
       (.I0(sda_i),
        .I1(\data_out[3]_i_2_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\mem_reg[15][7] [1]),
        .O(\data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[2]_i_1 
       (.I0(sda_i),
        .I1(\data_out[3]_i_2_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\mem_reg[15][7] [2]),
        .O(\data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \data_out[3]_i_1 
       (.I0(sda_i),
        .I1(\data_out[3]_i_2_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\mem_reg[15][7] [3]),
        .O(\data_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_out[3]_i_2 
       (.I0(counter),
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
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\mem_reg[15][7] [4]),
        .O(\data_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[5]_i_1 
       (.I0(sda_i),
        .I1(\data_out[7]_i_2_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\mem_reg[15][7] [5]),
        .O(\data_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_out[6]_i_1 
       (.I0(sda_i),
        .I1(\data_out[7]_i_2_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\mem_reg[15][7] [6]),
        .O(\data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \data_out[7]_i_1 
       (.I0(sda_i),
        .I1(\data_out[7]_i_2_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\mem_reg[15][7] [7]),
        .O(\data_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \data_out[7]_i_2 
       (.I0(counter),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[7] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[6] ),
        .O(\data_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \data_out[7]_i_3 
       (.I0(Q_0[3]),
        .I1(Q_0[2]),
        .I2(Q_0[0]),
        .I3(Q_0[1]),
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_div_clk div_clk
       (.D(Q_next),
        .E(div_clk_n_6),
        .PADDR(PADDR),
        .PCLK(PCLK),
        .PENABLE(PENABLE),
        .PRESETn(PRESETn),
        .Q(Q_0),
        .\Q_reg[0] (\Q[3]_i_3_n_0 ),
        .\Q_reg[0]_0 (\Q[2]_i_7_n_0 ),
        .\Q_reg[1] (\Q[0]_i_7_n_0 ),
        .\Q_reg[1]_0 (\Q[3]_i_2_n_0 ),
        .\Q_reg[1]_1 (sda_o_i_4_n_0),
        .\Q_reg[2] (\Q[1]_i_4_n_0 ),
        .\Q_reg[3] (\Q[2]_i_5_n_0 ),
        .\counter_byte_reg[3] (\counter_byte[4]_i_2_n_0 ),
        .\counter_byte_reg[6] (\Q[1]_i_5_n_0 ),
        .\counter_byte_reg[6]_0 (\Q[3]_i_6_n_0 ),
        .\counter_reg[0]_0 (\counter_reg[0]_0 ),
        .\counter_reg[4]_0 (div_clk_n_7),
        .\counter_reg[4]_1 (\counter[7]_i_3_n_0 ),
        .\counter_reg[5]_0 (\counter_reg_n_0_[5] ),
        .\counter_reg[5]_1 (\Q[1]_i_7_n_0 ),
        .\counter_reg[6]_0 (\counter_reg_n_0_[6] ),
        .\counter_reg[7]_0 (\counter_reg_n_0_[7] ),
        .\counter_reg[7]_1 (\Q[0]_i_6_n_0 ),
        .\counter_reg[7]_2 (\Q[2]_i_2_n_0 ),
        .i2c_done(i2c_done),
        .i_ready(i_ready),
        .\rx_status_reg[0] (\rx_status_reg[0] ),
        .\rx_status_reg[0]_0 (\rx_status_reg[0]_0 ),
        .sclk(sclk),
        .sda_i(sda_i),
        .sta_sto(sta_sto),
        .sta_sto_reg(div_clk_n_10),
        .\tx_apb_addr_reg[0] (\Q[1]_i_9_n_0 ),
        .\tx_div_cnt_reg[15] (\tx_div_cnt_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFB0006)) 
    scl_o_INST_0
       (.I0(Q_0[0]),
        .I1(Q_0[1]),
        .I2(Q_0[2]),
        .I3(Q_0[3]),
        .I4(sta_sto),
        .O(scl_o));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    sda_o_i_1
       (.I0(sda_o_i_2_n_0),
        .I1(sda_o_i_3_n_0),
        .I2(Q_0[3]),
        .I3(sda_o_i_4_n_0),
        .I4(sda_o_i_5_n_0),
        .I5(sda_o),
        .O(sda_o_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    sda_o_i_2
       (.I0(Q_0[3]),
        .I1(Q_0[2]),
        .I2(Q_0[1]),
        .I3(Q_0[0]),
        .O(sda_o_i_2_n_0));
  LUT6 #(
    .INIT(64'hFBFFFBBBBBBBBBBB)) 
    sda_o_i_3
       (.I0(Q_0[2]),
        .I1(Q_0[1]),
        .I2(\tx_apb_addr_reg[7] ),
        .I3(counter),
        .I4(\tx_apb_addr_reg[3] ),
        .I5(Q_0[0]),
        .O(sda_o_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sda_o_i_4
       (.I0(Q_0[1]),
        .I1(\counter_byte_reg[7]_0 [6]),
        .I2(\counter_byte_reg[7]_0 [5]),
        .I3(\counter_byte_reg[7]_0 [7]),
        .I4(\counter_byte_reg[7]_0 [4]),
        .I5(\counter_byte[4]_i_2_n_0 ),
        .O(sda_o_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0F5E)) 
    sda_o_i_5
       (.I0(Q_0[0]),
        .I1(Q_0[1]),
        .I2(Q_0[3]),
        .I3(Q_0[2]),
        .O(sda_o_i_5_n_0));
  FDRE sda_o_reg
       (.C(PCLK),
        .CE(1'b1),
        .D(sda_o_i_1_n_0),
        .Q(sda_o),
        .R(1'b0));
  FDCE sta_sto_reg
       (.C(PCLK),
        .CE(1'b1),
        .CLR(PRESETn),
        .D(div_clk_n_10),
        .Q(sta_sto));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_core_i2c
   (PRDATA,
    scl_o,
    sda_o,
    sda_i,
    PADDR,
    PCLK,
    PWDATA,
    PWRITE,
    PENABLE,
    PSEL,
    PRESETn);
  output [7:0]PRDATA;
  output scl_o;
  output sda_o;
  input sda_i;
  input [2:0]PADDR;
  input PCLK;
  input [15:0]PWDATA;
  input PWRITE;
  input PENABLE;
  input PSEL;
  input PRESETn;

  wire [2:0]PADDR;
  wire PCLK;
  wire PENABLE;
  wire [7:0]PRDATA;
  wire PRESETn;
  wire PSEL;
  wire [15:0]PWDATA;
  wire PWRITE;
  wire apb_interface_n_0;
  wire apb_interface_n_1;
  wire apb_interface_n_17;
  wire apb_interface_n_19;
  wire apb_interface_n_4;
  wire apb_interface_n_5;
  wire apb_interface_n_6;
  wire apb_interface_n_7;
  wire apb_interface_n_8;
  wire apb_rxff_rd;
  wire [1:0]counter;
  wire [7:0]counter_byte;
  wire [7:0]data_cnt;
  wire [7:0]data_out;
  wire fifo_rx_0_n_0;
  wire fifo_rx_0_n_1;
  wire fifo_rx_0_n_2;
  wire fifo_rx_0_n_3;
  wire fifo_rx_0_n_4;
  wire fifo_rx_0_n_5;
  wire fifo_rx_0_n_6;
  wire fifo_rx_0_n_7;
  wire i2c_done;
  wire i2c_master_n_12;
  wire i2c_master_n_14;
  wire i_ready;
  wire scl_o;
  wire sda_i;
  wire sda_o;
  wire [0:0]tx_apb_addr;
  wire [15:1]tx_div_cnt;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apb_interface apb_interface
       (.D({fifo_rx_0_n_0,fifo_rx_0_n_1,fifo_rx_0_n_2,fifo_rx_0_n_3,fifo_rx_0_n_4,fifo_rx_0_n_5,fifo_rx_0_n_6,fifo_rx_0_n_7}),
        .PADDR(PADDR),
        .PCLK(PCLK),
        .PENABLE(PENABLE),
        .PRDATA(PRDATA),
        .PRESETn(PRESETn),
        .PSEL(PSEL),
        .PWDATA(PWDATA),
        .PWRITE(PWRITE),
        .Q(data_cnt),
        .S({apb_interface_n_5,apb_interface_n_6,apb_interface_n_7,apb_interface_n_8}),
        .apb_rxff_rd(apb_rxff_rd),
        .apb_rxff_rd_reg_0(apb_interface_n_4),
        .clk_en_reg(tx_div_cnt),
        .\counter_byte_reg[7] (counter_byte),
        .\counter_reg[1] (counter),
        .i2c_done(i2c_done),
        .i_ready(i_ready),
        .i_ready_reg_0(apb_interface_n_1),
        .\rx_status_reg[0]_0 (apb_interface_n_0),
        .\rx_status_reg[0]_1 (i2c_master_n_14),
        .sda_o_reg(apb_interface_n_17),
        .sda_o_reg_0(tx_apb_addr),
        .sda_o_reg_1(apb_interface_n_19));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator fifo_rx_0
       (.D({fifo_rx_0_n_0,fifo_rx_0_n_1,fifo_rx_0_n_2,fifo_rx_0_n_3,fifo_rx_0_n_4,fifo_rx_0_n_5,fifo_rx_0_n_6,fifo_rx_0_n_7}),
        .PADDR(PADDR[2]),
        .PCLK(PCLK),
        .PRESETn(PRESETn),
        .PRESETn_0(apb_interface_n_1),
        .apb_rxff_rd(apb_rxff_rd),
        .\data_out_reg[7] (data_out),
        .\rx_status_reg[0] (apb_interface_n_0),
        .sclk_reg(i2c_master_n_12));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_master i2c_master
       (.PADDR(PADDR),
        .PCLK(PCLK),
        .PENABLE(apb_interface_n_4),
        .PRESETn(apb_interface_n_1),
        .Q(counter),
        .S({apb_interface_n_5,apb_interface_n_6,apb_interface_n_7,apb_interface_n_8}),
        .\counter_byte_reg[7]_0 (counter_byte),
        .\counter_reg[0]_0 (i2c_master_n_12),
        .i2c_done(i2c_done),
        .i_ready(i_ready),
        .\mem_reg[15][7] (data_out),
        .\rx_status_reg[0] (i2c_master_n_14),
        .\rx_status_reg[0]_0 (apb_interface_n_0),
        .scl_o(scl_o),
        .sda_i(sda_i),
        .sda_o(sda_o),
        .\tx_apb_addr_reg[0] (tx_apb_addr),
        .\tx_apb_addr_reg[3] (apb_interface_n_17),
        .\tx_apb_addr_reg[7] (apb_interface_n_19),
        .\tx_apb_data_cnt_reg[7] (data_cnt),
        .\tx_div_cnt_reg[15] (tx_div_cnt));
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
