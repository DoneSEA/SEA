-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed May 29 17:10:25 2019
-- Host        : DESKTOP-JG260B6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/dell/Desktop/xilinx/test/IO_LED_sw/test/test.srcs/sources_1/bd/TEST/ip/TEST_test_0_0/TEST_test_0_0_stub.vhdl
-- Design      : TEST_test_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s15ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TEST_test_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    k1 : in STD_LOGIC;
    k2 : in STD_LOGIC;
    k3 : in STD_LOGIC;
    k4 : in STD_LOGIC;
    io0 : out STD_LOGIC;
    io1 : out STD_LOGIC;
    io2 : out STD_LOGIC;
    io3 : out STD_LOGIC;
    io4 : out STD_LOGIC;
    io5 : out STD_LOGIC;
    io6 : out STD_LOGIC;
    io7 : out STD_LOGIC;
    io8 : out STD_LOGIC;
    io9 : out STD_LOGIC;
    io10 : out STD_LOGIC;
    io11 : out STD_LOGIC;
    io12 : out STD_LOGIC;
    io13 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    fpga_rgb : out STD_LOGIC;
    dac_clk : in STD_LOGIC;
    adc_en : out STD_LOGIC;
    din : out STD_LOGIC;
    sync : out STD_LOGIC;
    adc_date : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IN1 : out STD_LOGIC;
    IN4 : out STD_LOGIC;
    SDA : out STD_LOGIC;
    SCL : out STD_LOGIC
  );

end TEST_test_0_0;

architecture stub of TEST_test_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,k1,k2,k3,k4,io0,io1,io2,io3,io4,io5,io6,io7,io8,io9,io10,io11,io12,io13,led1,led2,fpga_rgb,dac_clk,adc_en,din,sync,adc_date[7:0],IN1,IN4,SDA,SCL";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "test,Vivado 2018.2";
begin
end;
