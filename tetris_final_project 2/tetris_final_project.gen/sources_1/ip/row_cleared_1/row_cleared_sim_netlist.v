// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu May  7 16:47:19 2026
// Host        : PF5JJ7T5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top row_cleared -prefix
//               row_cleared_ row_cleared_sim_netlist.v
// Design      : row_cleared
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "row_cleared,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module row_cleared
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
  row_cleared_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25856)
`pragma protect data_block
YcFwroLXsFvQRwnG8vZqwoeqdFPYlDKAE8DQ0umC6sjzMsSDCStdzzjBTpBQUpcUggUDUzSO2oGO
tphcufbFeDapEdQuj6cA2snpAGWYCVRkcHU7/h5wQepGzpDCLUOzfAhziBI4nz3mr/dj9K6f4wQt
yTImQZIpEAarJpVZy7V+CdhSmopOdnbdunkuyw2JvfvtS2iLjjDEmjgvt+Gy9WrvgvRwIP9OgFwV
IhM5KNE70FfZ08RLQ7fVdFtuNX24eGUInlzwAPE+hDKnDXiRiULKRugS55FmY8awOzu6Z2rDMHBL
S0EC3Uf8PY3sRVADhbFxxGShFB53C3+SlGC9vmXedm1tHMECfM6Ufm3kpXkk3YjSJfojW4Nuy1hM
wX53MTig2Tfo8MUi6AIU4smeAQEU3ZzGtM9NWqzuAOmMnyXNkCVHpQqPxC7I9TcKMQt9xLHeBiYA
8Sxpp6rOYpPSbUJu8gSvMrUv+SQvLYe7Hl67vD6/HQ8vffIr5C+n4sV8F+soUUr4Fjd2jGco6WhW
O0f2FZpMZq2XoHu8V49F+5i+kSgnhV+2tIbB4LJCmzEHiKaY8p0NQJ3zR+VH5idas8tFgKuoni1R
1F/T0OqQzNlPXWF3I7oNCi+4zfaXeosW5pEXTE1mT1rJ4lyEetAfPXTW9bg1jNrGnsqapwUw8lQV
YCbBjLsESfH2SH6CfWJz5Fhdq98uTUtz8xnK54Wini1RWQ8eqTUryw3QriVmnFRBwEVRERVtgn+R
ErcqzzxiY3h3LklGodR9t5JhQuko8fxXxY0+tE0QtptEdfqivsGA0nseIw/xwRm2s2mZ89BV6Jdj
mkcmUg8FTa8bS4Ahl84b+JsIrxDySukekuh7wgqjx/l6nLJ5Nk/6153cHREgKPP8gp9NIPvEfKVy
7sus/VGsMeWsdcJx0O6TTsPrT0xQ3ceKHCzArhMPQ84k04BcJjeLMPTdFuqq93e6I0qwjD5LcItp
IC980RSITMsoSK7PKb/JiJWLYerPSPNZWRHpIzHtWwbi/q79Os0jn88OLbCf2Hdxef31RiAlOiOZ
cixZxiJINtUL++WWqpg3ZlZuPUwEwNENf2wOYPqeZ2z1VV+z34hKXLNBbexe0EJ3Ge98ixjXcF3+
7Z4ruq3tYqf88yt54OjM2q/6jwHj6cRE43aHZfZbRrwVY+3P/oKyjd0edKeZpLRmKoRXZYjjMytU
f3hcDz8f5ewObrUzcfeZK1ydGrLhiCLhjztAZmDRQKBu+GK95vQCwoTQrI5mgAI2Fw3AzxAyCcjY
JIgQRZ7vYjJqCBg/KB+aYBW7zAXIsrr3Cx8cx49YrTV6Nwq1H8Mz9pIPqLYF0jntTKdEiAXKoAwp
LzR40aLHHVxrgwDWIQDS25l7kargiq7P4hT2WyOkDCKm1Z9OZ4iBgOEpBwyndK1i0E8LChwGJgk3
jFNpGM3BDtFF5tZJCrhljHFm+Es6S2RJfkLFa1mv/3fZD9RSI7+y5j7PMPkmt3IrMx3a85hWNDKc
xXKjRNtXp+jAA0cIzfntHPA+YWxW/GznSmVQWCuiTEo+jSOSoT39lTgmawBPjUjqMqQNyMUr4E0U
TYg9kQz70MUe9V6+yejbSay1Rkthj5KJYz7uYrlCmbZHI2DhIl2YwaLrT2xvtsYsU5YLMteSTXmv
3JULdEX8v4CXNqrxG/yEov8yZkbztxwvWLd4X4gNJFxqWiOILh/asNiKDC35EBOPC94msSPjxFDZ
gSRsXioZVxcW6GOjIgsSupCQOSbdtk+Yv7tx9oYxjQ5L+bu5hXgPzo3qGgfIUIFz90sJXjEq0oXv
oysuVEQh6kZbnbNvwqfzxH+C1Zk4xGZPoMuxRCS4mC2yzV9YOnr52slratByWJ8biEQx8BSyBUXR
0419AUTVz8VRuyvS0QoqLwQELMjsRnHkQLOmZCbFaTGNcwuhtvShxhW8Z+jE5UAr2sg9tBvg+Cx9
40bLYhK5SF7go6Ci2R+m1uU09iBvj0FqXW3C02liJ4iCbLIjZQiSyq2VXH+FK9H3MIcwURs5BD4k
m0bwNAck1USE1aG8ddeEWfZfPkW0ncwVoyfanJfkS0xoc5od3Yt5/31s0TnhQFQxKANkPY0JpyJE
Ff5PgZ/7udUWwQ9mxX/rcLhsHAWiGzkcPUO039AK5WFmKJQD6XfjmSvpUa6WcWu4Wa4wJsk/CdvW
RP3MkZO7MEGTKRQR6VHdbyczlV75sEmK9AGuwZT6jgJ7G5sPZaGiVS2rFstBivzL067XaDXq8ZNe
0OmjjwgpLT37GdNrWAEFZS0xMeFf9YuUlXKGMxYTMxjMe/UPILA4cebW0/DFO2OnD4jzgGX+rIWD
sr9n4p1pdxebl8F0M8k9HVnduBb9eORruS828jBmwKz/JketGJH8d7od5u9YJyjAbOoypoABxAmR
CtdPITl3GLVokyZ/50EQCdMHhMFgE9ekhm1Sc+7L1czPDKR5NzNgIPHr+K4OLiMWTxKOlcjdHevf
x6G8jYWI3H1yRr5j+4QdtLAQILrQm3kvsANmcEanp+qPRot62ucd2gFbHJFaer5J63VbLSqe5Ey9
GIm32Tat1gWT/tsmHzIsh0E1X37SHi+dfOlEpNG4CvvbbGRqNuKjX3bsv9bhoMQyiaGdTYLHKQFd
j5wyMhuH4eTZ2fhAJYo48htFJyaTI00T84I+H21ih3DmnDCjus6LRbcxME1UeDbgu2ZhCECob1B7
SJ25bT6q/SIz1wULVzKjaJfqsWmxOBUwMLj//IkenKoeHZJfIvnqizCmqvSa0V1tWwWVjguqrm1c
XoMUcepOYSqF89hcTYyoMhZuOFyiEaAInZBJPd2Kln6lU7FsvQe2oSK6r1Hrip2QcBnc5wFYwOVi
L8sIB/fgXyICPJEYCwZJsODsvBarvdXhgKfRGUeosm2G8ElUBDcdTr7SMDN8x4Lff8Nah5LfZKJJ
jHi0Z0u1HAOgGhDqupcjStxYDD2jDl2jQjnBJUk/6p9QJd8eJqx5D+pqdz60COBen2Q2bLdoWGsS
LisUVIgSn1J9jJ6dcxSyRCgQcIT1i0hw8ZbuD6W+jF/v6aS+1cyZJtqGPI8RQFYa8gS5tAsLIBfk
34NL8O62vNEhY8eETqjMTbaMbMEjl1K2WyLUPbA0Vw2aajPXQeIvEPYrmxJv1HnUl4TDqHxn9xyD
tjxsj3uKA3fGgGrwsatydZ85mEUTHw1KEEQsrkaxiLMoumJGoztoOEhaFibXrslxfAilrSe0cXkA
PV/nL/KwHIY2FTyS5HI3ZTFD6qQopitmCmQQBxsJYo37gInCE5bbv5/xBANOULY5swWlzsqLAksW
njgZuLmrqJWUQi+pAQ0ozJkowurtZV6wpMcBplheszh8Rc4r7SHjnNotX4uYA+yqO4PMQPQZbwto
39vq1Fy4+huWxijLeOBYsDfUOau1XLgN8z2ouENjNOl+ZNlVueUrAK3CTvxW+g5Kt1OhZS34gS7g
8+ca06vsFAZYpdZs6gQJsI8OXTLwibYE8zhnooLFwhBowHKyUD8te44+zFzsTLp8zLl+Qq2HG49z
29M4LG/0pARXzFcVc2P04pgPqCyT6Q1OIlKzWD6qA1+0auLuH6kFTOEZsc/MyJ2qa483Dvar+nfC
ORjgsGWhPettpe8Mzs10SAdwIhJNTRaz4gQLk6ATqfLw5pnnZBPjfuw/yqRQ2b8jdsw9/6h6nVWg
7cT90mA06hauHB2WtVgxFcrQo3I39epUoVcqDKyBHLU3Ty3Wv2gbio7Rec9cX+zCUaovJRgW0FTF
9afcPTL8khpFzeMSmIWTv7rn4uICY/SvpdzqEhACNZNGIiGGspBTxf6+dN9w/A/blwLdSOY25hqJ
ph9Bu9yn5bBn/gKHqSAQ9FCJryIInxSzCcygj/YqMdn9ZB6Iem1E0eAqGOxKOuePlKBqEI199RGr
lddATK4gqHAoPRPL+SRnz+lEuSKKDsfRSlsEKxS2azGCjBymEAQc8KISz+NWAjk4KqonwthxAk15
GZx/5zsYyi9ny9HnnS1eJdkM2aRVeUwG42ftQ+wdP+Y14aUwrdCyfY+iF/ASs4CqN8YH4fbZ2P6r
6UaFTg1P2IAPRHaDPOArWUpYRASyvTbuJOGvpLc8ZIQl00yVnCx6FZXyU8jZuloja3qLXjpsWEc4
G88c4Yi4cbQIvGMLe541oDM6unOozAj9fStpdzvUYYBj9Gn12510bhwMa3yKhlEilpBfd63I24hB
t17XJvvEWbzHKMZU3dfC7pBUJ6vUEQb2ElDKMsqATZ4iJEd3P5qMNAx7IJKhlCwi3iXoovT0J0bp
AVwxz9erWflltJ9ZgApwWPYkq9ob2o77oA4C5YoR6FimKwF93rw7nQPVHH+O4MjturPWEOJWyPUQ
5iVzrO4LauYOWnir9uKp68dDiloSvvAalgyMZ+4jDeGgV5t9C5EVsSucymoVQf209u8c4YmXN8Ar
X3tqVkK31cHmt6X0FciSt60o4k4DbCyOukb+ZSkjGCB2cqeGQwg6jh/6K80lzhzESKC0+6BIw06W
PLGhcv49aC4FlaPWuKCDlSxw7eBn8DRm3+WOpQ3pgzOx21DOOl+iyRCock+LzQUAS+B4CQzrHP/m
5d1XCrYsiTyexz7wnoK92F9N+scKBhvOk/FlWHdNLzaas1NjbmthUVp9AcfisbLRoY6QcehBPUm8
WCLgjkN91seGYa7SULZ0CeF/UMNkHgXHJ8ahk740HLsxaTsZQD9kXa5u5nDXmapIvk8rlYfXgu1i
8iV8B86Cw7zvIQitd/7n5MUUXhimsvh1sgNhcWUQzs7JI2G+ElZbhpoUIZCWlwrY4pF0PHBU/O3u
ZGsoSBRhmvvXPNenGNUTz0I0CSW7eIJnEIkileijNB3oGmMQn/lGjhRQyE5jXZq30zj41QmPCwN+
YSC0yWetPlhSnJeiOK0yg9mviMZUtbu7JukxtF+V2uxZHOLnXRYG8bJb6ie+RPfTnFoYZRGQ+s8I
okIsxH7/9P7Bsmz98a134TUSQS2B/Lzc+G1urWMVnO2YANXEEIccYOd4XS8fE/gUtCgUaBBYPmH7
gi1WzDrMYtBGIHI4OBwoJ1u0jGwibeOEzjlAUMxvKtvUqMwSiCAjYm/LEqFlVdnUsLK9gEGpyS/H
vWSNOJQ21boF9IuCPuVbiDdzdBOTLsg/DYwLl+VPcufufrpZen0G+V6uvvG9oU77wNBQQD6GWFEo
7ijzkO7uhA5os1Rt0IgV/7ru2lseLlympXMl6kVyXigXDqQZl3nFuqgS9s4LhM+TFQqdNEnO3wO2
qiHl6amQjoU2mAPt12hH49Gs6RZ1AnyAis5OZv+1ssLy+XdbCSC2FLBb+CaB8UzExi0NNlLyRKLl
ORko700Vz0RTml+8Y4yEcKjSqZcfOMpVtBxCh+5FkHtxh0c9vE1jICGF87WEY1tawtDtA1ya6Err
WVqJjn++QJbM/Bbg/8pcfo6PS/2A4IOF3Dbvyo6a9JqfQSh1l5e52UYTdT02zwUeIna2J/dcRlu2
Mu1plaVKzuwxf2BvKh4DyZuiugMgs/u6g0s4ok4SCcytgmM0w9/gVcP8ouNfvlqGWljQjOyH1KmH
sw4xVSWAguVuuRejH0qWvfR55w+KkqyfqyHgCBzVyL0GHU50tAEnErbvH/9b3SUwnyfqfuSerBiQ
KKU8TRsiVm6+P3yQjcUWvoNORnpbw1KALlZMSzBNIlmPPZ/emVLYcMDZUJyg8W+XClth0+6N3Yv9
4TutTsRK/K4X6r3aqG0moFYPTb9mVg6tinPzds4bNwKnAbAuy4a+zZwxy/OMaYMIRqhYBmvpgxwe
GXhMmd2+3on3uZk/DQfbF5BncKtphiWN0aJ4/8POmNAF6OQ22JZWnXfN2OF/fwTZrlUo+i8AQJMx
ilsiLNfAvvHCsisi70t6KrAdnCbC5kwbjBgh3D8oR2IfbcTD97jemzLBHL1IeJnEVLzKqkCqlFS+
cVK9bcegI9OlsoV+oxB8Hkr3p5ClPqrTMjyFB1JykqMGJno1gLEXDbA9ABuIptDBSFocKmBjA7kh
1P7HJDYr4YGE5+aaw1uNktZAUU6yjy95/APOhrD+KPfr6hnnmeVyMiGc5Ul3ugUfq9rTBetd8uyl
SvSY8R/qGxySmAPrUOr4OcjHyGJTn3I1PFqZFrLV145KH+ZywnaYozEeaImVL0j9NqSV2/O7mAee
8sU9156/sVMc7sVdgZYnyuusb/d2iydMPaFV60hfET/3wg8QNf0GYzpCC7sa+1Xq3PrColyNrQXh
FLq0xw38uMTSan/GvhMW14qroF9RS6Bk/DMZZ+nPu2jfb0DkVnrOH+0cc6NOTOQynQbBFCQelt1y
Jy0/34/vlJ5viFVO4P3+ngjBVEfb1Haob9joUDokO/hJUeU6iPZJS5UJKixxbBoQEbYQJV7BZzv8
+upfnrnuiycPiP/w7IYxHfrgmHmGmizKRyg1IdPXjkQU/DQT7B6miJd8ENzdovBdh6kqmOA4BuZD
Fm3CjIP6PBOOxXFBTkGndgbqrkjyJrBJKEUXtEUQnc8g02+r6hJhxV2fa48m3JxkvNnJfsNyowOA
uFRYZARShMItzweSj5O+Qm8FWEoOH72m0hFvMkT48Wvw79eTbNNO1f7Xsq/4a+5rI9YO1UNsVDBz
cOlm+1ukR0DWVemHUluh+BSTg8hH9zx2bBCAfyRu+Mgf+vWC1z6lMk94RXBPuqAqdB2KeC9MnIZT
E9AlZpB5t7rXs/XAt9T6CXf1u94YYwxghRXWC7fIcFcJHDh6D4ilRUaNQkZX9AJiPxL6B+/16wRH
TGadqb6YGRHx6DQmffdseFK6G4a/9dgPYjIuIJ3Lhgn+dy9EHZfFaFiAxuE2Qva0zjtGmTvZc2db
HoHNOu+iNbrzCOeJIIJaWbXdQF5WeyvwdlhZ40sRDhpWnI4z+CyPRKQPDa1LYPOMw98UJnFfLd2r
RweYQvC1XXOhOW521KJEX3586pnhMmj+450i9Qh6axY7jK/xMQpSWjRsKQfhb15Oj6WgCNCZ8P7R
k9Kw7eh7J4Hwc482hqOw3KTHo+4134Yci69NwzT1E5I6kuZVAq1oQuVYBJ9c0Q4IgeFdSF5zu5ah
3Nl6bXCBhXJR7bHsOG17tvrsM8z+eFwY63N6uBlYnugRhn70CEmxoi70c0D7dBYtlfHMF4uTtGZW
bxcw5KX52zP0+hZlzMuaRw78Nau7IjQhFlvJMCKbr3MkiocdA9GFPYST5+hVYdgfrbXxzgC0Tm7h
ywPHFlus09olNl8ZVebm9fwAZ0pozrT2vnwC8zDn/M/zzMBGeji8WHh1Knku+WrvQnip0GNH4f2q
GYopCSn5NMzaLqqgEF8E3XyQxhE082BJSr0mhlJJJvVNajGVSQ/2ZYwzvJk3BB1LBDHz8qJiD6Tf
DU5uEDyFJiipJiOaMkf3DECeYoANyz7kJTuDBj0XZ5WXEv1COei1R+RtOY1YJGPC1MX/O3CtmlTY
wDrWWnEXVrq1udCGiJqU83E/YahxCqevjibB6nZrK70t/Ls47nxukCcD274Md+LKGO4qx1LZ3Uw8
KzlRngCNXV7J6l1E0Iz6Ry7VKDK8BTKY0huWmbPrAQtsjLHjGSqOJ0HtCrpkWSslaMJmdTecgrky
zGzGX2IBZ5RzhonsyA+UNYzjo4f2TE16H0ek91zssERr7d/5LAz7j7aDBZBxUqHpa6iiJCwkhEgx
UYrv/lrdSDv6HJZrDjBkyagc1KvLHknavuGYwc/O5wW2UQCJUeIgvwh188bYy104XBnnypJp8L0g
1oGM0ZG79+y2TjjLfrS/sVO/UB0xtCiOpMmgoteb7CLbG0omgYhD/j5Rg6HAWnd0GnEdaVojCFra
onM/jyE7EZ93jKHUvFp6u1GLIwbTf89P4DcaxF1nZ36XtWKPAlvjNacEOIfT0eZHhFXAc83QrhGp
TvP7Is+JHq9+3ertUjTHCvzwmHKln6WHitDK4IRZ5hkTz28Flxzlcj4QEMPlk+/o0ePsbXexk/Wo
ADfGh26yu80Wvziia+wnI+iAqTUT/6mKusK/0dNBiOXqHv8LqZ6mID0wFa/eMSg+THFkkuTLHJ0y
TKGc8s81Q13wPjxMXMtXwqNJV52GaB8iqcKvciPdEZQhg0yonfkUfAA+818zGbv2FPXai2J8Qyw/
ofnJkceGaiwNxZDPX1f9z/wWJvKh065zAHj2vrx2jG5VPV4YwtAFFWBk9fbuU5AQQ3rELBLjlG8+
vFIlh8pZ0SWotNWl4sjSKCfLJpmEsCDbRAv6XkijIPT65pDzFCv6SSl9NsIdLktEimHXKCCSBj68
FNt2W3l9y5zxoWkVDuNZpIT4LrPVhQ0mpJ/x7ygHkYOQr945ZOJhHSeGTkrQC9RegoyRuetSoRR3
+2oHjBve9IIQBKu7980u9GYV2BJgGWKOW5uOeqfKbxy9BfoylEY8dqrITHIu/gF6wEid8eiXuLHP
x8nz/fJSHyYgC4tGki5cvPaRGqIFtW5nC261K0s+titR/XLN/Hpi+mUoPkRygwaJ9DHeXIsYOawm
Ew+GechG/SUPQil+YcdcP1d/1k0iqz7LxirtXyoHhNWnLF3RWwejm7lPWIpwDU8NCZPRGusJSTRW
/V4ROd3631wXml9gGm36PUypCKqUSNyklGWZxJBl7i+FwZKuxVvU/ZEU61OYvCyxaY8sg5Dz6Q1R
ZKtNsEOtmk34yoKos7kJcOEnn17Oz5GS5gQtCcys5OhAszReS0bT0h9FpCj6vd0zATHK/pNAMRbg
TXla6Q9WO/a9X6yw5mO8hyQ/kQnbaOg/cv6WGK1EyTKI8eGd7z3wyGEWOZChUn6YIZxXh1OUEgdb
D+wpWS92ESA0T9JC2kkemtV1tL0e2+fJadqRd1MnixyHdwyXB3/lTlaWZVBcRg/m2W1w3NOOMLfO
pr8NHZVmK8dZxppICF4QKuOXTUrD/gjaGkDLFtM1ZMl6VQn9mCmERCfxczXMk4CPjnmdJlyjeuSg
JRpONFJ9+QHRQ1wafxu8jaV8+Kre3TZtk/s8l7QyXQR1nyTED4e3QL9bjBEpLzuemi5OrYQTw6sk
kvd3FjHSByT6+vby0nT2zsJ8NuRwiwli4r4MiIUMmcD8atJ6T7FhW2i5s2AW4evS0hTT5Ra+V68K
rIrSfezhwNHO7Tvuo/Rv1SlYBe+K75apJ/j1RJLg12fiQCxF4htZNKVEkLbyWKARRoS3vQJnsQ6q
43kbDdfAP2YNkrPAIASiUw59EzHrRrzZFABrVx65o5Bf4+VyyLeLGcVV88CZ3l3b9hJe0zWy5mSS
Saw0lXYi7amdnRv+K1TkOHh/8N7WtHeMdmZob1YRjUWR9/kY7QWg/bXgtfcKKOwkZCDl7W8U+FfG
J26L2fjjHLq9/BnHfe2S/vT4zGfEvPkln7LUwDXxOvmzgcHYfdhSA/tTpDe0pfBk/kkDo1KJqIwU
GmlFpVd3Itk1BE0GEv+4M6e9+JR3GvrOeDcOVeavlIBBnmR9GkpNhji7IeUwz2a9Mvd+RQTdhy8w
GVdvzJNvdrfTvmy0c2PFyE17e/cGlFjh5pXMz2TtFHP0DMjsNwe47bOa+B+MQFL5PI3tPAUIFT9i
rad1sHI+hElrjY3qLl8voAMaO2zd2j94TPFeITptrSP8oidwBe9H5L9AEsDGqnF/1zXeSnvMI90K
WWACTM29PK/vIg78YFbX4yRAppiix3izQTzR2/ib31lKFVnI1LrZMiSzQYV5V3imxiYl5n7s8Ts5
cNKmQWVnIBd5cBX1WgPvNhqlbSWAUFEvBS1ReB8Xb+R4n914Q+yF8r4/IOxWYSz9Jtk8fj9ANxmT
3pnZ0UIJSobsLU+QleO5qMe317saI8/ozsoM88h8vAwGOCjcfCgMoUwG8wfJFT3Tek5kC3XTJf92
lNeGvoWCTQ7yrPHz8vMQFThaSma7e+jlOF81sqlxCIVuHbnw+tpJVUV/6XhY/lydM3ayEnONn45M
c7SRkj+BY1Yptt7U5fHa6Sv2wTCIbZnjMstpx7vm4CIY/OBvf1qYDHVpG2Mt+RJgo+kIFghIO249
Szl7pF8Jsp80SUVudb9Admdv/p5yRJ63bc7dHrWouj+5vIOlIdBd1lXiiTAKYPApPnIGSc5/4pWX
Q0wP3f7F9rTcZTY7wYZGj7vpJJGu2NW1WMsWvPDdY7qpMvD2zKxzCwZR/N9SrE6ZbVYW+3UQjZqP
AcMFT+nndvfMnWtUUVWvoKOsA1WGf8qRslLbVqQJ2hYdojFMd2JEhPBeswECL5H5VXU89FaICszB
b06JJK8SNea8NVGrNUXlebDtrn/X53QMFnPpltewaeUa+ONhYlEcfOT4CR/EkzulFubTzByF3xji
HVTlHb9Fhvhp+hj5nILZU0zVPpObh8fWxVhKeqnfUwBJt+GmMNUwN34wNM9ttZTNvlzpgrzsx8HO
V55mEaCoaoHiY65L2cSDlFllpWdMRjnFNI0Q0hF5OGDuql9pA0hHcynfyBEMpQFBFdaW7+iMjnW+
stadU6tMxLjlohpaB92+2YP6amNGsUAwinwEZW35A94sXaTCOGOxwzCIH3zTAgb+B8YOLITOqp80
+2CQr4MvlMHrBRRWX9dwgY98AwYPtLZZyQ3D0Fi6ElO1Yt+hJc7Z/F8OdaKX71fZ1/ECFxq7COSx
38525MdSfmTfAARXLisLx17uz0/+2ISGDycCF/vKeMyHdWMHqnUWvhmptGK+KlEPDalP1dsf2ZYG
LQ8fPZsPgz40wumPvEwc7SYu9pWTcy70mgmTUKP2mbZLcV6pJpW/OVpXB0LL4kS4mcInh2jxCE+Y
Dnhb9U6wdxLu7g9svhPc9QD2CvxgSiL+PUFCi6ApXWJzAnr4PTyUdqOJ174AGKYIc+qV7s6JzTdk
ggteHlkYOCu1GXgjhPU2jaUmEwkTVAjjE2LdWCBf7a/4uZU0WZmgIQDWuiX8ZmKp7IgjaC+YiWh3
pyjTAmz8oEgknx1/7nIGVHG4XPGIFPP9zgZodBcuPd+DqsZpACv7sCytXbkKVYZQK/it19fON8l/
MBI0RgVFf5+Sufui0xXpjY4AaGjY9Us+xwY9E2Mor2UzgSNrbX83D6fDiTPsXXwnZ4mECu0m3PPa
U4caWVio6nGdBVoMRoGO7zdvma9tT+zeXial/DVUL5Ui8xxIANIY/A+wSZzoL3OqXCeNr+OnnmJK
zKyK5kkAwISTjjvxoMUYYe5Q6zQWDAQnFvgZfq648fdpnWCF3sVUyaqGzX6XYyEgTiLqQknRcIut
GiO6K5WeSAGMZj8DcZkuk64xlOw94P00fr8FC4FAuROCaTshz7qAudkXVlqgBKyo0vRMpa9ivc1V
PqBhuwBaJpHZhVbNXGWg0A1dC1yplvQl3jfiXmiRCmsXqBwoFIy8b2DWACllkoyGya6oAPfW6vtx
h5pyL2XS1Qd06Y7e98jxIDLl3EywYAcMZU3KBalR8Arw3pL6jLRb7NXIRfD+GENTG7y8pOKRiwIr
y5lqU6IvnM6ENIEofQ9pw2KlF6cX2kfVLWj7LnPVR64Ra3GvOl1dLig01gZU5Jhnc1kSBaCxl7Az
f2Ptao+beSJuWxGQ/ywkPE6ZoH+bv7Jc4PMEsHbRzY20avZtUyLcxDb7sQLbdznShAOvmueoVgtc
lNqOL+7cSC8ynN2Pl3RVSnutU1VpOXiq3+KY32xSoH9kfoD9veqc+hZ3vXs8Oo+BHQtDZ1xbMZvV
H/DYrrRlHNoaJocLWJe++M84PqpLifaDqsa9r64a8ymQ+O1Txj2U3kE7ZZcU6Vql/hLb7+HkmvHn
RsaQQsGNw8zf+uVSrueFjE3J+/pQdAQZlNjP29jHpqNH0sIztiycVbqdvJgX8pKla3KNOhOuyAh5
Iyqk17Zeh0UsDjpaw7TKiOBGK5ez3HZcGSTRydmSUA3d5RD1ddVPsuj0lrSbwe4UGxInmx4gdQd5
suXHBPs32Nj6L5yNtELRbKhJOd++j/NLIIKQjfee1v8rhCGKdsq0LiPLtGvmWOruVlytYjrCVPiD
7QquBvMqvnKSAktSFrqdLMRa1yoWbauhlYF7AWDo8YKRVTAAx1uc5pYVAFHSOrl62NKpFW5Iqd8v
beRWYa4TAVgZQeLnjo5eLmX8G5vE6o+jsqKmkR6QAsVFW95/Y0RfEvgq7tSb6ptjwfgWOfwIWWvn
KiZT2tpHH5w3ne5i/I1DwQ4pHsuwqgyMmY9ZHDmojyjY8gcVDV09WU0uZJceHyRU3+yrAV7ofXiy
NWvalp58BPcsRaDWtNfS9+x78Kvk2ghrm8/oOXqdrEC0bL7x+5USn//EQIdWfCnAWJJ6Hf5D57VY
xUnnT/n1awxpDiQZE2mYie8vuwtdthbiejCIX8WR38Houha5ykOR2J9DWN93g9Ci1zOpYx/aTYyz
Fo8voxyyq1HV/sywG3sxg1DvyZfXFLP7yVTvMH4n5iErJxHQJVtEqb5f7v43AUm5TmVYe3awNizu
JagZfGWdX4cEmhjtLljkslEiNLR0PrN7WiRk4cM23siTwrSEWVcnryxrrgDPf4ZgMeBqWLpdQKF/
E5kNp+F6SJM4tBXnH9tLUn/IakyDeQroiSlScjmyz9pZ/Ic2DJJfu4zeqgX5GZdoudV1EXE6DuYp
bZh7ZprjjRS0wQm7jKKJty6DrjYKTQCDFYZBJw+o7vyRS+KBA6d1IyBrmxxG0Yf2wufjU6dfbB5G
K268vsSKuLl/c7zWigkopZ7eIaZZx/xJgssbSDltBPSievRpWIwA/sQqcZGfZntexrcwqWaeD0fO
gYkBBJrgopSpQDq+dNaYqGRt8KF2DZfCeG82XWVxH16e8vjcPfLe/LLoEBpRw6GALbrf6p9MU96/
ekeNfysdG4oJKQY6PF8AbEUkMgfUyQcLBRSaaP+x0qMSbV273MCAxKg++usI05tRb4LvPlB9g+th
L+GIdH0wj+8HylsOClAs8uCzMYM3NiE6GHXJ5SvMyLZap5F9xXPsIX3re3huEMYHnU+cXZ/o2Vrs
mt8J9f90w2xTjFoUaV/FBnqMv0dLdPspmF9RM8OhJ+WHpx+UpVOziT6lFROQUnEHivdFFa9TUmFh
8iU3saAb+XUbyzk60Jd3X48lW4ZMhOLgLC2lPUOKuPrQPUlcZozXqor+NzHB+RlLwaiWmDUr8AmV
1baBMHv4nvdiWUPkPUs3/ZMvUnzvQCdnNH5N8Zehkn0guoc9tmosrPVxbv/qxOHUjFWHTzCHO2tL
kGX8bLxHX+N/FXxI55k5Ehuzrx2zrOZmgd5PzeibY0NWYHrCGOX3Q6q4yuwrkztkWN2ElCNeS7bI
/9Vq0KmrJ285VeSZsPZdl3r0cpuzudlkWhSSHHAwHPQgDcTyCWX+tzoeft7lDjMCDT/Mk08Kwljq
qipsTynHXLtELEWUF3QKLzo9pEboUwYJcDP/+qQxoFtmyejU7R/1T0iijV5x9VPHoo0RFnyXjCeW
WNYezpRi+PyuZCd/tmr1QoGNOYAcdW0eBRORI64GqQ7BOBj2p7pqfF9E17TPwVOXtZKoAQnbY8Z1
CbC211rU8rGphtnleO0yaLMFpNkp9hZ8+c0G3WXdztzl4aD+NBZ0YWviv5+nePLDUsswTnOj3e85
wO+PWZJFcSOcM0T6B1HUhnyWomV9aQ0wl90HN8HOzyGGnwl02s4YqaCyYSwjRTr9Z7eHGcvdc50L
i9XXCutkFGHW/5qEoljIYCJQb1Qca2QdE296iO+mj80kEb2pzouTiLw5Cw+56kQlASlqpapnQDj7
LH5IDplPBCYRqc3EiSa5o0vtsoU/m4xAVsxh0+mvskyFfWBjwIXlMnptRnhVZE2RMH1U3RjxPrt/
ShSJ+HFeEQywytOi2cvHTIHtI0hdPIR+yqNunt0uLBpAjUOO/HxnKALIbcL2VbvQFXnLPT+3B/Xb
7mkZ6P5wRaTWaImGwggibLghOXntAN2oQ9/+RQvdQeNnUrw9JMSpjQ90Qptms8MUXYD4+pCuCNBt
+pN/Be1Uw/8thH6U4MqyecZr5SVXJKzesyTaym/Pc0L4MD036kYAHqxRFryidW3/0lxpMBO1b690
vIASIktGMvEUBS41l1E55d+//ipW33GY/eTdd7yANQaIMeLFYh3E7eqcMX1lbBiQMf+miMkidt7U
WXXMVtfgy5X2oopFLpofCmZ0SBKPqYzW9350GXiYoDcV7NJWYLVKXgUM/ax+r+9dm+rM//4umMok
Jd1ZS0KVgbt3QXpxAkn8idmRzaH3GSLScxmW3oRA2GygebJxpOp5FlXY9ZDybeTXehx5uqKETF5e
DYc7+KVBcxP7CDm3WL1t113W83DPc37p4MqepvqFBIhoryS1bScDAMuLkpi+zPD3FMa1JZjbBh0K
S4chC/HIh01prgRubjnL/rDLBqujvzAHlE2po2++/1OnNjVLI3lTVU2rjgOgfRb+8DCWbuE/CVxp
lQ1EpI7d73xPiGfxY3cEMEQ5qAQGUjIpQg5AsZRIpea+1GttKYBjTTUsBFsRfNwhib2ytZlrQCXU
K1OPj0SBG81GozZQ0MX1wfw8zfiC2VqN0/v0nzCJwzVVtPkGyLnmuFmV9YSU+m/dt4/Mgn7Z09jh
Qe6JCEzpxkTTVFZSan2D+PtiuT8Or0RWJp1H9Y4bsoctDaahxpHnNHowr4DD3YTSjeSekh/rVJaa
6oIk0Ru/UnCSvTLeAhDfknVXm3XK6/fBAExOHoZDFkHm7Z5gMjcaGqftMq6DefslE90xogCHpt0B
6u9b6PZxWnk98jKXOYVFrPjGeakycANWvLSx72oHBXhZSWVXSTXg8CsGnmJPC5g7pAIIYMZfe6+V
PDA22ZYYxTeFefJPKbepVrRrUU3xRXYC4upL0v4uzvwmAPo24lJ+OzvbuspDsRbTTQiTpltOcKGR
yqiVXlIrLwpN6x0zyxXn5jB81agTl8jgMV4VG7+Z5VIyYvj3MTV2+2F4CcKeTUNdsBp9E+s+kicG
rgSD/c8gL9EJZ5RoIxu29AAT9ALcKWW+skJf8rhzsKdAabecD1NOIcj16T6u7zhPoDxh2BRjLRPJ
DCr3w6zBz91I+cAaoehKqh0w17LbZXPIRCBVS8ujowEDpy8+ADcDDrk6fJ1al33RF3pgTxeINV3T
ugh/eke9MUuu5HAtf/8kXA/+Lt+7yD4/e2SIJ6d4B7EFX48LQ7hSmdpTKxbq4wfB/Bc9hZrUtgrF
KjZaqpIOc6kEd1BS3KW5kCGfGuYqdREZSYsyRi1XbxoVNRwp9OTsWJlMc/U2ObG6LMEL8M3uanoK
8VBu0k4O6LGyw43VAl0+ZAEnLLVN1ikuzHlp57I9pbaf6zMHMm2ohiRZJva2q5OD/eiZqhC/YsLO
Ib0W8fMY0ljwd0J4YLcDFB+cDGyBKWV/U9L6POy4lpbgYrrYUNJrRNdJ/qq5dibnomhXac5xEH8X
Bi2PXACefeyVdkf1gYUl2lLEhiwp7VWd5RIhFZV09FQw/Y/xwesXMAWARwLFlO4WHwJQb2Etf0xZ
A4IvVUCUK0nLzPJWl3OB2fO0e3KA2SI7DWpG3l25vmEH8m6EdzhHk0NYvPDA2u5hEbk7eGhzYD68
NqUS2rg5ZUGtHLNsQcpWQMivzZlmQzl3fofzDH7ncSeOsot+bIJIfE1eu6VzkErE0H+NoArKRy4h
leSNxSzBpaiXjIFRW8lR5BEc7sn09Ui0zLqFco/7be+g5bVrTorvFSVPGvjiRpxMAcfP9Oe4U+xU
AqutNeA+F6PuuT1fh0qqeHA4fpREfix2UbJmoXse8Q88ewmcr4JimeRm7KO0wtcrhPMipcmQJ2Na
ZNPCOZWJWyhzfX0reX2Qc74votNv5iPlblQQ1DzHZSavspKRFf3NWIcK1Sn7FAS4VASka/jKUe34
w4PEbinWAcaEpflnibqTzRy0aM2nnKHfGNT1ajaNksoolcT87/bJi7oH/z4g6Eeh928xsb+eTVrT
T+TO1PVKZ80TUE9F1a7oA/UBJO+8uoI74x/rM5lc7jiAkL5aILbj/jjM62m3py0natl4WcK7YnP3
iroR2CSVPtBhrp0refWP0K1s6zRh4EEdxKqdSexr7IptkifzFjPsf4Bq7qRddBNwj2SGZle4PhE0
ffn9q8hgiU6Rn0RdTT3zlWboN0qK88oziCa9nVrlp9dOzRWfOvcn80lpXHu7RnLq7spi+eCZLo/C
ai+ijKeudtJyVmK4l83ueZR67kQGFF79MShFJujNCgEaPj/GJJG1IjO6OGEu4UDOIiCKbNyFFn0/
Jo0zNV8nVdarK+E/3nyETJzR7r5LpCg7pMNs4hRVWtYB7iZacGkCF/NCd4BQ8VfK5yvl2OKM5azy
M9aJJjR/aAtFXAVhUyu6JM537fbpm2DPkAtRQaMv7rYlhWiy8MYZ7x25Y9gEZqsgFPqtDBLjN6/s
HwTuCvk63QD8Slq8u2pnaAslok53CQjYd61qf/OGPo/Tj7DnoDDgcfc43eQ5FdepSirGakcYXQN/
n09/6Kke8r+zmIhs9XYGFZYJig7P+Qt9uefBrBuLm27o3wNMk7WubZkR8LF9OcB8uk03ts/HRrnr
teZuiNXgyi5DXiuxuFlINRKLbLYxO7pAatSvQ2MlT3a0/9D+tJ9+NCtrNjM/Bf1cLN1oHvvYcvsN
qL4H3kYMIefOHFnMaN1qs2PabKjjMroFLMHelRPZH5XiRSNOTMnIPOlB6GwYYaZlA//yI0Stdnf8
wJ5Y7nCwTkErOlH6EpQ2bap7HeygQn8r9ViHGispxdM486Dm3i1kZl5oShm+sEyFxVm5DIDUrHOK
19a2XclaKpOlxoXjUWoscw8ZwKVDkM6onx+g5Nhlfy3tjkB9zZ6jn+aHKxqJb4+5PqzD/JJQRoy2
dyYtU+sNJrh3C8EZGO3688YJ3iL/AZ0ft5e9s2XOft5lZIlaYBDBGbgYvAB7cak/0YPy/o9suf2m
xc+qOpL0SPmdmoa+UpptGgpbFoJodhblPTgmST5UzSg4GqbyVhmJrOxWV/qzRUiaDEdEPjXsdiJg
O4pq7DhrGCeiCoTiIv1snxDAKIUoYDBbjoXwpU+/fIb3xceOZQo3AGTseRd0JYM32JULruVFKy5G
roPhN000QKWWNASNOU1R6l2MyQO4cj1OVpPq0NBElFJp5d8GozMMwLebYbt5ozeFeBZJrhCNsrWS
hDO+3z8XrAPk1ctnDhNS+76kPEiY3HiMhjKFF74KqnNMHQvikMrw79ltJYdIETur+a1SiCKqcKRs
TKvWcq8lTC6obdbl5m5f2faAlaDCP8Uk5MBxR1/7Uc8aB+Z7okKv33tB2Jzg5c77Hd6A+/erx4Vt
ZTWwtwsIADJuw5pc5lh5D1W3PVqABIL3DqlcaH1tuqEGcKpWrZyd76beFQusI9DsnQpb2Hx4lVlV
dn1NDciqWL0lDcxzAX3cv7+mWIFPO3pW5d4W9GgJyjDiYCfg4uDwLJ66nZMdYEq8OpwQmvdFmj45
OkOjA3jYcaOBtaQ7ElJJ7czOWeT6uGZQSkRpaF/oDlLsxSqR9KbF0anwvr0cwl48+PwdAFNzgEGb
n4jpH2HCj1z5FTzACduXcIYflcVjXwb95PuQAQQmoUdFN70bFHhy98YU8cECiAh9I2FAJJIhZYkZ
a2CyYR0yS8gTSNMXqOJxWH2bTMaepAe/Ia8/vjSt21ca1k53bclw028Ao78Ax+g6Pag1ka1xB6Wf
LC+Fbl9FSjTOUKoPX0+pn+b/iN00ShMhVhReXD9ZuPTnA70ueK0+rW3eIV2OWX9MKVfKw8wExw5p
XLEoI4KuMRQdWc9xU6giolQwfSnTLPyGquwx8f1xitYlYVA4YifnqLiubrdgcZYf6VaU8lo3xGZl
rqq3+olRgxfu8M6GDGRk6cryZW6kH3QF1y6tm8gGzwBD7OPoRAPxGqjblfigQ08iRxsYgS1zBZxt
YQTKdHfq/f7NNJvYzTt0eFNyhFlfL2eQP14WODn80BNB8jRxKCmWXX8NheDFRnlGAdrYIoWeI1F/
G1NaVriFXiSsDbmaG3v3Oo9btGPakzHZjSL4GX7GJnu7C44iqsxqaSvvz9LbJJfAcHb6E2IuWPdJ
ynLFZ36heXzl8cCnT4jYhTkRJrrFxauVSpqCWV4VSemRwurhV7EFfO3L8Z5MuGcgG4nFFHzFg1Fj
iIeDRt9VQOeY+zM9587jStlhzv+lag5PP85lwPSDrhppALp1J+9NDb5TVrAhi3Kx5h5PyIKWWvzc
jLBctK3tQ/Fi/WAZSwwIRDU+gIaWfWY9rvwVU8uD42k4Hj1DRjLvl+TpPvGLJMxWa/YqQr6wetdK
GiMuFfs+ZtklBf2KT07NsygMAMxVfWGAWBd2+uZuleNPIsKLzKojlziNTcAx7ZvXL9l4UBQTPe2H
shKzX8nGFoEqMq1Li1A5TDBh4uoyQJhRGFusTnkSaP0zgY26yeZoSTw2IfbtTKXTtl2FYy5+GUs4
SK13fVAVttG69bgESFNWa/SfPHPqRetdnD/F8E8PhBzOHzfB1YuApNi7aZ72TPK74TxSOK4SXhSf
X6ZmG/7oNxIpb2WOVvbAHj0+Il3NpckMfMATcrZyJAl7hx2tAbvU7MPeBaoJdrHjZBHBKeVLcLZE
GDc8+BOrU4lvRDAyIfHfEsdndXIKDIR5IezUHe9jxmvfNsc+XiUhkmdz/XXEJ3aPJCBu0K/YrME0
8xsdcAZTHlj1xOXCdn6ZDTD2lJKioQQ1xo+3JVmzDv6Mh58LIMkYK82gQ3Q2HdXPYr6YDTAb6SWa
unPSnZkQitFTBVmTUkCulhB7MixzJC/v70kFRUp31D9dsDepN1daY7PMmZxJod2HQR8IhEDEEjyh
nu91Q0XY5zZXGNlgUawYLUAYdiFEOi0hZxzkvdFRSWMyooEXPXtTdv9TEIhHRvQLb3VdiYHjc5RB
19gmkLZv4T+b8t3cp76Y+6fOk+aiOtEUZ0er64uuhkIlnkXm44lW/VZkehfS9otfWeREyM++A5iA
YfwI285nR4w8MNML3YgIdYyIdUlmcZJMJB80je46e4RAqzVIIksfVDUaRd3CqKf3bVyTXuObAM+X
Wp6EGvmaZK/74axX4Bqbfcjjg5x32NUsDJX93ffmJrEe8XpLM44/duV+VDjxt1+FPF4FiQLMx37V
YOllj5DMuDB0czy80iL3ChCt39fOJVpyYnR4s/V8f3rOD2TGNXO7Q+w9wbMajbkhpC4KFxfF9i1f
f2DCqSPJnac7m2D636ZcM6s2MyoaQ3q1YEdeX81wMzG6YqZqMbY198O7C2/akQlimJhvh+V1Dwqq
T5w+T8XzlsbQ2wP846MO10Pb+FOcM9Sy0yTsrbYR9Ee7PaK9sJ1gMhJeq1Dd6m6aOWCVp1gLFJ/k
aKWUM/any4kD6Veu+Fi0JT7trYvRbdy5uvH4uMBKwLx/ihujCjTgkFBLPBi6ZDvQmbKUqHGHrDM0
YcqvSHleNso4BsLCDpBRYbrMEYa09Dr6pc0gOsJwYSR+gMwDfwPCwhD9w1bAzXhPIs+Xrc/DWB5B
lXoWIqZZlvqJNZLOGoUOQ7Ll8A1uJCfJ99M0YXT6Z7NQ82wpdLggUsuUNbT68NtPX3P2742o9jzW
WZ4kJ/eX4omkQtwTdFCZO6YypsVmHRed0rHPjHdf7BBOEFx41TNUr3sMsQWRsoV5SGcLcXRDgn8f
C3Le/BZKpCSS+TJvoNA6v45YnU8C2g/fIl7vmfqK2rQ9Pv09dhxhYfm4EqRO7XS3EpHyW7IrFE2S
6a8QUwkTpSXwmyitepsMBNl0SgxhX8x2m3bJU/npREd73RNhG1RFf+HdeUDitkwTuOcP/Ru3n7XX
nqQYUBT/RMUvdKsH9pR4BeVmryvsn3q4Rx4iE08zUdS1qkeqsEn2RXkcTZwhgyrHVIMiERj1BsPB
aOsoTRXc9eIMGp7BtkscfTCpwhxiQ2lZRYocHYuoBebNAoIWpSfe5Vo02i+KqscYC+IDE+2BsKLx
kOGBBUbc850ZMLu6E5OcelV6y99Uifq66g7PhDNnCYEMiSD3JGmg+NDrP0GwxYu2uETZw+lf0I2A
DYEziAGkDaaTZIoJHGBjqMPKZvi2UO5KzRrCE8kpX3cShUpMrij5jsWIWVG2p7FF9Zm6F83+p2cb
xup6Z/wzMFIr5NiYJe3Z+jfuMJAHK6fT3Om7LV8aXCxYbgJKQOK4aBuX7JbksmR75jjYl+IewKtV
5nO2ZCgQmR7XyVMFPPyEo4/KuZ8OX+cNjQ2A3z4yPa9ygM18i8TktQb4t9WFK4RmPGEjucXzLcjg
h8EqiXPar8ToHXSsk9kYemDWtOKRn7/Asr1wqnrkC0Ne3c/VIMvP/On3JxbicAf7NYuzpSL4E/QB
/cgkOKVfy+C27GiE/0itm3xJEgsQlF/sm84Cbl9Lu78kQH/txbYId60sWg2YFZX2jt9mfxgBXG5+
RFTTKwlCqRg/pQj5ZsrgnF5Zrh2P1rOrtiGHZ0aCOqhR4iNciFbBgVi3pwAo2cyz5RljvUL2oYxK
hNjjOnBJ02ZxYHwnct/lE3PrcWi8yebpto9jsyjXIe0N7jrSr5o4K2+v0tWql8TWyrm2HpXXO2GB
qLsNSmCmx/gh6pC7zOQpSTUWH0kZyZsF+lavT/60PwCGoMec16g1iH8/Tj108lmyR6uHdsqg8QQy
PpYI+dM+QR98drcxWeeuTG633U2k8P8Y/ptkQSqJwexpelb9yTsZZcPJPEzzYc6c1Jxv5jdh3XxJ
++6wMQLUrD1oPIpyI38/kryF2inLlqs2jkYIuxYRrCWPx6zH/Uuz/JVH82pXX/6Dp42FU66M7Wps
MoT8rObudYuAL+ED036A8aqpD91HrXVEqysDcV5SCYQCSwPplZafqrbof762KXcE4B4ObZxwdLUP
EvbT3W9GkrDoDaWCdAT3U9e0QIusVppSdp01s3yVmqTb4DMT9WagP5IV8R7meW/G6hChHjlfG8ZS
YfVjDLpLHxOTwc9P0LxJbgnyOt1vYCEJ7372OHTBJ9dmkYiY+LAbfKs7HYSFRroI4STcBAqp6Lh9
ZPiqJWZgB9+atglsM7XsGxaX+AnC9bCpxtCJmcnGJjKpriwqNyZFUFQpzR6wUpU/1zRW8hd83A26
fDTq3GazrcoH1wwwMvKTD0Dgln+hPz/UQEMJHTA6QbjbBlXUBfpK1Z8Kq7rtL0phn6NZxKOlDR1Q
dD1q/YnAu/pEBpctuJSn5gFK5zwPioz0vXbCKqHFnskRY8GLnXouNbYcx87DF9oc2XZlvPbrGQxh
Wtk16SYsilbtFNyyaCUnQ+Fm9eIo6ibubWXbeKNwagxZm6xx7ED0Rj5A4konJ7hJDh6q5dGA7IF5
VJPvYWRmoAYzm8UmzfoqasVZxIHL5vTL8mfQwgFxh9sxBvm3XKWFfUuwg9rOdptp3YYbJoJTwirF
0AvxA9IwnG+TEG/3mcHCyfTgrwmPD7hkaDUatKQMvPi1zLhlbIrA5MOvdtx04LDiYHWWWSNTiCft
RdQ1Xk4SMKNnyBgvUplVOuL67wTHcuaTaGeu0Ix3+OMe+vGmsZcq9Va3/sF/ka5W92IxOi5o0jN4
nMtc/zKR0FE9yjFAQREQ7PjZS02zLuK+NHSIK6FkVi1m487GO0AGUYUo3nfRODOVxoIGXXQneLY9
k2GXpUZsOx/AsSZNkpO4tt9N9AbxKRWK2ez+RrTitSaVJH/aSTOIWBcaJTtpCEV66ImVCMNgmqWw
R68hgFXF3TCzy8Zlw/M+nLNHPKfXrcJIPiCvgBw6Y+8Kyp1KAfZE5cgSHEA8t/IyTv4/xBLvb9dw
DhxJEFaAzQKRuVurlgVl6tA/ou+8cqMBBSrnfy2Rpn+8cUiza9VFDTfRcUReMK7YkGzrexxNeP4h
al2pW+4TEGtqHVOtl0Efu9iEDRTT/BgKUdDvRp427FIvd826PommXvfo0bBHyO6/nGW3MA8Rdi9W
Uko6HBZKm80cIHurfZD7VWWjM/OBaWq39jMJWfy7wu5SX5XZsQ7FfkKC9CIt6ROuuCciMnH2XJmR
bzOQcLhUXuszqpns5H6CPeU1tC4icWHnypZxnLAzBQgsBP8drjoV3eCJ+XpOpfmhWjO3huX05lC7
OGBKnMw03AnZHry5C48DmHmNxGHuKpemkwcUmAjgVRYtCi0BPLYqpHwIy/7Dj9PMl1k4AUDBQrSk
oMLnHPm1UgErqzF7PXpyWSlmghBVZSdKZJ/U32tpVHIbvFPQrq/xGNdVsEBCIxHPZotM5bQLGUm/
cRvWdK4EAcJRSRQueZFTZx+3vbI7RtwoGYbuGcJKpJARCNLAoyqpZHrOVNM3ZGb38OuCd4HDLs5F
khm7CYbYbCYWyysMcrO+E3WdYqh+gEGFpp/ewn68nFJaEO80+mQ3zoBxetnTj5iy+sXdoRu3/o6a
t87brO2mFaM4xgIuoWpvYHbMmiiJOM8qF6AQrEJRFWEfBgBdxpLQd84S/nf4YSvBpdNLLxYTCPHv
JNjc2wvua7GVeTvKemNzxIZ64vGxyrlNqIRIV5lQWfPxt0OeOvQ20/pu0GJKqxZxBCpPtscxhK+K
8ZdnCYD4Ga5RlLYBt7BTprgVjU9Gw7laUPSP7JGoZrlZmzP7jqDnZir6eVFmXrBGn7ha04S+cba6
70zps2d3mzeLIHfjKW+V4x8btFFKeqFAAShHqq4gLGFT0fADWtRDH4ydql3Ulid96Rh0zPxsPJpv
aky0RjiMLK30K9dntgosCcyh2YUoXj5KVTtzyWbndkBnEGwoDQUE7SXd7oSNbETYbJp6A69f4sFn
ku+4I8mdv6NneB4aSBUs2B22Ws6gogiegclsszD6MLEawlQnR5xMptG6csiS0XhN/TPM2I85hXzf
onxji028QCgbZG9mTGX1fM6TK5U2iyZ+xHGrM2GdhojSfzYT0++N+N6ewHlu33KCBTwT+GSXow8R
8JkCFzXCSjY89BzMTuP8mhvvi390t72mHsx251mvy+IMp8tuKuSas3LOH9DvVWGng5pgDc03ZeUG
0sb00kZDNH4t+QoxHnbdv7cZXwVDSDfkRZi5S0FVEP4i1G9a9ZuwAdu2pEeKhUI10VChlFZ6CJ0F
4IfwT2c6N8bbik7p51ktWztZ/Iy+OeG8kS750Rw+tY4B1zrAwNAEAGWPEiSilxIA62QcoauArKhK
J1Q7THVky66mNlqaNChWhxfdOd45KSAxavmRwKPgf5lgneIUun0yAC77MPw+Cx80m0HhPebFS+Fs
26SpYIRp0Kbc4/y7+XUBalQW2yrQk0UAZ0IpYeLhJte4+svKzf0YL6e0JRmK6cVWSZd9A2m7Iw3M
/97gdugDC8ci4b/Ebg0WljYs6maJOerPRmuE3dCqo82w5wTxYOs0gq3F4NV5pEQ2rW7uDjYA2Zpw
sCNNyDdIayYTfmxHEB6xZDy7fs3zZDqmba2LtfUmRUV/cKRqZq9VypHr83KKCZEuHQ0VEmjuGlsN
4o5Cj8YenJevOsZqh47SzvcgKTap6RfItP37mnXodx057eUj6RwsblB/HHX2ofg/YJpKNkduQ7k2
F56mAnGOWgPRHErOYO1VkF7om6aNqauMTM33E1Kwk6LtZOv91mSGeL5A7XOLUJPfTHuBlbSFn3Na
0EayWrPFOwJXHRx7KiFZGAUFOrxX+BYxOfK36vJ9aQVGsxus0L1aEQ5wp9rfkqfUAP6tr41f5x/B
QsXK9QTJszGotilre4f6jn4iefHXU0tE7pyzUIAWyTHnflhHvnwXprcfS0iDmPepFk0/JOApA4QW
Sj2RnEiIdjuTqJv/CRClII4SVFBtgqOncAV422tm12i+dYIcXxWLwzU49ea/wRW+A3M10iWRYxoL
tBnSbaDPJK2Dt3EyTMZyLpLElS3YTQEIav84n2WONpfVeHCo6Bz+LoPRhkWTO7hMMlbbB0A8+8ps
CvP5xGEh2pP2QqpnXbYIVRxcyDO+NLeUovnWQ5HSPZU3k2ykoDjrBCBC7221oyIl7WTzZhwF54Ox
WNomcXFWtUGED6hoUwiHeNwEiM8cFr+jw6js0aKH7m5upYVHp1wkLZa6CX0q5iRIZPxM7jXjD3bP
iLXehWY63bpHXKiupkbcXBIryriwBvF+mF5GFXPLLThSlzajArE5PqUqQKOO5ha7U1CYVuIKP8yp
wUcw8IE57Zr2D+NOUdd2Q+9+zH/LpqQ69wSaGCKkXDrZe4+pjPeeCJFxp21+xbcAus4d/Iey0XpH
GOrvloeru/jofekBXjQpJq5A0HR1UvrlKQ4jB2JISFxCfhOb9G9E6reWxTFOM0UELGdm7L2lxlJq
kgu+PaJSB0VwlwyAS6HMSTAuAm1RaPCzekkZAK3qDjaZF+31Uz6iLtmn7U6icHi+STfbL5BoNBNC
OnHmSrni0q5zGpuIDQcJ3hDTSsoA3o0OqivCeZ2OA4EKLuhH+gfU9FrEe4anz1Y8YWwMu5KK/j09
p+wgIf2icGFIxsew02e+OEmBTU9XVwuWpmIPHADzIUFSypX6dfPJ3Llaua61c4Tl9PJSRaAfhCPE
sObnoA8ZX7Sxk/k+1JAKcT2nvuao5KXCmgAs082Ty5kKWKveRbkOR+DL9e6jwAsZy7OBrJTm7Lkx
nP9RzXlyPoF4lDtBSKJDncvZNnGsLx7hcQrH1PMt0eo/YxosjVLgo+a9qsI3sojbq6YRu7mOa2h3
zr2++wG5Z12+3hw3ztk+sAYhSNiQWXkx9KBeA7cMB7DmhqEP659Qh/ZxjGm1pfvCIlQXKLusky7s
/liCYuxujYQ5J0Fqz/G/qemGVkI+BQaSOLc1bJ9fbdl5wYPowiVJPK/s0RL7yX7lcAvbXYHVQYD5
CpihnfGBBQ2gSNC16WytUQOO2RezAT86W6Wmv3XBVRufS3AsyhR4Z1E2W3YW9Mfn4MN/EQ3hFyBT
lhAWLbJONZh+Z5x6XPPVS+1KVh0GM4H8kC5Fy8lJfh93+kdODxKXQgK15KUa4sdPjrVUwOBZohy7
VexkM2sAZS33FX9jx9DdTxn6yTtIL1oKQgB0UlO8M5lyEDBQAeLx9o3Khs7C5A7DTEZcRrnQr9ZS
PzdCONUwjtShcmWiXonMGXXGWkl73M0+8wcB1S2YONv47kKOnE4phzT6lmYiverIE5lRz5XlWgdR
NhzntCvtZVg/W4vSHW/049UZRgugvNy+3b10pCC0eleRjJeMCmMwR2vvxBTIa6kuaFnm0Yzapio6
RpSOTkd1N+YWAlpcyPnzLnfqhB15clEBcZGUTHaBjCQstq5+k2ELQ9K+wV/uBou25xKab1CDqpRk
DrhxO9XembT7jASBHNG9MatpdJVDXuF4ehfb+jdWTJfkVKAxGKoTryBjol5u8ayMpctTx77xvl2m
OKvC3svE16f9oZ66enY91M/nsor3rGZAmVL+2CFnexEnXCqMYICChRE+gEpCRppAlYhV7a3zIM6B
P9fQRkl65z4rv+ryI2k1nfz9C1CgW+h4VBBHHbqH36i5fpI9dI/eXmWMsWBe3cip9AH8ZQoI+iBz
6BNC5n880dtERNDmjeLZDYk2Yiqaa1/8cQA2j/8X+XYfbiDX0JEdesOFpHWcB/+TamPFDxhCaSCi
6pv1Sus9p0GPKYeGYkIbH8dcp3I9FA6GwXPY5vf3TwL05c7Y6XEetqZOdTEs/XFxlAtn6Yhmlt4u
qiCHGJ6geEaSBvj6QDE0vPEMuEs33314XX/goy1wets/0H8OT2y/Ir+wQHlFSC8M7Qyw2CCPc8Pg
LPx6Td/U+fyHM/LgkwjoqaD+p1f/vvvylioRIunbqHPq7dTgcPFxn6BJ1SblXCIZzrW+VL6bvp86
kn+u58nU8bug9dVR4dqjSiExkc9G4KWInfpxMcSESTUwkHCf9v7tVAe7ynDT2oXg4JYb6supPfs1
Wa1kz+KJ3Fp0K9LscWSpMNAu8g2yEYW1YS0lXvML3Ax/hwYUo38/uZxSaLFFE2L+3cKRQ8wHJt4u
qyazgw5t7aWtiW7g6JPXvX1pD2q/Mv5h71gZXrsT7Ygxaf7qI5LZxmFG/b1CHsloeh1/h1lvn8QE
KIj+rbx7SEJLTncVha0ncRBvWGbDUe/FrkPyWMBTM8iZVhkblExNtbVb8pgatXkbqdQGsjzLhx2+
xsnsq3pZ0B6PrKhfFmXSaXQ830iQOt4VJ+1mUNPrLMiVYpqJ8TilJsKgeXxLEw5r4zIAs4RLuNfj
rriyu+V4PqQl7ime1Oakk3ATYImAfAXObLFqYdXrkgm7tc/PvVhPrmNQsMESy6Jldoik8bVZgpls
TDJeDQy/v1NlJCgPUqfl9t332qhQGOOiOsWVY/bGdyQYMZM8CYYABgOO4tHn4oHY9RMSXU4SVHSN
Roz9H6yYIwagCbtB9DwWbqdW6hj1mKdJWjLsjINzSRpM8CFsIe3hPIcHee4NoKnookuqKt603Nz+
vUxoj0D706bLCfTp72VwY3nnvTCHXKLG3MBAUnV/aeZebAxjslFA03ipPNJ1g8QEgiSSjb/44HgA
4ddYQBFNPsPScw40/coV4lbOHLnDZ5xTleB4r7gV6sgu4W0OqbKNUbddrynO/QxbGtEehS+LBXAD
+0kigTN/Sl3ZsEFpEzOOUHqwBr7tm/6uGnVVDJJTC3yyXa2x3eaPC9jiYiboDe6oiFJPk6X54jzN
PpaWh3BYIqpsrSRMq5ixrOGwVzMGZQH+GMFJAJA+XC9epCIwZrTFlcHF2vrGJAjrzk47kgS4u3NJ
t3Ok5pQrAvLvq7YQSpjMw4Wf5pIn8+PJE7D/ExXDbVAEn+x2uuyf/BFZKqwVMiddhO+MZX5KNPX2
Np5bR0gPALZzfg3RPFk6U8UBNcSbsdjtIOLTa5o5673C/uDSNMRn8K4Zs2tSgFbkWYQUIFY9hydf
5t9Vow3bOZWG9v4FNFWl9K7H47iAVGHeDN8zUawr6HdGn+6TTwL6SR+Cm0DCj8KLqx9TEry69ndX
VEnb+vTGtNL8640/P5I6z9OJ8AX8lmn5dbqeD7JqqIqVyS4Q6sLMl141p/u+3XWs6yFYUkZWeqOz
78jf/izamVAo3sDJ+4QBqLkktRRkQWrjZWcPCwL/YKlCc0ZbAd3k6s0sEi1pBulWrM+qz1rjPcix
PnR/AxX92FgvMaxwujCfoLDUKWCG92MKC/XjVB+LBzMM01EvDED5Rsa+ngftq5vFB21WR8msSJ+p
eCLU+buiuMQ5GqXM0ld/T7Joy4DV0Up97yHgveW4D830OCmoJIVZf7eFkB64mLLTz+tCia+3g+HI
qQ7NJSMKkrco41jOEQzLkIyCqsQCF/5nm+RSd8YmlmwrwHSmU1yfSfJ9R0ifghmJW/3IgwxYg3r/
TSlMG0ZzY7bI3JHxgjVlEbMBIFEAn1vI1w+cOeExkGipvDEubFF/PenVvq6c1RpsuW/x6H/MWLb5
ZuAwxDUUgliSvgE8DC146LbdAEyVpf3uYGJeyyxMn35WUZeNFH8IguFEn62MNL0XpBt6jHmlPHCN
eiPl2vKmWoFPwvBcLKvCKlK05tOAbdEDArNAjR5ME53zAJczzgKK4zsdTanuCZeAxb3HiwqZMMJY
+BfqeiZO8Bq2/U4+J4VV4W8vQafFY/pR2xALwkn+3YxqIl6FUBjEFDp5VgCsPj/VSP2yMhTtCIz4
c1hvUhHefTlxbSyK0HlSt8cgIpxmxRg0LVUrRJPQpN6pPuQf7YqZdeL2gDpYNc9jMiZ1xt86/0R2
l0m6EyocL3WqHmBAaLLpHSUIQuSB2BVCWFpVzVMITXmiGVrKMqLkQD5Eqtrv+xACNCIdPc5aznPO
USnLiTjTy3Z0Wj9Or98x41W0kAv9b7+CsgytxqEOVKV+p9BiRN134S8fmIipxYLBA3shYHG0+cCw
1PN+eMFvrHw9kI9zBXhN1vOxESK6nyzWdRDyjnx4+snAXHi42EvnNT8+m0/LnJiSkcbHGcLbXwxU
Th6w6c1fFNXPKImJ8leUR9LAVB0PQTDzw2xwtt3bHz/10CE4JJQP7kMM7/00zHqZ78V/0A0C4Zjg
TvNfYdldD6/UBBFIemIU/hWahAgReKrN0PXfh7QbDnJYROYlO6ANFNo6Fzs6Wx/h0sx8B5IMrqxn
9o9QARncgQ0Y3jgP6ild3eATscmwYJHhCOnv8i9a7QEraRroNh2CpJjgn7tg3GbTGTyD/wK0H809
RWM+FbRuCWWu0v+h1dLQFgWCDs78ESGcXJXNYsAmxFxqSwLmYBRNsu11YazLKs5kFzWRQUUB+lEa
DXWrF3TlexGfH3y7UATXf5aoHsd/GhO8IkiWrVYBobUIby6OaGF7FpM7CxQywd18N5JJeXutX1Q5
l5hfga9yfk+rKEWIFOLPExjt1JfXjRR5IbjvjiM2beJMWND6T7MJ5Ua0e1rsS6xfWA3fq9IM+LfS
MXNJlTyup+3/H2Duw58lOnju0oe/ZxcBVHl/88bQ1y2Z0L6VIXGbR9z6ptp5p10k9DP7XbsCcFvG
FN4s998BsHNQm7mfSgzlauHzLyhKA45iDArj/0WbXWSoob/7SIcHmfgUUtCCAVj01OfUCjnhzTwJ
KNpM8RIc768anAF07rMuBfcurHtyx+f3Sszz/PzhKt3j5OPMmmBf0gFZcYSy2qi7RcI26gOrNtVV
8IXfgOj9OrRRACsyGAFsKaK6N09OvyOpIQtVSvGW5nm324X2Gp4wVobnkQI3sph7vEMfgwPRd9Lt
g8bWygWj+/uCtKFgFXQqNO/b6vEXvpmtLSl54asCLGCqJ2izy/0O+JnhB9SEOXW1vLI2GtE9SD7J
9J9rCb7mMTIx7HYP0L3hjljfd3q+QO+x9TjTvd7xjRtiFFoGORDic9qQp9JlguipJi6vlBh5ykiZ
S02FXWFAAwjE3Mr5DQTC9OR87iuMj9Jz3ZLYNfHENJ4fkjDPTXiInYU1wOq8Z5xEjg/lsORC6/xv
SjAJ88TsKB6RX8R4HdIgQJE0fi7ltJtDuczAZltJYY0DX6xhSAkacIKCu6c3sFMLHUfsekG0X9J/
5YuBKfPGGJkwW+cWyEG+jJvyV6FtAth/sK9d25kJiJE9imhu9yUl1M+5U3C8u4MePGK09I2tqplG
sm4FFlcreFXLkm/ORTj+BIkqF2UoVorafwaDAQwVW/76WVEGY9+0UCkzJqYJIGK41bKZwsLA5z25
gg3yvtzGi4arOAg1Qi7rM5/z5LoiL0ZWSKBiDacPP9OYrRdTjHgIdPJxvR7nbxpvZ3/jeBV+3CF2
ynYy5FeDjQinwYLmL7SsJQf4BKwIITHFMZSJVWqvAinuTmE9iWZQtvtkwIjIxUhibrH9v6RNTx51
WNHZGQXEH7r/hc3BHGeAksSViYdBVPpPttMIZeTTD48tlJ5XrpjYbaPb/kuOsEkhf9xOoK/MRpfC
sg8ej83PAlz9qJ2lOrhqq+cHtB8UzVfjtovCmsGi3At+KyXQgdYCGbsKLYxQYCKRc7zM8nBg/7od
XJJ3bYq6ban7cF5tydyN9vWzW+cH+46WJJAE+tFbwz7TmyeFBIf9aYYWBmTH/82Hrxpo0lSwXdJp
ouZNbYFKiaJlth8dBxxw02iq8Ib9Hd2eqjVCDnEuYcebeaycvGvZv4BPnJxPvqyqGVbn/wLGHLk3
Ecfkn8CS74KIxfJ8hCtoNwGyfct+sgoac1/uDjGzpJ270gpGodXZ2dQydsQAHLQlBFHKTBrHdy8d
ZgEU7zSvLJugRJqsNoNquLGYNWavGCikaWAjYirEtl5DeCD1McYa45UyrV8cB3qgVPzlZh5xrxP9
PuhNBNtlGTqEMXQEYytKnLNITkeCv3wn/BymoHQZfZI6bhF5r0ukZs0L5yoO4PLSJLl8g5JSxE9M
w6pB9N5iEZYSLzHbsAy/hClvmqW5NZPG8yJTxSUjwqwpV+sd+r7D8rAVtlbEpGUPgxNUyMyBqezO
Ld6QbIFAmCtilnB3VBfmpCXVjOTxKUzX/AJdE7qHxDWteUawBbh/TZwS8Scur8iXmAgFV9BdSf0V
nOWjAmJM2aIxZhxB0Vvik3ABygg1XtQjaBTOL7OmV2xjyS/rGrWr9+C5wGzAtD8qBmjW7YkeX86a
DbyKdCFU6pmnZOeQ9pCLDk/yNZjvXyBThXpb/TXz3XnxvLr0HDgjtLtLRNR6O+1nCJyPC2hFj8gI
sFZdrsT17Fn9GceNF61Uj+4t/X3dcT6tNSd3AuZjVu9l9xPj5FNU4inDfqNcWt3EprhhRtieaBXg
+vdBb58tgASh3aicSTWmb5Ae9bn10TbvUardPx5OAr+rNMV4v3oFq9qGr8fZlrUMUWyvsb4Yc/fJ
PpHZdVIQRjD2gUtiCeczkExowBFNIJhfTnVg1eFReAUvyPXYX/OhRNyJOg9KIgYNn5IQ1N4Tx+lE
mqbBKCV9lMdonOP8cJEQZL3rfnJ+QcF1A/iTsRDfa+5YiL0oNuJX/vGuy6ho/XLmEinPirFcHnBJ
VzwblI69P0td4c9GRsOO1628sqjOhi4AxBd318NgO8NzFtm3HJyigP8PLzxQQAj9MRMReb1e0ZQp
+X+bZZxQ76ExTss/5dT9A9L/shcvmkxUZMzovLSy6BIrr83o6VM3wFOgoFSjevUhPX0clUFRQzEM
wmEx2k4TEQ4vMmD+zJVzM8LPS6z2i9Q8MnzTdXtZPyW/CKZq/NQbuQjg0AFmDPmbTzwRn1br8gSg
uQ/rN980cy0bPG5KZorGqOxlPSlISx/YKywAr+mU2aVytQI43621y5VHrlK0eOVCUN8mmRawww3R
qmm6F8WwgPgvOX8KvzNc9rsJjv/OtzQWxNjCj2DR+Yz27QrZjM1IlMtmGhOSe366NEAVDVX6NADF
PCsjFsbZ82d3oXAL2FiRxcowHF7kjMp24u/XKWHK+vDcAa0YJXvoqw8K/nAyTKL3zpkXHGBIEAGA
b/4Bq/CaKeZ3apgxyUp0MQr5gOLyX5mO+aNXYReFs3PBS9rNtyCRePZOMvoneCXze9hc46ELkKjE
23goSAAEuc+X51aJhEEoXMLA0nauOePYD0GFmtdDCQrR+WA0KJoOpWFAs48ZgdYK5Nre1rMfqXSh
FQfeeWoLKEPwVJ4KURZ4rJptxRsz2eWB1rpDibACGBdg36JJS4nvquH1A2XpABGjRsX0x0WV1GfU
qn4ZcOLhzxFUg+f+M/2D42k8WyNRr8leA4zApIBfUVSUT0777V3J+Z6umiQhx15WtLb4PDWTDi9e
ERCYLXDotupRaRis90YJPrl7GD/uO70QR98rjF99R22EMAw/+CS55T0k4y/Dho1u1GzwowUa9kz5
Ah3/xDiHYjIoWbx/wxvcLlKihTm3KjkGhvEOKvmpRZl1apwGUzQjRlHDbThL16rUtfmbLbQbhyAj
uutj+fatZrRfcRwrVlPdoFtYQXhkskYCY+yjd0Pv3goCzoVVWSoInE8xefsMka6CGZhDnjBpxXAh
wsXgaWV1gmtKzCYg/XtH+q6fK2RFWz0HauSk9iv0bAi2IhLhM9uN5zNQ5dGdNyhxqmE9v6vS2ybL
BK/Sij4y31gL6Rl/aoSVdymwtUcwg2tjAspCe6sJG7ftUUxB3s202yyYNT5ipd/q7x3dUebliDqk
7H46dXjarrhaubDAbY2eiH0LF09/BD4d/8BfNzkVi8l3PL47yEjKiXGJeJWbxSB7GLj7ZqaGMmYo
HPJIqQ1YgffNEgacb77ar2Y1jpYUfu9QP1jmY3Kq3/cf0UIpoeu2MisQSHxnuMVI7khGZSNwYgA1
SyUaKfK/W8KOk99cljV8u/bD6KdgScG0ecNfKrYvrbulfizSBFicyAOYJOmcIDVrcW1voDVmzWwk
pc1SjIECfFxXGJbwbh0q0YcjO8kK5gKmYNvMDPLOnsyVptMzjukAJR71CgkBTCkdqqaJFtjYlg8D
OtoqRSTBZ5GdBYuEliw3jmc2x60OOFddTxTHrvrNMQkpM1qkl7kFlw7BGT/XmflMTVK+QToYInGU
4p7lqOCea5R7gjhxPvh7PYSQO9zKmzvK1wSG1lpgixe8eRT+won9CD+wyR0p15w5GaplMxfBBLbi
X644iK6CSYUDsx58+f04ihwX+88ddy184IgUbeQH+62Y74JKb7vfdiV3pg67j+mbOC9xachMqJom
h2quRdsHcssWSMF491C11LQ/EX4bOxRCrs+ZNv8TFWvozEncLtvhz1p2h1aoCPHhOWI+t+KApPZR
s8eH3EYvcvgMVnwvZ1948ii3sWzMy/FT0CsYrrtpfrQ9lDom8hKayxTBCuyjhG8do3/oN9Wc9F7k
lwxKossmVY88xZCNeQAhkXmMfI3rZ3teRC+lF4d/RMsvE6XN0t4RDG66LQiEMepR2vPFIULE5a9s
cWep7fuFEE9RrFuEHAv+A7V1AU00ZPXYyMP0DEoM06kEvEWW2RZ6JacVV/O1XKbLGvtdMr5Qcbhw
DyCnznrRRF+dmFbX32WJU1DJ6ibSeOZTXWkv7Ty1NketBVW+3s9C2bZL5Hh0aZCpyR1WyYo7ekZ0
4RCBdEdie5apeIAk95U+V+z0tmkzIs30UejJwcXQkOiRnNC9IrAEsJisdvO28ybrBNn5xdaVrTSK
NA4ak1bssbwzNF1mv8VG95nh03s5AgmXdDuYVwzCcQu+IdgApZPraWPlk2MK/fnjGjDVNjBblnd8
AXq7LmwHaK8q/SUtlC9BEVZgccRm+lOIeJBaigFYlxBTEw5Rj9Yluu5aec877Ds+ue23BL5LGHMy
gGuDoCQs4UvyMg5cvhZOI6ppVUZ8fYJQWvqpM5IWC0KI4VDdtzPMtWSkOjo9OFG6cx66cW4nbIje
VhuUBlI34437D0y3E/yrlctZc+PkG+BHBjKGlFAlhguxyFUuwGD4xOKEb7hP6eyO8+2qQjp224GL
QguKY1+0NCRpPxS0MBVsRyyZGI/tBU4RszHfvAHd23fiqQTJAPGUS+aKgJrSL2X0kmBWSSOKD8Z+
p8nxm5NHO+Qsi1NaOYTVLP//2/9/YqFFGHKZjuOlhiyI8ISUbZVVHm+ytNZhww9uvAG+u+O9jU1S
skkmSyhmFUmkZpWSYzeBbNt6czqO40TrqwJdH1VSQ7Iyu6QwmWJGXxEFq9b8+znYSe02UeBHa7Qw
JLHE2jjQLjewRi+RHdcqIUlLH9XbmD8zTFmLIu9GNozW3BVvLNhIcI+bA1p8Kb1vzJEgjr+dwyq9
vSq/ji0vCI602zBaBs995klEtpxVrRN6fWXFuaJfU3oukJgwHWktSRgTeZamxReWQQEaK3ValWwb
m/WCtyxJGkKN9uh3vU2iRTVkTXDL95f0SlDbsiE3/epDvRQO2TvEHKwdcX7P27wkwEKRZoNoT1qs
ilJwnqBm/psLaV2YyflKfunnNMy5FJ/667F+NkAYvbukOTWrivie89iiIJIFcXyTHSY/WpTnlDwr
DtVv2oZMbh93WTEomJGbp97eq2EYVoIjQII7E1SUWdWaA/lvuMC9Se/hSoAr0LXD2Hgtjpz04xLe
nnHjJhgESKLEOdjdPp/q4iEmB25WvRQZcVI7CeyM66S5ly6JN7DMuT2ssDUWHwaVj/gJUoiP5lGe
QZvTiehTqxJI7vGRoo4lK0PoslVu71e4bgpIedXbYauLqCIPHp1q4rKcFm8Wj0uavUlFqgjuqP7h
OWVcTWAzJHkz1haOi7RFSLWloKztjA5thN68RR0+8IW/c6+nLRwgIGTAoosDMuKmf6EmkwPyNDbh
MTzv1bLZdrFdjMArQWbfXmkspdD8pF22CRyNrAE9fFMPUzJZ18bWBKr4TIoWDQy2V3zkatemp7QW
S31Ol1Wbmbk0rje1i6woC+Qi88yQHmZBjNk0ii/VEX2dWGF8mup7nEB64VHRJGQ2SRszy4O3kSmp
0g9GCDiEANIryqoe1oi6QV0lykT0n3O5r/961cYitrHK3dezqRpAIogMONujFX7Fdy0CYbnSdYXt
t2n1gKhuDtuxHpZm+aB1iuZ40QTJLqyUFlJ0fg3YFPMiqKnphGSI6HF3I7lmuaOl23/08iBR1fEx
DH0BuhlOI6lVLUolGCFMftbw+fJQzwHa2e3w5EiI1tN8MJ8XKuiJv+bdlkK+mZNY7H2nQaSr4PZx
lZsmRPFI7lQ1v33xERtF4GGzqJneZ0icyfIE0jEEy84XjaFbhlyP2zoyFHJTtdloyafg73T49qBk
7P/RQVHoj/YZAPOZZm6vl2JDa+Pmb8RhnoOvMfN2aZ/1lXxqoNtG/+5q4FZH+X20R6EDb5nWglsl
CkxRSHhpHJ2X+0adVxsnH7zWUZ8PstEXQqGYSCKqae0NQTk9mHila60vmvozGT2wxRsz3bW6ua81
3xZLxT1N4hq3t85m176JF61/aOikeKHjrIRc5Sp2C6yUwBQ=
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
