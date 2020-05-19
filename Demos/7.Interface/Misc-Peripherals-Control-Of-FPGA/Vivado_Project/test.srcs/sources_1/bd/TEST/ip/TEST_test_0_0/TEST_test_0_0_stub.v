// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed May 29 17:10:25 2019
// Host        : DESKTOP-JG260B6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/dell/Desktop/xilinx/test/IO_LED_sw/test/test.srcs/sources_1/bd/TEST/ip/TEST_test_0_0/TEST_test_0_0_stub.v
// Design      : TEST_test_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "test,Vivado 2018.2" *)
module TEST_test_0_0(clk, k1, k2, k3, k4, io0, io1, io2, io3, io4, io5, io6, io7, io8, 
  io9, io10, io11, io12, io13, led1, led2, fpga_rgb, dac_clk, adc_en, din, sync, adc_date, IN1, IN4, SDA, SCL)
/* synthesis syn_black_box black_box_pad_pin="clk,k1,k2,k3,k4,io0,io1,io2,io3,io4,io5,io6,io7,io8,io9,io10,io11,io12,io13,led1,led2,fpga_rgb,dac_clk,adc_en,din,sync,adc_date[7:0],IN1,IN4,SDA,SCL" */;
  input clk;
  input k1;
  input k2;
  input k3;
  input k4;
  output io0;
  output io1;
  output io2;
  output io3;
  output io4;
  output io5;
  output io6;
  output io7;
  output io8;
  output io9;
  output io10;
  output io11;
  output io12;
  output io13;
  output led1;
  output led2;
  output fpga_rgb;
  input dac_clk;
  output adc_en;
  output din;
  output sync;
  input [7:0]adc_date;
  output IN1;
  output IN4;
  output SDA;
  output SCL;
endmodule
