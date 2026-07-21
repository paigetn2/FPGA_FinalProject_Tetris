// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu May  7 16:46:08 2026
// Host        : PF5JJ7T5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top rotate -prefix
//               rotate_ rotate_sim_netlist.v
// Design      : rotate
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rotate,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module rotate
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
  rotate_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25792)
`pragma protect data_block
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
j8kQ7EpQP58lZ184u9S+qCHTORfsgvMAimLWkw==
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
