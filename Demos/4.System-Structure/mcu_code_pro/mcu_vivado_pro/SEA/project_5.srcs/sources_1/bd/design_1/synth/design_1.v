//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Mar  9 18:19:05 2020
//Host        : DESKTOP-2RGUD32 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,da_ps7_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (RA,
    mclr,
    osc1);
  inout [3:0]RA;
  input mclr;
  input osc1;

  wire [3:0]Net;
  wire [11:0]dist_mem_gen_0_spo;
  wire mclr_1;
  wire osc1_1;
  wire [9:0]pic16c56_0_romaddr;

  assign mclr_1 = mclr;
  assign osc1_1 = osc1;
  design_1_dist_mem_gen_0_0 dist_mem_gen_0
       (.a(pic16c56_0_romaddr),
        .spo(dist_mem_gen_0_spo));
  design_1_pic16c56_0_0 pic16c56_0
       (.RA(RA[3:0]),
        .mclr(mclr_1),
        .osc1(osc1_1),
        .romaddr(pic16c56_0_romaddr),
        .romdata(dist_mem_gen_0_spo));
endmodule
