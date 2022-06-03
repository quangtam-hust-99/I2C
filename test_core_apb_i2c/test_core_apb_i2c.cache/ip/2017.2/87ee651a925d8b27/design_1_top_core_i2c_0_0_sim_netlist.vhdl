-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu May 26 23:14:15 2022
-- Host        : DESKTOP-6HAUL8U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_core_i2c_0_0_sim_netlist.vhdl
-- Design      : design_1_top_core_i2c_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apb_interface is
  port (
    \rx_status_reg[0]_0\ : out STD_LOGIC;
    \tx_div_cnt_reg[0]_0\ : out STD_LOGIC;
    apb_rxff_rd : out STD_LOGIC;
    i_ready : out STD_LOGIC;
    apb_rxff_rd_reg_0 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sclk_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_en_reg : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \counter_byte_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \counter_byte_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sda_o_reg : out STD_LOGIC;
    sda_o_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    sda_o_reg_1 : out STD_LOGIC;
    PRDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \rx_status_reg[0]_1\ : in STD_LOGIC;
    PCLK : in STD_LOGIC;
    PADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    PWRITE : in STD_LOGIC;
    PENABLE : in STD_LOGIC;
    PSEL : in STD_LOGIC;
    counter_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    counter_clk_reg : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \counter_byte_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PRESETn : in STD_LOGIC;
    PWDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i2c_done : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apb_interface;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apb_interface is
  signal \PRDATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^apb_rxff_rd\ : STD_LOGIC;
  signal apb_rxff_rd_i_1_n_0 : STD_LOGIC;
  signal \^apb_rxff_rd_reg_0\ : STD_LOGIC;
  signal \^counter_byte_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^i_ready\ : STD_LOGIC;
  signal i_ready_i_1_n_0 : STD_LOGIC;
  signal i_ready_i_2_n_0 : STD_LOGIC;
  signal \^sda_o_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tx_apb_addr : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \tx_apb_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_apb_data_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal tx_ctrl : STD_LOGIC;
  signal \tx_ctrl[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_ctrl_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_div_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \^tx_div_cnt_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of i_ready_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rx_status[0]_i_2\ : label is "soft_lutpair0";
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
  apb_rxff_rd <= \^apb_rxff_rd\;
  apb_rxff_rd_reg_0 <= \^apb_rxff_rd_reg_0\;
  \counter_byte_reg[7]\(7 downto 0) <= \^counter_byte_reg[7]\(7 downto 0);
  i_ready <= \^i_ready\;
  sda_o_reg_0(0) <= \^sda_o_reg_0\(0);
  \tx_div_cnt_reg[0]_0\ <= \^tx_div_cnt_reg[0]_0\;
\PRDATA[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040400000000000"
    )
        port map (
      I0 => PWRITE,
      I1 => PSEL,
      I2 => PENABLE,
      I3 => PADDR(2),
      I4 => PADDR(1),
      I5 => PADDR(0),
      O => \PRDATA[7]_i_1_n_0\
    );
\PRDATA[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PRESETn,
      O => \^tx_div_cnt_reg[0]_0\
    );
\PRDATA_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \PRDATA[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => D(0),
      Q => PRDATA(0)
    );
\PRDATA_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \PRDATA[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => D(1),
      Q => PRDATA(1)
    );
\PRDATA_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \PRDATA[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => D(2),
      Q => PRDATA(2)
    );
\PRDATA_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \PRDATA[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => D(3),
      Q => PRDATA(3)
    );
\PRDATA_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \PRDATA[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => D(4),
      Q => PRDATA(4)
    );
\PRDATA_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \PRDATA[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => D(5),
      Q => PRDATA(5)
    );
\PRDATA_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \PRDATA[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => D(6),
      Q => PRDATA(6)
    );
\PRDATA_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \PRDATA[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => D(7),
      Q => PRDATA(7)
    );
apb_rxff_rd_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCC4CC00004000"
    )
        port map (
      I0 => PWRITE,
      I1 => \^apb_rxff_rd_reg_0\,
      I2 => PADDR(2),
      I3 => PADDR(0),
      I4 => PADDR(1),
      I5 => \^apb_rxff_rd\,
      O => apb_rxff_rd_i_1_n_0
    );
apb_rxff_rd_reg: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => apb_rxff_rd_i_1_n_0,
      Q => \^apb_rxff_rd\
    );
\counter1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(15),
      I1 => counter_reg(15),
      I2 => \^q\(14),
      I3 => counter_reg(14),
      O => sclk_reg(3)
    );
\counter1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(13),
      I1 => counter_reg(13),
      I2 => \^q\(12),
      I3 => counter_reg(12),
      O => sclk_reg(2)
    );
\counter1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(11),
      I1 => counter_reg(11),
      I2 => \^q\(10),
      I3 => counter_reg(10),
      O => sclk_reg(1)
    );
\counter1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(9),
      I1 => counter_reg(9),
      I2 => \^q\(8),
      I3 => counter_reg(8),
      O => sclk_reg(0)
    );
counter1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(7),
      I1 => counter_reg(7),
      I2 => \^q\(6),
      I3 => counter_reg(6),
      O => S(3)
    );
counter1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(5),
      I1 => counter_reg(5),
      I2 => \^q\(4),
      I3 => counter_reg(4),
      O => S(2)
    );
counter1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(3),
      I1 => counter_reg(3),
      I2 => \^q\(2),
      I3 => counter_reg(2),
      O => S(1)
    );
counter1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(1),
      I1 => counter_reg(1),
      I2 => \^q\(0),
      I3 => counter_reg(0),
      O => S(0)
    );
counter_byte1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_byte_reg[7]\(7),
      I1 => \counter_byte_reg[7]_0\(7),
      I2 => \^counter_byte_reg[7]\(6),
      I3 => \counter_byte_reg[7]_0\(6),
      O => \counter_byte_reg[1]\(3)
    );
counter_byte1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_byte_reg[7]\(5),
      I1 => \counter_byte_reg[7]_0\(5),
      I2 => \^counter_byte_reg[7]\(4),
      I3 => \counter_byte_reg[7]_0\(4),
      O => \counter_byte_reg[1]\(2)
    );
counter_byte1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_byte_reg[7]\(3),
      I1 => \counter_byte_reg[7]_0\(3),
      I2 => \^counter_byte_reg[7]\(2),
      I3 => \counter_byte_reg[7]_0\(2),
      O => \counter_byte_reg[1]\(1)
    );
counter_byte1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_byte_reg[7]\(1),
      I1 => \counter_byte_reg[7]_0\(1),
      I2 => \^counter_byte_reg[7]\(0),
      I3 => \counter_byte_reg[7]_0\(0),
      O => \counter_byte_reg[1]\(0)
    );
\counter_clk1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(14),
      I1 => counter_clk_reg(13),
      I2 => counter_clk_reg(12),
      I3 => \^q\(13),
      O => clk_en_reg(2)
    );
\counter_clk1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(12),
      I1 => counter_clk_reg(11),
      I2 => counter_clk_reg(10),
      I3 => \^q\(11),
      O => clk_en_reg(1)
    );
\counter_clk1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(10),
      I1 => counter_clk_reg(9),
      I2 => counter_clk_reg(8),
      I3 => \^q\(9),
      O => clk_en_reg(0)
    );
counter_clk1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(8),
      I1 => counter_clk_reg(7),
      I2 => counter_clk_reg(6),
      I3 => \^q\(7),
      O => DI(3)
    );
counter_clk1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(6),
      I1 => counter_clk_reg(5),
      I2 => counter_clk_reg(4),
      I3 => \^q\(5),
      O => DI(2)
    );
counter_clk1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(4),
      I1 => counter_clk_reg(3),
      I2 => counter_clk_reg(2),
      I3 => \^q\(3),
      O => DI(1)
    );
counter_clk1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(2),
      I1 => counter_clk_reg(1),
      I2 => counter_clk_reg(0),
      I3 => \^q\(1),
      O => DI(0)
    );
i_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F04"
    )
        port map (
      I0 => i_ready_i_2_n_0,
      I1 => \tx_ctrl_reg_n_0_[0]\,
      I2 => i2c_done,
      I3 => \^i_ready\,
      O => i_ready_i_1_n_0
    );
i_ready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => PENABLE,
      I1 => PSEL,
      I2 => PADDR(0),
      I3 => PADDR(2),
      I4 => PADDR(1),
      O => i_ready_i_2_n_0
    );
i_ready_reg: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => i_ready_i_1_n_0,
      Q => \^i_ready\
    );
\rx_status[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => PSEL,
      I1 => PENABLE,
      O => \^apb_rxff_rd_reg_0\
    );
\rx_status_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => \rx_status_reg[0]_1\,
      Q => \rx_status_reg[0]_0\
    );
sda_o_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_apb_addr(7),
      I1 => tx_apb_addr(6),
      I2 => \counter_reg[1]\(1),
      I3 => tx_apb_addr(5),
      I4 => \counter_reg[1]\(0),
      I5 => tx_apb_addr(4),
      O => sda_o_reg_1
    );
sda_o_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_apb_addr(3),
      I1 => tx_apb_addr(2),
      I2 => \counter_reg[1]\(1),
      I3 => tx_apb_addr(1),
      I4 => \counter_reg[1]\(0),
      I5 => \^sda_o_reg_0\(0),
      O => sda_o_reg
    );
\tx_apb_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => PADDR(0),
      I1 => PWRITE,
      I2 => PENABLE,
      I3 => PSEL,
      I4 => PADDR(1),
      I5 => PADDR(2),
      O => \tx_apb_addr[7]_i_1_n_0\
    );
\tx_apb_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_addr[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(0),
      Q => \^sda_o_reg_0\(0)
    );
\tx_apb_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_addr[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(1),
      Q => tx_apb_addr(1)
    );
\tx_apb_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_addr[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(2),
      Q => tx_apb_addr(2)
    );
\tx_apb_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_addr[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(3),
      Q => tx_apb_addr(3)
    );
\tx_apb_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_addr[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(4),
      Q => tx_apb_addr(4)
    );
\tx_apb_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_addr[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(5),
      Q => tx_apb_addr(5)
    );
\tx_apb_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_addr[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(6),
      Q => tx_apb_addr(6)
    );
\tx_apb_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_addr[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(7),
      Q => tx_apb_addr(7)
    );
\tx_apb_data_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => PADDR(0),
      I1 => PWRITE,
      I2 => PENABLE,
      I3 => PSEL,
      I4 => PADDR(1),
      I5 => PADDR(2),
      O => \tx_apb_data_cnt[7]_i_1_n_0\
    );
\tx_apb_data_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_data_cnt[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(0),
      Q => \^counter_byte_reg[7]\(0)
    );
\tx_apb_data_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_data_cnt[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(1),
      Q => \^counter_byte_reg[7]\(1)
    );
\tx_apb_data_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_data_cnt[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(2),
      Q => \^counter_byte_reg[7]\(2)
    );
\tx_apb_data_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_data_cnt[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(3),
      Q => \^counter_byte_reg[7]\(3)
    );
\tx_apb_data_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_data_cnt[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(4),
      Q => \^counter_byte_reg[7]\(4)
    );
\tx_apb_data_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_data_cnt[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(5),
      Q => \^counter_byte_reg[7]\(5)
    );
\tx_apb_data_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_data_cnt[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(6),
      Q => \^counter_byte_reg[7]\(6)
    );
\tx_apb_data_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_apb_data_cnt[7]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(7),
      Q => \^counter_byte_reg[7]\(7)
    );
\tx_ctrl[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => PWDATA(0),
      I1 => PSEL,
      I2 => PENABLE,
      I3 => PWRITE,
      I4 => tx_ctrl,
      I5 => \tx_ctrl_reg_n_0_[0]\,
      O => \tx_ctrl[0]_i_1_n_0\
    );
\tx_ctrl[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777F777777777777"
    )
        port map (
      I0 => PENABLE,
      I1 => PSEL,
      I2 => PADDR(1),
      I3 => PADDR(0),
      I4 => PADDR(2),
      I5 => PWRITE,
      O => tx_ctrl
    );
\tx_ctrl_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => \tx_ctrl[0]_i_1_n_0\,
      Q => \tx_ctrl_reg_n_0_[0]\
    );
\tx_div_cnt[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => PADDR(0),
      I1 => PWRITE,
      I2 => PENABLE,
      I3 => PSEL,
      I4 => PADDR(1),
      I5 => PADDR(2),
      O => \tx_div_cnt[15]_i_1_n_0\
    );
\tx_div_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(0),
      Q => \^q\(0)
    );
\tx_div_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(10),
      Q => \^q\(10)
    );
\tx_div_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(11),
      Q => \^q\(11)
    );
\tx_div_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(12),
      Q => \^q\(12)
    );
\tx_div_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(13),
      Q => \^q\(13)
    );
\tx_div_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(14),
      Q => \^q\(14)
    );
\tx_div_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(15),
      Q => \^q\(15)
    );
\tx_div_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(1),
      Q => \^q\(1)
    );
\tx_div_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(2),
      Q => \^q\(2)
    );
\tx_div_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(3),
      Q => \^q\(3)
    );
\tx_div_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(4),
      Q => \^q\(4)
    );
\tx_div_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(5),
      Q => \^q\(5)
    );
\tx_div_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(6),
      Q => \^q\(6)
    );
\tx_div_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(7),
      Q => \^q\(7)
    );
\tx_div_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(8),
      Q => \^q\(8)
    );
\tx_div_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \tx_div_cnt[15]_i_1_n_0\,
      CLR => \^tx_div_cnt_reg[0]_0\,
      D => PWDATA(9),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_div_clk is
  port (
    sclk : out STD_LOGIC;
    \counter_reg[3]_0\ : out STD_LOGIC;
    counter_reg : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \counter_clk_reg[3]_0\ : out STD_LOGIC;
    \counter_clk_reg[15]_0\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i2c_done : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[4]_0\ : out STD_LOGIC;
    \counter_reg[0]_0\ : out STD_LOGIC;
    \rx_status_reg[0]\ : out STD_LOGIC;
    sta_sto_reg : out STD_LOGIC;
    PCLK : in STD_LOGIC;
    PRESETn : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_div_cnt_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_div_cnt_reg[14]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \counter_reg[5]_0\ : in STD_LOGIC;
    \counter_reg[6]_0\ : in STD_LOGIC;
    \counter_reg[7]_0\ : in STD_LOGIC;
    \counter_reg[4]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_ready : in STD_LOGIC;
    \Q_reg[2]\ : in STD_LOGIC;
    \counter_byte_reg[6]\ : in STD_LOGIC;
    \counter_reg[7]_1\ : in STD_LOGIC;
    \Q_reg[1]\ : in STD_LOGIC;
    \counter_byte_reg[3]\ : in STD_LOGIC;
    \counter_byte_reg[6]_0\ : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    \counter_reg[5]_1\ : in STD_LOGIC;
    \Q_reg[1]_0\ : in STD_LOGIC;
    \Q_reg[0]\ : in STD_LOGIC;
    \Q_reg[1]_1\ : in STD_LOGIC;
    \counter_reg[7]_2\ : in STD_LOGIC;
    \Q_reg[3]\ : in STD_LOGIC;
    \Q_reg[0]_0\ : in STD_LOGIC;
    \tx_apb_addr_reg[0]\ : in STD_LOGIC;
    \tx_div_cnt_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    PENABLE : in STD_LOGIC;
    \rx_status_reg[0]_0\ : in STD_LOGIC;
    sta_sto : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_div_clk;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_div_clk is
  signal \Q[0]_i_2_n_0\ : STD_LOGIC;
  signal \Q[0]_i_3_n_0\ : STD_LOGIC;
  signal \Q[0]_i_4_n_0\ : STD_LOGIC;
  signal \Q[0]_i_5_n_0\ : STD_LOGIC;
  signal \Q[0]_i_8_n_0\ : STD_LOGIC;
  signal \Q[0]_i_9_n_0\ : STD_LOGIC;
  signal \Q[1]_i_10_n_0\ : STD_LOGIC;
  signal \Q[1]_i_2_n_0\ : STD_LOGIC;
  signal \Q[1]_i_3_n_0\ : STD_LOGIC;
  signal \Q[1]_i_6_n_0\ : STD_LOGIC;
  signal \Q[2]_i_3_n_0\ : STD_LOGIC;
  signal \Q[2]_i_4_n_0\ : STD_LOGIC;
  signal \Q[3]_i_4_n_0\ : STD_LOGIC;
  signal \Q[3]_i_5_n_0\ : STD_LOGIC;
  signal clk_en : STD_LOGIC;
  signal clk_en_i_1_n_0 : STD_LOGIC;
  signal \counter1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_n_1\ : STD_LOGIC;
  signal \counter1_carry__0_n_2\ : STD_LOGIC;
  signal \counter1_carry__0_n_3\ : STD_LOGIC;
  signal counter1_carry_i_1_n_0 : STD_LOGIC;
  signal counter1_carry_i_2_n_0 : STD_LOGIC;
  signal counter1_carry_i_3_n_0 : STD_LOGIC;
  signal counter1_carry_i_4_n_0 : STD_LOGIC;
  signal counter1_carry_n_0 : STD_LOGIC;
  signal counter1_carry_n_1 : STD_LOGIC;
  signal counter1_carry_n_2 : STD_LOGIC;
  signal counter1_carry_n_3 : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal \counter_clk1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter_clk1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter_clk1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \counter_clk1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \counter_clk1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \counter_clk1_carry__0_n_0\ : STD_LOGIC;
  signal \counter_clk1_carry__0_n_1\ : STD_LOGIC;
  signal \counter_clk1_carry__0_n_2\ : STD_LOGIC;
  signal \counter_clk1_carry__0_n_3\ : STD_LOGIC;
  signal counter_clk1_carry_i_5_n_0 : STD_LOGIC;
  signal counter_clk1_carry_i_6_n_0 : STD_LOGIC;
  signal counter_clk1_carry_i_7_n_0 : STD_LOGIC;
  signal counter_clk1_carry_i_8_n_0 : STD_LOGIC;
  signal counter_clk1_carry_n_0 : STD_LOGIC;
  signal counter_clk1_carry_n_1 : STD_LOGIC;
  signal counter_clk1_carry_n_2 : STD_LOGIC;
  signal counter_clk1_carry_n_3 : STD_LOGIC;
  signal \counter_clk[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_clk[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_clk[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_clk[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter_clk[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter_clk[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_clk[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter_clk[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter_clk[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter_clk[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_clk[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter_clk[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter_clk[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter_clk[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_clk[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_clk[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter_clk[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_clk_reg : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal \counter_clk_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \^counter_clk_reg[15]_0\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^counter_clk_reg[3]_0\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^counter_reg\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \^counter_reg[3]_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^i2c_done\ : STD_LOGIC;
  signal load : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
  signal NLW_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_counter_clk1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_clk1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_clk_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q[0]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Q[0]_i_9\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Q[1]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Q[1]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Q[3]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Q[3]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of clk_en_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter_byte[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rx_status[0]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sta_sto_i_1 : label is "soft_lutpair10";
begin
  \counter_clk_reg[15]_0\(12 downto 0) <= \^counter_clk_reg[15]_0\(12 downto 0);
  \counter_clk_reg[3]_0\ <= \^counter_clk_reg[3]_0\;
  counter_reg(14 downto 0) <= \^counter_reg\(14 downto 0);
  \counter_reg[3]_0\ <= \^counter_reg[3]_0\;
  i2c_done <= \^i2c_done\;
  sclk <= \^sclk\;
\Q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFBAA"
    )
        port map (
      I0 => Q(3),
      I1 => \Q[0]_i_2_n_0\,
      I2 => \Q[0]_i_3_n_0\,
      I3 => Q(2),
      I4 => \Q[0]_i_4_n_0\,
      I5 => \Q[0]_i_5_n_0\,
      O => D(0)
    );
\Q[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => \counter_reg[5]_0\,
      I1 => \counter_reg[6]_0\,
      I2 => \counter_reg[7]_0\,
      I3 => \counter_reg[4]_1\,
      I4 => \^sclk\,
      I5 => Q(0),
      O => \Q[0]_i_2_n_0\
    );
\Q[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E0EF0000"
    )
        port map (
      I0 => \counter_byte_reg[3]\,
      I1 => \counter_byte_reg[6]_0\,
      I2 => Q(1),
      I3 => sda_i,
      I4 => \^sclk\,
      I5 => Q(0),
      O => \Q[0]_i_3_n_0\
    );
\Q[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFF00000"
    )
        port map (
      I0 => \counter_reg[4]_1\,
      I1 => \counter_reg[7]_1\,
      I2 => Q(0),
      I3 => \^sclk\,
      I4 => \Q_reg[1]\,
      I5 => \Q[0]_i_8_n_0\,
      O => \Q[0]_i_4_n_0\
    );
\Q[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF010000"
    )
        port map (
      I0 => Q(1),
      I1 => \counter_byte_reg[6]_0\,
      I2 => \counter_byte_reg[3]\,
      I3 => \Q[0]_i_9_n_0\,
      I4 => Q(3),
      I5 => Q(0),
      O => \Q[0]_i_5_n_0\
    );
\Q[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001500"
    )
        port map (
      I0 => Q(2),
      I1 => \^sclk\,
      I2 => i_ready,
      I3 => Q(0),
      I4 => Q(1),
      O => \Q[0]_i_8_n_0\
    );
\Q[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(2),
      I1 => \^sclk\,
      O => \Q[0]_i_9_n_0\
    );
\Q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBABBBBBBBB"
    )
        port map (
      I0 => \Q[1]_i_2_n_0\,
      I1 => Q(3),
      I2 => \Q[1]_i_3_n_0\,
      I3 => \Q_reg[2]\,
      I4 => \counter_byte_reg[6]\,
      I5 => \Q[1]_i_6_n_0\,
      O => D(1)
    );
\Q[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF575F"
    )
        port map (
      I0 => \^sclk\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => i_ready,
      I4 => Q(1),
      O => \Q[1]_i_10_n_0\
    );
\Q[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888288"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^sclk\,
      I4 => Q(2),
      O => \Q[1]_i_2_n_0\
    );
\Q[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888880CCCCCCCC"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \counter_reg[5]_1\,
      I3 => \counter_reg[7]_0\,
      I4 => \counter_reg[4]_1\,
      I5 => \^sclk\,
      O => \Q[1]_i_3_n_0\
    );
\Q[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55545555"
    )
        port map (
      I0 => \tx_apb_addr_reg[0]\,
      I1 => \counter_reg[4]_1\,
      I2 => \counter_reg[7]_0\,
      I3 => \counter_reg[5]_1\,
      I4 => Q(0),
      I5 => \Q[1]_i_10_n_0\,
      O => \Q[1]_i_6_n_0\
    );
\Q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004F004F0000004F"
    )
        port map (
      I0 => \Q_reg[0]\,
      I1 => \counter_reg[7]_2\,
      I2 => \Q[2]_i_3_n_0\,
      I3 => \Q[2]_i_4_n_0\,
      I4 => \Q_reg[3]\,
      I5 => \Q_reg[1]_0\,
      O => D(2)
    );
\Q[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sclk\,
      I1 => Q(3),
      O => \Q[2]_i_3_n_0\
    );
\Q[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F1FF00FF"
    )
        port map (
      I0 => \counter_byte_reg[3]\,
      I1 => \counter_byte_reg[6]_0\,
      I2 => \Q_reg[0]_0\,
      I3 => \^sclk\,
      I4 => Q(3),
      I5 => Q(2),
      O => \Q[2]_i_4_n_0\
    );
\Q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0EFFFF0E0E0E0E"
    )
        port map (
      I0 => \Q_reg[1]_0\,
      I1 => \Q_reg[0]\,
      I2 => \Q[3]_i_4_n_0\,
      I3 => \Q_reg[1]_1\,
      I4 => \Q[3]_i_5_n_0\,
      I5 => Q(3),
      O => D(3)
    );
\Q[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^sclk\,
      I1 => Q(2),
      O => \Q[3]_i_4_n_0\
    );
\Q[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Q(0),
      I1 => \^sclk\,
      I2 => Q(2),
      O => \Q[3]_i_5_n_0\
    );
clk_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_clk1_carry__0_n_0\,
      I1 => clk_en,
      O => clk_en_i_1_n_0
    );
clk_en_reg: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => clk_en_i_1_n_0,
      Q => clk_en
    );
counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter1_carry_n_0,
      CO(2) => counter1_carry_n_1,
      CO(1) => counter1_carry_n_2,
      CO(0) => counter1_carry_n_3,
      CYINIT => '1',
      DI(3) => counter1_carry_i_1_n_0,
      DI(2) => counter1_carry_i_2_n_0,
      DI(1) => counter1_carry_i_3_n_0,
      DI(0) => counter1_carry_i_4_n_0,
      O(3 downto 0) => NLW_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter1_carry_n_0,
      CO(3) => load,
      CO(2) => \counter1_carry__0_n_1\,
      CO(1) => \counter1_carry__0_n_2\,
      CO(0) => \counter1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \counter1_carry__0_i_1_n_0\,
      DI(2) => \counter1_carry__0_i_2_n_0\,
      DI(1) => \counter1_carry__0_i_3_n_0\,
      DI(0) => \counter1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_counter1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \tx_div_cnt_reg[15]\(3 downto 0)
    );
\counter1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^counter_reg\(14),
      I1 => \tx_div_cnt_reg[15]_0\(15),
      I2 => \^counter_reg\(13),
      I3 => \tx_div_cnt_reg[15]_0\(14),
      O => \counter1_carry__0_i_1_n_0\
    );
\counter1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^counter_reg\(12),
      I1 => \tx_div_cnt_reg[15]_0\(13),
      I2 => \^counter_reg\(11),
      I3 => \tx_div_cnt_reg[15]_0\(12),
      O => \counter1_carry__0_i_2_n_0\
    );
\counter1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^counter_reg\(10),
      I1 => \tx_div_cnt_reg[15]_0\(11),
      I2 => \^counter_reg\(9),
      I3 => \tx_div_cnt_reg[15]_0\(10),
      O => \counter1_carry__0_i_3_n_0\
    );
\counter1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^counter_reg\(8),
      I1 => \tx_div_cnt_reg[15]_0\(9),
      I2 => \^counter_reg\(7),
      I3 => \tx_div_cnt_reg[15]_0\(8),
      O => \counter1_carry__0_i_4_n_0\
    );
counter1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^counter_reg\(6),
      I1 => \tx_div_cnt_reg[15]_0\(7),
      I2 => \^counter_reg\(5),
      I3 => \tx_div_cnt_reg[15]_0\(6),
      O => counter1_carry_i_1_n_0
    );
counter1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^counter_reg\(4),
      I1 => \tx_div_cnt_reg[15]_0\(5),
      I2 => \^counter_reg\(3),
      I3 => \tx_div_cnt_reg[15]_0\(4),
      O => counter1_carry_i_2_n_0
    );
counter1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^counter_reg\(2),
      I1 => \tx_div_cnt_reg[15]_0\(3),
      I2 => \^counter_reg\(1),
      I3 => \tx_div_cnt_reg[15]_0\(2),
      O => counter1_carry_i_3_n_0
    );
counter1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^counter_reg\(0),
      I1 => \tx_div_cnt_reg[15]_0\(1),
      I2 => \^counter_reg[3]_0\,
      I3 => \tx_div_cnt_reg[15]_0\(0),
      O => counter1_carry_i_4_n_0
    );
\counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg[3]_0\,
      I1 => load,
      O => \counter[0]_i_2_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(2),
      I1 => load,
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(1),
      I1 => load,
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(0),
      I1 => load,
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_reg[3]_0\,
      I1 => load,
      O => \counter[0]_i_6_n_0\
    );
\counter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(14),
      I1 => load,
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(13),
      I1 => load,
      O => \counter[12]_i_3_n_0\
    );
\counter[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(12),
      I1 => load,
      O => \counter[12]_i_4_n_0\
    );
\counter[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(11),
      I1 => load,
      O => \counter[12]_i_5_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F1E0006"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^sclk\,
      O => \counter_reg[4]_0\
    );
\counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => \^sclk\,
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      O => \counter_reg[0]_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(6),
      I1 => load,
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(5),
      I1 => load,
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(4),
      I1 => load,
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(3),
      I1 => load,
      O => \counter[4]_i_5_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(10),
      I1 => load,
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(9),
      I1 => load,
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(8),
      I1 => load,
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_reg\(7),
      I1 => load,
      O => \counter[8]_i_5_n_0\
    );
\counter_byte[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000E0A3C"
    )
        port map (
      I0 => \^sclk\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      O => E(0)
    );
counter_clk1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_clk1_carry_n_0,
      CO(2) => counter_clk1_carry_n_1,
      CO(1) => counter_clk1_carry_n_2,
      CO(0) => counter_clk1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_counter_clk1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => counter_clk1_carry_i_5_n_0,
      S(2) => counter_clk1_carry_i_6_n_0,
      S(1) => counter_clk1_carry_i_7_n_0,
      S(0) => counter_clk1_carry_i_8_n_0
    );
\counter_clk1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_clk1_carry_n_0,
      CO(3) => \counter_clk1_carry__0_n_0\,
      CO(2) => \counter_clk1_carry__0_n_1\,
      CO(1) => \counter_clk1_carry__0_n_2\,
      CO(0) => \counter_clk1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \counter_clk1_carry__0_i_1_n_0\,
      DI(2 downto 0) => \tx_div_cnt_reg[14]\(2 downto 0),
      O(3 downto 0) => \NLW_counter_clk1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter_clk1_carry__0_i_5_n_0\,
      S(2) => \counter_clk1_carry__0_i_6_n_0\,
      S(1) => \counter_clk1_carry__0_i_7_n_0\,
      S(0) => \counter_clk1_carry__0_i_8_n_0\
    );
\counter_clk1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => counter_clk_reg(15),
      I1 => \tx_div_cnt_reg[15]_0\(15),
      I2 => counter_clk_reg(14),
      O => \counter_clk1_carry__0_i_1_n_0\
    );
\counter_clk1_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => counter_clk_reg(15),
      I1 => counter_clk_reg(14),
      I2 => \tx_div_cnt_reg[15]_0\(15),
      O => \counter_clk1_carry__0_i_5_n_0\
    );
\counter_clk1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(12),
      I1 => \tx_div_cnt_reg[15]_0\(14),
      I2 => \^counter_clk_reg[15]_0\(11),
      I3 => \tx_div_cnt_reg[15]_0\(13),
      O => \counter_clk1_carry__0_i_6_n_0\
    );
\counter_clk1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(10),
      I1 => \tx_div_cnt_reg[15]_0\(12),
      I2 => \^counter_clk_reg[15]_0\(9),
      I3 => \tx_div_cnt_reg[15]_0\(11),
      O => \counter_clk1_carry__0_i_7_n_0\
    );
\counter_clk1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(8),
      I1 => \tx_div_cnt_reg[15]_0\(10),
      I2 => \^counter_clk_reg[15]_0\(7),
      I3 => \tx_div_cnt_reg[15]_0\(9),
      O => \counter_clk1_carry__0_i_8_n_0\
    );
counter_clk1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(6),
      I1 => \tx_div_cnt_reg[15]_0\(8),
      I2 => \^counter_clk_reg[15]_0\(5),
      I3 => \tx_div_cnt_reg[15]_0\(7),
      O => counter_clk1_carry_i_5_n_0
    );
counter_clk1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(4),
      I1 => \tx_div_cnt_reg[15]_0\(6),
      I2 => \^counter_clk_reg[15]_0\(3),
      I3 => \tx_div_cnt_reg[15]_0\(5),
      O => counter_clk1_carry_i_6_n_0
    );
counter_clk1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(2),
      I1 => \tx_div_cnt_reg[15]_0\(4),
      I2 => \^counter_clk_reg[15]_0\(1),
      I3 => \tx_div_cnt_reg[15]_0\(3),
      O => counter_clk1_carry_i_7_n_0
    );
counter_clk1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(0),
      I1 => \tx_div_cnt_reg[15]_0\(2),
      I2 => \^counter_clk_reg[3]_0\,
      I3 => \tx_div_cnt_reg[15]_0\(1),
      O => counter_clk1_carry_i_8_n_0
    );
\counter_clk[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[3]_0\,
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[0]_i_2_n_0\
    );
\counter_clk[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(2),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[0]_i_3_n_0\
    );
\counter_clk[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(1),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[0]_i_4_n_0\
    );
\counter_clk[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(0),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[0]_i_5_n_0\
    );
\counter_clk[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_clk_reg[3]_0\,
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[0]_i_6_n_0\
    );
\counter_clk[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_clk_reg(15),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[12]_i_2_n_0\
    );
\counter_clk[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_clk_reg(14),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[12]_i_3_n_0\
    );
\counter_clk[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(12),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[12]_i_4_n_0\
    );
\counter_clk[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(11),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[12]_i_5_n_0\
    );
\counter_clk[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(6),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[4]_i_2_n_0\
    );
\counter_clk[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(5),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[4]_i_3_n_0\
    );
\counter_clk[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(4),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[4]_i_4_n_0\
    );
\counter_clk[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(3),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[4]_i_5_n_0\
    );
\counter_clk[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(10),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[8]_i_2_n_0\
    );
\counter_clk[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(9),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[8]_i_3_n_0\
    );
\counter_clk[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(8),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[8]_i_4_n_0\
    );
\counter_clk[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_clk_reg[15]_0\(7),
      I1 => \counter_clk1_carry__0_n_0\,
      O => \counter_clk[8]_i_5_n_0\
    );
\counter_clk_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[0]_i_1_n_7\,
      Q => \^counter_clk_reg[3]_0\
    );
\counter_clk_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_clk_reg[0]_i_1_n_0\,
      CO(2) => \counter_clk_reg[0]_i_1_n_1\,
      CO(1) => \counter_clk_reg[0]_i_1_n_2\,
      CO(0) => \counter_clk_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter_clk[0]_i_2_n_0\,
      O(3) => \counter_clk_reg[0]_i_1_n_4\,
      O(2) => \counter_clk_reg[0]_i_1_n_5\,
      O(1) => \counter_clk_reg[0]_i_1_n_6\,
      O(0) => \counter_clk_reg[0]_i_1_n_7\,
      S(3) => \counter_clk[0]_i_3_n_0\,
      S(2) => \counter_clk[0]_i_4_n_0\,
      S(1) => \counter_clk[0]_i_5_n_0\,
      S(0) => \counter_clk[0]_i_6_n_0\
    );
\counter_clk_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[8]_i_1_n_5\,
      Q => \^counter_clk_reg[15]_0\(9)
    );
\counter_clk_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[8]_i_1_n_4\,
      Q => \^counter_clk_reg[15]_0\(10)
    );
\counter_clk_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[12]_i_1_n_7\,
      Q => \^counter_clk_reg[15]_0\(11)
    );
\counter_clk_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_clk_reg[8]_i_1_n_0\,
      CO(3) => \NLW_counter_clk_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_clk_reg[12]_i_1_n_1\,
      CO(1) => \counter_clk_reg[12]_i_1_n_2\,
      CO(0) => \counter_clk_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_clk_reg[12]_i_1_n_4\,
      O(2) => \counter_clk_reg[12]_i_1_n_5\,
      O(1) => \counter_clk_reg[12]_i_1_n_6\,
      O(0) => \counter_clk_reg[12]_i_1_n_7\,
      S(3) => \counter_clk[12]_i_2_n_0\,
      S(2) => \counter_clk[12]_i_3_n_0\,
      S(1) => \counter_clk[12]_i_4_n_0\,
      S(0) => \counter_clk[12]_i_5_n_0\
    );
\counter_clk_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[12]_i_1_n_6\,
      Q => \^counter_clk_reg[15]_0\(12)
    );
\counter_clk_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[12]_i_1_n_5\,
      Q => counter_clk_reg(14)
    );
\counter_clk_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[12]_i_1_n_4\,
      Q => counter_clk_reg(15)
    );
\counter_clk_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[0]_i_1_n_6\,
      Q => \^counter_clk_reg[15]_0\(0)
    );
\counter_clk_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[0]_i_1_n_5\,
      Q => \^counter_clk_reg[15]_0\(1)
    );
\counter_clk_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[0]_i_1_n_4\,
      Q => \^counter_clk_reg[15]_0\(2)
    );
\counter_clk_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[4]_i_1_n_7\,
      Q => \^counter_clk_reg[15]_0\(3)
    );
\counter_clk_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_clk_reg[0]_i_1_n_0\,
      CO(3) => \counter_clk_reg[4]_i_1_n_0\,
      CO(2) => \counter_clk_reg[4]_i_1_n_1\,
      CO(1) => \counter_clk_reg[4]_i_1_n_2\,
      CO(0) => \counter_clk_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_clk_reg[4]_i_1_n_4\,
      O(2) => \counter_clk_reg[4]_i_1_n_5\,
      O(1) => \counter_clk_reg[4]_i_1_n_6\,
      O(0) => \counter_clk_reg[4]_i_1_n_7\,
      S(3) => \counter_clk[4]_i_2_n_0\,
      S(2) => \counter_clk[4]_i_3_n_0\,
      S(1) => \counter_clk[4]_i_4_n_0\,
      S(0) => \counter_clk[4]_i_5_n_0\
    );
\counter_clk_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[4]_i_1_n_6\,
      Q => \^counter_clk_reg[15]_0\(4)
    );
\counter_clk_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[4]_i_1_n_5\,
      Q => \^counter_clk_reg[15]_0\(5)
    );
\counter_clk_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[4]_i_1_n_4\,
      Q => \^counter_clk_reg[15]_0\(6)
    );
\counter_clk_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[8]_i_1_n_7\,
      Q => \^counter_clk_reg[15]_0\(7)
    );
\counter_clk_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_clk_reg[4]_i_1_n_0\,
      CO(3) => \counter_clk_reg[8]_i_1_n_0\,
      CO(2) => \counter_clk_reg[8]_i_1_n_1\,
      CO(1) => \counter_clk_reg[8]_i_1_n_2\,
      CO(0) => \counter_clk_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_clk_reg[8]_i_1_n_4\,
      O(2) => \counter_clk_reg[8]_i_1_n_5\,
      O(1) => \counter_clk_reg[8]_i_1_n_6\,
      O(0) => \counter_clk_reg[8]_i_1_n_7\,
      S(3) => \counter_clk[8]_i_2_n_0\,
      S(2) => \counter_clk[8]_i_3_n_0\,
      S(1) => \counter_clk[8]_i_4_n_0\,
      S(0) => \counter_clk[8]_i_5_n_0\
    );
\counter_clk_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_clk_reg[8]_i_1_n_6\,
      Q => \^counter_clk_reg[15]_0\(8)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[0]_i_1_n_7\,
      Q => \^counter_reg[3]_0\
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter[0]_i_2_n_0\,
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3) => \counter[0]_i_3_n_0\,
      S(2) => \counter[0]_i_4_n_0\,
      S(1) => \counter[0]_i_5_n_0\,
      S(0) => \counter[0]_i_6_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[8]_i_1_n_5\,
      Q => \^counter_reg\(9)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[8]_i_1_n_4\,
      Q => \^counter_reg\(10)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[12]_i_1_n_7\,
      Q => \^counter_reg\(11)
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1) => \counter[12]_i_4_n_0\,
      S(0) => \counter[12]_i_5_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[12]_i_1_n_6\,
      Q => \^counter_reg\(12)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[12]_i_1_n_5\,
      Q => \^counter_reg\(13)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[12]_i_1_n_4\,
      Q => \^counter_reg\(14)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[0]_i_1_n_6\,
      Q => \^counter_reg\(0)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[0]_i_1_n_5\,
      Q => \^counter_reg\(1)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[0]_i_1_n_4\,
      Q => \^counter_reg\(2)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[4]_i_1_n_7\,
      Q => \^counter_reg\(3)
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[4]_i_1_n_6\,
      Q => \^counter_reg\(4)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[4]_i_1_n_5\,
      Q => \^counter_reg\(5)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[4]_i_1_n_4\,
      Q => \^counter_reg\(6)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[8]_i_1_n_7\,
      Q => \^counter_reg\(7)
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => \counter_reg[8]_i_1_n_6\,
      Q => \^counter_reg\(8)
    );
\rx_status[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFF0000"
    )
        port map (
      I0 => PADDR(1),
      I1 => PADDR(2),
      I2 => PADDR(0),
      I3 => PENABLE,
      I4 => \^i2c_done\,
      I5 => \rx_status_reg[0]_0\,
      O => \rx_status_reg[0]\
    );
\rx_status[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => Q(2),
      I1 => \^sclk\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      O => \^i2c_done\
    );
sclk_reg: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => load,
      Q => \^sclk\
    );
sta_sto_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_en,
      I1 => sta_sto,
      O => sta_sto_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sclk_reg : in STD_LOGIC;
    apb_rxff_rd : in STD_LOGIC;
    PRESETn : in STD_LOGIC;
    \rx_status_reg[0]\ : in STD_LOGIC;
    \data_out_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PCLK : in STD_LOGIC;
    PRESETn_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator is
  signal \PRDATA[0]_i_4_n_0\ : STD_LOGIC;
  signal \PRDATA[0]_i_5_n_0\ : STD_LOGIC;
  signal \PRDATA[0]_i_6_n_0\ : STD_LOGIC;
  signal \PRDATA[0]_i_7_n_0\ : STD_LOGIC;
  signal \PRDATA[1]_i_3_n_0\ : STD_LOGIC;
  signal \PRDATA[1]_i_4_n_0\ : STD_LOGIC;
  signal \PRDATA[1]_i_5_n_0\ : STD_LOGIC;
  signal \PRDATA[1]_i_6_n_0\ : STD_LOGIC;
  signal \PRDATA[2]_i_3_n_0\ : STD_LOGIC;
  signal \PRDATA[2]_i_4_n_0\ : STD_LOGIC;
  signal \PRDATA[2]_i_5_n_0\ : STD_LOGIC;
  signal \PRDATA[2]_i_6_n_0\ : STD_LOGIC;
  signal \PRDATA[3]_i_3_n_0\ : STD_LOGIC;
  signal \PRDATA[3]_i_4_n_0\ : STD_LOGIC;
  signal \PRDATA[3]_i_5_n_0\ : STD_LOGIC;
  signal \PRDATA[3]_i_6_n_0\ : STD_LOGIC;
  signal \PRDATA[4]_i_3_n_0\ : STD_LOGIC;
  signal \PRDATA[4]_i_4_n_0\ : STD_LOGIC;
  signal \PRDATA[4]_i_5_n_0\ : STD_LOGIC;
  signal \PRDATA[4]_i_6_n_0\ : STD_LOGIC;
  signal \PRDATA[5]_i_3_n_0\ : STD_LOGIC;
  signal \PRDATA[5]_i_4_n_0\ : STD_LOGIC;
  signal \PRDATA[5]_i_5_n_0\ : STD_LOGIC;
  signal \PRDATA[5]_i_6_n_0\ : STD_LOGIC;
  signal \PRDATA[6]_i_3_n_0\ : STD_LOGIC;
  signal \PRDATA[6]_i_4_n_0\ : STD_LOGIC;
  signal \PRDATA[6]_i_5_n_0\ : STD_LOGIC;
  signal \PRDATA[6]_i_6_n_0\ : STD_LOGIC;
  signal \PRDATA[7]_i_5_n_0\ : STD_LOGIC;
  signal \PRDATA[7]_i_6_n_0\ : STD_LOGIC;
  signal \PRDATA[7]_i_7_n_0\ : STD_LOGIC;
  signal \PRDATA[7]_i_8_n_0\ : STD_LOGIC;
  signal \PRDATA_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \PRDATA_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \PRDATA_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \PRDATA_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \PRDATA_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \PRDATA_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \PRDATA_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \PRDATA_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \PRDATA_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[10][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[11][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[12][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[13][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[14][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[15][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[5][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[6][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[7][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[8][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[9][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[10][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[10][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[10][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[10][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[10][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[10][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[10][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[10][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[11][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[11][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[11][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[11][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[11][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[11][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[11][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[11][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[12][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[12][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[12][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[12][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[12][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[12][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[12][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[12][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[13][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[13][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[13][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[13][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[13][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[13][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[13][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[13][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[14][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[14][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[14][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[14][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[14][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[14][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[14][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[14][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[15][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[15][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[15][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[15][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[15][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[15][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[15][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[15][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[8][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[8][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[8][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[8][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[8][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[8][7]\ : STD_LOGIC;
  signal \mem_reg_n_0_[9][0]\ : STD_LOGIC;
  signal \mem_reg_n_0_[9][1]\ : STD_LOGIC;
  signal \mem_reg_n_0_[9][2]\ : STD_LOGIC;
  signal \mem_reg_n_0_[9][3]\ : STD_LOGIC;
  signal \mem_reg_n_0_[9][4]\ : STD_LOGIC;
  signal \mem_reg_n_0_[9][5]\ : STD_LOGIC;
  signal \mem_reg_n_0_[9][6]\ : STD_LOGIC;
  signal \mem_reg_n_0_[9][7]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal rd_ptr1 : STD_LOGIC;
  signal \rd_ptr_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_ptr1 : STD_LOGIC;
  signal \wr_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rd_ptr[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rd_ptr[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rd_ptr[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd_ptr[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wr_ptr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_ptr[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_ptr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wr_ptr[3]_i_2\ : label is "soft_lutpair2";
begin
\PRDATA[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \PRDATA_reg[0]_i_2_n_0\,
      I1 => \rd_ptr_reg__0\(3),
      I2 => \PRDATA_reg[0]_i_3_n_0\,
      I3 => PADDR(0),
      I4 => \rx_status_reg[0]\,
      O => D(0)
    );
\PRDATA[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[11][0]\,
      I1 => \mem_reg_n_0_[10][0]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[9][0]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[8][0]\,
      O => \PRDATA[0]_i_4_n_0\
    );
\PRDATA[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[15][0]\,
      I1 => \mem_reg_n_0_[14][0]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[13][0]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[12][0]\,
      O => \PRDATA[0]_i_5_n_0\
    );
\PRDATA[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[3][0]\,
      I1 => \mem_reg_n_0_[2][0]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[1][0]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[0][0]\,
      O => \PRDATA[0]_i_6_n_0\
    );
\PRDATA[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[7][0]\,
      I1 => \mem_reg_n_0_[6][0]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[5][0]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[4][0]\,
      O => \PRDATA[0]_i_7_n_0\
    );
\PRDATA[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \PRDATA_reg[1]_i_2_n_0\,
      I1 => \rd_ptr_reg__0\(3),
      I2 => \PRDATA[1]_i_3_n_0\,
      I3 => \rd_ptr_reg__0\(2),
      I4 => \PRDATA[1]_i_4_n_0\,
      I5 => PADDR(0),
      O => D(1)
    );
\PRDATA[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[11][1]\,
      I1 => \mem_reg_n_0_[10][1]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[9][1]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[8][1]\,
      O => \PRDATA[1]_i_3_n_0\
    );
\PRDATA[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[15][1]\,
      I1 => \mem_reg_n_0_[14][1]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[13][1]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[12][1]\,
      O => \PRDATA[1]_i_4_n_0\
    );
\PRDATA[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[3][1]\,
      I1 => \mem_reg_n_0_[2][1]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[1][1]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[0][1]\,
      O => \PRDATA[1]_i_5_n_0\
    );
\PRDATA[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[7][1]\,
      I1 => \mem_reg_n_0_[6][1]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[5][1]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[4][1]\,
      O => \PRDATA[1]_i_6_n_0\
    );
\PRDATA[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \PRDATA_reg[2]_i_2_n_0\,
      I1 => \rd_ptr_reg__0\(3),
      I2 => \PRDATA[2]_i_3_n_0\,
      I3 => \rd_ptr_reg__0\(2),
      I4 => \PRDATA[2]_i_4_n_0\,
      I5 => PADDR(0),
      O => D(2)
    );
\PRDATA[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[11][2]\,
      I1 => \mem_reg_n_0_[10][2]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[9][2]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[8][2]\,
      O => \PRDATA[2]_i_3_n_0\
    );
\PRDATA[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[15][2]\,
      I1 => \mem_reg_n_0_[14][2]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[13][2]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[12][2]\,
      O => \PRDATA[2]_i_4_n_0\
    );
\PRDATA[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[3][2]\,
      I1 => \mem_reg_n_0_[2][2]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[1][2]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[0][2]\,
      O => \PRDATA[2]_i_5_n_0\
    );
\PRDATA[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[7][2]\,
      I1 => \mem_reg_n_0_[6][2]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[5][2]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[4][2]\,
      O => \PRDATA[2]_i_6_n_0\
    );
\PRDATA[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \PRDATA_reg[3]_i_2_n_0\,
      I1 => \rd_ptr_reg__0\(3),
      I2 => \PRDATA[3]_i_3_n_0\,
      I3 => \rd_ptr_reg__0\(2),
      I4 => \PRDATA[3]_i_4_n_0\,
      I5 => PADDR(0),
      O => D(3)
    );
\PRDATA[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[11][3]\,
      I1 => \mem_reg_n_0_[10][3]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[9][3]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[8][3]\,
      O => \PRDATA[3]_i_3_n_0\
    );
\PRDATA[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[15][3]\,
      I1 => \mem_reg_n_0_[14][3]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[13][3]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[12][3]\,
      O => \PRDATA[3]_i_4_n_0\
    );
\PRDATA[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[3][3]\,
      I1 => \mem_reg_n_0_[2][3]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[1][3]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[0][3]\,
      O => \PRDATA[3]_i_5_n_0\
    );
\PRDATA[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[7][3]\,
      I1 => \mem_reg_n_0_[6][3]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[5][3]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[4][3]\,
      O => \PRDATA[3]_i_6_n_0\
    );
\PRDATA[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \PRDATA_reg[4]_i_2_n_0\,
      I1 => \rd_ptr_reg__0\(3),
      I2 => \PRDATA[4]_i_3_n_0\,
      I3 => \rd_ptr_reg__0\(2),
      I4 => \PRDATA[4]_i_4_n_0\,
      I5 => PADDR(0),
      O => D(4)
    );
\PRDATA[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[11][4]\,
      I1 => \mem_reg_n_0_[10][4]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[9][4]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[8][4]\,
      O => \PRDATA[4]_i_3_n_0\
    );
\PRDATA[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[15][4]\,
      I1 => \mem_reg_n_0_[14][4]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[13][4]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[12][4]\,
      O => \PRDATA[4]_i_4_n_0\
    );
\PRDATA[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[3][4]\,
      I1 => \mem_reg_n_0_[2][4]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[1][4]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[0][4]\,
      O => \PRDATA[4]_i_5_n_0\
    );
\PRDATA[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[7][4]\,
      I1 => \mem_reg_n_0_[6][4]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[5][4]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[4][4]\,
      O => \PRDATA[4]_i_6_n_0\
    );
\PRDATA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \PRDATA_reg[5]_i_2_n_0\,
      I1 => \rd_ptr_reg__0\(3),
      I2 => \PRDATA[5]_i_3_n_0\,
      I3 => \rd_ptr_reg__0\(2),
      I4 => \PRDATA[5]_i_4_n_0\,
      I5 => PADDR(0),
      O => D(5)
    );
\PRDATA[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[11][5]\,
      I1 => \mem_reg_n_0_[10][5]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[9][5]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[8][5]\,
      O => \PRDATA[5]_i_3_n_0\
    );
\PRDATA[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[15][5]\,
      I1 => \mem_reg_n_0_[14][5]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[13][5]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[12][5]\,
      O => \PRDATA[5]_i_4_n_0\
    );
\PRDATA[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[3][5]\,
      I1 => \mem_reg_n_0_[2][5]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[1][5]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[0][5]\,
      O => \PRDATA[5]_i_5_n_0\
    );
\PRDATA[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[7][5]\,
      I1 => \mem_reg_n_0_[6][5]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[5][5]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[4][5]\,
      O => \PRDATA[5]_i_6_n_0\
    );
\PRDATA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \PRDATA_reg[6]_i_2_n_0\,
      I1 => \rd_ptr_reg__0\(3),
      I2 => \PRDATA[6]_i_3_n_0\,
      I3 => \rd_ptr_reg__0\(2),
      I4 => \PRDATA[6]_i_4_n_0\,
      I5 => PADDR(0),
      O => D(6)
    );
\PRDATA[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[11][6]\,
      I1 => \mem_reg_n_0_[10][6]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[9][6]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[8][6]\,
      O => \PRDATA[6]_i_3_n_0\
    );
\PRDATA[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[15][6]\,
      I1 => \mem_reg_n_0_[14][6]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[13][6]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[12][6]\,
      O => \PRDATA[6]_i_4_n_0\
    );
\PRDATA[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[3][6]\,
      I1 => \mem_reg_n_0_[2][6]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[1][6]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[0][6]\,
      O => \PRDATA[6]_i_5_n_0\
    );
\PRDATA[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[7][6]\,
      I1 => \mem_reg_n_0_[6][6]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[5][6]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[4][6]\,
      O => \PRDATA[6]_i_6_n_0\
    );
\PRDATA[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \PRDATA_reg[7]_i_4_n_0\,
      I1 => \rd_ptr_reg__0\(3),
      I2 => \PRDATA[7]_i_5_n_0\,
      I3 => \rd_ptr_reg__0\(2),
      I4 => \PRDATA[7]_i_6_n_0\,
      I5 => PADDR(0),
      O => D(7)
    );
\PRDATA[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[11][7]\,
      I1 => \mem_reg_n_0_[10][7]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[9][7]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[8][7]\,
      O => \PRDATA[7]_i_5_n_0\
    );
\PRDATA[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[15][7]\,
      I1 => \mem_reg_n_0_[14][7]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[13][7]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[12][7]\,
      O => \PRDATA[7]_i_6_n_0\
    );
\PRDATA[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[3][7]\,
      I1 => \mem_reg_n_0_[2][7]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[1][7]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[0][7]\,
      O => \PRDATA[7]_i_7_n_0\
    );
\PRDATA[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg_n_0_[7][7]\,
      I1 => \mem_reg_n_0_[6][7]\,
      I2 => \rd_ptr_reg__0\(1),
      I3 => \mem_reg_n_0_[5][7]\,
      I4 => \rd_ptr_reg__0\(0),
      I5 => \mem_reg_n_0_[4][7]\,
      O => \PRDATA[7]_i_8_n_0\
    );
\PRDATA_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \PRDATA[0]_i_4_n_0\,
      I1 => \PRDATA[0]_i_5_n_0\,
      O => \PRDATA_reg[0]_i_2_n_0\,
      S => \rd_ptr_reg__0\(2)
    );
\PRDATA_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \PRDATA[0]_i_6_n_0\,
      I1 => \PRDATA[0]_i_7_n_0\,
      O => \PRDATA_reg[0]_i_3_n_0\,
      S => \rd_ptr_reg__0\(2)
    );
\PRDATA_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \PRDATA[1]_i_5_n_0\,
      I1 => \PRDATA[1]_i_6_n_0\,
      O => \PRDATA_reg[1]_i_2_n_0\,
      S => \rd_ptr_reg__0\(2)
    );
\PRDATA_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \PRDATA[2]_i_5_n_0\,
      I1 => \PRDATA[2]_i_6_n_0\,
      O => \PRDATA_reg[2]_i_2_n_0\,
      S => \rd_ptr_reg__0\(2)
    );
\PRDATA_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \PRDATA[3]_i_5_n_0\,
      I1 => \PRDATA[3]_i_6_n_0\,
      O => \PRDATA_reg[3]_i_2_n_0\,
      S => \rd_ptr_reg__0\(2)
    );
\PRDATA_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \PRDATA[4]_i_5_n_0\,
      I1 => \PRDATA[4]_i_6_n_0\,
      O => \PRDATA_reg[4]_i_2_n_0\,
      S => \rd_ptr_reg__0\(2)
    );
\PRDATA_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \PRDATA[5]_i_5_n_0\,
      I1 => \PRDATA[5]_i_6_n_0\,
      O => \PRDATA_reg[5]_i_2_n_0\,
      S => \rd_ptr_reg__0\(2)
    );
\PRDATA_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \PRDATA[6]_i_5_n_0\,
      I1 => \PRDATA[6]_i_6_n_0\,
      O => \PRDATA_reg[6]_i_2_n_0\,
      S => \rd_ptr_reg__0\(2)
    );
\PRDATA_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \PRDATA[7]_i_7_n_0\,
      I1 => \PRDATA[7]_i_8_n_0\,
      O => \PRDATA_reg[7]_i_4_n_0\,
      S => \rd_ptr_reg__0\(2)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA85555"
    )
        port map (
      I0 => sclk_reg,
      I1 => \counter_reg__0\(2),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => apb_rxff_rd,
      I5 => \counter_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090908006060606"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => sclk_reg,
      I3 => \counter_reg__0\(2),
      I4 => \counter_reg__0\(3),
      I5 => apb_rxff_rd,
      O => \p_0_in__0\(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A900A800006A006A"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => sclk_reg,
      I4 => \counter_reg__0\(3),
      I5 => apb_rxff_rd,
      O => \p_0_in__0\(2)
    );
\counter[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8000000006AAA"
    )
        port map (
      I0 => \counter_reg__0\(3),
      I1 => \counter_reg__0\(2),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(0),
      I4 => sclk_reg,
      I5 => apb_rxff_rd,
      O => \p_0_in__0\(3)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn_0,
      D => \p_0_in__0\(0),
      Q => \counter_reg__0\(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn_0,
      D => \p_0_in__0\(1),
      Q => \counter_reg__0\(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn_0,
      D => \p_0_in__0\(2),
      Q => \counter_reg__0\(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn_0,
      D => \p_0_in__0\(3),
      Q => \counter_reg__0\(3)
    );
\mem[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \wr_ptr_reg__0\(1),
      I1 => PRESETn,
      I2 => wr_ptr1,
      I3 => \wr_ptr_reg__0\(0),
      I4 => \wr_ptr_reg__0\(3),
      I5 => \wr_ptr_reg__0\(2),
      O => \mem[0][7]_i_1_n_0\
    );
\mem[10][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(0),
      I1 => \wr_ptr_reg__0\(1),
      I2 => wr_ptr1,
      I3 => PRESETn,
      I4 => \wr_ptr_reg__0\(3),
      I5 => \wr_ptr_reg__0\(2),
      O => \mem[10][7]_i_1_n_0\
    );
\mem[11][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(1),
      I1 => \wr_ptr_reg__0\(0),
      I2 => wr_ptr1,
      I3 => PRESETn,
      I4 => \wr_ptr_reg__0\(3),
      I5 => \wr_ptr_reg__0\(2),
      O => \mem[11][7]_i_1_n_0\
    );
\mem[12][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(3),
      I1 => \wr_ptr_reg__0\(2),
      I2 => \wr_ptr_reg__0\(1),
      I3 => PRESETn,
      I4 => wr_ptr1,
      I5 => \wr_ptr_reg__0\(0),
      O => \mem[12][7]_i_1_n_0\
    );
\mem[13][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(3),
      I1 => \wr_ptr_reg__0\(2),
      I2 => \wr_ptr_reg__0\(1),
      I3 => PRESETn,
      I4 => wr_ptr1,
      I5 => \wr_ptr_reg__0\(0),
      O => \mem[13][7]_i_1_n_0\
    );
\mem[14][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(3),
      I1 => \wr_ptr_reg__0\(2),
      I2 => \wr_ptr_reg__0\(0),
      I3 => \wr_ptr_reg__0\(1),
      I4 => wr_ptr1,
      I5 => PRESETn,
      O => \mem[14][7]_i_1_n_0\
    );
\mem[15][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(3),
      I1 => \wr_ptr_reg__0\(2),
      I2 => \wr_ptr_reg__0\(1),
      I3 => \wr_ptr_reg__0\(0),
      I4 => wr_ptr1,
      I5 => PRESETn,
      O => \mem[15][7]_i_1_n_0\
    );
\mem[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(1),
      I1 => PRESETn,
      I2 => wr_ptr1,
      I3 => \wr_ptr_reg__0\(0),
      I4 => \wr_ptr_reg__0\(3),
      I5 => \wr_ptr_reg__0\(2),
      O => \mem[1][7]_i_1_n_0\
    );
\mem[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(0),
      I1 => \wr_ptr_reg__0\(1),
      I2 => wr_ptr1,
      I3 => PRESETn,
      I4 => \wr_ptr_reg__0\(3),
      I5 => \wr_ptr_reg__0\(2),
      O => \mem[2][7]_i_1_n_0\
    );
\mem[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(1),
      I1 => \wr_ptr_reg__0\(0),
      I2 => wr_ptr1,
      I3 => PRESETn,
      I4 => \wr_ptr_reg__0\(3),
      I5 => \wr_ptr_reg__0\(2),
      O => \mem[3][7]_i_1_n_0\
    );
\mem[4][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(1),
      I1 => PRESETn,
      I2 => wr_ptr1,
      I3 => \wr_ptr_reg__0\(0),
      I4 => \wr_ptr_reg__0\(2),
      I5 => \wr_ptr_reg__0\(3),
      O => \mem[4][7]_i_1_n_0\
    );
\mem[5][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(1),
      I1 => PRESETn,
      I2 => wr_ptr1,
      I3 => \wr_ptr_reg__0\(0),
      I4 => \wr_ptr_reg__0\(2),
      I5 => \wr_ptr_reg__0\(3),
      O => \mem[5][7]_i_1_n_0\
    );
\mem[6][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(0),
      I1 => \wr_ptr_reg__0\(1),
      I2 => wr_ptr1,
      I3 => PRESETn,
      I4 => \wr_ptr_reg__0\(2),
      I5 => \wr_ptr_reg__0\(3),
      O => \mem[6][7]_i_1_n_0\
    );
\mem[7][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(1),
      I1 => \wr_ptr_reg__0\(0),
      I2 => wr_ptr1,
      I3 => PRESETn,
      I4 => \wr_ptr_reg__0\(2),
      I5 => \wr_ptr_reg__0\(3),
      O => \mem[7][7]_i_1_n_0\
    );
\mem[8][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(1),
      I1 => PRESETn,
      I2 => wr_ptr1,
      I3 => \wr_ptr_reg__0\(0),
      I4 => \wr_ptr_reg__0\(3),
      I5 => \wr_ptr_reg__0\(2),
      O => \mem[8][7]_i_1_n_0\
    );
\mem[9][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \wr_ptr_reg__0\(1),
      I1 => PRESETn,
      I2 => wr_ptr1,
      I3 => \wr_ptr_reg__0\(0),
      I4 => \wr_ptr_reg__0\(3),
      I5 => \wr_ptr_reg__0\(2),
      O => \mem[9][7]_i_1_n_0\
    );
\mem_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[0][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[0][0]\,
      R => '0'
    );
\mem_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[0][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[0][1]\,
      R => '0'
    );
\mem_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[0][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[0][2]\,
      R => '0'
    );
\mem_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[0][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[0][3]\,
      R => '0'
    );
\mem_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[0][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[0][4]\,
      R => '0'
    );
\mem_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[0][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[0][5]\,
      R => '0'
    );
\mem_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[0][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[0][6]\,
      R => '0'
    );
\mem_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[0][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[0][7]\,
      R => '0'
    );
\mem_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[10][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[10][0]\,
      R => '0'
    );
\mem_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[10][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[10][1]\,
      R => '0'
    );
\mem_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[10][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[10][2]\,
      R => '0'
    );
\mem_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[10][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[10][3]\,
      R => '0'
    );
\mem_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[10][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[10][4]\,
      R => '0'
    );
\mem_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[10][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[10][5]\,
      R => '0'
    );
\mem_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[10][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[10][6]\,
      R => '0'
    );
\mem_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[10][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[10][7]\,
      R => '0'
    );
\mem_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[11][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[11][0]\,
      R => '0'
    );
\mem_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[11][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[11][1]\,
      R => '0'
    );
\mem_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[11][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[11][2]\,
      R => '0'
    );
\mem_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[11][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[11][3]\,
      R => '0'
    );
\mem_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[11][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[11][4]\,
      R => '0'
    );
\mem_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[11][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[11][5]\,
      R => '0'
    );
\mem_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[11][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[11][6]\,
      R => '0'
    );
\mem_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[11][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[11][7]\,
      R => '0'
    );
\mem_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[12][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[12][0]\,
      R => '0'
    );
\mem_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[12][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[12][1]\,
      R => '0'
    );
\mem_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[12][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[12][2]\,
      R => '0'
    );
\mem_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[12][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[12][3]\,
      R => '0'
    );
\mem_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[12][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[12][4]\,
      R => '0'
    );
\mem_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[12][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[12][5]\,
      R => '0'
    );
\mem_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[12][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[12][6]\,
      R => '0'
    );
\mem_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[12][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[12][7]\,
      R => '0'
    );
\mem_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[13][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[13][0]\,
      R => '0'
    );
\mem_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[13][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[13][1]\,
      R => '0'
    );
\mem_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[13][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[13][2]\,
      R => '0'
    );
\mem_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[13][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[13][3]\,
      R => '0'
    );
\mem_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[13][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[13][4]\,
      R => '0'
    );
\mem_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[13][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[13][5]\,
      R => '0'
    );
\mem_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[13][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[13][6]\,
      R => '0'
    );
\mem_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[13][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[13][7]\,
      R => '0'
    );
\mem_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[14][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[14][0]\,
      R => '0'
    );
\mem_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[14][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[14][1]\,
      R => '0'
    );
\mem_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[14][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[14][2]\,
      R => '0'
    );
\mem_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[14][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[14][3]\,
      R => '0'
    );
\mem_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[14][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[14][4]\,
      R => '0'
    );
\mem_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[14][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[14][5]\,
      R => '0'
    );
\mem_reg[14][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[14][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[14][6]\,
      R => '0'
    );
\mem_reg[14][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[14][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[14][7]\,
      R => '0'
    );
\mem_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[15][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[15][0]\,
      R => '0'
    );
\mem_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[15][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[15][1]\,
      R => '0'
    );
\mem_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[15][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[15][2]\,
      R => '0'
    );
\mem_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[15][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[15][3]\,
      R => '0'
    );
\mem_reg[15][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[15][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[15][4]\,
      R => '0'
    );
\mem_reg[15][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[15][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[15][5]\,
      R => '0'
    );
\mem_reg[15][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[15][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[15][6]\,
      R => '0'
    );
\mem_reg[15][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[15][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[15][7]\,
      R => '0'
    );
\mem_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[1][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[1][0]\,
      R => '0'
    );
\mem_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[1][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[1][1]\,
      R => '0'
    );
\mem_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[1][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[1][2]\,
      R => '0'
    );
\mem_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[1][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[1][3]\,
      R => '0'
    );
\mem_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[1][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[1][4]\,
      R => '0'
    );
\mem_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[1][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[1][5]\,
      R => '0'
    );
\mem_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[1][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[1][6]\,
      R => '0'
    );
\mem_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[1][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[1][7]\,
      R => '0'
    );
\mem_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[2][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[2][0]\,
      R => '0'
    );
\mem_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[2][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[2][1]\,
      R => '0'
    );
\mem_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[2][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[2][2]\,
      R => '0'
    );
\mem_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[2][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[2][3]\,
      R => '0'
    );
\mem_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[2][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[2][4]\,
      R => '0'
    );
\mem_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[2][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[2][5]\,
      R => '0'
    );
\mem_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[2][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[2][6]\,
      R => '0'
    );
\mem_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[2][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[2][7]\,
      R => '0'
    );
\mem_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[3][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[3][0]\,
      R => '0'
    );
\mem_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[3][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[3][1]\,
      R => '0'
    );
\mem_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[3][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[3][2]\,
      R => '0'
    );
\mem_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[3][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[3][3]\,
      R => '0'
    );
\mem_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[3][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[3][4]\,
      R => '0'
    );
\mem_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[3][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[3][5]\,
      R => '0'
    );
\mem_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[3][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[3][6]\,
      R => '0'
    );
\mem_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[3][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[3][7]\,
      R => '0'
    );
\mem_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[4][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[4][0]\,
      R => '0'
    );
\mem_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[4][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[4][1]\,
      R => '0'
    );
\mem_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[4][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[4][2]\,
      R => '0'
    );
\mem_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[4][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[4][3]\,
      R => '0'
    );
\mem_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[4][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[4][4]\,
      R => '0'
    );
\mem_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[4][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[4][5]\,
      R => '0'
    );
\mem_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[4][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[4][6]\,
      R => '0'
    );
\mem_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[4][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[4][7]\,
      R => '0'
    );
\mem_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[5][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[5][0]\,
      R => '0'
    );
\mem_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[5][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[5][1]\,
      R => '0'
    );
\mem_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[5][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[5][2]\,
      R => '0'
    );
\mem_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[5][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[5][3]\,
      R => '0'
    );
\mem_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[5][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[5][4]\,
      R => '0'
    );
\mem_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[5][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[5][5]\,
      R => '0'
    );
\mem_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[5][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[5][6]\,
      R => '0'
    );
\mem_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[5][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[5][7]\,
      R => '0'
    );
\mem_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[6][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[6][0]\,
      R => '0'
    );
\mem_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[6][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[6][1]\,
      R => '0'
    );
\mem_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[6][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[6][2]\,
      R => '0'
    );
\mem_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[6][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[6][3]\,
      R => '0'
    );
\mem_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[6][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[6][4]\,
      R => '0'
    );
\mem_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[6][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[6][5]\,
      R => '0'
    );
\mem_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[6][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[6][6]\,
      R => '0'
    );
\mem_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[6][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[6][7]\,
      R => '0'
    );
\mem_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[7][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[7][0]\,
      R => '0'
    );
\mem_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[7][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[7][1]\,
      R => '0'
    );
\mem_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[7][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[7][2]\,
      R => '0'
    );
\mem_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[7][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[7][3]\,
      R => '0'
    );
\mem_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[7][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[7][4]\,
      R => '0'
    );
\mem_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[7][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[7][5]\,
      R => '0'
    );
\mem_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[7][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[7][6]\,
      R => '0'
    );
\mem_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[7][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[7][7]\,
      R => '0'
    );
\mem_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[8][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[8][0]\,
      R => '0'
    );
\mem_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[8][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[8][1]\,
      R => '0'
    );
\mem_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[8][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[8][2]\,
      R => '0'
    );
\mem_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[8][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[8][3]\,
      R => '0'
    );
\mem_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[8][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[8][4]\,
      R => '0'
    );
\mem_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[8][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[8][5]\,
      R => '0'
    );
\mem_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[8][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[8][6]\,
      R => '0'
    );
\mem_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[8][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[8][7]\,
      R => '0'
    );
\mem_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[9][7]_i_1_n_0\,
      D => \data_out_reg[7]\(0),
      Q => \mem_reg_n_0_[9][0]\,
      R => '0'
    );
\mem_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[9][7]_i_1_n_0\,
      D => \data_out_reg[7]\(1),
      Q => \mem_reg_n_0_[9][1]\,
      R => '0'
    );
\mem_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[9][7]_i_1_n_0\,
      D => \data_out_reg[7]\(2),
      Q => \mem_reg_n_0_[9][2]\,
      R => '0'
    );
\mem_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[9][7]_i_1_n_0\,
      D => \data_out_reg[7]\(3),
      Q => \mem_reg_n_0_[9][3]\,
      R => '0'
    );
\mem_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[9][7]_i_1_n_0\,
      D => \data_out_reg[7]\(4),
      Q => \mem_reg_n_0_[9][4]\,
      R => '0'
    );
\mem_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[9][7]_i_1_n_0\,
      D => \data_out_reg[7]\(5),
      Q => \mem_reg_n_0_[9][5]\,
      R => '0'
    );
\mem_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[9][7]_i_1_n_0\,
      D => \data_out_reg[7]\(6),
      Q => \mem_reg_n_0_[9][6]\,
      R => '0'
    );
\mem_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \mem[9][7]_i_1_n_0\,
      D => \data_out_reg[7]\(7),
      Q => \mem_reg_n_0_[9][7]\,
      R => '0'
    );
\rd_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rd_ptr_reg__0\(0),
      O => p_0_in(0)
    );
\rd_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_ptr_reg__0\(0),
      I1 => \rd_ptr_reg__0\(1),
      O => p_0_in(1)
    );
\rd_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \rd_ptr_reg__0\(2),
      I1 => \rd_ptr_reg__0\(1),
      I2 => \rd_ptr_reg__0\(0),
      O => p_0_in(2)
    );
\rd_ptr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => apb_rxff_rd,
      I1 => \counter_reg__0\(3),
      I2 => \counter_reg__0\(0),
      I3 => \counter_reg__0\(1),
      I4 => \counter_reg__0\(2),
      O => rd_ptr1
    );
\rd_ptr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \rd_ptr_reg__0\(3),
      I1 => \rd_ptr_reg__0\(2),
      I2 => \rd_ptr_reg__0\(0),
      I3 => \rd_ptr_reg__0\(1),
      O => p_0_in(3)
    );
\rd_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => rd_ptr1,
      CLR => PRESETn_0,
      D => p_0_in(0),
      Q => \rd_ptr_reg__0\(0)
    );
\rd_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => rd_ptr1,
      CLR => PRESETn_0,
      D => p_0_in(1),
      Q => \rd_ptr_reg__0\(1)
    );
\rd_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => rd_ptr1,
      CLR => PRESETn_0,
      D => p_0_in(2),
      Q => \rd_ptr_reg__0\(2)
    );
\rd_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => rd_ptr1,
      CLR => PRESETn_0,
      D => p_0_in(3),
      Q => \rd_ptr_reg__0\(3)
    );
\wr_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wr_ptr_reg__0\(0),
      O => \wr_ptr[0]_i_1_n_0\
    );
\wr_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_reg__0\(1),
      I1 => \wr_ptr_reg__0\(0),
      O => \p_0_in__1\(1)
    );
\wr_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \wr_ptr_reg__0\(2),
      I1 => \wr_ptr_reg__0\(0),
      I2 => \wr_ptr_reg__0\(1),
      O => \p_0_in__1\(2)
    );
\wr_ptr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => \counter_reg__0\(3),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(2),
      I4 => sclk_reg,
      O => wr_ptr1
    );
\wr_ptr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \wr_ptr_reg__0\(3),
      I1 => \wr_ptr_reg__0\(1),
      I2 => \wr_ptr_reg__0\(0),
      I3 => \wr_ptr_reg__0\(2),
      O => \p_0_in__1\(3)
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => wr_ptr1,
      CLR => PRESETn_0,
      D => \wr_ptr[0]_i_1_n_0\,
      Q => \wr_ptr_reg__0\(0)
    );
\wr_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => wr_ptr1,
      CLR => PRESETn_0,
      D => \p_0_in__1\(1),
      Q => \wr_ptr_reg__0\(1)
    );
\wr_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => wr_ptr1,
      CLR => PRESETn_0,
      D => \p_0_in__1\(2),
      Q => \wr_ptr_reg__0\(2)
    );
\wr_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => wr_ptr1,
      CLR => PRESETn_0,
      D => \p_0_in__1\(3),
      Q => \wr_ptr_reg__0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_master is
  port (
    counter_reg : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \counter_clk_reg[15]\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    sda_o : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \counter_byte_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i2c_done : out STD_LOGIC;
    \counter_reg[0]_0\ : out STD_LOGIC;
    scl_o : out STD_LOGIC;
    \rx_status_reg[0]\ : out STD_LOGIC;
    \mem_reg[15][7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PCLK : in STD_LOGIC;
    PRESETn : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_div_cnt_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_div_cnt_reg[14]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \tx_apb_data_cnt_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_apb_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sda_i : in STD_LOGIC;
    i_ready : in STD_LOGIC;
    \tx_apb_data_cnt_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \tx_apb_addr_reg[7]\ : in STD_LOGIC;
    \tx_apb_addr_reg[3]\ : in STD_LOGIC;
    \tx_div_cnt_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    PENABLE : in STD_LOGIC;
    \rx_status_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_master;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_master is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \Q[0]_i_6_n_0\ : STD_LOGIC;
  signal \Q[0]_i_7_n_0\ : STD_LOGIC;
  signal \Q[1]_i_4_n_0\ : STD_LOGIC;
  signal \Q[1]_i_5_n_0\ : STD_LOGIC;
  signal \Q[1]_i_7_n_0\ : STD_LOGIC;
  signal \Q[1]_i_8_n_0\ : STD_LOGIC;
  signal \Q[1]_i_9_n_0\ : STD_LOGIC;
  signal \Q[2]_i_2_n_0\ : STD_LOGIC;
  signal \Q[2]_i_5_n_0\ : STD_LOGIC;
  signal \Q[2]_i_6_n_0\ : STD_LOGIC;
  signal \Q[2]_i_7_n_0\ : STD_LOGIC;
  signal \Q[3]_i_2_n_0\ : STD_LOGIC;
  signal \Q[3]_i_3_n_0\ : STD_LOGIC;
  signal \Q[3]_i_6_n_0\ : STD_LOGIC;
  signal Q_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Q_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal counter : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \counter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter[7]_i_3_n_0\ : STD_LOGIC;
  signal counter_byte1 : STD_LOGIC;
  signal counter_byte1_carry_i_1_n_0 : STD_LOGIC;
  signal counter_byte1_carry_i_2_n_0 : STD_LOGIC;
  signal counter_byte1_carry_i_3_n_0 : STD_LOGIC;
  signal counter_byte1_carry_i_4_n_0 : STD_LOGIC;
  signal counter_byte1_carry_n_1 : STD_LOGIC;
  signal counter_byte1_carry_n_2 : STD_LOGIC;
  signal counter_byte1_carry_n_3 : STD_LOGIC;
  signal \counter_byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_byte[2]_i_2_n_0\ : STD_LOGIC;
  signal \counter_byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_byte[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter_byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_byte[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter_byte[5]_i_2_n_0\ : STD_LOGIC;
  signal \counter_byte[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter_byte[6]_i_2_n_0\ : STD_LOGIC;
  signal \counter_byte[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter_byte[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter_byte[7]_i_4_n_0\ : STD_LOGIC;
  signal \counter_byte[7]_i_5_n_0\ : STD_LOGIC;
  signal \^counter_byte_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_3_n_0\ : STD_LOGIC;
  signal div_clk_n_36 : STD_LOGIC;
  signal div_clk_n_37 : STD_LOGIC;
  signal div_clk_n_40 : STD_LOGIC;
  signal \^mem_reg[15][7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal sclk : STD_LOGIC;
  signal \^sda_o\ : STD_LOGIC;
  signal sda_o_i_1_n_0 : STD_LOGIC;
  signal sda_o_i_2_n_0 : STD_LOGIC;
  signal sda_o_i_3_n_0 : STD_LOGIC;
  signal sda_o_i_4_n_0 : STD_LOGIC;
  signal sda_o_i_5_n_0 : STD_LOGIC;
  signal sta_sto : STD_LOGIC;
  signal NLW_counter_byte1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q[0]_i_6\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Q[0]_i_7\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Q[1]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Q[1]_i_8\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Q[1]_i_9\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Q[2]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Q[2]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Q[2]_i_6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Q[2]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Q[3]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Q[3]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[0]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[1]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[3]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \counter[7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[7]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter_byte[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \counter_byte[3]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \counter_byte[4]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter_byte[5]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter_byte[7]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \counter_byte[7]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter_byte[7]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_out[7]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of scl_o_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of sda_o_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sda_o_i_5 : label is "soft_lutpair11";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \counter_byte_reg[7]_0\(7 downto 0) <= \^counter_byte_reg[7]_0\(7 downto 0);
  \mem_reg[15][7]\(7 downto 0) <= \^mem_reg[15][7]\(7 downto 0);
  sda_o <= \^sda_o\;
\Q[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \counter_reg_n_0_[7]\,
      I1 => \counter_reg_n_0_[6]\,
      I2 => \counter_reg_n_0_[5]\,
      O => \Q[0]_i_6_n_0\
    );
\Q[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q_0(1),
      I1 => Q_0(2),
      O => \Q[0]_i_7_n_0\
    );
\Q[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Q_0(2),
      I1 => Q_0(1),
      I2 => Q_0(0),
      O => \Q[1]_i_4_n_0\
    );
\Q[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^counter_byte_reg[7]_0\(6),
      I1 => \^counter_byte_reg[7]_0\(5),
      I2 => \^counter_byte_reg[7]_0\(7),
      I3 => \^counter_byte_reg[7]_0\(4),
      I4 => \counter_byte[4]_i_2_n_0\,
      I5 => \Q[1]_i_8_n_0\,
      O => \Q[1]_i_5_n_0\
    );
\Q[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_reg_n_0_[5]\,
      I1 => \counter_reg_n_0_[6]\,
      O => \Q[1]_i_7_n_0\
    );
\Q[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q_0(0),
      I1 => Q_0(1),
      O => \Q[1]_i_8_n_0\
    );
\Q[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EFF"
    )
        port map (
      I0 => \tx_apb_addr_reg[0]\(0),
      I1 => sda_i,
      I2 => Q_0(0),
      I3 => Q_0(2),
      O => \Q[1]_i_9_n_0\
    );
\Q[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \counter[7]_i_3_n_0\,
      I1 => \counter_reg_n_0_[7]\,
      I2 => \counter_reg_n_0_[6]\,
      I3 => \counter_reg_n_0_[5]\,
      I4 => \Q[2]_i_6_n_0\,
      O => \Q[2]_i_2_n_0\
    );
\Q[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q_0(3),
      I1 => Q_0(2),
      O => \Q[2]_i_5_n_0\
    );
\Q[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => Q_0(1),
      I1 => Q_0(0),
      I2 => Q_0(2),
      O => \Q[2]_i_6_n_0\
    );
\Q[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q_0(0),
      I1 => Q_0(1),
      O => \Q[2]_i_7_n_0\
    );
\Q[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => Q_0(1),
      I1 => Q_0(0),
      I2 => \counter_reg_n_0_[5]\,
      I3 => \counter_reg_n_0_[6]\,
      I4 => \counter_reg_n_0_[7]\,
      I5 => \counter[7]_i_3_n_0\,
      O => \Q[3]_i_2_n_0\
    );
\Q[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"010F0100"
    )
        port map (
      I0 => \counter_byte[4]_i_2_n_0\,
      I1 => \Q[3]_i_6_n_0\,
      I2 => Q_0(0),
      I3 => Q_0(1),
      I4 => sda_i,
      O => \Q[3]_i_3_n_0\
    );
\Q[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^counter_byte_reg[7]_0\(6),
      I1 => \^counter_byte_reg[7]_0\(5),
      I2 => \^counter_byte_reg[7]_0\(7),
      I3 => \^counter_byte_reg[7]_0\(4),
      O => \Q[3]_i_6_n_0\
    );
\Q_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => PCLK,
      CE => '1',
      D => Q_next(0),
      PRE => PRESETn,
      Q => Q_0(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => Q_next(1),
      Q => Q_0(1)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => Q_next(2),
      Q => Q_0(2)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => Q_next(3),
      Q => Q_0(3)
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"37FF"
    )
        port map (
      I0 => Q_0(2),
      I1 => Q_0(0),
      I2 => Q_0(1),
      I3 => \^q\(0),
      O => \counter[0]_i_1__0_n_0\
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3737FF"
    )
        port map (
      I0 => Q_0(2),
      I1 => Q_0(0),
      I2 => Q_0(1),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => p_1_in(1)
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF37373737FF"
    )
        port map (
      I0 => Q_0(2),
      I1 => Q_0(0),
      I2 => Q_0(1),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => counter(2),
      O => p_1_in(2)
    );
\counter[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE01"
    )
        port map (
      I0 => counter(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \counter_reg_n_0_[3]\,
      I4 => \counter[3]_i_3_n_0\,
      O => p_1_in(3)
    );
\counter[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"37"
    )
        port map (
      I0 => Q_0(1),
      I1 => Q_0(0),
      I2 => Q_0(2),
      O => \counter[3]_i_3_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      I1 => counter(2),
      I2 => \counter_reg_n_0_[3]\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \counter[4]_i_1_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \counter_reg_n_0_[5]\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \counter_reg_n_0_[3]\,
      I4 => counter(2),
      I5 => \counter_reg_n_0_[4]\,
      O => \counter[5]_i_1_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \counter_reg_n_0_[6]\,
      I1 => \counter[7]_i_3_n_0\,
      I2 => \counter_reg_n_0_[5]\,
      O => \counter[6]_i_1_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0328"
    )
        port map (
      I0 => sclk,
      I1 => Q_0(2),
      I2 => Q_0(3),
      I3 => Q_0(0),
      I4 => Q_0(1),
      O => \counter[7]_i_1_n_0\
    );
\counter[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \counter_reg_n_0_[7]\,
      I1 => \counter[7]_i_3_n_0\,
      I2 => \counter_reg_n_0_[5]\,
      I3 => \counter_reg_n_0_[6]\,
      O => \counter[7]_i_2_n_0\
    );
\counter[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      I1 => counter(2),
      I2 => \counter_reg_n_0_[3]\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \counter[7]_i_3_n_0\
    );
counter_byte1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_byte1,
      CO(2) => counter_byte1_carry_n_1,
      CO(1) => counter_byte1_carry_n_2,
      CO(0) => counter_byte1_carry_n_3,
      CYINIT => '0',
      DI(3) => counter_byte1_carry_i_1_n_0,
      DI(2) => counter_byte1_carry_i_2_n_0,
      DI(1) => counter_byte1_carry_i_3_n_0,
      DI(0) => counter_byte1_carry_i_4_n_0,
      O(3 downto 0) => NLW_counter_byte1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \tx_apb_data_cnt_reg[7]\(3 downto 0)
    );
counter_byte1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^counter_byte_reg[7]_0\(7),
      I1 => \tx_apb_data_cnt_reg[7]_0\(7),
      I2 => \^counter_byte_reg[7]_0\(6),
      I3 => \tx_apb_data_cnt_reg[7]_0\(6),
      O => counter_byte1_carry_i_1_n_0
    );
counter_byte1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^counter_byte_reg[7]_0\(5),
      I1 => \tx_apb_data_cnt_reg[7]_0\(5),
      I2 => \^counter_byte_reg[7]_0\(4),
      I3 => \tx_apb_data_cnt_reg[7]_0\(4),
      O => counter_byte1_carry_i_2_n_0
    );
counter_byte1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^counter_byte_reg[7]_0\(3),
      I1 => \tx_apb_data_cnt_reg[7]_0\(3),
      I2 => \^counter_byte_reg[7]_0\(2),
      I3 => \tx_apb_data_cnt_reg[7]_0\(2),
      O => counter_byte1_carry_i_3_n_0
    );
counter_byte1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^counter_byte_reg[7]_0\(1),
      I1 => \tx_apb_data_cnt_reg[7]_0\(1),
      I2 => \^counter_byte_reg[7]_0\(0),
      I3 => \tx_apb_data_cnt_reg[7]_0\(0),
      O => counter_byte1_carry_i_4_n_0
    );
\counter_byte[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFFFB011001010"
    )
        port map (
      I0 => counter_byte1,
      I1 => \^counter_byte_reg[7]_0\(0),
      I2 => Q_0(3),
      I3 => Q_0(2),
      I4 => Q_0(1),
      I5 => \tx_apb_data_cnt_reg[7]_0\(0),
      O => \counter_byte[0]_i_1_n_0\
    );
\counter_byte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA88A20022002"
    )
        port map (
      I0 => \counter_byte[7]_i_3_n_0\,
      I1 => counter_byte1,
      I2 => \^counter_byte_reg[7]_0\(1),
      I3 => \^counter_byte_reg[7]_0\(0),
      I4 => \counter_byte[7]_i_5_n_0\,
      I5 => \tx_apb_data_cnt_reg[7]_0\(1),
      O => \counter_byte[1]_i_1_n_0\
    );
\counter_byte[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA88A20022002"
    )
        port map (
      I0 => \counter_byte[7]_i_3_n_0\,
      I1 => counter_byte1,
      I2 => \counter_byte[2]_i_2_n_0\,
      I3 => \^counter_byte_reg[7]_0\(2),
      I4 => \counter_byte[7]_i_5_n_0\,
      I5 => \tx_apb_data_cnt_reg[7]_0\(2),
      O => \counter_byte[2]_i_1_n_0\
    );
\counter_byte[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^counter_byte_reg[7]_0\(0),
      I1 => \^counter_byte_reg[7]_0\(1),
      O => \counter_byte[2]_i_2_n_0\
    );
\counter_byte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA88A20022002"
    )
        port map (
      I0 => \counter_byte[7]_i_3_n_0\,
      I1 => counter_byte1,
      I2 => \counter_byte[3]_i_2_n_0\,
      I3 => \^counter_byte_reg[7]_0\(3),
      I4 => \counter_byte[7]_i_5_n_0\,
      I5 => \tx_apb_data_cnt_reg[7]_0\(3),
      O => \counter_byte[3]_i_1_n_0\
    );
\counter_byte[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^counter_byte_reg[7]_0\(2),
      I1 => \^counter_byte_reg[7]_0\(1),
      I2 => \^counter_byte_reg[7]_0\(0),
      O => \counter_byte[3]_i_2_n_0\
    );
\counter_byte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA88A20022002"
    )
        port map (
      I0 => \counter_byte[7]_i_3_n_0\,
      I1 => counter_byte1,
      I2 => \counter_byte[4]_i_2_n_0\,
      I3 => \^counter_byte_reg[7]_0\(4),
      I4 => \counter_byte[7]_i_5_n_0\,
      I5 => \tx_apb_data_cnt_reg[7]_0\(4),
      O => \counter_byte[4]_i_1_n_0\
    );
\counter_byte[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^counter_byte_reg[7]_0\(3),
      I1 => \^counter_byte_reg[7]_0\(0),
      I2 => \^counter_byte_reg[7]_0\(1),
      I3 => \^counter_byte_reg[7]_0\(2),
      O => \counter_byte[4]_i_2_n_0\
    );
\counter_byte[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8AA802200220"
    )
        port map (
      I0 => \counter_byte[7]_i_3_n_0\,
      I1 => counter_byte1,
      I2 => \counter_byte[5]_i_2_n_0\,
      I3 => \^counter_byte_reg[7]_0\(5),
      I4 => \counter_byte[7]_i_5_n_0\,
      I5 => \tx_apb_data_cnt_reg[7]_0\(5),
      O => \counter_byte[5]_i_1_n_0\
    );
\counter_byte[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^counter_byte_reg[7]_0\(4),
      I1 => \^counter_byte_reg[7]_0\(2),
      I2 => \^counter_byte_reg[7]_0\(1),
      I3 => \^counter_byte_reg[7]_0\(0),
      I4 => \^counter_byte_reg[7]_0\(3),
      O => \counter_byte[5]_i_2_n_0\
    );
\counter_byte[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA822202220"
    )
        port map (
      I0 => \counter_byte[7]_i_3_n_0\,
      I1 => counter_byte1,
      I2 => \counter_byte[6]_i_2_n_0\,
      I3 => \counter_byte[7]_i_4_n_0\,
      I4 => \counter_byte[7]_i_5_n_0\,
      I5 => \tx_apb_data_cnt_reg[7]_0\(6),
      O => \counter_byte[6]_i_1_n_0\
    );
\counter_byte[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^counter_byte_reg[7]_0\(6),
      I1 => \^counter_byte_reg[7]_0\(5),
      I2 => \counter_byte[5]_i_2_n_0\,
      O => \counter_byte[6]_i_2_n_0\
    );
\counter_byte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8CC804400440"
    )
        port map (
      I0 => counter_byte1,
      I1 => \counter_byte[7]_i_3_n_0\,
      I2 => \counter_byte[7]_i_4_n_0\,
      I3 => \^counter_byte_reg[7]_0\(7),
      I4 => \counter_byte[7]_i_5_n_0\,
      I5 => \tx_apb_data_cnt_reg[7]_0\(7),
      O => \counter_byte[7]_i_2_n_0\
    );
\counter_byte[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_0(2),
      I1 => Q_0(1),
      I2 => Q_0(3),
      O => \counter_byte[7]_i_3_n_0\
    );
\counter_byte[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \counter_byte[5]_i_2_n_0\,
      I1 => \^counter_byte_reg[7]_0\(6),
      I2 => \^counter_byte_reg[7]_0\(5),
      O => \counter_byte[7]_i_4_n_0\
    );
\counter_byte[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_0(2),
      I1 => Q_0(1),
      O => \counter_byte[7]_i_5_n_0\
    );
\counter_byte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_36,
      D => \counter_byte[0]_i_1_n_0\,
      Q => \^counter_byte_reg[7]_0\(0),
      R => '0'
    );
\counter_byte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_36,
      D => \counter_byte[1]_i_1_n_0\,
      Q => \^counter_byte_reg[7]_0\(1),
      R => '0'
    );
\counter_byte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_36,
      D => \counter_byte[2]_i_1_n_0\,
      Q => \^counter_byte_reg[7]_0\(2),
      R => '0'
    );
\counter_byte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_36,
      D => \counter_byte[3]_i_1_n_0\,
      Q => \^counter_byte_reg[7]_0\(3),
      R => '0'
    );
\counter_byte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_36,
      D => \counter_byte[4]_i_1_n_0\,
      Q => \^counter_byte_reg[7]_0\(4),
      R => '0'
    );
\counter_byte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_36,
      D => \counter_byte[5]_i_1_n_0\,
      Q => \^counter_byte_reg[7]_0\(5),
      R => '0'
    );
\counter_byte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_36,
      D => \counter_byte[6]_i_1_n_0\,
      Q => \^counter_byte_reg[7]_0\(6),
      R => '0'
    );
\counter_byte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_36,
      D => \counter_byte[7]_i_2_n_0\,
      Q => \^counter_byte_reg[7]_0\(7),
      R => '0'
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_37,
      D => \counter[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_37,
      D => p_1_in(1),
      Q => \^q\(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_37,
      D => p_1_in(2),
      Q => counter(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_37,
      D => p_1_in(3),
      Q => \counter_reg_n_0_[3]\,
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_37,
      D => \counter[4]_i_1_n_0\,
      Q => \counter_reg_n_0_[4]\,
      R => \counter[7]_i_1_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_37,
      D => \counter[5]_i_1_n_0\,
      Q => \counter_reg_n_0_[5]\,
      R => \counter[7]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_37,
      D => \counter[6]_i_1_n_0\,
      Q => \counter_reg_n_0_[6]\,
      R => \counter[7]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => div_clk_n_37,
      D => \counter[7]_i_2_n_0\,
      Q => \counter_reg_n_0_[7]\,
      R => \counter[7]_i_1_n_0\
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => sda_i,
      I1 => Q_0(3),
      I2 => \Q[2]_i_2_n_0\,
      I3 => \^mem_reg[15][7]\(0),
      O => \data_out[0]_i_1_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => sda_i,
      I1 => \data_out[3]_i_2_n_0\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^mem_reg[15][7]\(1),
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => sda_i,
      I1 => \data_out[3]_i_2_n_0\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^mem_reg[15][7]\(2),
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => sda_i,
      I1 => \data_out[3]_i_2_n_0\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^mem_reg[15][7]\(3),
      O => \data_out[3]_i_1_n_0\
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter(2),
      I1 => \counter_reg_n_0_[3]\,
      I2 => \counter_reg_n_0_[7]\,
      I3 => \counter_reg_n_0_[5]\,
      I4 => \counter_reg_n_0_[4]\,
      I5 => \counter_reg_n_0_[6]\,
      O => \data_out[3]_i_2_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => sda_i,
      I1 => \data_out[7]_i_2_n_0\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^mem_reg[15][7]\(4),
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => sda_i,
      I1 => \data_out[7]_i_2_n_0\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^mem_reg[15][7]\(5),
      O => \data_out[5]_i_1_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => sda_i,
      I1 => \data_out[7]_i_2_n_0\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^mem_reg[15][7]\(6),
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => sda_i,
      I1 => \data_out[7]_i_2_n_0\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^mem_reg[15][7]\(7),
      O => \data_out[7]_i_1_n_0\
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => counter(2),
      I1 => \counter_reg_n_0_[3]\,
      I2 => \counter_reg_n_0_[7]\,
      I3 => \counter_reg_n_0_[5]\,
      I4 => \counter_reg_n_0_[4]\,
      I5 => \counter_reg_n_0_[6]\,
      O => \data_out[7]_i_2_n_0\
    );
\data_out[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => Q_0(3),
      I1 => Q_0(2),
      I2 => Q_0(0),
      I3 => Q_0(1),
      O => \data_out[7]_i_3_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => \data_out[0]_i_1_n_0\,
      Q => \^mem_reg[15][7]\(0),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => \data_out[1]_i_1_n_0\,
      Q => \^mem_reg[15][7]\(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => \data_out[2]_i_1_n_0\,
      Q => \^mem_reg[15][7]\(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => \data_out[3]_i_1_n_0\,
      Q => \^mem_reg[15][7]\(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => \data_out[4]_i_1_n_0\,
      Q => \^mem_reg[15][7]\(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => \data_out[5]_i_1_n_0\,
      Q => \^mem_reg[15][7]\(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => \data_out[6]_i_1_n_0\,
      Q => \^mem_reg[15][7]\(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => \data_out[7]_i_1_n_0\,
      Q => \^mem_reg[15][7]\(7),
      R => '0'
    );
div_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_div_clk
     port map (
      D(3 downto 0) => Q_next(3 downto 0),
      DI(3 downto 0) => DI(3 downto 0),
      E(0) => div_clk_n_36,
      PADDR(2 downto 0) => PADDR(2 downto 0),
      PCLK => PCLK,
      PENABLE => PENABLE,
      PRESETn => PRESETn,
      Q(3 downto 0) => Q_0(3 downto 0),
      \Q_reg[0]\ => \Q[3]_i_3_n_0\,
      \Q_reg[0]_0\ => \Q[2]_i_7_n_0\,
      \Q_reg[1]\ => \Q[0]_i_7_n_0\,
      \Q_reg[1]_0\ => \Q[3]_i_2_n_0\,
      \Q_reg[1]_1\ => sda_o_i_4_n_0,
      \Q_reg[2]\ => \Q[1]_i_4_n_0\,
      \Q_reg[3]\ => \Q[2]_i_5_n_0\,
      S(3 downto 0) => S(3 downto 0),
      \counter_byte_reg[3]\ => \counter_byte[4]_i_2_n_0\,
      \counter_byte_reg[6]\ => \Q[1]_i_5_n_0\,
      \counter_byte_reg[6]_0\ => \Q[3]_i_6_n_0\,
      \counter_clk_reg[15]_0\(12 downto 0) => \counter_clk_reg[15]\(13 downto 1),
      \counter_clk_reg[3]_0\ => \counter_clk_reg[15]\(0),
      counter_reg(14 downto 0) => counter_reg(15 downto 1),
      \counter_reg[0]_0\ => \counter_reg[0]_0\,
      \counter_reg[3]_0\ => counter_reg(0),
      \counter_reg[4]_0\ => div_clk_n_37,
      \counter_reg[4]_1\ => \counter[7]_i_3_n_0\,
      \counter_reg[5]_0\ => \counter_reg_n_0_[5]\,
      \counter_reg[5]_1\ => \Q[1]_i_7_n_0\,
      \counter_reg[6]_0\ => \counter_reg_n_0_[6]\,
      \counter_reg[7]_0\ => \counter_reg_n_0_[7]\,
      \counter_reg[7]_1\ => \Q[0]_i_6_n_0\,
      \counter_reg[7]_2\ => \Q[2]_i_2_n_0\,
      i2c_done => i2c_done,
      i_ready => i_ready,
      \rx_status_reg[0]\ => \rx_status_reg[0]\,
      \rx_status_reg[0]_0\ => \rx_status_reg[0]_0\,
      sclk => sclk,
      sda_i => sda_i,
      sta_sto => sta_sto,
      sta_sto_reg => div_clk_n_40,
      \tx_apb_addr_reg[0]\ => \Q[1]_i_9_n_0\,
      \tx_div_cnt_reg[14]\(2 downto 0) => \tx_div_cnt_reg[14]\(2 downto 0),
      \tx_div_cnt_reg[15]\(3 downto 0) => \tx_div_cnt_reg[15]\(3 downto 0),
      \tx_div_cnt_reg[15]_0\(15 downto 0) => \tx_div_cnt_reg[15]_0\(15 downto 0)
    );
scl_o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0006"
    )
        port map (
      I0 => Q_0(0),
      I1 => Q_0(1),
      I2 => Q_0(2),
      I3 => Q_0(3),
      I4 => sta_sto,
      O => scl_o
    );
sda_o_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => sda_o_i_2_n_0,
      I1 => sda_o_i_3_n_0,
      I2 => Q_0(3),
      I3 => sda_o_i_4_n_0,
      I4 => sda_o_i_5_n_0,
      I5 => \^sda_o\,
      O => sda_o_i_1_n_0
    );
sda_o_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => Q_0(3),
      I1 => Q_0(2),
      I2 => Q_0(1),
      I3 => Q_0(0),
      O => sda_o_i_2_n_0
    );
sda_o_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBBBBBBBBBBB"
    )
        port map (
      I0 => Q_0(2),
      I1 => Q_0(1),
      I2 => \tx_apb_addr_reg[7]\,
      I3 => counter(2),
      I4 => \tx_apb_addr_reg[3]\,
      I5 => Q_0(0),
      O => sda_o_i_3_n_0
    );
sda_o_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Q_0(1),
      I1 => \^counter_byte_reg[7]_0\(6),
      I2 => \^counter_byte_reg[7]_0\(5),
      I3 => \^counter_byte_reg[7]_0\(7),
      I4 => \^counter_byte_reg[7]_0\(4),
      I5 => \counter_byte[4]_i_2_n_0\,
      O => sda_o_i_4_n_0
    );
sda_o_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F5E"
    )
        port map (
      I0 => Q_0(0),
      I1 => Q_0(1),
      I2 => Q_0(3),
      I3 => Q_0(2),
      O => sda_o_i_5_n_0
    );
sda_o_reg: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => sda_o_i_1_n_0,
      Q => \^sda_o\,
      R => '0'
    );
sta_sto_reg: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => PRESETn,
      D => div_clk_n_40,
      Q => sta_sto
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_core_i2c is
  port (
    PRDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    scl_o : out STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    PADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    PCLK : in STD_LOGIC;
    PWDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PWRITE : in STD_LOGIC;
    PENABLE : in STD_LOGIC;
    PSEL : in STD_LOGIC;
    PRESETn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_core_i2c;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_core_i2c is
  signal apb_interface_n_0 : STD_LOGIC;
  signal apb_interface_n_1 : STD_LOGIC;
  signal apb_interface_n_25 : STD_LOGIC;
  signal apb_interface_n_26 : STD_LOGIC;
  signal apb_interface_n_27 : STD_LOGIC;
  signal apb_interface_n_28 : STD_LOGIC;
  signal apb_interface_n_29 : STD_LOGIC;
  signal apb_interface_n_30 : STD_LOGIC;
  signal apb_interface_n_31 : STD_LOGIC;
  signal apb_interface_n_32 : STD_LOGIC;
  signal apb_interface_n_33 : STD_LOGIC;
  signal apb_interface_n_34 : STD_LOGIC;
  signal apb_interface_n_35 : STD_LOGIC;
  signal apb_interface_n_36 : STD_LOGIC;
  signal apb_interface_n_37 : STD_LOGIC;
  signal apb_interface_n_38 : STD_LOGIC;
  signal apb_interface_n_39 : STD_LOGIC;
  signal apb_interface_n_4 : STD_LOGIC;
  signal apb_interface_n_48 : STD_LOGIC;
  signal apb_interface_n_5 : STD_LOGIC;
  signal apb_interface_n_50 : STD_LOGIC;
  signal apb_interface_n_6 : STD_LOGIC;
  signal apb_interface_n_7 : STD_LOGIC;
  signal apb_interface_n_8 : STD_LOGIC;
  signal apb_rxff_rd : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal counter_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \div_clk/counter_clk_reg\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \div_clk/counter_reg\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal div_cnt : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fifo_rx_0_n_0 : STD_LOGIC;
  signal fifo_rx_0_n_1 : STD_LOGIC;
  signal fifo_rx_0_n_2 : STD_LOGIC;
  signal fifo_rx_0_n_3 : STD_LOGIC;
  signal fifo_rx_0_n_4 : STD_LOGIC;
  signal fifo_rx_0_n_5 : STD_LOGIC;
  signal fifo_rx_0_n_6 : STD_LOGIC;
  signal fifo_rx_0_n_7 : STD_LOGIC;
  signal i2c_done : STD_LOGIC;
  signal i2c_master_n_42 : STD_LOGIC;
  signal i2c_master_n_44 : STD_LOGIC;
  signal i_ready : STD_LOGIC;
  signal tx_apb_addr : STD_LOGIC_VECTOR ( 0 to 0 );
begin
apb_interface: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apb_interface
     port map (
      D(7) => fifo_rx_0_n_0,
      D(6) => fifo_rx_0_n_1,
      D(5) => fifo_rx_0_n_2,
      D(4) => fifo_rx_0_n_3,
      D(3) => fifo_rx_0_n_4,
      D(2) => fifo_rx_0_n_5,
      D(1) => fifo_rx_0_n_6,
      D(0) => fifo_rx_0_n_7,
      DI(3) => apb_interface_n_29,
      DI(2) => apb_interface_n_30,
      DI(1) => apb_interface_n_31,
      DI(0) => apb_interface_n_32,
      PADDR(2 downto 0) => PADDR(2 downto 0),
      PCLK => PCLK,
      PENABLE => PENABLE,
      PRDATA(7 downto 0) => PRDATA(7 downto 0),
      PRESETn => PRESETn,
      PSEL => PSEL,
      PWDATA(15 downto 0) => PWDATA(15 downto 0),
      PWRITE => PWRITE,
      Q(15 downto 0) => div_cnt(15 downto 0),
      S(3) => apb_interface_n_5,
      S(2) => apb_interface_n_6,
      S(1) => apb_interface_n_7,
      S(0) => apb_interface_n_8,
      apb_rxff_rd => apb_rxff_rd,
      apb_rxff_rd_reg_0 => apb_interface_n_4,
      clk_en_reg(2) => apb_interface_n_33,
      clk_en_reg(1) => apb_interface_n_34,
      clk_en_reg(0) => apb_interface_n_35,
      \counter_byte_reg[1]\(3) => apb_interface_n_36,
      \counter_byte_reg[1]\(2) => apb_interface_n_37,
      \counter_byte_reg[1]\(1) => apb_interface_n_38,
      \counter_byte_reg[1]\(0) => apb_interface_n_39,
      \counter_byte_reg[7]\(7 downto 0) => data_cnt(7 downto 0),
      \counter_byte_reg[7]_0\(7 downto 0) => counter_byte(7 downto 0),
      counter_clk_reg(13 downto 0) => \div_clk/counter_clk_reg\(13 downto 0),
      counter_reg(15 downto 0) => \div_clk/counter_reg\(15 downto 0),
      \counter_reg[1]\(1 downto 0) => counter(1 downto 0),
      i2c_done => i2c_done,
      i_ready => i_ready,
      \rx_status_reg[0]_0\ => apb_interface_n_0,
      \rx_status_reg[0]_1\ => i2c_master_n_44,
      sclk_reg(3) => apb_interface_n_25,
      sclk_reg(2) => apb_interface_n_26,
      sclk_reg(1) => apb_interface_n_27,
      sclk_reg(0) => apb_interface_n_28,
      sda_o_reg => apb_interface_n_48,
      sda_o_reg_0(0) => tx_apb_addr(0),
      sda_o_reg_1 => apb_interface_n_50,
      \tx_div_cnt_reg[0]_0\ => apb_interface_n_1
    );
fifo_rx_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator
     port map (
      D(7) => fifo_rx_0_n_0,
      D(6) => fifo_rx_0_n_1,
      D(5) => fifo_rx_0_n_2,
      D(4) => fifo_rx_0_n_3,
      D(3) => fifo_rx_0_n_4,
      D(2) => fifo_rx_0_n_5,
      D(1) => fifo_rx_0_n_6,
      D(0) => fifo_rx_0_n_7,
      PADDR(0) => PADDR(2),
      PCLK => PCLK,
      PRESETn => PRESETn,
      PRESETn_0 => apb_interface_n_1,
      apb_rxff_rd => apb_rxff_rd,
      \data_out_reg[7]\(7 downto 0) => data_out(7 downto 0),
      \rx_status_reg[0]\ => apb_interface_n_0,
      sclk_reg => i2c_master_n_42
    );
i2c_master: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_master
     port map (
      DI(3) => apb_interface_n_29,
      DI(2) => apb_interface_n_30,
      DI(1) => apb_interface_n_31,
      DI(0) => apb_interface_n_32,
      PADDR(2 downto 0) => PADDR(2 downto 0),
      PCLK => PCLK,
      PENABLE => apb_interface_n_4,
      PRESETn => apb_interface_n_1,
      Q(1 downto 0) => counter(1 downto 0),
      S(3) => apb_interface_n_5,
      S(2) => apb_interface_n_6,
      S(1) => apb_interface_n_7,
      S(0) => apb_interface_n_8,
      \counter_byte_reg[7]_0\(7 downto 0) => counter_byte(7 downto 0),
      \counter_clk_reg[15]\(13 downto 0) => \div_clk/counter_clk_reg\(13 downto 0),
      counter_reg(15 downto 0) => \div_clk/counter_reg\(15 downto 0),
      \counter_reg[0]_0\ => i2c_master_n_42,
      i2c_done => i2c_done,
      i_ready => i_ready,
      \mem_reg[15][7]\(7 downto 0) => data_out(7 downto 0),
      \rx_status_reg[0]\ => i2c_master_n_44,
      \rx_status_reg[0]_0\ => apb_interface_n_0,
      scl_o => scl_o,
      sda_i => sda_i,
      sda_o => sda_o,
      \tx_apb_addr_reg[0]\(0) => tx_apb_addr(0),
      \tx_apb_addr_reg[3]\ => apb_interface_n_48,
      \tx_apb_addr_reg[7]\ => apb_interface_n_50,
      \tx_apb_data_cnt_reg[7]\(3) => apb_interface_n_36,
      \tx_apb_data_cnt_reg[7]\(2) => apb_interface_n_37,
      \tx_apb_data_cnt_reg[7]\(1) => apb_interface_n_38,
      \tx_apb_data_cnt_reg[7]\(0) => apb_interface_n_39,
      \tx_apb_data_cnt_reg[7]_0\(7 downto 0) => data_cnt(7 downto 0),
      \tx_div_cnt_reg[14]\(2) => apb_interface_n_33,
      \tx_div_cnt_reg[14]\(1) => apb_interface_n_34,
      \tx_div_cnt_reg[14]\(0) => apb_interface_n_35,
      \tx_div_cnt_reg[15]\(3) => apb_interface_n_25,
      \tx_div_cnt_reg[15]\(2) => apb_interface_n_26,
      \tx_div_cnt_reg[15]\(1) => apb_interface_n_27,
      \tx_div_cnt_reg[15]\(0) => apb_interface_n_28,
      \tx_div_cnt_reg[15]_0\(15 downto 0) => div_cnt(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_top_core_i2c_0_0,top_core_i2c,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_core_i2c,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^prdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  PRDATA(31) <= \<const0>\;
  PRDATA(30) <= \<const0>\;
  PRDATA(29) <= \<const0>\;
  PRDATA(28) <= \<const0>\;
  PRDATA(27) <= \<const0>\;
  PRDATA(26) <= \<const0>\;
  PRDATA(25) <= \<const0>\;
  PRDATA(24) <= \<const0>\;
  PRDATA(23) <= \<const0>\;
  PRDATA(22) <= \<const0>\;
  PRDATA(21) <= \<const0>\;
  PRDATA(20) <= \<const0>\;
  PRDATA(19) <= \<const0>\;
  PRDATA(18) <= \<const0>\;
  PRDATA(17) <= \<const0>\;
  PRDATA(16) <= \<const0>\;
  PRDATA(15) <= \<const0>\;
  PRDATA(14) <= \<const0>\;
  PRDATA(13) <= \<const0>\;
  PRDATA(12) <= \<const0>\;
  PRDATA(11) <= \<const0>\;
  PRDATA(10) <= \<const0>\;
  PRDATA(9) <= \<const0>\;
  PRDATA(8) <= \<const0>\;
  PRDATA(7 downto 0) <= \^prdata\(7 downto 0);
  PREADY <= \<const1>\;
  PSLVERR <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_core_i2c
     port map (
      PADDR(2 downto 0) => PADDR(4 downto 2),
      PCLK => PCLK,
      PENABLE => PENABLE,
      PRDATA(7 downto 0) => \^prdata\(7 downto 0),
      PRESETn => PRESETn,
      PSEL => PSEL,
      PWDATA(15 downto 0) => PWDATA(15 downto 0),
      PWRITE => PWRITE,
      scl_o => scl_o,
      sda_i => sda_i,
      sda_o => sda_o
    );
end STRUCTURE;
