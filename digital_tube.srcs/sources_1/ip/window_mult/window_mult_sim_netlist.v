// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Oct 26 17:28:17 2025
// Host        : DESKTOP-P2RT53N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/workspace/fpga/vivado/digital_tube/digital_tube.srcs/sources_1/ip/window_mult/window_mult_sim_netlist.v
// Design      : window_mult
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "window_mult,mult_gen_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_15,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module window_mult
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
  (* C_LATENCY = "3" *) 
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
  window_mult_mult_gen_v12_0_15 U0
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
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_15" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module window_mult_mult_gen_v12_0_15
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
  (* C_LATENCY = "3" *) 
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
  window_mult_mult_gen_v12_0_15_viv i_mult
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
Idk2iPFVlnzpVlto8iE/QMo1x2Nz63FWGLf7LNBCdpKKW7QJmzhDYn+GzVoN2AMGh8y3lvhKfbyz
+XVqugxM15c68ubNxebATDe4wrGTkzqqZcm8XgOwo2O6ZM0IVKV34BF+iFuYJcb62K7jzFmlsYwO
i7g3Dihp950ONsZ8rVXXzGd5EVe4IaEAO+a1iX0x5JiT5zglKnulF0Ca0irlJA+UjNKZso+A7vcr
WrejiPktvH99Uobu5xgo0D/c8yUK9/1tHkN6jwKEgg5grh4VNLzK0vTHhkMbQZKsSuRAVTZsD6dj
oFDEHOmTPlf/M8nk5LiOZsPKwE8IG8RXkgfBEA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yWRJoUL26C84o6d2aRur3+lMo8qTDPbA1SZEIdCt6kKROru5enH5PvVCUIxc819NXkalpR4QYLoh
Lj5whbJ+9Alf2HyR3CfdCcCI8nzN7YScNkc1N1F+GoTw8nGeM0TiZe/2ldF6T74j4FI02lGGjBsl
9T9fx+rT7/JSDixFueRpq6DFRqySCz9p5+qa1rgHNt0usAiHBBKL6MOUEpa7wwH2NDyEJSH4JbuE
UR2dJpc1MmVJVS7vw/byoX57yMlUNrf/Eq4stHvCGLF+kMHD30i82JSArrhldxcTo6skRmjjq5W0
Ya9fnfs7cbVgozqrusBpwRLYhZSZsrvpBLPjug==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7472)
`pragma protect data_block
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
ef4D5ws=
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
