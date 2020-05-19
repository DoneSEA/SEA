//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed May 29 17:09:29 2019
//Host        : DESKTOP-JG260B6 running 64-bit major release  (build 9200)
//Command     : generate_target TEST.bd
//Design      : TEST
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "TEST,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=TEST,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "TEST.hwdef" *) 
module TEST
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN TEST_clk_in1_0, FREQ_HZ 100000000, PHASE 0.000" *) input clk_in1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT2_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT2_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 20000000, PHASE 0.0" *) output clk_out2_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT3_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT3_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 20000000, PHASE 0.0" *) output clk_out3_0;
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

  wire [7:0]adc_date_0_1;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire k1_0_1;
  wire k2_0_1;
  wire k3_0_1;
  wire k4_0_1;
  wire test_0_IN1;
  wire test_0_IN4;
  wire test_0_SCL;
  wire test_0_SDA;
  wire test_0_adc_en;
  wire test_0_din;
  wire test_0_fpga_rgb;
  wire test_0_io0;
  wire test_0_io1;
  wire test_0_io10;
  wire test_0_io11;
  wire test_0_io12;
  wire test_0_io13;
  wire test_0_io2;
  wire test_0_io3;
  wire test_0_io4;
  wire test_0_io5;
  wire test_0_io6;
  wire test_0_io7;
  wire test_0_io8;
  wire test_0_io9;
  wire test_0_led1;
  wire test_0_led2;
  wire test_0_sync;

  assign IN1_0 = test_0_IN1;
  assign IN4_0 = test_0_IN4;
  assign SCL_0 = test_0_SCL;
  assign SDA_0 = test_0_SDA;
  assign adc_date_0_1 = adc_date_0[7:0];
  assign adc_en_0 = test_0_adc_en;
  assign clk_in1_0_1 = clk_in1_0;
  assign clk_out2_0 = clk_wiz_0_clk_out2;
  assign clk_out3_0 = clk_wiz_0_clk_out2;
  assign din_0 = test_0_din;
  assign fpga_rgb_0 = test_0_fpga_rgb;
  assign io0_0 = test_0_io0;
  assign io10_0 = test_0_io10;
  assign io11_0 = test_0_io11;
  assign io12_0 = test_0_io12;
  assign io13_0 = test_0_io13;
  assign io1_0 = test_0_io1;
  assign io2_0 = test_0_io2;
  assign io3_0 = test_0_io3;
  assign io4_0 = test_0_io4;
  assign io5_0 = test_0_io5;
  assign io6_0 = test_0_io6;
  assign io7_0 = test_0_io7;
  assign io8_0 = test_0_io8;
  assign io9_0 = test_0_io9;
  assign k1_0_1 = k1_0;
  assign k2_0_1 = k2_0;
  assign k3_0_1 = k3_0;
  assign k4_0_1 = k4_0;
  assign led1_0 = test_0_led1;
  assign led2_0 = test_0_led2;
  assign sync_0 = test_0_sync;
  TEST_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2));
  TEST_test_0_0 test_0
       (.IN1(test_0_IN1),
        .IN4(test_0_IN4),
        .SCL(test_0_SCL),
        .SDA(test_0_SDA),
        .adc_date(adc_date_0_1),
        .adc_en(test_0_adc_en),
        .clk(clk_wiz_0_clk_out1),
        .dac_clk(clk_wiz_0_clk_out2),
        .din(test_0_din),
        .fpga_rgb(test_0_fpga_rgb),
        .io0(test_0_io0),
        .io1(test_0_io1),
        .io10(test_0_io10),
        .io11(test_0_io11),
        .io12(test_0_io12),
        .io13(test_0_io13),
        .io2(test_0_io2),
        .io3(test_0_io3),
        .io4(test_0_io4),
        .io5(test_0_io5),
        .io6(test_0_io6),
        .io7(test_0_io7),
        .io8(test_0_io8),
        .io9(test_0_io9),
        .k1(k1_0_1),
        .k2(k2_0_1),
        .k3(k3_0_1),
        .k4(k4_0_1),
        .led1(test_0_led1),
        .led2(test_0_led2),
        .sync(test_0_sync));
endmodule
