-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Wed Dec 29 00:13:34 2021
-- Host        : Mei running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_sim_netlist.vhdl
-- Design      : my_clk_wiz_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_clk_wiz_1_my_clk_wiz_1_clk_wiz is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_clk_wiz_1_my_clk_wiz_1_clk_wiz : entity is "my_clk_wiz_1_clk_wiz";
end my_clk_wiz_1_my_clk_wiz_1_clk_wiz;

architecture STRUCTURE of my_clk_wiz_1_my_clk_wiz_1_clk_wiz is
  signal clk_in1_my_clk_wiz_1 : STD_LOGIC;
  signal clk_out1_my_clk_wiz_1 : STD_LOGIC;
  signal clkfbout_buf_my_clk_wiz_1 : STD_LOGIC;
  signal clkfbout_my_clk_wiz_1 : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_bufg : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of plle2_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_my_clk_wiz_1,
      O => clkfbout_buf_my_clk_wiz_1
    );
clkin1_bufg: unisim.vcomponents.BUFG
     port map (
      I => clk_in1,
      O => clk_in1_my_clk_wiz_1
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_my_clk_wiz_1,
      O => clk_out1
    );
plle2_adv_inst: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 39,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE => 15,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "BUF_IN",
      DIVCLK_DIVIDE => 4,
      IS_CLKINSEL_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => clkfbout_buf_my_clk_wiz_1,
      CLKFBOUT => clkfbout_my_clk_wiz_1,
      CLKIN1 => clk_in1_my_clk_wiz_1,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => clk_out1_my_clk_wiz_1,
      CLKOUT1 => NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT2 => NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT3 => NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT4 => NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_plle2_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_plle2_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_plle2_adv_inst_LOCKED_UNCONNECTED,
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_clk_wiz_1 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of my_clk_wiz_1 : entity is true;
end my_clk_wiz_1;

architecture STRUCTURE of my_clk_wiz_1 is
begin
inst: entity work.my_clk_wiz_1_my_clk_wiz_1_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1
    );
end STRUCTURE;
