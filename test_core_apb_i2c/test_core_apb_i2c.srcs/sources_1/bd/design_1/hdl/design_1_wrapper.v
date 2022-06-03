//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Fri Jun  3 09:41:10 2022
//Host        : DESKTOP-6HAUL8U running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_n,
    clk_out2,
    clk_p,
    reset,
    rx,
    scl_o,
    sda_i,
    sda_o,
    tx);
  input clk_n;
  output clk_out2;
  input clk_p;
  input reset;
  input rx;
  output scl_o;
  input sda_i;
  output sda_o;
  output tx;

  wire clk_n;
  wire clk_out2;
  wire clk_p;
  wire reset;
  wire rx;
  wire scl_o;
  wire sda_i;
  wire sda_o;
  wire tx;

  design_1 design_1_i
       (.clk_n(clk_n),
        .clk_out2(clk_out2),
        .clk_p(clk_p),
        .reset(reset),
        .rx(rx),
        .scl_o(scl_o),
        .sda_i(sda_i),
        .sda_o(sda_o),
        .tx(tx));
endmodule
