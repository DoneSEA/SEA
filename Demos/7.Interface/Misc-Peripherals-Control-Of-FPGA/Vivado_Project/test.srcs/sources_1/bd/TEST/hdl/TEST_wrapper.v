//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed May 29 17:09:29 2019
//Host        : DESKTOP-JG260B6 running 64-bit major release  (build 9200)
//Command     : generate_target TEST_wrapper.bd
//Design      : TEST_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TEST_wrapper
   (IN1_0,
    IN4_0,
    SCL_0,
    SDA_0,
    adc_date_0,
    adc_en_0,
    clk_in1_0,
    clk_out2_0,
    clk_out3_0,
    din_0,
    fpga_rgb_0,
    io0_0,
    io10_0,
    io11_0,
    io12_0,
    io13_0,
    io1_0,
    io2_0,
    io3_0,
    io4_0,
    io5_0,
    io6_0,
    io7_0,
    io8_0,
    io9_0,
    k1_0,
    k2_0,
    k3_0,
    k4_0,
    led1_0,
    led2_0,
    sync_0);
  output IN1_0;
  output IN4_0;
  output SCL_0;
  output SDA_0;
  input [7:0]adc_date_0;
  output adc_en_0;
  input clk_in1_0;
  output clk_out2_0;
  output clk_out3_0;
  output din_0;
  output fpga_rgb_0;
  output io0_0;
  output io10_0;
  output io11_0;
  output io12_0;
  output io13_0;
  output io1_0;
  output io2_0;
  output io3_0;
  output io4_0;
  output io5_0;
  output io6_0;
  output io7_0;
  output io8_0;
  output io9_0;
  input k1_0;
  input k2_0;
  input k3_0;
  input k4_0;
  output led1_0;
  output led2_0;
  output sync_0;

  wire IN1_0;
  wire IN4_0;
  wire SCL_0;
  wire SDA_0;
  wire [7:0]adc_date_0;
  wire adc_en_0;
  wire clk_in1_0;
  wire clk_out2_0;
  wire clk_out3_0;
  wire din_0;
  wire fpga_rgb_0;
  wire io0_0;
  wire io10_0;
  wire io11_0;
  wire io12_0;
  wire io13_0;
  wire io1_0;
  wire io2_0;
  wire io3_0;
  wire io4_0;
  wire io5_0;
  wire io6_0;
  wire io7_0;
  wire io8_0;
  wire io9_0;
  wire k1_0;
  wire k2_0;
  wire k3_0;
  wire k4_0;
  wire led1_0;
  wire led2_0;
  wire sync_0;

  TEST TEST_i
       (.IN1_0(IN1_0),
        .IN4_0(IN4_0),
        .SCL_0(SCL_0),
        .SDA_0(SDA_0),
        .adc_date_0(adc_date_0),
        .adc_en_0(adc_en_0),
        .clk_in1_0(clk_in1_0),
        .clk_out2_0(clk_out2_0),
        .clk_out3_0(clk_out3_0),
        .din_0(din_0),
        .fpga_rgb_0(fpga_rgb_0),
        .io0_0(io0_0),
        .io10_0(io10_0),
        .io11_0(io11_0),
        .io12_0(io12_0),
        .io13_0(io13_0),
        .io1_0(io1_0),
        .io2_0(io2_0),
        .io3_0(io3_0),
        .io4_0(io4_0),
        .io5_0(io5_0),
        .io6_0(io6_0),
        .io7_0(io7_0),
        .io8_0(io8_0),
        .io9_0(io9_0),
        .k1_0(k1_0),
        .k2_0(k2_0),
        .k3_0(k3_0),
        .k4_0(k4_0),
        .led1_0(led1_0),
        .led2_0(led2_0),
        .sync_0(sync_0));
endmodule
