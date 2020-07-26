// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Mar  8 01:39:01 2020
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
  wire \spo[0]_INST_0_i_10_n_0 ;
  wire \spo[0]_INST_0_i_11_n_0 ;
  wire \spo[0]_INST_0_i_12_n_0 ;
  wire \spo[0]_INST_0_i_13_n_0 ;
  wire \spo[0]_INST_0_i_14_n_0 ;
  wire \spo[0]_INST_0_i_15_n_0 ;
  wire \spo[0]_INST_0_i_16_n_0 ;
  wire \spo[0]_INST_0_i_17_n_0 ;
  wire \spo[0]_INST_0_i_18_n_0 ;
  wire \spo[0]_INST_0_i_19_n_0 ;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_20_n_0 ;
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
  wire \spo[10]_INST_0_i_13_n_0 ;
  wire \spo[10]_INST_0_i_14_n_0 ;
  wire \spo[10]_INST_0_i_15_n_0 ;
  wire \spo[10]_INST_0_i_16_n_0 ;
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
  wire \spo[11]_INST_0_i_13_n_0 ;
  wire \spo[11]_INST_0_i_14_n_0 ;
  wire \spo[11]_INST_0_i_15_n_0 ;
  wire \spo[11]_INST_0_i_16_n_0 ;
  wire \spo[11]_INST_0_i_17_n_0 ;
  wire \spo[11]_INST_0_i_18_n_0 ;
  wire \spo[11]_INST_0_i_19_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_20_n_0 ;
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
  wire \spo[1]_INST_0_i_13_n_0 ;
  wire \spo[1]_INST_0_i_14_n_0 ;
  wire \spo[1]_INST_0_i_15_n_0 ;
  wire \spo[1]_INST_0_i_16_n_0 ;
  wire \spo[1]_INST_0_i_17_n_0 ;
  wire \spo[1]_INST_0_i_18_n_0 ;
  wire \spo[1]_INST_0_i_19_n_0 ;
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
  wire \spo[2]_INST_0_i_14_n_0 ;
  wire \spo[2]_INST_0_i_15_n_0 ;
  wire \spo[2]_INST_0_i_16_n_0 ;
  wire \spo[2]_INST_0_i_17_n_0 ;
  wire \spo[2]_INST_0_i_18_n_0 ;
  wire \spo[2]_INST_0_i_19_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_20_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_8_n_0 ;
  wire \spo[2]_INST_0_i_9_n_0 ;
  wire \spo[3]_INST_0_i_10_n_0 ;
  wire \spo[3]_INST_0_i_11_n_0 ;
  wire \spo[3]_INST_0_i_12_n_0 ;
  wire \spo[3]_INST_0_i_13_n_0 ;
  wire \spo[3]_INST_0_i_14_n_0 ;
  wire \spo[3]_INST_0_i_15_n_0 ;
  wire \spo[3]_INST_0_i_16_n_0 ;
  wire \spo[3]_INST_0_i_17_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;
  wire \spo[4]_INST_0_i_10_n_0 ;
  wire \spo[4]_INST_0_i_11_n_0 ;
  wire \spo[4]_INST_0_i_12_n_0 ;
  wire \spo[4]_INST_0_i_13_n_0 ;
  wire \spo[4]_INST_0_i_14_n_0 ;
  wire \spo[4]_INST_0_i_15_n_0 ;
  wire \spo[4]_INST_0_i_16_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[4]_INST_0_i_8_n_0 ;
  wire \spo[4]_INST_0_i_9_n_0 ;
  wire \spo[5]_INST_0_i_10_n_0 ;
  wire \spo[5]_INST_0_i_11_n_0 ;
  wire \spo[5]_INST_0_i_12_n_0 ;
  wire \spo[5]_INST_0_i_13_n_0 ;
  wire \spo[5]_INST_0_i_14_n_0 ;
  wire \spo[5]_INST_0_i_15_n_0 ;
  wire \spo[5]_INST_0_i_16_n_0 ;
  wire \spo[5]_INST_0_i_17_n_0 ;
  wire \spo[5]_INST_0_i_18_n_0 ;
  wire \spo[5]_INST_0_i_19_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_20_n_0 ;
  wire \spo[5]_INST_0_i_21_n_0 ;
  wire \spo[5]_INST_0_i_22_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;
  wire \spo[6]_INST_0_i_10_n_0 ;
  wire \spo[6]_INST_0_i_11_n_0 ;
  wire \spo[6]_INST_0_i_12_n_0 ;
  wire \spo[6]_INST_0_i_13_n_0 ;
  wire \spo[6]_INST_0_i_14_n_0 ;
  wire \spo[6]_INST_0_i_15_n_0 ;
  wire \spo[6]_INST_0_i_16_n_0 ;
  wire \spo[6]_INST_0_i_17_n_0 ;
  wire \spo[6]_INST_0_i_18_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_7_n_0 ;
  wire \spo[6]_INST_0_i_8_n_0 ;
  wire \spo[6]_INST_0_i_9_n_0 ;
  wire \spo[7]_INST_0_i_10_n_0 ;
  wire \spo[7]_INST_0_i_11_n_0 ;
  wire \spo[7]_INST_0_i_12_n_0 ;
  wire \spo[7]_INST_0_i_13_n_0 ;
  wire \spo[7]_INST_0_i_14_n_0 ;
  wire \spo[7]_INST_0_i_15_n_0 ;
  wire \spo[7]_INST_0_i_16_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_7_n_0 ;
  wire \spo[7]_INST_0_i_8_n_0 ;
  wire \spo[7]_INST_0_i_9_n_0 ;
  wire \spo[8]_INST_0_i_10_n_0 ;
  wire \spo[8]_INST_0_i_11_n_0 ;
  wire \spo[8]_INST_0_i_12_n_0 ;
  wire \spo[8]_INST_0_i_13_n_0 ;
  wire \spo[8]_INST_0_i_14_n_0 ;
  wire \spo[8]_INST_0_i_15_n_0 ;
  wire \spo[8]_INST_0_i_16_n_0 ;
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
  wire \spo[9]_INST_0_i_12_n_0 ;
  wire \spo[9]_INST_0_i_13_n_0 ;
  wire \spo[9]_INST_0_i_14_n_0 ;
  wire \spo[9]_INST_0_i_15_n_0 ;
  wire \spo[9]_INST_0_i_16_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;
  wire \spo[9]_INST_0_i_5_n_0 ;
  wire \spo[9]_INST_0_i_6_n_0 ;
  wire \spo[9]_INST_0_i_7_n_0 ;
  wire \spo[9]_INST_0_i_8_n_0 ;
  wire \spo[9]_INST_0_i_9_n_0 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .I2(a[2]),
        .I3(\spo[0]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_4_n_0 ),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_1 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(\spo[0]_INST_0_i_6_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_7_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_8_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AD1E0000CAF7)) 
    \spo[0]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \spo[0]_INST_0_i_11 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[3]),
        .O(\spo[0]_INST_0_i_11_n_0 ));
  MUXF7 \spo[0]_INST_0_i_12 
       (.I0(\spo[0]_INST_0_i_17_n_0 ),
        .I1(\spo[0]_INST_0_i_18_n_0 ),
        .O(\spo[0]_INST_0_i_12_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_13 
       (.I0(\spo[0]_INST_0_i_19_n_0 ),
        .I1(\spo[0]_INST_0_i_20_n_0 ),
        .O(\spo[0]_INST_0_i_13_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0A07070808060602)) 
    \spo[0]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000D58A0000856F)) 
    \spo[0]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010004)) 
    \spo[0]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \spo[0]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A37B4D8E)) 
    \spo[0]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h009D002400AA0056)) 
    \spo[0]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_9_n_0 ),
        .I1(a[6]),
        .I2(\spo[0]_INST_0_i_10_n_0 ),
        .I3(a[8]),
        .I4(\spo[0]_INST_0_i_11_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A3FA4FF1)) 
    \spo[0]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_20_n_0 ));
  MUXF8 \spo[0]_INST_0_i_3 
       (.I0(\spo[0]_INST_0_i_12_n_0 ),
        .I1(\spo[0]_INST_0_i_13_n_0 ),
        .O(\spo[0]_INST_0_i_3_n_0 ),
        .S(a[6]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_14_n_0 ),
        .I1(a[6]),
        .I2(\spo[0]_INST_0_i_15_n_0 ),
        .I3(a[8]),
        .I4(\spo[0]_INST_0_i_16_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000778600005855)) 
    \spo[0]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000008DFE2391)) 
    \spo[0]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000019BF85A4)) 
    \spo[0]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \spo[0]_INST_0_i_8 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[5]),
        .O(\spo[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00AC00BA005F00F4)) 
    \spo[0]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_9_n_0 ));
  MUXF8 \spo[10]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(\spo[10]_INST_0_i_2_n_0 ),
        .O(spo[10]),
        .S(a[2]));
  MUXF7 \spo[10]_INST_0_i_1 
       (.I0(\spo[10]_INST_0_i_3_n_0 ),
        .I1(\spo[10]_INST_0_i_4_n_0 ),
        .O(\spo[10]_INST_0_i_1_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h000080000000F8C7)) 
    \spo[10]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00CC0010001100E2)) 
    \spo[10]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00002F0800004075)) 
    \spo[10]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0037008800880030)) 
    \spo[10]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000080400003205)) 
    \spo[10]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000046800001628)) 
    \spo[10]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h005E008000910026)) 
    \spo[10]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_16_n_0 ));
  MUXF7 \spo[10]_INST_0_i_2 
       (.I0(\spo[10]_INST_0_i_5_n_0 ),
        .I1(\spo[10]_INST_0_i_6_n_0 ),
        .O(\spo[10]_INST_0_i_2_n_0 ),
        .S(a[7]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[10]_INST_0_i_3 
       (.I0(\spo[10]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(\spo[10]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[11]_INST_0_i_16_n_0 ),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_4 
       (.I0(\spo[10]_INST_0_i_9_n_0 ),
        .I1(\spo[10]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[10]_INST_0_i_11_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_13_n_0 ),
        .O(\spo[10]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[10]_INST_0_i_5 
       (.I0(\spo[10]_INST_0_i_12_n_0 ),
        .I1(a[6]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[8]),
        .I4(\spo[0]_INST_0_i_11_n_0 ),
        .O(\spo[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_6 
       (.I0(\spo[10]_INST_0_i_14_n_0 ),
        .I1(\spo[10]_INST_0_i_15_n_0 ),
        .I2(a[6]),
        .I3(\spo[10]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_20_n_0 ),
        .O(\spo[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000080F200001007)) 
    \spo[10]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000032050000804A)) 
    \spo[10]_INST_0_i_8 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000006A400001E24)) 
    \spo[10]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_9_n_0 ));
  MUXF8 \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .O(spo[11]),
        .S(a[2]));
  MUXF7 \spo[11]_INST_0_i_1 
       (.I0(\spo[11]_INST_0_i_3_n_0 ),
        .I1(\spo[11]_INST_0_i_4_n_0 ),
        .O(\spo[11]_INST_0_i_1_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h01040401020A0008)) 
    \spo[11]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000C840000030C3)) 
    \spo[11]_INST_0_i_11 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0070004200150008)) 
    \spo[11]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \spo[11]_INST_0_i_13 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[3]),
        .O(\spo[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000091800005481)) 
    \spo[11]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0200222011300010)) 
    \spo[11]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \spo[11]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00009A0000000240)) 
    \spo[11]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000030C00000488)) 
    \spo[11]_INST_0_i_18 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0055000000A0001A)) 
    \spo[11]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_19_n_0 ));
  MUXF7 \spo[11]_INST_0_i_2 
       (.I0(\spo[11]_INST_0_i_5_n_0 ),
        .I1(\spo[11]_INST_0_i_6_n_0 ),
        .O(\spo[11]_INST_0_i_2_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h00000E0000000000)) 
    \spo[11]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[11]_INST_0_i_3 
       (.I0(\spo[11]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(\spo[11]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[11]_INST_0_i_9_n_0 ),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_4 
       (.I0(\spo[11]_INST_0_i_10_n_0 ),
        .I1(\spo[11]_INST_0_i_11_n_0 ),
        .I2(a[6]),
        .I3(\spo[11]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_13_n_0 ),
        .O(\spo[11]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[11]_INST_0_i_5 
       (.I0(\spo[11]_INST_0_i_14_n_0 ),
        .I1(a[6]),
        .I2(\spo[11]_INST_0_i_15_n_0 ),
        .I3(a[8]),
        .I4(\spo[11]_INST_0_i_16_n_0 ),
        .O(\spo[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_6 
       (.I0(\spo[11]_INST_0_i_17_n_0 ),
        .I1(\spo[11]_INST_0_i_18_n_0 ),
        .I2(a[6]),
        .I3(\spo[11]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_20_n_0 ),
        .O(\spo[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200001045)) 
    \spo[11]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0080000300C00004)) 
    \spo[11]_INST_0_i_8 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040002)) 
    \spo[11]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .I2(a[2]),
        .I3(\spo[1]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_4_n_0 ),
        .O(spo[1]));
  MUXF8 \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_5_n_0 ),
        .I1(\spo[1]_INST_0_i_6_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h001D00CA009E0070)) 
    \spo[1]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h06090A090A080802)) 
    \spo[1]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00A10090000800E6)) 
    \spo[1]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00008855000010CE)) 
    \spo[1]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000098B1850C)) 
    \spo[1]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000006)) 
    \spo[1]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0E00000000000000)) 
    \spo[1]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005B8B919)) 
    \spo[1]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0095004600100030)) 
    \spo[1]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000BB9800001085)) 
    \spo[1]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(\spo[1]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[1]_INST_0_i_9_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_10_n_0 ),
        .I1(\spo[1]_INST_0_i_11_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[1]_INST_0_i_4 
       (.I0(\spo[1]_INST_0_i_13_n_0 ),
        .I1(a[6]),
        .I2(\spo[1]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[1]_INST_0_i_15_n_0 ),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  MUXF7 \spo[1]_INST_0_i_5 
       (.I0(\spo[1]_INST_0_i_16_n_0 ),
        .I1(\spo[1]_INST_0_i_17_n_0 ),
        .O(\spo[1]_INST_0_i_5_n_0 ),
        .S(a[8]));
  MUXF7 \spo[1]_INST_0_i_6 
       (.I0(\spo[1]_INST_0_i_18_n_0 ),
        .I1(\spo[1]_INST_0_i_19_n_0 ),
        .O(\spo[1]_INST_0_i_6_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h00000000121FAD88)) 
    \spo[1]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000654A000028F1)) 
    \spo[1]_INST_0_i_8 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000050004)) 
    \spo[1]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .I2(a[2]),
        .I3(\spo[2]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_4_n_0 ),
        .O(spo[2]));
  MUXF8 \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_5_n_0 ),
        .I1(\spo[2]_INST_0_i_6_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h00000000FA599199)) 
    \spo[2]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000006D111724)) 
    \spo[2]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000236A0000E93D)) 
    \spo[2]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \spo[2]_INST_0_i_13 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00006E71000072AC)) 
    \spo[2]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000004DE27F25)) 
    \spo[2]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001010003)) 
    \spo[2]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000700000000000)) 
    \spo[2]_INST_0_i_17 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000814E00007FD9)) 
    \spo[2]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AE9DA903)) 
    \spo[2]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800B833B800)) 
    \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_9_n_0 ),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FC7D7E22)) 
    \spo[2]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_3 
       (.I0(\spo[2]_INST_0_i_10_n_0 ),
        .I1(\spo[2]_INST_0_i_11_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_13_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[2]_INST_0_i_4 
       (.I0(\spo[2]_INST_0_i_14_n_0 ),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_15_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_16_n_0 ),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  MUXF7 \spo[2]_INST_0_i_5 
       (.I0(\spo[2]_INST_0_i_17_n_0 ),
        .I1(\spo[2]_INST_0_i_18_n_0 ),
        .O(\spo[2]_INST_0_i_5_n_0 ),
        .S(a[8]));
  MUXF7 \spo[2]_INST_0_i_6 
       (.I0(\spo[2]_INST_0_i_19_n_0 ),
        .I1(\spo[2]_INST_0_i_20_n_0 ),
        .O(\spo[2]_INST_0_i_6_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h00B7001200AC00E6)) 
    \spo[2]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000C68600005CF7)) 
    \spo[2]_INST_0_i_8 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[2]_INST_0_i_9 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[5]),
        .O(\spo[2]_INST_0_i_9_n_0 ));
  MUXF8 \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .O(spo[3]),
        .S(a[2]));
  MUXF7 \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_3_n_0 ),
        .I1(\spo[3]_INST_0_i_4_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h000000005F177F88)) 
    \spo[3]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000068217BBD)) 
    \spo[3]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \spo[3]_INST_0_i_12 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[3]),
        .O(\spo[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000BA0600006C62)) 
    \spo[3]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000D0760000C6C7)) 
    \spo[3]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EE7D7E22)) 
    \spo[3]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BE11BD57)) 
    \spo[3]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000C50200007EF7)) 
    \spo[3]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_17_n_0 ));
  MUXF7 \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_5_n_0 ),
        .I1(\spo[3]_INST_0_i_6_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ),
        .S(a[7]));
  LUT4 #(
    .INIT(16'hB800)) 
    \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(\spo[3]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_4 
       (.I0(\spo[3]_INST_0_i_9_n_0 ),
        .I1(\spo[3]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_11_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_12_n_0 ),
        .O(\spo[3]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[3]_INST_0_i_5 
       (.I0(\spo[3]_INST_0_i_13_n_0 ),
        .I1(a[6]),
        .I2(\spo[3]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[11]_INST_0_i_16_n_0 ),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_6 
       (.I0(\spo[3]_INST_0_i_15_n_0 ),
        .I1(\spo[3]_INST_0_i_16_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_12_n_0 ),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00006E79000072BC)) 
    \spo[3]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EDE27F21)) 
    \spo[3]_INST_0_i_8 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F819B3B9)) 
    \spo[3]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_9_n_0 ));
  MUXF8 \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .O(spo[4]),
        .S(a[2]));
  MUXF7 \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_3_n_0 ),
        .I1(\spo[4]_INST_0_i_4_n_0 ),
        .O(\spo[4]_INST_0_i_1_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h00000000211110C0)) 
    \spo[4]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000124C0000A611)) 
    \spo[4]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000D4010000802A)) 
    \spo[4]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000000025578C)) 
    \spo[4]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000D4CB0000047A)) 
    \spo[4]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000006A11A901)) 
    \spo[4]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h080500040A000200)) 
    \spo[4]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_16_n_0 ));
  MUXF7 \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_5_n_0 ),
        .I1(\spo[4]_INST_0_i_6_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hB833B800B800B800)) 
    \spo[4]_INST_0_i_3 
       (.I0(\spo[4]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(\spo[4]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_9_n_0 ),
        .I5(a[3]),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[4]_INST_0_i_4 
       (.I0(\spo[4]_INST_0_i_9_n_0 ),
        .I1(\spo[4]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[4]_INST_0_i_11_n_0 ),
        .I4(a[8]),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \spo[4]_INST_0_i_5 
       (.I0(\spo[4]_INST_0_i_12_n_0 ),
        .I1(a[6]),
        .I2(\spo[4]_INST_0_i_13_n_0 ),
        .I3(a[8]),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[4]_INST_0_i_6 
       (.I0(\spo[4]_INST_0_i_14_n_0 ),
        .I1(\spo[4]_INST_0_i_15_n_0 ),
        .I2(a[6]),
        .I3(\spo[4]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000007C7B2200)) 
    \spo[4]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000847A000044B1)) 
    \spo[4]_INST_0_i_8 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000401501AB)) 
    \spo[4]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .I2(a[2]),
        .I3(\spo[5]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_4_n_0 ),
        .O(spo[5]));
  MUXF8 \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(\spo[5]_INST_0_i_6_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_10 
       (.I0(\spo[5]_INST_0_i_19_n_0 ),
        .I1(\spo[5]_INST_0_i_20_n_0 ),
        .O(\spo[5]_INST_0_i_10_n_0 ),
        .S(a[8]));
  MUXF7 \spo[5]_INST_0_i_11 
       (.I0(\spo[5]_INST_0_i_21_n_0 ),
        .I1(\spo[5]_INST_0_i_22_n_0 ),
        .O(\spo[5]_INST_0_i_11_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h00000000056B31AA)) 
    \spo[5]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[5]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0044005E002700B0)) 
    \spo[5]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010103)) 
    \spo[5]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[5]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000F80000000000)) 
    \spo[5]_INST_0_i_15 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[5]),
        .O(\spo[5]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8277549)) 
    \spo[5]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[5]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000DE8000003815)) 
    \spo[5]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000326B0000C45E)) 
    \spo[5]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0A00080000000000)) 
    \spo[5]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(\spo[5]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[5]_INST_0_i_9_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BA33C0A8)) 
    \spo[5]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[5]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000075895B24)) 
    \spo[5]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[5]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00007E0C00009071)) 
    \spo[5]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_22_n_0 ));
  MUXF8 \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_10_n_0 ),
        .I1(\spo[5]_INST_0_i_11_n_0 ),
        .O(\spo[5]_INST_0_i_3_n_0 ),
        .S(a[6]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_12_n_0 ),
        .I1(a[6]),
        .I2(\spo[5]_INST_0_i_13_n_0 ),
        .I3(a[8]),
        .I4(\spo[5]_INST_0_i_14_n_0 ),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  MUXF7 \spo[5]_INST_0_i_5 
       (.I0(\spo[5]_INST_0_i_15_n_0 ),
        .I1(\spo[5]_INST_0_i_16_n_0 ),
        .O(\spo[5]_INST_0_i_5_n_0 ),
        .S(a[8]));
  MUXF7 \spo[5]_INST_0_i_6 
       (.I0(\spo[5]_INST_0_i_17_n_0 ),
        .I1(\spo[5]_INST_0_i_18_n_0 ),
        .O(\spo[5]_INST_0_i_6_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0000D28B0000AC5C)) 
    \spo[5]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00E8003000730046)) 
    \spo[5]_INST_0_i_8 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[5]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[3]),
        .O(\spo[5]_INST_0_i_9_n_0 ));
  MUXF8 \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[6]_INST_0_i_2_n_0 ),
        .O(spo[6]),
        .S(a[2]));
  MUXF7 \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_3_n_0 ),
        .I1(\spo[6]_INST_0_i_4_n_0 ),
        .O(\spo[6]_INST_0_i_1_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0000024000001420)) 
    \spo[6]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000408400002122)) 
    \spo[6]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000002D0040)) 
    \spo[6]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0010003800C10014)) 
    \spo[6]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[6]_INST_0_i_14 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[3]),
        .O(\spo[6]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000088430000B408)) 
    \spo[6]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000084200003421)) 
    \spo[6]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0042008400000003)) 
    \spo[6]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \spo[6]_INST_0_i_18 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[5]),
        .O(\spo[6]_INST_0_i_18_n_0 ));
  MUXF7 \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_5_n_0 ),
        .I1(\spo[6]_INST_0_i_6_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hB800B800B833B800)) 
    \spo[6]_INST_0_i_3 
       (.I0(\spo[6]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(\spo[6]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_9_n_0 ),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_4 
       (.I0(\spo[6]_INST_0_i_9_n_0 ),
        .I1(\spo[6]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_11_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_13_n_0 ),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[6]_INST_0_i_5 
       (.I0(\spo[6]_INST_0_i_12_n_0 ),
        .I1(a[6]),
        .I2(\spo[6]_INST_0_i_13_n_0 ),
        .I3(a[8]),
        .I4(\spo[6]_INST_0_i_14_n_0 ),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_6 
       (.I0(\spo[6]_INST_0_i_15_n_0 ),
        .I1(\spo[6]_INST_0_i_16_n_0 ),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_18_n_0 ),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0080002C00430050)) 
    \spo[6]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0030008300480000)) 
    \spo[6]_INST_0_i_8 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0200003401)) 
    \spo[6]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_9_n_0 ));
  MUXF8 \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(\spo[7]_INST_0_i_2_n_0 ),
        .O(spo[7]),
        .S(a[2]));
  MUXF7 \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_3_n_0 ),
        .I1(\spo[7]_INST_0_i_4_n_0 ),
        .O(\spo[7]_INST_0_i_1_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0000384200000CA4)) 
    \spo[7]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0E0C000000010508)) 
    \spo[7]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00420081002400E0)) 
    \spo[7]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0070003000C10042)) 
    \spo[7]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000090290000E01C)) 
    \spo[7]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0901000300040004)) 
    \spo[7]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000006801310B)) 
    \spo[7]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_16_n_0 ));
  MUXF7 \spo[7]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_5_n_0 ),
        .I1(\spo[7]_INST_0_i_6_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ),
        .S(a[7]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[7]_INST_0_i_3 
       (.I0(\spo[7]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(\spo[7]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[1]_INST_0_i_15_n_0 ),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[7]_INST_0_i_4 
       (.I0(\spo[7]_INST_0_i_9_n_0 ),
        .I1(\spo[7]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[7]_INST_0_i_11_n_0 ),
        .I4(a[8]),
        .O(\spo[7]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[7]_INST_0_i_5 
       (.I0(\spo[7]_INST_0_i_12_n_0 ),
        .I1(a[6]),
        .I2(\spo[7]_INST_0_i_13_n_0 ),
        .I3(a[8]),
        .I4(\spo[1]_INST_0_i_9_n_0 ),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[7]_INST_0_i_6 
       (.I0(\spo[7]_INST_0_i_14_n_0 ),
        .I1(\spo[7]_INST_0_i_15_n_0 ),
        .I2(a[6]),
        .I3(\spo[7]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0002002000102112)) 
    \spo[7]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0060001C00010090)) 
    \spo[7]_INST_0_i_8 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h010B00070C000800)) 
    \spo[7]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_9_n_0 ));
  MUXF8 \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(\spo[8]_INST_0_i_2_n_0 ),
        .O(spo[8]),
        .S(a[2]));
  MUXF7 \spo[8]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_3_n_0 ),
        .I1(\spo[8]_INST_0_i_4_n_0 ),
        .O(\spo[8]_INST_0_i_1_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0020000400200082)) 
    \spo[8]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000005C00040062)) 
    \spo[8]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000041B3800)) 
    \spo[8]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[8]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000409000000B8)) 
    \spo[8]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0A00000804040401)) 
    \spo[8]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400001022)) 
    \spo[8]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000A0020000400C0)) 
    \spo[8]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_16_n_0 ));
  MUXF7 \spo[8]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_5_n_0 ),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ),
        .S(a[7]));
  LUT4 #(
    .INIT(16'hB800)) 
    \spo[8]_INST_0_i_3 
       (.I0(\spo[8]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(\spo[8]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[8]_INST_0_i_4 
       (.I0(\spo[8]_INST_0_i_9_n_0 ),
        .I1(\spo[8]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[8]_INST_0_i_11_n_0 ),
        .I4(a[8]),
        .O(\spo[8]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \spo[8]_INST_0_i_5 
       (.I0(\spo[8]_INST_0_i_12_n_0 ),
        .I1(a[6]),
        .I2(\spo[8]_INST_0_i_13_n_0 ),
        .I3(a[8]),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[8]_INST_0_i_6 
       (.I0(\spo[8]_INST_0_i_14_n_0 ),
        .I1(\spo[8]_INST_0_i_15_n_0 ),
        .I2(a[6]),
        .I3(\spo[8]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .O(\spo[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000980400000044)) 
    \spo[8]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000098010000900C)) 
    \spo[8]_INST_0_i_8 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000C200005C22)) 
    \spo[8]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_9_n_0 ));
  MUXF8 \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(\spo[9]_INST_0_i_2_n_0 ),
        .O(spo[9]),
        .S(a[2]));
  MUXF7 \spo[9]_INST_0_i_1 
       (.I0(\spo[9]_INST_0_i_3_n_0 ),
        .I1(\spo[9]_INST_0_i_4_n_0 ),
        .O(\spo[9]_INST_0_i_1_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h00002324000002C2)) 
    \spo[9]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000005A000024D7)) 
    \spo[9]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0018000A00670002)) 
    \spo[9]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000054E00000B51)) 
    \spo[9]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000D1C000009A11)) 
    \spo[9]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000021815720)) 
    \spo[9]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[9]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000C100220080)) 
    \spo[9]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_16_n_0 ));
  MUXF7 \spo[9]_INST_0_i_2 
       (.I0(\spo[9]_INST_0_i_5_n_0 ),
        .I1(\spo[9]_INST_0_i_6_n_0 ),
        .O(\spo[9]_INST_0_i_2_n_0 ),
        .S(a[7]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[9]_INST_0_i_3 
       (.I0(\spo[9]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(\spo[9]_INST_0_i_8_n_0 ),
        .I3(a[8]),
        .I4(\spo[11]_INST_0_i_9_n_0 ),
        .O(\spo[9]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[9]_INST_0_i_4 
       (.I0(\spo[9]_INST_0_i_9_n_0 ),
        .I1(\spo[9]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[9]_INST_0_i_11_n_0 ),
        .I4(a[8]),
        .O(\spo[9]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[9]_INST_0_i_5 
       (.I0(\spo[9]_INST_0_i_12_n_0 ),
        .I1(a[6]),
        .I2(\spo[9]_INST_0_i_13_n_0 ),
        .I3(a[8]),
        .I4(\spo[11]_INST_0_i_16_n_0 ),
        .O(\spo[9]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[9]_INST_0_i_6 
       (.I0(\spo[9]_INST_0_i_14_n_0 ),
        .I1(\spo[9]_INST_0_i_15_n_0 ),
        .I2(a[6]),
        .I3(\spo[9]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .O(\spo[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000E1040000A040)) 
    \spo[9]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000091C80000A109)) 
    \spo[9]_INST_0_i_8 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000850D93A8)) 
    \spo[9]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[9]),
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
