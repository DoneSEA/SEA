// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:test:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module TEST_test_0_0 (
  clk,
  k1,
  k2,
  k3,
  k4,
  io0,
  io1,
  io2,
  io3,
  io4,
  io5,
  io6,
  io7,
  io8,
  io9,
  io10,
  io11,
  io12,
  io13,
  led1,
  led2,
  fpga_rgb,
  dac_clk,
  adc_en,
  din,
  sync,
  adc_date,
  IN1,
  IN4,
  SDA,
  SCL
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire k1;
input wire k2;
input wire k3;
input wire k4;
output wire io0;
output wire io1;
output wire io2;
output wire io3;
output wire io4;
output wire io5;
output wire io6;
output wire io7;
output wire io8;
output wire io9;
output wire io10;
output wire io11;
output wire io12;
output wire io13;
output wire led1;
output wire led2;
output wire fpga_rgb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac_clk, FREQ_HZ 20000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac_clk CLK" *)
input wire dac_clk;
output wire adc_en;
output wire din;
output wire sync;
input wire [7 : 0] adc_date;
output wire IN1;
output wire IN4;
output wire SDA;
output wire SCL;

  test inst (
    .clk(clk),
    .k1(k1),
    .k2(k2),
    .k3(k3),
    .k4(k4),
    .io0(io0),
    .io1(io1),
    .io2(io2),
    .io3(io3),
    .io4(io4),
    .io5(io5),
    .io6(io6),
    .io7(io7),
    .io8(io8),
    .io9(io9),
    .io10(io10),
    .io11(io11),
    .io12(io12),
    .io13(io13),
    .led1(led1),
    .led2(led2),
    .fpga_rgb(fpga_rgb),
    .dac_clk(dac_clk),
    .adc_en(adc_en),
    .din(din),
    .sync(sync),
    .adc_date(adc_date),
    .IN1(IN1),
    .IN4(IN4),
    .SDA(SDA),
    .SCL(SCL)
  );
endmodule
