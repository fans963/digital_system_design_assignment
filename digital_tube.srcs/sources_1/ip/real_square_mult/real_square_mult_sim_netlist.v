// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Oct 26 17:17:23 2025
// Host        : DESKTOP-P2RT53N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/workspace/fpga/vivado/digital_tube/digital_tube.srcs/sources_1/ip/real_square_mult/real_square_mult_sim_netlist.v
// Design      : real_square_mult
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "real_square_mult,mult_gen_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_15,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module real_square_mult
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
  real_square_mult_mult_gen_v12_0_15 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_15" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module real_square_mult_mult_gen_v12_0_15
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
  real_square_mult_mult_gen_v12_0_15_viv i_mult
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
EVR8EIcxnRCBj8LHJISFpjU4oQwDdgqzrWmvtGHhbSlSO2Rmd0vkUHb9Xc4DvvSNOKGjF1/QC9gT
BcueIRe7MoN2aLoBwoJcOxFestHYgA9GMGf4Z+dMsDss5yxWDzFPUdhfgoCCdiRVNEHIRnnL9fFX
bD+zPjJUAnJyhFKRpYSGUIIGN2ih0FiRr2bsDv6hji/fB1VyqApSnncCD060ORW0MHj3Jx7NMvwL
QipleQJrO8kk6OeX0JeQMaxPsIbu9tfFeCkjLxdlgk1Sj3B2a5SVWdqzHDQer6/Ny7Am98PXUtPf
o3x2RFM0D+EjmMvtT2J5ywzOyuxyoha0x41ZUw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LMulMuEQkFi3KBgapYsohrMv1skZgcBhwTr4kA654PbHn0Gzagra54AP6NdzRVyISfuwmo6CiN6X
dhVRZutQ5RNMKycfLiJWMAouOosRHRGnLyq31TemGB6gDNGOtxxadWAG/A/07ntr5+Mcvy6oXyC9
6OCn4m46L7ZjsJyxYMHO90EC889tuDcrDVKSa7lp+ATXDsZicGwwMltC7o7nti7lH+FVKR+idaka
oBnILPqYic1FdxnjHD6ns7sQvYkr/IUS276YbT9wwgDNm5afEfsStI1bKO5AUYqA3caB0ZKVNUz/
y66KxRlAxgblQ2olHBhw9/qnxL8+3r6QEjoWhQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7472)
`pragma protect data_block
EUYoRebd3J1LJPpvd+j8ooupQFOT0PcPW5hzywUvRcwbGsS3OFk3rNWu1QIAbjrS83NV4dJjsAsw
AyHE8sMlh/mAGRMAE60ywo/zVzwFOgP2rg8HftO2t96wBtWcs8WbZMe1Cr+LvIqKMjQ7raIXwvDf
gJCzuHQ+FS7UEBS4Yzx6zRNURKvtLn4m81xU7oelpWcOvHYNHNmrHO9sGf2WQnzMvfrI+fjNx4wc
7tccvA9PFPB/MPtcn1eU8dsw+SxENOlcqlaHu60GZknLiFSEUQF8D9lv/1/N/EwWsz6i4H/ndEp1
xsnTcA83nQMYmdYebcaMJSAKTt8YxRkdXMcmWS0skYSOwu7NpTj+edIxewZur5UVgCtpnZXYnClg
PU/oQX3O429Rm3Oqmo9BH2ZnIlWyXlDVMJzqJt+4b7LCPj193CtTvTApnBDgtnXPXaMZtMVows8v
ClKvetdYx2vb7QIh0xYN/5hz98BUMBCz9M/BITRnxV5FbdLY5zRREnTh+E/NF2d8ybI+hfEo/M8b
eDLvvNikaO4+XxIRcvve2xyiCMqE5Eg/m9gk1PWiBfyC0fZB8esTjTYYW/o9y+zqJwCrUrfZj7+g
BsJOYKodxTg6PJSl09R3TrF+au0E0L9YZXZMpV9JKlNLsozxS8QDiud+kW0FYgZg4gcapvYbJzz9
0HDNO0zhdXgnPHLDJ9rhwoL4RqgeXuvM6wbhpvDw5vhWILkje9sWLUFlhNroEftwFlgbn3o/cG2L
a7mB+B/j51UqW73Z4CTcpITx93L6w5HD3ju7XByLTBRmixbFpfmVCzMAHlNvK0NKDF0K2EMM9nkL
iBTSMWi66LTWqLDKSdYNKGTOnXYOH/ClrFP554weOnqHjcre0GLYrDDamxq6Cn2AJ/1OC6opitN5
hiGvrwfv28PMCTNxUHTLzm3aIJPXugJN7v58qzXrtKzi5bsXFbHZ1/5XVj7kvzA+dd/AvbJ17xIw
18Wgw57lztr/fOC5xdrpGJDhQk2QmVfo2xUh+oq9R0GX0o2JerYL1kzDtQstvwajFAgHCFkwgU3F
2efA8FL46gm0YwQwhAeP8j2MWw5CoGW9j7DvmkaPltO63R1DOvPTNFfJ3W+qutVjeyi9yAcpMWfm
85e8mmirAKcNqSHt2DDUpIfoAdvepsuOll+/v5DnTseqjX3jJA4FfMFZh4LkeTCT4O3++eKBPoeo
2jcdJuLTHfRZwbbZUCRqQ3DVimpiISEFi2bGRyYIpjDrImc8REHQSH1aNGgKnSumJuwElBLtTx7R
z4HaZaQBYwCErqtkS+XdtI5UBJRuQJV4aI9g24Q5T44InDeMbmJ+z1q0iZfs+/2lEn2O3M71Jjeb
4n19/FQ8qPgYxCy0VnThFDc1SfeD+LEjKiYB1eYv7bBDqZhFUviNzqfcR5WVstrRy1pvlTiKvgl3
ncaP5Lw8Wf0BU+xZm1GliheYt88eZ+sbeUlz98P+Jk5eY98coJ6ixhcqSD1YxkI0u6UD1uqdPC3y
SznRazdjpBGxCTK38VwzE+NkV2PuEn4FAPDcAs3MMMtvZLMeUBjCmT5l5jEUat2I2fSae8Bvnwtr
SqwUFMOWpSaNeRWw+if5TpBHn+V8xkGA93vaXK7tSsZJZCnjsNigZ0nmQlBBEZSW8GVSYcC/xrBZ
gy6E7CGIYXgL8IlKZdPH386z2ccn72FmUmaVbhJ9k56vQQ6KibxVzZdhxhFMcpUbOEDSOofpWPel
H+8bIbslexzm+HKPV2qxq+lWz+Pb+S6YceIUf3Q1QWJmWqwDQu3LwdoX3gP/FnI6ROm06mzqOXxj
N5jFfCuJHWxK9jHcBbzqoXqVo/ortv6BmIcNNEVxYfvQgWEE7RO5yOtPwoii4DgXtgrRbIU+W2/p
t1YkzFLCN5Hd+byUGc1lCnuXGQndogzHiSS52retPamo6kmNjAWBKDuzlqok0+CT+/N/rkcQb8Rn
E7jC0258FsLW4z+OLqR7vIW0fvC1OWCpfUwW/dlAj6rEzy585GFsHKPhH82Bf/9v6dV0xXu3oFAR
PI29l2RCyCHTc1rTdgDq1dyGe2z3qLDFWWanFjVngJwVnc2tQ7WTICiApZUWA2eHSEuSQJSEygcX
1Zt/v/jKCdJJALEhJj/daicc/m/Q9JOng8bH97zw4fC0tyTvzKuUaC8/+T77n10h4E/G0cpTAhNH
NhBbPxtpq5NoAbbQXAbcsLupp6NTQ2N+c4R2RuLL6rNitYbIvTAhfzLoiSjYCwr7/Pjb1OuxTQzI
LQMmf/FQgz5teYk7PQA4KjmlsEPll7FOFGwgXsz20vKwEjaU/JG8uPHi8nktdjOyQObjxZXF03Ks
lwH2Zsf5nK5Oe+I6XGjqwJM/T5X0eU5axUYfCJ+jfe3FUCLVD1/BZv1eKubX5zQY8lYLxAASybSY
3bOTQZt7lEnJeE/9rTnYyd1hWOOCqcmGyqKYPLXopJhyhal6flSL1tZDOsRLXRnCSSfLPrNMMe7A
0m87LF+YhBTG7NfbnP3wuvhb5hcqlNd66xdWOqfb2gf0NuiRM4kgDHbIUahrneeQGQIEMMgICQF0
4ypH9qJe4y7u4l2jTgfcBBUaa9xRFyYCIm/g35jjE3jVH5vikNasHb7AJLo8/rkMWcuYTkH8w3z2
gY2cvxFpoXz+TGc+wSO0Gl/MBIHM0pDKYu0G4y7o5od5QeXT/nf5rDnjja4OvguKqKfrY3xq6d+8
NGs78PwiXg78YJeT1gEj2FIQNtNnugMDnDGS8LJZ0Tn2AMCGJUg8DjtUitC+dOkoiWdcvl9nsDtL
qgVcx8c90wpEO5AEchVutozwqnYbT1NPQmXELNKYZfC8/Irk7MwfHujTwPRJhO3z4+9tQHYDoO37
hyKLAGcgHcsRWzve2qUykEFbaG6z6JFf+SdcNVXplyQMv/fusvcmiXCvlqcMKk8bgfpUYYla4FtL
8GYAnG3lVREaOOwpVQ5Z/RrAIm3E1CfiRzHQpuDg+g9l4KIBDkC7lXzxJ4c3/xG2GNnXVKtxnd7h
xMilHQzhRzAdCiZETS4WVDt9/xKZs1Y4xs+5EGQtUUa4HHEjkVeyCW7fgfaAXtjUM1PT45Tm7s1T
kcMY++MFwl5Coan48mrYwCEAX3NP8zqVK7r+2arELSBT44LbMtYpTQxX132LwOWf4u834K2JBWgE
krwWbUnne3kGVyiamDxxvYP2M918NxEMPUilAGnlS7wx/J1tAsV5AvAKqVO6HOlNnkpthI9q/A7x
UvLBRqcFrBEuqDH4s1vcBt9XVB7gQ7hLZvM0xAPze2SuJWoB8KvS3Lk053mL45TSRsuECQsmREfu
0N3tfYfow2I+OWzvsaJeWYt8V6paXF9lJDAh9wJijT/ADbe6/8qKZ/YCYx2qWXbq3LQeA4NaEGb+
HKdtv8YgUitV6c1eJbqikN2bJSjWBvhQiD7u2/IhhmDJgnQKqFyoo/V5TJJN9bNaEtBVClxl8rBl
OVzuY+CsPNRTBTqKXSc+6hEACoIq+FE0QQYfLSlak90aia5125dke1O6G+8qDnEp63CaL5Eb0zw8
Cjoq61DGNhzVSbHA2ASs2CZ496llvnqKkK5FAb0NkNt3h/kTlOOeep4saoAGRkWnYnW2T3nIDDw3
EyL10TQiFOeDFXS9QMLP5of54qnZrS6H34zWB6wNuD2IVNlMMWBjvxQ1wvb5FV0nRvwInV5n3QFf
76HfAmxv4UaIq99AIsnDSv5zVqxlvLj6ORztnZJiL8Ooz518awOyofVc9JwJyUKGOqHwUn3PT1Xu
PYWs3BNdGIR/ZwOdKaZw6wLAQ9030y0skeQIUNbSVGX6AaOkzvQWmrTNgdTQUh0WomfuDATuuSMa
+s8VsjJNySEk5rpFY0aB7Erk5RA9AWM7K7f2WTEL7FRx4DoBoHxxQkRMEJ0fNXodt53Vfw/G7Lli
1gA8guwKuzMAdhWFtSaYzIAehP6CGooUdEF+CrVrbTf3aXdx2FafyzKH25bLL9rgpz0WlcEAwl8N
DHMm3pNwHWzFiGXOWQNk09L58hbQdUOGskkmHPX1TlKh0EJ+COcpVzuQBOZhrc/A84YbaUsoU/u1
9Q2z6Gw5k6Tuen4LzCKaOCL5DSWLiz5nKOTcJp/vkyk4kQuD/uXBOt0qGyrN4J9n7+TRRQiz49ky
rcNslPwQ4zCq+B137OshKT/FX7T1ncTwEqTC2LnAc3lEtmU+bE87bZ1woau6WqirE7LWe3CkwfBP
2//7zCew4h77dyrev0B7HE0sb4EIt8hXk+QkJL7OTNQfGQCJSA2vsV13qgzfzVeNCVqIzyJF9PUG
adjC5nx1Q+ebdFn0HZ/dLUBLoW4JMM38phOXCIakko/dYTjpyvl7eZOh8fAiz6+SSoTj1kWM3ABp
ATfDUbxpyLgaRXolv2sRC9I7PtJOSCW20qWxNP3xhibfdXvPlGviuOfl/7z89w+Cn9XUXyyVTrtn
61DWaj4uoVE8AszQ4WEI/huQWhzu8OzM6WIt9DNpt4/qOzxAf4P2vT1/u+TVY8cPhXyncY5AEsrQ
H28Euhqnd62xRzvkgS5dgW+wA8yNWEsMVnEcExyW5Y+paq1zH7JMxQyCls7oCMAaeuYA2rTzILrS
lEKzm9PVzhHEhtvOqD2Cj551YbtncGrPt+Fk/qRJfDjOGu20xIvHrpG3ijNfogE1FHDuSpITQZq3
aTkjgJD9BqNkDyY1TcJUr3vHxqHr78jR+8O0ujt/OcTMBkTofDTbTsO8Lg6rK03wyrfZ8AjLZazw
YLfFC7Swyaev4VyEJ3fKfyfOfBMH/6hk1IKyfRILHRHXRlfsMpjiL3f+ljK3tfPtjA2zCPXy1Rxm
G6AKsSBQZ/eKd4fw+ZjRXcOrfQ/ua7lfV45HYAjXv1oNnjLiZ3C946Eok2fHtY0iJhgjwCvAUxb0
+YIpQwpt9Y8n/kl2ABqyOhpi8ibn/OMMQ4duqSe77ZuMoOZWNkXRakNn9cVMuMtINGXqU05h6oLj
hxYqP0eQBWy+7l2WRYk4RjW+fqAun+qkE2EssjoPiIZ324+J/xVBYNLjC8ozA27bFzbjCTkHzyBe
xkVVPTFgsw9zFkVHbYNaC+3ejtm0I5FCFEUMqJ2A9pdcqmWGVf6cD2KzEYkLJdKRxug5KyMMjceS
jrbP3S9S1U+AE/OavLHzjAk97rHGtGBjsX5/N7eKhJc+iHnH7Yg0/XkNOXScnqeUbJvImkiMC0Jd
kEnwPdjFJ8fOKBa4zh4sFfnLxVDhrBs9atiVbmj6NyEOJnY2jZgb6Se27wN1VKQq/AhkSKZ9aPZd
eZOu4m7VzKEo8nMJSOwHuws5/MSkhUL4Qz6IOGYqgMU289xKEgXLNcdEKZFxpNrRgpwSzb/CYM+t
FjeJDgU3OWaP6axTHP/2HWjgYso5msakatiluJa2wPRTkPDbljYJvcibOWxh7jHHS+YoLhXoS1/n
QQ/w7k75bEl1w4ws3GLLUGqeLtMsGwojojbAvf/GUcMkRkB/hUeJE+itHFaOn1ZbEjjbXuTED+N1
/Ecgn2odbuUr60ntaSmDfFRcjhZq6YJrFvxFp4e84XkDNzp40aj6tleGbfAxIrSea/3tnLeBunkm
Y4lzQ9YOmgHUtUir8Z1EfIRFozhgp3HM3FIqcmTOE2LqMqjc9j/3dB2atvX7xi+0iiG8TZHHCtDB
GNXgTpV8dHtkLDWh2IbaT8vQNudOtYd82bXyD4Gohi5kNgMQWXg8769WfpRapdrxPIGDvMtRUcw1
Ildz6P+TJk/CF4+fDJ6yp61xDxNJdpiVcTkZra+txjD70zBtKxbyxWZkigzWNTqM/2zcq7BJYV2y
lflSruNIhkl7DwZtAsKDng7iSCPkNACJFQ3/j5vOXqkM5bMgDCj5VfrzDz54SqvpvJBvPWkJMTVI
aNjY0GTHmoyIl54RtXLxJYRA3QA/5/0aAWzrEGSqwx1Wys+p4BEB+QP5qs4/AGRmJubV6aGgo8cv
1RzsO2pXTOXhgFciuloij1c+pFIe3dCHfoaLaAvJYhFeINRGLaZ506GVHLCLWYT7Q9ViPwyEDbjb
A3EBiesWuYifpWkQMJ18MPT4LtCIPCd8p+Dgc270rbuYTZ5vqHemXSKyCtnwyp0C+DSizrmA4qBI
o+4m3h2YfGPOgftE/UXrZj6bIA8RZDFCBoHpxthS9ROtBO23RdsIod1EzJTyUm2InN7ShJimTkXE
sxAIrzzCrGQfkfRljarmrwIkJPSWKOEZnVSmTLD558V1QLipeHExKdpriEjG5Q10/+e0moe2/vY2
QwJgk8Tnx9Uoa1Vh1D21ea2EBnZyozKn68X4mFzs1Fxx7tVb/98kHPggeaP2OyS5jPb7BpktI2k4
fwiNl+BWGDFo6joxP/M+QJtTVxxxVflRmCUS70VecHdN/TDy7IPGb8kmpxLQ29MK3lM5qrMSV1wi
kiiefpYNBe7+Hw/Kt8W3HXb0t2zNrAabR028uVPQIWSWY2amXP0ZXAfUgvs0ApB9Szvnhbvk8dNo
XXpGtWA9XiRWCmqwb83bl6youAM68jKYSBvN1FCYYGd/rAcTgHhYQlOyL7O7ZXwae2PxYHP6rfLL
DTqQXY+oBkALyPqxeII4IggdM/6PQfs+iO4OUVWspdCTCsXaYkP6wPzZu1HegxVwWUdFXcAjsMYI
7oOhLryAPkNnMbk3ZJDL4XQCJofJsZtI/r2aNbSjCKIe8AjbKuoQ5DLlq5Vd7wT/nOFxLEIBuPpB
nVenWE4+iEQCe5THgPrebspAH1SFGJwuEFiTRnvFCtkw03s40mSuzO8DI1mLfA31ap58e8DBrEUy
NS2p8ezsvP+xWtn3/mxK3JZoEVIx3y5guh1LWi55TXxTB38dCUvEQAWRoq1W9E5XL3kXIYaP5XD1
lCc3ZqB28BAMA8wgaAZtlO8Ud35B7j/n+xp3q5XSRFSBiWaJY8IMMaxJ2b1K9+uvRzvxXXb3F6cX
LzwMgGfdwgdv1ymmYtAJcrRXs72Y3ciTKMbc3LpeoSHjojSf7BT/EHN7RZiB+PUuvPIioUAcST6L
qytFgPMpUw7gdOlhb8S+yed8Ev6ridwEQIzgP16R3++9jeEViprEVwP1sOZmw6BktesjjqE0GRip
5sWmh9eaK5U0mH5dxlQxUj61rEX5Zjs5iQOmOFCOoCWkwqvezwggf3xPMmuqk127EDBywMBy+jQZ
ptwvBxB50ODCKioKYD8cVnBwgkO15OtUpvWoEjx8o3x/x3K+ODOG13YwYRrinHkPqosxdE+js2bG
C/4AJ0sX3ATY6v3wisSBSCUtMyzPvqZb/w47RJG1lxCfmJOEs2P/iU9YERA7rjqFTRNSBf12xLXo
JCUgUstlsrNiGktO7h9f6ThOIbI3q8bvb3904+DqnilTkt7HuZDrX+/5R2WThc8D1WTTYWN89aIe
c1nj5y6mMqTaawXkld0tWWA++Ui5BKOS7vqBFHWiDZlUu/7dHRwBSr31IayaDuwewPWqm9a6nHw6
zm1j0Lvh3j3KatDYYjD3PrSCfeX9O/nwGR5HDK9wYmhNv4s7DMWi78+vDSxoSyvdYwLoZ6JrInau
0lBDuGExE2y7GEg6RsnlWdF4Tk5yIZPg41x5AtHJMgXMBk7lwhgzWkjnD5GYl7Y/I7BkxZI6Fz/g
vvG8PVM7ET7q7eOM52LuMDf5yLZDlWRcFqyRvqkjFn7W4OLy9vHccF1AsFBtnA8HBbVEB4rA8vgx
ht9XSzMxkI25Z9DX/BC38tgC/qHOl8CBu3zXP9JpRoUBvDB+MYtEbWvhXRlkutGDYckvFnQmqp+h
PPzpNxT10pZj1POgcVvIbEIxXTMLIAKMSysrvkQDCWgiIPca/Z7iB5YdKZ7iK2TMQ9DZe1szT+Uk
mqKJm2eV/i8ISuWjtvpsTdiG6zbA458Ho4U9dSGWK0iNpFzVGFVmMHu81bHo7fmXHz619/pePfVv
b8YvQg10apOBnSfZyeiJTLFiYr3etSqvwftyRA8tceJpsgO9YKI9SwYGujCjHmP+n/4AuBgRoLk5
JWbpOzjPdAN33UyPIgkWU4pm1byPG3G8L9Q8tCYiqIKCAOjEmxLm5XlYCFutXuESHh5azsnHVYhJ
MXmHe8yEW85CfzijkpcKaUx+43wm6RZbw1qpPzMifvaQumy5GjYHod//7NgDvYdOkmLjgcAEhZFq
83AR+Y8XOCd1RpNihmBpp/iZbmpF0jf8LUcSag851ZMIpWhLduKoP91wlTeevby5ssW9jq871AGX
+mI7Y49qxa8DhXT08g80HB+2UXighsSdnthnK1OCkxb/e0Ax6eaknspcbK7sp+Av4DlHFQUoZ3x0
tZGaf8WJ2JBPAlCptkkr3KVii2KXzPAiR2TUXxWmCvXawUAEFPK1+zcTqiVyLbwi7k2XeMxsZnOz
/NjWoO/2DPGopI7Po1Vkg12YMF/sga9NAWT0inMi/R2sXkq3t6OnjLY8a6Err0yPOK2bNQ+jqGOP
9oQQ6RLTpAilaP1WmET7g7rd7qRurlYeUdvsdWm1Dez17iRf0iaUDr8VvnRPKaR2DCipGTL6dVHY
2PUSyI3j4LghcRCv4dbONuNBefLLQNyhlh28k0FLxc94pmgbA8gYPjmu82KwGVnt52IVu7cBpGbD
pv6nxVZ6njNtN5R6D0yJwMwOF8rzqnZ7XHADIFQx11JK4bYjwVMG/j6LsmcI1EhgaHPk2M737E0Z
YPj+vrnu534xvHmHwhKPH2Tg1xjk2a0X8x2wq2VtKXYhtOeDnmJxQgFxZFmDUIvVDwx/LceH6gsu
16s+XD3/ZMWkBTQZ/MoeIQTHmfeCr2R2bX19zqlM7clKIdZ/2kzVXV3WuPxU+Y6RbzDtHdPZ1/oZ
h3yKwYqq0aJnro4M5RQC/hpsH3qDInyIZrfrVrZNwqwRNH6x9NkSWIKq20EEaKxikCu/sMz+kSAS
XH1nl4weFLFpIAFaasdP8pUEODOGjp32j/IKRfsLrwjj3LMj153MZVPZSBOqR1GNcKIg8ajohwSs
4mlynF3wEqGwrL6iK9LkqJeCzY+ZCCW6oAFfzlBnqoQ2Kp+if5ajTFxNJx1hVswPIYpvTisL9LZp
MTqs//+2m4QejwVq0gQlakEh1rjLYE85HKR4wMUfEvt0awCBLghi/0yv21fUSTe12lc441RfwHys
/qJNNGg9Fx6Oq2ToeimMv4bwyabRkbFvfqbERJU2K99EhqyHHMV1MhAzvLvvbFuFt9cAiX3cr0cZ
NUElXuFUroSZ3vN282jRqIZjLAQJDN/To94UncPSrK9TJlkoP3mu8KiLdIuyxmqN+oMBUUMu4p5N
gkIlJJtE309hNS+kIuM7R4vYuQpY7oV0hAEvMek0j7vdtDuxxvvc1z+dcXBIQHevivmnn/OLgxHa
GWxAK4qxkZzmhDvetzmuHkiW5Dv3Vfezhhl2FHuNQvXY/EysBK08E56f5o7RHtc7EvplcU0bpO5G
3t8quv26PrlFWIcvq7zQHTfMxqzIor/ZRHhIWY+Y7AU21XQYn1hw1BmeBAHqfv5RVGD4ZM/o9IK/
BQInYgDWHbJ6UG//+I+7JMAeHx/agjAaRlVmCdvovRXS2t8Cz5sO/wEMyUfeWNiB71S1eLYeYOVX
BHD8LuHCIeoHTi3r0TFBN4Xw++mhzWsYG2lZKTOyqlcD9fWik7TdZPNBKD7p4+aZpjFc1SRlpJEZ
LUGs7+Mo7ji1hJ9zjXfdtaqyuBi3/z/yOxJd2pORrDTuoH0APWQ+l5e97eqbyf8s6pGjMD3JH5zh
MIWwk8fUELYJJ3nKRYz2o5/8fsP8316z1brhng0503ogNn9wi1ppPyCHmfFfaxd2GJAkrgHBLdKT
1kOnP73/vvkgEwNwq8zCtjzrME40pN1BGMyTxwt1r9/Z5XCXntwICn2q0v8aNvTHL8Bo/O01ayE/
Sn1yxgU=
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
