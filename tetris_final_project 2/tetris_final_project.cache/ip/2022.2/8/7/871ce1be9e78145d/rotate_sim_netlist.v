// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu May  7 16:46:08 2026
// Host        : PF5JJ7T5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rotate_sim_netlist.v
// Design      : rotate
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rotate,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [15:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.43555 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "rotate.mem" *) 
  (* C_INIT_FILE_NAME = "rotate.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26176)
`pragma protect data_block
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
Tr4VZVEx6k8Q75uW3w==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
