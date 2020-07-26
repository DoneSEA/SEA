// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Mar  8 18:27:57 2020
// Host        : DESKTOP-2RGUD32 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/hp/Desktop/vivado/project_5/project_5.sim/sim_1/synth/timing/xsim/cputb_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (RA,
    mclr,
    osc1);
  inout [3:0]RA;
  input mclr;
  input osc1;

  wire [3:0]RA;
  wire [11:0]dist_mem_gen_0_spo;
  wire mclr;
  wire osc1;
  wire [9:0]pic16c56_0_romaddr;
  wire NLW_pic16c56_0_c3_UNCONNECTED;
  wire NLW_pic16c56_0_osc2_UNCONNECTED;
  wire [7:0]NLW_pic16c56_0_RB_UNCONNECTED;

  (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.2" *) 
  design_1_dist_mem_gen_0_0 dist_mem_gen_0
       (.a(pic16c56_0_romaddr),
        .spo(dist_mem_gen_0_spo));
  (* x_core_info = "pic16c56,Vivado 2018.2" *) 
  design_1_pic16c56_0_0 pic16c56_0
       (.RA(RA),
        .RB(NLW_pic16c56_0_RB_UNCONNECTED[7:0]),
        .c3(NLW_pic16c56_0_c3_UNCONNECTED),
        .mclr(mclr),
        .osc1(osc1),
        .osc2(NLW_pic16c56_0_osc2_UNCONNECTED),
        .romaddr(pic16c56_0_romaddr),
        .romdata(dist_mem_gen_0_spo));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_dist_mem_gen_0_0,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.2" *) 
module design_1_dist_mem_gen_0_0
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
  design_1_dist_mem_gen_0_0_dist_mem_gen_v8_0_12 U0
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

(* CHECK_LICENSE_TYPE = "design_1_pic16c56_0_0,pic16c56,{}" *) (* IP_DEFINITION_SOURCE = "package_project" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "pic16c56,Vivado 2018.2" *) 
module design_1_pic16c56_0_0
   (mclr,
    osc1,
    romdata,
    osc2,
    romaddr,
    RA,
    RB,
    c3);
  input mclr;
  input osc1;
  input [11:0]romdata;
  output osc2;
  output [9:0]romaddr;
  inout [3:0]RA;
  inout [7:0]RB;
  output c3;

  wire [3:0]RA;
  wire [7:0]RB;
  wire c3;
  wire mclr;
  wire osc1;
  wire osc2;
  wire [9:0]romaddr;
  wire [11:0]romdata;

  design_1_pic16c56_0_0_pic16c56 inst
       (.RA(RA),
        .RB(RB),
        .c3(c3),
        .mclr(mclr),
        .osc1(osc1),
        .osc2(osc2),
        .\romaddr[0] (romaddr[0]),
        .\romaddr[1] (romaddr[1]),
        .\romaddr[2] (romaddr[2]),
        .\romaddr[3] (romaddr[3]),
        .\romaddr[4] (romaddr[4]),
        .\romaddr[5] (romaddr[5]),
        .\romaddr[6] (romaddr[6]),
        .\romaddr[7] (romaddr[7]),
        .\romaddr[8] (romaddr[8]),
        .\romaddr[9] (romaddr[9]),
        .romdata(romdata));
endmodule

(* ORIG_REF_NAME = "IO_reg" *) 
module design_1_pic16c56_0_0_IO_reg
   (p_0_out,
    \b_reg[0] ,
    \b_reg[1] ,
    \b_reg[2] ,
    \b_reg[3] ,
    \b_reg[4] ,
    \b_reg[5] ,
    \b_reg[6] ,
    \b_reg[7] ,
    \trisa_reg[3] ,
    \trisb_reg[7] );
  output [3:0]p_0_out;
  output \b_reg[0] ;
  output \b_reg[1] ;
  output \b_reg[2] ;
  output \b_reg[3] ;
  output \b_reg[4] ;
  output \b_reg[5] ;
  output \b_reg[6] ;
  output \b_reg[7] ;
  input [3:0]\trisa_reg[3] ;
  input [7:0]\trisb_reg[7] ;

  wire \b_reg[0] ;
  wire \b_reg[1] ;
  wire \b_reg[2] ;
  wire \b_reg[3] ;
  wire \b_reg[4] ;
  wire \b_reg[5] ;
  wire \b_reg[6] ;
  wire \b_reg[7] ;
  wire [3:0]p_0_out;
  wire [3:0]\trisa_reg[3] ;
  wire [7:0]\trisb_reg[7] ;

  LUT1 #(
    .INIT(2'h1)) 
    \RA[0]_INST_0_i_1 
       (.I0(\trisa_reg[3] [0]),
        .O(p_0_out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \RA[1]_INST_0_i_1 
       (.I0(\trisa_reg[3] [1]),
        .O(p_0_out[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \RA[2]_INST_0_i_1 
       (.I0(\trisa_reg[3] [2]),
        .O(p_0_out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \RA[3]_INST_0_i_1 
       (.I0(\trisa_reg[3] [3]),
        .O(p_0_out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \RB[0]_INST_0_i_1 
       (.I0(\trisb_reg[7] [0]),
        .O(\b_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \RB[1]_INST_0_i_1 
       (.I0(\trisb_reg[7] [1]),
        .O(\b_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \RB[2]_INST_0_i_1 
       (.I0(\trisb_reg[7] [2]),
        .O(\b_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \RB[3]_INST_0_i_1 
       (.I0(\trisb_reg[7] [3]),
        .O(\b_reg[3] ));
  LUT1 #(
    .INIT(2'h1)) 
    \RB[4]_INST_0_i_1 
       (.I0(\trisb_reg[7] [4]),
        .O(\b_reg[4] ));
  LUT1 #(
    .INIT(2'h1)) 
    \RB[5]_INST_0_i_1 
       (.I0(\trisb_reg[7] [5]),
        .O(\b_reg[5] ));
  LUT1 #(
    .INIT(2'h1)) 
    \RB[6]_INST_0_i_1 
       (.I0(\trisb_reg[7] [6]),
        .O(\b_reg[6] ));
  LUT1 #(
    .INIT(2'h1)) 
    \RB[7]_INST_0_i_1 
       (.I0(\trisb_reg[7] [7]),
        .O(\b_reg[7] ));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module design_1_pic16c56_0_0_alu
   (D,
    skip_reg_C_0,
    z,
    dc,
    c,
    \status_reg[2] ,
    \status_reg[0] ,
    andwf_reg,
    retlw_reg,
    c2,
    mclr,
    retlw_reg_0,
    retlw_reg_1,
    retlw_reg_2,
    retlw_reg_3,
    retlw_reg_4,
    retlw_reg_5,
    retlw_reg_6,
    skip_reg_C_1,
    z_reg_0,
    dc_reg_0,
    c_reg_0,
    bcf_reg,
    xorlw_reg,
    \status_reg[2]_0 ,
    addwf_reg,
    status_c);
  output [7:0]D;
  output skip_reg_C_0;
  output z;
  output dc;
  output c;
  output \status_reg[2] ;
  output \status_reg[0] ;
  input andwf_reg;
  input retlw_reg;
  input c2;
  input mclr;
  input retlw_reg_0;
  input retlw_reg_1;
  input retlw_reg_2;
  input retlw_reg_3;
  input retlw_reg_4;
  input retlw_reg_5;
  input retlw_reg_6;
  input skip_reg_C_1;
  input z_reg_0;
  input dc_reg_0;
  input c_reg_0;
  input bcf_reg;
  input xorlw_reg;
  input \status_reg[2]_0 ;
  input addwf_reg;
  input status_c;

  wire [7:0]D;
  wire addwf_reg;
  wire andwf_reg;
  wire bcf_reg;
  wire c;
  wire c2;
  wire c_reg_0;
  wire dc;
  wire dc_reg_0;
  wire mclr;
  wire retlw_reg;
  wire retlw_reg_0;
  wire retlw_reg_1;
  wire retlw_reg_2;
  wire retlw_reg_3;
  wire retlw_reg_4;
  wire retlw_reg_5;
  wire retlw_reg_6;
  wire skip_reg_C_0;
  wire skip_reg_C_1;
  wire status_c;
  wire \status_reg[0] ;
  wire \status_reg[2] ;
  wire \status_reg[2]_0 ;
  wire xorlw_reg;
  wire z;
  wire z_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    c_reg
       (.C(c2),
        .CE(1'b1),
        .CLR(mclr),
        .D(c_reg_0),
        .Q(c));
  FDCE #(
    .INIT(1'b0)) 
    dc_reg
       (.C(c2),
        .CE(1'b1),
        .CLR(mclr),
        .D(dc_reg_0),
        .Q(dc));
  FDCE #(
    .INIT(1'b0)) 
    skip_reg_C
       (.C(c2),
        .CE(1'b1),
        .CLR(mclr),
        .D(skip_reg_C_1),
        .Q(skip_reg_C_0));
  LUT5 #(
    .INIT(32'hAFCCA0CC)) 
    \status[0]_i_1 
       (.I0(D[0]),
        .I1(c),
        .I2(bcf_reg),
        .I3(addwf_reg),
        .I4(status_c),
        .O(\status_reg[0] ));
  LUT5 #(
    .INIT(32'hAFCCA0CC)) 
    \status[2]_i_1 
       (.I0(D[2]),
        .I1(z),
        .I2(bcf_reg),
        .I3(xorlw_reg),
        .I4(\status_reg[2]_0 ),
        .O(\status_reg[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \yi_reg[0]_C 
       (.C(c2),
        .CE(andwf_reg),
        .CLR(mclr),
        .D(retlw_reg_6),
        .Q(D[0]));
  FDCE #(
    .INIT(1'b0)) 
    \yi_reg[1]_C 
       (.C(c2),
        .CE(andwf_reg),
        .CLR(mclr),
        .D(retlw_reg_5),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \yi_reg[2]_C 
       (.C(c2),
        .CE(andwf_reg),
        .CLR(mclr),
        .D(retlw_reg_4),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \yi_reg[3]_C 
       (.C(c2),
        .CE(andwf_reg),
        .CLR(mclr),
        .D(retlw_reg_3),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \yi_reg[4]_C 
       (.C(c2),
        .CE(andwf_reg),
        .CLR(mclr),
        .D(retlw_reg_2),
        .Q(D[4]));
  FDCE #(
    .INIT(1'b0)) 
    \yi_reg[5]_C 
       (.C(c2),
        .CE(andwf_reg),
        .CLR(mclr),
        .D(retlw_reg_1),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \yi_reg[6]_C 
       (.C(c2),
        .CE(andwf_reg),
        .CLR(mclr),
        .D(retlw_reg_0),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \yi_reg[7]_C 
       (.C(c2),
        .CE(andwf_reg),
        .CLR(mclr),
        .D(retlw_reg),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    z_reg
       (.C(c2),
        .CE(1'b1),
        .CLR(mclr),
        .D(z_reg_0),
        .Q(z));
endmodule

(* ORIG_REF_NAME = "decoder" *) 
module design_1_pic16c56_0_0_decoder
   (\status_reg[7] ,
    \b_reg[7] ,
    \yi_reg[1]_C ,
    incf,
    movf,
    comf,
    \yi_reg[4]_C ,
    decfsz,
    rlf,
    rrf,
    \yi_reg[2]_C ,
    option,
    incfsz,
    swapf,
    \yi_reg[1]_C_0 ,
    \yi_reg[0]_C ,
    \status_reg[2] ,
    xorlw,
    andlw,
    iorlw,
    \pc_reg[2]_P ,
    retlw,
    call,
    z_reg,
    d,
    \stacklevel_reg[1] ,
    \stacklevel_reg[1]_0 ,
    \stacklevel_reg[0] ,
    \status_reg[1] ,
    addwf,
    subwf,
    \yi_reg[7]_C ,
    xorwf,
    iorwf,
    z_reg_0,
    andwf,
    \yi_reg[6]_C ,
    \yi_reg[5]_C ,
    \yi_reg[4]_C_0 ,
    \yi_reg[3]_C ,
    \yi_reg[2]_C_0 ,
    \yi_reg[1]_C_1 ,
    decf,
    \yi_reg[0]_C_0 ,
    movlw,
    tris,
    \status_reg[0] ,
    \b_reg[7]_0 ,
    E,
    \rtccount_reg[7] ,
    \RB_out_reg[7] ,
    \RA_out_reg[3] ,
    \frs_reg_reg[7] ,
    \w_reg[7] ,
    \pc_reg[0]_P ,
    \pc_reg[1]_P ,
    \pc_reg[2]_P_0 ,
    \pc_reg[3]_P ,
    \pc_reg[6]_P ,
    \pc_reg[7]_P ,
    \pc_reg[0]_P_0 ,
    \yi_reg[0]_C_1 ,
    \pc_reg[6]_P_0 ,
    goto,
    \pc_reg[5]_P ,
    \pc_reg[9]_P ,
    \yi_reg[4]_C_1 ,
    \yi_reg[2]_C_1 ,
    \status_reg[2]_0 ,
    \yi_reg[2]_C_2 ,
    \trisb_reg[7] ,
    \pc_reg[7]_P_0 ,
    \pc_reg[6]_P_1 ,
    \pc_reg[5]_P_0 ,
    \pc_reg[4]_P ,
    \pc_reg[3]_P_0 ,
    \pc_reg[2]_P_1 ,
    \yi_reg[1]_C_2 ,
    skip_reg_C,
    c_reg,
    longk,
    \status_reg[0]_0 ,
    \w_reg[7]_0 ,
    \w_reg[7]_1 ,
    mclr,
    Q,
    \w_reg[7]_2 ,
    \stacklevel_reg[0]_0 ,
    \stacklevel_reg[1]_1 ,
    \b_reg[6] ,
    RB,
    \frs_reg_reg[7]_0 ,
    \rtccount_reg[6] ,
    RA,
    \status_reg[1]_0 ,
    \status_reg[0]_1 ,
    \status_reg[3] ,
    D,
    dc,
    \status_reg[1]_1 ,
    O,
    decf_reg_0,
    \w_reg[5] ,
    \w_reg[1] ,
    \w_reg[6] ,
    decf_reg_1,
    \w_reg[5]_0 ,
    \w_reg[5]_1 ,
    \b_reg[3] ,
    \w_reg[4] ,
    \w_reg[4]_0 ,
    addwf_reg_0,
    andwf_reg_0,
    \w_reg[3] ,
    decfsz_reg_0,
    \w_reg[2] ,
    \w_reg[2]_0 ,
    \b_reg[2] ,
    decf_reg_2,
    addwf_reg_1,
    \b_reg[0] ,
    \w_reg[1]_0 ,
    iorwf_reg_0,
    \w_reg[0] ,
    \w_reg[0]_0 ,
    \pc_reg[4]_P_0 ,
    \status_reg[4] ,
    \pc_reg[7]_P_1 ,
    call_reg_0,
    call_reg_1,
    retlw_reg_0,
    \stack1_reg[2] ,
    \stack1_reg[3] ,
    \stack1_reg[6] ,
    \stack1_reg[7] ,
    \pc_reg[7]_P_2 ,
    \pc_reg[6]_P_2 ,
    \pc_reg[0]_P_1 ,
    \pc_reg[4]_P_1 ,
    \pc_reg[3]_P_1 ,
    \pc_reg[1]_P_0 ,
    \pc_reg[1]_P_1 ,
    \pc_reg[9]_P_0 ,
    \status_reg[5] ,
    \pc_reg[9]_P_1 ,
    skip_reg_C_0,
    \b_reg[7]_1 ,
    \b_reg[4] ,
    \b_reg[6]_0 ,
    \b_reg[5] ,
    \b_reg[4]_0 ,
    \w_reg[3]_0 ,
    \b_reg[4]_1 ,
    status_c,
    \b_reg[3]_0 ,
    \b_reg[7]_2 ,
    \b_reg[4]_2 ,
    \b_reg[4]_3 ,
    \b_reg[5]_0 ,
    \b_reg[5]_1 ,
    \b_reg[7]_3 ,
    \b_reg[7]_4 ,
    \status_reg[2]_1 ,
    \pc_reg[5]_P_1 ,
    \status_reg[6] ,
    \k_reg[7]_0 ,
    \b_reg[2]_0 ,
    \b_reg[3]_1 ,
    \b_reg[6]_1 ,
    c,
    rrf_reg_0,
    romdata,
    CLK);
  output \status_reg[7] ;
  output [5:0]\b_reg[7] ;
  output \yi_reg[1]_C ;
  output incf;
  output movf;
  output comf;
  output \yi_reg[4]_C ;
  output decfsz;
  output rlf;
  output rrf;
  output \yi_reg[2]_C ;
  output option;
  output incfsz;
  output swapf;
  output \yi_reg[1]_C_0 ;
  output \yi_reg[0]_C ;
  output \status_reg[2] ;
  output xorlw;
  output andlw;
  output iorlw;
  output \pc_reg[2]_P ;
  output retlw;
  output call;
  output z_reg;
  output d;
  output \stacklevel_reg[1] ;
  output \stacklevel_reg[1]_0 ;
  output \stacklevel_reg[0] ;
  output \status_reg[1] ;
  output addwf;
  output subwf;
  output \yi_reg[7]_C ;
  output xorwf;
  output iorwf;
  output z_reg_0;
  output andwf;
  output \yi_reg[6]_C ;
  output \yi_reg[5]_C ;
  output \yi_reg[4]_C_0 ;
  output \yi_reg[3]_C ;
  output \yi_reg[2]_C_0 ;
  output \yi_reg[1]_C_1 ;
  output decf;
  output \yi_reg[0]_C_0 ;
  output movlw;
  output tris;
  output \status_reg[0] ;
  output [7:0]\b_reg[7]_0 ;
  output [0:0]E;
  output [0:0]\rtccount_reg[7] ;
  output [0:0]\RB_out_reg[7] ;
  output [0:0]\RA_out_reg[3] ;
  output [0:0]\frs_reg_reg[7] ;
  output [0:0]\w_reg[7] ;
  output \pc_reg[0]_P ;
  output \pc_reg[1]_P ;
  output \pc_reg[2]_P_0 ;
  output \pc_reg[3]_P ;
  output \pc_reg[6]_P ;
  output \pc_reg[7]_P ;
  output \pc_reg[0]_P_0 ;
  output \yi_reg[0]_C_1 ;
  output \pc_reg[6]_P_0 ;
  output goto;
  output \pc_reg[5]_P ;
  output \pc_reg[9]_P ;
  output \yi_reg[4]_C_1 ;
  output \yi_reg[2]_C_1 ;
  output \status_reg[2]_0 ;
  output \yi_reg[2]_C_2 ;
  output [0:0]\trisb_reg[7] ;
  output \pc_reg[7]_P_0 ;
  output \pc_reg[6]_P_1 ;
  output \pc_reg[5]_P_0 ;
  output \pc_reg[4]_P ;
  output \pc_reg[3]_P_0 ;
  output \pc_reg[2]_P_1 ;
  output \yi_reg[1]_C_2 ;
  output skip_reg_C;
  output c_reg;
  output [0:0]longk;
  input \status_reg[0]_0 ;
  input \w_reg[7]_0 ;
  input \w_reg[7]_1 ;
  input mclr;
  input [7:0]Q;
  input [6:0]\w_reg[7]_2 ;
  input \stacklevel_reg[0]_0 ;
  input \stacklevel_reg[1]_1 ;
  input \b_reg[6] ;
  input [7:0]RB;
  input [7:0]\frs_reg_reg[7]_0 ;
  input [2:0]\rtccount_reg[6] ;
  input [3:0]RA;
  input \status_reg[1]_0 ;
  input \status_reg[0]_1 ;
  input \status_reg[3] ;
  input [5:0]D;
  input dc;
  input \status_reg[1]_1 ;
  input [3:0]O;
  input decf_reg_0;
  input \w_reg[5] ;
  input \w_reg[1] ;
  input \w_reg[6] ;
  input decf_reg_1;
  input \w_reg[5]_0 ;
  input \w_reg[5]_1 ;
  input \b_reg[3] ;
  input \w_reg[4] ;
  input \w_reg[4]_0 ;
  input addwf_reg_0;
  input andwf_reg_0;
  input \w_reg[3] ;
  input decfsz_reg_0;
  input \w_reg[2] ;
  input \w_reg[2]_0 ;
  input \b_reg[2] ;
  input decf_reg_2;
  input addwf_reg_1;
  input \b_reg[0] ;
  input \w_reg[1]_0 ;
  input iorwf_reg_0;
  input \w_reg[0] ;
  input \w_reg[0]_0 ;
  input \pc_reg[4]_P_0 ;
  input \status_reg[4] ;
  input \pc_reg[7]_P_1 ;
  input call_reg_0;
  input call_reg_1;
  input retlw_reg_0;
  input \stack1_reg[2] ;
  input \stack1_reg[3] ;
  input \stack1_reg[6] ;
  input \stack1_reg[7] ;
  input \pc_reg[7]_P_2 ;
  input \pc_reg[6]_P_2 ;
  input \pc_reg[0]_P_1 ;
  input \pc_reg[4]_P_1 ;
  input \pc_reg[3]_P_1 ;
  input \pc_reg[1]_P_0 ;
  input \pc_reg[1]_P_1 ;
  input \pc_reg[9]_P_0 ;
  input \status_reg[5] ;
  input \pc_reg[9]_P_1 ;
  input skip_reg_C_0;
  input \b_reg[7]_1 ;
  input \b_reg[4] ;
  input \b_reg[6]_0 ;
  input \b_reg[5] ;
  input \b_reg[4]_0 ;
  input \w_reg[3]_0 ;
  input \b_reg[4]_1 ;
  input status_c;
  input [2:0]\b_reg[3]_0 ;
  input [2:0]\b_reg[7]_2 ;
  input \b_reg[4]_2 ;
  input \b_reg[4]_3 ;
  input \b_reg[5]_0 ;
  input \b_reg[5]_1 ;
  input \b_reg[7]_3 ;
  input \b_reg[7]_4 ;
  input \status_reg[2]_1 ;
  input \pc_reg[5]_P_1 ;
  input \status_reg[6] ;
  input \k_reg[7]_0 ;
  input \b_reg[2]_0 ;
  input \b_reg[3]_1 ;
  input \b_reg[6]_1 ;
  input c;
  input rrf_reg_0;
  input [11:0]romdata;
  input CLK;

  wire CLK;
  wire [5:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]RA;
  wire [0:0]\RA_out_reg[3] ;
  wire [7:0]RB;
  wire [0:0]\RB_out_reg[7] ;
  wire addwf;
  wire addwf_i_1_n_0;
  wire addwf_reg_0;
  wire addwf_reg_1;
  wire andlw;
  wire andlw_i_1_n_0;
  wire andwf;
  wire andwf_i_1_n_0;
  wire andwf_reg_0;
  wire \b[0]_i_2_n_0 ;
  wire \b[0]_i_3_n_0 ;
  wire \b[1]_i_2_n_0 ;
  wire \b[1]_i_3_n_0 ;
  wire \b[2]_i_3_n_0 ;
  wire \b[3]_i_2_n_0 ;
  wire \b[3]_i_3_n_0 ;
  wire \b[4]_i_2_n_0 ;
  wire \b[4]_i_3_n_0 ;
  wire \b[4]_i_4_n_0 ;
  wire \b[5]_i_2_n_0 ;
  wire \b[5]_i_3_n_0 ;
  wire \b[6]_i_2_n_0 ;
  wire \b[6]_i_3_n_0 ;
  wire \b[7]_i_2_n_0 ;
  wire \b[7]_i_4_n_0 ;
  wire \b_reg[0] ;
  wire \b_reg[2] ;
  wire \b_reg[2]_0 ;
  wire \b_reg[3] ;
  wire [2:0]\b_reg[3]_0 ;
  wire \b_reg[3]_1 ;
  wire \b_reg[4] ;
  wire \b_reg[4]_0 ;
  wire \b_reg[4]_1 ;
  wire \b_reg[4]_2 ;
  wire \b_reg[4]_3 ;
  wire \b_reg[5] ;
  wire \b_reg[5]_0 ;
  wire \b_reg[5]_1 ;
  wire \b_reg[6] ;
  wire \b_reg[6]_0 ;
  wire \b_reg[6]_1 ;
  wire [5:0]\b_reg[7] ;
  wire [7:0]\b_reg[7]_0 ;
  wire \b_reg[7]_1 ;
  wire [2:0]\b_reg[7]_2 ;
  wire \b_reg[7]_3 ;
  wire \b_reg[7]_4 ;
  wire bcf;
  wire bcf_i_1_n_0;
  wire bsf;
  wire bsf_i_1_n_0;
  wire btfsc;
  wire btfsc_i_1_n_0;
  wire btfss;
  wire btfss_i_1_n_0;
  wire c;
  wire c_reg;
  wire call;
  wire call_i_1_n_0;
  wire call_reg_0;
  wire call_reg_1;
  wire clrf;
  wire clrf_i_1_n_0;
  wire clrf_i_2_n_0;
  wire clrw;
  wire clrw_i_1_n_0;
  wire clrw_i_2_n_0;
  wire clrw_i_3_n_0;
  wire clrwdt;
  wire clrwdt_i_1_n_0;
  wire comf;
  wire comf_i_1_n_0;
  wire d;
  wire dc;
  wire decf;
  wire decf_i_1_n_0;
  wire decf_reg_0;
  wire decf_reg_1;
  wire decf_reg_2;
  wire decfsz;
  wire decfsz_i_1_n_0;
  wire decfsz_reg_0;
  wire [0:0]\frs_reg_reg[7] ;
  wire [7:0]\frs_reg_reg[7]_0 ;
  wire goto;
  wire goto_i_1_n_0;
  wire incf;
  wire incf_i_1_n_0;
  wire incfsz;
  wire incfsz_i_1_n_0;
  wire iorlw;
  wire iorlw_i_1_n_0;
  wire iorwf;
  wire iorwf_i_1_n_0;
  wire iorwf_reg_0;
  wire [3:3]k;
  wire \k_reg[7]_0 ;
  wire [0:0]longk;
  wire mclr;
  wire movf;
  wire movf_i_1_n_0;
  wire movlw;
  wire movlw_i_1_n_0;
  wire movwf;
  wire movwf_i_1_n_0;
  wire movwf_i_2_n_0;
  wire option;
  wire option_i_1_n_0;
  wire \pc[0]_P_i_2_n_0 ;
  wire \pc[0]_P_i_3_n_0 ;
  wire \pc[1]_P_i_2_n_0 ;
  wire \pc[1]_P_i_3_n_0 ;
  wire \pc[3]_P_i_2_n_0 ;
  wire \pc[6]_P_i_2_n_0 ;
  wire \pc[9]_P_i_8_n_0 ;
  wire \pc[9]_P_i_9_n_0 ;
  wire \pc_reg[0]_P ;
  wire \pc_reg[0]_P_0 ;
  wire \pc_reg[0]_P_1 ;
  wire \pc_reg[1]_P ;
  wire \pc_reg[1]_P_0 ;
  wire \pc_reg[1]_P_1 ;
  wire \pc_reg[2]_P ;
  wire \pc_reg[2]_P_0 ;
  wire \pc_reg[2]_P_1 ;
  wire \pc_reg[3]_P ;
  wire \pc_reg[3]_P_0 ;
  wire \pc_reg[3]_P_1 ;
  wire \pc_reg[4]_P ;
  wire \pc_reg[4]_P_0 ;
  wire \pc_reg[4]_P_1 ;
  wire \pc_reg[5]_P ;
  wire \pc_reg[5]_P_0 ;
  wire \pc_reg[5]_P_1 ;
  wire \pc_reg[6]_P ;
  wire \pc_reg[6]_P_0 ;
  wire \pc_reg[6]_P_1 ;
  wire \pc_reg[6]_P_2 ;
  wire \pc_reg[7]_P ;
  wire \pc_reg[7]_P_0 ;
  wire \pc_reg[7]_P_1 ;
  wire \pc_reg[7]_P_2 ;
  wire \pc_reg[9]_P ;
  wire \pc_reg[9]_P_0 ;
  wire \pc_reg[9]_P_1 ;
  wire retlw;
  wire retlw_i_1_n_0;
  wire retlw_reg_0;
  wire rlf;
  wire rlf_i_1_n_0;
  wire [11:0]romdata;
  wire rrf;
  wire rrf_i_1_n_0;
  wire rrf_reg_0;
  wire \rtccount[7]_i_2_n_0 ;
  wire \rtccount[7]_i_3_n_0 ;
  wire [2:0]\rtccount_reg[6] ;
  wire [0:0]\rtccount_reg[7] ;
  wire skip_C_i_2_n_0;
  wire skip_C_i_4_n_0;
  wire skip_reg_C;
  wire skip_reg_C_0;
  wire \stack1_reg[2] ;
  wire \stack1_reg[3] ;
  wire \stack1_reg[6] ;
  wire \stack1_reg[7] ;
  wire \stacklevel_reg[0] ;
  wire \stacklevel_reg[0]_0 ;
  wire \stacklevel_reg[1] ;
  wire \stacklevel_reg[1]_0 ;
  wire \stacklevel_reg[1]_1 ;
  wire \status[2]_i_3_n_0 ;
  wire \status[2]_i_5_n_0 ;
  wire \status[7]_i_2_n_0 ;
  wire status_c;
  wire \status_reg[0] ;
  wire \status_reg[0]_0 ;
  wire \status_reg[0]_1 ;
  wire \status_reg[1] ;
  wire \status_reg[1]_0 ;
  wire \status_reg[1]_1 ;
  wire \status_reg[2] ;
  wire \status_reg[2]_0 ;
  wire \status_reg[2]_1 ;
  wire \status_reg[3] ;
  wire \status_reg[4] ;
  wire \status_reg[5] ;
  wire \status_reg[6] ;
  wire \status_reg[7] ;
  wire subwf;
  wire subwf_i_1_n_0;
  wire swapf;
  wire swapf_i_1_n_0;
  wire tris;
  wire tris_i_1_n_0;
  wire [0:0]\trisb_reg[7] ;
  wire \w[7]_i_2_n_0 ;
  wire \w[7]_i_3_n_0 ;
  wire \w_reg[0] ;
  wire \w_reg[0]_0 ;
  wire \w_reg[1] ;
  wire \w_reg[1]_0 ;
  wire \w_reg[2] ;
  wire \w_reg[2]_0 ;
  wire \w_reg[3] ;
  wire \w_reg[3]_0 ;
  wire \w_reg[4] ;
  wire \w_reg[4]_0 ;
  wire \w_reg[5] ;
  wire \w_reg[5]_0 ;
  wire \w_reg[5]_1 ;
  wire \w_reg[6] ;
  wire [0:0]\w_reg[7] ;
  wire \w_reg[7]_0 ;
  wire \w_reg[7]_1 ;
  wire [6:0]\w_reg[7]_2 ;
  wire xorlw;
  wire xorlw_i_1_n_0;
  wire xorwf;
  wire xorwf_i_1_n_0;
  wire \yi[0]_C_i_10_n_0 ;
  wire \yi[0]_C_i_11_n_0 ;
  wire \yi[0]_C_i_12_n_0 ;
  wire \yi[0]_C_i_13_n_0 ;
  wire \yi[0]_C_i_14_n_0 ;
  wire \yi[0]_C_i_2_n_0 ;
  wire \yi[0]_C_i_3_n_0 ;
  wire \yi[0]_C_i_4_n_0 ;
  wire \yi[0]_C_i_5_n_0 ;
  wire \yi[0]_C_i_7_n_0 ;
  wire \yi[0]_C_i_8_n_0 ;
  wire \yi[1]_C_i_2_n_0 ;
  wire \yi[1]_C_i_3_n_0 ;
  wire \yi[1]_C_i_4_n_0 ;
  wire \yi[1]_C_i_7_n_0 ;
  wire \yi[1]_C_i_8_n_0 ;
  wire \yi[2]_C_i_2_n_0 ;
  wire \yi[2]_C_i_3_n_0 ;
  wire \yi[2]_C_i_4_n_0 ;
  wire \yi[2]_C_i_7_n_0 ;
  wire \yi[3]_C_i_14_n_0 ;
  wire \yi[3]_C_i_2_n_0 ;
  wire \yi[3]_C_i_3_n_0 ;
  wire \yi[3]_C_i_6_n_0 ;
  wire \yi[4]_C_i_11_n_0 ;
  wire \yi[4]_C_i_12_n_0 ;
  wire \yi[4]_C_i_13_n_0 ;
  wire \yi[4]_C_i_2_n_0 ;
  wire \yi[4]_C_i_3_n_0 ;
  wire \yi[4]_C_i_6_n_0 ;
  wire \yi[5]_C_i_11_n_0 ;
  wire \yi[5]_C_i_12_n_0 ;
  wire \yi[5]_C_i_13_n_0 ;
  wire \yi[5]_C_i_2_n_0 ;
  wire \yi[5]_C_i_3_n_0 ;
  wire \yi[5]_C_i_4_n_0 ;
  wire \yi[5]_C_i_6_n_0 ;
  wire \yi[5]_C_i_8_n_0 ;
  wire \yi[6]_C_i_11_n_0 ;
  wire \yi[6]_C_i_13_n_0 ;
  wire \yi[6]_C_i_2_n_0 ;
  wire \yi[6]_C_i_3_n_0 ;
  wire \yi[6]_C_i_4_n_0 ;
  wire \yi[6]_C_i_5_n_0 ;
  wire \yi[6]_C_i_6_n_0 ;
  wire \yi[6]_C_i_8_n_0 ;
  wire \yi[7]_C_i_11_n_0 ;
  wire \yi[7]_C_i_14_n_0 ;
  wire \yi[7]_C_i_16_n_0 ;
  wire \yi[7]_C_i_19_n_0 ;
  wire \yi[7]_C_i_20_n_0 ;
  wire \yi[7]_C_i_21_n_0 ;
  wire \yi[7]_C_i_3_n_0 ;
  wire \yi[7]_C_i_5_n_0 ;
  wire \yi[7]_C_i_6_n_0 ;
  wire \yi[7]_C_i_7_n_0 ;
  wire \yi[7]_C_i_8_n_0 ;
  wire \yi[7]_C_i_9_n_0 ;
  wire \yi_reg[0]_C ;
  wire \yi_reg[0]_C_0 ;
  wire \yi_reg[0]_C_1 ;
  wire \yi_reg[1]_C ;
  wire \yi_reg[1]_C_0 ;
  wire \yi_reg[1]_C_1 ;
  wire \yi_reg[1]_C_2 ;
  wire \yi_reg[2]_C ;
  wire \yi_reg[2]_C_0 ;
  wire \yi_reg[2]_C_1 ;
  wire \yi_reg[2]_C_2 ;
  wire \yi_reg[3]_C ;
  wire \yi_reg[3]_C_i_9_n_0 ;
  wire \yi_reg[4]_C ;
  wire \yi_reg[4]_C_0 ;
  wire \yi_reg[4]_C_1 ;
  wire \yi_reg[5]_C ;
  wire \yi_reg[6]_C ;
  wire \yi_reg[7]_C ;
  wire z_i_26_n_0;
  wire z_reg;
  wire z_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \RA_out[3]_i_1 
       (.I0(\b_reg[7] [1]),
        .I1(\rtccount[7]_i_2_n_0 ),
        .I2(\b_reg[7] [2]),
        .I3(\b_reg[7] [0]),
        .O(\RA_out_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \RB_out[7]_i_1 
       (.I0(\rtccount[7]_i_2_n_0 ),
        .I1(\b_reg[7] [2]),
        .I2(\b_reg[7] [0]),
        .I3(\b_reg[7] [1]),
        .O(\RB_out_reg[7] ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    addwf_i_1
       (.I0(romdata[6]),
        .I1(romdata[11]),
        .I2(romdata[10]),
        .I3(romdata[7]),
        .I4(romdata[9]),
        .I5(romdata[8]),
        .O(addwf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    addwf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(addwf_i_1_n_0),
        .Q(addwf),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    andlw_i_1
       (.I0(romdata[11]),
        .I1(romdata[10]),
        .I2(romdata[8]),
        .I3(romdata[9]),
        .O(andlw_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    andlw_reg
       (.C(CLK),
        .CE(1'b1),
        .D(andlw_i_1_n_0),
        .Q(andlw),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    andwf_i_1
       (.I0(romdata[6]),
        .I1(romdata[11]),
        .I2(romdata[10]),
        .I3(romdata[7]),
        .I4(romdata[9]),
        .I5(romdata[8]),
        .O(andwf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    andwf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(andwf_i_1_n_0),
        .Q(andwf),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \b[0]_i_1 
       (.I0(\b[0]_i_2_n_0 ),
        .I1(k),
        .I2(\b_reg[7] [3]),
        .I3(\b[7]_i_4_n_0 ),
        .I4(\b_reg[7] [0]),
        .O(\b_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \b[0]_i_2 
       (.I0(RB[0]),
        .I1(\b_reg[7] [0]),
        .I2(\b_reg[7] [1]),
        .I3(\b[0]_i_3_n_0 ),
        .I4(\b_reg[7] [2]),
        .I5(\status_reg[0]_1 ),
        .O(\b[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \b[0]_i_3 
       (.I0(\b_reg[7] [0]),
        .I1(\frs_reg_reg[7]_0 [0]),
        .I2(RA[0]),
        .O(\b[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \b[1]_i_1 
       (.I0(\b[1]_i_2_n_0 ),
        .I1(k),
        .I2(\b_reg[7] [3]),
        .I3(\b[7]_i_4_n_0 ),
        .I4(\b_reg[7] [1]),
        .O(\b_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \b[1]_i_2 
       (.I0(RB[1]),
        .I1(\b_reg[7] [0]),
        .I2(\b_reg[7] [1]),
        .I3(\b[1]_i_3_n_0 ),
        .I4(\b_reg[7] [2]),
        .I5(\status_reg[1]_0 ),
        .O(\b[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \b[1]_i_3 
       (.I0(\b_reg[7] [0]),
        .I1(\frs_reg_reg[7]_0 [1]),
        .I2(RA[1]),
        .O(\b[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000CFFFF000A0000)) 
    \b[2]_i_1 
       (.I0(\status_reg[2]_1 ),
        .I1(\b[2]_i_3_n_0 ),
        .I2(k),
        .I3(\b_reg[7] [3]),
        .I4(\b[7]_i_4_n_0 ),
        .I5(\b_reg[7] [2]),
        .O(\b_reg[7]_0 [2]));
  LUT5 #(
    .INIT(32'h2222FC30)) 
    \b[2]_i_3 
       (.I0(RB[2]),
        .I1(\b_reg[7] [0]),
        .I2(\frs_reg_reg[7]_0 [2]),
        .I3(RA[2]),
        .I4(\b_reg[7] [1]),
        .O(\b[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF0000FFCF0010)) 
    \b[3]_i_1 
       (.I0(\b[3]_i_2_n_0 ),
        .I1(retlw),
        .I2(\b[4]_i_3_n_0 ),
        .I3(movlw),
        .I4(k),
        .I5(\b_reg[7] [3]),
        .O(\b_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'h8CBFFFFF8CBF0000)) 
    \b[3]_i_2 
       (.I0(\b_reg[7] [0]),
        .I1(\b_reg[7] [1]),
        .I2(RB[3]),
        .I3(\b[3]_i_3_n_0 ),
        .I4(\b_reg[7] [2]),
        .I5(\status_reg[3] ),
        .O(\b[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \b[3]_i_3 
       (.I0(\b_reg[7] [0]),
        .I1(\frs_reg_reg[7]_0 [3]),
        .I2(RA[3]),
        .O(\b[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFCF00000010)) 
    \b[4]_i_1 
       (.I0(\b[4]_i_2_n_0 ),
        .I1(retlw),
        .I2(\b[4]_i_3_n_0 ),
        .I3(movlw),
        .I4(k),
        .I5(\b_reg[7] [3]),
        .O(\b_reg[7]_0 [4]));
  LUT6 #(
    .INIT(64'h00000000DDDFFFDF)) 
    \b[4]_i_2 
       (.I0(\b_reg[7] [1]),
        .I1(\b_reg[7] [2]),
        .I2(\pc_reg[4]_P_0 ),
        .I3(\b_reg[7] [0]),
        .I4(\status_reg[4] ),
        .I5(\b[4]_i_4_n_0 ),
        .O(\b[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \b[4]_i_3 
       (.I0(iorlw),
        .I1(andlw),
        .I2(xorlw),
        .O(\b[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0055D8000000D800)) 
    \b[4]_i_4 
       (.I0(\b_reg[7] [1]),
        .I1(RB[4]),
        .I2(\frs_reg_reg[7]_0 [4]),
        .I3(\b_reg[7] [2]),
        .I4(\b_reg[7] [0]),
        .I5(\rtccount_reg[6] [0]),
        .O(\b[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF3AA)) 
    \b[5]_i_1 
       (.I0(d),
        .I1(\b[5]_i_2_n_0 ),
        .I2(\b[5]_i_3_n_0 ),
        .I3(\b[7]_i_4_n_0 ),
        .I4(k),
        .I5(\b_reg[7] [3]),
        .O(\b_reg[7]_0 [5]));
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \b[5]_i_2 
       (.I0(\status_reg[5] ),
        .I1(\b_reg[7] [0]),
        .I2(\pc_reg[5]_P_1 ),
        .I3(\b_reg[7] [2]),
        .I4(\b_reg[7] [1]),
        .O(\b[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0055D8000000D800)) 
    \b[5]_i_3 
       (.I0(\b_reg[7] [1]),
        .I1(RB[5]),
        .I2(\frs_reg_reg[7]_0 [5]),
        .I3(\b_reg[7] [2]),
        .I4(\b_reg[7] [0]),
        .I5(\rtccount_reg[6] [1]),
        .O(\b[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF3AA)) 
    \b[6]_i_1 
       (.I0(\b_reg[7] [4]),
        .I1(\b[6]_i_2_n_0 ),
        .I2(\b[6]_i_3_n_0 ),
        .I3(\b[7]_i_4_n_0 ),
        .I4(k),
        .I5(\b_reg[7] [3]),
        .O(\b_reg[7]_0 [6]));
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \b[6]_i_2 
       (.I0(\status_reg[6] ),
        .I1(\b_reg[7] [0]),
        .I2(\pc_reg[6]_P_2 ),
        .I3(\b_reg[7] [2]),
        .I4(\b_reg[7] [1]),
        .O(\b[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \b[6]_i_3 
       (.I0(RB[6]),
        .I1(\b_reg[7] [1]),
        .I2(\frs_reg_reg[7]_0 [6]),
        .I3(\b_reg[7] [2]),
        .I4(\b_reg[7] [0]),
        .I5(\rtccount_reg[6] [2]),
        .O(\b[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF3AA)) 
    \b[7]_i_1 
       (.I0(\b_reg[7] [5]),
        .I1(\b[7]_i_2_n_0 ),
        .I2(\pc_reg[7]_P_1 ),
        .I3(\b[7]_i_4_n_0 ),
        .I4(k),
        .I5(\b_reg[7] [3]),
        .O(\b_reg[7]_0 [7]));
  LUT5 #(
    .INIT(32'hFF27FFFF)) 
    \b[7]_i_2 
       (.I0(\b_reg[7] [1]),
        .I1(RB[7]),
        .I2(\frs_reg_reg[7]_0 [7]),
        .I3(\b_reg[7] [0]),
        .I4(\b_reg[7] [2]),
        .O(\b[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \b[7]_i_4 
       (.I0(movlw),
        .I1(iorlw),
        .I2(andlw),
        .I3(xorlw),
        .I4(retlw),
        .O(\b[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    bcf_i_1
       (.I0(romdata[11]),
        .I1(romdata[10]),
        .I2(romdata[9]),
        .I3(romdata[8]),
        .O(bcf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bcf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bcf_i_1_n_0),
        .Q(bcf),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    bsf_i_1
       (.I0(romdata[11]),
        .I1(romdata[10]),
        .I2(romdata[9]),
        .I3(romdata[8]),
        .O(bsf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bsf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bsf_i_1_n_0),
        .Q(bsf),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    btfsc_i_1
       (.I0(romdata[11]),
        .I1(romdata[10]),
        .I2(romdata[8]),
        .I3(romdata[9]),
        .O(btfsc_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btfsc_reg
       (.C(CLK),
        .CE(1'b1),
        .D(btfsc_i_1_n_0),
        .Q(btfsc),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    btfss_i_1
       (.I0(romdata[11]),
        .I1(romdata[10]),
        .I2(romdata[9]),
        .I3(romdata[8]),
        .O(btfss_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btfss_reg
       (.C(CLK),
        .CE(1'b1),
        .D(btfss_i_1_n_0),
        .Q(btfss),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    c_i_1
       (.I0(c),
        .I1(addwf),
        .I2(subwf),
        .I3(rlf),
        .I4(rrf),
        .I5(rrf_reg_0),
        .O(c_reg));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    call_i_1
       (.I0(romdata[10]),
        .I1(romdata[11]),
        .I2(romdata[9]),
        .I3(romdata[8]),
        .O(call_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    call_reg
       (.C(CLK),
        .CE(1'b1),
        .D(call_i_1_n_0),
        .Q(call),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    clrf_i_1
       (.I0(romdata[5]),
        .I1(clrf_i_2_n_0),
        .I2(romdata[6]),
        .I3(romdata[11]),
        .I4(romdata[10]),
        .I5(romdata[7]),
        .O(clrf_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    clrf_i_2
       (.I0(romdata[8]),
        .I1(romdata[9]),
        .O(clrf_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clrf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(clrf_i_1_n_0),
        .Q(clrf),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00020000)) 
    clrw_i_1
       (.I0(clrw_i_2_n_0),
        .I1(romdata[2]),
        .I2(romdata[1]),
        .I3(romdata[0]),
        .I4(clrw_i_3_n_0),
        .O(clrw_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    clrw_i_2
       (.I0(romdata[7]),
        .I1(romdata[10]),
        .I2(romdata[11]),
        .I3(romdata[6]),
        .O(clrw_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    clrw_i_3
       (.I0(romdata[5]),
        .I1(romdata[8]),
        .I2(romdata[9]),
        .I3(romdata[4]),
        .I4(romdata[3]),
        .O(clrw_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clrw_reg
       (.C(CLK),
        .CE(1'b1),
        .D(clrw_i_1_n_0),
        .Q(clrw),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00200000)) 
    clrwdt_i_1
       (.I0(movwf_i_2_n_0),
        .I1(romdata[1]),
        .I2(romdata[2]),
        .I3(romdata[0]),
        .I4(clrw_i_3_n_0),
        .O(clrwdt_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clrwdt_reg
       (.C(CLK),
        .CE(1'b1),
        .D(clrwdt_i_1_n_0),
        .Q(clrwdt),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    comf_i_1
       (.I0(romdata[6]),
        .I1(romdata[11]),
        .I2(romdata[10]),
        .I3(romdata[7]),
        .I4(romdata[8]),
        .I5(romdata[9]),
        .O(comf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    comf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(comf_i_1_n_0),
        .Q(comf),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    d_reg
       (.C(CLK),
        .CE(1'b1),
        .D(romdata[5]),
        .Q(d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    decf_i_1
       (.I0(romdata[6]),
        .I1(romdata[11]),
        .I2(romdata[10]),
        .I3(romdata[7]),
        .I4(romdata[9]),
        .I5(romdata[8]),
        .O(decf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    decf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(decf_i_1_n_0),
        .Q(decf),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    decfsz_i_1
       (.I0(romdata[6]),
        .I1(romdata[11]),
        .I2(romdata[10]),
        .I3(romdata[7]),
        .I4(romdata[8]),
        .I5(romdata[9]),
        .O(decfsz_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    decfsz_reg
       (.C(CLK),
        .CE(1'b1),
        .D(decfsz_i_1_n_0),
        .Q(decfsz),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \frs_reg[7]_i_1 
       (.I0(\b_reg[7] [1]),
        .I1(\rtccount[7]_i_2_n_0 ),
        .I2(\b_reg[7] [2]),
        .I3(\b_reg[7] [0]),
        .O(\frs_reg_reg[7] ));
  LUT3 #(
    .INIT(8'h40)) 
    goto_i_1
       (.I0(romdata[10]),
        .I1(romdata[11]),
        .I2(romdata[9]),
        .O(goto_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    goto_reg
       (.C(CLK),
        .CE(1'b1),
        .D(goto_i_1_n_0),
        .Q(goto),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    incf_i_1
       (.I0(romdata[6]),
        .I1(romdata[11]),
        .I2(romdata[10]),
        .I3(romdata[7]),
        .I4(romdata[8]),
        .I5(romdata[9]),
        .O(incf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    incf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(incf_i_1_n_0),
        .Q(incf),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    incfsz_i_1
       (.I0(romdata[6]),
        .I1(romdata[11]),
        .I2(romdata[10]),
        .I3(romdata[7]),
        .I4(romdata[9]),
        .I5(romdata[8]),
        .O(incfsz_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    incfsz_reg
       (.C(CLK),
        .CE(1'b1),
        .D(incfsz_i_1_n_0),
        .Q(incfsz),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    iorlw_i_1
       (.I0(romdata[11]),
        .I1(romdata[10]),
        .I2(romdata[9]),
        .I3(romdata[8]),
        .O(iorlw_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    iorlw_reg
       (.C(CLK),
        .CE(1'b1),
        .D(iorlw_i_1_n_0),
        .Q(iorlw),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    iorwf_i_1
       (.I0(romdata[6]),
        .I1(romdata[11]),
        .I2(romdata[10]),
        .I3(romdata[7]),
        .I4(romdata[9]),
        .I5(romdata[8]),
        .O(iorwf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    iorwf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(iorwf_i_1_n_0),
        .Q(iorwf),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(romdata[0]),
        .Q(\b_reg[7] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(romdata[1]),
        .Q(\b_reg[7] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(romdata[2]),
        .Q(\b_reg[7] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(romdata[3]),
        .Q(k),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(romdata[4]),
        .Q(\b_reg[7] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(romdata[6]),
        .Q(\b_reg[7] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(romdata[7]),
        .Q(\b_reg[7] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \longk_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(romdata[8]),
        .Q(longk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    movf_i_1
       (.I0(romdata[8]),
        .I1(romdata[9]),
        .I2(romdata[6]),
        .I3(romdata[11]),
        .I4(romdata[10]),
        .I5(romdata[7]),
        .O(movf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    movf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(movf_i_1_n_0),
        .Q(movf),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    movlw_i_1
       (.I0(romdata[11]),
        .I1(romdata[10]),
        .I2(romdata[9]),
        .I3(romdata[8]),
        .O(movlw_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    movlw_reg
       (.C(CLK),
        .CE(1'b1),
        .D(movlw_i_1_n_0),
        .Q(movlw),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0200)) 
    movwf_i_1
       (.I0(romdata[5]),
        .I1(romdata[8]),
        .I2(romdata[9]),
        .I3(movwf_i_2_n_0),
        .O(movwf_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    movwf_i_2
       (.I0(romdata[7]),
        .I1(romdata[10]),
        .I2(romdata[11]),
        .I3(romdata[6]),
        .O(movwf_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    movwf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(movwf_i_1_n_0),
        .Q(movwf),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    option_i_1
       (.I0(movwf_i_2_n_0),
        .I1(romdata[2]),
        .I2(romdata[1]),
        .I3(romdata[0]),
        .I4(clrw_i_3_n_0),
        .O(option_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    option_reg
       (.C(CLK),
        .CE(1'b1),
        .D(option_i_1_n_0),
        .Q(option),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    \pc[0]_P_i_1 
       (.I0(D[0]),
        .I1(\stacklevel_reg[1]_0 ),
        .I2(\pc[0]_P_i_2_n_0 ),
        .I3(\pc[0]_P_i_3_n_0 ),
        .I4(call_reg_0),
        .O(\pc_reg[0]_P ));
  LUT6 #(
    .INIT(64'h000F00080000000B)) 
    \pc[0]_P_i_2 
       (.I0(\b_reg[7] [0]),
        .I1(goto),
        .I2(retlw),
        .I3(call),
        .I4(\pc_reg[6]_P_0 ),
        .I5(\pc_reg[0]_P_1 ),
        .O(\pc[0]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDF00DFDFD0000)) 
    \pc[0]_P_i_3 
       (.I0(mclr),
        .I1(\b_reg[7] [0]),
        .I2(\stacklevel_reg[1]_1 ),
        .I3(\stacklevel_reg[0]_0 ),
        .I4(call),
        .I5(retlw),
        .O(\pc[0]_P_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    \pc[1]_P_i_1 
       (.I0(D[1]),
        .I1(\stacklevel_reg[1]_0 ),
        .I2(\pc[1]_P_i_2_n_0 ),
        .I3(\pc[1]_P_i_3_n_0 ),
        .I4(call_reg_1),
        .O(\pc_reg[1]_P ));
  LUT6 #(
    .INIT(64'h0000FF008B00B800)) 
    \pc[1]_P_i_2 
       (.I0(\b_reg[7] [1]),
        .I1(goto),
        .I2(\pc_reg[0]_P_1 ),
        .I3(\pc_reg[5]_P ),
        .I4(\pc_reg[1]_P_1 ),
        .I5(\pc_reg[6]_P_0 ),
        .O(\pc[1]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hECECECECDC00DCDC)) 
    \pc[1]_P_i_3 
       (.I0(\stacklevel_reg[0]_0 ),
        .I1(call),
        .I2(retlw),
        .I3(\b_reg[7] [1]),
        .I4(mclr),
        .I5(\stacklevel_reg[1]_1 ),
        .O(\pc[1]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBBBBBB8)) 
    \pc[2]_P_i_1 
       (.I0(D[2]),
        .I1(\stacklevel_reg[1]_0 ),
        .I2(retlw_reg_0),
        .I3(\stack1_reg[2] ),
        .I4(\b_reg[7] [2]),
        .I5(\pc_reg[2]_P ),
        .O(\pc_reg[2]_P_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8888888B)) 
    \pc[3]_P_i_1 
       (.I0(D[3]),
        .I1(\stacklevel_reg[1]_0 ),
        .I2(\pc[3]_P_i_2_n_0 ),
        .I3(retlw),
        .I4(call),
        .I5(\stack1_reg[3] ),
        .O(\pc_reg[3]_P ));
  LUT6 #(
    .INIT(64'h1BB11BB10FF00FA5)) 
    \pc[3]_P_i_2 
       (.I0(\pc_reg[6]_P_0 ),
        .I1(k),
        .I2(\pc_reg[3]_P_1 ),
        .I3(\pc_reg[1]_P_0 ),
        .I4(\pc_reg[0]_P_1 ),
        .I5(goto),
        .O(\pc[3]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hECECECECDC00DCDC)) 
    \pc[3]_P_i_5 
       (.I0(\stacklevel_reg[0]_0 ),
        .I1(call),
        .I2(retlw),
        .I3(k),
        .I4(mclr),
        .I5(\stacklevel_reg[1]_1 ),
        .O(\pc_reg[3]_P_0 ));
  LUT6 #(
    .INIT(64'hECECECECDC00DCDC)) 
    \pc[4]_P_i_2 
       (.I0(\stacklevel_reg[0]_0 ),
        .I1(call),
        .I2(retlw),
        .I3(\b_reg[7] [3]),
        .I4(mclr),
        .I5(\stacklevel_reg[1]_1 ),
        .O(\pc_reg[4]_P ));
  LUT6 #(
    .INIT(64'hECECECECDC00DCDC)) 
    \pc[5]_P_i_5 
       (.I0(\stacklevel_reg[0]_0 ),
        .I1(call),
        .I2(retlw),
        .I3(d),
        .I4(mclr),
        .I5(\stacklevel_reg[1]_1 ),
        .O(\pc_reg[5]_P_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8888888B)) 
    \pc[6]_P_i_1 
       (.I0(D[4]),
        .I1(\stacklevel_reg[1]_0 ),
        .I2(\pc[6]_P_i_2_n_0 ),
        .I3(retlw),
        .I4(call),
        .I5(\stack1_reg[6] ),
        .O(\pc_reg[6]_P ));
  LUT6 #(
    .INIT(64'h10BF10BFBF10BA15)) 
    \pc[6]_P_i_2 
       (.I0(\pc_reg[6]_P_0 ),
        .I1(\b_reg[7] [4]),
        .I2(goto),
        .I3(\pc_reg[6]_P_2 ),
        .I4(\pc_reg[0]_P_1 ),
        .I5(\pc_reg[4]_P_1 ),
        .O(\pc[6]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hECECECECDC00DCDC)) 
    \pc[6]_P_i_4 
       (.I0(\stacklevel_reg[0]_0 ),
        .I1(call),
        .I2(retlw),
        .I3(\b_reg[7] [4]),
        .I4(mclr),
        .I5(\stacklevel_reg[1]_1 ),
        .O(\pc_reg[6]_P_1 ));
  LUT6 #(
    .INIT(64'hFFFF0000AAABAAAB)) 
    \pc[7]_P_i_1 
       (.I0(\stack1_reg[7] ),
        .I1(call),
        .I2(retlw),
        .I3(\pc_reg[7]_P_2 ),
        .I4(D[5]),
        .I5(\stacklevel_reg[1]_0 ),
        .O(\pc_reg[7]_P ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[7]_P_i_4 
       (.I0(retlw),
        .I1(call),
        .O(\pc_reg[2]_P_1 ));
  LUT6 #(
    .INIT(64'hECECECECDC00DCDC)) 
    \pc[7]_P_i_5 
       (.I0(\stacklevel_reg[0]_0 ),
        .I1(call),
        .I2(retlw),
        .I3(\b_reg[7] [5]),
        .I4(mclr),
        .I5(\stacklevel_reg[1]_1 ),
        .O(\pc_reg[7]_P_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pc[8]_P_i_3 
       (.I0(retlw),
        .I1(call),
        .O(\pc_reg[5]_P ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFB)) 
    \pc[9]_P_i_1 
       (.I0(\stacklevel_reg[1]_0 ),
        .I1(retlw),
        .I2(call),
        .I3(\stacklevel_reg[0]_0 ),
        .I4(\stacklevel_reg[1]_1 ),
        .O(\pc_reg[0]_P_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \pc[9]_P_i_11 
       (.I0(skip_reg_C_0),
        .I1(btfsc),
        .I2(btfss),
        .I3(incfsz),
        .I4(decfsz),
        .O(\pc_reg[6]_P_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000EFEE)) 
    \pc[9]_P_i_3 
       (.I0(bsf),
        .I1(bcf),
        .I2(\pc[9]_P_i_8_n_0 ),
        .I3(d),
        .I4(\pc[9]_P_i_9_n_0 ),
        .O(\stacklevel_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1331)) 
    \pc[9]_P_i_5 
       (.I0(retlw),
        .I1(call),
        .I2(\stacklevel_reg[0]_0 ),
        .I3(\stacklevel_reg[1]_1 ),
        .O(\pc_reg[2]_P ));
  LUT6 #(
    .INIT(64'h0000A202AAAAA202)) 
    \pc[9]_P_i_7 
       (.I0(\pc_reg[5]_P ),
        .I1(\pc_reg[9]_P_0 ),
        .I2(goto),
        .I3(\status_reg[5] ),
        .I4(\pc_reg[6]_P_0 ),
        .I5(\pc_reg[9]_P_1 ),
        .O(\pc_reg[9]_P ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \pc[9]_P_i_8 
       (.I0(\status[2]_i_3_n_0 ),
        .I1(swapf),
        .I2(movwf),
        .I3(rrf),
        .I4(rlf),
        .O(\pc[9]_P_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \pc[9]_P_i_9 
       (.I0(\b_reg[7] [0]),
        .I1(\b_reg[7] [1]),
        .I2(\b_reg[7] [2]),
        .I3(k),
        .I4(\b_reg[7] [3]),
        .O(\pc[9]_P_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    retlw_i_1
       (.I0(romdata[10]),
        .I1(romdata[11]),
        .I2(romdata[9]),
        .I3(romdata[8]),
        .O(retlw_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    retlw_reg
       (.C(CLK),
        .CE(1'b1),
        .D(retlw_i_1_n_0),
        .Q(retlw),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    rlf_i_1
       (.I0(romdata[6]),
        .I1(romdata[11]),
        .I2(romdata[10]),
        .I3(romdata[7]),
        .I4(romdata[9]),
        .I5(romdata[8]),
        .O(rlf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rlf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rlf_i_1_n_0),
        .Q(rlf),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    rrf_i_1
       (.I0(romdata[9]),
        .I1(romdata[8]),
        .I2(romdata[6]),
        .I3(romdata[11]),
        .I4(romdata[10]),
        .I5(romdata[7]),
        .O(rrf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rrf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rrf_i_1_n_0),
        .Q(rrf),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \rtccount[7]_i_1 
       (.I0(\rtccount[7]_i_2_n_0 ),
        .I1(\b_reg[7] [1]),
        .I2(\b_reg[7] [0]),
        .I3(\b_reg[7] [2]),
        .O(\rtccount_reg[7] ));
  LUT6 #(
    .INIT(64'h0080008008880080)) 
    \rtccount[7]_i_2 
       (.I0(mclr),
        .I1(\status[7]_i_2_n_0 ),
        .I2(\w[7]_i_3_n_0 ),
        .I3(\rtccount[7]_i_3_n_0 ),
        .I4(d),
        .I5(retlw),
        .O(\rtccount[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rtccount[7]_i_3 
       (.I0(bsf),
        .I1(bcf),
        .O(\rtccount[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BB8B8B8B)) 
    skip_C_i_1
       (.I0(skip_reg_C_0),
        .I1(skip_C_i_2_n_0),
        .I2(incfsz),
        .I3(\b_reg[6] ),
        .I4(Q[7]),
        .I5(skip_C_i_4_n_0),
        .O(skip_reg_C));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    skip_C_i_2
       (.I0(decfsz),
        .I1(incfsz),
        .I2(btfss),
        .I3(btfsc),
        .O(skip_C_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000FF6F006F)) 
    skip_C_i_4
       (.I0(\k_reg[7]_0 ),
        .I1(btfss),
        .I2(mclr),
        .I3(decfsz),
        .I4(\b_reg[2]_0 ),
        .I5(incfsz),
        .O(skip_C_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF0F003D8)) 
    \stacklevel[0]_i_1 
       (.I0(retlw),
        .I1(\stacklevel_reg[1]_1 ),
        .I2(\stacklevel_reg[0]_0 ),
        .I3(call),
        .I4(\stacklevel_reg[1]_0 ),
        .O(\stacklevel_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hCCCC30C4)) 
    \stacklevel[1]_i_1 
       (.I0(retlw),
        .I1(\stacklevel_reg[1]_1 ),
        .I2(\stacklevel_reg[0]_0 ),
        .I3(call),
        .I4(\stacklevel_reg[1]_0 ),
        .O(\stacklevel_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \status[0]_i_2 
       (.I0(addwf),
        .I1(subwf),
        .I2(rlf),
        .I3(rrf),
        .O(\status_reg[0] ));
  LUT6 #(
    .INIT(64'hCCCCCCAFCCCCCCA0)) 
    \status[1]_i_1 
       (.I0(D[1]),
        .I1(dc),
        .I2(\status_reg[7] ),
        .I3(addwf),
        .I4(subwf),
        .I5(\status_reg[1]_1 ),
        .O(\status_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \status[2]_i_2 
       (.I0(\status[2]_i_3_n_0 ),
        .I1(xorlw),
        .I2(andlw),
        .I3(iorlw),
        .O(\status_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \status[2]_i_3 
       (.I0(\yi_reg[0]_C ),
        .I1(andwf),
        .I2(decf),
        .I3(subwf),
        .I4(\status_reg[2]_0 ),
        .I5(\status[2]_i_5_n_0 ),
        .O(\status[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \status[2]_i_4 
       (.I0(clrw),
        .I1(clrf),
        .O(\status_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \status[2]_i_5 
       (.I0(movf),
        .I1(incf),
        .I2(comf),
        .O(\status[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000E00000000000)) 
    \status[7]_i_1 
       (.I0(bcf),
        .I1(bsf),
        .I2(\b_reg[7] [1]),
        .I3(\status[7]_i_2_n_0 ),
        .I4(\b_reg[7] [2]),
        .I5(\b_reg[7] [0]),
        .O(\status_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \status[7]_i_2 
       (.I0(\b_reg[7] [3]),
        .I1(k),
        .O(\status[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    subwf_i_1
       (.I0(romdata[6]),
        .I1(romdata[11]),
        .I2(romdata[10]),
        .I3(romdata[7]),
        .I4(romdata[9]),
        .I5(romdata[8]),
        .O(subwf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    subwf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(subwf_i_1_n_0),
        .Q(subwf),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    swapf_i_1
       (.I0(romdata[6]),
        .I1(romdata[11]),
        .I2(romdata[10]),
        .I3(romdata[7]),
        .I4(romdata[9]),
        .I5(romdata[8]),
        .O(swapf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    swapf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(swapf_i_1_n_0),
        .Q(swapf),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h28000000)) 
    tris_i_1
       (.I0(movwf_i_2_n_0),
        .I1(romdata[1]),
        .I2(romdata[0]),
        .I3(romdata[2]),
        .I4(clrw_i_3_n_0),
        .O(tris_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tris_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tris_i_1_n_0),
        .Q(tris),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \trisa[3]_i_1 
       (.I0(\b_reg[7] [2]),
        .I1(tris),
        .I2(\b_reg[7] [0]),
        .I3(\b_reg[7] [1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \trisb[7]_i_1 
       (.I0(tris),
        .I1(\b_reg[7] [2]),
        .I2(\b_reg[7] [0]),
        .I3(\b_reg[7] [1]),
        .O(\trisb_reg[7] ));
  LUT6 #(
    .INIT(64'h00BB00BB00BB0FBB)) 
    \w[7]_i_1 
       (.I0(retlw),
        .I1(d),
        .I2(\w[7]_i_2_n_0 ),
        .I3(\w[7]_i_3_n_0 ),
        .I4(bcf),
        .I5(bsf),
        .O(\w_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \w[7]_i_2 
       (.I0(xorlw),
        .I1(andlw),
        .I2(iorlw),
        .I3(movlw),
        .O(\w[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \w[7]_i_3 
       (.I0(\pc[9]_P_i_8_n_0 ),
        .I1(incfsz),
        .I2(decfsz),
        .I3(retlw),
        .O(\w[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    xorlw_i_1
       (.I0(romdata[11]),
        .I1(romdata[10]),
        .I2(romdata[9]),
        .I3(romdata[8]),
        .O(xorlw_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    xorlw_reg
       (.C(CLK),
        .CE(1'b1),
        .D(xorlw_i_1_n_0),
        .Q(xorlw),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    xorwf_i_1
       (.I0(romdata[6]),
        .I1(romdata[11]),
        .I2(romdata[10]),
        .I3(romdata[7]),
        .I4(romdata[9]),
        .I5(romdata[8]),
        .O(xorwf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    xorwf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(xorwf_i_1_n_0),
        .Q(xorwf),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEFFFEFE54105410)) 
    \yi[0]_C_i_1 
       (.I0(retlw),
        .I1(bsf),
        .I2(\yi[0]_C_i_2_n_0 ),
        .I3(\yi[0]_C_i_3_n_0 ),
        .I4(bcf),
        .I5(Q[0]),
        .O(\yi_reg[0]_C_0 ));
  LUT6 #(
    .INIT(64'h555D0000FFFFFFFF)) 
    \yi[0]_C_i_10 
       (.I0(\yi[0]_C_i_13_n_0 ),
        .I1(\w_reg[7]_2 [0]),
        .I2(clrw),
        .I3(clrf),
        .I4(\yi[0]_C_i_14_n_0 ),
        .I5(\yi_reg[0]_C ),
        .O(\yi[0]_C_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h40544000FFFFFFFF)) 
    \yi[0]_C_i_11 
       (.I0(xorlw),
        .I1(Q[0]),
        .I2(\w_reg[7]_2 [0]),
        .I3(andlw),
        .I4(iorlw),
        .I5(\yi[2]_C_i_7_n_0 ),
        .O(\yi[0]_C_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1F0000FF1FBF5FFF)) 
    \yi[0]_C_i_12 
       (.I0(movlw),
        .I1(tris),
        .I2(\b[4]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(\w_reg[7]_2 [0]),
        .I5(xorlw),
        .O(\yi[0]_C_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \yi[0]_C_i_13 
       (.I0(decf),
        .I1(subwf),
        .I2(andwf),
        .O(\yi[0]_C_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF00000045EF45EF)) 
    \yi[0]_C_i_14 
       (.I0(decf),
        .I1(\b_reg[3]_0 [0]),
        .I2(subwf),
        .I3(Q[0]),
        .I4(\w_reg[7]_2 [0]),
        .I5(andwf),
        .O(\yi[0]_C_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00AE)) 
    \yi[0]_C_i_2 
       (.I0(\yi[0]_C_i_4_n_0 ),
        .I1(\yi[7]_C_i_9_n_0 ),
        .I2(\yi[0]_C_i_5_n_0 ),
        .I3(\w_reg[0] ),
        .I4(\yi[2]_C_i_7_n_0 ),
        .I5(\yi[0]_C_i_7_n_0 ),
        .O(\yi[0]_C_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \yi[0]_C_i_3 
       (.I0(d),
        .I1(\b_reg[7] [5]),
        .I2(\b_reg[7] [4]),
        .O(\yi[0]_C_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB888)) 
    \yi[0]_C_i_4 
       (.I0(status_c),
        .I1(rlf),
        .I2(Q[1]),
        .I3(rrf),
        .I4(\yi[0]_C_i_8_n_0 ),
        .O(\yi[0]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA9ABA9A8A9ABA9AB)) 
    \yi[0]_C_i_5 
       (.I0(Q[0]),
        .I1(comf),
        .I2(incf),
        .I3(movf),
        .I4(\w_reg[0]_0 ),
        .I5(\yi[0]_C_i_10_n_0 ),
        .O(\yi[0]_C_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF4FF)) 
    \yi[0]_C_i_7 
       (.I0(\yi[0]_C_i_11_n_0 ),
        .I1(\yi[0]_C_i_12_n_0 ),
        .I2(bcf),
        .I3(mclr),
        .O(\yi[0]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF04)) 
    \yi[0]_C_i_8 
       (.I0(\yi_reg[2]_C ),
        .I1(decfsz),
        .I2(Q[0]),
        .I3(option),
        .I4(incfsz),
        .I5(swapf),
        .O(\yi[0]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFE54105410)) 
    \yi[1]_C_i_1 
       (.I0(retlw),
        .I1(bsf),
        .I2(\yi[1]_C_i_2_n_0 ),
        .I3(\yi[1]_C_i_3_n_0 ),
        .I4(bcf),
        .I5(Q[1]),
        .O(\yi_reg[1]_C_1 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \yi[1]_C_i_11 
       (.I0(rlf),
        .I1(rrf),
        .I2(decfsz),
        .O(\yi_reg[1]_C_0 ));
  LUT5 #(
    .INIT(32'h555DFF5D)) 
    \yi[1]_C_i_12 
       (.I0(\yi_reg[4]_C ),
        .I1(rrf),
        .I2(Q[2]),
        .I3(rlf),
        .I4(Q[0]),
        .O(\yi_reg[1]_C_2 ));
  LUT6 #(
    .INIT(64'h39396C7DFFFFFFFF)) 
    \yi[1]_C_i_13 
       (.I0(incf),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(movf),
        .I4(comf),
        .I5(\yi[7]_C_i_9_n_0 ),
        .O(\yi_reg[1]_C ));
  LUT6 #(
    .INIT(64'hFF000E0000000E00)) 
    \yi[1]_C_i_2 
       (.I0(\yi[1]_C_i_4_n_0 ),
        .I1(\yi[7]_C_i_5_n_0 ),
        .I2(\b_reg[0] ),
        .I3(\yi[7]_C_i_16_n_0 ),
        .I4(\yi[2]_C_i_7_n_0 ),
        .I5(\w_reg[1]_0 ),
        .O(\yi[1]_C_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \yi[1]_C_i_3 
       (.I0(d),
        .I1(\b_reg[7] [5]),
        .I2(\b_reg[7] [4]),
        .O(\yi[1]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEBFF)) 
    \yi[1]_C_i_4 
       (.I0(\yi[1]_C_i_7_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(decf),
        .I4(\yi[1]_C_i_8_n_0 ),
        .I5(iorwf_reg_0),
        .O(\yi[1]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \yi[1]_C_i_7 
       (.I0(xorwf),
        .I1(addwf),
        .I2(iorwf),
        .I3(Q[1]),
        .I4(\w_reg[7]_2 [1]),
        .I5(andwf),
        .O(\yi[1]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00070F07)) 
    \yi[1]_C_i_8 
       (.I0(\status_reg[2]_0 ),
        .I1(\w_reg[7]_2 [1]),
        .I2(decf),
        .I3(subwf),
        .I4(\b_reg[3]_0 [1]),
        .I5(andwf),
        .O(\yi[1]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFE54105410)) 
    \yi[2]_C_i_1 
       (.I0(retlw),
        .I1(bsf),
        .I2(\yi[2]_C_i_2_n_0 ),
        .I3(\yi[2]_C_i_3_n_0 ),
        .I4(bcf),
        .I5(Q[2]),
        .O(\yi_reg[2]_C_0 ));
  LUT5 #(
    .INIT(32'h55F55DFD)) 
    \yi[2]_C_i_13 
       (.I0(\yi_reg[4]_C ),
        .I1(rrf),
        .I2(rlf),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\yi_reg[2]_C_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \yi[2]_C_i_14 
       (.I0(rrf),
        .I1(rlf),
        .O(\yi_reg[2]_C ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F000808)) 
    \yi[2]_C_i_18 
       (.I0(\w_reg[7]_2 [2]),
        .I1(\status_reg[2]_0 ),
        .I2(decf),
        .I3(\b_reg[3]_0 [2]),
        .I4(subwf),
        .I5(andwf),
        .O(\yi_reg[2]_C_2 ));
  LUT6 #(
    .INIT(64'hFF008A0000008A00)) 
    \yi[2]_C_i_2 
       (.I0(\yi[2]_C_i_4_n_0 ),
        .I1(decfsz_reg_0),
        .I2(\w_reg[2] ),
        .I3(\yi[7]_C_i_16_n_0 ),
        .I4(\yi[2]_C_i_7_n_0 ),
        .I5(\w_reg[2]_0 ),
        .O(\yi[2]_C_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \yi[2]_C_i_3 
       (.I0(d),
        .I1(\b_reg[7] [4]),
        .I2(\b_reg[7] [5]),
        .O(\yi[2]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFA200)) 
    \yi[2]_C_i_4 
       (.I0(\yi_reg[0]_C ),
        .I1(andwf),
        .I2(\b_reg[2] ),
        .I3(decf_reg_2),
        .I4(addwf_reg_1),
        .I5(\yi[7]_C_i_5_n_0 ),
        .O(\yi[2]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \yi[2]_C_i_7 
       (.I0(clrwdt),
        .I1(tris),
        .I2(movlw),
        .I3(iorlw),
        .I4(andlw),
        .I5(xorlw),
        .O(\yi[2]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFE54105410)) 
    \yi[3]_C_i_1 
       (.I0(retlw),
        .I1(bsf),
        .I2(\yi[3]_C_i_2_n_0 ),
        .I3(\yi[3]_C_i_3_n_0 ),
        .I4(bcf),
        .I5(Q[3]),
        .O(\yi_reg[3]_C ));
  LUT5 #(
    .INIT(32'hB88BB888)) 
    \yi[3]_C_i_14 
       (.I0(\b_reg[3]_1 ),
        .I1(incf),
        .I2(comf),
        .I3(Q[3]),
        .I4(movf),
        .O(\yi[3]_C_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA8AAAAAAAA)) 
    \yi[3]_C_i_2 
       (.I0(\yi[7]_C_i_16_n_0 ),
        .I1(\yi[7]_C_i_5_n_0 ),
        .I2(addwf_reg_0),
        .I3(andwf_reg_0),
        .I4(\yi[3]_C_i_6_n_0 ),
        .I5(\w_reg[3] ),
        .O(\yi[3]_C_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \yi[3]_C_i_3 
       (.I0(d),
        .I1(\b_reg[7] [4]),
        .I2(\b_reg[7] [5]),
        .O(\yi[3]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \yi[3]_C_i_6 
       (.I0(\yi[2]_C_i_7_n_0 ),
        .I1(option),
        .I2(incfsz),
        .I3(swapf),
        .I4(\yi_reg[3]_C_i_9_n_0 ),
        .I5(\w_reg[3]_0 ),
        .O(\yi[3]_C_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFE54105410)) 
    \yi[4]_C_i_1 
       (.I0(retlw),
        .I1(bsf),
        .I2(\yi[4]_C_i_2_n_0 ),
        .I3(\yi[4]_C_i_3_n_0 ),
        .I4(bcf),
        .I5(Q[4]),
        .O(\yi_reg[4]_C_0 ));
  LUT6 #(
    .INIT(64'hFFC0FFCAFFCA00C0)) 
    \yi[4]_C_i_11 
       (.I0(xorwf),
        .I1(O[0]),
        .I2(addwf),
        .I3(iorwf),
        .I4(\w_reg[7]_2 [3]),
        .I5(Q[4]),
        .O(\yi[4]_C_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000007F7FFFF07F7)) 
    \yi[4]_C_i_12 
       (.I0(subwf),
        .I1(\b_reg[7]_2 [0]),
        .I2(decf),
        .I3(\b_reg[4]_2 ),
        .I4(andwf),
        .I5(\b_reg[4]_3 ),
        .O(\yi[4]_C_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \yi[4]_C_i_13 
       (.I0(andwf),
        .I1(subwf),
        .I2(decf),
        .I3(\w_reg[7]_2 [3]),
        .I4(clrw),
        .I5(clrf),
        .O(\yi[4]_C_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA08AAAAAAAA)) 
    \yi[4]_C_i_2 
       (.I0(\yi[7]_C_i_16_n_0 ),
        .I1(\yi_reg[4]_C ),
        .I2(\b_reg[3] ),
        .I3(\w_reg[4] ),
        .I4(\yi[4]_C_i_6_n_0 ),
        .I5(\w_reg[4]_0 ),
        .O(\yi[4]_C_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \yi[4]_C_i_3 
       (.I0(\b_reg[7] [4]),
        .I1(\b_reg[7] [5]),
        .I2(d),
        .O(\yi[4]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAABABABAB)) 
    \yi[4]_C_i_6 
       (.I0(\yi[2]_C_i_7_n_0 ),
        .I1(\yi[7]_C_i_5_n_0 ),
        .I2(\yi[4]_C_i_11_n_0 ),
        .I3(\yi[4]_C_i_12_n_0 ),
        .I4(\yi[4]_C_i_13_n_0 ),
        .I5(\yi_reg[0]_C ),
        .O(\yi[4]_C_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h888888880C0CC0CC)) 
    \yi[4]_C_i_9 
       (.I0(\b_reg[4]_0 ),
        .I1(\yi[7]_C_i_9_n_0 ),
        .I2(comf),
        .I3(movf),
        .I4(Q[4]),
        .I5(incf),
        .O(\yi_reg[4]_C_1 ));
  LUT6 #(
    .INIT(64'hFEFFFEFE54105410)) 
    \yi[5]_C_i_1 
       (.I0(retlw),
        .I1(bsf),
        .I2(\yi[5]_C_i_2_n_0 ),
        .I3(\yi[5]_C_i_3_n_0 ),
        .I4(bcf),
        .I5(Q[5]),
        .O(\yi_reg[5]_C ));
  LUT6 #(
    .INIT(64'hFFC0FFCAFFCA00C0)) 
    \yi[5]_C_i_11 
       (.I0(xorwf),
        .I1(O[1]),
        .I2(addwf),
        .I3(iorwf),
        .I4(\w_reg[7]_2 [4]),
        .I5(Q[5]),
        .O(\yi[5]_C_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000007F7FFFF07F7)) 
    \yi[5]_C_i_12 
       (.I0(subwf),
        .I1(\b_reg[7]_2 [1]),
        .I2(decf),
        .I3(\b_reg[5]_0 ),
        .I4(andwf),
        .I5(\b_reg[5]_1 ),
        .O(\yi[5]_C_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \yi[5]_C_i_13 
       (.I0(andwf),
        .I1(subwf),
        .I2(decf),
        .I3(\w_reg[7]_2 [4]),
        .I4(clrw),
        .I5(clrf),
        .O(\yi[5]_C_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000444044444444)) 
    \yi[5]_C_i_2 
       (.I0(bcf),
        .I1(mclr),
        .I2(\yi[5]_C_i_4_n_0 ),
        .I3(\w_reg[5]_0 ),
        .I4(\yi[5]_C_i_6_n_0 ),
        .I5(\w_reg[5]_1 ),
        .O(\yi[5]_C_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \yi[5]_C_i_3 
       (.I0(\b_reg[7] [4]),
        .I1(\b_reg[7] [5]),
        .I2(d),
        .O(\yi[5]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100010101000100)) 
    \yi[5]_C_i_4 
       (.I0(option),
        .I1(incfsz),
        .I2(swapf),
        .I3(\yi[5]_C_i_8_n_0 ),
        .I4(\yi[7]_C_i_9_n_0 ),
        .I5(\b_reg[6]_0 ),
        .O(\yi[5]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAABABABAB)) 
    \yi[5]_C_i_6 
       (.I0(\yi[2]_C_i_7_n_0 ),
        .I1(\yi[7]_C_i_5_n_0 ),
        .I2(\yi[5]_C_i_11_n_0 ),
        .I3(\yi[5]_C_i_12_n_0 ),
        .I4(\yi[5]_C_i_13_n_0 ),
        .I5(\yi_reg[0]_C ),
        .O(\yi[5]_C_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h888888880C0CC0CC)) 
    \yi[5]_C_i_8 
       (.I0(\b_reg[5] ),
        .I1(\yi[7]_C_i_9_n_0 ),
        .I2(comf),
        .I3(movf),
        .I4(Q[5]),
        .I5(incf),
        .O(\yi[5]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFE54105410)) 
    \yi[6]_C_i_1 
       (.I0(retlw),
        .I1(bsf),
        .I2(\yi[6]_C_i_2_n_0 ),
        .I3(\yi[6]_C_i_3_n_0 ),
        .I4(bcf),
        .I5(Q[6]),
        .O(\yi_reg[6]_C ));
  LUT6 #(
    .INIT(64'hFFC0FFCAFFCA00C0)) 
    \yi[6]_C_i_11 
       (.I0(xorwf),
        .I1(O[2]),
        .I2(addwf),
        .I3(iorwf),
        .I4(\w_reg[7]_2 [5]),
        .I5(Q[6]),
        .O(\yi[6]_C_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0101010101010001)) 
    \yi[6]_C_i_13 
       (.I0(andwf),
        .I1(subwf),
        .I2(decf),
        .I3(\w_reg[7]_2 [5]),
        .I4(clrw),
        .I5(clrf),
        .O(\yi[6]_C_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000444044444444)) 
    \yi[6]_C_i_2 
       (.I0(bcf),
        .I1(mclr),
        .I2(\yi[6]_C_i_4_n_0 ),
        .I3(\yi[6]_C_i_5_n_0 ),
        .I4(\yi[6]_C_i_6_n_0 ),
        .I5(\w_reg[6] ),
        .O(\yi[6]_C_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \yi[6]_C_i_3 
       (.I0(\b_reg[7] [4]),
        .I1(\b_reg[7] [5]),
        .I2(d),
        .O(\yi[6]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100010001000101)) 
    \yi[6]_C_i_4 
       (.I0(option),
        .I1(incfsz),
        .I2(swapf),
        .I3(\yi[6]_C_i_8_n_0 ),
        .I4(\yi[7]_C_i_9_n_0 ),
        .I5(\b_reg[7]_1 ),
        .O(\yi[6]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8080000F808)) 
    \yi[6]_C_i_5 
       (.I0(swapf),
        .I1(Q[2]),
        .I2(incfsz),
        .I3(\b_reg[6]_1 ),
        .I4(option),
        .I5(\w_reg[7]_2 [5]),
        .O(\yi[6]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABABAAABAB)) 
    \yi[6]_C_i_6 
       (.I0(\yi[2]_C_i_7_n_0 ),
        .I1(\yi[7]_C_i_5_n_0 ),
        .I2(\yi[6]_C_i_11_n_0 ),
        .I3(decf_reg_1),
        .I4(\yi_reg[0]_C ),
        .I5(\yi[6]_C_i_13_n_0 ),
        .O(\yi[6]_C_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8844884400CCCC0C)) 
    \yi[6]_C_i_8 
       (.I0(\b_reg[4] ),
        .I1(\yi[7]_C_i_9_n_0 ),
        .I2(movf),
        .I3(Q[6]),
        .I4(comf),
        .I5(incf),
        .O(\yi[6]_C_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \yi[7]_C_i_1 
       (.I0(\yi[7]_C_i_3_n_0 ),
        .I1(andwf),
        .I2(\yi_reg[0]_C ),
        .I3(\b[7]_i_4_n_0 ),
        .I4(\yi[7]_C_i_5_n_0 ),
        .O(\yi_reg[0]_C_1 ));
  LUT3 #(
    .INIT(8'h01)) 
    \yi[7]_C_i_10 
       (.I0(swapf),
        .I1(incfsz),
        .I2(option),
        .O(\yi_reg[4]_C ));
  LUT6 #(
    .INIT(64'h73BF73BF7FB37FBF)) 
    \yi[7]_C_i_11 
       (.I0(\b_reg[6] ),
        .I1(\yi[7]_C_i_9_n_0 ),
        .I2(incf),
        .I3(Q[7]),
        .I4(movf),
        .I5(comf),
        .O(\yi[7]_C_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAABABABAB)) 
    \yi[7]_C_i_14 
       (.I0(\yi[2]_C_i_7_n_0 ),
        .I1(\yi[7]_C_i_5_n_0 ),
        .I2(\yi[7]_C_i_19_n_0 ),
        .I3(\yi[7]_C_i_20_n_0 ),
        .I4(\yi[7]_C_i_21_n_0 ),
        .I5(\yi_reg[0]_C ),
        .O(\yi[7]_C_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \yi[7]_C_i_16 
       (.I0(mclr),
        .I1(bcf),
        .O(\yi[7]_C_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFC0FFCAFFCA00C0)) 
    \yi[7]_C_i_19 
       (.I0(xorwf),
        .I1(O[3]),
        .I2(addwf),
        .I3(iorwf),
        .I4(\w_reg[7]_2 [6]),
        .I5(Q[7]),
        .O(\yi[7]_C_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFF45FB40FF45FA40)) 
    \yi[7]_C_i_2 
       (.I0(retlw),
        .I1(\yi[7]_C_i_6_n_0 ),
        .I2(bsf),
        .I3(Q[7]),
        .I4(\yi[7]_C_i_7_n_0 ),
        .I5(bcf),
        .O(\yi_reg[7]_C ));
  LUT6 #(
    .INIT(64'h0000F707FFFFF707)) 
    \yi[7]_C_i_20 
       (.I0(subwf),
        .I1(\b_reg[7]_2 [2]),
        .I2(decf),
        .I3(\b_reg[7]_3 ),
        .I4(andwf),
        .I5(\b_reg[7]_4 ),
        .O(\yi[7]_C_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \yi[7]_C_i_21 
       (.I0(andwf),
        .I1(subwf),
        .I2(decf),
        .I3(\w_reg[7]_2 [6]),
        .I4(clrw),
        .I5(clrf),
        .O(\yi[7]_C_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \yi[7]_C_i_3 
       (.I0(\yi[7]_C_i_8_n_0 ),
        .I1(movwf),
        .I2(bcf),
        .I3(bsf),
        .I4(tris),
        .I5(clrwdt),
        .O(\yi[7]_C_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \yi[7]_C_i_4 
       (.I0(iorwf),
        .I1(addwf),
        .I2(xorwf),
        .O(\yi_reg[0]_C ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \yi[7]_C_i_5 
       (.I0(\yi[7]_C_i_9_n_0 ),
        .I1(movf),
        .I2(incf),
        .I3(comf),
        .I4(\yi_reg[4]_C ),
        .O(\yi[7]_C_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \yi[7]_C_i_6 
       (.I0(\b_reg[7] [4]),
        .I1(\b_reg[7] [5]),
        .I2(d),
        .O(\yi[7]_C_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F200000000)) 
    \yi[7]_C_i_7 
       (.I0(\yi[7]_C_i_11_n_0 ),
        .I1(\status_reg[0]_0 ),
        .I2(\w_reg[7]_0 ),
        .I3(\yi[7]_C_i_14_n_0 ),
        .I4(\w_reg[7]_1 ),
        .I5(\yi[7]_C_i_16_n_0 ),
        .O(\yi[7]_C_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \yi[7]_C_i_8 
       (.I0(decf),
        .I1(subwf),
        .I2(clrf),
        .I3(clrw),
        .O(\yi[7]_C_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \yi[7]_C_i_9 
       (.I0(decfsz),
        .I1(rlf),
        .I2(rrf),
        .O(\yi[7]_C_i_9_n_0 ));
  MUXF7 \yi_reg[3]_C_i_9 
       (.I0(\b_reg[4]_1 ),
        .I1(\yi[3]_C_i_14_n_0 ),
        .O(\yi_reg[3]_C_i_9_n_0 ),
        .S(\yi[7]_C_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    z_i_10
       (.I0(z_i_26_n_0),
        .I1(decf_reg_0),
        .I2(andwf),
        .I3(\w_reg[5] ),
        .I4(xorwf),
        .I5(\w_reg[1] ),
        .O(z_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    z_i_26
       (.I0(addwf),
        .I1(iorwf),
        .O(z_i_26_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF70)) 
    z_i_3
       (.I0(\b_reg[6] ),
        .I1(Q[7]),
        .I2(incf),
        .I3(xorlw),
        .I4(andlw),
        .I5(iorlw),
        .O(z_reg));
endmodule

(* ORIG_REF_NAME = "distribute" *) 
module design_1_pic16c56_0_0_distribute
   (\romaddr[9] ,
    \trisa_reg[0]_0 ,
    \romaddr[8] ,
    \romaddr[7] ,
    \romaddr[6] ,
    \romaddr[5] ,
    \romaddr[4] ,
    \romaddr[3] ,
    \romaddr[2] ,
    \romaddr[1] ,
    \romaddr[0] ,
    \stack2_reg[0]_0 ,
    \stack2_reg[0]_1 ,
    \b_reg[6]_0 ,
    \pc_reg[9]_P_0 ,
    \b_reg[4]_0 ,
    \status_reg[2]_0 ,
    \status_reg[1]_0 ,
    status_c,
    Q,
    skip_reg_C,
    \stack1_reg[7]_0 ,
    \pc_reg[9]_P_1 ,
    \pc_reg[9]_P_2 ,
    \yi_reg[7]_C ,
    \yi_reg[3]_C ,
    \yi_reg[6]_C ,
    z_reg,
    \yi_reg[5]_C ,
    \yi_reg[4]_C ,
    RA,
    RB,
    \yi_reg[7]_C_0 ,
    z_reg_0,
    z_reg_1,
    \yi_reg[6]_C_0 ,
    \yi_reg[5]_C_0 ,
    \yi_reg[4]_C_0 ,
    \yi_reg[3]_C_0 ,
    \yi_reg[3]_C_1 ,
    \yi_reg[2]_C ,
    \yi_reg[2]_C_0 ,
    \yi_reg[1]_C ,
    \yi_reg[1]_C_0 ,
    \yi_reg[0]_C ,
    \b_reg[3]_0 ,
    \b_reg[7]_0 ,
    \pc_reg[7]_P_0 ,
    \pc_reg[2]_P_0 ,
    \yi_reg[4]_C_1 ,
    \yi_reg[2]_C_1 ,
    \yi_reg[1]_C_1 ,
    \yi_reg[7]_C_1 ,
    \yi_reg[3]_C_2 ,
    \yi_reg[5]_C_1 ,
    \yi_reg[6]_C_1 ,
    c_reg,
    \yi_reg[2]_C_2 ,
    \yi_reg[3]_C_3 ,
    z_reg_2,
    skip_reg_C_0,
    \yi_reg[6]_C_2 ,
    z_reg_3,
    z_reg_4,
    \yi_reg[2]_C_3 ,
    \pc_reg[3]_P_0 ,
    \pc_reg[0]_P_0 ,
    \pc_reg[1]_P_0 ,
    \pc_reg[2]_P_1 ,
    \pc_reg[3]_P_1 ,
    \pc_reg[6]_P_0 ,
    \pc_reg[7]_P_1 ,
    \b_reg[2]_0 ,
    \b_reg[1]_0 ,
    \b_reg[0]_0 ,
    \yi_reg[4]_C_2 ,
    \yi_reg[5]_C_2 ,
    skip_reg_C_1,
    \yi_reg[2]_C_4 ,
    \yi_reg[3]_C_4 ,
    \yi_reg[7]_C_2 ,
    skip_reg_C_2,
    \yi_reg[5]_C_3 ,
    \yi_reg[4]_C_3 ,
    O,
    \yi_reg[7]_C_3 ,
    z_reg_5,
    \yi_reg[5]_C_4 ,
    \yi_reg[0]_C_0 ,
    z_reg_6,
    dc_reg,
    \b_reg[6]_1 ,
    \b_reg[7]_1 ,
    \b_reg[3]_1 ,
    \b_reg[7]_2 ,
    retlw_reg,
    c2,
    call_reg,
    \yi_reg[6]_C_3 ,
    \yi_reg[3]_C_5 ,
    \yi_reg[2]_C_5 ,
    \yi_reg[1]_C_2 ,
    \yi_reg[0]_C_1 ,
    retlw_reg_0,
    retlw_reg_1,
    bcf_reg,
    D,
    \yi_reg[2]_C_6 ,
    \yi_reg[1]_C_3 ,
    \yi_reg[0]_C_2 ,
    skip_reg_C_3,
    retlw_reg_2,
    addwf,
    p_0_out,
    \trisb_reg[0]_0 ,
    \trisb_reg[1]_0 ,
    \trisb_reg[2]_0 ,
    \trisb_reg[3]_0 ,
    \trisb_reg[4]_0 ,
    \trisb_reg[5]_0 ,
    \trisb_reg[6]_0 ,
    \trisb_reg[7]_0 ,
    iorlw,
    andlw,
    xorlw,
    andwf_reg,
    movf,
    comf,
    iorwf,
    xorwf,
    \k_reg[7] ,
    call,
    bsf_reg,
    \stacklevel_reg[0]_0 ,
    retlw_reg_3,
    goto_reg,
    longk,
    goto,
    retlw,
    d,
    rlf,
    rrf,
    comf_reg,
    rrf_reg,
    decfsz,
    rrf_reg_0,
    rlf_reg,
    rrf_reg_1,
    incf_reg,
    swapf_reg,
    decf,
    \w_reg[2]_0 ,
    andwf,
    iorwf_reg,
    subwf,
    clrw_reg,
    incf,
    retlw_reg_4,
    \stacklevel_reg[0]_1 ,
    \stacklevel_reg[0]_2 ,
    \stacklevel_reg[0]_3 ,
    \stacklevel_reg[0]_4 ,
    mclr,
    movlw,
    tris,
    swapf,
    option,
    incfsz,
    z,
    xorlw_reg,
    \b_reg[7]_3 ,
    dc,
    E,
    \k_reg[1] ,
    \k_reg[7]_0 ,
    CLK,
    retlw_reg_5,
    \k_reg[2] ,
    \k_reg[1]_0 ,
    \k_reg[2]_0 ,
    tris_reg);
  output \romaddr[9] ;
  output \trisa_reg[0]_0 ;
  output \romaddr[8] ;
  output \romaddr[7] ;
  output \romaddr[6] ;
  output \romaddr[5] ;
  output \romaddr[4] ;
  output \romaddr[3] ;
  output \romaddr[2] ;
  output \romaddr[1] ;
  output \romaddr[0] ;
  output \stack2_reg[0]_0 ;
  output \stack2_reg[0]_1 ;
  output \b_reg[6]_0 ;
  output \pc_reg[9]_P_0 ;
  output \b_reg[4]_0 ;
  output \status_reg[2]_0 ;
  output \status_reg[1]_0 ;
  output status_c;
  output [6:0]Q;
  output [7:0]skip_reg_C;
  output \stack1_reg[7]_0 ;
  output \pc_reg[9]_P_1 ;
  output \pc_reg[9]_P_2 ;
  output \yi_reg[7]_C ;
  output \yi_reg[3]_C ;
  output \yi_reg[6]_C ;
  output z_reg;
  output \yi_reg[5]_C ;
  output \yi_reg[4]_C ;
  output [3:0]RA;
  output [7:0]RB;
  output \yi_reg[7]_C_0 ;
  output z_reg_0;
  output z_reg_1;
  output \yi_reg[6]_C_0 ;
  output \yi_reg[5]_C_0 ;
  output \yi_reg[4]_C_0 ;
  output \yi_reg[3]_C_0 ;
  output \yi_reg[3]_C_1 ;
  output \yi_reg[2]_C ;
  output \yi_reg[2]_C_0 ;
  output \yi_reg[1]_C ;
  output \yi_reg[1]_C_0 ;
  output \yi_reg[0]_C ;
  output \b_reg[3]_0 ;
  output \b_reg[7]_0 ;
  output \pc_reg[7]_P_0 ;
  output \pc_reg[2]_P_0 ;
  output \yi_reg[4]_C_1 ;
  output \yi_reg[2]_C_1 ;
  output \yi_reg[1]_C_1 ;
  output \yi_reg[7]_C_1 ;
  output \yi_reg[3]_C_2 ;
  output \yi_reg[5]_C_1 ;
  output \yi_reg[6]_C_1 ;
  output c_reg;
  output \yi_reg[2]_C_2 ;
  output \yi_reg[3]_C_3 ;
  output z_reg_2;
  output skip_reg_C_0;
  output \yi_reg[6]_C_2 ;
  output z_reg_3;
  output z_reg_4;
  output \yi_reg[2]_C_3 ;
  output \pc_reg[3]_P_0 ;
  output \pc_reg[0]_P_0 ;
  output \pc_reg[1]_P_0 ;
  output \pc_reg[2]_P_1 ;
  output \pc_reg[3]_P_1 ;
  output \pc_reg[6]_P_0 ;
  output \pc_reg[7]_P_1 ;
  output \b_reg[2]_0 ;
  output \b_reg[1]_0 ;
  output \b_reg[0]_0 ;
  output \yi_reg[4]_C_2 ;
  output \yi_reg[5]_C_2 ;
  output skip_reg_C_1;
  output \yi_reg[2]_C_4 ;
  output \yi_reg[3]_C_4 ;
  output \yi_reg[7]_C_2 ;
  output skip_reg_C_2;
  output \yi_reg[5]_C_3 ;
  output \yi_reg[4]_C_3 ;
  output [3:0]O;
  output [2:0]\yi_reg[7]_C_3 ;
  output [2:0]z_reg_5;
  output \yi_reg[5]_C_4 ;
  output \yi_reg[0]_C_0 ;
  output z_reg_6;
  output dc_reg;
  output [2:0]\b_reg[6]_1 ;
  output [7:0]\b_reg[7]_1 ;
  output [3:0]\b_reg[3]_1 ;
  output [7:0]\b_reg[7]_2 ;
  input retlw_reg;
  input c2;
  input call_reg;
  input \yi_reg[6]_C_3 ;
  input \yi_reg[3]_C_5 ;
  input \yi_reg[2]_C_5 ;
  input \yi_reg[1]_C_2 ;
  input \yi_reg[0]_C_1 ;
  input retlw_reg_0;
  input retlw_reg_1;
  input bcf_reg;
  input [7:0]D;
  input \yi_reg[2]_C_6 ;
  input \yi_reg[1]_C_3 ;
  input \yi_reg[0]_C_2 ;
  input skip_reg_C_3;
  input retlw_reg_2;
  input addwf;
  input [3:0]p_0_out;
  input \trisb_reg[0]_0 ;
  input \trisb_reg[1]_0 ;
  input \trisb_reg[2]_0 ;
  input \trisb_reg[3]_0 ;
  input \trisb_reg[4]_0 ;
  input \trisb_reg[5]_0 ;
  input \trisb_reg[6]_0 ;
  input \trisb_reg[7]_0 ;
  input iorlw;
  input andlw;
  input xorlw;
  input andwf_reg;
  input movf;
  input comf;
  input iorwf;
  input xorwf;
  input [5:0]\k_reg[7] ;
  input call;
  input bsf_reg;
  input \stacklevel_reg[0]_0 ;
  input retlw_reg_3;
  input goto_reg;
  input [0:0]longk;
  input goto;
  input retlw;
  input d;
  input rlf;
  input rrf;
  input comf_reg;
  input rrf_reg;
  input decfsz;
  input rrf_reg_0;
  input rlf_reg;
  input rrf_reg_1;
  input incf_reg;
  input swapf_reg;
  input decf;
  input \w_reg[2]_0 ;
  input andwf;
  input iorwf_reg;
  input subwf;
  input clrw_reg;
  input incf;
  input retlw_reg_4;
  input \stacklevel_reg[0]_1 ;
  input \stacklevel_reg[0]_2 ;
  input \stacklevel_reg[0]_3 ;
  input \stacklevel_reg[0]_4 ;
  input mclr;
  input movlw;
  input tris;
  input swapf;
  input option;
  input incfsz;
  input z;
  input xorlw_reg;
  input \b_reg[7]_3 ;
  input dc;
  input [0:0]E;
  input [0:0]\k_reg[1] ;
  input [7:0]\k_reg[7]_0 ;
  input CLK;
  input [0:0]retlw_reg_5;
  input [0:0]\k_reg[2] ;
  input [0:0]\k_reg[1]_0 ;
  input [0:0]\k_reg[2]_0 ;
  input [0:0]tris_reg;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [6:0]Q;
  wire [3:0]RA;
  wire [3:0]RA_out;
  wire [7:0]RB;
  wire [7:0]RB_out;
  wire addwf;
  wire andlw;
  wire andwf;
  wire andwf_reg;
  wire \b_reg[0]_0 ;
  wire \b_reg[1]_0 ;
  wire \b_reg[2]_0 ;
  wire \b_reg[3]_0 ;
  wire [3:0]\b_reg[3]_1 ;
  wire \b_reg[4]_0 ;
  wire \b_reg[6]_0 ;
  wire [2:0]\b_reg[6]_1 ;
  wire \b_reg[7]_0 ;
  wire [7:0]\b_reg[7]_1 ;
  wire [7:0]\b_reg[7]_2 ;
  wire \b_reg[7]_3 ;
  wire bcf_reg;
  wire bsf_reg;
  wire c2;
  wire c_i_10_n_0;
  wire c_i_11_n_0;
  wire c_i_13_n_0;
  wire c_i_14_n_0;
  wire c_i_15_n_0;
  wire c_i_16_n_0;
  wire c_i_17_n_0;
  wire c_i_18_n_0;
  wire c_i_19_n_0;
  wire c_i_20_n_0;
  wire c_i_3_n_0;
  wire c_i_8_n_0;
  wire c_i_9_n_0;
  wire c_reg;
  wire c_reg_i_12_n_0;
  wire c_reg_i_12_n_1;
  wire c_reg_i_12_n_2;
  wire c_reg_i_12_n_3;
  wire c_reg_i_12_n_4;
  wire c_reg_i_4_n_3;
  wire c_reg_i_5_n_3;
  wire c_reg_i_6_n_0;
  wire c_reg_i_6_n_1;
  wire c_reg_i_6_n_2;
  wire c_reg_i_6_n_3;
  wire c_reg_i_7_n_0;
  wire c_reg_i_7_n_1;
  wire c_reg_i_7_n_2;
  wire c_reg_i_7_n_3;
  wire c_reg_i_7_n_5;
  wire call;
  wire call_reg;
  wire clrw_reg;
  wire comf;
  wire comf_reg;
  wire d;
  wire dc;
  wire dc_i_2_n_0;
  wire dc_i_3_n_0;
  wire dc_i_4_n_0;
  wire dc_i_5_n_0;
  wire dc_i_6_n_0;
  wire dc_i_7_n_0;
  wire dc_reg;
  wire decf;
  wire decfsz;
  wire goto;
  wire goto_reg;
  wire incf;
  wire incf_reg;
  wire incfsz;
  wire iorlw;
  wire iorwf;
  wire iorwf_reg;
  wire [0:0]\k_reg[1] ;
  wire [0:0]\k_reg[1]_0 ;
  wire [0:0]\k_reg[2] ;
  wire [0:0]\k_reg[2]_0 ;
  wire [5:0]\k_reg[7] ;
  wire [7:0]\k_reg[7]_0 ;
  wire [0:0]longk;
  wire mclr;
  wire movf;
  wire movlw;
  wire option;
  wire [3:0]p_0_out;
  wire \pc[2]_P_i_4_n_0 ;
  wire \pc[2]_P_i_5_n_0 ;
  wire \pc[4]_P_i_1_n_0 ;
  wire \pc[4]_P_i_3_n_0 ;
  wire \pc[4]_P_i_4_n_0 ;
  wire \pc[4]_P_i_5_n_0 ;
  wire \pc[4]_P_i_6_n_0 ;
  wire \pc[5]_P_i_1_n_0 ;
  wire \pc[5]_P_i_2_n_0 ;
  wire \pc[5]_P_i_3_n_0 ;
  wire \pc[5]_P_i_4_n_0 ;
  wire \pc[7]_P_i_6_n_0 ;
  wire \pc[7]_P_i_7_n_0 ;
  wire \pc[8]_P_i_1_n_0 ;
  wire \pc[8]_P_i_2_n_0 ;
  wire \pc[8]_P_i_4_n_0 ;
  wire \pc[8]_P_i_5_n_0 ;
  wire \pc[8]_P_i_6_n_0 ;
  wire \pc[9]_P_i_2_n_0 ;
  wire \pc[9]_P_i_4_n_0 ;
  wire \pc[9]_P_i_6_n_0 ;
  wire \pc_reg[0]_P_0 ;
  wire \pc_reg[1]_P_0 ;
  wire \pc_reg[2]_P_0 ;
  wire \pc_reg[2]_P_1 ;
  wire \pc_reg[3]_P_0 ;
  wire \pc_reg[3]_P_1 ;
  wire \pc_reg[6]_P_0 ;
  wire \pc_reg[7]_P_0 ;
  wire \pc_reg[7]_P_1 ;
  wire \pc_reg[9]_P_0 ;
  wire \pc_reg[9]_P_1 ;
  wire \pc_reg[9]_P_2 ;
  wire retlw;
  wire retlw_reg;
  wire retlw_reg_0;
  wire retlw_reg_1;
  wire retlw_reg_2;
  wire retlw_reg_3;
  wire retlw_reg_4;
  wire [0:0]retlw_reg_5;
  wire rlf;
  wire rlf_reg;
  wire \romaddr[0] ;
  wire \romaddr[1] ;
  wire \romaddr[2] ;
  wire \romaddr[3] ;
  wire \romaddr[4] ;
  wire \romaddr[5] ;
  wire \romaddr[6] ;
  wire \romaddr[7] ;
  wire \romaddr[8] ;
  wire \romaddr[9] ;
  wire rrf;
  wire rrf_reg;
  wire rrf_reg_0;
  wire rrf_reg_1;
  wire \rtccount_reg_n_0_[0] ;
  wire \rtccount_reg_n_0_[1] ;
  wire \rtccount_reg_n_0_[2] ;
  wire \rtccount_reg_n_0_[3] ;
  wire \rtccount_reg_n_0_[7] ;
  wire skip_C_i_7_n_0;
  wire skip_C_i_8_n_0;
  wire skip_C_i_9_n_0;
  wire [7:0]skip_reg_C;
  wire skip_reg_C_0;
  wire skip_reg_C_1;
  wire skip_reg_C_2;
  wire skip_reg_C_3;
  wire stack1;
  wire \stack1_reg[7]_0 ;
  wire \stack1_reg_n_0_[0] ;
  wire \stack1_reg_n_0_[1] ;
  wire \stack1_reg_n_0_[2] ;
  wire \stack1_reg_n_0_[3] ;
  wire \stack1_reg_n_0_[4] ;
  wire \stack1_reg_n_0_[5] ;
  wire \stack1_reg_n_0_[6] ;
  wire \stack1_reg_n_0_[7] ;
  wire \stack1_reg_n_0_[8] ;
  wire \stack1_reg_n_0_[9] ;
  wire stack2;
  wire \stack2[0]_i_1_n_0 ;
  wire \stack2[1]_i_1_n_0 ;
  wire \stack2[2]_i_1_n_0 ;
  wire \stack2[3]_i_1_n_0 ;
  wire \stack2[4]_i_1_n_0 ;
  wire \stack2[5]_i_1_n_0 ;
  wire \stack2[5]_i_2_n_0 ;
  wire \stack2[6]_i_1_n_0 ;
  wire \stack2[7]_i_1_n_0 ;
  wire \stack2[8]_i_1_n_0 ;
  wire \stack2[9]_i_2_n_0 ;
  wire \stack2[9]_i_3_n_0 ;
  wire \stack2_reg[0]_0 ;
  wire \stack2_reg[0]_1 ;
  wire \stack2_reg_n_0_[0] ;
  wire \stack2_reg_n_0_[1] ;
  wire \stack2_reg_n_0_[2] ;
  wire \stack2_reg_n_0_[3] ;
  wire \stack2_reg_n_0_[4] ;
  wire \stack2_reg_n_0_[5] ;
  wire \stack2_reg_n_0_[6] ;
  wire \stack2_reg_n_0_[7] ;
  wire \stack2_reg_n_0_[8] ;
  wire \stack2_reg_n_0_[9] ;
  wire \stacklevel_reg[0]_0 ;
  wire \stacklevel_reg[0]_1 ;
  wire \stacklevel_reg[0]_2 ;
  wire \stacklevel_reg[0]_3 ;
  wire \stacklevel_reg[0]_4 ;
  wire status_c;
  wire \status_reg[1]_0 ;
  wire \status_reg[2]_0 ;
  wire \status_reg_n_0_[3] ;
  wire \status_reg_n_0_[7] ;
  wire subwf;
  wire swapf;
  wire swapf_reg;
  wire tris;
  wire [0:0]tris_reg;
  wire \trisa_reg[0]_0 ;
  wire \trisb_reg[0]_0 ;
  wire \trisb_reg[1]_0 ;
  wire \trisb_reg[2]_0 ;
  wire \trisb_reg[3]_0 ;
  wire \trisb_reg[4]_0 ;
  wire \trisb_reg[5]_0 ;
  wire \trisb_reg[6]_0 ;
  wire \trisb_reg[7]_0 ;
  wire [3:3]w;
  wire \w_reg[2]_0 ;
  wire xorlw;
  wire xorlw_reg;
  wire xorwf;
  wire \yi[1]_C_i_10_n_0 ;
  wire \yi[1]_C_i_14_n_0 ;
  wire \yi[1]_C_i_15_n_0 ;
  wire \yi[2]_C_i_12_n_0 ;
  wire \yi[2]_C_i_15_n_0 ;
  wire \yi[2]_C_i_16_n_0 ;
  wire \yi[2]_C_i_17_n_0 ;
  wire \yi[3]_C_i_11_n_0 ;
  wire \yi[3]_C_i_12_n_0 ;
  wire \yi[3]_C_i_8_n_0 ;
  wire \yi[4]_C_i_14_n_0 ;
  wire \yi[4]_C_i_8_n_0 ;
  wire \yi[5]_C_i_14_n_0 ;
  wire \yi[5]_C_i_15_n_0 ;
  wire \yi[6]_C_i_14_n_0 ;
  wire \yi[6]_C_i_15_n_0 ;
  wire \yi[7]_C_i_17_n_0 ;
  wire \yi[7]_C_i_18_n_0 ;
  wire \yi[7]_C_i_22_n_0 ;
  wire \yi_reg[0]_C ;
  wire \yi_reg[0]_C_0 ;
  wire \yi_reg[0]_C_1 ;
  wire \yi_reg[0]_C_2 ;
  wire \yi_reg[1]_C ;
  wire \yi_reg[1]_C_0 ;
  wire \yi_reg[1]_C_1 ;
  wire \yi_reg[1]_C_2 ;
  wire \yi_reg[1]_C_3 ;
  wire \yi_reg[2]_C ;
  wire \yi_reg[2]_C_0 ;
  wire \yi_reg[2]_C_1 ;
  wire \yi_reg[2]_C_2 ;
  wire \yi_reg[2]_C_3 ;
  wire \yi_reg[2]_C_4 ;
  wire \yi_reg[2]_C_5 ;
  wire \yi_reg[2]_C_6 ;
  wire \yi_reg[3]_C ;
  wire \yi_reg[3]_C_0 ;
  wire \yi_reg[3]_C_1 ;
  wire \yi_reg[3]_C_2 ;
  wire \yi_reg[3]_C_3 ;
  wire \yi_reg[3]_C_4 ;
  wire \yi_reg[3]_C_5 ;
  wire \yi_reg[4]_C ;
  wire \yi_reg[4]_C_0 ;
  wire \yi_reg[4]_C_1 ;
  wire \yi_reg[4]_C_2 ;
  wire \yi_reg[4]_C_3 ;
  wire \yi_reg[5]_C ;
  wire \yi_reg[5]_C_0 ;
  wire \yi_reg[5]_C_1 ;
  wire \yi_reg[5]_C_2 ;
  wire \yi_reg[5]_C_3 ;
  wire \yi_reg[5]_C_4 ;
  wire \yi_reg[6]_C ;
  wire \yi_reg[6]_C_0 ;
  wire \yi_reg[6]_C_1 ;
  wire \yi_reg[6]_C_2 ;
  wire \yi_reg[6]_C_3 ;
  wire \yi_reg[7]_C ;
  wire \yi_reg[7]_C_0 ;
  wire \yi_reg[7]_C_1 ;
  wire \yi_reg[7]_C_2 ;
  wire [2:0]\yi_reg[7]_C_3 ;
  wire z;
  wire z_i_11_n_0;
  wire z_i_12_n_0;
  wire z_i_14_n_0;
  wire z_i_15_n_0;
  wire z_i_16_n_0;
  wire z_i_17_n_0;
  wire z_i_19_n_0;
  wire z_i_21_n_0;
  wire z_i_22_n_0;
  wire z_i_23_n_0;
  wire z_i_25_n_0;
  wire z_i_28_n_0;
  wire z_i_29_n_0;
  wire z_i_2_n_0;
  wire z_i_30_n_0;
  wire z_i_31_n_0;
  wire z_i_32_n_0;
  wire z_i_33_n_0;
  wire z_i_34_n_0;
  wire z_i_35_n_0;
  wire z_i_36_n_0;
  wire z_i_37_n_0;
  wire z_i_4_n_0;
  wire z_i_5_n_0;
  wire z_i_8_n_0;
  wire z_i_9_n_0;
  wire z_reg;
  wire z_reg_0;
  wire z_reg_1;
  wire z_reg_2;
  wire z_reg_3;
  wire z_reg_4;
  wire [2:0]z_reg_5;
  wire z_reg_6;
  wire z_reg_i_24_n_0;
  wire z_reg_i_24_n_1;
  wire z_reg_i_24_n_2;
  wire z_reg_i_24_n_3;
  wire z_reg_i_24_n_4;
  wire z_reg_i_24_n_5;
  wire z_reg_i_24_n_6;
  wire z_reg_i_24_n_7;
  wire [3:1]NLW_c_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_c_reg_i_4_O_UNCONNECTED;
  wire [3:1]NLW_c_reg_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_c_reg_i_5_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \RA[0]_INST_0 
       (.I0(RA_out[0]),
        .I1(p_0_out[0]),
        .O(RA[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \RA[1]_INST_0 
       (.I0(RA_out[1]),
        .I1(p_0_out[1]),
        .O(RA[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \RA[2]_INST_0 
       (.I0(RA_out[2]),
        .I1(p_0_out[2]),
        .O(RA[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \RA[3]_INST_0 
       (.I0(RA_out[3]),
        .I1(p_0_out[3]),
        .O(RA[3]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RA_out_reg[0] 
       (.C(c2),
        .CE(\k_reg[1]_0 ),
        .D(D[0]),
        .Q(RA_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RA_out_reg[1] 
       (.C(c2),
        .CE(\k_reg[1]_0 ),
        .D(D[1]),
        .Q(RA_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RA_out_reg[2] 
       (.C(c2),
        .CE(\k_reg[1]_0 ),
        .D(D[2]),
        .Q(RA_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RA_out_reg[3] 
       (.C(c2),
        .CE(\k_reg[1]_0 ),
        .D(D[3]),
        .Q(RA_out[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \RB[0]_INST_0 
       (.I0(RB_out[0]),
        .I1(\trisb_reg[0]_0 ),
        .O(RB[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \RB[1]_INST_0 
       (.I0(RB_out[1]),
        .I1(\trisb_reg[1]_0 ),
        .O(RB[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \RB[2]_INST_0 
       (.I0(RB_out[2]),
        .I1(\trisb_reg[2]_0 ),
        .O(RB[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \RB[3]_INST_0 
       (.I0(RB_out[3]),
        .I1(\trisb_reg[3]_0 ),
        .O(RB[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \RB[4]_INST_0 
       (.I0(RB_out[4]),
        .I1(\trisb_reg[4]_0 ),
        .O(RB[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \RB[5]_INST_0 
       (.I0(RB_out[5]),
        .I1(\trisb_reg[5]_0 ),
        .O(RB[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \RB[6]_INST_0 
       (.I0(RB_out[6]),
        .I1(\trisb_reg[6]_0 ),
        .O(RB[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \RB[7]_INST_0 
       (.I0(RB_out[7]),
        .I1(\trisb_reg[7]_0 ),
        .O(RB[7]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RB_out_reg[0] 
       (.C(c2),
        .CE(\k_reg[2] ),
        .D(D[0]),
        .Q(RB_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RB_out_reg[1] 
       (.C(c2),
        .CE(\k_reg[2] ),
        .D(D[1]),
        .Q(RB_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RB_out_reg[2] 
       (.C(c2),
        .CE(\k_reg[2] ),
        .D(D[2]),
        .Q(RB_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RB_out_reg[3] 
       (.C(c2),
        .CE(\k_reg[2] ),
        .D(D[3]),
        .Q(RB_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RB_out_reg[4] 
       (.C(c2),
        .CE(\k_reg[2] ),
        .D(D[4]),
        .Q(RB_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RB_out_reg[5] 
       (.C(c2),
        .CE(\k_reg[2] ),
        .D(D[5]),
        .Q(RB_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RB_out_reg[6] 
       (.C(c2),
        .CE(\k_reg[2] ),
        .D(D[6]),
        .Q(RB_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RB_out_reg[7] 
       (.C(c2),
        .CE(\k_reg[2] ),
        .D(D[7]),
        .Q(RB_out[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \b[0]_i_4 
       (.I0(status_c),
        .I1(\romaddr[0] ),
        .I2(\k_reg[7] [1]),
        .I3(\k_reg[7] [0]),
        .I4(\rtccount_reg_n_0_[0] ),
        .O(\b_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \b[1]_i_4 
       (.I0(\status_reg[1]_0 ),
        .I1(\romaddr[1] ),
        .I2(\k_reg[7] [1]),
        .I3(\k_reg[7] [0]),
        .I4(\rtccount_reg_n_0_[1] ),
        .O(\b_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \b[2]_i_2 
       (.I0(\status_reg[2]_0 ),
        .I1(\romaddr[2] ),
        .I2(\k_reg[7] [1]),
        .I3(\k_reg[7] [0]),
        .I4(\rtccount_reg_n_0_[2] ),
        .O(\b_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h503F5F3F)) 
    \b[3]_i_4 
       (.I0(\status_reg_n_0_[3] ),
        .I1(\romaddr[3] ),
        .I2(\k_reg[7] [1]),
        .I3(\k_reg[7] [0]),
        .I4(\rtccount_reg_n_0_[3] ),
        .O(\b_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0C0A0F000C0A0000)) 
    \b[7]_i_3 
       (.I0(\romaddr[7] ),
        .I1(\status_reg_n_0_[7] ),
        .I2(\k_reg[7] [2]),
        .I3(\k_reg[7] [0]),
        .I4(\k_reg[7] [1]),
        .I5(\rtccount_reg_n_0_[7] ),
        .O(\b_reg[7]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \b_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\k_reg[7]_0 [0]),
        .Q(skip_reg_C[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \b_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\k_reg[7]_0 [1]),
        .Q(skip_reg_C[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \b_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\k_reg[7]_0 [2]),
        .Q(skip_reg_C[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \b_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\k_reg[7]_0 [3]),
        .Q(skip_reg_C[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \b_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\k_reg[7]_0 [4]),
        .Q(skip_reg_C[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \b_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\k_reg[7]_0 [5]),
        .Q(skip_reg_C[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \b_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\k_reg[7]_0 [6]),
        .Q(skip_reg_C[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \b_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\k_reg[7]_0 [7]),
        .Q(skip_reg_C[7]));
  LUT2 #(
    .INIT(4'h6)) 
    c_i_10
       (.I0(skip_reg_C[5]),
        .I1(Q[4]),
        .O(c_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c_i_11
       (.I0(skip_reg_C[4]),
        .I1(Q[3]),
        .O(c_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    c_i_13
       (.I0(Q[6]),
        .I1(skip_reg_C[7]),
        .O(c_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    c_i_14
       (.I0(Q[5]),
        .I1(skip_reg_C[6]),
        .O(c_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    c_i_15
       (.I0(Q[4]),
        .I1(skip_reg_C[5]),
        .O(c_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    c_i_16
       (.I0(Q[3]),
        .I1(skip_reg_C[4]),
        .O(c_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    c_i_17
       (.I0(w),
        .I1(skip_reg_C[3]),
        .O(c_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    c_i_18
       (.I0(Q[2]),
        .I1(skip_reg_C[2]),
        .O(c_i_18_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    c_i_19
       (.I0(Q[1]),
        .I1(skip_reg_C[1]),
        .O(c_i_19_n_0));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    c_i_2
       (.I0(c_i_3_n_0),
        .I1(rrf),
        .I2(rlf),
        .I3(c_reg_i_4_n_3),
        .I4(addwf),
        .I5(c_reg_i_5_n_3),
        .O(c_reg));
  LUT2 #(
    .INIT(4'h9)) 
    c_i_20
       (.I0(Q[0]),
        .I1(skip_reg_C[0]),
        .O(c_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    c_i_3
       (.I0(skip_reg_C[7]),
        .I1(rlf),
        .I2(skip_reg_C[0]),
        .O(c_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c_i_8
       (.I0(skip_reg_C[7]),
        .I1(Q[6]),
        .O(c_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    c_i_9
       (.I0(skip_reg_C[6]),
        .I1(Q[5]),
        .O(c_i_9_n_0));
  CARRY4 c_reg_i_12
       (.CI(1'b0),
        .CO({c_reg_i_12_n_0,c_reg_i_12_n_1,c_reg_i_12_n_2,c_reg_i_12_n_3}),
        .CYINIT(1'b1),
        .DI(skip_reg_C[3:0]),
        .O({c_reg_i_12_n_4,z_reg_5}),
        .S({c_i_17_n_0,c_i_18_n_0,c_i_19_n_0,c_i_20_n_0}));
  CARRY4 c_reg_i_4
       (.CI(c_reg_i_6_n_0),
        .CO({NLW_c_reg_i_4_CO_UNCONNECTED[3:1],c_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_c_reg_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 c_reg_i_5
       (.CI(c_reg_i_7_n_0),
        .CO({NLW_c_reg_i_5_CO_UNCONNECTED[3:1],c_reg_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_c_reg_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 c_reg_i_6
       (.CI(z_reg_i_24_n_0),
        .CO({c_reg_i_6_n_0,c_reg_i_6_n_1,c_reg_i_6_n_2,c_reg_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(skip_reg_C[7:4]),
        .O(O),
        .S({c_i_8_n_0,c_i_9_n_0,c_i_10_n_0,c_i_11_n_0}));
  CARRY4 c_reg_i_7
       (.CI(c_reg_i_12_n_0),
        .CO({c_reg_i_7_n_0,c_reg_i_7_n_1,c_reg_i_7_n_2,c_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI(skip_reg_C[7:4]),
        .O({\yi_reg[7]_C_3 [2],c_reg_i_7_n_5,\yi_reg[7]_C_3 [1:0]}),
        .S({c_i_13_n_0,c_i_14_n_0,c_i_15_n_0,c_i_16_n_0}));
  LUT6 #(
    .INIT(64'hFE02FEFEFE02FE02)) 
    dc_i_1
       (.I0(dc),
        .I1(subwf),
        .I2(addwf),
        .I3(dc_i_2_n_0),
        .I4(dc_i_3_n_0),
        .I5(dc_i_4_n_0),
        .O(dc_reg));
  LUT6 #(
    .INIT(64'h4504450405004504)) 
    dc_i_2
       (.I0(addwf),
        .I1(dc_i_5_n_0),
        .I2(w),
        .I3(skip_reg_C[3]),
        .I4(Q[2]),
        .I5(skip_reg_C[2]),
        .O(dc_i_2_n_0));
  LUT6 #(
    .INIT(64'h00FF2BFF2BFFFFFF)) 
    dc_i_3
       (.I0(dc_i_6_n_0),
        .I1(Q[2]),
        .I2(skip_reg_C[2]),
        .I3(addwf),
        .I4(skip_reg_C[3]),
        .I5(w),
        .O(dc_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hF888FFFF)) 
    dc_i_4
       (.I0(skip_reg_C[0]),
        .I1(Q[0]),
        .I2(skip_reg_C[1]),
        .I3(Q[1]),
        .I4(dc_i_7_n_0),
        .O(dc_i_4_n_0));
  LUT6 #(
    .INIT(64'hB0FBB0FBFFFFB0FB)) 
    dc_i_5
       (.I0(skip_reg_C[0]),
        .I1(Q[0]),
        .I2(skip_reg_C[1]),
        .I3(Q[1]),
        .I4(skip_reg_C[2]),
        .I5(Q[2]),
        .O(dc_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h1)) 
    dc_i_6
       (.I0(skip_reg_C[1]),
        .I1(Q[1]),
        .O(dc_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    dc_i_7
       (.I0(w),
        .I1(skip_reg_C[3]),
        .I2(Q[2]),
        .I3(skip_reg_C[2]),
        .O(dc_i_7_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frs_reg_reg[0] 
       (.C(c2),
        .CE(\k_reg[1] ),
        .D(D[0]),
        .Q(\b_reg[7]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frs_reg_reg[1] 
       (.C(c2),
        .CE(\k_reg[1] ),
        .D(D[1]),
        .Q(\b_reg[7]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frs_reg_reg[2] 
       (.C(c2),
        .CE(\k_reg[1] ),
        .D(D[2]),
        .Q(\b_reg[7]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frs_reg_reg[3] 
       (.C(c2),
        .CE(\k_reg[1] ),
        .D(D[3]),
        .Q(\b_reg[7]_1 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frs_reg_reg[4] 
       (.C(c2),
        .CE(\k_reg[1] ),
        .D(D[4]),
        .Q(\b_reg[7]_1 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frs_reg_reg[5] 
       (.C(c2),
        .CE(\k_reg[1] ),
        .D(D[5]),
        .Q(\b_reg[7]_1 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frs_reg_reg[6] 
       (.C(c2),
        .CE(\k_reg[1] ),
        .D(D[6]),
        .Q(\b_reg[7]_1 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frs_reg_reg[7] 
       (.C(c2),
        .CE(\k_reg[1] ),
        .D(D[7]),
        .Q(\b_reg[7]_1 [7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    osc2_i_2
       (.I0(mclr),
        .O(\trisa_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0044400000004000)) 
    \pc[0]_P_i_4 
       (.I0(call),
        .I1(retlw),
        .I2(\stack1_reg_n_0_[0] ),
        .I3(\stack2_reg[0]_1 ),
        .I4(\stack2_reg[0]_0 ),
        .I5(\stack2_reg_n_0_[0] ),
        .O(\pc_reg[0]_P_0 ));
  LUT6 #(
    .INIT(64'h0044400000004000)) 
    \pc[1]_P_i_4 
       (.I0(call),
        .I1(retlw),
        .I2(\stack2_reg_n_0_[1] ),
        .I3(\stack2_reg[0]_0 ),
        .I4(\stack2_reg[0]_1 ),
        .I5(\stack1_reg_n_0_[1] ),
        .O(\pc_reg[1]_P_0 ));
  LUT6 #(
    .INIT(64'h0002020202020002)) 
    \pc[2]_P_i_2 
       (.I0(\pc[2]_P_i_4_n_0 ),
        .I1(retlw),
        .I2(call),
        .I3(skip_reg_C_3),
        .I4(\romaddr[2] ),
        .I5(\romaddr[1] ),
        .O(\pc_reg[2]_P_0 ));
  LUT6 #(
    .INIT(64'hAFEAAAEAAAAAAAAA)) 
    \pc[2]_P_i_3 
       (.I0(\pc[2]_P_i_5_n_0 ),
        .I1(\stack1_reg_n_0_[2] ),
        .I2(\stack2_reg[0]_1 ),
        .I3(\stack2_reg[0]_0 ),
        .I4(\stack2_reg_n_0_[2] ),
        .I5(retlw_reg_4),
        .O(\pc_reg[2]_P_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF006A6A)) 
    \pc[2]_P_i_4 
       (.I0(\romaddr[2] ),
        .I1(\romaddr[1] ),
        .I2(\romaddr[0] ),
        .I3(\k_reg[7] [2]),
        .I4(goto),
        .I5(skip_reg_C_3),
        .O(\pc[2]_P_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hDDC1DD00)) 
    \pc[2]_P_i_5 
       (.I0(mclr),
        .I1(\stack2_reg[0]_0 ),
        .I2(\stack2_reg[0]_1 ),
        .I3(call),
        .I4(retlw),
        .O(\pc[2]_P_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF38080000)) 
    \pc[3]_P_i_3 
       (.I0(\stack1_reg_n_0_[3] ),
        .I1(\stack2_reg[0]_1 ),
        .I2(\stack2_reg[0]_0 ),
        .I3(\stack2_reg_n_0_[3] ),
        .I4(retlw_reg_4),
        .I5(\stacklevel_reg[0]_1 ),
        .O(\pc_reg[3]_P_1 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \pc[3]_P_i_4 
       (.I0(\romaddr[1] ),
        .I1(\romaddr[2] ),
        .O(\pc_reg[3]_P_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EEFEEEFE)) 
    \pc[4]_P_i_1 
       (.I0(\stacklevel_reg[0]_0 ),
        .I1(\pc[4]_P_i_3_n_0 ),
        .I2(\pc[4]_P_i_4_n_0 ),
        .I3(\pc[4]_P_i_5_n_0 ),
        .I4(D[4]),
        .I5(bsf_reg),
        .O(\pc[4]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0044400000004000)) 
    \pc[4]_P_i_3 
       (.I0(call),
        .I1(retlw),
        .I2(\stack2_reg_n_0_[4] ),
        .I3(\stack2_reg[0]_0 ),
        .I4(\stack2_reg[0]_1 ),
        .I5(\stack1_reg_n_0_[4] ),
        .O(\pc[4]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF009A9A)) 
    \pc[4]_P_i_4 
       (.I0(\romaddr[4] ),
        .I1(\pc[4]_P_i_6_n_0 ),
        .I2(\romaddr[0] ),
        .I3(\k_reg[7] [3]),
        .I4(goto),
        .I5(skip_reg_C_3),
        .O(\pc[4]_P_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h95550000FFFFFFFF)) 
    \pc[4]_P_i_5 
       (.I0(\romaddr[4] ),
        .I1(\romaddr[3] ),
        .I2(\romaddr[1] ),
        .I3(\romaddr[2] ),
        .I4(skip_reg_C_3),
        .I5(retlw_reg_2),
        .O(\pc[4]_P_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pc[4]_P_i_6 
       (.I0(\romaddr[2] ),
        .I1(\romaddr[1] ),
        .I2(\romaddr[3] ),
        .O(\pc[4]_P_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000AAEAAAEA)) 
    \pc[5]_P_i_1 
       (.I0(\pc[5]_P_i_2_n_0 ),
        .I1(\pc[5]_P_i_3_n_0 ),
        .I2(retlw_reg_2),
        .I3(\pc[5]_P_i_4_n_0 ),
        .I4(D[5]),
        .I5(bsf_reg),
        .O(\pc[5]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF38080000)) 
    \pc[5]_P_i_2 
       (.I0(\stack1_reg_n_0_[5] ),
        .I1(\stack2_reg[0]_1 ),
        .I2(\stack2_reg[0]_0 ),
        .I3(\stack2_reg_n_0_[5] ),
        .I4(retlw_reg_4),
        .I5(\stacklevel_reg[0]_2 ),
        .O(\pc[5]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF009A9A)) 
    \pc[5]_P_i_3 
       (.I0(\romaddr[5] ),
        .I1(\stack2[5]_i_2_n_0 ),
        .I2(\romaddr[0] ),
        .I3(d),
        .I4(goto),
        .I5(skip_reg_C_3),
        .O(\pc[5]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h800000002AAAAAAA)) 
    \pc[5]_P_i_4 
       (.I0(skip_reg_C_3),
        .I1(\romaddr[3] ),
        .I2(\romaddr[1] ),
        .I3(\romaddr[2] ),
        .I4(\romaddr[4] ),
        .I5(\romaddr[5] ),
        .O(\pc[5]_P_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF38080000)) 
    \pc[6]_P_i_3 
       (.I0(\stack1_reg_n_0_[6] ),
        .I1(\stack2_reg[0]_1 ),
        .I2(\stack2_reg[0]_0 ),
        .I3(\stack2_reg_n_0_[6] ),
        .I4(retlw_reg_4),
        .I5(\stacklevel_reg[0]_3 ),
        .O(\pc_reg[6]_P_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF38080000)) 
    \pc[7]_P_i_2 
       (.I0(\stack1_reg_n_0_[7] ),
        .I1(\stack2_reg[0]_1 ),
        .I2(\stack2_reg[0]_0 ),
        .I3(\stack2_reg_n_0_[7] ),
        .I4(retlw_reg_4),
        .I5(\stacklevel_reg[0]_4 ),
        .O(\pc_reg[7]_P_1 ));
  LUT6 #(
    .INIT(64'h909F909F9F9F9090)) 
    \pc[7]_P_i_3 
       (.I0(\romaddr[7] ),
        .I1(\pc[7]_P_i_6_n_0 ),
        .I2(skip_reg_C_3),
        .I3(\k_reg[7] [5]),
        .I4(\pc[7]_P_i_7_n_0 ),
        .I5(goto),
        .O(\pc_reg[7]_P_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pc[7]_P_i_6 
       (.I0(\romaddr[6] ),
        .I1(\romaddr[5] ),
        .I2(\romaddr[3] ),
        .I3(\romaddr[1] ),
        .I4(\romaddr[2] ),
        .I5(\romaddr[4] ),
        .O(\pc[7]_P_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h5955)) 
    \pc[7]_P_i_7 
       (.I0(\romaddr[7] ),
        .I1(\romaddr[6] ),
        .I2(\stack1_reg[7]_0 ),
        .I3(\romaddr[0] ),
        .O(\pc[7]_P_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF444F)) 
    \pc[8]_P_i_1 
       (.I0(\pc[8]_P_i_2_n_0 ),
        .I1(retlw_reg_2),
        .I2(retlw_reg_3),
        .I3(\pc[9]_P_i_4_n_0 ),
        .I4(\pc[8]_P_i_4_n_0 ),
        .I5(bsf_reg),
        .O(\pc[8]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h909F909F9F9F9090)) 
    \pc[8]_P_i_2 
       (.I0(\romaddr[8] ),
        .I1(\pc[8]_P_i_5_n_0 ),
        .I2(skip_reg_C_3),
        .I3(longk),
        .I4(\pc[8]_P_i_6_n_0 ),
        .I5(goto),
        .O(\pc[8]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0044400000004000)) 
    \pc[8]_P_i_4 
       (.I0(call),
        .I1(retlw),
        .I2(\stack2_reg_n_0_[8] ),
        .I3(\stack2_reg[0]_0 ),
        .I4(\stack2_reg[0]_1 ),
        .I5(\stack1_reg_n_0_[8] ),
        .O(\pc[8]_P_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pc[8]_P_i_5 
       (.I0(\stack1_reg[7]_0 ),
        .I1(\romaddr[6] ),
        .I2(\romaddr[7] ),
        .O(\pc[8]_P_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h59555555)) 
    \pc[8]_P_i_6 
       (.I0(\romaddr[8] ),
        .I1(\romaddr[0] ),
        .I2(\stack1_reg[7]_0 ),
        .I3(\romaddr[6] ),
        .I4(\romaddr[7] ),
        .O(\pc[8]_P_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555955555555555)) 
    \pc[9]_P_i_10 
       (.I0(\romaddr[9] ),
        .I1(\romaddr[8] ),
        .I2(\romaddr[7] ),
        .I3(\romaddr[6] ),
        .I4(\stack1_reg[7]_0 ),
        .I5(\romaddr[0] ),
        .O(\pc_reg[9]_P_1 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h59555555)) 
    \pc[9]_P_i_12 
       (.I0(\romaddr[9] ),
        .I1(\romaddr[8] ),
        .I2(\stack1_reg[7]_0 ),
        .I3(\romaddr[6] ),
        .I4(\romaddr[7] ),
        .O(\pc_reg[9]_P_2 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFF3FFF1)) 
    \pc[9]_P_i_2 
       (.I0(\pc[9]_P_i_4_n_0 ),
        .I1(retlw_reg_3),
        .I2(\pc[9]_P_i_6_n_0 ),
        .I3(goto_reg),
        .I4(\pc_reg[9]_P_0 ),
        .I5(bsf_reg),
        .O(\pc[9]_P_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[9]_P_i_4 
       (.I0(mclr),
        .I1(\stack2_reg[0]_0 ),
        .O(\pc[9]_P_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0044400000004000)) 
    \pc[9]_P_i_6 
       (.I0(call),
        .I1(retlw),
        .I2(\stack2_reg_n_0_[9] ),
        .I3(\stack2_reg[0]_0 ),
        .I4(\stack2_reg[0]_1 ),
        .I5(\stack1_reg_n_0_[9] ),
        .O(\pc[9]_P_i_6_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[0]_P 
       (.C(c2),
        .CE(retlw_reg),
        .D(\yi_reg[0]_C_1 ),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\romaddr[0] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[1]_P 
       (.C(c2),
        .CE(retlw_reg),
        .D(\yi_reg[1]_C_2 ),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\romaddr[1] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[2]_P 
       (.C(c2),
        .CE(retlw_reg),
        .D(\yi_reg[2]_C_5 ),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\romaddr[2] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[3]_P 
       (.C(c2),
        .CE(retlw_reg),
        .D(\yi_reg[3]_C_5 ),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\romaddr[3] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[4]_P 
       (.C(c2),
        .CE(retlw_reg),
        .D(\pc[4]_P_i_1_n_0 ),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\romaddr[4] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[5]_P 
       (.C(c2),
        .CE(retlw_reg),
        .D(\pc[5]_P_i_1_n_0 ),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\romaddr[5] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[6]_P 
       (.C(c2),
        .CE(retlw_reg),
        .D(\yi_reg[6]_C_3 ),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\romaddr[6] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[7]_P 
       (.C(c2),
        .CE(retlw_reg),
        .D(call_reg),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\romaddr[7] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[8]_P 
       (.C(c2),
        .CE(retlw_reg),
        .D(\pc[8]_P_i_1_n_0 ),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\romaddr[8] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[9]_P 
       (.C(c2),
        .CE(retlw_reg),
        .D(\pc[9]_P_i_2_n_0 ),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\romaddr[9] ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rtccount_reg[0] 
       (.C(c2),
        .CE(E),
        .D(D[0]),
        .Q(\rtccount_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rtccount_reg[1] 
       (.C(c2),
        .CE(E),
        .D(D[1]),
        .Q(\rtccount_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rtccount_reg[2] 
       (.C(c2),
        .CE(E),
        .D(D[2]),
        .Q(\rtccount_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rtccount_reg[3] 
       (.C(c2),
        .CE(E),
        .D(D[3]),
        .Q(\rtccount_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rtccount_reg[4] 
       (.C(c2),
        .CE(E),
        .D(D[4]),
        .Q(\b_reg[6]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rtccount_reg[5] 
       (.C(c2),
        .CE(E),
        .D(D[5]),
        .Q(\b_reg[6]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rtccount_reg[6] 
       (.C(c2),
        .CE(E),
        .D(D[6]),
        .Q(\b_reg[6]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rtccount_reg[7] 
       (.C(c2),
        .CE(E),
        .D(D[7]),
        .Q(\rtccount_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    skip_C_i_3
       (.I0(skip_reg_C[6]),
        .I1(z_reg),
        .O(skip_reg_C_2));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    skip_C_i_6
       (.I0(skip_reg_C[2]),
        .I1(skip_reg_C[3]),
        .I2(skip_reg_C[1]),
        .I3(skip_reg_C[0]),
        .I4(skip_C_i_9_n_0),
        .O(skip_reg_C_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    skip_C_i_7
       (.I0(skip_reg_C[3]),
        .I1(skip_reg_C[2]),
        .I2(\k_reg[7] [4]),
        .I3(skip_reg_C[1]),
        .I4(d),
        .I5(skip_reg_C[0]),
        .O(skip_C_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    skip_C_i_8
       (.I0(skip_reg_C[7]),
        .I1(skip_reg_C[6]),
        .I2(\k_reg[7] [4]),
        .I3(skip_reg_C[5]),
        .I4(d),
        .I5(skip_reg_C[4]),
        .O(skip_C_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    skip_C_i_9
       (.I0(skip_reg_C[5]),
        .I1(skip_reg_C[4]),
        .I2(skip_reg_C[6]),
        .I3(skip_reg_C[7]),
        .O(skip_C_i_9_n_0));
  MUXF7 skip_reg_C_i_5
       (.I0(skip_C_i_7_n_0),
        .I1(skip_C_i_8_n_0),
        .O(skip_reg_C_1),
        .S(\k_reg[7] [5]));
  LUT4 #(
    .INIT(16'h00D0)) 
    \stack1[9]_i_1 
       (.I0(\stack2_reg[0]_1 ),
        .I1(\stack2_reg[0]_0 ),
        .I2(call),
        .I3(bsf_reg),
        .O(stack1));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack1_reg[0] 
       (.C(c2),
        .CE(stack1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[0]_i_1_n_0 ),
        .Q(\stack1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack1_reg[1] 
       (.C(c2),
        .CE(stack1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[1]_i_1_n_0 ),
        .Q(\stack1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack1_reg[2] 
       (.C(c2),
        .CE(stack1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[2]_i_1_n_0 ),
        .Q(\stack1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack1_reg[3] 
       (.C(c2),
        .CE(stack1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[3]_i_1_n_0 ),
        .Q(\stack1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack1_reg[4] 
       (.C(c2),
        .CE(stack1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[4]_i_1_n_0 ),
        .Q(\stack1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack1_reg[5] 
       (.C(c2),
        .CE(stack1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[5]_i_1_n_0 ),
        .Q(\stack1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack1_reg[6] 
       (.C(c2),
        .CE(stack1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[6]_i_1_n_0 ),
        .Q(\stack1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack1_reg[7] 
       (.C(c2),
        .CE(stack1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[7]_i_1_n_0 ),
        .Q(\stack1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack1_reg[8] 
       (.C(c2),
        .CE(stack1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[8]_i_1_n_0 ),
        .Q(\stack1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack1_reg[9] 
       (.C(c2),
        .CE(stack1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[9]_i_2_n_0 ),
        .Q(\stack1_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h1)) 
    \stack2[0]_i_1 
       (.I0(\stack2_reg[0]_0 ),
        .I1(\romaddr[0] ),
        .O(\stack2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \stack2[1]_i_1 
       (.I0(\romaddr[1] ),
        .I1(\romaddr[0] ),
        .I2(\stack2_reg[0]_0 ),
        .O(\stack2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \stack2[2]_i_1 
       (.I0(\stack2_reg[0]_0 ),
        .I1(\romaddr[0] ),
        .I2(\romaddr[1] ),
        .I3(\romaddr[2] ),
        .O(\stack2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \stack2[3]_i_1 
       (.I0(\stack2_reg[0]_0 ),
        .I1(\romaddr[0] ),
        .I2(\romaddr[2] ),
        .I3(\romaddr[1] ),
        .I4(\romaddr[3] ),
        .O(\stack2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \stack2[4]_i_1 
       (.I0(\stack2_reg[0]_0 ),
        .I1(\romaddr[0] ),
        .I2(\romaddr[3] ),
        .I3(\romaddr[1] ),
        .I4(\romaddr[2] ),
        .I5(\romaddr[4] ),
        .O(\stack2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h5104)) 
    \stack2[5]_i_1 
       (.I0(\stack2_reg[0]_0 ),
        .I1(\romaddr[0] ),
        .I2(\stack2[5]_i_2_n_0 ),
        .I3(\romaddr[5] ),
        .O(\stack2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \stack2[5]_i_2 
       (.I0(\romaddr[3] ),
        .I1(\romaddr[1] ),
        .I2(\romaddr[2] ),
        .I3(\romaddr[4] ),
        .O(\stack2[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h4510)) 
    \stack2[6]_i_1 
       (.I0(\stack2_reg[0]_0 ),
        .I1(\stack1_reg[7]_0 ),
        .I2(\romaddr[0] ),
        .I3(\romaddr[6] ),
        .O(\stack2[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h51550400)) 
    \stack2[7]_i_1 
       (.I0(\stack2_reg[0]_0 ),
        .I1(\romaddr[0] ),
        .I2(\stack1_reg[7]_0 ),
        .I3(\romaddr[6] ),
        .I4(\romaddr[7] ),
        .O(\stack2[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5515555500400000)) 
    \stack2[8]_i_1 
       (.I0(\stack2_reg[0]_0 ),
        .I1(\romaddr[7] ),
        .I2(\romaddr[6] ),
        .I3(\stack1_reg[7]_0 ),
        .I4(\romaddr[0] ),
        .I5(\romaddr[8] ),
        .O(\stack2[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \stack2[8]_i_2 
       (.I0(\romaddr[4] ),
        .I1(\romaddr[2] ),
        .I2(\romaddr[1] ),
        .I3(\romaddr[3] ),
        .I4(\romaddr[5] ),
        .O(\stack1_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \stack2[9]_i_1 
       (.I0(\stack2_reg[0]_0 ),
        .I1(\stack2_reg[0]_1 ),
        .I2(call),
        .I3(bsf_reg),
        .O(stack2));
  LUT6 #(
    .INIT(64'h4555555510000000)) 
    \stack2[9]_i_2 
       (.I0(\stack2_reg[0]_0 ),
        .I1(\stack2[9]_i_3_n_0 ),
        .I2(\romaddr[6] ),
        .I3(\romaddr[7] ),
        .I4(\romaddr[8] ),
        .I5(\romaddr[9] ),
        .O(\stack2[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \stack2[9]_i_3 
       (.I0(\romaddr[5] ),
        .I1(\romaddr[3] ),
        .I2(\romaddr[1] ),
        .I3(\romaddr[2] ),
        .I4(\romaddr[4] ),
        .I5(\romaddr[0] ),
        .O(\stack2[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack2_reg[0] 
       (.C(c2),
        .CE(stack2),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[0]_i_1_n_0 ),
        .Q(\stack2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack2_reg[1] 
       (.C(c2),
        .CE(stack2),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[1]_i_1_n_0 ),
        .Q(\stack2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack2_reg[2] 
       (.C(c2),
        .CE(stack2),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[2]_i_1_n_0 ),
        .Q(\stack2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack2_reg[3] 
       (.C(c2),
        .CE(stack2),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[3]_i_1_n_0 ),
        .Q(\stack2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack2_reg[4] 
       (.C(c2),
        .CE(stack2),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[4]_i_1_n_0 ),
        .Q(\stack2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack2_reg[5] 
       (.C(c2),
        .CE(stack2),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[5]_i_1_n_0 ),
        .Q(\stack2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack2_reg[6] 
       (.C(c2),
        .CE(stack2),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[6]_i_1_n_0 ),
        .Q(\stack2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack2_reg[7] 
       (.C(c2),
        .CE(stack2),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[7]_i_1_n_0 ),
        .Q(\stack2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack2_reg[8] 
       (.C(c2),
        .CE(stack2),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[8]_i_1_n_0 ),
        .Q(\stack2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stack2_reg[9] 
       (.C(c2),
        .CE(stack2),
        .CLR(\trisa_reg[0]_0 ),
        .D(\stack2[9]_i_2_n_0 ),
        .Q(\stack2_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stacklevel_reg[0] 
       (.C(c2),
        .CE(1'b1),
        .CLR(\trisa_reg[0]_0 ),
        .D(retlw_reg_1),
        .Q(\stack2_reg[0]_1 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \stacklevel_reg[1] 
       (.C(c2),
        .CE(1'b1),
        .CLR(\trisa_reg[0]_0 ),
        .D(retlw_reg_0),
        .Q(\stack2_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \status_reg[0] 
       (.C(c2),
        .CE(1'b1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\yi_reg[0]_C_2 ),
        .Q(status_c));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \status_reg[1] 
       (.C(c2),
        .CE(1'b1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\yi_reg[1]_C_3 ),
        .Q(\status_reg[1]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \status_reg[2] 
       (.C(c2),
        .CE(1'b1),
        .CLR(\trisa_reg[0]_0 ),
        .D(\yi_reg[2]_C_6 ),
        .Q(\status_reg[2]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \status_reg[3] 
       (.C(c2),
        .CE(bcf_reg),
        .CLR(\trisa_reg[0]_0 ),
        .D(D[3]),
        .Q(\status_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \status_reg[4] 
       (.C(c2),
        .CE(bcf_reg),
        .CLR(\trisa_reg[0]_0 ),
        .D(D[4]),
        .Q(\b_reg[4]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \status_reg[5] 
       (.C(c2),
        .CE(bcf_reg),
        .CLR(\trisa_reg[0]_0 ),
        .D(D[5]),
        .Q(\pc_reg[9]_P_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \status_reg[6] 
       (.C(c2),
        .CE(bcf_reg),
        .CLR(\trisa_reg[0]_0 ),
        .D(D[6]),
        .Q(\b_reg[6]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \status_reg[7] 
       (.C(c2),
        .CE(bcf_reg),
        .CLR(\trisa_reg[0]_0 ),
        .D(D[7]),
        .Q(\status_reg_n_0_[7] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \trisa_reg[0] 
       (.C(c2),
        .CE(\k_reg[2]_0 ),
        .D(D[0]),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\b_reg[3]_1 [0]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \trisa_reg[1] 
       (.C(c2),
        .CE(\k_reg[2]_0 ),
        .D(D[1]),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\b_reg[3]_1 [1]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \trisa_reg[2] 
       (.C(c2),
        .CE(\k_reg[2]_0 ),
        .D(D[2]),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\b_reg[3]_1 [2]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \trisa_reg[3] 
       (.C(c2),
        .CE(\k_reg[2]_0 ),
        .D(D[3]),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\b_reg[3]_1 [3]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \trisb_reg[0] 
       (.C(c2),
        .CE(tris_reg),
        .D(D[0]),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\b_reg[7]_2 [0]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \trisb_reg[1] 
       (.C(c2),
        .CE(tris_reg),
        .D(D[1]),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\b_reg[7]_2 [1]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \trisb_reg[2] 
       (.C(c2),
        .CE(tris_reg),
        .D(D[2]),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\b_reg[7]_2 [2]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \trisb_reg[3] 
       (.C(c2),
        .CE(tris_reg),
        .D(D[3]),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\b_reg[7]_2 [3]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \trisb_reg[4] 
       (.C(c2),
        .CE(tris_reg),
        .D(D[4]),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\b_reg[7]_2 [4]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \trisb_reg[5] 
       (.C(c2),
        .CE(tris_reg),
        .D(D[5]),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\b_reg[7]_2 [5]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \trisb_reg[6] 
       (.C(c2),
        .CE(tris_reg),
        .D(D[6]),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\b_reg[7]_2 [6]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \trisb_reg[7] 
       (.C(c2),
        .CE(tris_reg),
        .D(D[7]),
        .PRE(\trisa_reg[0]_0 ),
        .Q(\b_reg[7]_2 [7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \w_reg[0] 
       (.C(c2),
        .CE(retlw_reg_5),
        .CLR(\trisa_reg[0]_0 ),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \w_reg[1] 
       (.C(c2),
        .CE(retlw_reg_5),
        .CLR(\trisa_reg[0]_0 ),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \w_reg[2] 
       (.C(c2),
        .CE(retlw_reg_5),
        .CLR(\trisa_reg[0]_0 ),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \w_reg[3] 
       (.C(c2),
        .CE(retlw_reg_5),
        .CLR(\trisa_reg[0]_0 ),
        .D(D[3]),
        .Q(w));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \w_reg[4] 
       (.C(c2),
        .CE(retlw_reg_5),
        .CLR(\trisa_reg[0]_0 ),
        .D(D[4]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \w_reg[5] 
       (.C(c2),
        .CE(retlw_reg_5),
        .CLR(\trisa_reg[0]_0 ),
        .D(D[5]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \w_reg[6] 
       (.C(c2),
        .CE(retlw_reg_5),
        .CLR(\trisa_reg[0]_0 ),
        .D(D[6]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \w_reg[7] 
       (.C(c2),
        .CE(retlw_reg_5),
        .CLR(\trisa_reg[0]_0 ),
        .D(D[7]),
        .Q(Q[6]));
  LUT6 #(
    .INIT(64'h5555C0CF5555C0C0)) 
    \yi[0]_C_i_6 
       (.I0(Q[0]),
        .I1(skip_reg_C[0]),
        .I2(incfsz),
        .I3(skip_reg_C[4]),
        .I4(option),
        .I5(swapf),
        .O(\yi_reg[0]_C_0 ));
  LUT6 #(
    .INIT(64'h11110F9911110F00)) 
    \yi[0]_C_i_9 
       (.I0(Q[0]),
        .I1(skip_reg_C[0]),
        .I2(z_reg_i_24_n_7),
        .I3(addwf),
        .I4(iorwf),
        .I5(xorwf),
        .O(\yi_reg[0]_C ));
  LUT6 #(
    .INIT(64'h5050535F5F5F535F)) 
    \yi[1]_C_i_10 
       (.I0(Q[1]),
        .I1(swapf),
        .I2(option),
        .I3(skip_reg_C[5]),
        .I4(incfsz),
        .I5(\yi[1]_C_i_15_n_0 ),
        .O(\yi[1]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4777)) 
    \yi[1]_C_i_14 
       (.I0(skip_reg_C[1]),
        .I1(movlw),
        .I2(tris),
        .I3(Q[1]),
        .O(\yi[1]_C_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \yi[1]_C_i_15 
       (.I0(skip_reg_C[0]),
        .I1(skip_reg_C[1]),
        .O(\yi[1]_C_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0220AAAAAAAA)) 
    \yi[1]_C_i_5 
       (.I0(\yi[1]_C_i_10_n_0 ),
        .I1(rlf_reg),
        .I2(skip_reg_C[0]),
        .I3(skip_reg_C[1]),
        .I4(rrf_reg_1),
        .I5(incf_reg),
        .O(\yi_reg[1]_C_1 ));
  LUT6 #(
    .INIT(64'h666666668888EE0F)) 
    \yi[1]_C_i_6 
       (.I0(Q[1]),
        .I1(skip_reg_C[1]),
        .I2(\yi[1]_C_i_14_n_0 ),
        .I3(iorlw),
        .I4(andlw),
        .I5(xorlw),
        .O(\yi_reg[1]_C_0 ));
  LUT6 #(
    .INIT(64'h131010DF101010DC)) 
    \yi[1]_C_i_9 
       (.I0(z_reg_i_24_n_6),
        .I1(iorwf),
        .I2(addwf),
        .I3(skip_reg_C[1]),
        .I4(Q[1]),
        .I5(xorwf),
        .O(\yi_reg[1]_C ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFF8882)) 
    \yi[2]_C_i_10 
       (.I0(decf),
        .I1(skip_reg_C[2]),
        .I2(skip_reg_C[1]),
        .I3(skip_reg_C[0]),
        .I4(\w_reg[2]_0 ),
        .O(\yi_reg[2]_C_2 ));
  LUT6 #(
    .INIT(64'hF8FBFB08F8F8F808)) 
    \yi[2]_C_i_11 
       (.I0(z_reg_i_24_n_5),
        .I1(addwf),
        .I2(iorwf),
        .I3(skip_reg_C[2]),
        .I4(Q[2]),
        .I5(xorwf),
        .O(\yi_reg[2]_C ));
  LUT6 #(
    .INIT(64'h70707F7F8F8F808F)) 
    \yi[2]_C_i_12 
       (.I0(skip_reg_C[1]),
        .I1(skip_reg_C[0]),
        .I2(incf),
        .I3(movf),
        .I4(comf),
        .I5(skip_reg_C[2]),
        .O(\yi[2]_C_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \yi[2]_C_i_15 
       (.I0(skip_reg_C[0]),
        .I1(skip_reg_C[1]),
        .O(\yi[2]_C_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \yi[2]_C_i_16 
       (.I0(skip_reg_C[2]),
        .I1(skip_reg_C[1]),
        .I2(skip_reg_C[0]),
        .O(\yi[2]_C_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h4777)) 
    \yi[2]_C_i_17 
       (.I0(skip_reg_C[2]),
        .I1(movlw),
        .I2(tris),
        .I3(Q[2]),
        .O(\yi[2]_C_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h3332330233023332)) 
    \yi[2]_C_i_5 
       (.I0(\yi[2]_C_i_12_n_0 ),
        .I1(rrf_reg),
        .I2(decfsz),
        .I3(rrf_reg_0),
        .I4(\yi[2]_C_i_15_n_0 ),
        .I5(skip_reg_C[2]),
        .O(\yi_reg[2]_C_1 ));
  LUT6 #(
    .INIT(64'h5050535F5F5F535F)) 
    \yi[2]_C_i_6 
       (.I0(Q[2]),
        .I1(swapf),
        .I2(option),
        .I3(skip_reg_C[6]),
        .I4(incfsz),
        .I5(\yi[2]_C_i_16_n_0 ),
        .O(\yi_reg[2]_C_4 ));
  LUT6 #(
    .INIT(64'h666666668888EE0F)) 
    \yi[2]_C_i_8 
       (.I0(Q[2]),
        .I1(skip_reg_C[2]),
        .I2(\yi[2]_C_i_17_n_0 ),
        .I3(iorlw),
        .I4(andlw),
        .I5(xorlw),
        .O(\yi_reg[2]_C_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \yi[2]_C_i_9 
       (.I0(skip_reg_C[2]),
        .I1(Q[2]),
        .O(\yi_reg[2]_C_3 ));
  LUT6 #(
    .INIT(64'h5F5F535F5050535F)) 
    \yi[3]_C_i_10 
       (.I0(w),
        .I1(swapf),
        .I2(option),
        .I3(skip_reg_C[7]),
        .I4(incfsz),
        .I5(\yi_reg[3]_C ),
        .O(\yi_reg[3]_C_4 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h4777)) 
    \yi[3]_C_i_11 
       (.I0(skip_reg_C[3]),
        .I1(movlw),
        .I2(tris),
        .I3(w),
        .O(\yi[3]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \yi[3]_C_i_12 
       (.I0(skip_reg_C[3]),
        .I1(skip_reg_C[0]),
        .I2(skip_reg_C[1]),
        .I3(skip_reg_C[2]),
        .O(\yi[3]_C_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h04070407F4F7F7F4)) 
    \yi[3]_C_i_13 
       (.I0(skip_reg_C[4]),
        .I1(rrf),
        .I2(rlf),
        .I3(skip_reg_C[3]),
        .I4(\yi[2]_C_i_15_n_0 ),
        .I5(skip_reg_C[2]),
        .O(\yi_reg[3]_C_2 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \yi[3]_C_i_15 
       (.I0(skip_reg_C[3]),
        .I1(skip_reg_C[0]),
        .I2(skip_reg_C[1]),
        .I3(skip_reg_C[2]),
        .O(\yi_reg[3]_C ));
  LUT6 #(
    .INIT(64'hF8FBFB08F8F8F808)) 
    \yi[3]_C_i_4 
       (.I0(z_reg_i_24_n_4),
        .I1(addwf),
        .I2(iorwf),
        .I3(skip_reg_C[3]),
        .I4(w),
        .I5(xorwf),
        .O(\yi_reg[3]_C_1 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hE2220000)) 
    \yi[3]_C_i_5 
       (.I0(\yi[3]_C_i_8_n_0 ),
        .I1(andwf),
        .I2(w),
        .I3(skip_reg_C[3]),
        .I4(iorwf_reg),
        .O(\yi_reg[3]_C_3 ));
  LUT6 #(
    .INIT(64'h99999999777711F0)) 
    \yi[3]_C_i_7 
       (.I0(w),
        .I1(skip_reg_C[3]),
        .I2(\yi[3]_C_i_11_n_0 ),
        .I3(iorlw),
        .I4(andlw),
        .I5(xorlw),
        .O(\yi_reg[3]_C_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \yi[3]_C_i_8 
       (.I0(\yi[3]_C_i_12_n_0 ),
        .I1(decf),
        .I2(c_reg_i_12_n_4),
        .I3(subwf),
        .I4(w),
        .I5(clrw_reg),
        .O(\yi[3]_C_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \yi[4]_C_i_10 
       (.I0(skip_reg_C[4]),
        .I1(skip_reg_C[2]),
        .I2(skip_reg_C[1]),
        .I3(skip_reg_C[0]),
        .I4(skip_reg_C[3]),
        .O(\yi_reg[4]_C ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h4777)) 
    \yi[4]_C_i_14 
       (.I0(skip_reg_C[4]),
        .I1(movlw),
        .I2(tris),
        .I3(Q[3]),
        .O(\yi[4]_C_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \yi[4]_C_i_15 
       (.I0(skip_reg_C[4]),
        .I1(skip_reg_C[0]),
        .I2(skip_reg_C[1]),
        .I3(skip_reg_C[2]),
        .I4(skip_reg_C[3]),
        .O(\yi_reg[4]_C_2 ));
  LUT6 #(
    .INIT(64'h0000000047770000)) 
    \yi[4]_C_i_4 
       (.I0(skip_reg_C[3]),
        .I1(rlf),
        .I2(rrf),
        .I3(skip_reg_C[5]),
        .I4(\yi[4]_C_i_8_n_0 ),
        .I5(comf_reg),
        .O(\yi_reg[4]_C_1 ));
  LUT6 #(
    .INIT(64'hAFAFACA0A0A0ACA0)) 
    \yi[4]_C_i_5 
       (.I0(Q[3]),
        .I1(swapf),
        .I2(option),
        .I3(skip_reg_C[0]),
        .I4(incfsz),
        .I5(\yi_reg[4]_C ),
        .O(\yi_reg[4]_C_3 ));
  LUT6 #(
    .INIT(64'h99999999777711F0)) 
    \yi[4]_C_i_7 
       (.I0(Q[3]),
        .I1(skip_reg_C[4]),
        .I2(\yi[4]_C_i_14_n_0 ),
        .I3(iorlw),
        .I4(andlw),
        .I5(xorlw),
        .O(\yi_reg[4]_C_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABFFFFFFFE)) 
    \yi[4]_C_i_8 
       (.I0(rlf_reg),
        .I1(skip_reg_C[3]),
        .I2(skip_reg_C[2]),
        .I3(skip_reg_C[1]),
        .I4(skip_reg_C[0]),
        .I5(skip_reg_C[4]),
        .O(\yi[4]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \yi[5]_C_i_10 
       (.I0(skip_reg_C[5]),
        .I1(skip_reg_C[4]),
        .I2(skip_reg_C[3]),
        .I3(skip_reg_C[0]),
        .I4(skip_reg_C[1]),
        .I5(skip_reg_C[2]),
        .O(\yi_reg[5]_C ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h4777)) 
    \yi[5]_C_i_14 
       (.I0(skip_reg_C[5]),
        .I1(movlw),
        .I2(tris),
        .I3(Q[4]),
        .O(\yi[5]_C_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \yi[5]_C_i_15 
       (.I0(skip_reg_C[3]),
        .I1(skip_reg_C[2]),
        .I2(skip_reg_C[1]),
        .I3(skip_reg_C[0]),
        .O(\yi[5]_C_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \yi[5]_C_i_16 
       (.I0(skip_reg_C[5]),
        .I1(skip_reg_C[4]),
        .I2(skip_reg_C[3]),
        .I3(skip_reg_C[2]),
        .I4(skip_reg_C[1]),
        .I5(skip_reg_C[0]),
        .O(\yi_reg[5]_C_2 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \yi[5]_C_i_17 
       (.I0(skip_reg_C[5]),
        .I1(Q[4]),
        .O(\yi_reg[5]_C_4 ));
  LUT6 #(
    .INIT(64'hAFAFACA0A0A0ACA0)) 
    \yi[5]_C_i_5 
       (.I0(Q[4]),
        .I1(swapf),
        .I2(option),
        .I3(skip_reg_C[1]),
        .I4(incfsz),
        .I5(\yi_reg[5]_C ),
        .O(\yi_reg[5]_C_3 ));
  LUT6 #(
    .INIT(64'h99999999777711F0)) 
    \yi[5]_C_i_7 
       (.I0(Q[4]),
        .I1(skip_reg_C[5]),
        .I2(\yi[5]_C_i_14_n_0 ),
        .I3(iorlw),
        .I4(andlw),
        .I5(xorlw),
        .O(\yi_reg[5]_C_0 ));
  LUT6 #(
    .INIT(64'hFBF8080BFBF80B08)) 
    \yi[5]_C_i_9 
       (.I0(skip_reg_C[6]),
        .I1(rrf),
        .I2(rlf),
        .I3(skip_reg_C[5]),
        .I4(skip_reg_C[4]),
        .I5(\yi[5]_C_i_15_n_0 ),
        .O(\yi_reg[5]_C_1 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \yi[6]_C_i_10 
       (.I0(skip_reg_C[6]),
        .I1(z_reg),
        .O(\yi_reg[6]_C ));
  LUT6 #(
    .INIT(64'h00003530FFFF3530)) 
    \yi[6]_C_i_12 
       (.I0(c_reg_i_7_n_5),
        .I1(\yi[6]_C_i_15_n_0 ),
        .I2(decf),
        .I3(subwf),
        .I4(andwf),
        .I5(z_i_19_n_0),
        .O(\yi_reg[6]_C_2 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h4777)) 
    \yi[6]_C_i_14 
       (.I0(skip_reg_C[6]),
        .I1(movlw),
        .I2(tris),
        .I3(Q[5]),
        .O(\yi[6]_C_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \yi[6]_C_i_15 
       (.I0(skip_reg_C[6]),
        .I1(z_i_12_n_0),
        .O(\yi[6]_C_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h99999999777711F0)) 
    \yi[6]_C_i_7 
       (.I0(Q[5]),
        .I1(skip_reg_C[6]),
        .I2(\yi[6]_C_i_14_n_0 ),
        .I3(iorlw),
        .I4(andlw),
        .I5(xorlw),
        .O(\yi_reg[6]_C_0 ));
  LUT6 #(
    .INIT(64'h335F33503350335F)) 
    \yi[6]_C_i_9 
       (.I0(skip_reg_C[7]),
        .I1(skip_reg_C[5]),
        .I2(rrf),
        .I3(rlf),
        .I4(skip_reg_C[6]),
        .I5(z_i_12_n_0),
        .O(\yi_reg[6]_C_1 ));
  LUT6 #(
    .INIT(64'hAFBBAFAAFFFFFFFF)) 
    \yi[7]_C_i_12 
       (.I0(\yi[7]_C_i_17_n_0 ),
        .I1(status_c),
        .I2(skip_reg_C[6]),
        .I3(rlf),
        .I4(rrf),
        .I5(swapf_reg),
        .O(\yi_reg[7]_C_1 ));
  LUT6 #(
    .INIT(64'hAAAA0C00AAAAFCF0)) 
    \yi[7]_C_i_13 
       (.I0(Q[6]),
        .I1(skip_reg_C[3]),
        .I2(incfsz),
        .I3(swapf),
        .I4(option),
        .I5(\yi[7]_C_i_18_n_0 ),
        .O(\yi_reg[7]_C_2 ));
  LUT6 #(
    .INIT(64'h666666668888EE0F)) 
    \yi[7]_C_i_15 
       (.I0(Q[6]),
        .I1(skip_reg_C[7]),
        .I2(\yi[7]_C_i_22_n_0 ),
        .I3(iorlw),
        .I4(andlw),
        .I5(xorlw),
        .O(\yi_reg[7]_C_0 ));
  LUT6 #(
    .INIT(64'h0000000000002D00)) 
    \yi[7]_C_i_17 
       (.I0(z_i_12_n_0),
        .I1(skip_reg_C[6]),
        .I2(skip_reg_C[7]),
        .I3(decfsz),
        .I4(rrf),
        .I5(rlf),
        .O(\yi[7]_C_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h65)) 
    \yi[7]_C_i_18 
       (.I0(skip_reg_C[7]),
        .I1(z_reg),
        .I2(skip_reg_C[6]),
        .O(\yi[7]_C_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h4777)) 
    \yi[7]_C_i_22 
       (.I0(skip_reg_C[7]),
        .I1(movlw),
        .I2(tris),
        .I3(Q[6]),
        .O(\yi[7]_C_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h65)) 
    \yi[7]_C_i_23 
       (.I0(skip_reg_C[7]),
        .I1(skip_reg_C[6]),
        .I2(z_i_12_n_0),
        .O(\yi_reg[7]_C ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB8B8)) 
    z_i_1
       (.I0(z),
        .I1(xorlw_reg),
        .I2(z_i_2_n_0),
        .I3(\b_reg[7]_3 ),
        .I4(z_i_4_n_0),
        .I5(z_i_5_n_0),
        .O(z_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    z_i_11
       (.I0(skip_reg_C[7]),
        .I1(skip_reg_C[6]),
        .O(z_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    z_i_12
       (.I0(skip_reg_C[0]),
        .I1(skip_reg_C[1]),
        .I2(skip_reg_C[2]),
        .I3(skip_reg_C[3]),
        .I4(skip_reg_C[5]),
        .I5(skip_reg_C[4]),
        .O(z_i_12_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    z_i_13
       (.I0(skip_reg_C[4]),
        .I1(skip_reg_C[3]),
        .I2(skip_reg_C[0]),
        .I3(skip_reg_C[1]),
        .I4(skip_reg_C[2]),
        .I5(skip_reg_C[5]),
        .O(z_reg));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    z_i_14
       (.I0(skip_reg_C[3]),
        .I1(w),
        .O(z_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    z_i_15
       (.I0(skip_reg_C[5]),
        .I1(Q[4]),
        .O(z_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    z_i_16
       (.I0(skip_reg_C[6]),
        .I1(Q[5]),
        .O(z_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    z_i_17
       (.I0(skip_reg_C[7]),
        .I1(Q[6]),
        .I2(skip_reg_C[4]),
        .I3(Q[3]),
        .I4(z_i_28_n_0),
        .I5(z_i_29_n_0),
        .O(z_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_i_18
       (.I0(skip_reg_C[7]),
        .I1(Q[6]),
        .O(z_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_i_19
       (.I0(skip_reg_C[6]),
        .I1(Q[5]),
        .O(z_i_19_n_0));
  LUT6 #(
    .INIT(64'h55553F3055553030)) 
    z_i_2
       (.I0(z_reg_0),
        .I1(z_reg_1),
        .I2(andlw),
        .I3(iorlw),
        .I4(xorlw),
        .I5(z_i_8_n_0),
        .O(z_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    z_i_20
       (.I0(skip_reg_C[4]),
        .I1(Q[3]),
        .O(z_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h1)) 
    z_i_21
       (.I0(skip_reg_C[6]),
        .I1(Q[5]),
        .O(z_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h1)) 
    z_i_22
       (.I0(skip_reg_C[4]),
        .I1(Q[3]),
        .O(z_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    z_i_23
       (.I0(z_i_30_n_0),
        .I1(z_i_31_n_0),
        .I2(skip_reg_C[0]),
        .I3(Q[0]),
        .I4(skip_reg_C[7]),
        .I5(Q[6]),
        .O(z_i_23_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    z_i_25
       (.I0(O[1]),
        .I1(z_reg_i_24_n_7),
        .I2(z_reg_i_24_n_6),
        .I3(O[0]),
        .I4(O[2]),
        .I5(O[3]),
        .O(z_i_25_n_0));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB88888)) 
    z_i_27
       (.I0(skip_reg_C_0),
        .I1(decf),
        .I2(z_i_36_n_0),
        .I3(z_i_37_n_0),
        .I4(subwf),
        .I5(clrw_reg),
        .O(z_reg_2));
  LUT2 #(
    .INIT(4'h6)) 
    z_i_28
       (.I0(skip_reg_C[2]),
        .I1(Q[2]),
        .O(z_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    z_i_29
       (.I0(skip_reg_C[0]),
        .I1(Q[0]),
        .O(z_i_29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    z_i_30
       (.I0(skip_reg_C[3]),
        .I1(w),
        .O(z_i_30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h1)) 
    z_i_31
       (.I0(skip_reg_C[2]),
        .I1(Q[2]),
        .O(z_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    z_i_32
       (.I0(skip_reg_C[3]),
        .I1(w),
        .O(z_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    z_i_33
       (.I0(skip_reg_C[2]),
        .I1(Q[2]),
        .O(z_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    z_i_34
       (.I0(skip_reg_C[1]),
        .I1(Q[1]),
        .O(z_i_34_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    z_i_35
       (.I0(skip_reg_C[0]),
        .I1(Q[0]),
        .O(z_i_35_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    z_i_36
       (.I0(z_reg_5[1]),
        .I1(z_reg_5[0]),
        .I2(c_reg_i_12_n_4),
        .I3(z_reg_5[2]),
        .O(z_i_36_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    z_i_37
       (.I0(\yi_reg[7]_C_3 [1]),
        .I1(\yi_reg[7]_C_3 [0]),
        .I2(c_reg_i_7_n_5),
        .I3(\yi_reg[7]_C_3 [2]),
        .O(z_i_37_n_0));
  LUT6 #(
    .INIT(64'h000000000EFE0E0E)) 
    z_i_4
       (.I0(z_i_9_n_0),
        .I1(andwf_reg),
        .I2(movf),
        .I3(z_i_11_n_0),
        .I4(z_i_12_n_0),
        .I5(comf),
        .O(z_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFF20FF00)) 
    z_i_5
       (.I0(skip_reg_C[6]),
        .I1(z_reg),
        .I2(skip_reg_C[7]),
        .I3(incf),
        .I4(comf),
        .O(z_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFE)) 
    z_i_6
       (.I0(z_i_14_n_0),
        .I1(z_i_15_n_0),
        .I2(Q[1]),
        .I3(skip_reg_C[1]),
        .I4(z_i_16_n_0),
        .I5(z_i_17_n_0),
        .O(z_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    z_i_7
       (.I0(dc_i_4_n_0),
        .I1(z_reg_3),
        .I2(z_i_19_n_0),
        .I3(Q[4]),
        .I4(skip_reg_C[5]),
        .I5(z_reg_4),
        .O(z_reg_1));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    z_i_8
       (.I0(dc_i_6_n_0),
        .I1(z_i_21_n_0),
        .I2(Q[4]),
        .I3(skip_reg_C[5]),
        .I4(z_i_22_n_0),
        .I5(z_i_23_n_0),
        .O(z_i_8_n_0));
  LUT6 #(
    .INIT(64'h8888888888888B88)) 
    z_i_9
       (.I0(z_i_8_n_0),
        .I1(iorwf),
        .I2(z_reg_i_24_n_5),
        .I3(addwf),
        .I4(z_reg_i_24_n_4),
        .I5(z_i_25_n_0),
        .O(z_i_9_n_0));
  CARRY4 z_reg_i_24
       (.CI(1'b0),
        .CO({z_reg_i_24_n_0,z_reg_i_24_n_1,z_reg_i_24_n_2,z_reg_i_24_n_3}),
        .CYINIT(1'b0),
        .DI(skip_reg_C[3:0]),
        .O({z_reg_i_24_n_4,z_reg_i_24_n_5,z_reg_i_24_n_6,z_reg_i_24_n_7}),
        .S({z_i_32_n_0,z_i_33_n_0,z_i_34_n_0,z_i_35_n_0}));
endmodule

(* ORIG_REF_NAME = "pic16c56" *) 
module design_1_pic16c56_0_0_pic16c56
   (\romaddr[9] ,
    \romaddr[8] ,
    \romaddr[7] ,
    \romaddr[6] ,
    \romaddr[5] ,
    \romaddr[4] ,
    \romaddr[3] ,
    \romaddr[2] ,
    \romaddr[1] ,
    \romaddr[0] ,
    osc2,
    c3,
    RB,
    RA,
    mclr,
    romdata,
    osc1);
  output \romaddr[9] ;
  output \romaddr[8] ;
  output \romaddr[7] ;
  output \romaddr[6] ;
  output \romaddr[5] ;
  output \romaddr[4] ;
  output \romaddr[3] ;
  output \romaddr[2] ;
  output \romaddr[1] ;
  output \romaddr[0] ;
  output osc2;
  output c3;
  inout [7:0]RB;
  inout [3:0]RA;
  input mclr;
  input [11:0]romdata;
  input osc1;

  wire A1_n_0;
  wire A1_n_11;
  wire A1_n_15;
  wire A1_n_19;
  wire A1_n_20;
  wire A1_n_21;
  wire A1_n_25;
  wire A1_n_28;
  wire A1_n_30;
  wire A1_n_31;
  wire A1_n_32;
  wire A1_n_33;
  wire A1_n_36;
  wire A1_n_39;
  wire A1_n_41;
  wire A1_n_42;
  wire A1_n_43;
  wire A1_n_44;
  wire A1_n_45;
  wire A1_n_46;
  wire A1_n_48;
  wire A1_n_51;
  wire A1_n_52;
  wire A1_n_53;
  wire A1_n_54;
  wire A1_n_55;
  wire A1_n_56;
  wire A1_n_57;
  wire A1_n_58;
  wire A1_n_59;
  wire A1_n_60;
  wire A1_n_61;
  wire A1_n_62;
  wire A1_n_63;
  wire A1_n_64;
  wire A1_n_65;
  wire A1_n_66;
  wire A1_n_67;
  wire A1_n_68;
  wire A1_n_69;
  wire A1_n_7;
  wire A1_n_70;
  wire A1_n_71;
  wire A1_n_72;
  wire A1_n_73;
  wire A1_n_74;
  wire A1_n_76;
  wire A1_n_77;
  wire A1_n_78;
  wire A1_n_79;
  wire A1_n_80;
  wire A1_n_81;
  wire A1_n_82;
  wire A1_n_83;
  wire A1_n_84;
  wire A1_n_85;
  wire A1_n_86;
  wire A1_n_87;
  wire A1_n_88;
  wire A1_n_89;
  wire A1_n_90;
  wire A1_n_91;
  wire A2_n_1;
  wire A2_n_100;
  wire A2_n_101;
  wire A2_n_102;
  wire A2_n_103;
  wire A2_n_104;
  wire A2_n_105;
  wire A2_n_106;
  wire A2_n_107;
  wire A2_n_108;
  wire A2_n_109;
  wire A2_n_11;
  wire A2_n_110;
  wire A2_n_111;
  wire A2_n_112;
  wire A2_n_113;
  wire A2_n_114;
  wire A2_n_115;
  wire A2_n_116;
  wire A2_n_117;
  wire A2_n_118;
  wire A2_n_119;
  wire A2_n_12;
  wire A2_n_120;
  wire A2_n_121;
  wire A2_n_122;
  wire A2_n_123;
  wire A2_n_13;
  wire A2_n_14;
  wire A2_n_15;
  wire A2_n_16;
  wire A2_n_17;
  wire A2_n_34;
  wire A2_n_35;
  wire A2_n_36;
  wire A2_n_37;
  wire A2_n_38;
  wire A2_n_39;
  wire A2_n_40;
  wire A2_n_41;
  wire A2_n_42;
  wire A2_n_55;
  wire A2_n_56;
  wire A2_n_57;
  wire A2_n_58;
  wire A2_n_59;
  wire A2_n_60;
  wire A2_n_61;
  wire A2_n_62;
  wire A2_n_63;
  wire A2_n_64;
  wire A2_n_65;
  wire A2_n_66;
  wire A2_n_67;
  wire A2_n_68;
  wire A2_n_69;
  wire A2_n_70;
  wire A2_n_71;
  wire A2_n_72;
  wire A2_n_73;
  wire A2_n_74;
  wire A2_n_75;
  wire A2_n_76;
  wire A2_n_77;
  wire A2_n_78;
  wire A2_n_79;
  wire A2_n_80;
  wire A2_n_81;
  wire A2_n_82;
  wire A2_n_83;
  wire A2_n_84;
  wire A2_n_85;
  wire A2_n_86;
  wire A2_n_87;
  wire A2_n_88;
  wire A2_n_89;
  wire A2_n_90;
  wire A2_n_91;
  wire A2_n_92;
  wire A2_n_93;
  wire A2_n_94;
  wire A2_n_95;
  wire A2_n_96;
  wire A2_n_97;
  wire A2_n_98;
  wire A2_n_99;
  wire A3_n_0;
  wire A3_n_1;
  wire A3_n_12;
  wire A3_n_13;
  wire A3_n_2;
  wire A3_n_3;
  wire A3_n_4;
  wire A3_n_5;
  wire A3_n_6;
  wire A3_n_7;
  wire A3_n_8;
  wire A4_n_10;
  wire A4_n_11;
  wire A4_n_4;
  wire A4_n_5;
  wire A4_n_6;
  wire A4_n_7;
  wire A4_n_8;
  wire A4_n_9;
  wire [3:0]RA;
  wire [7:0]RB;
  wire addwf;
  wire andlw;
  wire andwf;
  wire [7:0]b;
  wire c;
  wire c1;
  wire c2;
  wire c3;
  wire call;
  wire comf;
  wire d;
  wire dc;
  wire decf;
  wire decfsz;
  wire [7:0]fsr;
  wire goto;
  wire incf;
  wire incfsz;
  wire iorlw;
  wire iorwf;
  wire [7:0]k;
  wire [8:8]longk;
  wire mclr;
  wire movf;
  wire movlw;
  wire option;
  wire osc1;
  wire osc2;
  wire [3:0]p_0_out;
  wire retlw;
  wire rlf;
  wire \romaddr[0] ;
  wire \romaddr[1] ;
  wire \romaddr[2] ;
  wire \romaddr[3] ;
  wire \romaddr[4] ;
  wire \romaddr[5] ;
  wire \romaddr[6] ;
  wire \romaddr[7] ;
  wire \romaddr[8] ;
  wire \romaddr[9] ;
  wire [11:0]romdata;
  wire rrf;
  wire status_c;
  wire subwf;
  wire swapf;
  wire tris;
  wire [3:0]trisa;
  wire [7:0]trisb;
  wire [7:0]w;
  wire xorlw;
  wire xorwf;
  wire z;

  design_1_pic16c56_0_0_decoder A1
       (.CLK(c1),
        .D({A3_n_0,A3_n_1,A3_n_4,A3_n_5,A3_n_6,A3_n_7}),
        .E(A1_n_60),
        .O({A2_n_107,A2_n_108,A2_n_109,A2_n_110}),
        .Q(b),
        .RA(RA),
        .\RA_out_reg[3] (A1_n_63),
        .RB(RB),
        .\RB_out_reg[7] (A1_n_62),
        .addwf(addwf),
        .addwf_reg_0(A2_n_62),
        .addwf_reg_1(A2_n_63),
        .andlw(andlw),
        .andwf(andwf),
        .andwf_reg_0(A2_n_81),
        .\b_reg[0] (A2_n_74),
        .\b_reg[2] (A2_n_87),
        .\b_reg[2]_0 (A2_n_83),
        .\b_reg[3] (A2_n_72),
        .\b_reg[3]_0 ({A2_n_114,A2_n_115,A2_n_116}),
        .\b_reg[3]_1 (A2_n_38),
        .\b_reg[4] (A2_n_40),
        .\b_reg[4]_0 (A2_n_42),
        .\b_reg[4]_1 (A2_n_76),
        .\b_reg[4]_2 (A2_n_98),
        .\b_reg[4]_3 (A2_n_86),
        .\b_reg[5] (A2_n_41),
        .\b_reg[5]_0 (A2_n_99),
        .\b_reg[5]_1 (A2_n_117),
        .\b_reg[6] (A2_n_104),
        .\b_reg[6]_0 (A2_n_77),
        .\b_reg[6]_1 (A2_n_39),
        .\b_reg[7] ({k[7:6],k[4],k[2:0]}),
        .\b_reg[7]_0 ({A1_n_52,A1_n_53,A1_n_54,A1_n_55,A1_n_56,A1_n_57,A1_n_58,A1_n_59}),
        .\b_reg[7]_1 (A2_n_78),
        .\b_reg[7]_2 ({A2_n_111,A2_n_112,A2_n_113}),
        .\b_reg[7]_3 (A2_n_37),
        .\b_reg[7]_4 (A2_n_85),
        .c(c),
        .c_reg(A1_n_91),
        .call(call),
        .call_reg_0(A2_n_89),
        .call_reg_1(A2_n_90),
        .comf(comf),
        .d(d),
        .dc(dc),
        .decf(decf),
        .decf_reg_0(A2_n_82),
        .decf_reg_1(A2_n_84),
        .decf_reg_2(A2_n_80),
        .decfsz(decfsz),
        .decfsz_reg_0(A2_n_73),
        .\frs_reg_reg[7] (A1_n_64),
        .\frs_reg_reg[7]_0 (fsr),
        .goto(goto),
        .incf(incf),
        .incfsz(incfsz),
        .iorlw(iorlw),
        .iorwf(iorwf),
        .iorwf_reg_0(A2_n_65),
        .\k_reg[7]_0 (A2_n_100),
        .longk(longk),
        .mclr(mclr),
        .movf(movf),
        .movlw(movlw),
        .option(option),
        .\pc_reg[0]_P (A1_n_66),
        .\pc_reg[0]_P_0 (A1_n_72),
        .\pc_reg[0]_P_1 (\romaddr[0] ),
        .\pc_reg[1]_P (A1_n_67),
        .\pc_reg[1]_P_0 (A2_n_88),
        .\pc_reg[1]_P_1 (\romaddr[1] ),
        .\pc_reg[2]_P (A1_n_25),
        .\pc_reg[2]_P_0 (A1_n_68),
        .\pc_reg[2]_P_1 (A1_n_88),
        .\pc_reg[3]_P (A1_n_69),
        .\pc_reg[3]_P_0 (A1_n_87),
        .\pc_reg[3]_P_1 (\romaddr[3] ),
        .\pc_reg[4]_P (A1_n_86),
        .\pc_reg[4]_P_0 (\romaddr[4] ),
        .\pc_reg[4]_P_1 (A2_n_34),
        .\pc_reg[5]_P (A1_n_76),
        .\pc_reg[5]_P_0 (A1_n_85),
        .\pc_reg[5]_P_1 (\romaddr[5] ),
        .\pc_reg[6]_P (A1_n_70),
        .\pc_reg[6]_P_0 (A1_n_74),
        .\pc_reg[6]_P_1 (A1_n_84),
        .\pc_reg[6]_P_2 (\romaddr[6] ),
        .\pc_reg[7]_P (A1_n_71),
        .\pc_reg[7]_P_0 (A1_n_83),
        .\pc_reg[7]_P_1 (A2_n_69),
        .\pc_reg[7]_P_2 (A2_n_70),
        .\pc_reg[9]_P (A1_n_77),
        .\pc_reg[9]_P_0 (A2_n_35),
        .\pc_reg[9]_P_1 (A2_n_36),
        .retlw(retlw),
        .retlw_reg_0(A2_n_71),
        .rlf(rlf),
        .romdata(romdata),
        .rrf(rrf),
        .rrf_reg_0(A2_n_79),
        .\rtccount_reg[6] ({A2_n_121,A2_n_122,A2_n_123}),
        .\rtccount_reg[7] (A1_n_61),
        .skip_reg_C(A1_n_90),
        .skip_reg_C_0(A3_n_8),
        .\stack1_reg[2] (A2_n_91),
        .\stack1_reg[3] (A2_n_92),
        .\stack1_reg[6] (A2_n_93),
        .\stack1_reg[7] (A2_n_94),
        .\stacklevel_reg[0] (A1_n_32),
        .\stacklevel_reg[0]_0 (A2_n_12),
        .\stacklevel_reg[1] (A1_n_30),
        .\stacklevel_reg[1]_0 (A1_n_31),
        .\stacklevel_reg[1]_1 (A2_n_11),
        .status_c(status_c),
        .\status_reg[0] (A1_n_51),
        .\status_reg[0]_0 (A2_n_75),
        .\status_reg[0]_1 (A2_n_97),
        .\status_reg[1] (A1_n_33),
        .\status_reg[1]_0 (A2_n_96),
        .\status_reg[1]_1 (A2_n_17),
        .\status_reg[2] (A1_n_21),
        .\status_reg[2]_0 (A1_n_80),
        .\status_reg[2]_1 (A2_n_95),
        .\status_reg[3] (A2_n_68),
        .\status_reg[4] (A2_n_15),
        .\status_reg[5] (A2_n_14),
        .\status_reg[6] (A2_n_13),
        .\status_reg[7] (A1_n_0),
        .subwf(subwf),
        .swapf(swapf),
        .tris(tris),
        .\trisb_reg[7] (A1_n_82),
        .\w_reg[0] (A2_n_118),
        .\w_reg[0]_0 (A2_n_67),
        .\w_reg[1] (A2_n_56),
        .\w_reg[1]_0 (A2_n_66),
        .\w_reg[2] (A2_n_101),
        .\w_reg[2]_0 (A2_n_64),
        .\w_reg[3] (A2_n_61),
        .\w_reg[3]_0 (A2_n_102),
        .\w_reg[4] (A2_n_106),
        .\w_reg[4]_0 (A2_n_60),
        .\w_reg[5] (A2_n_57),
        .\w_reg[5]_0 (A2_n_105),
        .\w_reg[5]_1 (A2_n_59),
        .\w_reg[6] (A2_n_58),
        .\w_reg[7] (A1_n_65),
        .\w_reg[7]_0 (A2_n_103),
        .\w_reg[7]_1 (A2_n_55),
        .\w_reg[7]_2 ({w[7:4],w[2:0]}),
        .xorlw(xorlw),
        .xorwf(xorwf),
        .\yi_reg[0]_C (A1_n_20),
        .\yi_reg[0]_C_0 (A1_n_48),
        .\yi_reg[0]_C_1 (A1_n_73),
        .\yi_reg[1]_C (A1_n_7),
        .\yi_reg[1]_C_0 (A1_n_19),
        .\yi_reg[1]_C_1 (A1_n_46),
        .\yi_reg[1]_C_2 (A1_n_89),
        .\yi_reg[2]_C (A1_n_15),
        .\yi_reg[2]_C_0 (A1_n_45),
        .\yi_reg[2]_C_1 (A1_n_79),
        .\yi_reg[2]_C_2 (A1_n_81),
        .\yi_reg[3]_C (A1_n_44),
        .\yi_reg[4]_C (A1_n_11),
        .\yi_reg[4]_C_0 (A1_n_43),
        .\yi_reg[4]_C_1 (A1_n_78),
        .\yi_reg[5]_C (A1_n_42),
        .\yi_reg[6]_C (A1_n_41),
        .\yi_reg[7]_C (A1_n_36),
        .z_reg(A1_n_28),
        .z_reg_0(A1_n_39));
  design_1_pic16c56_0_0_distribute A2
       (.CLK(c1),
        .D({A3_n_0,A3_n_1,A3_n_2,A3_n_3,A3_n_4,A3_n_5,A3_n_6,A3_n_7}),
        .E(A1_n_61),
        .O({A2_n_107,A2_n_108,A2_n_109,A2_n_110}),
        .Q({w[7:4],w[2:0]}),
        .RA(RA),
        .RB(RB),
        .addwf(addwf),
        .andlw(andlw),
        .andwf(andwf),
        .andwf_reg(A1_n_39),
        .\b_reg[0]_0 (A2_n_97),
        .\b_reg[1]_0 (A2_n_96),
        .\b_reg[2]_0 (A2_n_95),
        .\b_reg[3]_0 (A2_n_68),
        .\b_reg[3]_1 (trisa),
        .\b_reg[4]_0 (A2_n_15),
        .\b_reg[6]_0 (A2_n_13),
        .\b_reg[6]_1 ({A2_n_121,A2_n_122,A2_n_123}),
        .\b_reg[7]_0 (A2_n_69),
        .\b_reg[7]_1 (fsr),
        .\b_reg[7]_2 (trisb),
        .\b_reg[7]_3 (A1_n_28),
        .bcf_reg(A1_n_0),
        .bsf_reg(A1_n_31),
        .c2(c2),
        .c_reg(A2_n_79),
        .call(call),
        .call_reg(A1_n_71),
        .clrw_reg(A1_n_80),
        .comf(comf),
        .comf_reg(A1_n_78),
        .d(d),
        .dc(dc),
        .dc_reg(A2_n_120),
        .decf(decf),
        .decfsz(decfsz),
        .goto(goto),
        .goto_reg(A1_n_77),
        .incf(incf),
        .incf_reg(A1_n_7),
        .incfsz(incfsz),
        .iorlw(iorlw),
        .iorwf(iorwf),
        .iorwf_reg(A1_n_20),
        .\k_reg[1] (A1_n_64),
        .\k_reg[1]_0 (A1_n_63),
        .\k_reg[2] (A1_n_62),
        .\k_reg[2]_0 (A1_n_60),
        .\k_reg[7] ({k[7:6],k[4],k[2:0]}),
        .\k_reg[7]_0 ({A1_n_52,A1_n_53,A1_n_54,A1_n_55,A1_n_56,A1_n_57,A1_n_58,A1_n_59}),
        .longk(longk),
        .mclr(mclr),
        .movf(movf),
        .movlw(movlw),
        .option(option),
        .p_0_out(p_0_out),
        .\pc_reg[0]_P_0 (A2_n_89),
        .\pc_reg[1]_P_0 (A2_n_90),
        .\pc_reg[2]_P_0 (A2_n_71),
        .\pc_reg[2]_P_1 (A2_n_91),
        .\pc_reg[3]_P_0 (A2_n_88),
        .\pc_reg[3]_P_1 (A2_n_92),
        .\pc_reg[6]_P_0 (A2_n_93),
        .\pc_reg[7]_P_0 (A2_n_70),
        .\pc_reg[7]_P_1 (A2_n_94),
        .\pc_reg[9]_P_0 (A2_n_14),
        .\pc_reg[9]_P_1 (A2_n_35),
        .\pc_reg[9]_P_2 (A2_n_36),
        .retlw(retlw),
        .retlw_reg(A1_n_72),
        .retlw_reg_0(A1_n_30),
        .retlw_reg_1(A1_n_32),
        .retlw_reg_2(A1_n_76),
        .retlw_reg_3(A1_n_25),
        .retlw_reg_4(A1_n_88),
        .retlw_reg_5(A1_n_65),
        .rlf(rlf),
        .rlf_reg(A1_n_19),
        .\romaddr[0] (\romaddr[0] ),
        .\romaddr[1] (\romaddr[1] ),
        .\romaddr[2] (\romaddr[2] ),
        .\romaddr[3] (\romaddr[3] ),
        .\romaddr[4] (\romaddr[4] ),
        .\romaddr[5] (\romaddr[5] ),
        .\romaddr[6] (\romaddr[6] ),
        .\romaddr[7] (\romaddr[7] ),
        .\romaddr[8] (\romaddr[8] ),
        .\romaddr[9] (\romaddr[9] ),
        .rrf(rrf),
        .rrf_reg(A1_n_79),
        .rrf_reg_0(A1_n_15),
        .rrf_reg_1(A1_n_89),
        .skip_reg_C(b),
        .skip_reg_C_0(A2_n_83),
        .skip_reg_C_1(A2_n_100),
        .skip_reg_C_2(A2_n_104),
        .skip_reg_C_3(A1_n_74),
        .\stack1_reg[7]_0 (A2_n_34),
        .\stack2_reg[0]_0 (A2_n_11),
        .\stack2_reg[0]_1 (A2_n_12),
        .\stacklevel_reg[0]_0 (A1_n_86),
        .\stacklevel_reg[0]_1 (A1_n_87),
        .\stacklevel_reg[0]_2 (A1_n_85),
        .\stacklevel_reg[0]_3 (A1_n_84),
        .\stacklevel_reg[0]_4 (A1_n_83),
        .status_c(status_c),
        .\status_reg[1]_0 (A2_n_17),
        .\status_reg[2]_0 (A2_n_16),
        .subwf(subwf),
        .swapf(swapf),
        .swapf_reg(A1_n_11),
        .tris(tris),
        .tris_reg(A1_n_82),
        .\trisa_reg[0]_0 (A2_n_1),
        .\trisb_reg[0]_0 (A4_n_4),
        .\trisb_reg[1]_0 (A4_n_5),
        .\trisb_reg[2]_0 (A4_n_6),
        .\trisb_reg[3]_0 (A4_n_7),
        .\trisb_reg[4]_0 (A4_n_8),
        .\trisb_reg[5]_0 (A4_n_9),
        .\trisb_reg[6]_0 (A4_n_10),
        .\trisb_reg[7]_0 (A4_n_11),
        .\w_reg[2]_0 (A1_n_81),
        .xorlw(xorlw),
        .xorlw_reg(A1_n_21),
        .xorwf(xorwf),
        .\yi_reg[0]_C (A2_n_67),
        .\yi_reg[0]_C_0 (A2_n_118),
        .\yi_reg[0]_C_1 (A1_n_66),
        .\yi_reg[0]_C_2 (A3_n_13),
        .\yi_reg[1]_C (A2_n_65),
        .\yi_reg[1]_C_0 (A2_n_66),
        .\yi_reg[1]_C_1 (A2_n_74),
        .\yi_reg[1]_C_2 (A1_n_67),
        .\yi_reg[1]_C_3 (A1_n_33),
        .\yi_reg[2]_C (A2_n_63),
        .\yi_reg[2]_C_0 (A2_n_64),
        .\yi_reg[2]_C_1 (A2_n_73),
        .\yi_reg[2]_C_2 (A2_n_80),
        .\yi_reg[2]_C_3 (A2_n_87),
        .\yi_reg[2]_C_4 (A2_n_101),
        .\yi_reg[2]_C_5 (A1_n_68),
        .\yi_reg[2]_C_6 (A3_n_12),
        .\yi_reg[3]_C (A2_n_38),
        .\yi_reg[3]_C_0 (A2_n_61),
        .\yi_reg[3]_C_1 (A2_n_62),
        .\yi_reg[3]_C_2 (A2_n_76),
        .\yi_reg[3]_C_3 (A2_n_81),
        .\yi_reg[3]_C_4 (A2_n_102),
        .\yi_reg[3]_C_5 (A1_n_69),
        .\yi_reg[4]_C (A2_n_42),
        .\yi_reg[4]_C_0 (A2_n_60),
        .\yi_reg[4]_C_1 (A2_n_72),
        .\yi_reg[4]_C_2 (A2_n_98),
        .\yi_reg[4]_C_3 (A2_n_106),
        .\yi_reg[5]_C (A2_n_41),
        .\yi_reg[5]_C_0 (A2_n_59),
        .\yi_reg[5]_C_1 (A2_n_77),
        .\yi_reg[5]_C_2 (A2_n_99),
        .\yi_reg[5]_C_3 (A2_n_105),
        .\yi_reg[5]_C_4 (A2_n_117),
        .\yi_reg[6]_C (A2_n_39),
        .\yi_reg[6]_C_0 (A2_n_58),
        .\yi_reg[6]_C_1 (A2_n_78),
        .\yi_reg[6]_C_2 (A2_n_84),
        .\yi_reg[6]_C_3 (A1_n_70),
        .\yi_reg[7]_C (A2_n_37),
        .\yi_reg[7]_C_0 (A2_n_55),
        .\yi_reg[7]_C_1 (A2_n_75),
        .\yi_reg[7]_C_2 (A2_n_103),
        .\yi_reg[7]_C_3 ({A2_n_111,A2_n_112,A2_n_113}),
        .z(z),
        .z_reg(A2_n_40),
        .z_reg_0(A2_n_56),
        .z_reg_1(A2_n_57),
        .z_reg_2(A2_n_82),
        .z_reg_3(A2_n_85),
        .z_reg_4(A2_n_86),
        .z_reg_5({A2_n_114,A2_n_115,A2_n_116}),
        .z_reg_6(A2_n_119));
  design_1_pic16c56_0_0_alu A3
       (.D({A3_n_0,A3_n_1,A3_n_2,A3_n_3,A3_n_4,A3_n_5,A3_n_6,A3_n_7}),
        .addwf_reg(A1_n_51),
        .andwf_reg(A1_n_73),
        .bcf_reg(A1_n_0),
        .c(c),
        .c2(c2),
        .c_reg_0(A1_n_91),
        .dc(dc),
        .dc_reg_0(A2_n_120),
        .mclr(A2_n_1),
        .retlw_reg(A1_n_36),
        .retlw_reg_0(A1_n_41),
        .retlw_reg_1(A1_n_42),
        .retlw_reg_2(A1_n_43),
        .retlw_reg_3(A1_n_44),
        .retlw_reg_4(A1_n_45),
        .retlw_reg_5(A1_n_46),
        .retlw_reg_6(A1_n_48),
        .skip_reg_C_0(A3_n_8),
        .skip_reg_C_1(A1_n_90),
        .status_c(status_c),
        .\status_reg[0] (A3_n_13),
        .\status_reg[2] (A3_n_12),
        .\status_reg[2]_0 (A2_n_16),
        .xorlw_reg(A1_n_21),
        .z(z),
        .z_reg_0(A2_n_119));
  design_1_pic16c56_0_0_IO_reg A4
       (.\b_reg[0] (A4_n_4),
        .\b_reg[1] (A4_n_5),
        .\b_reg[2] (A4_n_6),
        .\b_reg[3] (A4_n_7),
        .\b_reg[4] (A4_n_8),
        .\b_reg[5] (A4_n_9),
        .\b_reg[6] (A4_n_10),
        .\b_reg[7] (A4_n_11),
        .p_0_out(p_0_out),
        .\trisa_reg[3] (trisa),
        .\trisb_reg[7] (trisb));
  design_1_pic16c56_0_0_timer A5
       (.CLK(c1),
        .c2(c2),
        .c3(c3),
        .mclr(mclr),
        .mclr_0(A2_n_1),
        .osc1(osc1),
        .osc2(osc2));
endmodule

(* ORIG_REF_NAME = "timer" *) 
module design_1_pic16c56_0_0_timer
   (osc2,
    CLK,
    c2,
    c3,
    osc1,
    mclr_0,
    mclr);
  output osc2;
  output CLK;
  output c2;
  output c3;
  input osc1;
  input mclr_0;
  input mclr;

  wire CLK;
  wire c2;
  wire c3;
  wire clk1_i_1_n_0;
  wire clk1_i_2_n_0;
  wire clk2_i_1_n_0;
  wire clk3_i_1_n_0;
  wire clk3_i_2_n_0;
  wire mclr;
  wire mclr_0;
  wire osc1;
  wire osc2;
  wire osc2_i_1_n_0;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[5]_i_2_n_0 ;
  wire \state[5]_i_3_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;

  LUT6 #(
    .INIT(64'hFFFFFFF700000020)) 
    clk1_i_1
       (.I0(clk1_i_2_n_0),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(CLK),
        .O(clk1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h1)) 
    clk1_i_2
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[4] ),
        .O(clk1_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk1_reg
       (.C(osc1),
        .CE(1'b1),
        .CLR(mclr_0),
        .D(clk1_i_1_n_0),
        .Q(CLK));
  LUT6 #(
    .INIT(64'hFEFFFFFF00001000)) 
    clk2_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(clk1_i_2_n_0),
        .I4(\state_reg_n_0_[3] ),
        .I5(c2),
        .O(clk2_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk2_reg
       (.C(osc1),
        .CE(1'b1),
        .CLR(mclr_0),
        .D(clk2_i_1_n_0),
        .Q(c2));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFFF30020)) 
    clk3_i_1
       (.I0(mclr),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(clk3_i_2_n_0),
        .I4(c3),
        .O(clk3_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk3_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .O(clk3_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk3_reg
       (.C(osc1),
        .CE(1'b1),
        .CLR(mclr_0),
        .D(clk3_i_1_n_0),
        .Q(c3));
  LUT1 #(
    .INIT(2'h1)) 
    osc2_i_1
       (.I0(osc2),
        .O(osc2_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    osc2_reg
       (.C(osc1),
        .CE(1'b1),
        .CLR(mclr_0),
        .D(osc2_i_1_n_0),
        .Q(osc2));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \state[4]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE9)) 
    \state[5]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(mclr),
        .I5(\state[5]_i_3_n_0 ),
        .O(state));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \state[5]_i_2 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[5]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[5]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(osc1),
        .CE(state),
        .CLR(mclr_0),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(osc1),
        .CE(state),
        .CLR(mclr_0),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(osc1),
        .CE(state),
        .CLR(mclr_0),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(osc1),
        .CE(state),
        .CLR(mclr_0),
        .D(\state[3]_i_1_n_0 ),
        .Q(\state_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(osc1),
        .CE(state),
        .CLR(mclr_0),
        .D(\state[4]_i_1_n_0 ),
        .Q(\state_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(osc1),
        .CE(state),
        .CLR(mclr_0),
        .D(\state[5]_i_2_n_0 ),
        .Q(\state_reg_n_0_[5] ));
endmodule

module design_1_wrapper
   (RA,
    mclr,
    osc1);
  inout [3:0]RA;
  input mclr;
  input osc1;

  wire [3:0]RA;
  wire mclr;
  wire osc1;

  (* HW_HANDOFF = "design_1.hwdef" *) 
  design_1 design_1_i
       (.RA(RA),
        .mclr(mclr),
        .osc1(osc1));
endmodule

(* NotValidForBitStream *)
module top
   (RA,
    mclr,
    osc1);
  inout [3:0]RA;
  input mclr;
  input osc1;

  wire \RA[0] ;
  wire \RA[1] ;
  wire \RA[2] ;
  wire \RA[3] ;
  wire [3:0]RA_OBUF;
  wire mclr;
  wire mclr_IBUF;
  wire osc1;
  wire osc1_IBUF;

initial begin
 $sdf_annotate("cputb_time_synth.sdf",,,,"tool_control");
end
  (* OPT_INSERTED *) 
  OBUF \RA[0]_OBUF_inst 
       (.I(RA_OBUF[0]),
        .O(RA[0]));
  (* OPT_INSERTED *) 
  OBUF \RA[1]_OBUF_inst 
       (.I(RA_OBUF[1]),
        .O(RA[1]));
  (* OPT_INSERTED *) 
  OBUF \RA[2]_OBUF_inst 
       (.I(RA_OBUF[2]),
        .O(RA[2]));
  (* OPT_INSERTED *) 
  OBUF \RA[3]_OBUF_inst 
       (.I(RA_OBUF[3]),
        .O(RA[3]));
  IBUF mclr_IBUF_inst
       (.I(mclr),
        .O(mclr_IBUF));
  IBUF osc1_IBUF_inst
       (.I(osc1),
        .O(osc1_IBUF));
  design_1_wrapper ww
       (.RA(RA_OBUF),
        .mclr(mclr_IBUF),
        .osc1(osc1_IBUF));
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
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "12" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_12" *) 
module design_1_dist_mem_gen_0_0_dist_mem_gen_v8_0_12
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
  wire g0_b0_n_0;
  wire g0_b10_n_0;
  wire g0_b11_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire g0_b8_n_0;
  wire g0_b9_n_0;
  wire g10_b0_n_0;
  wire g10_b10_n_0;
  wire g10_b11_n_0;
  wire g10_b1_n_0;
  wire g10_b2_n_0;
  wire g10_b3_n_0;
  wire g10_b4_n_0;
  wire g10_b5_n_0;
  wire g10_b6_n_0;
  wire g10_b7_n_0;
  wire g10_b8_n_0;
  wire g10_b9_n_0;
  wire g11_b0_n_0;
  wire g11_b10_n_0;
  wire g11_b11_n_0;
  wire g11_b1_n_0;
  wire g11_b2_n_0;
  wire g11_b3_n_0;
  wire g11_b4_n_0;
  wire g11_b5_n_0;
  wire g11_b6_n_0;
  wire g11_b7_n_0;
  wire g11_b8_n_0;
  wire g11_b9_n_0;
  wire g12_b0_n_0;
  wire g12_b10_n_0;
  wire g12_b11_n_0;
  wire g12_b1_n_0;
  wire g12_b2_n_0;
  wire g12_b3_n_0;
  wire g12_b4_n_0;
  wire g12_b5_n_0;
  wire g12_b6_n_0;
  wire g12_b7_n_0;
  wire g12_b8_n_0;
  wire g12_b9_n_0;
  wire g13_b0_n_0;
  wire g13_b10_n_0;
  wire g13_b11_n_0;
  wire g13_b1_n_0;
  wire g13_b2_n_0;
  wire g13_b3_n_0;
  wire g13_b4_n_0;
  wire g13_b5_n_0;
  wire g13_b6_n_0;
  wire g13_b7_n_0;
  wire g13_b8_n_0;
  wire g13_b9_n_0;
  wire g14_b0_n_0;
  wire g14_b10_n_0;
  wire g14_b11_n_0;
  wire g14_b1_n_0;
  wire g14_b2_n_0;
  wire g14_b3_n_0;
  wire g14_b4_n_0;
  wire g14_b5_n_0;
  wire g14_b6_n_0;
  wire g14_b7_n_0;
  wire g14_b8_n_0;
  wire g14_b9_n_0;
  wire g15_b0_n_0;
  wire g15_b10_n_0;
  wire g15_b11_n_0;
  wire g15_b1_n_0;
  wire g15_b2_n_0;
  wire g15_b3_n_0;
  wire g15_b4_n_0;
  wire g15_b5_n_0;
  wire g15_b6_n_0;
  wire g15_b7_n_0;
  wire g15_b8_n_0;
  wire g15_b9_n_0;
  wire g1_b0_n_0;
  wire g1_b10_n_0;
  wire g1_b11_n_0;
  wire g1_b1_n_0;
  wire g1_b2_n_0;
  wire g1_b3_n_0;
  wire g1_b4_n_0;
  wire g1_b5_n_0;
  wire g1_b6_n_0;
  wire g1_b7_n_0;
  wire g1_b8_n_0;
  wire g1_b9_n_0;
  wire g2_b0_n_0;
  wire g2_b10_n_0;
  wire g2_b11_n_0;
  wire g2_b1_n_0;
  wire g2_b2_n_0;
  wire g2_b3_n_0;
  wire g2_b4_n_0;
  wire g2_b5_n_0;
  wire g2_b6_n_0;
  wire g2_b7_n_0;
  wire g2_b8_n_0;
  wire g2_b9_n_0;
  wire g3_b0_n_0;
  wire g3_b10_n_0;
  wire g3_b11_n_0;
  wire g3_b1_n_0;
  wire g3_b2_n_0;
  wire g3_b3_n_0;
  wire g3_b4_n_0;
  wire g3_b5_n_0;
  wire g3_b6_n_0;
  wire g3_b7_n_0;
  wire g3_b8_n_0;
  wire g3_b9_n_0;
  wire g4_b0_n_0;
  wire g4_b10_n_0;
  wire g4_b11_n_0;
  wire g4_b1_n_0;
  wire g4_b2_n_0;
  wire g4_b3_n_0;
  wire g4_b4_n_0;
  wire g4_b5_n_0;
  wire g4_b6_n_0;
  wire g4_b7_n_0;
  wire g4_b8_n_0;
  wire g4_b9_n_0;
  wire g5_b0_n_0;
  wire g5_b10_n_0;
  wire g5_b11_n_0;
  wire g5_b1_n_0;
  wire g5_b2_n_0;
  wire g5_b3_n_0;
  wire g5_b4_n_0;
  wire g5_b5_n_0;
  wire g5_b6_n_0;
  wire g5_b7_n_0;
  wire g5_b8_n_0;
  wire g5_b9_n_0;
  wire g6_b0_n_0;
  wire g6_b10_n_0;
  wire g6_b11_n_0;
  wire g6_b1_n_0;
  wire g6_b2_n_0;
  wire g6_b3_n_0;
  wire g6_b4_n_0;
  wire g6_b5_n_0;
  wire g6_b6_n_0;
  wire g6_b7_n_0;
  wire g6_b8_n_0;
  wire g6_b9_n_0;
  wire g7_b0_n_0;
  wire g7_b10_n_0;
  wire g7_b11_n_0;
  wire g7_b1_n_0;
  wire g7_b2_n_0;
  wire g7_b3_n_0;
  wire g7_b4_n_0;
  wire g7_b5_n_0;
  wire g7_b6_n_0;
  wire g7_b7_n_0;
  wire g7_b8_n_0;
  wire g7_b9_n_0;
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
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_4_n_0 ;
  wire \spo[10]_INST_0_i_5_n_0 ;
  wire \spo[10]_INST_0_i_6_n_0 ;
  wire \spo[10]_INST_0_i_7_n_0 ;
  wire \spo[10]_INST_0_i_8_n_0 ;
  wire \spo[10]_INST_0_i_9_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_5_n_0 ;
  wire \spo[11]_INST_0_i_6_n_0 ;
  wire \spo[11]_INST_0_i_7_n_0 ;
  wire \spo[11]_INST_0_i_8_n_0 ;
  wire \spo[11]_INST_0_i_9_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;
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
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[4]_INST_0_i_8_n_0 ;
  wire \spo[4]_INST_0_i_9_n_0 ;
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
  wire \spo[6]_INST_0_i_8_n_0 ;
  wire \spo[6]_INST_0_i_9_n_0 ;
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
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;
  wire \spo[9]_INST_0_i_5_n_0 ;
  wire \spo[9]_INST_0_i_6_n_0 ;
  wire \spo[9]_INST_0_i_7_n_0 ;
  wire \spo[9]_INST_0_i_8_n_0 ;
  wire \spo[9]_INST_0_i_9_n_0 ;

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
  LUT6 #(
    .INIT(64'hEBA5A5A444445066)) 
    g0_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'h81D2A7D272726424)) 
    g0_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'h828A8A8AAAAAAA24)) 
    g0_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b10_n_0));
  LUT6 #(
    .INIT(64'h030B0B0AAAAAAA48)) 
    g0_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b11_n_0));
  LUT6 #(
    .INIT(64'h7C7551005500501B)) 
    g0_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'h5C03020277772240)) 
    g0_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b3_n_0));
  LUT6 #(
    .INIT(64'h7C76777722222000)) 
    g0_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b4_n_0));
  LUT6 #(
    .INIT(64'h2C16161777776037)) 
    g0_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b5_n_0));
  LUT6 #(
    .INIT(64'h0983838222222011)) 
    g0_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b6_n_0));
  LUT6 #(
    .INIT(64'h2002020222222024)) 
    g0_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'h8040404000000000)) 
    g0_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b8_n_0));
  LUT6 #(
    .INIT(64'hD1A1A1A000000048)) 
    g0_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b9_n_0));
  LUT6 #(
    .INIT(64'hEAA7569D40000000)) 
    g10_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b0_n_0));
  LUT6 #(
    .INIT(64'hA0DC069400000000)) 
    g10_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b1_n_0));
  LUT6 #(
    .INIT(64'h8284161040000000)) 
    g10_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b10_n_0));
  LUT6 #(
    .INIT(64'h0300180040000000)) 
    g10_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b11_n_0));
  LUT6 #(
    .INIT(64'h5D7BE08F80000000)) 
    g10_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b2_n_0));
  LUT6 #(
    .INIT(64'h7C7BE88F80000000)) 
    g10_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b3_n_0));
  LUT6 #(
    .INIT(64'h5C02E16B80000000)) 
    g10_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b4_n_0));
  LUT6 #(
    .INIT(64'h2C19626580000000)) 
    g10_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b5_n_0));
  LUT6 #(
    .INIT(64'h09884C2100000000)) 
    g10_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b6_n_0));
  LUT6 #(
    .INIT(64'h21190A6400000000)) 
    g10_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b7_n_0));
  LUT6 #(
    .INIT(64'h81C40D1000000000)) 
    g10_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b8_n_0));
  LUT6 #(
    .INIT(64'hD1A68C9A00000000)) 
    g10_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b9_n_0));
  LUT6 #(
    .INIT(64'h69111115A75A9D54)) 
    g11_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b0_n_0));
  LUT6 #(
    .INIT(64'hB49C9C99A50B7014)) 
    g11_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b1_n_0));
  LUT6 #(
    .INIT(64'hA2AAAAAA841A1050)) 
    g11_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b10_n_0));
  LUT6 #(
    .INIT(64'hC2AAAAAB00140060)) 
    g11_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b11_n_0));
  LUT6 #(
    .INIT(64'h4015401423E40B8B)) 
    g11_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b2_n_0));
  LUT6 #(
    .INIT(64'hC09DDDCB5AE5EF8F)) 
    g11_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b3_n_0));
  LUT6 #(
    .INIT(64'h9DC8888902E40B80)) 
    g11_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b4_n_0));
  LUT6 #(
    .INIT(64'hC5DDDDDD196C6583)) 
    g11_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b5_n_0));
  LUT6 #(
    .INIT(64'hA088888988422131)) 
    g11_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b6_n_0));
  LUT6 #(
    .INIT(64'h80888889190C6423)) 
    g11_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b7_n_0));
  LUT6 #(
    .INIT(64'h50000001C40F1038)) 
    g11_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b8_n_0));
  LUT6 #(
    .INIT(64'h68000001A6869A34)) 
    g11_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b9_n_0));
  LUT6 #(
    .INIT(64'hD74EB3ACEB3AE969)) 
    g12_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b0_n_0));
  LUT6 #(
    .INIT(64'h034A1E04A1E034E9)) 
    g12_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b1_n_0));
  LUT6 #(
    .INIT(64'h050822088220A2A2)) 
    g12_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b10_n_0));
  LUT6 #(
    .INIT(64'h0600300C0300C2C2)) 
    g12_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b11_n_0));
  LUT6 #(
    .INIT(64'hFA47C1735CDF1D14)) 
    g12_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b2_n_0));
  LUT6 #(
    .INIT(64'hF847D1705D174080)) 
    g12_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b3_n_0));
  LUT6 #(
    .INIT(64'hBAB5DDF37CDF5D9D)) 
    g12_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b4_n_0));
  LUT6 #(
    .INIT(64'h5A32DCB32CCB05C5)) 
    g12_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b5_n_0));
  LUT6 #(
    .INIT(64'h13109421084220A0)) 
    g12_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b6_n_0));
  LUT6 #(
    .INIT(64'h42321C8320C80080)) 
    g12_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b7_n_0));
  LUT6 #(
    .INIT(64'h0188020481205050)) 
    g12_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b8_n_0));
  LUT6 #(
    .INIT(64'hA34D1344D1346868)) 
    g12_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b9_n_0));
  LUT6 #(
    .INIT(64'h111174EBA75D3AE9)) 
    g13_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b0_n_0));
  LUT6 #(
    .INIT(64'hC9C9B4A1DC0D2877)) 
    g13_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b1_n_0));
  LUT6 #(
    .INIT(64'hAAAA9082841420A1)) 
    g13_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b10_n_0));
  LUT6 #(
    .INIT(64'hAAAAA003001800C0)) 
    g13_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b11_n_0));
  LUT6 #(
    .INIT(64'h5401647C02EAD71E)) 
    g13_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b2_n_0));
  LUT6 #(
    .INIT(64'hDDDC8B5D7BEBDF1E)) 
    g13_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b3_n_0));
  LUT6 #(
    .INIT(64'h8888805C02E01740)) 
    g13_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b4_n_0));
  LUT6 #(
    .INIT(64'hDDDDE32D1968CB46)) 
    g13_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b5_n_0));
  LUT6 #(
    .INIT(64'h8888F109884C4262)) 
    g13_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b6_n_0));
  LUT6 #(
    .INIT(64'h8888A3211908C846)) 
    g13_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b7_n_0));
  LUT6 #(
    .INIT(64'h00001880C4062031)) 
    g13_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b8_n_0));
  LUT6 #(
    .INIT(64'h000034D1A68D3469)) 
    g13_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b9_n_0));
  LUT6 #(
    .INIT(64'hEB3ACEB3AE969691)) 
    g14_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b0_n_0));
  LUT6 #(
    .INIT(64'hA1E04A1E034E9B49)) 
    g14_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b1_n_0));
  LUT6 #(
    .INIT(64'h822088220A2A2A2A)) 
    g14_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b10_n_0));
  LUT6 #(
    .INIT(64'h0300C0300C2C2C2A)) 
    g14_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b11_n_0));
  LUT6 #(
    .INIT(64'h7D1775DDF5D54001)) 
    g14_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b2_n_0));
  LUT6 #(
    .INIT(64'h7C1745C1700C0C09)) 
    g14_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b3_n_0));
  LUT6 #(
    .INIT(64'h5CDF37DDF1D9DDDC)) 
    g14_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b4_n_0));
  LUT6 #(
    .INIT(64'h2CCB32CCB45C5C5D)) 
    g14_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b5_n_0));
  LUT6 #(
    .INIT(64'h08421084220A0A08)) 
    g14_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b6_n_0));
  LUT6 #(
    .INIT(64'h21C8721C840C0C08)) 
    g14_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b7_n_0));
  LUT6 #(
    .INIT(64'h8120481205050500)) 
    g14_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b8_n_0));
  LUT6 #(
    .INIT(64'hD1344D1346868680)) 
    g14_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b9_n_0));
  LUT6 #(
    .INIT(64'h6F4EBA75D3AE9D74)) 
    g15_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b0_n_0));
  LUT6 #(
    .INIT(64'h2D4A1DC0D2877034)) 
    g15_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b1_n_0));
  LUT6 #(
    .INIT(64'h29082841420A1050)) 
    g15_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b10_n_0));
  LUT6 #(
    .INIT(64'h56003001800C0060)) 
    g15_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b11_n_0));
  LUT6 #(
    .INIT(64'h4247D02E2D75EF84)) 
    g15_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b2_n_0));
  LUT6 #(
    .INIT(64'h52B5C7BEBDF5EF84)) 
    g15_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b3_n_0));
  LUT6 #(
    .INIT(64'h1605D02E81740B8B)) 
    g15_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b4_n_0));
  LUT6 #(
    .INIT(64'h3E32D1968CB46583)) 
    g15_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b5_n_0));
  LUT6 #(
    .INIT(64'h07109884C4262111)) 
    g15_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b6_n_0));
  LUT6 #(
    .INIT(64'h3A3201900C806423)) 
    g15_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b7_n_0));
  LUT6 #(
    .INIT(64'h16881C40E2071038)) 
    g15_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b8_n_0));
  LUT6 #(
    .INIT(64'h574D1A68D3469A34)) 
    g15_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b9_n_0));
  LUT6 #(
    .INIT(64'h74EBA75D3ACEB3AC)) 
    g1_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b0_n_0));
  LUT6 #(
    .INIT(64'h14A0DC0528380283)) 
    g1_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b1_n_0));
  LUT6 #(
    .INIT(64'h5082841420882208)) 
    g1_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b10_n_0));
  LUT6 #(
    .INIT(64'h6003001800C0300C)) 
    g1_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b11_n_0));
  LUT6 #(
    .INIT(64'h8B5D7BE11F45DD77)) 
    g1_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b2_n_0));
  LUT6 #(
    .INIT(64'hAF7D7BE11F05D170)) 
    g1_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b3_n_0));
  LUT6 #(
    .INIT(64'hA05D02E2D737CDF7)) 
    g1_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b4_n_0));
  LUT6 #(
    .INIT(64'h832C1968CB72DCB7)) 
    g1_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b5_n_0));
  LUT6 #(
    .INIT(64'h1108884442108421)) 
    g1_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b6_n_0));
  LUT6 #(
    .INIT(64'h03201900C8320C83)) 
    g1_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b7_n_0));
  LUT6 #(
    .INIT(64'h1880C40620080200)) 
    g1_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b8_n_0));
  LUT6 #(
    .INIT(64'h34D1A68D344D1344)) 
    g1_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b9_n_0));
  LUT6 #(
    .INIT(64'h949488888BD3AE9D)) 
    g2_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b0_n_0));
  LUT6 #(
    .INIT(64'h74DA4E4E4C528370)) 
    g2_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b1_n_0));
  LUT6 #(
    .INIT(64'h5151555555420A10)) 
    g2_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b10_n_0));
  LUT6 #(
    .INIT(64'h6161555555800C00)) 
    g2_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b11_n_0));
  LUT6 #(
    .INIT(64'h8A200AA00A11F40B)) 
    g2_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b2_n_0));
  LUT6 #(
    .INIT(64'h60404EEEE42D71EF)) 
    g2_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b3_n_0));
  LUT6 #(
    .INIT(64'hEECEE4444481740B)) 
    g2_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b4_n_0));
  LUT6 #(
    .INIT(64'hC2E2EEEEEE0CB065)) 
    g2_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b5_n_0));
  LUT6 #(
    .INIT(64'h7070444444442221)) 
    g2_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b6_n_0));
  LUT6 #(
    .INIT(64'h60604444440C8064)) 
    g2_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b7_n_0));
  LUT6 #(
    .INIT(64'h0808000000620310)) 
    g2_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b8_n_0));
  LUT6 #(
    .INIT(64'h3434000000D3469A)) 
    g2_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b9_n_0));
  LUT6 #(
    .INIT(64'h54EAA751D4751D54)) 
    g3_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b0_n_0));
  LUT6 #(
    .INIT(64'h3B81A50F0250F01A)) 
    g3_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b1_n_0));
  LUT6 #(
    .INIT(64'h5082841104411051)) 
    g3_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b10_n_0));
  LUT6 #(
    .INIT(64'h6003001806018061)) 
    g3_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b11_n_0));
  LUT6 #(
    .INIT(64'h8F7D23E0B9AE6F8E)) 
    g3_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b2_n_0));
  LUT6 #(
    .INIT(64'hAF7D23E0BA2E0B80)) 
    g3_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b3_n_0));
  LUT6 #(
    .INIT(64'h805C5AEEFBBE6FAE)) 
    g3_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b4_n_0));
  LUT6 #(
    .INIT(64'hA32D196E5B966582)) 
    g3_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b5_n_0));
  LUT6 #(
    .INIT(64'h110888421084A130)) 
    g3_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b6_n_0));
  LUT6 #(
    .INIT(64'h2321190E4390E420)) 
    g3_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b7_n_0));
  LUT6 #(
    .INIT(64'h1880C40100401008)) 
    g3_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b8_n_0));
  LUT6 #(
    .INIT(64'h34D1A689A2689A34)) 
    g3_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b9_n_0));
  LUT6 #(
    .INIT(64'h9111114A7553AA9D)) 
    g4_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b0_n_0));
  LUT6 #(
    .INIT(64'h49C9C9BA50EE0694)) 
    g4_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b1_n_0));
  LUT6 #(
    .INIT(64'h2AAAAAA841420A10)) 
    g4_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b10_n_0));
  LUT6 #(
    .INIT(64'h2AAAAAB001800C00)) 
    g4_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b11_n_0));
  LUT6 #(
    .INIT(64'h015401523E01756B)) 
    g4_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b2_n_0));
  LUT6 #(
    .INIT(64'h09DDDC95AE3DF1EF)) 
    g4_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b3_n_0));
  LUT6 #(
    .INIT(64'hDC8888902E01700B)) 
    g4_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b4_n_0));
  LUT6 #(
    .INIT(64'h5DDDDDC1968CB465)) 
    g4_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b5_n_0));
  LUT6 #(
    .INIT(64'h0888888884442221)) 
    g4_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b6_n_0));
  LUT6 #(
    .INIT(64'h08888891908C8464)) 
    g4_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b7_n_0));
  LUT6 #(
    .INIT(64'h0000000C40620310)) 
    g4_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b8_n_0));
  LUT6 #(
    .INIT(64'h8000001A68D3469A)) 
    g4_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b9_n_0));
  LUT6 #(
    .INIT(64'h74EB3ACEB3AE9696)) 
    g5_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b0_n_0));
  LUT6 #(
    .INIT(64'h34A1E04A1E034E9B)) 
    g5_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b1_n_0));
  LUT6 #(
    .INIT(64'h50822088220A2A2A)) 
    g5_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b10_n_0));
  LUT6 #(
    .INIT(64'h600300C0300C2C2C)) 
    g5_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b11_n_0));
  LUT6 #(
    .INIT(64'h847D1775DDF5D540)) 
    g5_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b2_n_0));
  LUT6 #(
    .INIT(64'hA47D1705D1740808)) 
    g5_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b3_n_0));
  LUT6 #(
    .INIT(64'hAB5DDF37CDF5D9DD)) 
    g5_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b4_n_0));
  LUT6 #(
    .INIT(64'hA32DCB32CCB05C5C)) 
    g5_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b5_n_0));
  LUT6 #(
    .INIT(64'h1108425094260E0E)) 
    g5_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b6_n_0));
  LUT6 #(
    .INIT(64'h0320C8320C800808)) 
    g5_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b7_n_0));
  LUT6 #(
    .INIT(64'h3881204812050505)) 
    g5_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b8_n_0));
  LUT6 #(
    .INIT(64'h34D1344D13468686)) 
    g5_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b9_n_0));
  LUT6 #(
    .INIT(64'h222B4EBA75D3AE9D)) 
    g6_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b0_n_0));
  LUT6 #(
    .INIT(64'h39334A1DC0D28770)) 
    g6_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b1_n_0));
  LUT6 #(
    .INIT(64'h5555082841420A10)) 
    g6_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b10_n_0));
  LUT6 #(
    .INIT(64'h5556003001800C00)) 
    g6_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b11_n_0));
  LUT6 #(
    .INIT(64'h802C47D02E2D75EF)) 
    g6_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b2_n_0));
  LUT6 #(
    .INIT(64'hBB92B5D7BE3DF1EF)) 
    g6_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b3_n_0));
  LUT6 #(
    .INIT(64'h111005C02E81740B)) 
    g6_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b4_n_0));
  LUT6 #(
    .INIT(64'hBBBA32D1968CB465)) 
    g6_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b5_n_0));
  LUT6 #(
    .INIT(64'h1111108884442221)) 
    g6_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b6_n_0));
  LUT6 #(
    .INIT(64'h11103201900C8064)) 
    g6_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b7_n_0));
  LUT6 #(
    .INIT(64'h0003881C40E20710)) 
    g6_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b8_n_0));
  LUT6 #(
    .INIT(64'h00034D1A68D3469A)) 
    g6_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b9_n_0));
  LUT6 #(
    .INIT(64'h4751D47552525222)) 
    g7_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b0_n_0));
  LUT6 #(
    .INIT(64'hDC0141C0E953E939)) 
    g7_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b1_n_0));
  LUT6 #(
    .INIT(64'h4411044145454555)) 
    g7_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b10_n_0));
  LUT6 #(
    .INIT(64'hA018060185858555)) 
    g7_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b11_n_0));
  LUT6 #(
    .INIT(64'hA2EEBBBE3AA8802A)) 
    g7_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b2_n_0));
  LUT6 #(
    .INIT(64'hA2E0BA2E8101813B)) 
    g7_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b3_n_0));
  LUT6 #(
    .INIT(64'h9BEEFBBE3BBBBB91)) 
    g7_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b4_n_0));
  LUT6 #(
    .INIT(64'h596659968B8B8BBB)) 
    g7_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b5_n_0));
  LUT6 #(
    .INIT(64'h284A1284C1C1C111)) 
    g7_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b6_n_0));
  LUT6 #(
    .INIT(64'hF90E439081818111)) 
    g7_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b7_n_0));
  LUT6 #(
    .INIT(64'h64090240A0A0A000)) 
    g7_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b8_n_0));
  LUT6 #(
    .INIT(64'hA689A268D0D0D000)) 
    g7_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b9_n_0));
  MUXF7 \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .O(spo[0]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_1 
       (.I0(\spo[0]_INST_0_i_3_n_0 ),
        .I1(\spo[0]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_6_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_7_n_0 ),
        .I1(\spo[0]_INST_0_i_8_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_9_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  MUXF7 \spo[0]_INST_0_i_3 
       (.I0(g6_b0_n_0),
        .I1(g7_b0_n_0),
        .O(\spo[0]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_4 
       (.I0(g4_b0_n_0),
        .I1(g5_b0_n_0),
        .O(\spo[0]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_5 
       (.I0(g2_b0_n_0),
        .I1(g3_b0_n_0),
        .O(\spo[0]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_6 
       (.I0(g0_b0_n_0),
        .I1(g1_b0_n_0),
        .O(\spo[0]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_7 
       (.I0(g14_b0_n_0),
        .I1(g15_b0_n_0),
        .O(\spo[0]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_8 
       (.I0(g12_b0_n_0),
        .I1(g13_b0_n_0),
        .O(\spo[0]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_9 
       (.I0(g10_b0_n_0),
        .I1(g11_b0_n_0),
        .O(\spo[0]_INST_0_i_9_n_0 ),
        .S(a[6]));
  MUXF7 \spo[10]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(\spo[10]_INST_0_i_2_n_0 ),
        .O(spo[10]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_1 
       (.I0(\spo[10]_INST_0_i_3_n_0 ),
        .I1(\spo[10]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[10]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[10]_INST_0_i_6_n_0 ),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spo[10]_INST_0_i_2 
       (.I0(\spo[10]_INST_0_i_7_n_0 ),
        .I1(\spo[10]_INST_0_i_8_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[10]_INST_0_i_9_n_0 ),
        .O(\spo[10]_INST_0_i_2_n_0 ));
  MUXF7 \spo[10]_INST_0_i_3 
       (.I0(g6_b10_n_0),
        .I1(g7_b10_n_0),
        .O(\spo[10]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[10]_INST_0_i_4 
       (.I0(g4_b10_n_0),
        .I1(g5_b10_n_0),
        .O(\spo[10]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[10]_INST_0_i_5 
       (.I0(g2_b10_n_0),
        .I1(g3_b10_n_0),
        .O(\spo[10]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[10]_INST_0_i_6 
       (.I0(g0_b10_n_0),
        .I1(g1_b10_n_0),
        .O(\spo[10]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[10]_INST_0_i_7 
       (.I0(g14_b10_n_0),
        .I1(g15_b10_n_0),
        .O(\spo[10]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[10]_INST_0_i_8 
       (.I0(g12_b10_n_0),
        .I1(g13_b10_n_0),
        .O(\spo[10]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[10]_INST_0_i_9 
       (.I0(g10_b10_n_0),
        .I1(g11_b10_n_0),
        .O(\spo[10]_INST_0_i_9_n_0 ),
        .S(a[6]));
  MUXF7 \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .O(spo[11]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_1 
       (.I0(\spo[11]_INST_0_i_3_n_0 ),
        .I1(\spo[11]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[11]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[11]_INST_0_i_6_n_0 ),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spo[11]_INST_0_i_2 
       (.I0(\spo[11]_INST_0_i_7_n_0 ),
        .I1(\spo[11]_INST_0_i_8_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[11]_INST_0_i_9_n_0 ),
        .O(\spo[11]_INST_0_i_2_n_0 ));
  MUXF7 \spo[11]_INST_0_i_3 
       (.I0(g6_b11_n_0),
        .I1(g7_b11_n_0),
        .O(\spo[11]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[11]_INST_0_i_4 
       (.I0(g4_b11_n_0),
        .I1(g5_b11_n_0),
        .O(\spo[11]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[11]_INST_0_i_5 
       (.I0(g2_b11_n_0),
        .I1(g3_b11_n_0),
        .O(\spo[11]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[11]_INST_0_i_6 
       (.I0(g0_b11_n_0),
        .I1(g1_b11_n_0),
        .O(\spo[11]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[11]_INST_0_i_7 
       (.I0(g14_b11_n_0),
        .I1(g15_b11_n_0),
        .O(\spo[11]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[11]_INST_0_i_8 
       (.I0(g12_b11_n_0),
        .I1(g13_b11_n_0),
        .O(\spo[11]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[11]_INST_0_i_9 
       (.I0(g10_b11_n_0),
        .I1(g11_b11_n_0),
        .O(\spo[11]_INST_0_i_9_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .O(spo[1]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_3_n_0 ),
        .I1(\spo[1]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_6_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_7_n_0 ),
        .I1(\spo[1]_INST_0_i_8_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[1]_INST_0_i_9_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  MUXF7 \spo[1]_INST_0_i_3 
       (.I0(g6_b1_n_0),
        .I1(g7_b1_n_0),
        .O(\spo[1]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_4 
       (.I0(g4_b1_n_0),
        .I1(g5_b1_n_0),
        .O(\spo[1]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_5 
       (.I0(g2_b1_n_0),
        .I1(g3_b1_n_0),
        .O(\spo[1]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_6 
       (.I0(g0_b1_n_0),
        .I1(g1_b1_n_0),
        .O(\spo[1]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_7 
       (.I0(g14_b1_n_0),
        .I1(g15_b1_n_0),
        .O(\spo[1]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_8 
       (.I0(g12_b1_n_0),
        .I1(g13_b1_n_0),
        .O(\spo[1]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_9 
       (.I0(g10_b1_n_0),
        .I1(g11_b1_n_0),
        .O(\spo[1]_INST_0_i_9_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .O(spo[2]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_3_n_0 ),
        .I1(\spo[2]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_6_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_7_n_0 ),
        .I1(\spo[2]_INST_0_i_8_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[2]_INST_0_i_9_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  MUXF7 \spo[2]_INST_0_i_3 
       (.I0(g6_b2_n_0),
        .I1(g7_b2_n_0),
        .O(\spo[2]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_4 
       (.I0(g4_b2_n_0),
        .I1(g5_b2_n_0),
        .O(\spo[2]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_5 
       (.I0(g2_b2_n_0),
        .I1(g3_b2_n_0),
        .O(\spo[2]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_6 
       (.I0(g0_b2_n_0),
        .I1(g1_b2_n_0),
        .O(\spo[2]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_7 
       (.I0(g14_b2_n_0),
        .I1(g15_b2_n_0),
        .O(\spo[2]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_8 
       (.I0(g12_b2_n_0),
        .I1(g13_b2_n_0),
        .O(\spo[2]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_9 
       (.I0(g10_b2_n_0),
        .I1(g11_b2_n_0),
        .O(\spo[2]_INST_0_i_9_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .O(spo[3]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_3_n_0 ),
        .I1(\spo[3]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_6_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_7_n_0 ),
        .I1(\spo[3]_INST_0_i_8_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[3]_INST_0_i_9_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  MUXF7 \spo[3]_INST_0_i_3 
       (.I0(g6_b3_n_0),
        .I1(g7_b3_n_0),
        .O(\spo[3]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_4 
       (.I0(g4_b3_n_0),
        .I1(g5_b3_n_0),
        .O(\spo[3]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_5 
       (.I0(g2_b3_n_0),
        .I1(g3_b3_n_0),
        .O(\spo[3]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_6 
       (.I0(g0_b3_n_0),
        .I1(g1_b3_n_0),
        .O(\spo[3]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_7 
       (.I0(g14_b3_n_0),
        .I1(g15_b3_n_0),
        .O(\spo[3]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_8 
       (.I0(g12_b3_n_0),
        .I1(g13_b3_n_0),
        .O(\spo[3]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_9 
       (.I0(g10_b3_n_0),
        .I1(g11_b3_n_0),
        .O(\spo[3]_INST_0_i_9_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .O(spo[4]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_3_n_0 ),
        .I1(\spo[4]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_6_n_0 ),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_7_n_0 ),
        .I1(\spo[4]_INST_0_i_8_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[4]_INST_0_i_9_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  MUXF7 \spo[4]_INST_0_i_3 
       (.I0(g6_b4_n_0),
        .I1(g7_b4_n_0),
        .O(\spo[4]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_4 
       (.I0(g4_b4_n_0),
        .I1(g5_b4_n_0),
        .O(\spo[4]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_5 
       (.I0(g2_b4_n_0),
        .I1(g3_b4_n_0),
        .O(\spo[4]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_6 
       (.I0(g0_b4_n_0),
        .I1(g1_b4_n_0),
        .O(\spo[4]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_7 
       (.I0(g14_b4_n_0),
        .I1(g15_b4_n_0),
        .O(\spo[4]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_8 
       (.I0(g12_b4_n_0),
        .I1(g13_b4_n_0),
        .O(\spo[4]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_9 
       (.I0(g10_b4_n_0),
        .I1(g11_b4_n_0),
        .O(\spo[4]_INST_0_i_9_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .O(spo[5]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_3_n_0 ),
        .I1(\spo[5]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_6_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_7_n_0 ),
        .I1(\spo[5]_INST_0_i_8_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[5]_INST_0_i_9_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  MUXF7 \spo[5]_INST_0_i_3 
       (.I0(g6_b5_n_0),
        .I1(g7_b5_n_0),
        .O(\spo[5]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_4 
       (.I0(g4_b5_n_0),
        .I1(g5_b5_n_0),
        .O(\spo[5]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_5 
       (.I0(g2_b5_n_0),
        .I1(g3_b5_n_0),
        .O(\spo[5]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_6 
       (.I0(g0_b5_n_0),
        .I1(g1_b5_n_0),
        .O(\spo[5]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_7 
       (.I0(g14_b5_n_0),
        .I1(g15_b5_n_0),
        .O(\spo[5]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_8 
       (.I0(g12_b5_n_0),
        .I1(g13_b5_n_0),
        .O(\spo[5]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_9 
       (.I0(g10_b5_n_0),
        .I1(g11_b5_n_0),
        .O(\spo[5]_INST_0_i_9_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[6]_INST_0_i_2_n_0 ),
        .O(spo[6]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_3_n_0 ),
        .I1(\spo[6]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_6_n_0 ),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_7_n_0 ),
        .I1(\spo[6]_INST_0_i_8_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[6]_INST_0_i_9_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  MUXF7 \spo[6]_INST_0_i_3 
       (.I0(g6_b6_n_0),
        .I1(g7_b6_n_0),
        .O(\spo[6]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_4 
       (.I0(g4_b6_n_0),
        .I1(g5_b6_n_0),
        .O(\spo[6]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_5 
       (.I0(g2_b6_n_0),
        .I1(g3_b6_n_0),
        .O(\spo[6]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_6 
       (.I0(g0_b6_n_0),
        .I1(g1_b6_n_0),
        .O(\spo[6]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_7 
       (.I0(g14_b6_n_0),
        .I1(g15_b6_n_0),
        .O(\spo[6]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_8 
       (.I0(g12_b6_n_0),
        .I1(g13_b6_n_0),
        .O(\spo[6]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_9 
       (.I0(g10_b6_n_0),
        .I1(g11_b6_n_0),
        .O(\spo[6]_INST_0_i_9_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(\spo[7]_INST_0_i_2_n_0 ),
        .O(spo[7]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_3_n_0 ),
        .I1(\spo[7]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_6_n_0 ),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spo[7]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_7_n_0 ),
        .I1(\spo[7]_INST_0_i_8_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[7]_INST_0_i_9_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  MUXF7 \spo[7]_INST_0_i_3 
       (.I0(g6_b7_n_0),
        .I1(g7_b7_n_0),
        .O(\spo[7]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_4 
       (.I0(g4_b7_n_0),
        .I1(g5_b7_n_0),
        .O(\spo[7]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_5 
       (.I0(g2_b7_n_0),
        .I1(g3_b7_n_0),
        .O(\spo[7]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_6 
       (.I0(g0_b7_n_0),
        .I1(g1_b7_n_0),
        .O(\spo[7]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_7 
       (.I0(g14_b7_n_0),
        .I1(g15_b7_n_0),
        .O(\spo[7]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_8 
       (.I0(g12_b7_n_0),
        .I1(g13_b7_n_0),
        .O(\spo[7]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_9 
       (.I0(g10_b7_n_0),
        .I1(g11_b7_n_0),
        .O(\spo[7]_INST_0_i_9_n_0 ),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(\spo[8]_INST_0_i_2_n_0 ),
        .O(spo[8]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_3_n_0 ),
        .I1(\spo[8]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[8]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spo[8]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_7_n_0 ),
        .I1(\spo[8]_INST_0_i_8_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[8]_INST_0_i_9_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ));
  MUXF7 \spo[8]_INST_0_i_3 
       (.I0(g6_b8_n_0),
        .I1(g7_b8_n_0),
        .O(\spo[8]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_4 
       (.I0(g4_b8_n_0),
        .I1(g5_b8_n_0),
        .O(\spo[8]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_5 
       (.I0(g2_b8_n_0),
        .I1(g3_b8_n_0),
        .O(\spo[8]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_6 
       (.I0(g0_b8_n_0),
        .I1(g1_b8_n_0),
        .O(\spo[8]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_7 
       (.I0(g14_b8_n_0),
        .I1(g15_b8_n_0),
        .O(\spo[8]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_8 
       (.I0(g12_b8_n_0),
        .I1(g13_b8_n_0),
        .O(\spo[8]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_9 
       (.I0(g10_b8_n_0),
        .I1(g11_b8_n_0),
        .O(\spo[8]_INST_0_i_9_n_0 ),
        .S(a[6]));
  MUXF7 \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(\spo[9]_INST_0_i_2_n_0 ),
        .O(spo[9]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_1 
       (.I0(\spo[9]_INST_0_i_3_n_0 ),
        .I1(\spo[9]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[9]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[9]_INST_0_i_6_n_0 ),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spo[9]_INST_0_i_2 
       (.I0(\spo[9]_INST_0_i_7_n_0 ),
        .I1(\spo[9]_INST_0_i_8_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[9]_INST_0_i_9_n_0 ),
        .O(\spo[9]_INST_0_i_2_n_0 ));
  MUXF7 \spo[9]_INST_0_i_3 
       (.I0(g6_b9_n_0),
        .I1(g7_b9_n_0),
        .O(\spo[9]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[9]_INST_0_i_4 
       (.I0(g4_b9_n_0),
        .I1(g5_b9_n_0),
        .O(\spo[9]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[9]_INST_0_i_5 
       (.I0(g2_b9_n_0),
        .I1(g3_b9_n_0),
        .O(\spo[9]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[9]_INST_0_i_6 
       (.I0(g0_b9_n_0),
        .I1(g1_b9_n_0),
        .O(\spo[9]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[9]_INST_0_i_7 
       (.I0(g14_b9_n_0),
        .I1(g15_b9_n_0),
        .O(\spo[9]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[9]_INST_0_i_8 
       (.I0(g12_b9_n_0),
        .I1(g13_b9_n_0),
        .O(\spo[9]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[9]_INST_0_i_9 
       (.I0(g10_b9_n_0),
        .I1(g11_b9_n_0),
        .O(\spo[9]_INST_0_i_9_n_0 ),
        .S(a[6]));
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
