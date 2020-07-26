// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Mar  7 22:45:12 2020
// Host        : DESKTOP-2M5KLAK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dist_mem_gen_0_0_sim_netlist.v
// Design      : design_1_dist_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_dist_mem_gen_0_0,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [9:0]a;
  output [11:0]spo;

  wire [9:0]a;
  wire [11:0]spo;
  wire [11:0]NLW_U0_dpo_UNCONNECTED;
  wire [11:0]NLW_U0_qdpo_UNCONNECTED;
  wire [11:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "zynq" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "design_1_dist_mem_gen_0_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "12" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[11:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[11:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[11:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "10" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "1024" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "zynq" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "design_1_dist_mem_gen_0_0.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "12" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [9:0]a;
  input [11:0]d;
  input [9:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [11:0]spo;
  output [11:0]dpo;
  output [11:0]qspo;
  output [11:0]qdpo;

  wire \<const0> ;
  wire [9:0]a;
  wire [11:0]spo;

  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo(spo));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth
   (spo,
    a);
  output [11:0]spo;
  input [9:0]a;

  wire [9:0]a;
  wire [11:0]spo;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
   (spo,
    a);
  output [11:0]spo;
  input [9:0]a;

  wire [9:0]a;
  wire [11:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[0]_INST_0_i_7_n_0 ;
  wire \spo[0]_INST_0_i_8_n_0 ;
  wire \spo[0]_INST_0_i_9_n_0 ;
  wire \spo[10]_INST_0_i_10_n_0 ;
  wire \spo[10]_INST_0_i_11_n_0 ;
  wire \spo[10]_INST_0_i_12_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_4_n_0 ;
  wire \spo[10]_INST_0_i_5_n_0 ;
  wire \spo[10]_INST_0_i_6_n_0 ;
  wire \spo[10]_INST_0_i_7_n_0 ;
  wire \spo[10]_INST_0_i_8_n_0 ;
  wire \spo[10]_INST_0_i_9_n_0 ;
  wire \spo[11]_INST_0_i_10_n_0 ;
  wire \spo[11]_INST_0_i_11_n_0 ;
  wire \spo[11]_INST_0_i_12_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_5_n_0 ;
  wire \spo[11]_INST_0_i_6_n_0 ;
  wire \spo[11]_INST_0_i_7_n_0 ;
  wire \spo[11]_INST_0_i_8_n_0 ;
  wire \spo[11]_INST_0_i_9_n_0 ;
  wire \spo[1]_INST_0_i_10_n_0 ;
  wire \spo[1]_INST_0_i_11_n_0 ;
  wire \spo[1]_INST_0_i_12_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;
  wire \spo[2]_INST_0_i_10_n_0 ;
  wire \spo[2]_INST_0_i_11_n_0 ;
  wire \spo[2]_INST_0_i_12_n_0 ;
  wire \spo[2]_INST_0_i_13_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_8_n_0 ;
  wire \spo[2]_INST_0_i_9_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_10_n_0 ;
  wire \spo[5]_INST_0_i_11_n_0 ;
  wire \spo[5]_INST_0_i_12_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_7_n_0 ;
  wire \spo[7]_INST_0_i_10_n_0 ;
  wire \spo[7]_INST_0_i_11_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_7_n_0 ;
  wire \spo[7]_INST_0_i_8_n_0 ;
  wire \spo[7]_INST_0_i_9_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;
  wire \spo[8]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_6_n_0 ;
  wire \spo[8]_INST_0_i_7_n_0 ;
  wire \spo[8]_INST_0_i_8_n_0 ;
  wire \spo[8]_INST_0_i_9_n_0 ;
  wire \spo[9]_INST_0_i_10_n_0 ;
  wire \spo[9]_INST_0_i_11_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;
  wire \spo[9]_INST_0_i_5_n_0 ;
  wire \spo[9]_INST_0_i_6_n_0 ;
  wire \spo[9]_INST_0_i_7_n_0 ;
  wire \spo[9]_INST_0_i_8_n_0 ;
  wire \spo[9]_INST_0_i_9_n_0 ;

  MUXF8 \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .O(spo[0]),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_1 
       (.I0(\spo[0]_INST_0_i_3_n_0 ),
        .I1(\spo[0]_INST_0_i_4_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ),
        .S(a[0]));
  MUXF7 \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(\spo[0]_INST_0_i_6_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_3 
       (.I0(\spo[0]_INST_0_i_7_n_0 ),
        .I1(\spo[0]_INST_0_i_8_n_0 ),
        .I2(a[3]),
        .I3(\spo[3]_INST_0_i_8_n_0 ),
        .I4(a[5]),
        .I5(\spo[1]_INST_0_i_10_n_0 ),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_9_n_0 ),
        .I1(\spo[9]_INST_0_i_6_n_0 ),
        .I2(a[3]),
        .I3(\spo[7]_INST_0_i_8_n_0 ),
        .I4(a[5]),
        .I5(\spo[2]_INST_0_i_9_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFB9EE7BB00000000)) 
    \spo[0]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(\spo[6]_INST_0_i_3_n_0 ),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6D7E7FD700000000)) 
    \spo[0]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(\spo[6]_INST_0_i_3_n_0 ),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \spo[0]_INST_0_i_7 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00B4000000000001)) 
    \spo[0]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0095000000000000)) 
    \spo[0]_INST_0_i_9 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_9_n_0 ));
  MUXF8 \spo[10]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(\spo[10]_INST_0_i_2_n_0 ),
        .O(spo[10]),
        .S(a[6]));
  MUXF7 \spo[10]_INST_0_i_1 
       (.I0(\spo[10]_INST_0_i_3_n_0 ),
        .I1(\spo[10]_INST_0_i_4_n_0 ),
        .O(\spo[10]_INST_0_i_1_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \spo[10]_INST_0_i_10 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \spo[10]_INST_0_i_11 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[4]),
        .O(\spo[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000012000)) 
    \spo[10]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_12_n_0 ));
  MUXF7 \spo[10]_INST_0_i_2 
       (.I0(\spo[10]_INST_0_i_5_n_0 ),
        .I1(\spo[10]_INST_0_i_6_n_0 ),
        .O(\spo[10]_INST_0_i_2_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_3 
       (.I0(\spo[10]_INST_0_i_7_n_0 ),
        .I1(\spo[10]_INST_0_i_8_n_0 ),
        .I2(a[3]),
        .I3(\spo[10]_INST_0_i_9_n_0 ),
        .I4(a[5]),
        .I5(\spo[10]_INST_0_i_10_n_0 ),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \spo[10]_INST_0_i_4 
       (.I0(a[5]),
        .I1(\spo[10]_INST_0_i_11_n_0 ),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_3_n_0 ),
        .I4(a[3]),
        .I5(\spo[10]_INST_0_i_12_n_0 ),
        .O(\spo[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDB9A000059DB0000)) 
    \spo[10]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_3_n_0 ),
        .I5(a[4]),
        .O(\spo[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2600AA0065006600)) 
    \spo[10]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0B0000000A000000)) 
    \spo[10]_INST_0_i_7 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \spo[10]_INST_0_i_8 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0200000009000000)) 
    \spo[10]_INST_0_i_9 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_9_n_0 ));
  MUXF8 \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .O(spo[11]),
        .S(a[6]));
  MUXF7 \spo[11]_INST_0_i_1 
       (.I0(\spo[11]_INST_0_i_3_n_0 ),
        .I1(\spo[11]_INST_0_i_4_n_0 ),
        .O(\spo[11]_INST_0_i_1_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \spo[11]_INST_0_i_10 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00800040)) 
    \spo[11]_INST_0_i_11 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[4]),
        .O(\spo[11]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[11]_INST_0_i_12 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[1]),
        .O(\spo[11]_INST_0_i_12_n_0 ));
  MUXF7 \spo[11]_INST_0_i_2 
       (.I0(\spo[11]_INST_0_i_5_n_0 ),
        .I1(\spo[11]_INST_0_i_6_n_0 ),
        .O(\spo[11]_INST_0_i_2_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_3 
       (.I0(\spo[11]_INST_0_i_7_n_0 ),
        .I1(\spo[11]_INST_0_i_8_n_0 ),
        .I2(a[3]),
        .I3(\spo[11]_INST_0_i_9_n_0 ),
        .I4(a[5]),
        .I5(\spo[11]_INST_0_i_10_n_0 ),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A000A0C00FC000)) 
    \spo[11]_INST_0_i_4 
       (.I0(\spo[11]_INST_0_i_11_n_0 ),
        .I1(\spo[11]_INST_0_i_12_n_0 ),
        .I2(a[3]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5455959900000000)) 
    \spo[11]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[6]_INST_0_i_3_n_0 ),
        .O(\spo[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAA009A002600A200)) 
    \spo[11]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00C00080)) 
    \spo[11]_INST_0_i_7 
       (.I0(a[2]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[1]),
        .O(\spo[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000001)) 
    \spo[11]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \spo[11]_INST_0_i_9 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_9_n_0 ));
  MUXF8 \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .O(spo[1]),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_3_n_0 ),
        .I1(\spo[1]_INST_0_i_4_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h0000000000012000)) 
    \spo[1]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h004F000000000000)) 
    \spo[1]_INST_0_i_11 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000007000)) 
    \spo[1]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_12_n_0 ));
  MUXF7 \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_5_n_0 ),
        .I1(\spo[1]_INST_0_i_6_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_7_n_0 ),
        .I1(\spo[1]_INST_0_i_8_n_0 ),
        .I2(a[3]),
        .I3(\spo[1]_INST_0_i_9_n_0 ),
        .I4(a[5]),
        .I5(\spo[1]_INST_0_i_10_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_4 
       (.I0(\spo[1]_INST_0_i_11_n_0 ),
        .I1(\spo[1]_INST_0_i_12_n_0 ),
        .I2(a[3]),
        .I3(\spo[8]_INST_0_i_9_n_0 ),
        .I4(a[5]),
        .I5(\spo[7]_INST_0_i_11_n_0 ),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCB700001FCA0000)) 
    \spo[1]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_3_n_0 ),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1AF700007D1A0000)) 
    \spo[1]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_3_n_0 ),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \spo[1]_INST_0_i_7 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[2]),
        .O(\spo[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0000000B001)) 
    \spo[1]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3000200000000000)) 
    \spo[1]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_9_n_0 ));
  MUXF8 \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .O(spo[2]),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_3_n_0 ),
        .I1(\spo[2]_INST_0_i_4_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h0000F00000004000)) 
    \spo[2]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000600000009000)) 
    \spo[2]_INST_0_i_11 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00BF000000000000)) 
    \spo[2]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000003)) 
    \spo[2]_INST_0_i_13 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_13_n_0 ));
  MUXF7 \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_5_n_0 ),
        .I1(\spo[2]_INST_0_i_6_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_3 
       (.I0(\spo[6]_INST_0_i_6_n_0 ),
        .I1(\spo[2]_INST_0_i_7_n_0 ),
        .I2(a[3]),
        .I3(\spo[2]_INST_0_i_8_n_0 ),
        .I4(a[5]),
        .I5(\spo[2]_INST_0_i_9_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_4 
       (.I0(\spo[2]_INST_0_i_10_n_0 ),
        .I1(\spo[2]_INST_0_i_11_n_0 ),
        .I2(a[3]),
        .I3(\spo[2]_INST_0_i_12_n_0 ),
        .I4(a[5]),
        .I5(\spo[2]_INST_0_i_13_n_0 ),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3695000087680000)) 
    \spo[2]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_3_n_0 ),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h639E000059610000)) 
    \spo[2]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_3_n_0 ),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000801)) 
    \spo[2]_INST_0_i_7 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000D00000004000)) 
    \spo[2]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000E0000000000B)) 
    \spo[2]_INST_0_i_9 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_9_n_0 ));
  MUXF8 \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .O(spo[3]),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_3_n_0 ),
        .I1(\spo[3]_INST_0_i_4_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ),
        .S(a[0]));
  MUXF7 \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_5_n_0 ),
        .I1(\spo[3]_INST_0_i_6_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_7_n_0 ),
        .I1(\spo[3]_INST_0_i_8_n_0 ),
        .I2(a[3]),
        .I3(\spo[9]_INST_0_i_7_n_0 ),
        .I4(a[5]),
        .I5(\spo[3]_INST_0_i_9_n_0 ),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5D007C00EE004C00)) 
    \spo[3]_INST_0_i_4 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h52000100C0000C00)) 
    \spo[3]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h30000B00A0004800)) 
    \spo[3]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000B000)) 
    \spo[3]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h007F000000000000)) 
    \spo[3]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F00000000008)) 
    \spo[3]_INST_0_i_9 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(a[0]),
        .I2(\spo[4]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'h0033000030883088)) 
    \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_3_n_0 ),
        .I1(a[3]),
        .I2(\spo[9]_INST_0_i_10_n_0 ),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_4_n_0 ),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2100840044004400)) 
    \spo[4]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \spo[4]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[1]),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00C00002)) 
    \spo[4]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[4]),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  MUXF8 \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .O(spo[5]),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_3_n_0 ),
        .I1(\spo[5]_INST_0_i_4_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h0000700000004000)) 
    \spo[5]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0600000000000000)) 
    \spo[5]_INST_0_i_11 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0800000208000003)) 
    \spo[5]_INST_0_i_12 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_12_n_0 ));
  MUXF7 \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(\spo[5]_INST_0_i_6_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_7_n_0 ),
        .I1(\spo[5]_INST_0_i_8_n_0 ),
        .I2(a[3]),
        .I3(\spo[9]_INST_0_i_7_n_0 ),
        .I4(a[5]),
        .I5(\spo[5]_INST_0_i_9_n_0 ),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_10_n_0 ),
        .I1(\spo[5]_INST_0_i_11_n_0 ),
        .I2(a[3]),
        .I3(\spo[10]_INST_0_i_9_n_0 ),
        .I4(a[5]),
        .I5(\spo[5]_INST_0_i_12_n_0 ),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA6FB0000BEA60000)) 
    \spo[5]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(\spo[6]_INST_0_i_3_n_0 ),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5E75D79D00000000)) 
    \spo[5]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(\spo[6]_INST_0_i_3_n_0 ),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \spo[5]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[2]),
        .O(\spo[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000040000000D000)) 
    \spo[5]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h007000000000000F)) 
    \spo[5]_INST_0_i_9 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[6]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[6]_INST_0_i_1_n_0 ),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h0500620008000000)) 
    \spo[6]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_4_n_0 ),
        .I1(\spo[6]_INST_0_i_5_n_0 ),
        .I2(a[3]),
        .I3(\spo[6]_INST_0_i_6_n_0 ),
        .I4(a[5]),
        .I5(\spo[6]_INST_0_i_7_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[6]_INST_0_i_3 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[7]),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \spo[6]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \spo[6]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[1]),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010002000)) 
    \spo[6]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[6]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[1]),
        .O(\spo[6]_INST_0_i_7_n_0 ));
  MUXF8 \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(\spo[7]_INST_0_i_2_n_0 ),
        .O(spo[7]),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_3_n_0 ),
        .I1(\spo[7]_INST_0_i_4_n_0 ),
        .O(\spo[7]_INST_0_i_1_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'h0000000020001000)) 
    \spo[7]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2001000100000000)) 
    \spo[7]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_11_n_0 ));
  MUXF7 \spo[7]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_5_n_0 ),
        .I1(\spo[7]_INST_0_i_6_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_3 
       (.I0(\spo[11]_INST_0_i_9_n_0 ),
        .I1(\spo[7]_INST_0_i_7_n_0 ),
        .I2(a[3]),
        .I3(\spo[7]_INST_0_i_8_n_0 ),
        .I4(a[5]),
        .I5(\spo[7]_INST_0_i_9_n_0 ),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_4 
       (.I0(\spo[7]_INST_0_i_10_n_0 ),
        .I1(\spo[6]_INST_0_i_5_n_0 ),
        .I2(a[3]),
        .I3(\spo[8]_INST_0_i_9_n_0 ),
        .I4(a[5]),
        .I5(\spo[7]_INST_0_i_11_n_0 ),
        .O(\spo[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h825900009A820000)) 
    \spo[7]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(\spo[6]_INST_0_i_3_n_0 ),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8600A00041006400)) 
    \spo[7]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000008001)) 
    \spo[7]_INST_0_i_7 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0C00000002000000)) 
    \spo[7]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \spo[7]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[1]),
        .O(\spo[7]_INST_0_i_9_n_0 ));
  MUXF8 \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(\spo[8]_INST_0_i_2_n_0 ),
        .O(spo[8]),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_3_n_0 ),
        .I1(\spo[8]_INST_0_i_4_n_0 ),
        .O(\spo[8]_INST_0_i_1_n_0 ),
        .S(a[0]));
  MUXF7 \spo[8]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_5_n_0 ),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ),
        .S(a[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_3 
       (.I0(\spo[8]_INST_0_i_7_n_0 ),
        .I1(\spo[8]_INST_0_i_8_n_0 ),
        .I2(a[3]),
        .I3(\spo[8]_INST_0_i_9_n_0 ),
        .I4(a[5]),
        .I5(\spo[11]_INST_0_i_10_n_0 ),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0084C04000000000)) 
    \spo[8]_INST_0_i_4 
       (.I0(a[1]),
        .I1(\spo[6]_INST_0_i_3_n_0 ),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[3]),
        .O(\spo[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010800040)) 
    \spo[8]_INST_0_i_5 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(\spo[6]_INST_0_i_3_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[3]),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8200800004002000)) 
    \spo[8]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \spo[8]_INST_0_i_7 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0A00000002000001)) 
    \spo[8]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1000200000000000)) 
    \spo[8]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[9]_INST_0_i_2_n_0 ),
        .I3(a[0]),
        .I4(\spo[9]_INST_0_i_3_n_0 ),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \spo[9]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(\spo[9]_INST_0_i_4_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00400080)) 
    \spo[9]_INST_0_i_10 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[4]),
        .O(\spo[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0800000200000000)) 
    \spo[9]_INST_0_i_11 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_2 
       (.I0(\spo[9]_INST_0_i_5_n_0 ),
        .I1(\spo[9]_INST_0_i_6_n_0 ),
        .I2(a[3]),
        .I3(\spo[9]_INST_0_i_7_n_0 ),
        .I4(a[5]),
        .I5(\spo[9]_INST_0_i_8_n_0 ),
        .O(\spo[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3000BBBB30008888)) 
    \spo[9]_INST_0_i_3 
       (.I0(\spo[9]_INST_0_i_9_n_0 ),
        .I1(a[3]),
        .I2(\spo[9]_INST_0_i_10_n_0 ),
        .I3(a[2]),
        .I4(a[5]),
        .I5(\spo[9]_INST_0_i_11_n_0 ),
        .O(\spo[9]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[9]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[4]),
        .O(\spo[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008080008)) 
    \spo[9]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0097000000000000)) 
    \spo[9]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[8]),
        .I5(a[7]),
        .O(\spo[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000D00000006000)) 
    \spo[9]_INST_0_i_7 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0200000100000000)) 
    \spo[9]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000C00001)) 
    \spo[9]_INST_0_i_9 
       (.I0(a[2]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_9_n_0 ));
endmodule
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
