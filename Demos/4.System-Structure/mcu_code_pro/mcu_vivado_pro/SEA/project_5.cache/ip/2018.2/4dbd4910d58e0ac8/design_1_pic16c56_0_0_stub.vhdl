-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Mar  9 18:19:43 2020
-- Host        : DESKTOP-2RGUD32 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pic16c56_0_0_stub.vhdl
-- Design      : design_1_pic16c56_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    mclr : in STD_LOGIC;
    osc1 : in STD_LOGIC;
    romdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    osc2 : out STD_LOGIC;
    romaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    RA : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    RB : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    c3 : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mclr,osc1,romdata[11:0],osc2,romaddr[9:0],RA[3:0],RB[7:0],c3";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pic16c56,Vivado 2018.2";
begin
end;
