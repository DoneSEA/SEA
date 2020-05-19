//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat Aug 17 20:21:20 2019
//Host        : DESKTOP-I5C7VJ9 running 64-bit major release  (build 9200)
//Command     : generate_target dac6.bd
//Design      : dac6
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "dac6,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=dac6,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=2,synth_mode=Global}" *) (* HW_HANDOFF = "dac6.hwdef" *) 
module dac6
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DAC_SCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DAC_SCLK, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 12000000, INSERT_VIP 0, PHASE 0.0" *) output DAC_SCLK;
  output DAC_SYNC;
  inout IO_qspi_io0_0;
  inout IO_qspi_io1_0;
  inout IO_qspi_io2_0;
  inout IO_qspi_io3_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_QSPI_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_QSPI_CLK_0, CLK_DOMAIN dac6_I_qspi_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input I_qspi_clk_0;
  input I_qspi_cs_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN dac6_clk_100MHz, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_100MHz;
  output oe_0;
  input sw_0;

  wire I_qspi_clk_0_1;
  wire I_qspi_cs_0_1;
  wire Net;
  wire Net1;
  wire Net2;
  wire Net3;
  wire [7:0]Net4;
  wire [31:0]QSPI_slave_0_o_addr;
  wire [7:0]QSPI_slave_0_o_data;
  wire QSPI_slave_0_o_valid;
  wire [11:0]blk_mem_gen_0_douta;
  wire [11:0]blk_mem_gen_1_douta;
  wire [11:0]blk_mem_gen_2_douta;
  wire [11:0]blk_mem_gen_3_douta;
  wire [7:0]blk_mem_gen_4_douta;
  wire clk_100MHz_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire dac_0_din;
  wire [8:0]dac_0_rom_addr;
  wire dac_0_rom_en;
  wire dac_0_sync;
  wire oe_0_oe;
  wire sw_0_1;
  wire [8:0]switch_0_addr_0;
  wire [8:0]switch_0_addr_1;
  wire [8:0]switch_0_addr_2;
  wire [8:0]switch_0_addr_3;
  wire [11:0]switch_0_data;
  wire switch_0_en_0;
  wire switch_0_en_1;
  wire switch_0_en_2;
  wire switch_0_en_3;
  wire [8:0]switch_0_freq;
  wire [7:0]xlconstant_0_dout;

  assign DAC_DIN = dac_0_din;
  assign DAC_SCLK = clk_wiz_0_clk_out1;
  assign DAC_SYNC = dac_0_sync;
  assign I_qspi_clk_0_1 = I_qspi_clk_0;
  assign I_qspi_cs_0_1 = I_qspi_cs_0;
  assign clk_100MHz_1 = clk_100MHz;
  assign oe_0 = oe_0_oe;
  assign sw_0_1 = sw_0;
  dac6_QSPI_slave_0_0 QSPI_slave_0
       (.IO_qspi_io0(IO_qspi_io0_0),
        .IO_qspi_io1(IO_qspi_io1_0),
        .IO_qspi_io2(IO_qspi_io2_0),
        .IO_qspi_io3(IO_qspi_io3_0),
        .I_qspi_clk(I_qspi_clk_0_1),
        .I_qspi_cs(I_qspi_cs_0_1),
        .i_data(blk_mem_gen_4_douta),
        .o_addr(QSPI_slave_0_o_addr),
        .o_data(QSPI_slave_0_o_data),
        .o_valid(QSPI_slave_0_o_valid));
  dac6_blk_mem_gen_0_1 blk_mem_gen_0
       (.addra(switch_0_addr_0),
        .clka(clk_wiz_0_clk_out1),
        .douta(blk_mem_gen_0_douta),
        .ena(switch_0_en_0));
  dac6_blk_mem_gen_1_0 blk_mem_gen_1
       (.addra(switch_0_addr_1),
        .clka(clk_wiz_0_clk_out1),
        .douta(blk_mem_gen_1_douta),
        .ena(switch_0_en_1));
  dac6_blk_mem_gen_2_0 blk_mem_gen_2
       (.addra(switch_0_addr_2),
        .clka(clk_wiz_0_clk_out1),
        .douta(blk_mem_gen_2_douta),
        .ena(switch_0_en_2));
  dac6_blk_mem_gen_3_0 blk_mem_gen_3
       (.addra(switch_0_addr_3),
        .clka(clk_wiz_0_clk_out1),
        .douta(blk_mem_gen_3_douta),
        .ena(switch_0_en_3));
  dac6_blk_mem_gen_4_1 blk_mem_gen_4
       (.addra(QSPI_slave_0_o_addr[7:0]),
        .addrb(xlconstant_0_dout),
        .clka(I_qspi_clk_0_1),
        .clkb(clk_wiz_0_clk_out2),
        .dina(QSPI_slave_0_o_data),
        .dinb(xlconstant_0_dout),
        .douta(blk_mem_gen_4_douta),
        .doutb(Net4),
        .wea(QSPI_slave_0_o_valid),
        .web(xlconstant_0_dout[0]));
  dac6_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_100MHz_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2));
  dac6_dac_0_0 dac_0
       (.clk(clk_wiz_0_clk_out1),
        .din(dac_0_din),
        .freq(switch_0_freq),
        .rom_addr(dac_0_rom_addr),
        .rom_data(switch_0_data),
        .rom_en(dac_0_rom_en),
        .sync(dac_0_sync));
  dac6_oe_0_0 oe_0_RnM
       (.oe(oe_0_oe),
        .sw(sw_0_1));
  dac6_switch_0_0 switch_0
       (.addr(dac_0_rom_addr),
        .addr_0(switch_0_addr_0),
        .addr_1(switch_0_addr_1),
        .addr_2(switch_0_addr_2),
        .addr_3(switch_0_addr_3),
        .clk(clk_wiz_0_clk_out1),
        .clk_control(clk_wiz_0_clk_out2),
        .control(Net4),
        .data_0(blk_mem_gen_0_douta),
        .data_1(blk_mem_gen_1_douta),
        .data_2(blk_mem_gen_2_douta),
        .data_3(blk_mem_gen_3_douta),
        .data_out(switch_0_data),
        .en(dac_0_rom_en),
        .en_0(switch_0_en_0),
        .en_1(switch_0_en_1),
        .en_2(switch_0_en_2),
        .en_3(switch_0_en_3),
        .freq(switch_0_freq));
  dac6_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
