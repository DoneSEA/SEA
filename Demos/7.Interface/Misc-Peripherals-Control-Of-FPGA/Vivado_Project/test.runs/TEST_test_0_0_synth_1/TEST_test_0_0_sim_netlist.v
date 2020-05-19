// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed May 29 17:10:24 2019
// Host        : DESKTOP-JG260B6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ TEST_test_0_0_sim_netlist.v
// Design      : TEST_test_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TEST_test_0_0,test,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "test,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
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
    SCL);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac_clk, FREQ_HZ 20000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input dac_clk;
  output adc_en;
  output din;
  output sync;
  input [7:0]adc_date;
  output IN1;
  output IN4;
  output SDA;
  output SCL;

  wire [7:0]adc_date;
  wire adc_en;
  wire clk;
  wire din;
  wire fpga_rgb;
  wire io0;
  wire io1;
  wire io2;
  wire k1;
  wire k2;
  wire k3;
  wire k4;
  wire sync;

  assign IN1 = k1;
  assign IN4 = k2;
  assign SCL = k4;
  assign SDA = k3;
  assign io10 = k1;
  assign io11 = k2;
  assign io12 = k1;
  assign io13 = k2;
  assign io3 = k2;
  assign io4 = k1;
  assign io5 = k2;
  assign io6 = k1;
  assign io7 = k2;
  assign io8 = k1;
  assign io9 = k2;
  assign led1 = k3;
  assign led2 = k4;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_test inst
       (.adc_date(adc_date),
        .adc_en(adc_en),
        .clk(clk),
        .din(din),
        .fpga_rgb(fpga_rgb),
        .io0(io0),
        .sync(sync));
  LUT1 #(
    .INIT(2'h1)) 
    io1_INST_0
       (.I0(k3),
        .O(io1));
  LUT1 #(
    .INIT(2'h1)) 
    io2_INST_0
       (.I0(k4),
        .O(io2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_test
   (io0,
    fpga_rgb,
    adc_en,
    din,
    sync,
    clk,
    adc_date);
  output io0;
  output fpga_rgb;
  output adc_en;
  output din;
  output sync;
  input clk;
  input [7:0]adc_date;

  wire [7:0]adc_date;
  wire adc_en;
  wire adc_en_i_1_n_0;
  wire clk;
  wire [1:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt_a[7]_i_2_n_0 ;
  wire [7:6]cnt_a_reg__0;
  wire \cnt_a_reg_n_0_[0] ;
  wire \cnt_a_reg_n_0_[1] ;
  wire \cnt_a_reg_n_0_[2] ;
  wire \cnt_a_reg_n_0_[3] ;
  wire \cnt_a_reg_n_0_[4] ;
  wire \cnt_a_reg_n_0_[5] ;
  wire [23:0]cnt_n;
  wire cnt_n0_carry__0_n_0;
  wire cnt_n0_carry__0_n_1;
  wire cnt_n0_carry__0_n_2;
  wire cnt_n0_carry__0_n_3;
  wire cnt_n0_carry__0_n_4;
  wire cnt_n0_carry__0_n_5;
  wire cnt_n0_carry__0_n_6;
  wire cnt_n0_carry__0_n_7;
  wire cnt_n0_carry__1_n_0;
  wire cnt_n0_carry__1_n_1;
  wire cnt_n0_carry__1_n_2;
  wire cnt_n0_carry__1_n_3;
  wire cnt_n0_carry__1_n_4;
  wire cnt_n0_carry__1_n_5;
  wire cnt_n0_carry__1_n_6;
  wire cnt_n0_carry__1_n_7;
  wire cnt_n0_carry__2_n_0;
  wire cnt_n0_carry__2_n_1;
  wire cnt_n0_carry__2_n_2;
  wire cnt_n0_carry__2_n_3;
  wire cnt_n0_carry__2_n_4;
  wire cnt_n0_carry__2_n_5;
  wire cnt_n0_carry__2_n_6;
  wire cnt_n0_carry__2_n_7;
  wire cnt_n0_carry__3_n_0;
  wire cnt_n0_carry__3_n_1;
  wire cnt_n0_carry__3_n_2;
  wire cnt_n0_carry__3_n_3;
  wire cnt_n0_carry__3_n_4;
  wire cnt_n0_carry__3_n_5;
  wire cnt_n0_carry__3_n_6;
  wire cnt_n0_carry__3_n_7;
  wire cnt_n0_carry__4_n_2;
  wire cnt_n0_carry__4_n_3;
  wire cnt_n0_carry__4_n_5;
  wire cnt_n0_carry__4_n_6;
  wire cnt_n0_carry__4_n_7;
  wire cnt_n0_carry_n_0;
  wire cnt_n0_carry_n_1;
  wire cnt_n0_carry_n_2;
  wire cnt_n0_carry_n_3;
  wire cnt_n0_carry_n_4;
  wire cnt_n0_carry_n_5;
  wire cnt_n0_carry_n_6;
  wire cnt_n0_carry_n_7;
  wire \cnt_n[0]_i_2_n_0 ;
  wire \cnt_n[0]_i_3_n_0 ;
  wire \cnt_n[0]_i_4_n_0 ;
  wire \cnt_n[0]_i_5_n_0 ;
  wire \cnt_n[0]_i_6_n_0 ;
  wire \cnt_n[0]_i_7_n_0 ;
  wire \cnt_n[0]_i_8_n_0 ;
  wire \cnt_n[23]_i_1_n_0 ;
  wire [0:0]cnt_n_0;
  wire [4:0]dac_cnt;
  wire \dac_cnt[0]_i_1_n_0 ;
  wire \dac_cnt[1]_i_1_n_0 ;
  wire \dac_cnt[2]_i_1_n_0 ;
  wire \dac_cnt[3]_i_1_n_0 ;
  wire \dac_cnt[4]_i_1_n_0 ;
  wire \dac_cnt[4]_i_2_n_0 ;
  wire \data_cnt[0]_i_1_n_0 ;
  wire \data_cnt[1]_i_1_n_0 ;
  wire \data_cnt[2]_i_1_n_0 ;
  wire \data_cnt[3]_i_1_n_0 ;
  wire \data_cnt[4]_i_1_n_0 ;
  wire \data_cnt[5]_i_1_n_0 ;
  wire \data_cnt[5]_i_2_n_0 ;
  wire \data_cnt[5]_i_3_n_0 ;
  wire \data_cnt[5]_i_4_n_0 ;
  wire \data_cnt[5]_i_5_n_0 ;
  wire \data_cnt[5]_i_6_n_0 ;
  wire \data_cnt[5]_i_7_n_0 ;
  wire \data_cnt[6]_i_1_n_0 ;
  wire \data_cnt[7]_i_1_n_0 ;
  wire \data_cnt[8]_i_1_n_0 ;
  wire \data_cnt[8]_i_2_n_0 ;
  wire \data_cnt_reg_n_0_[0] ;
  wire \data_cnt_reg_n_0_[1] ;
  wire \data_cnt_reg_n_0_[2] ;
  wire \data_cnt_reg_n_0_[3] ;
  wire \data_cnt_reg_n_0_[4] ;
  wire \data_cnt_reg_n_0_[5] ;
  wire \data_cnt_reg_n_0_[6] ;
  wire \data_cnt_reg_n_0_[7] ;
  wire \data_cnt_reg_n_0_[8] ;
  wire din;
  wire din_i_1_n_0;
  wire din_i_2_n_0;
  wire din_i_3_n_0;
  wire din_i_4_n_0;
  wire din_i_5_n_0;
  wire fpga_rgb;
  wire fpga_rgb_i_1_n_0;
  wire fpga_rgb_i_2_n_0;
  wire fpga_rgb_i_3_n_0;
  wire fpga_rgb_i_4_n_0;
  wire io0;
  wire io0_i_1_n_0;
  wire [7:0]p_0_in;
  wire [9:1]p_1_in;
  wire [16:0]rgb_data;
  wire \rgb_data[0]_i_1_n_0 ;
  wire \send_cnt[0]_i_1_n_0 ;
  wire \send_cnt[0]_i_2_n_0 ;
  wire \send_cnt[0]_i_3_n_0 ;
  wire \send_cnt[3]_i_2_n_0 ;
  wire \send_cnt[3]_i_3_n_0 ;
  wire \send_cnt[5]_i_2_n_0 ;
  wire \send_cnt[5]_i_3_n_0 ;
  wire \send_cnt[8]_i_2_n_0 ;
  wire \send_cnt[8]_i_3_n_0 ;
  wire \send_cnt[8]_i_4_n_0 ;
  wire \send_cnt[9]_i_1_n_0 ;
  wire \send_cnt[9]_i_3_n_0 ;
  wire \send_cnt[9]_i_4_n_0 ;
  wire \send_cnt[9]_i_5_n_0 ;
  wire \send_cnt_reg_n_0_[0] ;
  wire \send_cnt_reg_n_0_[1] ;
  wire \send_cnt_reg_n_0_[2] ;
  wire \send_cnt_reg_n_0_[3] ;
  wire \send_cnt_reg_n_0_[4] ;
  wire \send_cnt_reg_n_0_[5] ;
  wire \send_cnt_reg_n_0_[6] ;
  wire \send_cnt_reg_n_0_[7] ;
  wire \send_cnt_reg_n_0_[8] ;
  wire \send_cnt_reg_n_0_[9] ;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire sync;
  wire sync_i_1_n_0;
  wire [3:2]NLW_cnt_n0_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_n0_carry__4_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFF7FFFFF00000100)) 
    adc_en_i_1
       (.I0(dac_cnt[1]),
        .I1(dac_cnt[0]),
        .I2(dac_cnt[3]),
        .I3(dac_cnt[4]),
        .I4(dac_cnt[2]),
        .I5(adc_en),
        .O(adc_en_i_1_n_0));
  FDRE adc_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(adc_en_i_1_n_0),
        .Q(adc_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \cnt[0]_i_1 
       (.I0(cnt_n[0]),
        .I1(\cnt_n[0]_i_2_n_0 ),
        .I2(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFD02)) 
    \cnt[1]_i_1 
       (.I0(cnt[0]),
        .I1(\cnt_n[0]_i_2_n_0 ),
        .I2(cnt_n[0]),
        .I3(cnt[1]),
        .O(\cnt[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_a[0]_i_1 
       (.I0(\cnt_a_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_a[1]_i_1 
       (.I0(\cnt_a_reg_n_0_[0] ),
        .I1(\cnt_a_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_a[2]_i_1 
       (.I0(\cnt_a_reg_n_0_[0] ),
        .I1(\cnt_a_reg_n_0_[1] ),
        .I2(\cnt_a_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_a[3]_i_1 
       (.I0(\cnt_a_reg_n_0_[1] ),
        .I1(\cnt_a_reg_n_0_[0] ),
        .I2(\cnt_a_reg_n_0_[2] ),
        .I3(\cnt_a_reg_n_0_[3] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_a[4]_i_1 
       (.I0(\cnt_a_reg_n_0_[2] ),
        .I1(\cnt_a_reg_n_0_[0] ),
        .I2(\cnt_a_reg_n_0_[1] ),
        .I3(\cnt_a_reg_n_0_[3] ),
        .I4(\cnt_a_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_a[5]_i_1 
       (.I0(\cnt_a_reg_n_0_[3] ),
        .I1(\cnt_a_reg_n_0_[1] ),
        .I2(\cnt_a_reg_n_0_[0] ),
        .I3(\cnt_a_reg_n_0_[2] ),
        .I4(\cnt_a_reg_n_0_[4] ),
        .I5(\cnt_a_reg_n_0_[5] ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_a[6]_i_1 
       (.I0(\cnt_a[7]_i_2_n_0 ),
        .I1(cnt_a_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_a[7]_i_1 
       (.I0(\cnt_a[7]_i_2_n_0 ),
        .I1(cnt_a_reg__0[6]),
        .I2(cnt_a_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt_a[7]_i_2 
       (.I0(\cnt_a_reg_n_0_[5] ),
        .I1(\cnt_a_reg_n_0_[3] ),
        .I2(\cnt_a_reg_n_0_[1] ),
        .I3(\cnt_a_reg_n_0_[0] ),
        .I4(\cnt_a_reg_n_0_[2] ),
        .I5(\cnt_a_reg_n_0_[4] ),
        .O(\cnt_a[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_a_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\cnt_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_a_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\cnt_a_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_a_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\cnt_a_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_a_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\cnt_a_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_a_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\cnt_a_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_a_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\cnt_a_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_a_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(cnt_a_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_a_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(cnt_a_reg__0[7]),
        .R(1'b0));
  CARRY4 cnt_n0_carry
       (.CI(1'b0),
        .CO({cnt_n0_carry_n_0,cnt_n0_carry_n_1,cnt_n0_carry_n_2,cnt_n0_carry_n_3}),
        .CYINIT(cnt_n[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt_n0_carry_n_4,cnt_n0_carry_n_5,cnt_n0_carry_n_6,cnt_n0_carry_n_7}),
        .S(cnt_n[4:1]));
  CARRY4 cnt_n0_carry__0
       (.CI(cnt_n0_carry_n_0),
        .CO({cnt_n0_carry__0_n_0,cnt_n0_carry__0_n_1,cnt_n0_carry__0_n_2,cnt_n0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt_n0_carry__0_n_4,cnt_n0_carry__0_n_5,cnt_n0_carry__0_n_6,cnt_n0_carry__0_n_7}),
        .S(cnt_n[8:5]));
  CARRY4 cnt_n0_carry__1
       (.CI(cnt_n0_carry__0_n_0),
        .CO({cnt_n0_carry__1_n_0,cnt_n0_carry__1_n_1,cnt_n0_carry__1_n_2,cnt_n0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt_n0_carry__1_n_4,cnt_n0_carry__1_n_5,cnt_n0_carry__1_n_6,cnt_n0_carry__1_n_7}),
        .S(cnt_n[12:9]));
  CARRY4 cnt_n0_carry__2
       (.CI(cnt_n0_carry__1_n_0),
        .CO({cnt_n0_carry__2_n_0,cnt_n0_carry__2_n_1,cnt_n0_carry__2_n_2,cnt_n0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt_n0_carry__2_n_4,cnt_n0_carry__2_n_5,cnt_n0_carry__2_n_6,cnt_n0_carry__2_n_7}),
        .S(cnt_n[16:13]));
  CARRY4 cnt_n0_carry__3
       (.CI(cnt_n0_carry__2_n_0),
        .CO({cnt_n0_carry__3_n_0,cnt_n0_carry__3_n_1,cnt_n0_carry__3_n_2,cnt_n0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt_n0_carry__3_n_4,cnt_n0_carry__3_n_5,cnt_n0_carry__3_n_6,cnt_n0_carry__3_n_7}),
        .S(cnt_n[20:17]));
  CARRY4 cnt_n0_carry__4
       (.CI(cnt_n0_carry__3_n_0),
        .CO({NLW_cnt_n0_carry__4_CO_UNCONNECTED[3:2],cnt_n0_carry__4_n_2,cnt_n0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_n0_carry__4_O_UNCONNECTED[3],cnt_n0_carry__4_n_5,cnt_n0_carry__4_n_6,cnt_n0_carry__4_n_7}),
        .S({1'b0,cnt_n[23:21]}));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_n[0]_i_1 
       (.I0(\cnt_n[0]_i_2_n_0 ),
        .I1(cnt_n[0]),
        .O(cnt_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cnt_n[0]_i_2 
       (.I0(\cnt_n[0]_i_3_n_0 ),
        .I1(\cnt_n[0]_i_4_n_0 ),
        .I2(\cnt_n[0]_i_5_n_0 ),
        .I3(\cnt_n[0]_i_6_n_0 ),
        .I4(\cnt_n[0]_i_7_n_0 ),
        .I5(\cnt_n[0]_i_8_n_0 ),
        .O(\cnt_n[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cnt_n[0]_i_3 
       (.I0(cnt_n[19]),
        .I1(cnt_n[18]),
        .I2(cnt_n[20]),
        .I3(cnt_n[21]),
        .O(\cnt_n[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \cnt_n[0]_i_4 
       (.I0(cnt_n[23]),
        .I1(cnt_n[22]),
        .I2(cnt_n[1]),
        .O(\cnt_n[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cnt_n[0]_i_5 
       (.I0(cnt_n[10]),
        .I1(cnt_n[11]),
        .I2(cnt_n[12]),
        .I3(cnt_n[13]),
        .O(\cnt_n[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \cnt_n[0]_i_6 
       (.I0(cnt_n[15]),
        .I1(cnt_n[14]),
        .I2(cnt_n[17]),
        .I3(cnt_n[16]),
        .O(\cnt_n[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cnt_n[0]_i_7 
       (.I0(cnt_n[7]),
        .I1(cnt_n[6]),
        .I2(cnt_n[9]),
        .I3(cnt_n[8]),
        .O(\cnt_n[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_n[0]_i_8 
       (.I0(cnt_n[3]),
        .I1(cnt_n[2]),
        .I2(cnt_n[5]),
        .I3(cnt_n[4]),
        .O(\cnt_n[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_n[23]_i_1 
       (.I0(\cnt_n[0]_i_2_n_0 ),
        .I1(cnt_n[0]),
        .O(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n_0),
        .Q(cnt_n[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__1_n_6),
        .Q(cnt_n[10]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__1_n_5),
        .Q(cnt_n[11]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__1_n_4),
        .Q(cnt_n[12]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__2_n_7),
        .Q(cnt_n[13]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__2_n_6),
        .Q(cnt_n[14]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__2_n_5),
        .Q(cnt_n[15]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__2_n_4),
        .Q(cnt_n[16]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__3_n_7),
        .Q(cnt_n[17]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__3_n_6),
        .Q(cnt_n[18]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__3_n_5),
        .Q(cnt_n[19]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry_n_7),
        .Q(cnt_n[1]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__3_n_4),
        .Q(cnt_n[20]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__4_n_7),
        .Q(cnt_n[21]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__4_n_6),
        .Q(cnt_n[22]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__4_n_5),
        .Q(cnt_n[23]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry_n_6),
        .Q(cnt_n[2]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry_n_5),
        .Q(cnt_n[3]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry_n_4),
        .Q(cnt_n[4]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__0_n_7),
        .Q(cnt_n[5]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__0_n_6),
        .Q(cnt_n[6]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__0_n_5),
        .Q(cnt_n[7]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__0_n_4),
        .Q(cnt_n[8]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_n_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_n0_carry__1_n_7),
        .Q(cnt_n[9]),
        .R(\cnt_n[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dac_cnt[0]_i_1 
       (.I0(dac_cnt[0]),
        .O(\dac_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dac_cnt[1]_i_1 
       (.I0(dac_cnt[0]),
        .I1(dac_cnt[1]),
        .O(\dac_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \dac_cnt[2]_i_1 
       (.I0(dac_cnt[0]),
        .I1(dac_cnt[1]),
        .I2(dac_cnt[2]),
        .O(\dac_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \dac_cnt[3]_i_1 
       (.I0(dac_cnt[1]),
        .I1(dac_cnt[0]),
        .I2(dac_cnt[2]),
        .I3(dac_cnt[3]),
        .O(\dac_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \dac_cnt[4]_i_1 
       (.I0(dac_cnt[4]),
        .I1(dac_cnt[1]),
        .I2(dac_cnt[0]),
        .I3(dac_cnt[3]),
        .I4(dac_cnt[2]),
        .O(\dac_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \dac_cnt[4]_i_2 
       (.I0(dac_cnt[2]),
        .I1(dac_cnt[0]),
        .I2(dac_cnt[1]),
        .I3(dac_cnt[3]),
        .I4(dac_cnt[4]),
        .O(\dac_cnt[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_cnt[0]_i_1_n_0 ),
        .Q(dac_cnt[0]),
        .R(\dac_cnt[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_cnt[1]_i_1_n_0 ),
        .Q(dac_cnt[1]),
        .R(\dac_cnt[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_cnt[2]_i_1_n_0 ),
        .Q(dac_cnt[2]),
        .R(\dac_cnt[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_cnt[3]_i_1_n_0 ),
        .Q(dac_cnt[3]),
        .R(\dac_cnt[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_cnt[4]_i_2_n_0 ),
        .Q(dac_cnt[4]),
        .R(\dac_cnt[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_cnt[0]_i_1 
       (.I0(\data_cnt_reg_n_0_[0] ),
        .O(\data_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_cnt[1]_i_1 
       (.I0(\data_cnt_reg_n_0_[0] ),
        .I1(\data_cnt_reg_n_0_[1] ),
        .O(\data_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \data_cnt[2]_i_1 
       (.I0(\data_cnt_reg_n_0_[2] ),
        .I1(\data_cnt_reg_n_0_[1] ),
        .I2(\data_cnt_reg_n_0_[0] ),
        .O(\data_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \data_cnt[3]_i_1 
       (.I0(\data_cnt_reg_n_0_[3] ),
        .I1(\data_cnt_reg_n_0_[2] ),
        .I2(\data_cnt_reg_n_0_[0] ),
        .I3(\data_cnt_reg_n_0_[1] ),
        .O(\data_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \data_cnt[4]_i_1 
       (.I0(\data_cnt_reg_n_0_[4] ),
        .I1(\data_cnt_reg_n_0_[3] ),
        .I2(\data_cnt_reg_n_0_[1] ),
        .I3(\data_cnt_reg_n_0_[0] ),
        .I4(\data_cnt_reg_n_0_[2] ),
        .O(\data_cnt[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[5]_i_1 
       (.I0(\data_cnt[5]_i_4_n_0 ),
        .I1(\data_cnt[5]_i_2_n_0 ),
        .O(\data_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00100010)) 
    \data_cnt[5]_i_2 
       (.I0(\send_cnt[3]_i_3_n_0 ),
        .I1(\send_cnt_reg_n_0_[2] ),
        .I2(\send_cnt_reg_n_0_[3] ),
        .I3(\send_cnt[5]_i_3_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\data_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \data_cnt[5]_i_3 
       (.I0(\data_cnt_reg_n_0_[5] ),
        .I1(\data_cnt_reg_n_0_[2] ),
        .I2(\data_cnt_reg_n_0_[0] ),
        .I3(\data_cnt_reg_n_0_[1] ),
        .I4(\data_cnt_reg_n_0_[3] ),
        .I5(\data_cnt_reg_n_0_[4] ),
        .O(\data_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE00FE00FEFE)) 
    \data_cnt[5]_i_4 
       (.I0(\data_cnt[5]_i_5_n_0 ),
        .I1(\send_cnt[9]_i_5_n_0 ),
        .I2(\data_cnt[5]_i_6_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\data_cnt[5]_i_7_n_0 ),
        .I5(\state[1]_i_3_n_0 ),
        .O(\data_cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_cnt[5]_i_5 
       (.I0(\send_cnt_reg_n_0_[8] ),
        .I1(\send_cnt_reg_n_0_[7] ),
        .I2(\send_cnt_reg_n_0_[6] ),
        .O(\data_cnt[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \data_cnt[5]_i_6 
       (.I0(\send_cnt_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\send_cnt_reg_n_0_[7] ),
        .I3(\send_cnt_reg_n_0_[9] ),
        .I4(\send_cnt_reg_n_0_[8] ),
        .O(\data_cnt[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \data_cnt[5]_i_7 
       (.I0(\data_cnt_reg_n_0_[4] ),
        .I1(\data_cnt_reg_n_0_[8] ),
        .I2(\data_cnt_reg_n_0_[3] ),
        .O(\data_cnt[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2F10)) 
    \data_cnt[6]_i_1 
       (.I0(\data_cnt[8]_i_2_n_0 ),
        .I1(\data_cnt[5]_i_4_n_0 ),
        .I2(\data_cnt[5]_i_2_n_0 ),
        .I3(\data_cnt_reg_n_0_[6] ),
        .O(\data_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0BFF0400)) 
    \data_cnt[7]_i_1 
       (.I0(\data_cnt[8]_i_2_n_0 ),
        .I1(\data_cnt_reg_n_0_[6] ),
        .I2(\data_cnt[5]_i_4_n_0 ),
        .I3(\data_cnt[5]_i_2_n_0 ),
        .I4(\data_cnt_reg_n_0_[7] ),
        .O(\data_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00DFFFFF00200000)) 
    \data_cnt[8]_i_1 
       (.I0(\data_cnt_reg_n_0_[6] ),
        .I1(\data_cnt[8]_i_2_n_0 ),
        .I2(\data_cnt_reg_n_0_[7] ),
        .I3(\data_cnt[5]_i_4_n_0 ),
        .I4(\data_cnt[5]_i_2_n_0 ),
        .I5(\data_cnt_reg_n_0_[8] ),
        .O(\data_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \data_cnt[8]_i_2 
       (.I0(\data_cnt_reg_n_0_[5] ),
        .I1(\data_cnt_reg_n_0_[2] ),
        .I2(\data_cnt_reg_n_0_[0] ),
        .I3(\data_cnt_reg_n_0_[1] ),
        .I4(\data_cnt_reg_n_0_[3] ),
        .I5(\data_cnt_reg_n_0_[4] ),
        .O(\data_cnt[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_cnt_reg[0] 
       (.C(clk),
        .CE(\data_cnt[5]_i_2_n_0 ),
        .D(\data_cnt[0]_i_1_n_0 ),
        .Q(\data_cnt_reg_n_0_[0] ),
        .R(\data_cnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_cnt_reg[1] 
       (.C(clk),
        .CE(\data_cnt[5]_i_2_n_0 ),
        .D(\data_cnt[1]_i_1_n_0 ),
        .Q(\data_cnt_reg_n_0_[1] ),
        .R(\data_cnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_cnt_reg[2] 
       (.C(clk),
        .CE(\data_cnt[5]_i_2_n_0 ),
        .D(\data_cnt[2]_i_1_n_0 ),
        .Q(\data_cnt_reg_n_0_[2] ),
        .R(\data_cnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_cnt_reg[3] 
       (.C(clk),
        .CE(\data_cnt[5]_i_2_n_0 ),
        .D(\data_cnt[3]_i_1_n_0 ),
        .Q(\data_cnt_reg_n_0_[3] ),
        .R(\data_cnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_cnt_reg[4] 
       (.C(clk),
        .CE(\data_cnt[5]_i_2_n_0 ),
        .D(\data_cnt[4]_i_1_n_0 ),
        .Q(\data_cnt_reg_n_0_[4] ),
        .R(\data_cnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_cnt_reg[5] 
       (.C(clk),
        .CE(\data_cnt[5]_i_2_n_0 ),
        .D(\data_cnt[5]_i_3_n_0 ),
        .Q(\data_cnt_reg_n_0_[5] ),
        .R(\data_cnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_cnt[6]_i_1_n_0 ),
        .Q(\data_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_cnt[7]_i_1_n_0 ),
        .Q(\data_cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_cnt[8]_i_1_n_0 ),
        .Q(\data_cnt_reg_n_0_[8] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    din_i_1
       (.I0(din_i_2_n_0),
        .I1(dac_cnt[3]),
        .I2(dac_cnt[0]),
        .I3(din_i_3_n_0),
        .I4(din_i_4_n_0),
        .I5(din),
        .O(din_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    din_i_2
       (.I0(adc_date[1]),
        .I1(adc_date[5]),
        .I2(dac_cnt[1]),
        .I3(adc_date[3]),
        .I4(dac_cnt[2]),
        .I5(adc_date[7]),
        .O(din_i_2_n_0));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    din_i_3
       (.I0(adc_date[6]),
        .I1(dac_cnt[2]),
        .I2(adc_date[2]),
        .I3(dac_cnt[3]),
        .I4(dac_cnt[1]),
        .I5(din_i_5_n_0),
        .O(din_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h55555557)) 
    din_i_4
       (.I0(dac_cnt[4]),
        .I1(dac_cnt[1]),
        .I2(dac_cnt[0]),
        .I3(dac_cnt[2]),
        .I4(dac_cnt[3]),
        .O(din_i_4_n_0));
  LUT4 #(
    .INIT(16'h3808)) 
    din_i_5
       (.I0(adc_date[4]),
        .I1(dac_cnt[2]),
        .I2(dac_cnt[3]),
        .I3(adc_date[0]),
        .O(din_i_5_n_0));
  FDRE din_reg
       (.C(clk),
        .CE(1'b1),
        .D(din_i_1_n_0),
        .Q(din),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF22200000222)) 
    fpga_rgb_i_1
       (.I0(fpga_rgb_i_2_n_0),
        .I1(fpga_rgb_i_3_n_0),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(fpga_rgb_i_4_n_0),
        .I5(fpga_rgb),
        .O(fpga_rgb_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAAABBB)) 
    fpga_rgb_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(\send_cnt_reg_n_0_[2] ),
        .I2(\send_cnt_reg_n_0_[0] ),
        .I3(\send_cnt_reg_n_0_[1] ),
        .I4(\send_cnt_reg_n_0_[3] ),
        .O(fpga_rgb_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEEA)) 
    fpga_rgb_i_3
       (.I0(\send_cnt[5]_i_3_n_0 ),
        .I1(\send_cnt_reg_n_0_[3] ),
        .I2(\send_cnt_reg_n_0_[1] ),
        .I3(\send_cnt_reg_n_0_[0] ),
        .I4(\send_cnt_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(fpga_rgb_i_3_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    fpga_rgb_i_4
       (.I0(\state_reg_n_0_[1] ),
        .I1(\send_cnt[5]_i_3_n_0 ),
        .I2(\send_cnt_reg_n_0_[3] ),
        .I3(\send_cnt_reg_n_0_[2] ),
        .I4(\send_cnt_reg_n_0_[0] ),
        .I5(\send_cnt_reg_n_0_[1] ),
        .O(fpga_rgb_i_4_n_0));
  FDRE fpga_rgb_reg
       (.C(clk),
        .CE(1'b1),
        .D(fpga_rgb_i_1_n_0),
        .Q(fpga_rgb),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    io0_i_1
       (.I0(cnt_a_reg__0[7]),
        .I1(cnt_a_reg__0[6]),
        .O(io0_i_1_n_0));
  FDRE io0_reg
       (.C(clk),
        .CE(1'b1),
        .D(io0_i_1_n_0),
        .Q(io0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \rgb_data[0]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .O(\rgb_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rgb_data[0]_i_1_n_0 ),
        .Q(rgb_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rgb_data_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt[1]),
        .Q(rgb_data[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_data_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt[0]),
        .Q(rgb_data[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5545555555555555)) 
    \send_cnt[0]_i_1 
       (.I0(\send_cnt_reg_n_0_[0] ),
        .I1(\send_cnt[8]_i_2_n_0 ),
        .I2(\send_cnt[0]_i_2_n_0 ),
        .I3(\send_cnt_reg_n_0_[4] ),
        .I4(\send_cnt_reg_n_0_[5] ),
        .I5(\send_cnt[0]_i_3_n_0 ),
        .O(\send_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \send_cnt[0]_i_2 
       (.I0(\send_cnt_reg_n_0_[6] ),
        .I1(\send_cnt_reg_n_0_[7] ),
        .O(\send_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0000005D)) 
    \send_cnt[0]_i_3 
       (.I0(\send_cnt_reg_n_0_[5] ),
        .I1(\send_cnt_reg_n_0_[3] ),
        .I2(\send_cnt_reg_n_0_[4] ),
        .I3(\send_cnt_reg_n_0_[2] ),
        .I4(\send_cnt_reg_n_0_[1] ),
        .O(\send_cnt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \send_cnt[1]_i_1 
       (.I0(\send_cnt_reg_n_0_[1] ),
        .I1(\send_cnt_reg_n_0_[0] ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA55555545)) 
    \send_cnt[2]_i_1 
       (.I0(\send_cnt[3]_i_3_n_0 ),
        .I1(\send_cnt_reg_n_0_[4] ),
        .I2(\send_cnt_reg_n_0_[3] ),
        .I3(\send_cnt[5]_i_3_n_0 ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\send_cnt_reg_n_0_[2] ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h7700777400770000)) 
    \send_cnt[3]_i_1 
       (.I0(\send_cnt[3]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\send_cnt[5]_i_3_n_0 ),
        .I3(\send_cnt[3]_i_3_n_0 ),
        .I4(\send_cnt_reg_n_0_[2] ),
        .I5(\send_cnt_reg_n_0_[3] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \send_cnt[3]_i_2 
       (.I0(\send_cnt_reg_n_0_[0] ),
        .I1(\send_cnt_reg_n_0_[8] ),
        .I2(\send_cnt_reg_n_0_[9] ),
        .I3(\send_cnt_reg_n_0_[7] ),
        .I4(\send_cnt_reg_n_0_[6] ),
        .I5(\send_cnt[9]_i_5_n_0 ),
        .O(\send_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \send_cnt[3]_i_3 
       (.I0(\send_cnt_reg_n_0_[1] ),
        .I1(\send_cnt_reg_n_0_[0] ),
        .O(\send_cnt[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \send_cnt[4]_i_1 
       (.I0(\send_cnt_reg_n_0_[2] ),
        .I1(\send_cnt_reg_n_0_[1] ),
        .I2(\send_cnt_reg_n_0_[0] ),
        .I3(\send_cnt_reg_n_0_[3] ),
        .I4(\send_cnt_reg_n_0_[4] ),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'h00006660)) 
    \send_cnt[5]_i_1 
       (.I0(\send_cnt[5]_i_2_n_0 ),
        .I1(\send_cnt_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\send_cnt[5]_i_3_n_0 ),
        .I4(\send_cnt[9]_i_3_n_0 ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \send_cnt[5]_i_2 
       (.I0(\send_cnt_reg_n_0_[4] ),
        .I1(\send_cnt_reg_n_0_[3] ),
        .I2(\send_cnt_reg_n_0_[0] ),
        .I3(\send_cnt_reg_n_0_[1] ),
        .I4(\send_cnt_reg_n_0_[2] ),
        .O(\send_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \send_cnt[5]_i_3 
       (.I0(\send_cnt_reg_n_0_[8] ),
        .I1(\send_cnt_reg_n_0_[9] ),
        .I2(\send_cnt_reg_n_0_[6] ),
        .I3(\send_cnt_reg_n_0_[7] ),
        .I4(\send_cnt_reg_n_0_[4] ),
        .I5(\send_cnt_reg_n_0_[5] ),
        .O(\send_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000025A52121)) 
    \send_cnt[6]_i_1 
       (.I0(\send_cnt[8]_i_4_n_0 ),
        .I1(\send_cnt[8]_i_3_n_0 ),
        .I2(\send_cnt_reg_n_0_[6] ),
        .I3(\send_cnt_reg_n_0_[7] ),
        .I4(\send_cnt_reg_n_0_[8] ),
        .I5(fpga_rgb_i_4_n_0),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h0040505004400550)) 
    \send_cnt[7]_i_1 
       (.I0(fpga_rgb_i_4_n_0),
        .I1(\send_cnt_reg_n_0_[8] ),
        .I2(\send_cnt_reg_n_0_[7] ),
        .I3(\send_cnt_reg_n_0_[6] ),
        .I4(\send_cnt[8]_i_3_n_0 ),
        .I5(\send_cnt[8]_i_4_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h3377037700553055)) 
    \send_cnt[8]_i_1 
       (.I0(\send_cnt[8]_i_2_n_0 ),
        .I1(\send_cnt[8]_i_3_n_0 ),
        .I2(\send_cnt_reg_n_0_[7] ),
        .I3(\send_cnt_reg_n_0_[6] ),
        .I4(\send_cnt[8]_i_4_n_0 ),
        .I5(\send_cnt_reg_n_0_[8] ),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \send_cnt[8]_i_2 
       (.I0(\send_cnt_reg_n_0_[8] ),
        .I1(\send_cnt_reg_n_0_[9] ),
        .I2(\send_cnt_reg_n_0_[7] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\send_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \send_cnt[8]_i_3 
       (.I0(\send_cnt[9]_i_5_n_0 ),
        .I1(\send_cnt_reg_n_0_[8] ),
        .I2(\send_cnt_reg_n_0_[9] ),
        .I3(\send_cnt_reg_n_0_[7] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\send_cnt_reg_n_0_[0] ),
        .O(\send_cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \send_cnt[8]_i_4 
       (.I0(\send_cnt_reg_n_0_[5] ),
        .I1(\send_cnt_reg_n_0_[2] ),
        .I2(\send_cnt_reg_n_0_[1] ),
        .I3(\send_cnt_reg_n_0_[0] ),
        .I4(\send_cnt_reg_n_0_[3] ),
        .I5(\send_cnt_reg_n_0_[4] ),
        .O(\send_cnt[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \send_cnt[9]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\send_cnt[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1001)) 
    \send_cnt[9]_i_2 
       (.I0(fpga_rgb_i_4_n_0),
        .I1(\send_cnt[9]_i_3_n_0 ),
        .I2(\send_cnt[9]_i_4_n_0 ),
        .I3(\send_cnt_reg_n_0_[9] ),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'h0100000001010101)) 
    \send_cnt[9]_i_3 
       (.I0(\send_cnt_reg_n_0_[0] ),
        .I1(\send_cnt[8]_i_2_n_0 ),
        .I2(\send_cnt[9]_i_5_n_0 ),
        .I3(\send_cnt_reg_n_0_[6] ),
        .I4(\send_cnt_reg_n_0_[7] ),
        .I5(\send_cnt_reg_n_0_[8] ),
        .O(\send_cnt[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \send_cnt[9]_i_4 
       (.I0(\send_cnt_reg_n_0_[8] ),
        .I1(\send_cnt[8]_i_4_n_0 ),
        .I2(\send_cnt_reg_n_0_[6] ),
        .I3(\send_cnt_reg_n_0_[7] ),
        .O(\send_cnt[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \send_cnt[9]_i_5 
       (.I0(\send_cnt_reg_n_0_[5] ),
        .I1(\send_cnt_reg_n_0_[4] ),
        .I2(\send_cnt_reg_n_0_[3] ),
        .I3(\send_cnt_reg_n_0_[1] ),
        .I4(\send_cnt_reg_n_0_[2] ),
        .O(\send_cnt[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[0] 
       (.C(clk),
        .CE(\send_cnt[9]_i_1_n_0 ),
        .D(\send_cnt[0]_i_1_n_0 ),
        .Q(\send_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[1] 
       (.C(clk),
        .CE(\send_cnt[9]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\send_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[2] 
       (.C(clk),
        .CE(\send_cnt[9]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\send_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[3] 
       (.C(clk),
        .CE(\send_cnt[9]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\send_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[4] 
       (.C(clk),
        .CE(\send_cnt[9]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\send_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[5] 
       (.C(clk),
        .CE(\send_cnt[9]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\send_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[6] 
       (.C(clk),
        .CE(\send_cnt[9]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\send_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[7] 
       (.C(clk),
        .CE(\send_cnt[9]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\send_cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[8] 
       (.C(clk),
        .CE(\send_cnt[9]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\send_cnt_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_cnt_reg[9] 
       (.C(clk),
        .CE(\send_cnt[9]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\send_cnt_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2F222F202F202F20)) 
    \state[0]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[0]_i_2_n_0 ),
        .I2(fpga_rgb_i_4_n_0),
        .I3(\state_reg_n_0_[0] ),
        .I4(\send_cnt[8]_i_3_n_0 ),
        .I5(\send_cnt_reg_n_0_[6] ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0344CF77441D771D)) 
    \state[0]_i_2 
       (.I0(rgb_data[16]),
        .I1(\data_cnt_reg_n_0_[4] ),
        .I2(rgb_data[0]),
        .I3(\data_cnt_reg_n_0_[3] ),
        .I4(rgb_data[8]),
        .I5(\data_cnt_reg_n_0_[5] ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7577777745444444)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(fpga_rgb_i_4_n_0),
        .I2(\state_reg_n_0_[0] ),
        .I3(\send_cnt[8]_i_3_n_0 ),
        .I4(\send_cnt_reg_n_0_[6] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state[1]_i_3_n_0 ),
        .I2(\data_cnt_reg_n_0_[4] ),
        .I3(\data_cnt_reg_n_0_[8] ),
        .I4(\data_cnt_reg_n_0_[3] ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \state[1]_i_3 
       (.I0(\data_cnt_reg_n_0_[1] ),
        .I1(\data_cnt_reg_n_0_[0] ),
        .I2(\data_cnt_reg_n_0_[2] ),
        .I3(\data_cnt_reg_n_0_[6] ),
        .I4(\data_cnt_reg_n_0_[7] ),
        .I5(\data_cnt_reg_n_0_[5] ),
        .O(\state[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEFF00800000)) 
    sync_i_1
       (.I0(dac_cnt[1]),
        .I1(dac_cnt[0]),
        .I2(dac_cnt[3]),
        .I3(dac_cnt[4]),
        .I4(dac_cnt[2]),
        .I5(sync),
        .O(sync_i_1_n_0));
  FDRE sync_reg
       (.C(clk),
        .CE(1'b1),
        .D(sync_i_1_n_0),
        .Q(sync),
        .R(1'b0));
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
