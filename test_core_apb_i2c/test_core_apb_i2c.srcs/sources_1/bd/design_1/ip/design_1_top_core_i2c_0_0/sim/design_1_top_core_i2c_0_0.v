// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:top_core_i2c:1.0
// IP Revision: 37

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_top_core_i2c_0_0 (
  PCLK,
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
  scl_o
);

input wire PCLK;
input wire PRESETn;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PSEL" *)
input wire PSEL;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PENABLE" *)
input wire PENABLE;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PWRITE" *)
input wire PWRITE;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PADDR" *)
input wire [31 : 0] PADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PWDATA" *)
input wire [31 : 0] PWDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PRDATA" *)
output wire [31 : 0] PRDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PREADY" *)
output wire PREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 apb_slave PSLVERR" *)
output wire PSLVERR;
input wire sda_i;
output wire sda_o;
output wire scl_o;

  top_core_i2c inst (
    .PCLK(PCLK),
    .PRESETn(PRESETn),
    .PSEL(PSEL),
    .PENABLE(PENABLE),
    .PWRITE(PWRITE),
    .PADDR(PADDR),
    .PWDATA(PWDATA),
    .PRDATA(PRDATA),
    .PREADY(PREADY),
    .PSLVERR(PSLVERR),
    .sda_i(sda_i),
    .sda_o(sda_o),
    .scl_o(scl_o)
  );
endmodule
