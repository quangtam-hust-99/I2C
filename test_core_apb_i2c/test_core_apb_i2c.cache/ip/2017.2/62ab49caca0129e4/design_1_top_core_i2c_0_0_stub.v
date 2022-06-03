// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Jun  1 13:40:53 2022
// Host        : DESKTOP-6HAUL8U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_core_i2c_0_0_stub.v
// Design      : design_1_top_core_i2c_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top_core_i2c,Vivado 2017.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(PCLK, PRESETn, PSEL, PENABLE, PWRITE, PADDR, PWDATA, 
  PRDATA, PREADY, PSLVERR, sda_i, sda_o, scl_o)
/* synthesis syn_black_box black_box_pad_pin="PCLK,PRESETn,PSEL,PENABLE,PWRITE,PADDR[31:0],PWDATA[31:0],PRDATA[31:0],PREADY,PSLVERR,sda_i,sda_o,scl_o" */;
  input PCLK;
  input PRESETn;
  input PSEL;
  input PENABLE;
  input PWRITE;
  input [31:0]PADDR;
  input [31:0]PWDATA;
  output [31:0]PRDATA;
  output PREADY;
  output PSLVERR;
  input sda_i;
  output sda_o;
  output scl_o;
endmodule
