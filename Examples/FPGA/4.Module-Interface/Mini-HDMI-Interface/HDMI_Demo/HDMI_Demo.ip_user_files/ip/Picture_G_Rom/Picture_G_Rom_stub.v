// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Nov 11 15:38:55 2019
// Host        : DESKTOP-DU9F0PS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Opex9020/Desktop/SEA-Tutorial/Experiment-of-SEA/FPGA-Demo-Project/HDMI-Demo/HDMI_Demo/HDMI_Demo.srcs/sources_1/ip/Picture_G_Rom/Picture_G_Rom_stub.v
// Design      : Picture_G_Rom
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *)
module Picture_G_Rom(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[13:0],douta[7:0]" */;
  input clka;
  input ena;
  input [13:0]addra;
  output [7:0]douta;
endmodule
