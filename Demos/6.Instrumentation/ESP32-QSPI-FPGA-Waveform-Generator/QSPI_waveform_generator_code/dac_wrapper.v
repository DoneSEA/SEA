//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat Aug 17 20:21:20 2019
//Host        : DESKTOP-I5C7VJ9 running 64-bit major release  (build 9200)
//Command     : generate_target dac6_wrapper.bd
//Design      : dac6_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dac6_wrapper
   (DAC_DIN,
    DAC_SCLK,
    DAC_SYNC,
    IO_qspi_io0_0,
    IO_qspi_io1_0,
    IO_qspi_io2_0,
    IO_qspi_io3_0,
    I_qspi_clk_0,
    I_qspi_cs_0,
    clk_100MHz,
    oe_0,
    sw_0);
  output DAC_DIN;
  output DAC_SCLK;
  output DAC_SYNC;
  inout IO_qspi_io0_0;
  inout IO_qspi_io1_0;
  inout IO_qspi_io2_0;
  inout IO_qspi_io3_0;
  input I_qspi_clk_0;
  input I_qspi_cs_0;
  input clk_100MHz;
  output oe_0;
  input sw_0;

  wire DAC_DIN;
  wire DAC_SCLK;
  wire DAC_SYNC;
  wire IO_qspi_io0_0;
  wire IO_qspi_io1_0;
  wire IO_qspi_io2_0;
  wire IO_qspi_io3_0;
  wire I_qspi_clk_0;
  wire I_qspi_cs_0;
  wire clk_100MHz;
  wire oe_0;
  wire sw_0;

  dac6 dac6_i
       (.DAC_DIN(DAC_DIN),
        .DAC_SCLK(DAC_SCLK),
        .DAC_SYNC(DAC_SYNC),
        .IO_qspi_io0_0(IO_qspi_io0_0),
        .IO_qspi_io1_0(IO_qspi_io1_0),
        .IO_qspi_io2_0(IO_qspi_io2_0),
        .IO_qspi_io3_0(IO_qspi_io3_0),
        .I_qspi_clk_0(I_qspi_clk_0),
        .I_qspi_cs_0(I_qspi_cs_0),
        .clk_100MHz(clk_100MHz),
        .oe_0(oe_0),
        .sw_0(sw_0));
endmodule
