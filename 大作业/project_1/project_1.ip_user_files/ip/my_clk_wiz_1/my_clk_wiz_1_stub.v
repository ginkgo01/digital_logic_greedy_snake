// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Wed Dec 29 00:13:34 2021
// Host        : Mei running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_stub.v
// Design      : my_clk_wiz_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module my_clk_wiz_1(clk_in1, clk_out1)
/* synthesis syn_black_box black_box_pad_pin="clk_in1,clk_out1" */;
  input clk_in1;
  output clk_out1;
endmodule
