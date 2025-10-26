-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Oct 26 17:17:22 2025
-- Host        : DESKTOP-P2RT53N running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top imag_square_mult -prefix
--               imag_square_mult_ real_square_mult_sim_netlist.vhdl
-- Design      : real_square_mult
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
KGg++J83s0yJ7o2/XMVLkRRTRjS0oC9h86tQjl1+xE1m53Uwmm0+K41skiYHo3Urr6lMQ4q2jL5Y
R/1NOu1WGg==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
jCBx8aLaNWpgdwu0tsffQfmLNKET4Uy44Upxw9AlkO9Ma9Y+tqZHrHroYhGJUxa/dyJZ7Z0HDJ1t
hUhVV6SjuhVMs1NLM1MVw9F3MTSW7MB/qx7j0WAj62FJgoxsCtt6g392p1JAAosX8yACeLKiQ0KF
mnMpugzqSRDI445k7So=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
zdO8kU0uCj5Mggk0oLUcYcllNQJVD7vxIj25evesPPwBvXuv6EUsbKmUaCAlFUyG0YQ0mxWxXmzV
V/dRqKxqZ1ZI8+mX4IFaTJSCcYctMZsCl+2EWvQQHakV4QzWuCyca1phNacrRJfur8Ssc/Mhbez3
GLQCRrSfyBYyi3u9J+SAJRcJapyB1syXXhclDtup6m1z2C5S+NX/ql6kVXkcd9P+C5ordunfutgU
6uco8UymF/9QFYiBCWlTkHAgd7DH3dCI1E72N2H/KpX0/0xFBk++NCVuNucOwd9h4/hAyr4L+SI0
6Dzmn6kaBO4lnMAj5P58GIeWO/EtqrPeWg4UJw==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
FdbUT4bIXyyFULrG0eEn0kqX6tjVoWssNb1FURO5jvyN5IkvkkDKCSLsd4J+2RE35ttJ20+4IZm2
p3H/UGCxkuCYtlZzovVpVf93DlhFUM2iSGd/L3evdLLL8VYETZTScGFdFXqiqe4ggXPHQCSEPD+e
PmMIJTGQka0DD3H+w+9t5Po/+M8b4r1y70l3Py7aYMeCEsZ/yHRmk8szsOjUbwvFEJk8SPXrEERg
EYMIrbryPHXq5E2fCL7hTgHa+bzIdFQOc2/8wn8YMVTmIJCZLBZDXvGSSm16cifWzXKHbPSly8js
RAoD2yYva4rr9cUy8jEyEpUcPGnaJXBDnB7lsQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
eGYl/A3vBqVYodgklvBXVlduDkQKDOe941//b/7D71XaDbW1Cqv7m5eqy+I7bUTyBfnKRV6WeTtg
K2eZlSMADPLNGmIEawb1T81kHA95L4SgxCaMDbzt0t5pO+IQTca0KxjvPFPjj860AZ/Y4IJCgD9Z
vZNfcSeez7bqGB9kVNzxh40hdeBm7XY8a+5R/yPufF2S8KSSaiPSvYwD8yXOBzVoRhqA9q5PWKTd
u6qoeWMnQ1r/hIDsge5oDE06b6+zC7odC460K8KIOtKzeCrfWezkynmD7wBR1fdIwh9FGe2Uq4lO
ZbT2QFx8Ga5NQIwIIZZci/uL4Tw/7+CPKEoddw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
k1GN+kT7KgRIHJs5Cw+hQb7EZrReCsvXgXeCjz4o0RyqpPm8XlxoPCNX4kR8BSaVxBTPm8qGrOj8
IkQcLP4XpLGNjMzOE8knGvgjraCBhhY/bboSihIYbJYXuKW0k/ErxcqbMup3dsmp8N5M+ZYpiEuF
88HraBjchDshDh5xlcY=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jzBUDUoUQBD0tzi9B/VXNwpoyjUIKBzxkVyikkxc/QHKpaIlgud+eCQD6psG9RUWZouQN8CQmJEY
0K5qgvfm7GxXMbjLUwnVBRg4Uzfc4OTySfJMu1k9/qGISvYwf4r0rzMMp9aPgp+ElEwTGx3z9N0A
vWNdEjCI2mqdxmP3Q9AYUPTudILppELRMP4SJijczuRIhtAKpxFjTP2gL8zQE0aq1kkWRZfaHW1t
wV7tZ/jCUxkX8uj8DL6Bei6oBC1nTm/FjPhi+htKla8XNUEftaqUre2/0Sxhsxl/FTAzaex9fCj4
AMt2l6o0FpW5JlLhGnTYhWm/bgsyGCPBg6lSjQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gUT6sz+zA6rYgbXzq60UnuyMTcs2n+DgRCqkeqknpFzPJ/+mA0hiflRjG5jBq5u7c4ZhnlBBhjki
eTcZ2jtaWpqBAA1ieLOXn54mpCgTMgofUuR9i4vu2p3/3OeIRT6KgtFru/IRqRIuFag9gqFQc0ze
te99pdY1CISNugr9VBdyVeovK7MU1MunvitJ7VAL5zYbj5+H+tOatSlyTCIJwDr8VJeFNY2Fm24P
ddepBsMngay1ctuFPuB82Axtw1+960t3vP9YC50O/uDc7s+NFhnUWqD2ZtUZWwcYp021qqCm948/
yEuRtvaq7TsnrHB3WI/VbXR1seCXuBVTfGKtzg==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kErlFTlRsD6DqXomzcdmVY2VmzCF7OwZRb+MCy/4zptbW/R/vfG3gkhzXh8ccQQdn/NuSpBW9dpY
7VbyzQXrDCKbIF2VGCbtOX5CPGonAkDo41mLNaVLGxWL5CWNtDTTRzyT0Wjwe0sHDtZCzJ129Yrc
Gs4bAklEqsg/V4fRqlpyjRatkOcretMBU7OmjgM9WMo0MrZG7VX3CQXvQb0fxXePy/LxTqzppXB0
sUvjH6YWblpWjljUOFOTPx7QJn8qegCrpioI+TOMJb16J19cs3COHAX6wsG3gW+9qSL39bULz4LM
HQraTfuFxfuuCG1wZ51MZ3tyAc2jrI4Er22PpQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10736)
`protect data_block
s9huJgYiP2MccLLeJJEL7u/UJNdKw0XXUoyDV2hM8sgZrnHNruA4kUNGQT3XMMDPFyrwXF+BYXPU
c+6oM9zm8YYv51trs+LUuK3lCbji3jcq5Cux98lUFcWVTjzUefmIAlLXf9PktotsXkeDhePeu40T
qsEW/Dnm9G8R47X3mchhBnelTx5fmcJKiuB7oiDrbvavqJDy7rXLG2j2NwJWX1NgtW/qwtN1Az4o
Utzw4c10dRGDNXVEdbLNVkLwtpqrUYD8NGs0odcQpW1y3l16tP3SMHgEw+T4AhciJsP18IvFBuCt
3iZNBr8+L8KWmJhL3DH/b6N0U+/9bup/PKBXJtJ2XhX9S4Y0wV6hIQjLq9fOgD/II14ImEfyl1Tx
Rnlx08GU5E+QMabhg0TljjZu1gptanbru2uf3ip5t54s/0vFqC86GlWSszJoClmmOixen2EGZtul
qJsDnLZ8E8K7a7c+dbMUkOL9it5DKG2nTBbr3EmpY8in56cAFkciJ9+96UduZk6/EpwKMuInoEGm
kAzx5njww7Ox3a2NAmDm5WC8U2S6a9TnOBh9EA1WdX5TMycDxpq4Xv20ZrGf1UHKAiIlg8bsweMu
TXxXuBwZ9x1T8KdyYm/srM2cfGl3mlX8j11RtwMkgYhk9bDntAU6z1EGq+U4PCSTj/iIUGHDIHL4
yMEIKetIfSjoYgQ/I/5UHZG/si+3JxgvVtRwnGZ0mb0XAW6xunY/Um+wYkmnV7RP70reQ4bf3m2g
zCLHMcuB9aRN0uKsHtDDdtI5xy5SfClNldfVyAeQOddHqzYyLkn4y7zuek2n9q1i3eGe6eiZMTuD
PEsdWAa4rhPma43387I7mJ7mDkfxenFkmAQKEoti55jW7RvXdYKL4D6BgNGK83bOdeiVDQfi0OKv
B5xtRglKdaRz/yjq/vPB5Ed8HUa37p3k3PGA2k3jd/1p2jKr7Gx7uD3wMDhZJPOfv5h0npdkc5/4
JfEH8w1NbfTEuYt+FURqIG1CyMT4dsmegsdBTHBgCbEMRV49QaA0D61ylEuLcNYd9GEeXpOYznbC
jtHnjs7+Kp8lk/3ks9yAQUh/aeNqj7oBBhqnySRcQhrUO+AycANW2Hj0LGm0nHAkgcyA6zDArWhk
/+4xDxnTlmfA0+C6M2vwMaVdmMPxdzh8KuQ/kRXIEPmgnZ7D5SoDtQ74z36lvAmJBB5j9HI6QdR5
Y81rmK7kgMLHHRYxpkVglaqgBxNeIWWnJWUJlvY8dOp0ZIR+yoszlffKphe7kxUM9B+kIvSqp/cp
z4AanvOYZmntrVW3cSyOFUks85yzQHfjE1y+od4QgmtS5/IVPzZcn7gCY8ryL2b2bb5A86ZS6qzn
R70URfoFWyblbwvfNz1KpKyGZhkm896BctjZMyhB2L/KTJNYlGEtlEe/LTRQfit0Xpw9ZNWmpVFm
K8W1CcHoZt/xGOKkg6Kj4/Qh4r6rBfNFBTIx0a8w22/JLiZU3apxSdNtgilRyuAxaUE63lB6OICa
2q7S2No/e98OJ9DuTlvCIYyC6tNXWnjqfsUHA4unn699QerEU4JC8eXQtfbBeyu3OL0gX+vNsaNM
OmLzYOJ4J2m+lhgc+aopn1vjg4KSAHhvmfj8o/i/YZOuEn/GdaKq7qulPUoYOWBhaEB+99Z2HPSO
u8IX5lvKQFkAQWYMfyRPvbz0Szkf7T8bsWD10BRd7phthKpRdo6JklwstiDkWBt0KQLMqFQnzNHz
WP/F1gWHBEFog7m8qUKRZb4UiC0BPnH2cbDxQnePObamdBtx1VdHpTf/2EcYfSzDdKdhedovuKqS
a8cTjEXzg7NWMSrEGyzfYNl9y3OPPwgrY0+R22HQS2IBKI6FFWkXrFa9UMmW0KrKxFaZEAN7PTrg
ISEX3GcEotCCXdQh3AqTO41ah1H9B/kWj9lVLd0H//nsokUfs0kFZ4cfFapl6LpepcpBQFs7u5h+
Yb2PDFqnpfhnOl/U6q8QQ59gYeRAfrpBTayhULj3M9UBj4aTHl17Phzr7wQcRaYUGa2ps+8xQHaC
SRTvyMWHXwC4lgdmiXvDIpMvkChamtv7jHm9DWbBNrsqny1wnn3f7gyxHlM++Zk16lewaK8Nrik0
Bqqttwvp6cknTKRQCb5lTCSqMaeryIGFoNYIb4XfVzfQMlkNj6bMnh2pIbbwi+isGuDWFmzwN78d
Lzhu8WMwYhGzjmfgVrMtDYhbqSVBpPvmEgMmjqio2tdarVWXTMhIAr5ryqGuCNd1sZAPAZR15IFs
l4whPAgWxSZOD2R7qwGBu+5CV1UDrYDuI4fr3phC5Cp4jiZHdpmfouLwJYhvbKFzr9SKxx7gGXWB
EAym2jCZDGt8gf8bb4YKufu9JOLatvxHZlZuLyy3eVJ9fiGX93tU1o0i/JcHZpBtMNf07N1guS5K
tp6rQwrplb3Nom02SkDy0iYlHlB4m5J8MUy9NqvvMnnzr4WvbfRbjl9Hhf2CZgj1rdrsY7C2w6Bh
oUL8gtcyNUZZDz+Kk/UBnYOdEKTpAhMS8B4RXJqBFVJuyuWBVkYblXcMKyN2deHTkjzLvqhf7GY7
EeUC6THb6wgrzBRU2MxEMeuTG7+JpjHGtyojfvI2iJz2MDiUX0poXFg2ArCH4OnxN61rPUzt9W+9
4L+TuA+vm+W323Lp9vmyDckMWxRS8sPEPigNjhqFZRUQ3BuJ52biPEFHdZehTTE6ifWXlIHjKG3C
0Mf2E27RKRqkmS96iD8yxSfNRw4upOQyOoSwExgRkfyEaoReVJ0uODVhD8s2YsINc/SuTFpjvOm9
bo1jTmaiaELUZW3rbGtspLAJJ2XGj1dFuwUKF7J8XVaSzU3StyvHhyrQfWgjRWKDSutKsjekKHWi
qkQsGp+arPpXLpQJY0OOHjmdqhd5HfJVJNB40EiOjnPsji1cDlrlGu924kTiiw+F41gKnocNRKDx
nn7LaxAUaju7DKx5rXnLvhFK8sI3J36A7nbhkSa1Y4/AMOHEWHyrD1N6mKuQf1t+0zo5lzMlvhIR
6MLYFuZKAoO2+KlqlIDyuQ2qeRFksjsWd6u0aPLDtWgmGsw7kNaFrVDPzO9L/TQROxpvzqlghmts
xnNcYUnkZkG/LWorVi0dUK+wZ5qH5/bK2XV9SP+gst1tHNMC4Qp2E7EWelp5LTB36cJOnwbBbmrm
7sK+GJcnT4R8YcSrepNug7hEK0MTO2Tev6X8CzxzHA4RWrASIQ85ic/2OoOXZ90YRe8qW38d1Dr4
GiYAz/9ixgGC87FhkV52GiBZLwFZmXtL7LVm0Q5XvMcxEa8lBpbTX84mlOlriQWYK4Ob5b/Zk5hU
gNFQPgPZbyDBgbRXXLhnm6b+NSs3Yia0DYxMwXZPihWUEeO18UsiGEYYTfaGoGthQm+PSWzcpVcn
yx3CXbtkWioXCZpS4aF0acOSrcSMJTorI41poLB8V7P/laQgtKHgjUwtKmSsgs4IIXyw4mcykGX6
ScAYIqClUdFP/MyLR0/EYCgXnQxuZ2gjEedebf4Bdxque4oLDoqHFaE+LB0kt5xcCx9UK5ZoxhU3
1OAjabvfAfVFUr4AaVS2zDQDG2NgHFaZ/A2oOBYjvVKanPVhDx+Qobw9DDeQo5P/65jOU01AZzoq
nJYL8FhqoU3i7trCJqkx3ur2TNV8mFSdI5xaS0cSxK0p1Rdb6vzGn9nuGLRpfv30BTpTJeezzy8T
5viOAFkSliRQQQ0gDF2lMW8KT03Jq4VdkZzwLJXAbzzo7fqVDFVfTx+P/3nmomctDJfnJJNCKAeT
MInyaFO4FztTJY6ifr/sWXt5YAtCdLNPiWNkooOgknaccPbl3PLFnocKO4b3MYWX+dWBNa7C1hiW
bMIKkQ9WYSylTcbWu71TKq4OAU+sirSyTBIrqcqWubhZGj8Y2+FLXLK9OtdiTl3yPcYtVge2CUap
kLhXvPtC6t0Bf3pUFpVQ89JdL6J/IdT4zWNyzjYicqFESFl1iUfyaVcHRSHF1zvwId8VzMU/vkpC
fYYBiW0A4e1jSxnYRBTbFJiJ5Jcf7Cesv7F8hsgteyq5hYzvn8LdtsbGsYkRbFQjMXo+JeKRacgU
FOjIEyfMulmAJelS+6ePIuIFS6caZRgR5TtSOLkTuwXjQR80SjwL8ufKLhud/Uk7E7P3Q+cx70mE
dwTe5kURupipuldxUC75SqSN+88NkUKtFn9eh61wpdSuX0XaOBkpeq+SIfKMoFO4eLsVxwQH0ZyA
v2VUkcGph+ynQivj1oxIxL6hpRPPwsxIjh7WVYFW0CC50X1A69FsvvpLucTeJLnj6Yrppoj9U1cA
UcCjbMLtU8XUmWc+CMwCZKBdHw/QNr8aerN0MzA+fp2cc0DGaV7C89zZlZfU1Sy97tR/4uLoPu4j
uKNdi7zBLi2ygiTMliRRrwHF49gfy9wiauI2YqQf6TghYoYn3HR3xPZ7s33IH/ICkof9ccDvvu0M
YR2u2dd8GwDplEtS9+FVkNkqAxFNkGPA52jZWMKrFsjZ1lasw8zJmHP0JZMlguPr4ll0znDfmWGR
V8npc5DZjEt6Ei9ROJ4kqUEIycz1hJ6MG5n8E/5aRilWbJpZYKK+gRddadOM+jj69eoJ3gbuGj6K
1C6+c8SAnj2NIb+4x/iIFLnoRmbEdljdjhp0c/UtYKZjG2NHKGg4dnngaNq7x6yPt99NnW2Sk0tD
oAn+Uu/ORetL50dyDi+l7z4Mr65jSZ00n+KAqTgGvIvyHqvdcGeO8A3TcWoidPD8TPnt1QYnRzNW
8UBkTkmNoUtz+FBv7qt2bFt0cLgOVhcW/O4TE7x1ILASUcldH/dbdSV/cV6nOLS45Yi09AoZl4nf
0w3E/6r7vkXy06Hp/7r4tugudwo4McO4B+z8n5eOe0orz7Ahd5hFr5EVeGvfKEnmn0riGBvJc8F7
1371TLQtwlNvkPQ1y8QEJWJshfOmUuuNVuiIuFxQ+mXsGXm4UCL5a89jfvZYMD4Ee50wYLYy7aEP
Cvh9u9QDCETyd+8jzfU9wBsIPfBzZMzpZb40oRKMi8LOLZlb7D4w5HWhs3JgQAb6kJciySmmJm2b
pHE3RRTyv+toFnDvJBpvLegW9AAtRyd0rudciQv/wu1EWErbpjA2Vg6nsr614oXjEBW++WMGVmIu
HZ8q2lIBOUb5XKRUPDWQbhj3xHp9g3eUrj5bM86Lf60cwIzqSVkwlKaFNuRMOa58iJRnHvuzg4VT
//kh2qFgc+oYDLaDNMuxfgh+Bx1kETRln/dIJlgtDcX7TjHRLcI+tpiNk8v1zYMUgF0R2iwQAWUC
Nu9sLASjqR7tg3Karnklb+X8j0+CI6i9ljLcEnI5vt3vH7xVNzW3cI2kXQLiVC3m3+zewbi7jqCu
3j1afZeOpD7/33j7iTn/2X1PXi2J18rdxHnz22//4kvRZ/NghqoUS+VYEX+Wh8M8QEj42O3cDEZx
whp6VCHefBs1W1sZyUJVmJfpQYb4TscjQpyUBtC+dyEq6CqmqMRI7kSjb8sFs+fUbr3T7rcLhh0f
NY4uDLzmZYAbiYYNykMdk/921KiZc1DjoefocpvdVzLbjyGPMzUmXk+MG2dooWBXxCVYCwba54VA
chwAuLXY4WE+4VaWZ14O1kxJRRuqowEmrHk/+3vNlVYMsecOmqALAYyiAhsvhYQZZ9JKV10bprHI
BWYb0+NuASDpbM6g3OE4lFKn3cBhZGS4VeRjc3ie4esnwYYTbsLQ1cfQ/LI8dLGOX8gy1MH117MM
80GeVAecbXd05Fjw1D+CSxnLYClx9PYRSV6t9C4wweVJToGGLX1+iSN3ytXOpTGnzN1ef5FG0Min
68TeinjIZ8sePUFfOzmmuFAG4Jls9ztLcbhKucDBtUbIEKI3hsaptWPXF2mpqXM1xWMt3vH3RQV0
AsSOzTO+sU0igz2pBe/VPxSemz44qVUpHCVHhYGfajkW2qc3sS7Yyd0sKwOiYcdzhz3cWfDxChiy
F5yvUABQzO2U906vVgtbsgmsTxSvVkijsMXRe9zmTX1wsObQ1OcqIdHhdsuR1yFXgS+IOH7voDDf
pfOvuAho4+lid9E9NtjqrGCflMQZAS7IAGeXsxu5bntqJHizrUscBBomRRr9GcBTNdf7BbOBanBF
8yPAyD3HDfuVbNSasVkwZcRuifdilycj8aDHXeY+ei8NPftLvrzDW/z7WPtpwXW7w3X0HFR99mth
dBr30RaICrvJfw42JnvXv3NnV04URzqal0rcDuPgvgSv63RE0Zby13EQkF6cFVlwOWPYbxIfFZuE
+SOo7CuJFKQyH+W/BWmF7hPVYt40ni2R83NZ20jKrxqNoQhim5UMJ+BtdlT5+rBvOvYRnbGDOA/G
vGK3M5FXGZjIrJt1vQxle4Swqy+bVT5wq9sALUTQomu5Z67glvWTTCfVL9FA4s1Y0dprFHO7/Bai
nRSe3TJOplE8854j15RkMWNE6CtTAx7vcbRPsI6nYHQILXMpyBIBDcKEs52+kHOpk+O08on8cZKR
vbri7hAEAltUfM7zywe2eI0hHRYfpDeyXjec5aOCUo3YjlAob5tuTWr+vgGXAOBSmUAA7APSYzh4
HcPKfWD8WsghTRGZI5dXFe6rjqCT/1wQ7/lV4NK8qYc9eKpFSdaJGM4dLTKgnXNJyP3mwVwKFQDE
wkPpQJZnJwclhX55+1B7DHC7kLlaumNmLk1oEL0yfCMuYiswsGanQSx4d4tUe/54L1864xctTsAy
ywkVhbyRHSjfY/H0giqKzfQIhbaeUawtuXWBMkoGlEfVgYdgMkkk66e2/VzlATRPebvstfQOL+qB
+X+iQHOP4t/VedRb2Io9dYZU+gc3MucQZsMvmxaGhuSh1u67ie0se6bvRjFVST+HSFvM9oakk90Q
0x6KhYw/ZJi99ir01KFlf0lnpiu9UxK1qoqeByaAfvtfFOLockzkOVNLwL7/vmHCWo1iVw9Th5N2
aO/1AmWAbjXbufTyNtWlXEAQGHJ1LY0jVXKGTEv2R8/bDcT0kWpL65Lv8auGJ5di7+0ZJe6mZno1
6Yk+/OmiELTNpDz411z+kJxVTV12NTGx6ScFfWgvuYxhG7YoRpiBSrcvNG1LOU8rClm4cuDedaYE
IngNSmy6JrEXwmpWxsgTr6oarrzzSezUSSlaJqeeUYnzXzsr9J8ziy1fQ92aRLx2LiaooDlovBhn
yJcKsU8XZufni+v9SccdcybWhW3ywVuBZ2Q3Uz5nS1fObWqNY8dTf5WQTbxsLpKjqtZavGqf8pFd
GTYePWVMg+ZU/ufhitCudhj89IMvWpuG/3ddpmzvhre7h4gsJyzL+oD9BJNTA8/aiZSEbUoQIRns
5Bz07H89eWOTIcdvUKPqY2YealYE8WOk9GswqqTRC7akyj59kFO4myVeJEMvwHaWthwW1GpTRu98
X8ktxMWdrD5vxU/Kebr6+/eagaQzFAbuYHfn85FsqT3o9mLZiEriirM5yMWRozH5XjvRpObNDaKK
9WMuwVhO3VW4qtk10lKn6cb+YfSj7y+Op0zokXCeedhDeentZGERjy/IrfxivC2Hr65AIg3AvY87
Aa8yRF8gxTZpZ38muI8eieMLs+plV0CyOW50/8rs2fUvC02y/yOg2kne/ABrRlO0Bx2+QD+KHqom
hNvmkre0rHrqx1W0VwID/Xu8HTwiJLfPKoXII78zm6N0LcFkH2L1LlrSFllT0JbnViMcpT9HMaTK
hCQMzptvH+Tjjr6pvWfDkedWC2ztpHam5LQSQRSz9lbkL17BRktzCi5mq90Rs3MlkIpZ8C8a8EwF
SW4mIazGxiMuMUc810xKhEy7zKhNvIL+rZ2J4KkHPnkGUXXGVaQutgt6wO3QDib9tf7pAg4+VXbd
g12SbbmoLXYZIa4pqkd/YhArikkUFa9S1dHlvF8tI41+ZHC09S83Zk7zn0efSU6kZslq/mtSt/+Q
R5leBbxxSHwnqCgBWgtAOSZZhs3ufpmCDcT5//6XsafRfAlczxd43GeqPaOxmzUNFvtZODy3Mrxu
IDtkdvK0ipsFf82PuV/J1QOj5GO8y1lxHlocN5tT0iDJz2q8b44DpWoGOw6nxyWSNOp/ygv3RAYp
hBk0tX1rS8g4i5ww/BpudPagscRCPEwJai3isuQBD+1p3+uXMPNyo8aT1GImzbWHubmWebGhz2iA
78/MBittGrlPYWBReeg4GjT6b54e8uWqDfmtuMko65VT57/I2F6rAyf0iUh+zGEb7K6C4VuapC1m
v9Sm109etZhGFWlzoRGYnD2bZ2UP36BttK2DtSj3ZRodr1knfoDJRtkId39zy6463pd5qjIn5pwE
Eq1hBPhmxhvH+D0UzkxvbXhnk/o7sZBlNm7CRFs8o0iE8m0KvN1ZLUUc8RbLZVS/1HtISEf2kykW
Hld4MpsvnsE1X3lQMpCW6jYq0W2JLCb01x36SlnCitVqt+fBGljMhYwogI9q8qthdlUF+CfU2bT8
C5hNUYNxv3LSIZ6c6Qi2CRbZNv5aeknNkZt8y/w+DgiCRWGTHxIu0trt5YeQuhP50MvHaedOTYRs
DbZpiRsIx63QVlcf9hEMODcqNlJOggBE38yxy0Y5NwRh9WmNEPeGOkENY9m+WA10oHmH7m3l1mB+
bP8l44vaZ1hIyguGM6HlmbQuXhPJ3R1knyHqD4fJb/awBOz86ZScQ5XfgYJNq8BygGLR56Mdhsyl
tQ80xX34SmJTKkJ+TCv4MqQg4AS85aqZzbNYNidM4IFu4mCmZ/1is1vXYbEhJjPk+yA2BebsLtM/
H7MvP5/Rw4Hkpq3A4G+59/9Jvs/fVNLoCaYxqZon7xztoDjeUokyz4ROp2XgSPbbke1O7aI43BW8
MeeBI1ehLCAzcMGN0SPglkWfT85Es48z7xomw2nsHCTBixRmp/FYuiollkhQqW/y+/VIFEMGwOQi
4bCgyufnIbhw69FWtys3DENf4Ed7gboW3cy4JCzy65jeHs5XUJgKQXcTckhgBGlUCMg7NVmBCiQ3
LDQJuwwdJv/JvQPG8PTvvAQ9oltNV44RGcLnFOI7OLAb/peYTqBk9V8K06wYIG4fY5v0NbC9HtXH
zCvpdMv774IK2c5VuznOopu3Nn4m2ld3F1kUZ8VcR2ZzFOelq8+DuKCpQU/Fg3PnUNa46BLuBGU9
Li+jkDYMR25+j7qS57YG35WhShkW0pOlzhYvAR7KSTgA/S5vm+u45xZeHok7vZ3ZdaEDU0JPzgGP
pglrK4rWqALTMky2/rgMRORzljv+Y1k4O4xU61BesHIOd8/3V5UfPWC0UmbKylpzH1xHvcVJmhD9
ZYV5jbewG9ZfqFoq2QfqeUcmPR5xxsuVNegNhGbcJAZN6vAi24He0KXlEc234bLAr+ZRiBHTWS/C
wUdWW/H1i5lV2t0UwVI6ry1rct9SwLwfypfyuxaQ/MAYNY36Th8owLJGN2JTr7HPIZBBDWSX5Bxn
z6OPGARPETC0RkFEsVD/l7aDEMfUo+OZasHuasmia4lqNTqNMNwYds8UVXjAWqfWsbZOnaPYSZdq
ZhUpX+rGEBYr+XwpMHrVAd6mn2duWmYgllM3OcATz6BO5RjEHzNCcQpkI3lT6ojoXQsBWHAHBjph
9QjQtGTUpSi8GvMGXdz4JASO9F8tvbXeyStp/n3SbHmsqtTSQcIieZI1IPLc3l5u3XgpP/nP8dCI
yBkJOzhGl/gClpZdYf7YX4XKVDAvaYGaaEjlG9fIrS99nsxXkjrWDYL4RvQOPP+NupYfVoZeZ1GQ
Na8bSB3gO9FKznX2ldWZ/CBkYfj+hVvZHq/0m3zxUc4NOQsqF2Yn0keNDaIubxNzyKKRR7ltBOHx
LA+ASiHwOvQd1Jyav60caExjFVkKc5Vo91ryTLwBOSYAD08DjYSVE49FDDy4VV+Pl31lFPrnOHK5
ZtpmRgvFadx15k1q+RSDnzcEFMzHYHYCktqKmqYLW84q8AFFqRvshBg7snZ0gPbY0OJxa22haiYI
w/ce2mdLtHBjTIAFLvqP6IyMxeIE90Y2+ZW234N+fWqEjqL7eT8MlzWS881Y69UvwRQeUnlKLMJo
3KhfaWF9FbHrwCsJEoF+uaPfUDU801Ro8Rcnv9VAWC8RVRTPIU+qVNJpe1nW5iSdyEtrsFMvY58l
J5pdzVom39IoA/j3s5gHI29fH0z1HpIYuDv+uTREJV4Mp29sJ3bFeyyellAWDJrxfAjM+nG+qwpA
484YBHbN/kaRLwK693VmmZVA54Au6di6Fa8bGJObCvPC4uE6VvIJi6hswNUWgmt0mfbtdFfQI3Py
nC047J3WL7FS3Z30yXmxb51NsVObcEzUBT3WcTR6fNfmSdIwz7uoKPCl9blAmyVVIyymz2KShAGq
1+HOQVe8yNLvw1friE4vbh16AaTM7oHURVBchcnlHcFUalbagrlf1FXyeizHwL4D6i01fqsE3m6o
mFlPzT31qcSwz0mq0Cr7iQXzrQfyC1vo8Gb26FCyp9n5b+ixEbiGC5Zc15zwWf6Grm/NUkaKB+Cz
NIoIBWU77I2rWt7PEJYQMwlU1z4ZsR0/OCubXEACM/2r6eXZCKqlMzSoCveQ7aaMOEl2h7qBuq6E
pYxKWM7PbPOg0oOdNvmNrsw3pMaQpNTWGDhjedgzPzVcIbu+Zz4K5Xzgr3K1pvlxryQU0LtqYK1C
mdZCGdKskm206O9MmhmDbp3zSCCNfDAKMetj0+VNqqwmHdPpqwaElfxoCV/3rO1BXM+eWb+bUrLc
VZZrjB0M2BUUpMvHgSzGzMIOnpctngnuSqOHat2g0ebLlT8DQyQ+chiKNTcMU+bVcMceDIcY48Kl
RDPs2tw080zuiHvGGlWeTSutots5GxJ0y1tCy6RBrR1htwKFoib6hgVhj6G7Ramxv9mWznaU9UNz
BR0asZuhlL5HcqS1/PCqiDyBBJPLFzaT4ojYfYVqQKeALaxQubBMg7XTO8tGk6fNHum2N/MR7tIW
xmKtQ4hfg0GiX40OuNvffXsbaGsLe+vYsI5Hsu08RlU4kTVqSljUHLfuq8aMt6ABVNgEBcKJJ1Pj
YwMNEiW4F3RSLRUEJL0UMYWCrvAH5OtCftyPr2K8QTRmLlNBws8jHJ3n3fj4BKyCa7LIkBJXmTKt
ozQSJnlKCJbakClsi7antD5LUoF+9eUYfA5vxetNFEuy/nCfPCbzCdblu3hsZH3Gt2dOb/YxrLj2
nOkw4Sb3fLC6d7JRHgl6IhJee01R0755SthQTn9pmiumZHPGMkWgHgeyHOKqjkvsMB7zK9zQaBzZ
kmrYDafvHmTSpSKH/hYd/g0ocwQVAHP7E6JmytoimwAEjbXDUC4kW2CrrzlHntbnPP0uKuHQuDem
2R/sNoYLKaMMCT5lYEJWlo9VsoTx6fIq8vXXMfbmvNoZd3hRrY3VwUf8uK3IhOIABxks9uUVN9M8
Ubj2K1oo4c6N+x5YIyRYyTDGg6EgPEZXqqj22/mUmFeCPzrwMGvnI7hicpmSP84dEMVSS+PAfM2f
8D4x2RWEIu0lJS5sTclEag4xErgGgmdZrwRFaIWtvd1zK73sdx0UM+z0iZJ7qV6hqbgMX/DqGGIT
g3bnDNcJGh8ExZVHMNqWJEcZsfbKp3P683rgeFiErvntumQTj8I0Z6ZVhMuGgb8B7DYUmx94V3CF
PspLchZuXEjzryP5cfKCRANLQzr1t8wgRnFcdUfA8knBSz3mZ2DURKwXcZwe4x0NsY6o0jbohw7v
njlGqqJ08PSjswhy/a8KLrzL6QSEdnjDjaUxYaOfpvSA/HfBWBj6ihKYehen4V0M/ibgMM71gYbv
y3BU/LW+nj7RKslegRLywi+JLifXJlxGi1eNYEW+ESsEkqaM4XqgFwHeW5FS9KXiO/LFBX9qlrtE
PVG+h+9xy2BbNtJju61WTqRh1z5LWnM3Z+shsgPL5BTxBESHknJbPD1b57wHIBuMMzp2cO8e4tPJ
IShPAKwM6NpZBFL2coXykR1AT1E7vg2JGAjPunJnyb3m1KynRBwnck1KaJpFG/rth6430uiQtvgA
sk6y3BoOXgKyvP9A0U2/i0DnCu6PorHJwytnFx7mgr/kLWbKjHTkAV/3ZyxcXA6AxshS7q6Pwrd6
CBRnhsH/s6bX6J3G5KcoSJ07HvrwLK3oLS+Gy5aUxAXdx3YkafPWOlDz7s5V3Pdp9Bk9n17YrGB4
tKJsrzlxEB6jzlRTufrdu/0WX7PJiznGTIGCtVwyzCbr5vickhpm4alAMWjPmGBkK9CoVYmPP9Uj
N8mg0Q6nVoh2C8qOV8x3lgZWXw+18fKjXwKgHQncb0xbUdLI6Qf9lruev72FuuhF8F7+rn7SezAI
0B23OQ75tv7zNsF+IYvZ2HGf0PcWSTkA5BHtPWL13/mon520luNAXBNsNBy8fi0qqEa1SYaHTxx4
aF1RfICmwhPY0TNnKYGJ9n4waoIQWX+zX6vw7PbDJJj/AJVOx90Po1LC6zzD3SpumiRTjP6csQF5
+EoH9KHV0S2wpMg83N8B62Hg1M3Nw3381Kv7QTWWbR3sL6h8l6pxNvXgJSO0+5zlivWd+a0GVQGc
DL8p5Lx9GaerL4Ik9xPlVp2DXecxDZZxBCYD/kQHOf+h1pyLHi1+lEH+HNK580tXRO7S/0F293Lo
CKNLlC5kwJj2RrBNiJlnlBxO0ISVqgDLpDNXqXFPB0ID2uSJzeqyZliwyg88jO5GtVDsmhbz8U7B
XCskf4U8lLyuH/0xboGmghi+KNxUbcusEQBlVJp4wZrEXMF7Uzwi7eV3AtHOYYCziKi6rTOPbwHe
JrrSNOQKhtyOjPKuxb4ytdt9PV3AWVA6x/G5BL7J/zXFmLLi0tRjQlAsYFXDdwY76MW0nKQrFiY2
fMYJ0L6bXwUkgphRIHTlz4JkDjuD8Mf5jhw0M+ul+PkOYHAvWOwflv11Sg+JywNOnTWTIVQGSwy5
/+RCTSYX05AbMgi/7ojJSoG78ttxSL+C/OiELMODhAYTci6tgcbEREwNKRT2JsXzB16iCHj3eUHJ
7VJKN6RqbMHPjhQcVLqu+s7/h8Wlos64YEW3MqBGEbJB7UAXcscUEfnm8zVo6zSycA7nz6ra4VFi
2CpX48Veo5+lH30eCQNvWyBZ9PslE2MfXGLWf1wSE2BMrTK20ptAYTtACQYD7DEfF4lZq9VPaFqN
9sbe/bOpUgomQXL9aN+0DgS1H6JfKmtRw1d9FpPqhdn1qcn/1wwD9qwkkaANEvOhGK5bXRvxg33x
NiJRksvYWB2i
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity imag_square_mult_mult_gen_v12_0_15 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of imag_square_mult_mult_gen_v12_0_15 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of imag_square_mult_mult_gen_v12_0_15 : entity is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of imag_square_mult_mult_gen_v12_0_15 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of imag_square_mult_mult_gen_v12_0_15 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of imag_square_mult_mult_gen_v12_0_15 : entity is 16;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of imag_square_mult_mult_gen_v12_0_15 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of imag_square_mult_mult_gen_v12_0_15 : entity is 1;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of imag_square_mult_mult_gen_v12_0_15 : entity is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of imag_square_mult_mult_gen_v12_0_15 : entity is 1;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of imag_square_mult_mult_gen_v12_0_15 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of imag_square_mult_mult_gen_v12_0_15 : entity is 2;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of imag_square_mult_mult_gen_v12_0_15 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of imag_square_mult_mult_gen_v12_0_15 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of imag_square_mult_mult_gen_v12_0_15 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of imag_square_mult_mult_gen_v12_0_15 : entity is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of imag_square_mult_mult_gen_v12_0_15 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of imag_square_mult_mult_gen_v12_0_15 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of imag_square_mult_mult_gen_v12_0_15 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of imag_square_mult_mult_gen_v12_0_15 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of imag_square_mult_mult_gen_v12_0_15 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of imag_square_mult_mult_gen_v12_0_15 : entity is "yes";
end imag_square_mult_mult_gen_v12_0_15;

architecture STRUCTURE of imag_square_mult_mult_gen_v12_0_15 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 0;
  attribute C_A_WIDTH of i_mult : label is 16;
  attribute C_B_TYPE of i_mult : label is 0;
  attribute C_B_VALUE of i_mult : label is "10000001";
  attribute C_B_WIDTH of i_mult : label is 16;
  attribute C_CCM_IMP of i_mult : label is 0;
  attribute C_CE_OVERRIDES_SCLR of i_mult : label is 1;
  attribute C_HAS_CE of i_mult : label is 1;
  attribute C_HAS_SCLR of i_mult : label is 1;
  attribute C_HAS_ZERO_DETECT of i_mult : label is 0;
  attribute C_LATENCY of i_mult : label is 2;
  attribute C_MODEL_TYPE of i_mult : label is 0;
  attribute C_MULT_TYPE of i_mult : label is 1;
  attribute C_OPTIMIZE_GOAL of i_mult : label is 1;
  attribute C_OUT_HIGH of i_mult : label is 31;
  attribute C_OUT_LOW of i_mult : label is 0;
  attribute C_ROUND_OUTPUT of i_mult : label is 0;
  attribute C_ROUND_PT of i_mult : label is 0;
  attribute C_VERBOSITY of i_mult : label is 0;
  attribute C_XDEVICEFAMILY of i_mult : label is "artix7";
  attribute downgradeipidentifiedwarnings of i_mult : label is "yes";
begin
  PCASC(47) <= \<const0>\;
  PCASC(46) <= \<const0>\;
  PCASC(45) <= \<const0>\;
  PCASC(44) <= \<const0>\;
  PCASC(43) <= \<const0>\;
  PCASC(42) <= \<const0>\;
  PCASC(41) <= \<const0>\;
  PCASC(40) <= \<const0>\;
  PCASC(39) <= \<const0>\;
  PCASC(38) <= \<const0>\;
  PCASC(37) <= \<const0>\;
  PCASC(36) <= \<const0>\;
  PCASC(35) <= \<const0>\;
  PCASC(34) <= \<const0>\;
  PCASC(33) <= \<const0>\;
  PCASC(32) <= \<const0>\;
  PCASC(31) <= \<const0>\;
  PCASC(30) <= \<const0>\;
  PCASC(29) <= \<const0>\;
  PCASC(28) <= \<const0>\;
  PCASC(27) <= \<const0>\;
  PCASC(26) <= \<const0>\;
  PCASC(25) <= \<const0>\;
  PCASC(24) <= \<const0>\;
  PCASC(23) <= \<const0>\;
  PCASC(22) <= \<const0>\;
  PCASC(21) <= \<const0>\;
  PCASC(20) <= \<const0>\;
  PCASC(19) <= \<const0>\;
  PCASC(18) <= \<const0>\;
  PCASC(17) <= \<const0>\;
  PCASC(16) <= \<const0>\;
  PCASC(15) <= \<const0>\;
  PCASC(14) <= \<const0>\;
  PCASC(13) <= \<const0>\;
  PCASC(12) <= \<const0>\;
  PCASC(11) <= \<const0>\;
  PCASC(10) <= \<const0>\;
  PCASC(9) <= \<const0>\;
  PCASC(8) <= \<const0>\;
  PCASC(7) <= \<const0>\;
  PCASC(6) <= \<const0>\;
  PCASC(5) <= \<const0>\;
  PCASC(4) <= \<const0>\;
  PCASC(3) <= \<const0>\;
  PCASC(2) <= \<const0>\;
  PCASC(1) <= \<const0>\;
  PCASC(0) <= \<const0>\;
  ZERO_DETECT(1) <= \<const0>\;
  ZERO_DETECT(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_mult: entity work.imag_square_mult_mult_gen_v12_0_15_viv
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CE => CE,
      CLK => CLK,
      P(31 downto 0) => P(31 downto 0),
      PCASC(47 downto 0) => NLW_i_mult_PCASC_UNCONNECTED(47 downto 0),
      SCLR => SCLR,
      ZERO_DETECT(1 downto 0) => NLW_i_mult_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity imag_square_mult is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of imag_square_mult : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of imag_square_mult : entity is "real_square_mult,mult_gen_v12_0_15,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of imag_square_mult : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of imag_square_mult : entity is "mult_gen_v12_0_15,Vivado 2019.1";
end imag_square_mult;

architecture STRUCTURE of imag_square_mult is
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 16;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 1;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 1;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 2;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of U0 : label is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of U0 : label is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of U0 : label is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of U0 : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW";
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of SCLR : signal is "xilinx.com:signal:reset:1.0 sclr_intf RST";
  attribute x_interface_parameter of SCLR : signal is "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
U0: entity work.imag_square_mult_mult_gen_v12_0_15
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CE => CE,
      CLK => CLK,
      P(31 downto 0) => P(31 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => SCLR,
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
