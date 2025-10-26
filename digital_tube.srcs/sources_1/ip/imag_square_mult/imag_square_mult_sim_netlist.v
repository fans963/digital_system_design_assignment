// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Oct 26 17:17:22 2025
// Host        : DESKTOP-P2RT53N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top imag_square_mult -prefix
//               imag_square_mult_ real_square_mult_sim_netlist.v
// Design      : real_square_mult
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "real_square_mult,mult_gen_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_15,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module imag_square_mult
   (CLK,
    A,
    B,
    CE,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [31:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "1" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  imag_square_mult_mult_gen_v12_0_15 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "1" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "2" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module imag_square_mult_mult_gen_v12_0_15
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [31:0]P;
  wire SCLR;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "1" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  imag_square_mult_mult_gen_v12_0_15_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
KGg++J83s0yJ7o2/XMVLkRRTRjS0oC9h86tQjl1+xE1m53Uwmm0+K41skiYHo3Urr6lMQ4q2jL5Y
R/1NOu1WGg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jCBx8aLaNWpgdwu0tsffQfmLNKET4Uy44Upxw9AlkO9Ma9Y+tqZHrHroYhGJUxa/dyJZ7Z0HDJ1t
hUhVV6SjuhVMs1NLM1MVw9F3MTSW7MB/qx7j0WAj62FJgoxsCtt6g392p1JAAosX8yACeLKiQ0KF
mnMpugzqSRDI445k7So=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zdO8kU0uCj5Mggk0oLUcYcllNQJVD7vxIj25evesPPwBvXuv6EUsbKmUaCAlFUyG0YQ0mxWxXmzV
V/dRqKxqZ1ZI8+mX4IFaTJSCcYctMZsCl+2EWvQQHakV4QzWuCyca1phNacrRJfur8Ssc/Mhbez3
GLQCRrSfyBYyi3u9J+SAJRcJapyB1syXXhclDtup6m1z2C5S+NX/ql6kVXkcd9P+C5ordunfutgU
6uco8UymF/9QFYiBCWlTkHAgd7DH3dCI1E72N2H/KpX0/0xFBk++NCVuNucOwd9h4/hAyr4L+SI0
6Dzmn6kaBO4lnMAj5P58GIeWO/EtqrPeWg4UJw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FdbUT4bIXyyFULrG0eEn0kqX6tjVoWssNb1FURO5jvyN5IkvkkDKCSLsd4J+2RE35ttJ20+4IZm2
p3H/UGCxkuCYtlZzovVpVf93DlhFUM2iSGd/L3evdLLL8VYETZTScGFdFXqiqe4ggXPHQCSEPD+e
PmMIJTGQka0DD3H+w+9t5Po/+M8b4r1y70l3Py7aYMeCEsZ/yHRmk8szsOjUbwvFEJk8SPXrEERg
EYMIrbryPHXq5E2fCL7hTgHa+bzIdFQOc2/8wn8YMVTmIJCZLBZDXvGSSm16cifWzXKHbPSly8js
RAoD2yYva4rr9cUy8jEyEpUcPGnaJXBDnB7lsQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eGYl/A3vBqVYodgklvBXVlduDkQKDOe941//b/7D71XaDbW1Cqv7m5eqy+I7bUTyBfnKRV6WeTtg
K2eZlSMADPLNGmIEawb1T81kHA95L4SgxCaMDbzt0t5pO+IQTca0KxjvPFPjj860AZ/Y4IJCgD9Z
vZNfcSeez7bqGB9kVNzxh40hdeBm7XY8a+5R/yPufF2S8KSSaiPSvYwD8yXOBzVoRhqA9q5PWKTd
u6qoeWMnQ1r/hIDsge5oDE06b6+zC7odC460K8KIOtKzeCrfWezkynmD7wBR1fdIwh9FGe2Uq4lO
ZbT2QFx8Ga5NQIwIIZZci/uL4Tw/7+CPKEoddw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
k1GN+kT7KgRIHJs5Cw+hQb7EZrReCsvXgXeCjz4o0RyqpPm8XlxoPCNX4kR8BSaVxBTPm8qGrOj8
IkQcLP4XpLGNjMzOE8knGvgjraCBhhY/bboSihIYbJYXuKW0k/ErxcqbMup3dsmp8N5M+ZYpiEuF
88HraBjchDshDh5xlcY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jzBUDUoUQBD0tzi9B/VXNwpoyjUIKBzxkVyikkxc/QHKpaIlgud+eCQD6psG9RUWZouQN8CQmJEY
0K5qgvfm7GxXMbjLUwnVBRg4Uzfc4OTySfJMu1k9/qGISvYwf4r0rzMMp9aPgp+ElEwTGx3z9N0A
vWNdEjCI2mqdxmP3Q9AYUPTudILppELRMP4SJijczuRIhtAKpxFjTP2gL8zQE0aq1kkWRZfaHW1t
wV7tZ/jCUxkX8uj8DL6Bei6oBC1nTm/FjPhi+htKla8XNUEftaqUre2/0Sxhsxl/FTAzaex9fCj4
AMt2l6o0FpW5JlLhGnTYhWm/bgsyGCPBg6lSjQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NHkheDV+2ctvct8YLYXqp9hHfuuSi3OCM3PSQ15XfvkvzfWMZP2XCijeziLf4l/wl4/GFPj6KPPi
o57rlYf3YSK0QeDLL1dUNNisEduBn15STgit6y4EbPt5DEAxrrUD9uC1zG3UbYfSPK0hEbCvvK1N
7Tzm8kvur/fM+NxJ5VdfF1Xo/7leYSR7gI4e+tXgOLD5LdohlsPwSLzuJPfkFqhlYXPUcKkt9Q11
0nR9Mgdx3JzKre55FcXhADBCnaoUnCUYv3HFr+k28FbqSD+86f/3grLYpQvtY2zLIVoJzP0AvKve
CGaWd39mn0AtysLRiJYYqKAe+BPXVvcuMlu0ug==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UZqmaNuaqzj8uYnf2kf7ROGy930/aE7ZH9P3aZqTI4rdB+VhIJaMUSJ3T67tOOrlpA+Aa1R7WT52
WyxrCC28kKhVk/JGJi/4IzdUdMCXLVoytkKMPSJqNkooq6f0e1FVLoVG13tSVVAX1hJuqAyUyg5C
EiqmE0NiVJLsONTGR5svOVNIJVq0b178Z7gHNQjFmKr662NCuTR3zP+K+0swYuTpfNE+IjjEWWAj
lano2j47hkpyU/YZ2khN3Ep2og5S5JchOClEWILco1LXZpIRzGz2dn836aQnpbf2+lHldO1AJaAF
fnPSKam1j3NPY9StIKQvz3rP4PaVBZGYpgXNtQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7472)
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
