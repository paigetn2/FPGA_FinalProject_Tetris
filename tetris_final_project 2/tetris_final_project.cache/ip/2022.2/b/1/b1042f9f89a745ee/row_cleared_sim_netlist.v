// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu May  7 16:47:19 2026
// Host        : PF5JJ7T5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ row_cleared_sim_netlist.v
// Design      : row_cleared
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "row_cleared,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
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
  (* C_INIT_FILE = "row_cleared.mem" *) 
  (* C_INIT_FILE_NAME = "row_cleared.mif" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26192)
`pragma protect data_block
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
87wlkwjv1QUAq/+8vS7vj0aeS4XdcwoABQqn9kM=
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
