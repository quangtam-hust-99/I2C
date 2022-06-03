-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Fri Jun  3 09:41:38 2022
-- Host        : DESKTOP-6HAUL8U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/vivado/project/test_core_apb_i2c/test_core_apb_i2c.srcs/sources_1/bd/design_1/ip/design_1_top_core_i2c_0_0/design_1_top_core_i2c_0_0_stub.vhdl
-- Design      : design_1_top_core_i2c_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_top_core_i2c_0_0 is
  Port ( 
    PCLK : in STD_LOGIC;
    PRESETn : in STD_LOGIC;
    PSEL : in STD_LOGIC;
    PENABLE : in STD_LOGIC;
    PWRITE : in STD_LOGIC;
    PADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PWDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PRDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PREADY : out STD_LOGIC;
    PSLVERR : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    scl_o : out STD_LOGIC
  );

end design_1_top_core_i2c_0_0;

architecture stub of design_1_top_core_i2c_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "PCLK,PRESETn,PSEL,PENABLE,PWRITE,PADDR[31:0],PWDATA[31:0],PRDATA[31:0],PREADY,PSLVERR,sda_i,sda_o,scl_o";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top_core_i2c,Vivado 2017.2";
begin
end;
