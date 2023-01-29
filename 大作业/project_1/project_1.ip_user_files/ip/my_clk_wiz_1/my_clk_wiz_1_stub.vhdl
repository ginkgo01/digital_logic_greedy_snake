-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Wed Dec 29 00:13:34 2021
-- Host        : Mei running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_stub.vhdl
-- Design      : my_clk_wiz_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity my_clk_wiz_1 is
  Port ( 
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );

end my_clk_wiz_1;

architecture stub of my_clk_wiz_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in1,clk_out1";
begin
end;
