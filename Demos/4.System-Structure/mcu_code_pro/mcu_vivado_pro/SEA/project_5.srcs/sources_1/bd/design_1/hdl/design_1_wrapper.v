//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Mar  9 18:19:05 2020
//Host        : DESKTOP-2RGUD32 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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

  design_1 design_1_i
       (.RA(RA),
        .mclr(mclr),
        .osc1(osc1));
endmodule
