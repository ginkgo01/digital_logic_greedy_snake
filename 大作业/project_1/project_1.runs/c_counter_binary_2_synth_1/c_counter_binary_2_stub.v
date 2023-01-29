// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Thu Dec 23 16:33:14 2021
// Host        : Mei running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/c_counter_binary_2_synth_1/c_counter_binary_2_stub.v
// Design      : c_counter_binary_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_9,Vivado 2016.2" *)
module c_counter_binary_2(CLK, CE, SCLR, THRESH0, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,SCLR,THRESH0,Q[3:0]" */;
  input CLK;
  input CE;
  input SCLR;
  output THRESH0;
  output [3:0]Q;
endmodule
