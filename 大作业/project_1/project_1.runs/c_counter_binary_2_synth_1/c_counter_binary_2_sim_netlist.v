// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Thu Dec 23 16:33:14 2021
// Host        : Mei running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/c_counter_binary_2_synth_1/c_counter_binary_2_sim_netlist.v
// Design      : c_counter_binary_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_2,c_counter_binary_v12_0_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_9,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_2
   (CLK,
    CE,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_2_c_counter_binary_v12_0_9 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1001" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_9" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_2_c_counter_binary_v12_0_9
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]L;
  wire LOAD;
  wire [3:0]Q;
  wire SCLR;
  wire SINIT;
  wire SSET;
  wire THRESH0;
  wire UP;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_2_c_counter_binary_v12_0_9_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(SINIT),
        .SSET(SSET),
        .THRESH0(THRESH0),
        .UP(UP));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
A13f8tlz6UJG9JfCNcYl8NLUw8Tlctm35dCRvt/KCTpBFIuXlOawHL7sTHowWNnYPdFQNufThU2P
nq6r7CYRfg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oJAsCu5zl/OMFEQsA8TK81YQdELnJEDcFa6KQ0EHWxmJrxei82pUrFKy5/0YZah/J8433WTkuMYX
n4DxKRAShIrdY1X7G4VuvTy06p94vL5LjcHyEy4fxae5eyT8gPJ2ix4XQa8NTiv0ndfGQZyw3Nh2
G2fKlAI5x3f8zwZZQY8=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
wvBGFVtHjRF0sOMF1pCWFAGskoPwO7T2ijyj/eL3cj3Mn4RaSun2E2ii2aHguV5ZVFP65oRsiH5d
RuZPDUKAsxBDhHSsGkFSPIwX9KivlJTo2FZHlBDTlkfDQbn+a3fWxc1HcR9KUBo8QndFpzMmqgOV
oDGrjFRMryCx3hlDJdU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UMkVtIsRH0SCXq8LQlXc2SFapNVFtJ6lm3Wp55oPh2JHEa2eDcLuSNAMzka2zwzCEXltR/XJthW1
e74yTmf22SChtep5vBZ+ajUd7h2t8MuWnhQAMciHkyF4IkU7ju3JOoQFlih3FqDO3aUJPcamhd7Q
ccMUMAhIvZFp44NdLzl8HbXnE1qh9bi1m8qU8jMCKESUZ7pg4lNlsQjd+Goa1H9iXaLEv3OfHZuq
AS/RQip05I1DUFL5hACAmmneYHUVM5S4EEaO3aHf1jZ3r/piru3ZRDHXxDir2Y9zXiL2oDUfsV5l
w+Pp691O/rBEAjBLQdevDcp/mZn7axrfo7gedQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BizuB2M20zTA5t6lHKGfnJrucOUdZ0HEVkxiYzkxLH0WP9VZIREBo09OejVavblw0lBdoToGD/Dx
ZN2JWgxB3v9b0Oe7EvwN3oB8w0TKm0RoqDmuPV8JuY7RwxtxkHcrVvcjXuOt8j2BPe5Ix86NYRxZ
8RqRFVGNyOVCKZuaFMVHI+ktnNU/xi6ZGsd+L0PEmNWeJ+y+7ubRYuJBTcZK6n0e0Rv144/nsqdy
X+40+rhcynqZUh14Jaqxwmyc8eu2wmo21it2TUiXXzLiWf9C/rPTasxTNu6GgF2yKIv/qtG5zsH5
iEI5vhFnzG+RShh+IHFb+FdSgnifLxcvxMZyfQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WBEZpdyDr9NfPjFUCp37UUdIujNIa897wZZ58/x9eMPhksqlKdy3SYhoDdl4U5n1JXPWIonhbpyY
qfWTq0gV9NaH1PiTuV9w+nrQziNvPhnHnWOzNrltlMQ+uTbMRquXZffmAQGphp7ekw56wGNMIqvn
BRmPzqHv8wZfX/RCaFbjfXAJEmAF89kl5TL3IWnE72Kb9o1cSvFtKTxyRoh9m9E0ghJdkhnRh4Pm
wU/+pIGwon3nUS1E00edVC7apMYbKm+8akp/2UT8ovmuCYJtcE90yRZZaeiFNpLq2UTmaGHp3XHC
2ziTOAA9fjUjv2jhCi5RMA2D0eDmOlHleltm9Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
OABPnxGn0FbPvzx0ZLbfTVgEYNwxteudkg9fcyqI87+zDgrQEonxu1mt996CcspU6CF4peqEx1uS
O93ItlVX4h40HWruQtsdG25H7N3nxAqhG8ve4lY8D2hTWa6zD1aEJVvwnzYp13T812sBCVfyxAgh
POy+60PRLW4FdKXPU2nTaIC0AsLyjoXX17OLqh6rW+iPwmX4xGVcKy7j8yrbISvwXkI+UaaMr/qF
6+zVe37LrksWjJgoDFJR+jmcKaJEKlcrzdREiPcYZuTpytbkOmHuTneSvM6SDAAKbg9le7b+k1iW
9rpdmJFEPYm8MlHm71eFZrilFo3trdO3e6WTTQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
E8Q3ZniK+KGGMY1faTlVfD0iiCXkadpnRiri5TRknNsNCkbEaJvyQQiD5+3V5akU+GIYsn7PwUPk
jUR1tmfZULcCjxI04jeiXgx62qDJFdiMPsREGQCmHBMmiYHJSJeZesUCbE2mciydiAZCVkMsqPPm
D35BihVXPHeQ0YSSA5odtxlgNn49T/jVqDeV/jCa1AWRlQdQ+u+mfYUsZERiludztVV5niQwfm+Q
DmEf2kLDG5jTN/S8aFUZIs3MnX8Fd2nuVuVVe0CcFaXSQrEa1qFrs63Zc0c1o7pnDmhCKBgAPlel
8qQkxqX6zg3fcUG35r1GYT9CaWIBMrPhMH+nuw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6656)
`pragma protect data_block
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
`pragma protect end_protected
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
