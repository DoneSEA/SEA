-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Mar  9 18:19:43 2020
-- Host        : DESKTOP-2RGUD32 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pic16c56_0_0_sim_netlist.vhdl
-- Design      : design_1_pic16c56_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IO_reg is
  port (
    p_0_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \b_reg[0]\ : out STD_LOGIC;
    \b_reg[1]\ : out STD_LOGIC;
    \b_reg[2]\ : out STD_LOGIC;
    \b_reg[3]\ : out STD_LOGIC;
    \b_reg[4]\ : out STD_LOGIC;
    \b_reg[5]\ : out STD_LOGIC;
    \b_reg[6]\ : out STD_LOGIC;
    \b_reg[7]\ : out STD_LOGIC;
    \trisa_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \trisb_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IO_reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IO_reg is
begin
\RA[0]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trisa_reg[3]\(0),
      O => p_0_out(0)
    );
\RA[1]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trisa_reg[3]\(1),
      O => p_0_out(1)
    );
\RA[2]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trisa_reg[3]\(2),
      O => p_0_out(2)
    );
\RA[3]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trisa_reg[3]\(3),
      O => p_0_out(3)
    );
\RB[0]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trisb_reg[7]\(0),
      O => \b_reg[0]\
    );
\RB[1]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trisb_reg[7]\(1),
      O => \b_reg[1]\
    );
\RB[2]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trisb_reg[7]\(2),
      O => \b_reg[2]\
    );
\RB[3]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trisb_reg[7]\(3),
      O => \b_reg[3]\
    );
\RB[4]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trisb_reg[7]\(4),
      O => \b_reg[4]\
    );
\RB[5]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trisb_reg[7]\(5),
      O => \b_reg[5]\
    );
\RB[6]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trisb_reg[7]\(6),
      O => \b_reg[6]\
    );
\RB[7]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trisb_reg[7]\(7),
      O => \b_reg[7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  port (
    \rtccount_reg[7]\ : out STD_LOGIC;
    \rtccount_reg[7]_0\ : out STD_LOGIC;
    \rtccount_reg[6]\ : out STD_LOGIC;
    \rtccount_reg[6]_0\ : out STD_LOGIC;
    \rtccount_reg[5]\ : out STD_LOGIC;
    \rtccount_reg[5]_0\ : out STD_LOGIC;
    \rtccount_reg[4]\ : out STD_LOGIC;
    \rtccount_reg[4]_0\ : out STD_LOGIC;
    \rtccount_reg[3]\ : out STD_LOGIC;
    \rtccount_reg[3]_0\ : out STD_LOGIC;
    \rtccount_reg[2]\ : out STD_LOGIC;
    \rtccount_reg[2]_0\ : out STD_LOGIC;
    \rtccount_reg[1]\ : out STD_LOGIC;
    \rtccount_reg[1]_0\ : out STD_LOGIC;
    \rtccount_reg[0]\ : out STD_LOGIC;
    \rtccount_reg[0]_0\ : out STD_LOGIC;
    \rtccount_reg[7]_1\ : out STD_LOGIC;
    \rtccount_reg[6]_1\ : out STD_LOGIC;
    \rtccount_reg[5]_1\ : out STD_LOGIC;
    \rtccount_reg[4]_1\ : out STD_LOGIC;
    \rtccount_reg[3]_1\ : out STD_LOGIC;
    \rtccount_reg[2]_1\ : out STD_LOGIC;
    \rtccount_reg[1]_1\ : out STD_LOGIC;
    \rtccount_reg[0]_1\ : out STD_LOGIC;
    z : out STD_LOGIC;
    dc : out STD_LOGIC;
    c : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    skip : out STD_LOGIC;
    \status_reg[2]\ : out STD_LOGIC;
    andlw_reg : in STD_LOGIC;
    andlw_reg_0 : in STD_LOGIC;
    retlw_reg : in STD_LOGIC;
    \b_reg[7]\ : in STD_LOGIC;
    c2 : in STD_LOGIC;
    andlw_reg_1 : in STD_LOGIC;
    andlw_reg_2 : in STD_LOGIC;
    \b_reg[6]\ : in STD_LOGIC;
    andlw_reg_3 : in STD_LOGIC;
    andlw_reg_4 : in STD_LOGIC;
    \b_reg[5]\ : in STD_LOGIC;
    andlw_reg_5 : in STD_LOGIC;
    andlw_reg_6 : in STD_LOGIC;
    \b_reg[4]\ : in STD_LOGIC;
    andlw_reg_7 : in STD_LOGIC;
    andlw_reg_8 : in STD_LOGIC;
    \b_reg[3]\ : in STD_LOGIC;
    andlw_reg_9 : in STD_LOGIC;
    andlw_reg_10 : in STD_LOGIC;
    \b_reg[2]\ : in STD_LOGIC;
    andlw_reg_11 : in STD_LOGIC;
    andlw_reg_12 : in STD_LOGIC;
    \b_reg[1]\ : in STD_LOGIC;
    andlw_reg_13 : in STD_LOGIC;
    andlw_reg_14 : in STD_LOGIC;
    \b_reg[0]\ : in STD_LOGIC;
    \k_reg[7]\ : in STD_LOGIC;
    \k_reg[7]_0\ : in STD_LOGIC;
    \yi_reg[7]_C_0\ : in STD_LOGIC;
    \b_reg[6]_0\ : in STD_LOGIC;
    \yi_reg[5]_C_0\ : in STD_LOGIC;
    \yi_reg[4]_C_0\ : in STD_LOGIC;
    \yi_reg[3]_C_0\ : in STD_LOGIC;
    \yi_reg[2]_C_0\ : in STD_LOGIC;
    \yi_reg[1]_C_0\ : in STD_LOGIC;
    \yi_reg[0]_C_0\ : in STD_LOGIC;
    incfsz_reg : in STD_LOGIC;
    z_reg_0 : in STD_LOGIC;
    mclr : in STD_LOGIC;
    addwf_reg : in STD_LOGIC;
    mclr_0 : in STD_LOGIC;
    \b_reg[7]_0\ : in STD_LOGIC;
    \status10_out__1\ : in STD_LOGIC;
    status0 : in STD_LOGIC;
    \status_reg[2]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rtccount_reg[0]\ : STD_LOGIC;
  signal \^rtccount_reg[0]_0\ : STD_LOGIC;
  signal \^rtccount_reg[0]_1\ : STD_LOGIC;
  signal \^rtccount_reg[1]\ : STD_LOGIC;
  signal \^rtccount_reg[1]_0\ : STD_LOGIC;
  signal \^rtccount_reg[1]_1\ : STD_LOGIC;
  signal \^rtccount_reg[2]\ : STD_LOGIC;
  signal \^rtccount_reg[2]_0\ : STD_LOGIC;
  signal \^rtccount_reg[2]_1\ : STD_LOGIC;
  signal \^rtccount_reg[3]\ : STD_LOGIC;
  signal \^rtccount_reg[3]_0\ : STD_LOGIC;
  signal \^rtccount_reg[3]_1\ : STD_LOGIC;
  signal \^rtccount_reg[4]\ : STD_LOGIC;
  signal \^rtccount_reg[4]_0\ : STD_LOGIC;
  signal \^rtccount_reg[4]_1\ : STD_LOGIC;
  signal \^rtccount_reg[5]\ : STD_LOGIC;
  signal \^rtccount_reg[5]_0\ : STD_LOGIC;
  signal \^rtccount_reg[5]_1\ : STD_LOGIC;
  signal \^rtccount_reg[6]\ : STD_LOGIC;
  signal \^rtccount_reg[6]_0\ : STD_LOGIC;
  signal \^rtccount_reg[6]_1\ : STD_LOGIC;
  signal \^rtccount_reg[7]\ : STD_LOGIC;
  signal \^rtccount_reg[7]_0\ : STD_LOGIC;
  signal \^rtccount_reg[7]_1\ : STD_LOGIC;
  signal skip_reg_C_n_0 : STD_LOGIC;
  signal skip_reg_LDC_n_0 : STD_LOGIC;
  signal skip_reg_P_n_0 : STD_LOGIC;
  signal \^z\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of skip_reg_LDC : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \yi_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \yi_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \yi_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \yi_reg[3]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \yi_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \yi_reg[5]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \yi_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \yi_reg[7]_LDC\ : label is "LDC";
begin
  D(7 downto 0) <= \^d\(7 downto 0);
  \rtccount_reg[0]\ <= \^rtccount_reg[0]\;
  \rtccount_reg[0]_0\ <= \^rtccount_reg[0]_0\;
  \rtccount_reg[0]_1\ <= \^rtccount_reg[0]_1\;
  \rtccount_reg[1]\ <= \^rtccount_reg[1]\;
  \rtccount_reg[1]_0\ <= \^rtccount_reg[1]_0\;
  \rtccount_reg[1]_1\ <= \^rtccount_reg[1]_1\;
  \rtccount_reg[2]\ <= \^rtccount_reg[2]\;
  \rtccount_reg[2]_0\ <= \^rtccount_reg[2]_0\;
  \rtccount_reg[2]_1\ <= \^rtccount_reg[2]_1\;
  \rtccount_reg[3]\ <= \^rtccount_reg[3]\;
  \rtccount_reg[3]_0\ <= \^rtccount_reg[3]_0\;
  \rtccount_reg[3]_1\ <= \^rtccount_reg[3]_1\;
  \rtccount_reg[4]\ <= \^rtccount_reg[4]\;
  \rtccount_reg[4]_0\ <= \^rtccount_reg[4]_0\;
  \rtccount_reg[4]_1\ <= \^rtccount_reg[4]_1\;
  \rtccount_reg[5]\ <= \^rtccount_reg[5]\;
  \rtccount_reg[5]_0\ <= \^rtccount_reg[5]_0\;
  \rtccount_reg[5]_1\ <= \^rtccount_reg[5]_1\;
  \rtccount_reg[6]\ <= \^rtccount_reg[6]\;
  \rtccount_reg[6]_0\ <= \^rtccount_reg[6]_0\;
  \rtccount_reg[6]_1\ <= \^rtccount_reg[6]_1\;
  \rtccount_reg[7]\ <= \^rtccount_reg[7]\;
  \rtccount_reg[7]_0\ <= \^rtccount_reg[7]_0\;
  \rtccount_reg[7]_1\ <= \^rtccount_reg[7]_1\;
  z <= \^z\;
c_reg: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => mclr,
      D => \b_reg[7]_0\,
      Q => c
    );
dc_reg: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => mclr_0,
      D => addwf_reg,
      Q => dc
    );
\rtccount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^rtccount_reg[0]_0\,
      I1 => \^rtccount_reg[0]\,
      I2 => \^rtccount_reg[0]_1\,
      O => \^d\(0)
    );
\rtccount[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^rtccount_reg[1]_0\,
      I1 => \^rtccount_reg[1]\,
      I2 => \^rtccount_reg[1]_1\,
      O => \^d\(1)
    );
\rtccount[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^rtccount_reg[2]_0\,
      I1 => \^rtccount_reg[2]\,
      I2 => \^rtccount_reg[2]_1\,
      O => \^d\(2)
    );
\rtccount[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^rtccount_reg[3]_0\,
      I1 => \^rtccount_reg[3]\,
      I2 => \^rtccount_reg[3]_1\,
      O => \^d\(3)
    );
\rtccount[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^rtccount_reg[4]_0\,
      I1 => \^rtccount_reg[4]\,
      I2 => \^rtccount_reg[4]_1\,
      O => \^d\(4)
    );
\rtccount[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^rtccount_reg[5]_0\,
      I1 => \^rtccount_reg[5]\,
      I2 => \^rtccount_reg[5]_1\,
      O => \^d\(5)
    );
\rtccount[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^rtccount_reg[6]_0\,
      I1 => \^rtccount_reg[6]\,
      I2 => \^rtccount_reg[6]_1\,
      O => \^d\(6)
    );
\rtccount[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^rtccount_reg[7]_0\,
      I1 => \^rtccount_reg[7]\,
      I2 => \^rtccount_reg[7]_1\,
      O => \^d\(7)
    );
skip_C_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_reg_P_n_0,
      I1 => skip_reg_LDC_n_0,
      I2 => skip_reg_C_n_0,
      O => skip
    );
skip_reg_C: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => \k_reg[7]_0\,
      D => incfsz_reg,
      Q => skip_reg_C_n_0
    );
skip_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \k_reg[7]_0\,
      D => '1',
      G => \k_reg[7]\,
      GE => '1',
      Q => skip_reg_LDC_n_0
    );
skip_reg_P: unisim.vcomponents.FDPE
     port map (
      C => c2,
      CE => '1',
      D => incfsz_reg,
      PRE => \k_reg[7]\,
      Q => skip_reg_P_n_0
    );
\status[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACAFACA0"
    )
        port map (
      I0 => \^z\,
      I1 => \^d\(2),
      I2 => \status10_out__1\,
      I3 => status0,
      I4 => \status_reg[2]_0\,
      O => \status_reg[2]\
    );
\yi_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => andlw_reg_14,
      D => \yi_reg[0]_C_0\,
      Q => \^rtccount_reg[0]_1\
    );
\yi_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => andlw_reg_14,
      D => '1',
      G => andlw_reg_13,
      GE => '1',
      Q => \^rtccount_reg[0]\
    );
\yi_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => c2,
      CE => retlw_reg,
      D => \b_reg[0]\,
      PRE => andlw_reg_13,
      Q => \^rtccount_reg[0]_0\
    );
\yi_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => andlw_reg_12,
      D => \yi_reg[1]_C_0\,
      Q => \^rtccount_reg[1]_1\
    );
\yi_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => andlw_reg_12,
      D => '1',
      G => andlw_reg_11,
      GE => '1',
      Q => \^rtccount_reg[1]\
    );
\yi_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => c2,
      CE => retlw_reg,
      D => \b_reg[1]\,
      PRE => andlw_reg_11,
      Q => \^rtccount_reg[1]_0\
    );
\yi_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => andlw_reg_10,
      D => \yi_reg[2]_C_0\,
      Q => \^rtccount_reg[2]_1\
    );
\yi_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => andlw_reg_10,
      D => '1',
      G => andlw_reg_9,
      GE => '1',
      Q => \^rtccount_reg[2]\
    );
\yi_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => c2,
      CE => retlw_reg,
      D => \b_reg[2]\,
      PRE => andlw_reg_9,
      Q => \^rtccount_reg[2]_0\
    );
\yi_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => andlw_reg_8,
      D => \yi_reg[3]_C_0\,
      Q => \^rtccount_reg[3]_1\
    );
\yi_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => andlw_reg_8,
      D => '1',
      G => andlw_reg_7,
      GE => '1',
      Q => \^rtccount_reg[3]\
    );
\yi_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => c2,
      CE => retlw_reg,
      D => \b_reg[3]\,
      PRE => andlw_reg_7,
      Q => \^rtccount_reg[3]_0\
    );
\yi_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => andlw_reg_6,
      D => \yi_reg[4]_C_0\,
      Q => \^rtccount_reg[4]_1\
    );
\yi_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => andlw_reg_6,
      D => '1',
      G => andlw_reg_5,
      GE => '1',
      Q => \^rtccount_reg[4]\
    );
\yi_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => c2,
      CE => retlw_reg,
      D => \b_reg[4]\,
      PRE => andlw_reg_5,
      Q => \^rtccount_reg[4]_0\
    );
\yi_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => andlw_reg_4,
      D => \yi_reg[5]_C_0\,
      Q => \^rtccount_reg[5]_1\
    );
\yi_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => andlw_reg_4,
      D => '1',
      G => andlw_reg_3,
      GE => '1',
      Q => \^rtccount_reg[5]\
    );
\yi_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => c2,
      CE => retlw_reg,
      D => \b_reg[5]\,
      PRE => andlw_reg_3,
      Q => \^rtccount_reg[5]_0\
    );
\yi_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => andlw_reg_2,
      D => \b_reg[6]_0\,
      Q => \^rtccount_reg[6]_1\
    );
\yi_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => andlw_reg_2,
      D => '1',
      G => andlw_reg_1,
      GE => '1',
      Q => \^rtccount_reg[6]\
    );
\yi_reg[6]_P\: unisim.vcomponents.FDPE
     port map (
      C => c2,
      CE => retlw_reg,
      D => \b_reg[6]\,
      PRE => andlw_reg_1,
      Q => \^rtccount_reg[6]_0\
    );
\yi_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => andlw_reg_0,
      D => \yi_reg[7]_C_0\,
      Q => \^rtccount_reg[7]_1\
    );
\yi_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => andlw_reg_0,
      D => '1',
      G => andlw_reg,
      GE => '1',
      Q => \^rtccount_reg[7]\
    );
\yi_reg[7]_P\: unisim.vcomponents.FDPE
     port map (
      C => c2,
      CE => retlw_reg,
      D => \b_reg[7]\,
      PRE => andlw_reg,
      Q => \^rtccount_reg[7]_0\
    );
z_reg: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => mclr,
      D => z_reg_0,
      Q => \^z\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decoder is
  port (
    longk : out STD_LOGIC_VECTOR ( 0 to 0 );
    \^d\ : out STD_LOGIC;
    fsel : out STD_LOGIC_VECTOR ( 4 downto 0 );
    k : out STD_LOGIC_VECTOR ( 6 downto 0 );
    subwf : out STD_LOGIC;
    decf : out STD_LOGIC;
    andwf : out STD_LOGIC;
    xorwf : out STD_LOGIC;
    addwf : out STD_LOGIC;
    iorwf : out STD_LOGIC;
    movf : out STD_LOGIC;
    comf : out STD_LOGIC;
    incf : out STD_LOGIC;
    decfsz : out STD_LOGIC;
    rrf : out STD_LOGIC;
    rlf : out STD_LOGIC;
    swapf : out STD_LOGIC;
    incfsz : out STD_LOGIC;
    btfss : out STD_LOGIC;
    option : out STD_LOGIC;
    tris : out STD_LOGIC;
    retlw : out STD_LOGIC;
    call : out STD_LOGIC;
    goto : out STD_LOGIC;
    movlw : out STD_LOGIC;
    iorlw : out STD_LOGIC;
    andlw : out STD_LOGIC;
    xorlw : out STD_LOGIC;
    \yi_reg[7]_P\ : out STD_LOGIC;
    \yi_reg[7]_C\ : out STD_LOGIC;
    \yi_reg[7]_C_0\ : out STD_LOGIC;
    \yi_reg[7]_P_0\ : out STD_LOGIC;
    \yi_reg[0]_P\ : out STD_LOGIC;
    \yi_reg[6]_P\ : out STD_LOGIC;
    \yi_reg[6]_C\ : out STD_LOGIC;
    \yi_reg[6]_C_0\ : out STD_LOGIC;
    \yi_reg[5]_P\ : out STD_LOGIC;
    \yi_reg[5]_C\ : out STD_LOGIC;
    \yi_reg[5]_C_0\ : out STD_LOGIC;
    \yi_reg[5]_P_0\ : out STD_LOGIC;
    \yi_reg[4]_P\ : out STD_LOGIC;
    \yi_reg[4]_C\ : out STD_LOGIC;
    \yi_reg[4]_C_0\ : out STD_LOGIC;
    \yi_reg[4]_P_0\ : out STD_LOGIC;
    \yi_reg[3]_P\ : out STD_LOGIC;
    \yi_reg[3]_C\ : out STD_LOGIC;
    \yi_reg[3]_C_0\ : out STD_LOGIC;
    \yi_reg[3]_P_0\ : out STD_LOGIC;
    \yi_reg[2]_P\ : out STD_LOGIC;
    \yi_reg[2]_C\ : out STD_LOGIC;
    \yi_reg[2]_C_0\ : out STD_LOGIC;
    \yi_reg[2]_P_0\ : out STD_LOGIC;
    \yi_reg[1]_P\ : out STD_LOGIC;
    \yi_reg[1]_C\ : out STD_LOGIC;
    \yi_reg[1]_C_0\ : out STD_LOGIC;
    \yi_reg[1]_P_0\ : out STD_LOGIC;
    \yi_reg[0]_P_0\ : out STD_LOGIC;
    \yi_reg[0]_C\ : out STD_LOGIC;
    \yi_reg[0]_C_0\ : out STD_LOGIC;
    \yi_reg[0]_P_1\ : out STD_LOGIC;
    \yi_reg[0]_C_1\ : out STD_LOGIC;
    \pc1__0\ : out STD_LOGIC;
    \stacklevel_reg[1]\ : out STD_LOGIC;
    \stacklevel_reg[0]\ : out STD_LOGIC;
    \status_reg[1]\ : out STD_LOGIC;
    status0 : out STD_LOGIC;
    \status_reg[0]\ : out STD_LOGIC;
    \yi_reg[6]_P_0\ : out STD_LOGIC;
    \status10_out__1\ : out STD_LOGIC;
    \pc_reg[9]_P\ : out STD_LOGIC;
    \pc_reg[9]_P_0\ : out STD_LOGIC;
    \pc_reg[7]_P\ : out STD_LOGIC;
    \pc_reg[6]_P\ : out STD_LOGIC;
    \pc_reg[5]_P\ : out STD_LOGIC;
    \pc_reg[4]_P\ : out STD_LOGIC;
    \pc_reg[3]_P\ : out STD_LOGIC;
    \pc_reg[2]_P\ : out STD_LOGIC;
    \pc_reg[1]_P\ : out STD_LOGIC;
    \pc_reg[0]_P\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \stack2_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pc_reg[0]_P_0\ : out STD_LOGIC;
    \RA_out_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RB_out_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \w_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \frs_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rtccount_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[7][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[8][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[9][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[10][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[11][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[12][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[13][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[14][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[15][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[16][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[17][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[18][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[19][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[20][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[21][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[22][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[23][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[24][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[25][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[26][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[27][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[28][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[29][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[30][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regfile_reg[31][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \b_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \trisa_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \trisb_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \yi_reg[1]_C_1\ : out STD_LOGIC;
    z_reg : out STD_LOGIC;
    z0 : out STD_LOGIC;
    \yi_reg[0]_P_2\ : out STD_LOGIC;
    \b_reg[0]\ : out STD_LOGIC;
    skip_reg_C : out STD_LOGIC;
    dc_reg : out STD_LOGIC;
    c_reg : out STD_LOGIC;
    romdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    CLK : in STD_LOGIC;
    \frs_reg_reg[3]\ : in STD_LOGIC;
    \frs_reg_reg[2]\ : in STD_LOGIC;
    \frs_reg_reg[1]\ : in STD_LOGIC;
    \frs_reg_reg[0]\ : in STD_LOGIC;
    \frs_reg_reg[4]\ : in STD_LOGIC;
    mclr : in STD_LOGIC;
    \yi_reg[7]_C_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \yi_reg[6]_C_1\ : in STD_LOGIC;
    \yi_reg[5]_C_1\ : in STD_LOGIC;
    \yi_reg[4]_C_1\ : in STD_LOGIC;
    \yi_reg[3]_C_1\ : in STD_LOGIC;
    \yi_reg[2]_C_1\ : in STD_LOGIC;
    \yi_reg[1]_C_2\ : in STD_LOGIC;
    \yi_reg[0]_C_2\ : in STD_LOGIC;
    data5 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \w_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \pc_reg[0]_P_1\ : in STD_LOGIC;
    \pc_reg[1]_P_0\ : in STD_LOGIC;
    \stacklevel_reg[0]_0\ : in STD_LOGIC;
    \stacklevel_reg[1]_0\ : in STD_LOGIC;
    dc : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \status_reg[1]_0\ : in STD_LOGIC;
    c : in STD_LOGIC;
    status_c : in STD_LOGIC;
    andlw_reg_0 : in STD_LOGIC;
    andwf_reg_0 : in STD_LOGIC;
    \b_reg[7]_0\ : in STD_LOGIC;
    andlw_reg_1 : in STD_LOGIC;
    \b_reg[6]\ : in STD_LOGIC;
    \w_reg[6]\ : in STD_LOGIC;
    andlw_reg_2 : in STD_LOGIC;
    andwf_reg_1 : in STD_LOGIC;
    \b_reg[5]\ : in STD_LOGIC;
    andlw_reg_3 : in STD_LOGIC;
    andwf_reg_2 : in STD_LOGIC;
    \b_reg[4]\ : in STD_LOGIC;
    andlw_reg_4 : in STD_LOGIC;
    andwf_reg_3 : in STD_LOGIC;
    \b_reg[3]\ : in STD_LOGIC;
    andlw_reg_5 : in STD_LOGIC;
    \b_reg[1]\ : in STD_LOGIC;
    andwf_reg_4 : in STD_LOGIC;
    \b_reg[2]\ : in STD_LOGIC;
    andlw_reg_6 : in STD_LOGIC;
    andwf_reg_5 : in STD_LOGIC;
    \b_reg[1]_0\ : in STD_LOGIC;
    andlw_reg_7 : in STD_LOGIC;
    \b_reg[0]_0\ : in STD_LOGIC;
    \b_reg[0]_1\ : in STD_LOGIC;
    \stack2_reg[9]_0\ : in STD_LOGIC;
    goto_reg_0 : in STD_LOGIC;
    \status_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \status_reg[5]_0\ : in STD_LOGIC;
    \yi_reg[7]_P_1\ : in STD_LOGIC;
    andlw_reg_8 : in STD_LOGIC;
    \yi_reg[6]_P_1\ : in STD_LOGIC;
    andlw_reg_9 : in STD_LOGIC;
    \yi_reg[5]_P_1\ : in STD_LOGIC;
    andlw_reg_10 : in STD_LOGIC;
    \yi_reg[4]_P_1\ : in STD_LOGIC;
    andlw_reg_11 : in STD_LOGIC;
    \yi_reg[3]_P_1\ : in STD_LOGIC;
    andlw_reg_12 : in STD_LOGIC;
    \yi_reg[2]_P_1\ : in STD_LOGIC;
    andlw_reg_13 : in STD_LOGIC;
    \yi_reg[1]_P_1\ : in STD_LOGIC;
    andlw_reg_14 : in STD_LOGIC;
    \yi_reg[0]_P_3\ : in STD_LOGIC;
    andlw_reg_15 : in STD_LOGIC;
    data2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \pc_reg[7]_P_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    skip : in STD_LOGIC;
    \regfile__0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \b_reg[0]_2\ : in STD_LOGIC;
    \pc_reg[0]_P_2\ : in STD_LOGIC;
    \frs_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \pc_reg[7]_P_1\ : in STD_LOGIC;
    \pc_reg[6]_P_0\ : in STD_LOGIC;
    \pc_reg[5]_P_0\ : in STD_LOGIC;
    \pc_reg[4]_P_0\ : in STD_LOGIC;
    \pc_reg[3]_P_0\ : in STD_LOGIC;
    \pc_reg[2]_P_0\ : in STD_LOGIC;
    \pc_reg[1]_P_1\ : in STD_LOGIC;
    andwf_reg_6 : in STD_LOGIC;
    \b_reg[6]_0\ : in STD_LOGIC;
    \w_reg[7]_1\ : in STD_LOGIC;
    \b_reg[6]_1\ : in STD_LOGIC;
    \b_reg[4]_0\ : in STD_LOGIC;
    \w_reg[5]\ : in STD_LOGIC;
    \b_reg[3]_0\ : in STD_LOGIC;
    \w_reg[4]\ : in STD_LOGIC;
    \b_reg[2]_0\ : in STD_LOGIC;
    \w_reg[3]\ : in STD_LOGIC;
    \status_reg[0]_0\ : in STD_LOGIC;
    \w_reg[0]\ : in STD_LOGIC;
    RA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    incfsz_reg_0 : in STD_LOGIC;
    addwf_reg_0 : in STD_LOGIC;
    \b_reg[0]_3\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decoder is
  signal \A2/b1__0\ : STD_LOGIC;
  signal \A2/data1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \A2/data3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \A2/p_0_out__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \A2/p_2_in\ : STD_LOGIC;
  signal \A2/pc11_out\ : STD_LOGIC;
  signal \A2/pc12_out\ : STD_LOGIC;
  signal \A2/rtccount1__7\ : STD_LOGIC;
  signal \A2/status11_out__0\ : STD_LOGIC;
  signal \A2/w14_out__1\ : STD_LOGIC;
  signal \A2/w1__0\ : STD_LOGIC;
  signal \A2/w4__3\ : STD_LOGIC;
  signal \RA_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \RB_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \^addwf\ : STD_LOGIC;
  signal addwf_i_1_n_0 : STD_LOGIC;
  signal \^andlw\ : STD_LOGIC;
  signal andlw_i_1_n_0 : STD_LOGIC;
  signal \^andwf\ : STD_LOGIC;
  signal andwf_i_1_n_0 : STD_LOGIC;
  signal \b[0]_i_4_n_0\ : STD_LOGIC;
  signal \b[0]_i_5_n_0\ : STD_LOGIC;
  signal \b[1]_i_4_n_0\ : STD_LOGIC;
  signal \b[1]_i_5_n_0\ : STD_LOGIC;
  signal \b[2]_i_4_n_0\ : STD_LOGIC;
  signal \b[2]_i_5_n_0\ : STD_LOGIC;
  signal \b[3]_i_4_n_0\ : STD_LOGIC;
  signal \b[3]_i_5_n_0\ : STD_LOGIC;
  signal \b[4]_i_4_n_0\ : STD_LOGIC;
  signal \b[5]_i_4_n_0\ : STD_LOGIC;
  signal \b[6]_i_4_n_0\ : STD_LOGIC;
  signal \b[7]_i_5_n_0\ : STD_LOGIC;
  signal bcf : STD_LOGIC;
  signal bcf_i_1_n_0 : STD_LOGIC;
  signal bsf : STD_LOGIC;
  signal bsf_i_1_n_0 : STD_LOGIC;
  signal btfsc : STD_LOGIC;
  signal btfsc_i_1_n_0 : STD_LOGIC;
  signal \^btfss\ : STD_LOGIC;
  signal btfss_i_1_n_0 : STD_LOGIC;
  signal \^call\ : STD_LOGIC;
  signal call_i_1_n_0 : STD_LOGIC;
  signal clrf : STD_LOGIC;
  signal clrf_i_1_n_0 : STD_LOGIC;
  signal clrw : STD_LOGIC;
  signal clrw_i_1_n_0 : STD_LOGIC;
  signal clrw_i_2_n_0 : STD_LOGIC;
  signal clrw_i_3_n_0 : STD_LOGIC;
  signal clrwdt : STD_LOGIC;
  signal clrwdt_i_1_n_0 : STD_LOGIC;
  signal \^comf\ : STD_LOGIC;
  signal comf_i_1_n_0 : STD_LOGIC;
  signal \^d_1\ : STD_LOGIC;
  signal \^decf\ : STD_LOGIC;
  signal decf_i_1_n_0 : STD_LOGIC;
  signal \^decfsz\ : STD_LOGIC;
  signal decfsz_i_1_n_0 : STD_LOGIC;
  signal \frs_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \^fsel\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^goto\ : STD_LOGIC;
  signal goto_i_1_n_0 : STD_LOGIC;
  signal \^incf\ : STD_LOGIC;
  signal incf_i_1_n_0 : STD_LOGIC;
  signal \^incfsz\ : STD_LOGIC;
  signal incfsz_i_1_n_0 : STD_LOGIC;
  signal \^iorlw\ : STD_LOGIC;
  signal iorlw_i_1_n_0 : STD_LOGIC;
  signal \^iorwf\ : STD_LOGIC;
  signal iorwf_i_1_n_0 : STD_LOGIC;
  signal \^k\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^movf\ : STD_LOGIC;
  signal movf_i_1_n_0 : STD_LOGIC;
  signal \^movlw\ : STD_LOGIC;
  signal movlw_i_1_n_0 : STD_LOGIC;
  signal movwf : STD_LOGIC;
  signal movwf_i_1_n_0 : STD_LOGIC;
  signal movwf_i_2_n_0 : STD_LOGIC;
  signal \^option\ : STD_LOGIC;
  signal option_i_1_n_0 : STD_LOGIC;
  signal option_i_2_n_0 : STD_LOGIC;
  signal \^pc1__0\ : STD_LOGIC;
  signal \pc[0]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[1]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[1]_P_i_4_n_0\ : STD_LOGIC;
  signal \pc[2]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[3]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[4]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[5]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[6]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[7]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[9]_P_i_10_n_0\ : STD_LOGIC;
  signal \pc[9]_P_i_12_n_0\ : STD_LOGIC;
  signal \^pc_reg[9]_p_0\ : STD_LOGIC;
  signal \regfile[10][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[10][7]_i_3_n_0\ : STD_LOGIC;
  signal \regfile[11][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[12][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[12][7]_i_3_n_0\ : STD_LOGIC;
  signal \regfile[13][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[13][7]_i_3_n_0\ : STD_LOGIC;
  signal \regfile[14][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[14][7]_i_3_n_0\ : STD_LOGIC;
  signal \regfile[15][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[16][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[16][7]_i_3_n_0\ : STD_LOGIC;
  signal \regfile[17][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[18][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[19][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[20][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[21][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[22][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[22][7]_i_3_n_0\ : STD_LOGIC;
  signal \regfile[23][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[24][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[24][7]_i_3_n_0\ : STD_LOGIC;
  signal \regfile[25][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[25][7]_i_3_n_0\ : STD_LOGIC;
  signal \regfile[26][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[26][7]_i_3_n_0\ : STD_LOGIC;
  signal \regfile[27][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[28][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[28][7]_i_3_n_0\ : STD_LOGIC;
  signal \regfile[29][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[30][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[30][7]_i_3_n_0\ : STD_LOGIC;
  signal \regfile[31][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[31][7]_i_4_n_0\ : STD_LOGIC;
  signal \regfile[31][7]_i_5_n_0\ : STD_LOGIC;
  signal \regfile[7][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[8][7]_i_2_n_0\ : STD_LOGIC;
  signal \regfile[9][7]_i_2_n_0\ : STD_LOGIC;
  signal \^retlw\ : STD_LOGIC;
  signal retlw_i_1_n_0 : STD_LOGIC;
  signal \^rlf\ : STD_LOGIC;
  signal rlf_i_1_n_0 : STD_LOGIC;
  signal \^rrf\ : STD_LOGIC;
  signal rrf_i_1_n_0 : STD_LOGIC;
  signal \rtccount[7]_i_3_n_0\ : STD_LOGIC;
  signal \^status0\ : STD_LOGIC;
  signal \status[0]_i_3_n_0\ : STD_LOGIC;
  signal \status[2]_i_3_n_0\ : STD_LOGIC;
  signal \status[2]_i_4_n_0\ : STD_LOGIC;
  signal \^subwf\ : STD_LOGIC;
  signal subwf_i_1_n_0 : STD_LOGIC;
  signal \^swapf\ : STD_LOGIC;
  signal swapf_i_1_n_0 : STD_LOGIC;
  signal \^tris\ : STD_LOGIC;
  signal tris_i_1_n_0 : STD_LOGIC;
  signal tris_i_2_n_0 : STD_LOGIC;
  signal tris_i_3_n_0 : STD_LOGIC;
  signal tris_i_4_n_0 : STD_LOGIC;
  signal \^xorlw\ : STD_LOGIC;
  signal xorlw_i_1_n_0 : STD_LOGIC;
  signal \^xorwf\ : STD_LOGIC;
  signal xorwf_i_1_n_0 : STD_LOGIC;
  signal \yi[0]_P_i_2_n_0\ : STD_LOGIC;
  signal \yi[0]_P_i_3_n_0\ : STD_LOGIC;
  signal \yi[1]_P_i_2_n_0\ : STD_LOGIC;
  signal \yi[1]_P_i_3_n_0\ : STD_LOGIC;
  signal \yi[2]_P_i_2_n_0\ : STD_LOGIC;
  signal \yi[2]_P_i_3_n_0\ : STD_LOGIC;
  signal \yi[3]_P_i_2_n_0\ : STD_LOGIC;
  signal \yi[3]_P_i_3_n_0\ : STD_LOGIC;
  signal \yi[4]_P_i_2_n_0\ : STD_LOGIC;
  signal \yi[4]_P_i_3_n_0\ : STD_LOGIC;
  signal \yi[5]_P_i_2_n_0\ : STD_LOGIC;
  signal \yi[5]_P_i_3_n_0\ : STD_LOGIC;
  signal \yi[6]_P_i_2_n_0\ : STD_LOGIC;
  signal \yi[6]_P_i_3_n_0\ : STD_LOGIC;
  signal \yi[6]_P_i_4_n_0\ : STD_LOGIC;
  signal \yi[7]_P_i_10_n_0\ : STD_LOGIC;
  signal \yi[7]_P_i_11_n_0\ : STD_LOGIC;
  signal \yi[7]_P_i_3_n_0\ : STD_LOGIC;
  signal \yi[7]_P_i_4_n_0\ : STD_LOGIC;
  signal \yi[7]_P_i_5_n_0\ : STD_LOGIC;
  signal \yi[7]_P_i_6_n_0\ : STD_LOGIC;
  signal \yi[7]_P_i_7_n_0\ : STD_LOGIC;
  signal \yi[7]_P_i_8_n_0\ : STD_LOGIC;
  signal \^yi_reg[0]_c_1\ : STD_LOGIC;
  signal \yi_reg[0]_LDC_i_12_n_0\ : STD_LOGIC;
  signal \yi_reg[0]_LDC_i_3_n_0\ : STD_LOGIC;
  signal \yi_reg[0]_LDC_i_5_n_0\ : STD_LOGIC;
  signal \yi_reg[0]_LDC_i_6_n_0\ : STD_LOGIC;
  signal \yi_reg[0]_LDC_i_9_n_0\ : STD_LOGIC;
  signal \^yi_reg[0]_p\ : STD_LOGIC;
  signal \^yi_reg[0]_p_1\ : STD_LOGIC;
  signal \^yi_reg[0]_p_2\ : STD_LOGIC;
  signal \^yi_reg[1]_c_1\ : STD_LOGIC;
  signal \yi_reg[1]_LDC_i_12_n_0\ : STD_LOGIC;
  signal \yi_reg[1]_LDC_i_13_n_0\ : STD_LOGIC;
  signal \yi_reg[1]_LDC_i_3_n_0\ : STD_LOGIC;
  signal \yi_reg[1]_LDC_i_5_n_0\ : STD_LOGIC;
  signal \yi_reg[1]_LDC_i_6_n_0\ : STD_LOGIC;
  signal \yi_reg[1]_LDC_i_9_n_0\ : STD_LOGIC;
  signal \^yi_reg[1]_p_0\ : STD_LOGIC;
  signal \yi_reg[2]_LDC_i_3_n_0\ : STD_LOGIC;
  signal \yi_reg[2]_LDC_i_5_n_0\ : STD_LOGIC;
  signal \yi_reg[2]_LDC_i_9_n_0\ : STD_LOGIC;
  signal \^yi_reg[2]_p_0\ : STD_LOGIC;
  signal \yi_reg[3]_LDC_i_12_n_0\ : STD_LOGIC;
  signal \yi_reg[3]_LDC_i_3_n_0\ : STD_LOGIC;
  signal \yi_reg[3]_LDC_i_5_n_0\ : STD_LOGIC;
  signal \yi_reg[3]_LDC_i_6_n_0\ : STD_LOGIC;
  signal \yi_reg[3]_LDC_i_9_n_0\ : STD_LOGIC;
  signal \^yi_reg[3]_p_0\ : STD_LOGIC;
  signal \yi_reg[4]_LDC_i_12_n_0\ : STD_LOGIC;
  signal \yi_reg[4]_LDC_i_3_n_0\ : STD_LOGIC;
  signal \yi_reg[4]_LDC_i_5_n_0\ : STD_LOGIC;
  signal \yi_reg[4]_LDC_i_6_n_0\ : STD_LOGIC;
  signal \yi_reg[4]_LDC_i_9_n_0\ : STD_LOGIC;
  signal \^yi_reg[4]_p_0\ : STD_LOGIC;
  signal \yi_reg[5]_LDC_i_12_n_0\ : STD_LOGIC;
  signal \yi_reg[5]_LDC_i_3_n_0\ : STD_LOGIC;
  signal \yi_reg[5]_LDC_i_5_n_0\ : STD_LOGIC;
  signal \yi_reg[5]_LDC_i_6_n_0\ : STD_LOGIC;
  signal \yi_reg[5]_LDC_i_9_n_0\ : STD_LOGIC;
  signal \^yi_reg[5]_p_0\ : STD_LOGIC;
  signal \yi_reg[6]_LDC_i_10_n_0\ : STD_LOGIC;
  signal \yi_reg[6]_LDC_i_11_n_0\ : STD_LOGIC;
  signal \yi_reg[6]_LDC_i_12_n_0\ : STD_LOGIC;
  signal \yi_reg[6]_LDC_i_15_n_0\ : STD_LOGIC;
  signal \yi_reg[6]_LDC_i_3_n_0\ : STD_LOGIC;
  signal \yi_reg[6]_LDC_i_5_n_0\ : STD_LOGIC;
  signal \yi_reg[6]_LDC_i_8_n_0\ : STD_LOGIC;
  signal \yi_reg[7]_LDC_i_11_n_0\ : STD_LOGIC;
  signal \yi_reg[7]_LDC_i_14_n_0\ : STD_LOGIC;
  signal \yi_reg[7]_LDC_i_3_n_0\ : STD_LOGIC;
  signal \yi_reg[7]_LDC_i_5_n_0\ : STD_LOGIC;
  signal \yi_reg[7]_LDC_i_6_n_0\ : STD_LOGIC;
  signal \yi_reg[7]_LDC_i_7_n_0\ : STD_LOGIC;
  signal \yi_reg[7]_LDC_i_8_n_0\ : STD_LOGIC;
  signal \^yi_reg[7]_p_0\ : STD_LOGIC;
  signal z_i_14_n_0 : STD_LOGIC;
  signal z_i_15_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RA_out[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \RB_out[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of andlw_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \b[0]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \b[0]_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \b[1]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \b[1]_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \b[2]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \b[2]_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \b[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \b[3]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \b[3]_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \b[4]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \b[5]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \b[6]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \b[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of bcf_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of bsf_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of btfsc_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of btfss_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of call_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of clrw_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of dc_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \frs_reg[7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of goto_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of iorlw_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of movlw_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of movwf_i_2 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \pc[0]_P_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \pc[1]_P_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \pc[2]_P_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \pc[3]_P_i_5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \pc[4]_P_i_5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \pc[5]_P_i_5\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \pc[6]_P_i_5\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \pc[7]_P_i_5\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \pc[9]_P_i_10\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pc[9]_P_i_12\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pc[9]_P_i_6\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \regfile[10][7]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \regfile[12][7]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \regfile[13][7]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \regfile[14][7]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \regfile[16][7]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \regfile[22][7]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \regfile[24][7]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \regfile[25][7]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \regfile[26][7]_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \regfile[28][7]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \regfile[30][7]_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \regfile[31][7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \regfile[31][7]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \regfile[31][7]_i_5\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of retlw_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rtccount[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rtccount[7]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \stack1[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \stack2[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \status[0]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \status[0]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \status[2]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of tris_i_4 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \trisa[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \trisb[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \w[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of xorlw_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \yi[0]_C_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \yi[0]_P_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \yi[1]_C_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \yi[1]_P_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \yi[2]_C_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \yi[2]_P_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \yi[3]_P_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \yi[4]_C_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \yi[4]_P_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \yi[5]_C_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \yi[5]_P_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \yi[6]_C_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \yi[6]_P_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \yi[6]_P_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \yi[6]_P_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \yi[6]_P_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \yi[7]_C_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \yi[7]_P_i_10\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \yi[7]_P_i_11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \yi[7]_P_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \yi_reg[0]_LDC_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \yi_reg[0]_LDC_i_12\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \yi_reg[0]_LDC_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \yi_reg[1]_LDC_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \yi_reg[1]_LDC_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \yi_reg[2]_LDC_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \yi_reg[2]_LDC_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \yi_reg[3]_LDC_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \yi_reg[3]_LDC_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \yi_reg[4]_LDC_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \yi_reg[4]_LDC_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \yi_reg[5]_LDC_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \yi_reg[5]_LDC_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \yi_reg[6]_LDC_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \yi_reg[6]_LDC_i_11\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \yi_reg[6]_LDC_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \yi_reg[6]_LDC_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \yi_reg[7]_LDC_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \yi_reg[7]_LDC_i_16\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \yi_reg[7]_LDC_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of z_i_15 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of z_i_2 : label is "soft_lutpair9";
begin
  \^d\ <= \^d_1\;
  addwf <= \^addwf\;
  andlw <= \^andlw\;
  andwf <= \^andwf\;
  btfss <= \^btfss\;
  call <= \^call\;
  comf <= \^comf\;
  decf <= \^decf\;
  decfsz <= \^decfsz\;
  fsel(4 downto 0) <= \^fsel\(4 downto 0);
  goto <= \^goto\;
  incf <= \^incf\;
  incfsz <= \^incfsz\;
  iorlw <= \^iorlw\;
  iorwf <= \^iorwf\;
  k(6 downto 0) <= \^k\(6 downto 0);
  movf <= \^movf\;
  movlw <= \^movlw\;
  option <= \^option\;
  \pc1__0\ <= \^pc1__0\;
  \pc_reg[9]_P_0\ <= \^pc_reg[9]_p_0\;
  retlw <= \^retlw\;
  rlf <= \^rlf\;
  rrf <= \^rrf\;
  status0 <= \^status0\;
  subwf <= \^subwf\;
  swapf <= \^swapf\;
  tris <= \^tris\;
  xorlw <= \^xorlw\;
  xorwf <= \^xorwf\;
  \yi_reg[0]_C_1\ <= \^yi_reg[0]_c_1\;
  \yi_reg[0]_P\ <= \^yi_reg[0]_p\;
  \yi_reg[0]_P_1\ <= \^yi_reg[0]_p_1\;
  \yi_reg[0]_P_2\ <= \^yi_reg[0]_p_2\;
  \yi_reg[1]_C_1\ <= \^yi_reg[1]_c_1\;
  \yi_reg[1]_P_0\ <= \^yi_reg[1]_p_0\;
  \yi_reg[2]_P_0\ <= \^yi_reg[2]_p_0\;
  \yi_reg[3]_P_0\ <= \^yi_reg[3]_p_0\;
  \yi_reg[4]_P_0\ <= \^yi_reg[4]_p_0\;
  \yi_reg[5]_P_0\ <= \^yi_reg[5]_p_0\;
  \yi_reg[7]_P_0\ <= \^yi_reg[7]_p_0\;
\RA_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080888000800080"
    )
        port map (
      I0 => mclr,
      I1 => \RA_out[3]_i_2_n_0\,
      I2 => \A2/w1__0\,
      I3 => \A2/w14_out__1\,
      I4 => \^retlw\,
      I5 => \^d_1\,
      O => \RA_out_reg[3]\(0)
    );
\RA_out[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^k\(1),
      I1 => \^k\(0),
      I2 => \^k\(2),
      I3 => \^k\(4),
      I4 => \^k\(3),
      O => \RA_out[3]_i_2_n_0\
    );
\RB_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080888000800080"
    )
        port map (
      I0 => mclr,
      I1 => \RB_out[7]_i_2_n_0\,
      I2 => \A2/w1__0\,
      I3 => \A2/w14_out__1\,
      I4 => \^retlw\,
      I5 => \^d_1\,
      O => \RB_out_reg[7]\(0)
    );
\RB_out[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^k\(0),
      I1 => \^k\(2),
      I2 => \^k\(1),
      I3 => \^k\(4),
      I4 => \^k\(3),
      O => \RB_out[7]_i_2_n_0\
    );
addwf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(7),
      I3 => romdata(6),
      I4 => romdata(9),
      I5 => romdata(8),
      O => addwf_i_1_n_0
    );
addwf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => addwf_i_1_n_0,
      Q => \^addwf\,
      R => '0'
    );
andlw_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(8),
      I2 => romdata(11),
      I3 => romdata(9),
      O => andlw_i_1_n_0
    );
andlw_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => andlw_i_1_n_0,
      Q => \^andlw\,
      R => '0'
    );
andwf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(8),
      I3 => romdata(6),
      I4 => romdata(9),
      I5 => romdata(7),
      O => andwf_i_1_n_0
    );
andwf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => andwf_i_1_n_0,
      Q => \^andwf\,
      R => '0'
    );
\b[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \^k\(0),
      I1 => \A2/b1__0\,
      I2 => \A2/p_0_out__1\(0),
      I3 => \^k\(4),
      I4 => \^k\(3),
      I5 => \regfile__0\(0),
      O => \b_reg[7]\(0)
    );
\b[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \b[0]_i_4_n_0\,
      I1 => \^k\(1),
      I2 => \b[0]_i_5_n_0\,
      I3 => \^k\(2),
      I4 => \pc_reg[0]_P_2\,
      O => \A2/p_0_out__1\(0)
    );
\b[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^k\(0),
      I1 => RB(0),
      I2 => \regfile__0\(0),
      O => \b[0]_i_4_n_0\
    );
\b[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^k\(0),
      I1 => \frs_reg_reg[7]_0\(0),
      I2 => RA(0),
      O => \b[0]_i_5_n_0\
    );
\b[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \^k\(1),
      I1 => \A2/b1__0\,
      I2 => \A2/p_0_out__1\(1),
      I3 => \^k\(4),
      I4 => \^k\(3),
      I5 => \regfile__0\(1),
      O => \b_reg[7]\(1)
    );
\b[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \b[1]_i_4_n_0\,
      I1 => \^k\(1),
      I2 => \b[1]_i_5_n_0\,
      I3 => \^k\(2),
      I4 => \pc_reg[1]_P_1\,
      O => \A2/p_0_out__1\(1)
    );
\b[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^k\(0),
      I1 => RB(1),
      I2 => \regfile__0\(1),
      O => \b[1]_i_4_n_0\
    );
\b[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^k\(0),
      I1 => \frs_reg_reg[7]_0\(1),
      I2 => RA(1),
      O => \b[1]_i_5_n_0\
    );
\b[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \^k\(2),
      I1 => \A2/b1__0\,
      I2 => \A2/p_0_out__1\(2),
      I3 => \^k\(4),
      I4 => \^k\(3),
      I5 => \regfile__0\(2),
      O => \b_reg[7]\(2)
    );
\b[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \b[2]_i_4_n_0\,
      I1 => \^k\(1),
      I2 => \b[2]_i_5_n_0\,
      I3 => \^k\(2),
      I4 => \pc_reg[2]_P_0\,
      O => \A2/p_0_out__1\(2)
    );
\b[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^k\(0),
      I1 => RB(2),
      I2 => \regfile__0\(2),
      O => \b[2]_i_4_n_0\
    );
\b[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^k\(0),
      I1 => \frs_reg_reg[7]_0\(2),
      I2 => RA(2),
      O => \b[2]_i_5_n_0\
    );
\b[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF54AA04"
    )
        port map (
      I0 => \A2/b1__0\,
      I1 => \A2/p_0_out__1\(3),
      I2 => \^k\(4),
      I3 => \^k\(3),
      I4 => \regfile__0\(3),
      O => \b_reg[7]\(3)
    );
\b[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \b[3]_i_4_n_0\,
      I1 => \^k\(1),
      I2 => \b[3]_i_5_n_0\,
      I3 => \^k\(2),
      I4 => \pc_reg[3]_P_0\,
      O => \A2/p_0_out__1\(3)
    );
\b[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^k\(0),
      I1 => RB(3),
      I2 => \regfile__0\(3),
      O => \b[3]_i_4_n_0\
    );
\b[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^k\(0),
      I1 => \frs_reg_reg[7]_0\(3),
      I2 => RA(3),
      O => \b[3]_i_5_n_0\
    );
\b[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5F4A0A4"
    )
        port map (
      I0 => \A2/b1__0\,
      I1 => \A2/p_0_out__1\(4),
      I2 => \^k\(4),
      I3 => \^k\(3),
      I4 => \regfile__0\(4),
      O => \b_reg[7]\(4)
    );
\b[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \b[4]_i_4_n_0\,
      I1 => \^k\(1),
      I2 => \frs_reg_reg[7]_0\(4),
      I3 => \^k\(0),
      I4 => \^k\(2),
      I5 => \pc_reg[4]_P_0\,
      O => \A2/p_0_out__1\(4)
    );
\b[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^k\(0),
      I1 => RB(4),
      I2 => \regfile__0\(4),
      O => \b[4]_i_4_n_0\
    );
\b[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \^d_1\,
      I1 => \A2/b1__0\,
      I2 => \A2/p_0_out__1\(5),
      I3 => \^k\(4),
      I4 => \^k\(3),
      I5 => \regfile__0\(5),
      O => \b_reg[7]\(5)
    );
\b[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \b[5]_i_4_n_0\,
      I1 => \^k\(1),
      I2 => \frs_reg_reg[7]_0\(5),
      I3 => \^k\(0),
      I4 => \^k\(2),
      I5 => \pc_reg[5]_P_0\,
      O => \A2/p_0_out__1\(5)
    );
\b[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^k\(0),
      I1 => RB(5),
      I2 => \regfile__0\(5),
      O => \b[5]_i_4_n_0\
    );
\b[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \^k\(5),
      I1 => \A2/b1__0\,
      I2 => \A2/p_0_out__1\(6),
      I3 => \^k\(4),
      I4 => \^k\(3),
      I5 => \regfile__0\(6),
      O => \b_reg[7]\(6)
    );
\b[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \b[6]_i_4_n_0\,
      I1 => \^k\(1),
      I2 => \frs_reg_reg[7]_0\(6),
      I3 => \^k\(0),
      I4 => \^k\(2),
      I5 => \pc_reg[6]_P_0\,
      O => \A2/p_0_out__1\(6)
    );
\b[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^k\(0),
      I1 => RB(6),
      I2 => \regfile__0\(6),
      O => \b[6]_i_4_n_0\
    );
\b[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => \^k\(6),
      I1 => \A2/b1__0\,
      I2 => \A2/p_0_out__1\(7),
      I3 => \^k\(4),
      I4 => \^k\(3),
      I5 => \regfile__0\(7),
      O => \b_reg[7]\(7)
    );
\b[7]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^fsel\(4),
      I1 => \^fsel\(3),
      I2 => \^fsel\(2),
      O => \b_reg[0]\
    );
\b[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^retlw\,
      I1 => \^movlw\,
      I2 => \^xorlw\,
      I3 => \^iorlw\,
      I4 => \^andlw\,
      O => \A2/b1__0\
    );
\b[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \b[7]_i_5_n_0\,
      I1 => \^k\(1),
      I2 => \frs_reg_reg[7]_0\(7),
      I3 => \^k\(0),
      I4 => \^k\(2),
      I5 => \pc_reg[7]_P_1\,
      O => \A2/p_0_out__1\(7)
    );
\b[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^k\(0),
      I1 => RB(7),
      I2 => \regfile__0\(7),
      O => \b[7]_i_5_n_0\
    );
bcf_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(8),
      I2 => romdata(10),
      I3 => romdata(9),
      O => bcf_i_1_n_0
    );
bcf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bcf_i_1_n_0,
      Q => bcf,
      R => '0'
    );
bsf_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(9),
      I2 => romdata(8),
      I3 => romdata(10),
      O => bsf_i_1_n_0
    );
bsf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => bsf_i_1_n_0,
      Q => bsf,
      R => '0'
    );
btfsc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(8),
      I2 => romdata(9),
      I3 => romdata(10),
      O => btfsc_i_1_n_0
    );
btfsc_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => btfsc_i_1_n_0,
      Q => btfsc,
      R => '0'
    );
btfss_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(8),
      I3 => romdata(9),
      O => btfss_i_1_n_0
    );
btfss_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => btfss_i_1_n_0,
      Q => \^btfss\,
      R => '0'
    );
c_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACACAFACACACA0"
    )
        port map (
      I0 => Q(7),
      I1 => \b_reg[0]_3\,
      I2 => \^rlf\,
      I3 => \status[0]_i_3_n_0\,
      I4 => \^rrf\,
      I5 => c,
      O => c_reg
    );
call_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => romdata(9),
      I1 => romdata(10),
      I2 => romdata(8),
      I3 => romdata(11),
      O => call_i_1_n_0
    );
call_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => call_i_1_n_0,
      Q => \^call\,
      R => '0'
    );
clrf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => movwf_i_2_n_0,
      I1 => romdata(5),
      I2 => romdata(6),
      I3 => romdata(7),
      I4 => romdata(9),
      I5 => romdata(8),
      O => clrf_i_1_n_0
    );
clrf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => clrf_i_1_n_0,
      Q => clrf,
      R => '0'
    );
clrw_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => clrw_i_2_n_0,
      I1 => clrw_i_3_n_0,
      I2 => romdata(0),
      I3 => romdata(7),
      I4 => romdata(4),
      I5 => romdata(5),
      O => clrw_i_1_n_0
    );
clrw_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(8),
      I3 => romdata(9),
      O => clrw_i_2_n_0
    );
clrw_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => romdata(2),
      I1 => romdata(3),
      I2 => romdata(6),
      I3 => romdata(1),
      O => clrw_i_3_n_0
    );
clrw_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => clrw_i_1_n_0,
      Q => clrw,
      R => '0'
    );
clrwdt_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => clrw_i_2_n_0,
      I1 => romdata(0),
      I2 => romdata(3),
      I3 => romdata(2),
      I4 => romdata(1),
      I5 => option_i_2_n_0,
      O => clrwdt_i_1_n_0
    );
clrwdt_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => clrwdt_i_1_n_0,
      Q => clrwdt,
      R => '0'
    );
comf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(9),
      I3 => romdata(6),
      I4 => romdata(7),
      I5 => romdata(8),
      O => comf_i_1_n_0
    );
comf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comf_i_1_n_0,
      Q => \^comf\,
      R => '0'
    );
d_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(5),
      Q => \^d_1\,
      R => '0'
    );
dc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => addwf_reg_0,
      I1 => \^addwf\,
      I2 => \^subwf\,
      I3 => dc,
      O => dc_reg
    );
decf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(9),
      I3 => romdata(8),
      I4 => romdata(7),
      I5 => romdata(6),
      O => decf_i_1_n_0
    );
decf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => decf_i_1_n_0,
      Q => \^decf\,
      R => '0'
    );
decfsz_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(7),
      I3 => romdata(6),
      I4 => romdata(8),
      I5 => romdata(9),
      O => decfsz_i_1_n_0
    );
decfsz_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => decfsz_i_1_n_0,
      Q => \^decfsz\,
      R => '0'
    );
\frs_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080888000800080"
    )
        port map (
      I0 => mclr,
      I1 => \frs_reg[7]_i_2_n_0\,
      I2 => \A2/w1__0\,
      I3 => \A2/w14_out__1\,
      I4 => \^retlw\,
      I5 => \^d_1\,
      O => \frs_reg_reg[7]\(0)
    );
\frs_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^k\(2),
      I1 => \^k\(0),
      I2 => \^k\(1),
      I3 => \^k\(4),
      I4 => \^k\(3),
      O => \frs_reg[7]_i_2_n_0\
    );
\fsel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \frs_reg_reg[0]\,
      Q => \^fsel\(0),
      R => '0'
    );
\fsel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \frs_reg_reg[1]\,
      Q => \^fsel\(1),
      R => '0'
    );
\fsel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \frs_reg_reg[2]\,
      Q => \^fsel\(2),
      R => '0'
    );
\fsel_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \frs_reg_reg[3]\,
      Q => \^fsel\(3),
      R => '0'
    );
\fsel_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \frs_reg_reg[4]\,
      Q => \^fsel\(4),
      R => '0'
    );
goto_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(9),
      I2 => romdata(11),
      O => goto_i_1_n_0
    );
goto_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => goto_i_1_n_0,
      Q => \^goto\,
      R => '0'
    );
incf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(9),
      I3 => romdata(7),
      I4 => romdata(6),
      I5 => romdata(8),
      O => incf_i_1_n_0
    );
incf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => incf_i_1_n_0,
      Q => \^incf\,
      R => '0'
    );
incfsz_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(7),
      I3 => romdata(6),
      I4 => romdata(9),
      I5 => romdata(8),
      O => incfsz_i_1_n_0
    );
incfsz_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => incfsz_i_1_n_0,
      Q => \^incfsz\,
      R => '0'
    );
iorlw_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(9),
      I2 => romdata(8),
      I3 => romdata(11),
      O => iorlw_i_1_n_0
    );
iorlw_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => iorlw_i_1_n_0,
      Q => \^iorlw\,
      R => '0'
    );
iorwf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(7),
      I3 => romdata(8),
      I4 => romdata(9),
      I5 => romdata(6),
      O => iorwf_i_1_n_0
    );
iorwf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => iorwf_i_1_n_0,
      Q => \^iorwf\,
      R => '0'
    );
\k_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(0),
      Q => \^k\(0),
      R => '0'
    );
\k_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(1),
      Q => \^k\(1),
      R => '0'
    );
\k_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(2),
      Q => \^k\(2),
      R => '0'
    );
\k_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(3),
      Q => \^k\(3),
      R => '0'
    );
\k_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(4),
      Q => \^k\(4),
      R => '0'
    );
\k_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(6),
      Q => \^k\(5),
      R => '0'
    );
\k_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(7),
      Q => \^k\(6),
      R => '0'
    );
\longk_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(8),
      Q => longk(0),
      R => '0'
    );
movf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(7),
      I3 => romdata(9),
      I4 => romdata(6),
      I5 => romdata(8),
      O => movf_i_1_n_0
    );
movf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => movf_i_1_n_0,
      Q => \^movf\,
      R => '0'
    );
movlw_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => romdata(9),
      I1 => romdata(8),
      I2 => romdata(11),
      I3 => romdata(10),
      O => movlw_i_1_n_0
    );
movlw_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => movlw_i_1_n_0,
      Q => \^movlw\,
      R => '0'
    );
movwf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => movwf_i_2_n_0,
      I1 => romdata(5),
      I2 => romdata(7),
      I3 => romdata(6),
      I4 => romdata(9),
      I5 => romdata(8),
      O => movwf_i_1_n_0
    );
movwf_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      O => movwf_i_2_n_0
    );
movwf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => movwf_i_1_n_0,
      Q => movwf,
      R => '0'
    );
option_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => clrw_i_2_n_0,
      I1 => romdata(2),
      I2 => romdata(3),
      I3 => romdata(1),
      I4 => romdata(0),
      I5 => option_i_2_n_0,
      O => option_i_1_n_0
    );
option_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => romdata(4),
      I1 => romdata(5),
      I2 => romdata(6),
      I3 => romdata(7),
      O => option_i_2_n_0
    );
option_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => option_i_1_n_0,
      Q => \^option\,
      R => '0'
    );
\pc[0]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \pc[0]_P_i_2_n_0\,
      I1 => \A2/pc11_out\,
      I2 => \A2/pc12_out\,
      I3 => \yi_reg[0]_P_3\,
      I4 => andlw_reg_15,
      I5 => \yi_reg[0]_C_2\,
      O => \pc_reg[0]_P\
    );
\pc[0]_P_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \^retlw\,
      I1 => data2(0),
      I2 => \A2/data3\(0),
      I3 => \^call\,
      I4 => \A2/data1\(0),
      O => \pc[0]_P_i_2_n_0\
    );
\pc[0]_P_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA45"
    )
        port map (
      I0 => \^pc1__0\,
      I1 => \^k\(0),
      I2 => \^goto\,
      I3 => \pc_reg[0]_P_1\,
      O => \A2/data3\(0)
    );
\pc[0]_P_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^k\(0),
      I1 => \stacklevel_reg[1]_0\,
      I2 => mclr,
      O => \A2/data1\(0)
    );
\pc[1]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \pc[1]_P_i_2_n_0\,
      I1 => \A2/pc11_out\,
      I2 => \A2/pc12_out\,
      I3 => \yi_reg[1]_P_1\,
      I4 => andlw_reg_14,
      I5 => \yi_reg[1]_C_2\,
      O => \pc_reg[1]_P\
    );
\pc[1]_P_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF800F8"
    )
        port map (
      I0 => \^retlw\,
      I1 => data2(1),
      I2 => \pc[1]_P_i_4_n_0\,
      I3 => \^call\,
      I4 => \A2/data1\(1),
      O => \pc[1]_P_i_2_n_0\
    );
\pc[1]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003333F606"
    )
        port map (
      I0 => \pc_reg[0]_P_1\,
      I1 => \pc_reg[1]_P_0\,
      I2 => \^goto\,
      I3 => \^k\(1),
      I4 => \^pc1__0\,
      I5 => \^retlw\,
      O => \pc[1]_P_i_4_n_0\
    );
\pc[1]_P_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^k\(1),
      I1 => \stacklevel_reg[1]_0\,
      I2 => mclr,
      O => \A2/data1\(1)
    );
\pc[2]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \pc[2]_P_i_2_n_0\,
      I1 => \A2/pc11_out\,
      I2 => \A2/pc12_out\,
      I3 => \yi_reg[2]_P_1\,
      I4 => andlw_reg_13,
      I5 => \yi_reg[2]_C_1\,
      O => \pc_reg[2]_P\
    );
\pc[2]_P_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \^retlw\,
      I1 => data2(2),
      I2 => \pc_reg[7]_P_0\(0),
      I3 => \^call\,
      I4 => \A2/data1\(2),
      O => \pc[2]_P_i_2_n_0\
    );
\pc[2]_P_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^k\(2),
      I1 => \stacklevel_reg[1]_0\,
      I2 => mclr,
      O => \A2/data1\(2)
    );
\pc[3]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \pc[3]_P_i_2_n_0\,
      I1 => \A2/pc11_out\,
      I2 => \A2/pc12_out\,
      I3 => \yi_reg[3]_P_1\,
      I4 => andlw_reg_12,
      I5 => \yi_reg[3]_C_1\,
      O => \pc_reg[3]_P\
    );
\pc[3]_P_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \^retlw\,
      I1 => data2(3),
      I2 => \pc_reg[7]_P_0\(1),
      I3 => \^call\,
      I4 => \A2/data1\(3),
      O => \pc[3]_P_i_2_n_0\
    );
\pc[3]_P_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^k\(3),
      I1 => \stacklevel_reg[1]_0\,
      I2 => mclr,
      O => \A2/data1\(3)
    );
\pc[4]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \pc[4]_P_i_2_n_0\,
      I1 => \A2/pc11_out\,
      I2 => \A2/pc12_out\,
      I3 => \yi_reg[4]_P_1\,
      I4 => andlw_reg_11,
      I5 => \yi_reg[4]_C_1\,
      O => \pc_reg[4]_P\
    );
\pc[4]_P_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \^retlw\,
      I1 => data2(4),
      I2 => \pc_reg[7]_P_0\(2),
      I3 => \^call\,
      I4 => \A2/data1\(4),
      O => \pc[4]_P_i_2_n_0\
    );
\pc[4]_P_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^k\(4),
      I1 => \stacklevel_reg[1]_0\,
      I2 => mclr,
      O => \A2/data1\(4)
    );
\pc[5]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \pc[5]_P_i_2_n_0\,
      I1 => \A2/pc11_out\,
      I2 => \A2/pc12_out\,
      I3 => \yi_reg[5]_P_1\,
      I4 => andlw_reg_10,
      I5 => \yi_reg[5]_C_1\,
      O => \pc_reg[5]_P\
    );
\pc[5]_P_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \^retlw\,
      I1 => data2(5),
      I2 => \pc_reg[7]_P_0\(3),
      I3 => \^call\,
      I4 => \A2/data1\(5),
      O => \pc[5]_P_i_2_n_0\
    );
\pc[5]_P_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^d_1\,
      I1 => \stacklevel_reg[1]_0\,
      I2 => mclr,
      O => \A2/data1\(5)
    );
\pc[6]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \pc[6]_P_i_2_n_0\,
      I1 => \A2/pc11_out\,
      I2 => \A2/pc12_out\,
      I3 => \yi_reg[6]_P_1\,
      I4 => andlw_reg_9,
      I5 => \yi_reg[6]_C_1\,
      O => \pc_reg[6]_P\
    );
\pc[6]_P_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \^retlw\,
      I1 => data2(6),
      I2 => \pc_reg[7]_P_0\(4),
      I3 => \^call\,
      I4 => \A2/data1\(6),
      O => \pc[6]_P_i_2_n_0\
    );
\pc[6]_P_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^k\(5),
      I1 => \stacklevel_reg[1]_0\,
      I2 => mclr,
      O => \A2/data1\(6)
    );
\pc[7]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \pc[7]_P_i_2_n_0\,
      I1 => \A2/pc11_out\,
      I2 => \A2/pc12_out\,
      I3 => \yi_reg[7]_P_1\,
      I4 => andlw_reg_8,
      I5 => \yi_reg[7]_C_1\,
      O => \pc_reg[7]_P\
    );
\pc[7]_P_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \^retlw\,
      I1 => data2(7),
      I2 => \pc_reg[7]_P_0\(5),
      I3 => \^call\,
      I4 => \A2/data1\(7),
      O => \pc[7]_P_i_2_n_0\
    );
\pc[7]_P_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^k\(6),
      I1 => \stacklevel_reg[1]_0\,
      I2 => mclr,
      O => \A2/data1\(7)
    );
\pc[9]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFB"
    )
        port map (
      I0 => \A2/pc12_out\,
      I1 => \^retlw\,
      I2 => \^call\,
      I3 => \stacklevel_reg[1]_0\,
      I4 => \stacklevel_reg[0]_0\,
      I5 => \A2/pc11_out\,
      O => \pc_reg[0]_P_0\
    );
\pc[9]_P_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \status_reg[5]_0\,
      I1 => \A2/pc12_out\,
      I2 => \A2/pc11_out\,
      O => \pc[9]_P_i_10_n_0\
    );
\pc[9]_P_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^rrf\,
      I1 => \^rlf\,
      I2 => movwf,
      I3 => \^swapf\,
      I4 => \status[2]_i_3_n_0\,
      I5 => \status[0]_i_3_n_0\,
      O => \A2/w4__3\
    );
\pc[9]_P_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^k\(4),
      I1 => \^k\(3),
      O => \pc[9]_P_i_12_n_0\
    );
\pc[9]_P_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => skip,
      I1 => \^btfss\,
      I2 => btfsc,
      I3 => \^decfsz\,
      I4 => \^incfsz\,
      O => \^pc1__0\
    );
\pc[9]_P_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55540054"
    )
        port map (
      I0 => \^pc_reg[9]_p_0\,
      I1 => \stack2_reg[9]_0\,
      I2 => goto_reg_0,
      I3 => \^call\,
      I4 => \status_reg[5]\(0),
      I5 => \pc[9]_P_i_10_n_0\,
      O => \pc_reg[9]_P\
    );
\pc[9]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \A2/w4__3\,
      I1 => \^d_1\,
      I2 => \pc[9]_P_i_12_n_0\,
      I3 => \^k\(1),
      I4 => \^k\(0),
      I5 => \^k\(2),
      O => \A2/pc12_out\
    );
\pc[9]_P_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \A2/w1__0\,
      I1 => \^k\(2),
      I2 => \^k\(0),
      I3 => \^k\(1),
      I4 => \^k\(4),
      I5 => \^k\(3),
      O => \A2/pc11_out\
    );
\pc[9]_P_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \A2/pc11_out\,
      I1 => \A2/pc12_out\,
      O => \^pc_reg[9]_p_0\
    );
\regfile[10][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[10][7]_i_2_n_0\,
      O => \regfile_reg[10][7]\(0)
    );
\regfile[10][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(1),
      I3 => \regfile[10][7]_i_3_n_0\,
      I4 => \^fsel\(4),
      I5 => \^fsel\(0),
      O => \regfile[10][7]_i_2_n_0\
    );
\regfile[10][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fsel\(2),
      I1 => \^fsel\(3),
      O => \regfile[10][7]_i_3_n_0\
    );
\regfile[11][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[11][7]_i_2_n_0\,
      O => \regfile_reg[11][7]\(0)
    );
\regfile[11][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(4),
      I3 => \regfile[31][7]_i_5_n_0\,
      I4 => \^fsel\(2),
      I5 => \^fsel\(3),
      O => \regfile[11][7]_i_2_n_0\
    );
\regfile[12][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[12][7]_i_2_n_0\,
      O => \regfile_reg[12][7]\(0)
    );
\regfile[12][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(2),
      I3 => \regfile[12][7]_i_3_n_0\,
      I4 => \^fsel\(4),
      I5 => \^fsel\(1),
      O => \regfile[12][7]_i_2_n_0\
    );
\regfile[12][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fsel\(0),
      I1 => \^fsel\(3),
      O => \regfile[12][7]_i_3_n_0\
    );
\regfile[13][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[13][7]_i_2_n_0\,
      O => \regfile_reg[13][7]\(0)
    );
\regfile[13][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(4),
      I3 => \regfile[13][7]_i_3_n_0\,
      I4 => \^fsel\(1),
      I5 => \^fsel\(3),
      O => \regfile[13][7]_i_2_n_0\
    );
\regfile[13][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^fsel\(2),
      I1 => \^fsel\(0),
      O => \regfile[13][7]_i_3_n_0\
    );
\regfile[14][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[14][7]_i_2_n_0\,
      O => \regfile_reg[14][7]\(0)
    );
\regfile[14][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(4),
      I3 => \regfile[14][7]_i_3_n_0\,
      I4 => \^fsel\(0),
      I5 => \^fsel\(3),
      O => \regfile[14][7]_i_2_n_0\
    );
\regfile[14][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^fsel\(1),
      I1 => \^fsel\(2),
      O => \regfile[14][7]_i_3_n_0\
    );
\regfile[15][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[15][7]_i_2_n_0\,
      O => \regfile_reg[15][7]\(0)
    );
\regfile[15][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(4),
      I3 => \^fsel\(2),
      I4 => \^fsel\(3),
      I5 => \regfile[31][7]_i_5_n_0\,
      O => \regfile[15][7]_i_2_n_0\
    );
\regfile[16][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[16][7]_i_2_n_0\,
      O => \regfile_reg[16][7]\(0)
    );
\regfile[16][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(4),
      I3 => \regfile[16][7]_i_3_n_0\,
      I4 => \^fsel\(0),
      I5 => \^fsel\(3),
      O => \regfile[16][7]_i_2_n_0\
    );
\regfile[16][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^fsel\(2),
      I1 => \^fsel\(1),
      O => \regfile[16][7]_i_3_n_0\
    );
\regfile[17][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[17][7]_i_2_n_0\,
      O => \regfile_reg[17][7]\(0)
    );
\regfile[17][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(0),
      I3 => \regfile[24][7]_i_3_n_0\,
      I4 => \^fsel\(1),
      I5 => \^fsel\(3),
      O => \regfile[17][7]_i_2_n_0\
    );
\regfile[18][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[18][7]_i_2_n_0\,
      O => \regfile_reg[18][7]\(0)
    );
\regfile[18][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(1),
      I3 => \regfile[24][7]_i_3_n_0\,
      I4 => \^fsel\(0),
      I5 => \^fsel\(3),
      O => \regfile[18][7]_i_2_n_0\
    );
\regfile[19][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[19][7]_i_2_n_0\,
      O => \regfile_reg[19][7]\(0)
    );
\regfile[19][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(2),
      I3 => \regfile[31][7]_i_5_n_0\,
      I4 => \^fsel\(3),
      I5 => \^fsel\(4),
      O => \regfile[19][7]_i_2_n_0\
    );
\regfile[20][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[20][7]_i_2_n_0\,
      O => \regfile_reg[20][7]\(0)
    );
\regfile[20][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(2),
      I3 => \regfile[26][7]_i_3_n_0\,
      I4 => \^fsel\(1),
      I5 => \^fsel\(3),
      O => \regfile[20][7]_i_2_n_0\
    );
\regfile[21][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[21][7]_i_2_n_0\,
      O => \regfile_reg[21][7]\(0)
    );
\regfile[21][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(1),
      I3 => \^fsel\(2),
      I4 => \^fsel\(0),
      I5 => \regfile[22][7]_i_3_n_0\,
      O => \regfile[21][7]_i_2_n_0\
    );
\regfile[22][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[22][7]_i_2_n_0\,
      O => \regfile_reg[22][7]\(0)
    );
\regfile[22][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(0),
      I3 => \^fsel\(1),
      I4 => \^fsel\(2),
      I5 => \regfile[22][7]_i_3_n_0\,
      O => \regfile[22][7]_i_2_n_0\
    );
\regfile[22][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fsel\(3),
      I1 => \^fsel\(4),
      O => \regfile[22][7]_i_3_n_0\
    );
\regfile[23][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[23][7]_i_2_n_0\,
      O => \regfile_reg[23][7]\(0)
    );
\regfile[23][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(3),
      I3 => \regfile[31][7]_i_5_n_0\,
      I4 => \^fsel\(4),
      I5 => \^fsel\(2),
      O => \regfile[23][7]_i_2_n_0\
    );
\regfile[24][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[24][7]_i_2_n_0\,
      O => \regfile_reg[24][7]\(0)
    );
\regfile[24][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(3),
      I3 => \regfile[24][7]_i_3_n_0\,
      I4 => \^fsel\(1),
      I5 => \^fsel\(0),
      O => \regfile[24][7]_i_2_n_0\
    );
\regfile[24][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fsel\(2),
      I1 => \^fsel\(4),
      O => \regfile[24][7]_i_3_n_0\
    );
\regfile[25][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[25][7]_i_2_n_0\,
      O => \regfile_reg[25][7]\(0)
    );
\regfile[25][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(2),
      I3 => \regfile[25][7]_i_3_n_0\,
      I4 => \^fsel\(1),
      I5 => \^fsel\(4),
      O => \regfile[25][7]_i_2_n_0\
    );
\regfile[25][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^fsel\(3),
      I1 => \^fsel\(0),
      O => \regfile[25][7]_i_3_n_0\
    );
\regfile[26][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[26][7]_i_2_n_0\,
      O => \regfile_reg[26][7]\(0)
    );
\regfile[26][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(2),
      I3 => \^fsel\(1),
      I4 => \^fsel\(3),
      I5 => \regfile[26][7]_i_3_n_0\,
      O => \regfile[26][7]_i_2_n_0\
    );
\regfile[26][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fsel\(0),
      I1 => \^fsel\(4),
      O => \regfile[26][7]_i_3_n_0\
    );
\regfile[27][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[27][7]_i_2_n_0\,
      O => \regfile_reg[27][7]\(0)
    );
\regfile[27][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(2),
      I3 => \regfile[31][7]_i_5_n_0\,
      I4 => \^fsel\(4),
      I5 => \^fsel\(3),
      O => \regfile[27][7]_i_2_n_0\
    );
\regfile[28][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[28][7]_i_2_n_0\,
      O => \regfile_reg[28][7]\(0)
    );
\regfile[28][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(1),
      I3 => \regfile[28][7]_i_3_n_0\,
      I4 => \^fsel\(0),
      I5 => \^fsel\(4),
      O => \regfile[28][7]_i_2_n_0\
    );
\regfile[28][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsel\(2),
      I1 => \^fsel\(3),
      O => \regfile[28][7]_i_3_n_0\
    );
\regfile[29][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[29][7]_i_2_n_0\,
      O => \regfile_reg[29][7]\(0)
    );
\regfile[29][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(1),
      I3 => \^fsel\(3),
      I4 => \^fsel\(0),
      I5 => \regfile[30][7]_i_3_n_0\,
      O => \regfile[29][7]_i_2_n_0\
    );
\regfile[30][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[30][7]_i_2_n_0\,
      O => \regfile_reg[30][7]\(0)
    );
\regfile[30][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(0),
      I3 => \^fsel\(1),
      I4 => \^fsel\(3),
      I5 => \regfile[30][7]_i_3_n_0\,
      O => \regfile[30][7]_i_2_n_0\
    );
\regfile[30][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^fsel\(4),
      I1 => \^fsel\(2),
      O => \regfile[30][7]_i_3_n_0\
    );
\regfile[31][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[31][7]_i_2_n_0\,
      O => \regfile_reg[31][7]\(0)
    );
\regfile[31][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(4),
      I3 => \^fsel\(2),
      I4 => \^fsel\(3),
      I5 => \regfile[31][7]_i_5_n_0\,
      O => \regfile[31][7]_i_2_n_0\
    );
\regfile[31][7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^k\(3),
      I1 => \^k\(4),
      I2 => \^k\(2),
      I3 => \^k\(1),
      O => \A2/rtccount1__7\
    );
\regfile[31][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFD1"
    )
        port map (
      I0 => \^k\(2),
      I1 => \^k\(0),
      I2 => \^k\(1),
      I3 => \^k\(3),
      I4 => \^k\(4),
      O => \regfile[31][7]_i_4_n_0\
    );
\regfile[31][7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^fsel\(1),
      I1 => \^fsel\(0),
      O => \regfile[31][7]_i_5_n_0\
    );
\regfile[7][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[7][7]_i_2_n_0\,
      O => \regfile_reg[7][7]\(0)
    );
\regfile[7][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(4),
      I3 => \regfile[31][7]_i_5_n_0\,
      I4 => \^fsel\(3),
      I5 => \^fsel\(2),
      O => \regfile[7][7]_i_2_n_0\
    );
\regfile[8][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[8][7]_i_2_n_0\,
      O => \regfile_reg[8][7]\(0)
    );
\regfile[8][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(3),
      I3 => \regfile[16][7]_i_3_n_0\,
      I4 => \^fsel\(4),
      I5 => \^fsel\(0),
      O => \regfile[8][7]_i_2_n_0\
    );
\regfile[9][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2000000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^retlw\,
      I2 => \A2/w14_out__1\,
      I3 => bsf,
      I4 => bcf,
      I5 => \regfile[9][7]_i_2_n_0\,
      O => \regfile_reg[9][7]\(0)
    );
\regfile[9][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \A2/rtccount1__7\,
      I1 => \regfile[31][7]_i_4_n_0\,
      I2 => \^fsel\(0),
      I3 => \regfile[10][7]_i_3_n_0\,
      I4 => \^fsel\(4),
      I5 => \^fsel\(1),
      O => \regfile[9][7]_i_2_n_0\
    );
retlw_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => romdata(8),
      I1 => romdata(10),
      I2 => romdata(11),
      I3 => romdata(9),
      O => retlw_i_1_n_0
    );
retlw_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => retlw_i_1_n_0,
      Q => \^retlw\,
      R => '0'
    );
rlf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(8),
      I3 => romdata(6),
      I4 => romdata(7),
      I5 => romdata(9),
      O => rlf_i_1_n_0
    );
rlf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rlf_i_1_n_0,
      Q => \^rlf\,
      R => '0'
    );
rrf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(7),
      I3 => romdata(6),
      I4 => romdata(9),
      I5 => romdata(8),
      O => rrf_i_1_n_0
    );
rrf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rrf_i_1_n_0,
      Q => \^rrf\,
      R => '0'
    );
\rtccount[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080888000800080"
    )
        port map (
      I0 => mclr,
      I1 => \rtccount[7]_i_3_n_0\,
      I2 => \A2/w1__0\,
      I3 => \A2/w14_out__1\,
      I4 => \^retlw\,
      I5 => \^d_1\,
      O => \rtccount_reg[7]\(0)
    );
\rtccount[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^k\(3),
      I1 => \^k\(4),
      I2 => \^k\(1),
      I3 => \^k\(2),
      I4 => \^k\(0),
      O => \rtccount[7]_i_3_n_0\
    );
\rtccount[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bcf,
      I1 => bsf,
      O => \A2/w1__0\
    );
\rtccount[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^incfsz\,
      I1 => \^decfsz\,
      I2 => \A2/w4__3\,
      I3 => \^retlw\,
      O => \A2/w14_out__1\
    );
skip_C_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => incfsz_reg_0,
      I1 => \^incfsz\,
      I2 => \^btfss\,
      I3 => btfsc,
      I4 => \^decfsz\,
      I5 => skip,
      O => skip_reg_C
    );
\stack1[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10100010"
    )
        port map (
      I0 => \A2/pc11_out\,
      I1 => \A2/pc12_out\,
      I2 => \^call\,
      I3 => \stacklevel_reg[0]_0\,
      I4 => \stacklevel_reg[1]_0\,
      O => E(0)
    );
\stack2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11100000"
    )
        port map (
      I0 => \A2/pc11_out\,
      I1 => \A2/pc12_out\,
      I2 => \stacklevel_reg[1]_0\,
      I3 => \stacklevel_reg[0]_0\,
      I4 => \^call\,
      O => \stack2_reg[9]\(0)
    );
\stacklevel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0B1A4B0B4"
    )
        port map (
      I0 => \A2/pc11_out\,
      I1 => \^call\,
      I2 => \stacklevel_reg[0]_0\,
      I3 => \stacklevel_reg[1]_0\,
      I4 => \^retlw\,
      I5 => \A2/pc12_out\,
      O => \stacklevel_reg[0]\
    );
\stacklevel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00BA40BB40"
    )
        port map (
      I0 => \A2/pc11_out\,
      I1 => \^call\,
      I2 => \stacklevel_reg[0]_0\,
      I3 => \stacklevel_reg[1]_0\,
      I4 => \^retlw\,
      I5 => \A2/pc12_out\,
      O => \stacklevel_reg[1]\
    );
\status[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAACAFAAAAACA0"
    )
        port map (
      I0 => c,
      I1 => D(0),
      I2 => \A2/status11_out__0\,
      I3 => \^status0\,
      I4 => \status[0]_i_3_n_0\,
      I5 => status_c,
      O => \status_reg[0]\
    );
\status[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rlf\,
      I1 => \^rrf\,
      O => \A2/status11_out__0\
    );
\status[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^addwf\,
      I1 => \^subwf\,
      O => \status[0]_i_3_n_0\
    );
\status[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAACAAAFAAACAAA0"
    )
        port map (
      I0 => dc,
      I1 => D(1),
      I2 => \^subwf\,
      I3 => \^addwf\,
      I4 => \^status0\,
      I5 => \status_reg[1]_0\,
      O => \status_reg[1]\
    );
\status[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \status[2]_i_3_n_0\,
      I1 => \^xorlw\,
      I2 => \^iorlw\,
      I3 => \^andlw\,
      I4 => \^addwf\,
      I5 => \^subwf\,
      O => \status10_out__1\
    );
\status[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => clrw,
      I1 => \status[2]_i_4_n_0\,
      I2 => clrf,
      I3 => \^iorwf\,
      I4 => \^incf\,
      I5 => \^movf\,
      O => \status[2]_i_3_n_0\
    );
\status[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^andwf\,
      I1 => \^comf\,
      I2 => \^decf\,
      I3 => \^xorwf\,
      O => \status[2]_i_4_n_0\
    );
\status[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \A2/w1__0\,
      I1 => \^k\(3),
      I2 => \^k\(4),
      I3 => \^k\(1),
      I4 => \^k\(2),
      I5 => \^k\(0),
      O => \^status0\
    );
subwf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(9),
      I3 => romdata(8),
      I4 => romdata(6),
      I5 => romdata(7),
      O => subwf_i_1_n_0
    );
subwf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => subwf_i_1_n_0,
      Q => \^subwf\,
      R => '0'
    );
swapf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(7),
      I3 => romdata(8),
      I4 => romdata(6),
      I5 => romdata(9),
      O => swapf_i_1_n_0
    );
swapf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => swapf_i_1_n_0,
      Q => \^swapf\,
      R => '0'
    );
tris_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004F440000"
    )
        port map (
      I0 => tris_i_2_n_0,
      I1 => romdata(0),
      I2 => tris_i_3_n_0,
      I3 => romdata(1),
      I4 => romdata(2),
      I5 => tris_i_4_n_0,
      O => tris_i_1_n_0
    );
tris_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => option_i_2_n_0,
      I1 => romdata(9),
      I2 => romdata(11),
      I3 => romdata(3),
      I4 => romdata(1),
      O => tris_i_2_n_0
    );
tris_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => option_i_2_n_0,
      I1 => romdata(9),
      I2 => romdata(11),
      I3 => romdata(3),
      I4 => romdata(0),
      O => tris_i_3_n_0
    );
tris_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(8),
      O => tris_i_4_n_0
    );
tris_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tris_i_1_n_0,
      Q => \^tris\,
      R => '0'
    );
\trisa[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^tris\,
      I1 => \^k\(2),
      I2 => \^k\(0),
      I3 => \^k\(1),
      O => \trisa_reg[3]\(0)
    );
\trisb[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^tris\,
      I1 => \^k\(1),
      I2 => \^k\(2),
      I3 => \^k\(0),
      O => \trisb_reg[7]\(0)
    );
\w[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0B0B0BFB0"
    )
        port map (
      I0 => \^retlw\,
      I1 => \^d_1\,
      I2 => \A2/w14_out__1\,
      I3 => \A2/p_2_in\,
      I4 => bsf,
      I5 => bcf,
      O => \w_reg[7]\(0)
    );
\w[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^andlw\,
      I1 => \^iorlw\,
      I2 => \^xorlw\,
      I3 => \^movlw\,
      O => \A2/p_2_in\
    );
xorlw_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(8),
      I3 => romdata(9),
      O => xorlw_i_1_n_0
    );
xorlw_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => xorlw_i_1_n_0,
      Q => \^xorlw\,
      R => '0'
    );
xorwf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(8),
      I3 => romdata(7),
      I4 => romdata(9),
      I5 => romdata(6),
      O => xorwf_i_1_n_0
    );
xorwf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => xorwf_i_1_n_0,
      Q => \^xorwf\,
      R => '0'
    );
\yi[0]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^yi_reg[0]_p_1\,
      I1 => \^yi_reg[0]_p\,
      I2 => \yi_reg[0]_C_2\,
      O => \yi_reg[0]_C_0\
    );
\yi[0]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(0),
      I1 => \^retlw\,
      I2 => \yi[0]_P_i_2_n_0\,
      I3 => bsf,
      I4 => \yi[0]_P_i_3_n_0\,
      O => \^yi_reg[0]_p_1\
    );
\yi[0]_P_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0F1"
    )
        port map (
      I0 => \^k\(6),
      I1 => \^k\(5),
      I2 => Q(0),
      I3 => \^d_1\,
      O => \yi[0]_P_i_2_n_0\
    );
\yi[0]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FFFFFE000000"
    )
        port map (
      I0 => \^k\(6),
      I1 => \^k\(5),
      I2 => \^d_1\,
      I3 => Q(0),
      I4 => bcf,
      I5 => \yi_reg[0]_LDC_i_3_n_0\,
      O => \yi[0]_P_i_3_n_0\
    );
\yi[1]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^yi_reg[1]_p_0\,
      I1 => \^yi_reg[0]_p\,
      I2 => \yi_reg[1]_C_2\,
      O => \yi_reg[1]_C_0\
    );
\yi[1]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(1),
      I1 => \^retlw\,
      I2 => \yi[1]_P_i_2_n_0\,
      I3 => bsf,
      I4 => \yi[1]_P_i_3_n_0\,
      O => \^yi_reg[1]_p_0\
    );
\yi[1]_P_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => \^k\(6),
      I1 => \^k\(5),
      I2 => \^d_1\,
      I3 => Q(1),
      O => \yi[1]_P_i_2_n_0\
    );
\yi[1]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0F0FFFFE0F00000"
    )
        port map (
      I0 => \^k\(6),
      I1 => \^k\(5),
      I2 => Q(1),
      I3 => \^d_1\,
      I4 => bcf,
      I5 => \yi_reg[1]_LDC_i_3_n_0\,
      O => \yi[1]_P_i_3_n_0\
    );
\yi[2]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^yi_reg[2]_p_0\,
      I1 => \^yi_reg[0]_p\,
      I2 => \yi_reg[2]_C_1\,
      O => \yi_reg[2]_C_0\
    );
\yi[2]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(2),
      I1 => \^retlw\,
      I2 => \yi[2]_P_i_2_n_0\,
      I3 => bsf,
      I4 => \yi[2]_P_i_3_n_0\,
      O => \^yi_reg[2]_p_0\
    );
\yi[2]_P_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => \^k\(6),
      I1 => \^d_1\,
      I2 => \^k\(5),
      I3 => Q(2),
      O => \yi[2]_P_i_2_n_0\
    );
\yi[2]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF00FFFFEF000000"
    )
        port map (
      I0 => \^k\(6),
      I1 => \^d_1\,
      I2 => \^k\(5),
      I3 => Q(2),
      I4 => bcf,
      I5 => \yi_reg[2]_LDC_i_3_n_0\,
      O => \yi[2]_P_i_3_n_0\
    );
\yi[3]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^yi_reg[3]_p_0\,
      I1 => \^yi_reg[0]_p\,
      I2 => \yi_reg[3]_C_1\,
      O => \yi_reg[3]_C_0\
    );
\yi[3]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(3),
      I1 => \^retlw\,
      I2 => \yi[3]_P_i_2_n_0\,
      I3 => bsf,
      I4 => \yi[3]_P_i_3_n_0\,
      O => \^yi_reg[3]_p_0\
    );
\yi[3]_P_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => \^k\(6),
      I1 => \^d_1\,
      I2 => \^k\(5),
      I3 => Q(3),
      O => \yi[3]_P_i_2_n_0\
    );
\yi[3]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF00FFFFBF000000"
    )
        port map (
      I0 => \^k\(6),
      I1 => \^d_1\,
      I2 => \^k\(5),
      I3 => Q(3),
      I4 => bcf,
      I5 => \yi_reg[3]_LDC_i_3_n_0\,
      O => \yi[3]_P_i_3_n_0\
    );
\yi[4]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^yi_reg[4]_p_0\,
      I1 => \^yi_reg[0]_p\,
      I2 => \yi_reg[4]_C_1\,
      O => \yi_reg[4]_C_0\
    );
\yi[4]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(4),
      I1 => \^retlw\,
      I2 => \yi[4]_P_i_2_n_0\,
      I3 => bsf,
      I4 => \yi[4]_P_i_3_n_0\,
      O => \^yi_reg[4]_p_0\
    );
\yi[4]_P_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => \^k\(5),
      I1 => \^d_1\,
      I2 => \^k\(6),
      I3 => Q(4),
      O => \yi[4]_P_i_2_n_0\
    );
\yi[4]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF00FFFFEF000000"
    )
        port map (
      I0 => \^k\(5),
      I1 => \^d_1\,
      I2 => \^k\(6),
      I3 => Q(4),
      I4 => bcf,
      I5 => \yi_reg[4]_LDC_i_3_n_0\,
      O => \yi[4]_P_i_3_n_0\
    );
\yi[5]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^yi_reg[5]_p_0\,
      I1 => \^yi_reg[0]_p\,
      I2 => \yi_reg[5]_C_1\,
      O => \yi_reg[5]_C_0\
    );
\yi[5]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(5),
      I1 => \^retlw\,
      I2 => \yi[5]_P_i_2_n_0\,
      I3 => bsf,
      I4 => \yi[5]_P_i_3_n_0\,
      O => \^yi_reg[5]_p_0\
    );
\yi[5]_P_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => \^k\(5),
      I1 => \^d_1\,
      I2 => \^k\(6),
      I3 => Q(5),
      O => \yi[5]_P_i_2_n_0\
    );
\yi[5]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF00FFFFBF000000"
    )
        port map (
      I0 => \^k\(5),
      I1 => \^d_1\,
      I2 => \^k\(6),
      I3 => Q(5),
      I4 => bcf,
      I5 => \yi_reg[5]_LDC_i_3_n_0\,
      O => \yi[5]_P_i_3_n_0\
    );
\yi[6]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Q(6),
      I1 => \^retlw\,
      I2 => \yi[6]_P_i_2_n_0\,
      I3 => \^yi_reg[0]_p\,
      I4 => \yi_reg[6]_C_1\,
      O => \yi_reg[6]_C_0\
    );
\yi[6]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => \^retlw\,
      I2 => \yi[6]_P_i_2_n_0\,
      O => \yi_reg[6]_P_0\
    );
\yi[6]_P_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \yi[6]_P_i_3_n_0\,
      I1 => bsf,
      I2 => \yi[6]_P_i_4_n_0\,
      I3 => bcf,
      I4 => \yi_reg[6]_LDC_i_3_n_0\,
      O => \yi[6]_P_i_2_n_0\
    );
\yi[6]_P_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^k\(5),
      I2 => \^k\(6),
      I3 => Q(6),
      O => \yi[6]_P_i_3_n_0\
    );
\yi[6]_P_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^k\(5),
      I2 => \^k\(6),
      I3 => Q(6),
      O => \yi[6]_P_i_4_n_0\
    );
\yi[7]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^yi_reg[7]_p_0\,
      I1 => \^yi_reg[0]_p\,
      I2 => \yi_reg[7]_C_1\,
      O => \yi_reg[7]_C_0\
    );
\yi[7]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \yi[7]_P_i_3_n_0\,
      I1 => \^retlw\,
      I2 => bsf,
      I3 => movwf,
      I4 => \yi[7]_P_i_4_n_0\,
      I5 => \yi[7]_P_i_5_n_0\,
      O => \^yi_reg[0]_p\
    );
\yi[7]_P_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^decf\,
      I1 => \^subwf\,
      O => \yi[7]_P_i_10_n_0\
    );
\yi[7]_P_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^comf\,
      I1 => \^movf\,
      O => \yi[7]_P_i_11_n_0\
    );
\yi[7]_P_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(7),
      I1 => \^retlw\,
      I2 => \yi[7]_P_i_6_n_0\,
      I3 => bsf,
      I4 => \yi[7]_P_i_7_n_0\,
      O => \^yi_reg[7]_p_0\
    );
\yi[7]_P_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^andlw\,
      I1 => \^iorlw\,
      I2 => bcf,
      I3 => \^xorlw\,
      I4 => \yi[7]_P_i_8_n_0\,
      O => \yi[7]_P_i_3_n_0\
    );
\yi[7]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^xorwf\,
      I1 => \^andwf\,
      I2 => \^iorwf\,
      I3 => \^addwf\,
      I4 => \^yi_reg[0]_p_2\,
      I5 => \yi[7]_P_i_10_n_0\,
      O => \yi[7]_P_i_4_n_0\
    );
\yi[7]_P_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \A2/status11_out__0\,
      I1 => \^incfsz\,
      I2 => \^swapf\,
      I3 => \yi[7]_P_i_11_n_0\,
      I4 => \^decfsz\,
      I5 => \^incf\,
      O => \yi[7]_P_i_5_n_0\
    );
\yi[7]_P_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^k\(5),
      I2 => \^k\(6),
      I3 => Q(7),
      O => \yi[7]_P_i_6_n_0\
    );
\yi[7]_P_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00FFFF7F000000"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^k\(5),
      I2 => \^k\(6),
      I3 => Q(7),
      I4 => bcf,
      I5 => \yi_reg[7]_LDC_i_3_n_0\,
      O => \yi[7]_P_i_7_n_0\
    );
\yi[7]_P_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^tris\,
      I1 => \^movlw\,
      I2 => \^option\,
      I3 => clrwdt,
      O => \yi[7]_P_i_8_n_0\
    );
\yi[7]_P_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => clrf,
      I1 => clrw,
      O => \^yi_reg[0]_p_2\
    );
\yi_reg[0]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \yi_reg[0]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[0]_P_0\
    );
\yi_reg[0]_LDC_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000004FA"
    )
        port map (
      I0 => \^comf\,
      I1 => \^movf\,
      I2 => \^incf\,
      I3 => Q(0),
      I4 => \^yi_reg[0]_c_1\,
      O => \yi_reg[0]_LDC_i_12_n_0\
    );
\yi_reg[0]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \yi_reg[0]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[0]_C\
    );
\yi_reg[0]_LDC_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A80808A808A80"
    )
        port map (
      I0 => mclr,
      I1 => andlw_reg_7,
      I2 => \yi_reg[7]_LDC_i_5_n_0\,
      I3 => \yi_reg[0]_LDC_i_5_n_0\,
      I4 => \yi_reg[0]_LDC_i_6_n_0\,
      I5 => \yi_reg[7]_LDC_i_8_n_0\,
      O => \yi_reg[0]_LDC_i_3_n_0\
    );
\yi_reg[0]_LDC_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => \b_reg[0]_0\,
      I1 => \^iorwf\,
      I2 => \^xorwf\,
      I3 => \^addwf\,
      I4 => \yi_reg[0]_LDC_i_9_n_0\,
      I5 => \b_reg[0]_1\,
      O => \yi_reg[0]_LDC_i_5_n_0\
    );
\yi_reg[0]_LDC_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => \status_reg[0]_0\,
      I1 => \^option\,
      I2 => \^swapf\,
      I3 => \^incfsz\,
      I4 => \yi_reg[0]_LDC_i_12_n_0\,
      I5 => \w_reg[0]\,
      O => \yi_reg[0]_LDC_i_6_n_0\
    );
\yi_reg[0]_LDC_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => clrf,
      I1 => \w_reg[7]_0\(0),
      I2 => clrw,
      I3 => \^andwf\,
      I4 => \^subwf\,
      I5 => \^decf\,
      O => \yi_reg[0]_LDC_i_9_n_0\
    );
\yi_reg[1]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \yi_reg[1]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[1]_P\
    );
\yi_reg[1]_LDC_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004F4FA0A"
    )
        port map (
      I0 => \^comf\,
      I1 => \^movf\,
      I2 => \^incf\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => \^yi_reg[0]_c_1\,
      O => \yi_reg[1]_LDC_i_12_n_0\
    );
\yi_reg[1]_LDC_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0F0008080808"
    )
        port map (
      I0 => \^swapf\,
      I1 => Q(5),
      I2 => \^option\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^incfsz\,
      O => \yi_reg[1]_LDC_i_13_n_0\
    );
\yi_reg[1]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \yi_reg[1]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[1]_C\
    );
\yi_reg[1]_LDC_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A80808A808A80"
    )
        port map (
      I0 => mclr,
      I1 => andlw_reg_6,
      I2 => \yi_reg[7]_LDC_i_5_n_0\,
      I3 => \yi_reg[1]_LDC_i_5_n_0\,
      I4 => \yi_reg[1]_LDC_i_6_n_0\,
      I5 => \yi_reg[7]_LDC_i_8_n_0\,
      O => \yi_reg[1]_LDC_i_3_n_0\
    );
\yi_reg[1]_LDC_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => andwf_reg_5,
      I1 => \^iorwf\,
      I2 => \^xorwf\,
      I3 => \^addwf\,
      I4 => \yi_reg[1]_LDC_i_9_n_0\,
      I5 => \b_reg[1]_0\,
      O => \yi_reg[1]_LDC_i_5_n_0\
    );
\yi_reg[1]_LDC_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => \b_reg[0]_2\,
      I1 => \yi_reg[1]_LDC_i_12_n_0\,
      I2 => \^yi_reg[1]_c_1\,
      I3 => \yi_reg[1]_LDC_i_13_n_0\,
      I4 => \^option\,
      I5 => \w_reg[7]_0\(1),
      O => \yi_reg[1]_LDC_i_6_n_0\
    );
\yi_reg[1]_LDC_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => clrf,
      I1 => \w_reg[7]_0\(1),
      I2 => clrw,
      I3 => \^andwf\,
      I4 => \^subwf\,
      I5 => \^decf\,
      O => \yi_reg[1]_LDC_i_9_n_0\
    );
\yi_reg[2]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \yi_reg[2]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[2]_P\
    );
\yi_reg[2]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \yi_reg[2]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[2]_C\
    );
\yi_reg[2]_LDC_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A80808A808A80"
    )
        port map (
      I0 => mclr,
      I1 => andlw_reg_5,
      I2 => \yi_reg[7]_LDC_i_5_n_0\,
      I3 => \yi_reg[2]_LDC_i_5_n_0\,
      I4 => \b_reg[1]\,
      I5 => \yi_reg[7]_LDC_i_8_n_0\,
      O => \yi_reg[2]_LDC_i_3_n_0\
    );
\yi_reg[2]_LDC_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => andwf_reg_4,
      I1 => \^iorwf\,
      I2 => \^xorwf\,
      I3 => \^addwf\,
      I4 => \yi_reg[2]_LDC_i_9_n_0\,
      I5 => \b_reg[2]\,
      O => \yi_reg[2]_LDC_i_5_n_0\
    );
\yi_reg[2]_LDC_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => clrf,
      I1 => \w_reg[7]_0\(2),
      I2 => clrw,
      I3 => \^andwf\,
      I4 => \^subwf\,
      I5 => \^decf\,
      O => \yi_reg[2]_LDC_i_9_n_0\
    );
\yi_reg[3]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \yi_reg[3]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[3]_P\
    );
\yi_reg[3]_LDC_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4FA040A"
    )
        port map (
      I0 => \^comf\,
      I1 => \^movf\,
      I2 => \^incf\,
      I3 => Q(3),
      I4 => data5(0),
      I5 => \^yi_reg[0]_c_1\,
      O => \yi_reg[3]_LDC_i_12_n_0\
    );
\yi_reg[3]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \yi_reg[3]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[3]_C\
    );
\yi_reg[3]_LDC_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A80808A808A80"
    )
        port map (
      I0 => mclr,
      I1 => andlw_reg_4,
      I2 => \yi_reg[7]_LDC_i_5_n_0\,
      I3 => \yi_reg[3]_LDC_i_5_n_0\,
      I4 => \yi_reg[3]_LDC_i_6_n_0\,
      I5 => \yi_reg[7]_LDC_i_8_n_0\,
      O => \yi_reg[3]_LDC_i_3_n_0\
    );
\yi_reg[3]_LDC_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => andwf_reg_3,
      I1 => \^iorwf\,
      I2 => \^xorwf\,
      I3 => \^addwf\,
      I4 => \yi_reg[3]_LDC_i_9_n_0\,
      I5 => \b_reg[3]\,
      O => \yi_reg[3]_LDC_i_5_n_0\
    );
\yi_reg[3]_LDC_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => \b_reg[2]_0\,
      I1 => \^option\,
      I2 => \^swapf\,
      I3 => \^incfsz\,
      I4 => \yi_reg[3]_LDC_i_12_n_0\,
      I5 => \w_reg[3]\,
      O => \yi_reg[3]_LDC_i_6_n_0\
    );
\yi_reg[3]_LDC_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => clrf,
      I1 => \w_reg[7]_0\(3),
      I2 => clrw,
      I3 => \^andwf\,
      I4 => \^subwf\,
      I5 => \^decf\,
      O => \yi_reg[3]_LDC_i_9_n_0\
    );
\yi_reg[4]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \yi_reg[4]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[4]_P\
    );
\yi_reg[4]_LDC_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4FA040A"
    )
        port map (
      I0 => \^comf\,
      I1 => \^movf\,
      I2 => \^incf\,
      I3 => Q(4),
      I4 => data5(1),
      I5 => \^yi_reg[0]_c_1\,
      O => \yi_reg[4]_LDC_i_12_n_0\
    );
\yi_reg[4]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \yi_reg[4]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[4]_C\
    );
\yi_reg[4]_LDC_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A80808A808A80"
    )
        port map (
      I0 => mclr,
      I1 => andlw_reg_3,
      I2 => \yi_reg[7]_LDC_i_5_n_0\,
      I3 => \yi_reg[4]_LDC_i_5_n_0\,
      I4 => \yi_reg[4]_LDC_i_6_n_0\,
      I5 => \yi_reg[7]_LDC_i_8_n_0\,
      O => \yi_reg[4]_LDC_i_3_n_0\
    );
\yi_reg[4]_LDC_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => andwf_reg_2,
      I1 => \^iorwf\,
      I2 => \^xorwf\,
      I3 => \^addwf\,
      I4 => \yi_reg[4]_LDC_i_9_n_0\,
      I5 => \b_reg[4]\,
      O => \yi_reg[4]_LDC_i_5_n_0\
    );
\yi_reg[4]_LDC_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => \b_reg[3]_0\,
      I1 => \^option\,
      I2 => \^swapf\,
      I3 => \^incfsz\,
      I4 => \yi_reg[4]_LDC_i_12_n_0\,
      I5 => \w_reg[4]\,
      O => \yi_reg[4]_LDC_i_6_n_0\
    );
\yi_reg[4]_LDC_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => clrf,
      I1 => \w_reg[7]_0\(4),
      I2 => clrw,
      I3 => \^andwf\,
      I4 => \^subwf\,
      I5 => \^decf\,
      O => \yi_reg[4]_LDC_i_9_n_0\
    );
\yi_reg[5]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \yi_reg[5]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[5]_P\
    );
\yi_reg[5]_LDC_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4FA040A"
    )
        port map (
      I0 => \^comf\,
      I1 => \^movf\,
      I2 => \^incf\,
      I3 => Q(5),
      I4 => data5(2),
      I5 => \^yi_reg[0]_c_1\,
      O => \yi_reg[5]_LDC_i_12_n_0\
    );
\yi_reg[5]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \yi_reg[5]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[5]_C\
    );
\yi_reg[5]_LDC_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A80808A808A80"
    )
        port map (
      I0 => mclr,
      I1 => andlw_reg_2,
      I2 => \yi_reg[7]_LDC_i_5_n_0\,
      I3 => \yi_reg[5]_LDC_i_5_n_0\,
      I4 => \yi_reg[5]_LDC_i_6_n_0\,
      I5 => \yi_reg[7]_LDC_i_8_n_0\,
      O => \yi_reg[5]_LDC_i_3_n_0\
    );
\yi_reg[5]_LDC_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => andwf_reg_1,
      I1 => \^iorwf\,
      I2 => \^xorwf\,
      I3 => \^addwf\,
      I4 => \yi_reg[5]_LDC_i_9_n_0\,
      I5 => \b_reg[5]\,
      O => \yi_reg[5]_LDC_i_5_n_0\
    );
\yi_reg[5]_LDC_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => \b_reg[4]_0\,
      I1 => \^option\,
      I2 => \^swapf\,
      I3 => \^incfsz\,
      I4 => \yi_reg[5]_LDC_i_12_n_0\,
      I5 => \w_reg[5]\,
      O => \yi_reg[5]_LDC_i_6_n_0\
    );
\yi_reg[5]_LDC_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => clrf,
      I1 => \w_reg[7]_0\(5),
      I2 => clrw,
      I3 => \^andwf\,
      I4 => \^subwf\,
      I5 => \^decf\,
      O => \yi_reg[5]_LDC_i_9_n_0\
    );
\yi_reg[6]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \yi_reg[6]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[6]_P\
    );
\yi_reg[6]_LDC_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333300022222222"
    )
        port map (
      I0 => \yi_reg[6]_LDC_i_15_n_0\,
      I1 => \^yi_reg[1]_c_1\,
      I2 => Q(5),
      I3 => \^rlf\,
      I4 => \b_reg[6]_1\,
      I5 => \^yi_reg[0]_c_1\,
      O => \yi_reg[6]_LDC_i_10_n_0\
    );
\yi_reg[6]_LDC_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^decf\,
      I1 => \^subwf\,
      I2 => \^andwf\,
      O => \yi_reg[6]_LDC_i_11_n_0\
    );
\yi_reg[6]_LDC_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^addwf\,
      I1 => \^xorwf\,
      I2 => \^iorwf\,
      O => \yi_reg[6]_LDC_i_12_n_0\
    );
\yi_reg[6]_LDC_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A3A3ACA0"
    )
        port map (
      I0 => data5(3),
      I1 => Q(6),
      I2 => \^incf\,
      I3 => \^movf\,
      I4 => \^comf\,
      O => \yi_reg[6]_LDC_i_15_n_0\
    );
\yi_reg[6]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \yi_reg[6]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[6]_C\
    );
\yi_reg[6]_LDC_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => mclr,
      I1 => andlw_reg_1,
      I2 => \yi_reg[7]_LDC_i_5_n_0\,
      I3 => \yi_reg[6]_LDC_i_5_n_0\,
      O => \yi_reg[6]_LDC_i_3_n_0\
    );
\yi_reg[6]_LDC_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F000E0E0E0E"
    )
        port map (
      I0 => \b_reg[6]\,
      I1 => \yi_reg[6]_LDC_i_8_n_0\,
      I2 => \yi_reg[7]_LDC_i_5_n_0\,
      I3 => \w_reg[6]\,
      I4 => \yi_reg[6]_LDC_i_10_n_0\,
      I5 => \yi_reg[7]_LDC_i_8_n_0\,
      O => \yi_reg[6]_LDC_i_5_n_0\
    );
\yi_reg[6]_LDC_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00000004"
    )
        port map (
      I0 => clrf,
      I1 => \w_reg[7]_0\(6),
      I2 => clrw,
      I3 => \yi_reg[6]_LDC_i_11_n_0\,
      I4 => \yi_reg[6]_LDC_i_12_n_0\,
      I5 => andwf_reg_6,
      O => \yi_reg[6]_LDC_i_8_n_0\
    );
\yi_reg[7]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \yi_reg[7]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[7]_P\
    );
\yi_reg[7]_LDC_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => clrf,
      I1 => \w_reg[7]_0\(7),
      I2 => clrw,
      I3 => \^andwf\,
      I4 => \^subwf\,
      I5 => \^decf\,
      O => \yi_reg[7]_LDC_i_11_n_0\
    );
\yi_reg[7]_LDC_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4FA040A"
    )
        port map (
      I0 => \^comf\,
      I1 => \^movf\,
      I2 => \^incf\,
      I3 => Q(7),
      I4 => data5(4),
      I5 => \^yi_reg[0]_c_1\,
      O => \yi_reg[7]_LDC_i_14_n_0\
    );
\yi_reg[7]_LDC_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^rrf\,
      I1 => \^decfsz\,
      I2 => \^rlf\,
      O => \^yi_reg[0]_c_1\
    );
\yi_reg[7]_LDC_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^incfsz\,
      I1 => \^swapf\,
      I2 => \^option\,
      O => \^yi_reg[1]_c_1\
    );
\yi_reg[7]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \yi_reg[7]_LDC_i_3_n_0\,
      I1 => mclr,
      O => \yi_reg[7]_C\
    );
\yi_reg[7]_LDC_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A80808A808A80"
    )
        port map (
      I0 => mclr,
      I1 => andlw_reg_0,
      I2 => \yi_reg[7]_LDC_i_5_n_0\,
      I3 => \yi_reg[7]_LDC_i_6_n_0\,
      I4 => \yi_reg[7]_LDC_i_7_n_0\,
      I5 => \yi_reg[7]_LDC_i_8_n_0\,
      O => \yi_reg[7]_LDC_i_3_n_0\
    );
\yi_reg[7]_LDC_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^movlw\,
      I1 => clrwdt,
      I2 => \^tris\,
      I3 => \^xorlw\,
      I4 => \^iorlw\,
      I5 => \^andlw\,
      O => \yi_reg[7]_LDC_i_5_n_0\
    );
\yi_reg[7]_LDC_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => andwf_reg_0,
      I1 => \^iorwf\,
      I2 => \^xorwf\,
      I3 => \^addwf\,
      I4 => \yi_reg[7]_LDC_i_11_n_0\,
      I5 => \b_reg[7]_0\,
      O => \yi_reg[7]_LDC_i_6_n_0\
    );
\yi_reg[7]_LDC_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => \b_reg[6]_0\,
      I1 => \^option\,
      I2 => \^swapf\,
      I3 => \^incfsz\,
      I4 => \yi_reg[7]_LDC_i_14_n_0\,
      I5 => \w_reg[7]_1\,
      O => \yi_reg[7]_LDC_i_7_n_0\
    );
\yi_reg[7]_LDC_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^yi_reg[0]_c_1\,
      I1 => \^comf\,
      I2 => \^movf\,
      I3 => \^incf\,
      I4 => \^yi_reg[1]_c_1\,
      O => \yi_reg[7]_LDC_i_8_n_0\
    );
z_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^xorlw\,
      I1 => \^iorlw\,
      I2 => \^incf\,
      I3 => clrw,
      I4 => clrf,
      I5 => \^andlw\,
      O => z_i_14_n_0
    );
z_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^andwf\,
      I1 => \^xorwf\,
      I2 => \^subwf\,
      I3 => \^decf\,
      O => z_i_15_n_0
    );
z_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^andlw\,
      I1 => \^iorlw\,
      I2 => \^xorlw\,
      O => z_reg
    );
z_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => z_i_14_n_0,
      I1 => z_i_15_n_0,
      I2 => \^movf\,
      I3 => \^comf\,
      I4 => \^addwf\,
      I5 => \^iorwf\,
      O => z0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_distribute is
  port (
    romaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \regfile_reg[23][7]_0\ : out STD_LOGIC;
    \stack2_reg[9]_0\ : out STD_LOGIC;
    \stacklevel_reg[1]_0\ : out STD_LOGIC;
    \pc_reg[9]_P_0\ : out STD_LOGIC;
    \status_reg[2]_0\ : out STD_LOGIC;
    \status_reg[1]_0\ : out STD_LOGIC;
    status_c : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    c_reg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \pc_reg[9]_P_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pc_reg[7]_P_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \pc_reg[9]_P_2\ : out STD_LOGIC;
    skip_reg_P : out STD_LOGIC;
    skip_reg_C : out STD_LOGIC;
    \b_reg[7]_0\ : out STD_LOGIC;
    \regfile__0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \b_reg[6]_0\ : out STD_LOGIC;
    \b_reg[5]_0\ : out STD_LOGIC;
    \b_reg[4]_0\ : out STD_LOGIC;
    \b_reg[3]_0\ : out STD_LOGIC;
    \b_reg[2]_0\ : out STD_LOGIC;
    \b_reg[1]_0\ : out STD_LOGIC;
    \b_reg[0]_0\ : out STD_LOGIC;
    RA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \fsel_reg[4]\ : out STD_LOGIC;
    \b_reg[7]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \yi_reg[7]_C\ : out STD_LOGIC;
    \yi_reg[7]_C_0\ : out STD_LOGIC;
    \yi_reg[6]_C\ : out STD_LOGIC;
    \yi_reg[6]_C_0\ : out STD_LOGIC;
    \yi_reg[5]_C\ : out STD_LOGIC;
    \yi_reg[5]_C_0\ : out STD_LOGIC;
    \yi_reg[4]_C\ : out STD_LOGIC;
    \yi_reg[4]_C_0\ : out STD_LOGIC;
    \yi_reg[3]_C\ : out STD_LOGIC;
    \yi_reg[3]_C_0\ : out STD_LOGIC;
    \yi_reg[2]_C\ : out STD_LOGIC;
    \yi_reg[2]_C_0\ : out STD_LOGIC;
    \yi_reg[1]_C\ : out STD_LOGIC;
    \yi_reg[1]_C_0\ : out STD_LOGIC;
    \yi_reg[0]_C\ : out STD_LOGIC;
    \yi_reg[0]_C_0\ : out STD_LOGIC;
    dc_reg : out STD_LOGIC;
    skip_reg_C_0 : out STD_LOGIC;
    data2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \pc_reg[9]_P_3\ : out STD_LOGIC;
    \yi_reg[1]_C_1\ : out STD_LOGIC;
    \yi_reg[1]_C_2\ : out STD_LOGIC;
    \yi_reg[7]_C_1\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \yi_reg[0]_C_1\ : out STD_LOGIC;
    \fsel_reg[0]\ : out STD_LOGIC;
    \fsel_reg[3]\ : out STD_LOGIC;
    \fsel_reg[2]\ : out STD_LOGIC;
    \fsel_reg[1]\ : out STD_LOGIC;
    \yi_reg[2]_C_1\ : out STD_LOGIC;
    \yi_reg[3]_C_1\ : out STD_LOGIC;
    \yi_reg[4]_C_1\ : out STD_LOGIC;
    \yi_reg[5]_C_1\ : out STD_LOGIC;
    \yi_reg[6]_C_1\ : out STD_LOGIC;
    \yi_reg[7]_C_2\ : out STD_LOGIC;
    c_reg_0 : out STD_LOGIC;
    \yi_reg[7]_C_3\ : out STD_LOGIC;
    \yi_reg[6]_C_2\ : out STD_LOGIC;
    \yi_reg[5]_C_2\ : out STD_LOGIC;
    \yi_reg[4]_C_2\ : out STD_LOGIC;
    \yi_reg[3]_C_2\ : out STD_LOGIC;
    \yi_reg[2]_C_2\ : out STD_LOGIC;
    \yi_reg[7]_C_4\ : out STD_LOGIC;
    \yi_reg[6]_C_3\ : out STD_LOGIC;
    \yi_reg[5]_C_3\ : out STD_LOGIC;
    \yi_reg[4]_C_3\ : out STD_LOGIC;
    \yi_reg[3]_C_3\ : out STD_LOGIC;
    \yi_reg[0]_C_2\ : out STD_LOGIC;
    \yi_reg[0]_C_3\ : out STD_LOGIC;
    z_reg : out STD_LOGIC;
    \trisa_reg[0]_0\ : out STD_LOGIC;
    \b_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \b_reg[7]_2\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    retlw_reg : in STD_LOGIC;
    call_reg : in STD_LOGIC;
    c2 : in STD_LOGIC;
    \yi_reg[7]_P\ : in STD_LOGIC;
    \yi_reg[6]_P\ : in STD_LOGIC;
    \yi_reg[5]_P\ : in STD_LOGIC;
    \yi_reg[4]_P\ : in STD_LOGIC;
    \yi_reg[3]_P\ : in STD_LOGIC;
    \yi_reg[2]_P\ : in STD_LOGIC;
    \yi_reg[1]_P\ : in STD_LOGIC;
    \yi_reg[0]_P\ : in STD_LOGIC;
    call_reg_0 : in STD_LOGIC;
    call_reg_1 : in STD_LOGIC;
    status0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    z_reg_0 : in STD_LOGIC;
    dc_reg_0 : in STD_LOGIC;
    c_reg_1 : in STD_LOGIC;
    call : in STD_LOGIC;
    retlw : in STD_LOGIC;
    \k_reg[2]\ : in STD_LOGIC;
    goto : in STD_LOGIC;
    \pc1__0\ : in STD_LOGIC;
    mclr : in STD_LOGIC;
    longk : in STD_LOGIC_VECTOR ( 0 to 0 );
    k : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \^d\ : in STD_LOGIC;
    p_0_out : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \trisb_reg[0]_0\ : in STD_LOGIC;
    \trisb_reg[1]_0\ : in STD_LOGIC;
    \trisb_reg[2]_0\ : in STD_LOGIC;
    \trisb_reg[3]_0\ : in STD_LOGIC;
    \trisb_reg[4]_0\ : in STD_LOGIC;
    \trisb_reg[5]_0\ : in STD_LOGIC;
    \trisb_reg[6]_0\ : in STD_LOGIC;
    \trisb_reg[7]_0\ : in STD_LOGIC;
    romdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    movf : in STD_LOGIC;
    comf : in STD_LOGIC;
    incf : in STD_LOGIC;
    iorwf : in STD_LOGIC;
    addwf : in STD_LOGIC;
    xorwf : in STD_LOGIC;
    andwf : in STD_LOGIC;
    xorlw : in STD_LOGIC;
    iorlw : in STD_LOGIC;
    andlw : in STD_LOGIC;
    incfsz : in STD_LOGIC;
    decfsz : in STD_LOGIC;
    btfss : in STD_LOGIC;
    decf : in STD_LOGIC;
    subwf : in STD_LOGIC;
    clrf_reg : in STD_LOGIC;
    rlf : in STD_LOGIC;
    rrf : in STD_LOGIC;
    \fsel_reg[4]_0\ : in STD_LOGIC;
    fsel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    option : in STD_LOGIC;
    swapf : in STD_LOGIC;
    incfsz_reg : in STD_LOGIC;
    rrf_reg : in STD_LOGIC;
    movlw : in STD_LOGIC;
    tris : in STD_LOGIC;
    andlw_reg : in STD_LOGIC;
    z0 : in STD_LOGIC;
    z : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \stacklevel_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    call_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    retlw_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \k_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    retlw_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    retlw_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    retlw_reg_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    tris_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    tris_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_distribute;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_distribute is
  signal \A3/data5\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RA_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal RB_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \b[0]_i_11_n_0\ : STD_LOGIC;
  signal \b[0]_i_12_n_0\ : STD_LOGIC;
  signal \b[0]_i_13_n_0\ : STD_LOGIC;
  signal \b[0]_i_14_n_0\ : STD_LOGIC;
  signal \b[0]_i_15_n_0\ : STD_LOGIC;
  signal \b[0]_i_16_n_0\ : STD_LOGIC;
  signal \b[1]_i_11_n_0\ : STD_LOGIC;
  signal \b[1]_i_12_n_0\ : STD_LOGIC;
  signal \b[1]_i_13_n_0\ : STD_LOGIC;
  signal \b[1]_i_14_n_0\ : STD_LOGIC;
  signal \b[1]_i_15_n_0\ : STD_LOGIC;
  signal \b[1]_i_16_n_0\ : STD_LOGIC;
  signal \b[2]_i_11_n_0\ : STD_LOGIC;
  signal \b[2]_i_12_n_0\ : STD_LOGIC;
  signal \b[2]_i_13_n_0\ : STD_LOGIC;
  signal \b[2]_i_14_n_0\ : STD_LOGIC;
  signal \b[2]_i_15_n_0\ : STD_LOGIC;
  signal \b[2]_i_16_n_0\ : STD_LOGIC;
  signal \b[3]_i_11_n_0\ : STD_LOGIC;
  signal \b[3]_i_12_n_0\ : STD_LOGIC;
  signal \b[3]_i_13_n_0\ : STD_LOGIC;
  signal \b[3]_i_14_n_0\ : STD_LOGIC;
  signal \b[3]_i_15_n_0\ : STD_LOGIC;
  signal \b[3]_i_16_n_0\ : STD_LOGIC;
  signal \b[4]_i_10_n_0\ : STD_LOGIC;
  signal \b[4]_i_11_n_0\ : STD_LOGIC;
  signal \b[4]_i_12_n_0\ : STD_LOGIC;
  signal \b[4]_i_13_n_0\ : STD_LOGIC;
  signal \b[4]_i_14_n_0\ : STD_LOGIC;
  signal \b[4]_i_15_n_0\ : STD_LOGIC;
  signal \b[5]_i_10_n_0\ : STD_LOGIC;
  signal \b[5]_i_11_n_0\ : STD_LOGIC;
  signal \b[5]_i_12_n_0\ : STD_LOGIC;
  signal \b[5]_i_13_n_0\ : STD_LOGIC;
  signal \b[5]_i_14_n_0\ : STD_LOGIC;
  signal \b[5]_i_15_n_0\ : STD_LOGIC;
  signal \b[6]_i_10_n_0\ : STD_LOGIC;
  signal \b[6]_i_11_n_0\ : STD_LOGIC;
  signal \b[6]_i_12_n_0\ : STD_LOGIC;
  signal \b[6]_i_13_n_0\ : STD_LOGIC;
  signal \b[6]_i_14_n_0\ : STD_LOGIC;
  signal \b[6]_i_15_n_0\ : STD_LOGIC;
  signal \b[7]_i_12_n_0\ : STD_LOGIC;
  signal \b[7]_i_13_n_0\ : STD_LOGIC;
  signal \b[7]_i_14_n_0\ : STD_LOGIC;
  signal \b[7]_i_15_n_0\ : STD_LOGIC;
  signal \b[7]_i_16_n_0\ : STD_LOGIC;
  signal \b[7]_i_17_n_0\ : STD_LOGIC;
  signal \b_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \b_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \b_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \b_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \b_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \b_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[2]_i_9_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \b_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \b_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal \b_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \b_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[5]_i_9_n_0\ : STD_LOGIC;
  signal \b_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \b_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[6]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[6]_i_9_n_0\ : STD_LOGIC;
  signal \^b_reg[7]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \b_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \b_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal c_i_10_n_0 : STD_LOGIC;
  signal c_i_11_n_0 : STD_LOGIC;
  signal c_i_13_n_0 : STD_LOGIC;
  signal c_i_14_n_0 : STD_LOGIC;
  signal c_i_15_n_0 : STD_LOGIC;
  signal c_i_16_n_0 : STD_LOGIC;
  signal c_i_17_n_0 : STD_LOGIC;
  signal c_i_18_n_0 : STD_LOGIC;
  signal c_i_19_n_0 : STD_LOGIC;
  signal c_i_20_n_0 : STD_LOGIC;
  signal c_i_21_n_0 : STD_LOGIC;
  signal c_i_22_n_0 : STD_LOGIC;
  signal c_i_23_n_0 : STD_LOGIC;
  signal c_i_24_n_0 : STD_LOGIC;
  signal c_i_8_n_0 : STD_LOGIC;
  signal c_i_9_n_0 : STD_LOGIC;
  signal \^c_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal c_reg_i_12_n_0 : STD_LOGIC;
  signal c_reg_i_12_n_1 : STD_LOGIC;
  signal c_reg_i_12_n_2 : STD_LOGIC;
  signal c_reg_i_12_n_3 : STD_LOGIC;
  signal c_reg_i_12_n_4 : STD_LOGIC;
  signal c_reg_i_12_n_5 : STD_LOGIC;
  signal c_reg_i_12_n_6 : STD_LOGIC;
  signal c_reg_i_12_n_7 : STD_LOGIC;
  signal c_reg_i_3_n_3 : STD_LOGIC;
  signal c_reg_i_4_n_3 : STD_LOGIC;
  signal c_reg_i_5_n_0 : STD_LOGIC;
  signal c_reg_i_5_n_1 : STD_LOGIC;
  signal c_reg_i_5_n_2 : STD_LOGIC;
  signal c_reg_i_5_n_3 : STD_LOGIC;
  signal c_reg_i_5_n_4 : STD_LOGIC;
  signal c_reg_i_5_n_5 : STD_LOGIC;
  signal c_reg_i_5_n_6 : STD_LOGIC;
  signal c_reg_i_5_n_7 : STD_LOGIC;
  signal c_reg_i_6_n_0 : STD_LOGIC;
  signal c_reg_i_6_n_1 : STD_LOGIC;
  signal c_reg_i_6_n_2 : STD_LOGIC;
  signal c_reg_i_6_n_3 : STD_LOGIC;
  signal c_reg_i_6_n_4 : STD_LOGIC;
  signal c_reg_i_6_n_5 : STD_LOGIC;
  signal c_reg_i_6_n_6 : STD_LOGIC;
  signal c_reg_i_6_n_7 : STD_LOGIC;
  signal c_reg_i_7_n_0 : STD_LOGIC;
  signal c_reg_i_7_n_1 : STD_LOGIC;
  signal c_reg_i_7_n_2 : STD_LOGIC;
  signal c_reg_i_7_n_3 : STD_LOGIC;
  signal c_reg_i_7_n_4 : STD_LOGIC;
  signal c_reg_i_7_n_5 : STD_LOGIC;
  signal c_reg_i_7_n_6 : STD_LOGIC;
  signal c_reg_i_7_n_7 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal data3 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal dc_i_3_n_0 : STD_LOGIC;
  signal dc_i_4_n_0 : STD_LOGIC;
  signal pc01_in : STD_LOGIC_VECTOR ( 9 to 9 );
  signal \pc0__9\ : STD_LOGIC_VECTOR ( 9 to 9 );
  signal \pc[3]_P_i_6_n_0\ : STD_LOGIC;
  signal \pc[3]_P_i_7_n_0\ : STD_LOGIC;
  signal \pc[4]_P_i_6_n_0\ : STD_LOGIC;
  signal \pc[5]_P_i_6_n_0\ : STD_LOGIC;
  signal \pc[6]_P_i_6_n_0\ : STD_LOGIC;
  signal \pc[8]_P_i_1_n_0\ : STD_LOGIC;
  signal \pc[8]_P_i_4_n_0\ : STD_LOGIC;
  signal \pc[8]_P_i_5_n_0\ : STD_LOGIC;
  signal \pc[8]_P_i_6_n_0\ : STD_LOGIC;
  signal \^pc_reg[9]_p_0\ : STD_LOGIC;
  signal \^pc_reg[9]_p_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \regfile[31][0]_i_1_n_0\ : STD_LOGIC;
  signal \regfile[31][6]_i_1_n_0\ : STD_LOGIC;
  signal \^regfile__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[10]_21\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[11]_20\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[12]_19\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[13]_18\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[14]_17\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[15]_16\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[16]_15\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[17]_14\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[18]_13\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[19]_12\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[20]_11\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[21]_10\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[22]_9\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^regfile_reg[23][7]_0\ : STD_LOGIC;
  signal \regfile_reg[23]_8\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[24]_7\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[25]_6\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[26]_5\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[27]_4\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[28]_3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[29]_2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[30]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[31]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[7]_24\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[8]_23\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regfile_reg[9]_22\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^romaddr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \rtccount_reg_n_0_[0]\ : STD_LOGIC;
  signal \rtccount_reg_n_0_[1]\ : STD_LOGIC;
  signal \rtccount_reg_n_0_[2]\ : STD_LOGIC;
  signal \rtccount_reg_n_0_[3]\ : STD_LOGIC;
  signal \rtccount_reg_n_0_[4]\ : STD_LOGIC;
  signal \rtccount_reg_n_0_[5]\ : STD_LOGIC;
  signal \rtccount_reg_n_0_[6]\ : STD_LOGIC;
  signal \rtccount_reg_n_0_[7]\ : STD_LOGIC;
  signal skip_C_i_4_n_0 : STD_LOGIC;
  signal skip_reg_LDC_i_3_n_0 : STD_LOGIC;
  signal skip_reg_LDC_i_4_n_0 : STD_LOGIC;
  signal skip_reg_LDC_i_5_n_0 : STD_LOGIC;
  signal \stack1_reg_n_0_[0]\ : STD_LOGIC;
  signal \stack1_reg_n_0_[1]\ : STD_LOGIC;
  signal \stack1_reg_n_0_[2]\ : STD_LOGIC;
  signal \stack1_reg_n_0_[3]\ : STD_LOGIC;
  signal \stack1_reg_n_0_[4]\ : STD_LOGIC;
  signal \stack1_reg_n_0_[5]\ : STD_LOGIC;
  signal \stack1_reg_n_0_[6]\ : STD_LOGIC;
  signal \stack1_reg_n_0_[7]\ : STD_LOGIC;
  signal \stack1_reg_n_0_[8]\ : STD_LOGIC;
  signal \stack1_reg_n_0_[9]\ : STD_LOGIC;
  signal \stack2[0]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[1]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[2]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[3]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[4]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[4]_i_2_n_0\ : STD_LOGIC;
  signal \stack2[5]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[5]_i_2_n_0\ : STD_LOGIC;
  signal \stack2[6]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[6]_i_2_n_0\ : STD_LOGIC;
  signal \stack2[7]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[7]_i_2_n_0\ : STD_LOGIC;
  signal \stack2[8]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[8]_i_2_n_0\ : STD_LOGIC;
  signal \stack2[9]_i_2_n_0\ : STD_LOGIC;
  signal \^stack2_reg[9]_0\ : STD_LOGIC;
  signal \stack2_reg_n_0_[0]\ : STD_LOGIC;
  signal \stack2_reg_n_0_[1]\ : STD_LOGIC;
  signal \stack2_reg_n_0_[2]\ : STD_LOGIC;
  signal \stack2_reg_n_0_[3]\ : STD_LOGIC;
  signal \stack2_reg_n_0_[4]\ : STD_LOGIC;
  signal \stack2_reg_n_0_[5]\ : STD_LOGIC;
  signal \stack2_reg_n_0_[6]\ : STD_LOGIC;
  signal \stack2_reg_n_0_[7]\ : STD_LOGIC;
  signal \stack2_reg_n_0_[8]\ : STD_LOGIC;
  signal \stack2_reg_n_0_[9]\ : STD_LOGIC;
  signal \^stacklevel_reg[1]_0\ : STD_LOGIC;
  signal \^status_c\ : STD_LOGIC;
  signal \^status_reg[1]_0\ : STD_LOGIC;
  signal \^status_reg[2]_0\ : STD_LOGIC;
  signal \status_reg_n_0_[3]\ : STD_LOGIC;
  signal \status_reg_n_0_[4]\ : STD_LOGIC;
  signal \status_reg_n_0_[6]\ : STD_LOGIC;
  signal \status_reg_n_0_[7]\ : STD_LOGIC;
  signal \^trisa_reg[0]_0\ : STD_LOGIC;
  signal \yi_reg[0]_LDC_i_7_n_0\ : STD_LOGIC;
  signal \yi_reg[1]_LDC_i_7_n_0\ : STD_LOGIC;
  signal \yi_reg[2]_LDC_i_11_n_0\ : STD_LOGIC;
  signal \yi_reg[2]_LDC_i_12_n_0\ : STD_LOGIC;
  signal \yi_reg[2]_LDC_i_13_n_0\ : STD_LOGIC;
  signal \yi_reg[2]_LDC_i_14_n_0\ : STD_LOGIC;
  signal \yi_reg[2]_LDC_i_7_n_0\ : STD_LOGIC;
  signal \yi_reg[3]_LDC_i_14_n_0\ : STD_LOGIC;
  signal \yi_reg[3]_LDC_i_15_n_0\ : STD_LOGIC;
  signal \yi_reg[3]_LDC_i_7_n_0\ : STD_LOGIC;
  signal \yi_reg[4]_LDC_i_14_n_0\ : STD_LOGIC;
  signal \yi_reg[4]_LDC_i_7_n_0\ : STD_LOGIC;
  signal \yi_reg[5]_LDC_i_14_n_0\ : STD_LOGIC;
  signal \yi_reg[5]_LDC_i_7_n_0\ : STD_LOGIC;
  signal \yi_reg[6]_LDC_i_17_n_0\ : STD_LOGIC;
  signal \yi_reg[6]_LDC_i_18_n_0\ : STD_LOGIC;
  signal \yi_reg[6]_LDC_i_19_n_0\ : STD_LOGIC;
  signal \yi_reg[6]_LDC_i_6_n_0\ : STD_LOGIC;
  signal \^yi_reg[7]_c_1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \yi_reg[7]_LDC_i_18_n_0\ : STD_LOGIC;
  signal \yi_reg[7]_LDC_i_19_n_0\ : STD_LOGIC;
  signal \yi_reg[7]_LDC_i_21_n_0\ : STD_LOGIC;
  signal \yi_reg[7]_LDC_i_22_n_0\ : STD_LOGIC;
  signal \yi_reg[7]_LDC_i_9_n_0\ : STD_LOGIC;
  signal z_i_10_n_0 : STD_LOGIC;
  signal z_i_11_n_0 : STD_LOGIC;
  signal z_i_12_n_0 : STD_LOGIC;
  signal z_i_13_n_0 : STD_LOGIC;
  signal z_i_16_n_0 : STD_LOGIC;
  signal z_i_17_n_0 : STD_LOGIC;
  signal z_i_18_n_0 : STD_LOGIC;
  signal z_i_19_n_0 : STD_LOGIC;
  signal z_i_20_n_0 : STD_LOGIC;
  signal z_i_21_n_0 : STD_LOGIC;
  signal z_i_22_n_0 : STD_LOGIC;
  signal z_i_23_n_0 : STD_LOGIC;
  signal z_i_24_n_0 : STD_LOGIC;
  signal z_i_25_n_0 : STD_LOGIC;
  signal z_i_26_n_0 : STD_LOGIC;
  signal z_i_27_n_0 : STD_LOGIC;
  signal z_i_28_n_0 : STD_LOGIC;
  signal z_i_29_n_0 : STD_LOGIC;
  signal z_i_30_n_0 : STD_LOGIC;
  signal z_i_31_n_0 : STD_LOGIC;
  signal z_i_32_n_0 : STD_LOGIC;
  signal z_i_33_n_0 : STD_LOGIC;
  signal z_i_34_n_0 : STD_LOGIC;
  signal z_i_35_n_0 : STD_LOGIC;
  signal z_i_36_n_0 : STD_LOGIC;
  signal z_i_37_n_0 : STD_LOGIC;
  signal z_i_38_n_0 : STD_LOGIC;
  signal z_i_39_n_0 : STD_LOGIC;
  signal z_i_3_n_0 : STD_LOGIC;
  signal z_i_40_n_0 : STD_LOGIC;
  signal z_i_41_n_0 : STD_LOGIC;
  signal z_i_42_n_0 : STD_LOGIC;
  signal z_i_43_n_0 : STD_LOGIC;
  signal z_i_4_n_0 : STD_LOGIC;
  signal z_i_5_n_0 : STD_LOGIC;
  signal z_i_7_n_0 : STD_LOGIC;
  signal z_i_8_n_0 : STD_LOGIC;
  signal z_i_9_n_0 : STD_LOGIC;
  signal NLW_c_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_c_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_c_reg_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_c_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of dc_i_2 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \pc[3]_P_i_7\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \pc[4]_P_i_6\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \pc[5]_P_i_6\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \pc[8]_P_i_2\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \pc[8]_P_i_5\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \pc[9]_P_i_14\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \pc[9]_P_i_9\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of skip_C_i_4 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of skip_reg_LDC_i_1 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of skip_reg_LDC_i_2 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \stack2[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \stack2[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \stack2[2]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \stack2[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \stack2[4]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \stack2[4]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \stack2[5]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \stack2[5]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \stack2[6]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \stack2[6]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \stack2[7]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \stack2[7]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \stack2[8]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \stack2[8]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \stack2[9]_i_3\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \yi_reg[0]_LDC_i_7\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \yi_reg[1]_LDC_i_14\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \yi_reg[1]_LDC_i_7\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \yi_reg[2]_LDC_i_14\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \yi_reg[2]_LDC_i_15\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \yi_reg[2]_LDC_i_7\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \yi_reg[3]_LDC_i_14\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \yi_reg[3]_LDC_i_15\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \yi_reg[3]_LDC_i_16\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \yi_reg[4]_LDC_i_14\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \yi_reg[4]_LDC_i_15\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \yi_reg[4]_LDC_i_7\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \yi_reg[5]_LDC_i_7\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \yi_reg[6]_LDC_i_17\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \yi_reg[6]_LDC_i_18\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \yi_reg[6]_LDC_i_6\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \yi_reg[7]_LDC_i_18\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \yi_reg[7]_LDC_i_19\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \yi_reg[7]_LDC_i_20\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \yi_reg[7]_LDC_i_9\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of z_i_18 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of z_i_19 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of z_i_20 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of z_i_21 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of z_i_22 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of z_i_23 : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of z_i_24 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of z_i_26 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of z_i_27 : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of z_i_28 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of z_i_31 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of z_i_32 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of z_i_33 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of z_i_36 : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of z_i_37 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of z_i_38 : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of z_i_39 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of z_i_40 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of z_i_41 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of z_i_8 : label is "soft_lutpair55";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \b_reg[7]_1\(7 downto 0) <= \^b_reg[7]_1\(7 downto 0);
  c_reg(7 downto 0) <= \^c_reg\(7 downto 0);
  \pc_reg[9]_P_0\ <= \^pc_reg[9]_p_0\;
  \pc_reg[9]_P_1\(0) <= \^pc_reg[9]_p_1\(0);
  \regfile__0\(7 downto 0) <= \^regfile__0\(7 downto 0);
  \regfile_reg[23][7]_0\ <= \^regfile_reg[23][7]_0\;
  romaddr(9 downto 0) <= \^romaddr\(9 downto 0);
  \stack2_reg[9]_0\ <= \^stack2_reg[9]_0\;
  \stacklevel_reg[1]_0\ <= \^stacklevel_reg[1]_0\;
  status_c <= \^status_c\;
  \status_reg[1]_0\ <= \^status_reg[1]_0\;
  \status_reg[2]_0\ <= \^status_reg[2]_0\;
  \trisa_reg[0]_0\ <= \^trisa_reg[0]_0\;
  \yi_reg[7]_C_1\(4 downto 0) <= \^yi_reg[7]_c_1\(4 downto 0);
\RA[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RA_out(0),
      I1 => p_0_out(0),
      O => RA(0)
    );
\RA[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RA_out(1),
      I1 => p_0_out(1),
      O => RA(1)
    );
\RA[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RA_out(2),
      I1 => p_0_out(2),
      O => RA(2)
    );
\RA[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RA_out(3),
      I1 => p_0_out(3),
      O => RA(3)
    );
\RA_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_3(0),
      D => D(0),
      Q => RA_out(0),
      R => '0'
    );
\RA_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_3(0),
      D => D(1),
      Q => RA_out(1),
      R => '0'
    );
\RA_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_3(0),
      D => D(2),
      Q => RA_out(2),
      R => '0'
    );
\RA_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_3(0),
      D => D(3),
      Q => RA_out(3),
      R => '0'
    );
\RB[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RB_out(0),
      I1 => \trisb_reg[0]_0\,
      O => RB(0)
    );
\RB[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RB_out(1),
      I1 => \trisb_reg[1]_0\,
      O => RB(1)
    );
\RB[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RB_out(2),
      I1 => \trisb_reg[2]_0\,
      O => RB(2)
    );
\RB[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RB_out(3),
      I1 => \trisb_reg[3]_0\,
      O => RB(3)
    );
\RB[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RB_out(4),
      I1 => \trisb_reg[4]_0\,
      O => RB(4)
    );
\RB[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RB_out(5),
      I1 => \trisb_reg[5]_0\,
      O => RB(5)
    );
\RB[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RB_out(6),
      I1 => \trisb_reg[6]_0\,
      O => RB(6)
    );
\RB[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RB_out(7),
      I1 => \trisb_reg[7]_0\,
      O => RB(7)
    );
\RB_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_2(0),
      D => D(0),
      Q => RB_out(0),
      R => '0'
    );
\RB_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_2(0),
      D => D(1),
      Q => RB_out(1),
      R => '0'
    );
\RB_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_2(0),
      D => D(2),
      Q => RB_out(2),
      R => '0'
    );
\RB_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_2(0),
      D => D(3),
      Q => RB_out(3),
      R => '0'
    );
\RB_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_2(0),
      D => D(4),
      Q => RB_out(4),
      R => '0'
    );
\RB_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_2(0),
      D => D(5),
      Q => RB_out(5),
      R => '0'
    );
\RB_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_2(0),
      D => D(6),
      Q => RB_out(6),
      R => '0'
    );
\RB_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_2(0),
      D => D(7),
      Q => RB_out(7),
      R => '0'
    );
\b[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[11]_20\(0),
      I1 => \regfile_reg[10]_21\(0),
      I2 => fsel(1),
      I3 => \regfile_reg[9]_22\(0),
      I4 => fsel(0),
      I5 => \regfile_reg[8]_23\(0),
      O => \b[0]_i_11_n_0\
    );
\b[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[15]_16\(0),
      I1 => \regfile_reg[14]_17\(0),
      I2 => fsel(1),
      I3 => \regfile_reg[13]_18\(0),
      I4 => fsel(0),
      I5 => \regfile_reg[12]_19\(0),
      O => \b[0]_i_12_n_0\
    );
\b[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[19]_12\(0),
      I1 => \regfile_reg[18]_13\(0),
      I2 => fsel(1),
      I3 => \regfile_reg[17]_14\(0),
      I4 => fsel(0),
      I5 => \regfile_reg[16]_15\(0),
      O => \b[0]_i_13_n_0\
    );
\b[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[23]_8\(0),
      I1 => \regfile_reg[22]_9\(0),
      I2 => fsel(1),
      I3 => \regfile_reg[21]_10\(0),
      I4 => fsel(0),
      I5 => \regfile_reg[20]_11\(0),
      O => \b[0]_i_14_n_0\
    );
\b[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[27]_4\(0),
      I1 => \regfile_reg[26]_5\(0),
      I2 => fsel(1),
      I3 => \regfile_reg[25]_6\(0),
      I4 => fsel(0),
      I5 => \regfile_reg[24]_7\(0),
      O => \b[0]_i_15_n_0\
    );
\b[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[31]_0\(0),
      I1 => \regfile_reg[30]_1\(0),
      I2 => fsel(1),
      I3 => \regfile_reg[29]_2\(0),
      I4 => fsel(0),
      I5 => \regfile_reg[28]_3\(0),
      O => \b[0]_i_16_n_0\
    );
\b[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFACA0AC"
    )
        port map (
      I0 => \b_reg[0]_i_7_n_0\,
      I1 => \regfile_reg[7]_24\(0),
      I2 => fsel(4),
      I3 => fsel(3),
      I4 => \b_reg[0]_i_8_n_0\,
      O => \^regfile__0\(0)
    );
\b[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^romaddr\(0),
      I1 => \^status_c\,
      I2 => k(1),
      I3 => \rtccount_reg_n_0_[0]\,
      I4 => k(0),
      I5 => \^regfile__0\(0),
      O => \b_reg[0]_0\
    );
\b[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[11]_20\(1),
      I1 => \regfile_reg[10]_21\(1),
      I2 => fsel(1),
      I3 => \regfile_reg[9]_22\(1),
      I4 => fsel(0),
      I5 => \regfile_reg[8]_23\(1),
      O => \b[1]_i_11_n_0\
    );
\b[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[15]_16\(1),
      I1 => \regfile_reg[14]_17\(1),
      I2 => fsel(1),
      I3 => \regfile_reg[13]_18\(1),
      I4 => fsel(0),
      I5 => \regfile_reg[12]_19\(1),
      O => \b[1]_i_12_n_0\
    );
\b[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[19]_12\(1),
      I1 => \regfile_reg[18]_13\(1),
      I2 => fsel(1),
      I3 => \regfile_reg[17]_14\(1),
      I4 => fsel(0),
      I5 => \regfile_reg[16]_15\(1),
      O => \b[1]_i_13_n_0\
    );
\b[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[23]_8\(1),
      I1 => \regfile_reg[22]_9\(1),
      I2 => fsel(1),
      I3 => \regfile_reg[21]_10\(1),
      I4 => fsel(0),
      I5 => \regfile_reg[20]_11\(1),
      O => \b[1]_i_14_n_0\
    );
\b[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[27]_4\(1),
      I1 => \regfile_reg[26]_5\(1),
      I2 => fsel(1),
      I3 => \regfile_reg[25]_6\(1),
      I4 => fsel(0),
      I5 => \regfile_reg[24]_7\(1),
      O => \b[1]_i_15_n_0\
    );
\b[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[31]_0\(1),
      I1 => \regfile_reg[30]_1\(1),
      I2 => fsel(1),
      I3 => \regfile_reg[29]_2\(1),
      I4 => fsel(0),
      I5 => \regfile_reg[28]_3\(1),
      O => \b[1]_i_16_n_0\
    );
\b[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFACA0AC"
    )
        port map (
      I0 => \b_reg[1]_i_7_n_0\,
      I1 => \regfile_reg[7]_24\(1),
      I2 => fsel(4),
      I3 => fsel(3),
      I4 => \b_reg[1]_i_8_n_0\,
      O => \^regfile__0\(1)
    );
\b[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^romaddr\(1),
      I1 => \^status_reg[1]_0\,
      I2 => k(1),
      I3 => \rtccount_reg_n_0_[1]\,
      I4 => k(0),
      I5 => \^regfile__0\(1),
      O => \b_reg[1]_0\
    );
\b[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[11]_20\(2),
      I1 => \regfile_reg[10]_21\(2),
      I2 => fsel(1),
      I3 => \regfile_reg[9]_22\(2),
      I4 => fsel(0),
      I5 => \regfile_reg[8]_23\(2),
      O => \b[2]_i_11_n_0\
    );
\b[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[15]_16\(2),
      I1 => \regfile_reg[14]_17\(2),
      I2 => fsel(1),
      I3 => \regfile_reg[13]_18\(2),
      I4 => fsel(0),
      I5 => \regfile_reg[12]_19\(2),
      O => \b[2]_i_12_n_0\
    );
\b[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[19]_12\(2),
      I1 => \regfile_reg[18]_13\(2),
      I2 => fsel(1),
      I3 => \regfile_reg[17]_14\(2),
      I4 => fsel(0),
      I5 => \regfile_reg[16]_15\(2),
      O => \b[2]_i_13_n_0\
    );
\b[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[23]_8\(2),
      I1 => \regfile_reg[22]_9\(2),
      I2 => fsel(1),
      I3 => \regfile_reg[21]_10\(2),
      I4 => fsel(0),
      I5 => \regfile_reg[20]_11\(2),
      O => \b[2]_i_14_n_0\
    );
\b[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[27]_4\(2),
      I1 => \regfile_reg[26]_5\(2),
      I2 => fsel(1),
      I3 => \regfile_reg[25]_6\(2),
      I4 => fsel(0),
      I5 => \regfile_reg[24]_7\(2),
      O => \b[2]_i_15_n_0\
    );
\b[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[31]_0\(2),
      I1 => \regfile_reg[30]_1\(2),
      I2 => fsel(1),
      I3 => \regfile_reg[29]_2\(2),
      I4 => fsel(0),
      I5 => \regfile_reg[28]_3\(2),
      O => \b[2]_i_16_n_0\
    );
\b[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFACA0AC"
    )
        port map (
      I0 => \b_reg[2]_i_7_n_0\,
      I1 => \regfile_reg[7]_24\(2),
      I2 => fsel(4),
      I3 => fsel(3),
      I4 => \b_reg[2]_i_8_n_0\,
      O => \^regfile__0\(2)
    );
\b[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^romaddr\(2),
      I1 => \^status_reg[2]_0\,
      I2 => k(1),
      I3 => \rtccount_reg_n_0_[2]\,
      I4 => k(0),
      I5 => \^regfile__0\(2),
      O => \b_reg[2]_0\
    );
\b[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[11]_20\(3),
      I1 => \regfile_reg[10]_21\(3),
      I2 => fsel(1),
      I3 => \regfile_reg[9]_22\(3),
      I4 => fsel(0),
      I5 => \regfile_reg[8]_23\(3),
      O => \b[3]_i_11_n_0\
    );
\b[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[15]_16\(3),
      I1 => \regfile_reg[14]_17\(3),
      I2 => fsel(1),
      I3 => \regfile_reg[13]_18\(3),
      I4 => fsel(0),
      I5 => \regfile_reg[12]_19\(3),
      O => \b[3]_i_12_n_0\
    );
\b[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[19]_12\(3),
      I1 => \regfile_reg[18]_13\(3),
      I2 => fsel(1),
      I3 => \regfile_reg[17]_14\(3),
      I4 => fsel(0),
      I5 => \regfile_reg[16]_15\(3),
      O => \b[3]_i_13_n_0\
    );
\b[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[23]_8\(3),
      I1 => \regfile_reg[22]_9\(3),
      I2 => fsel(1),
      I3 => \regfile_reg[21]_10\(3),
      I4 => fsel(0),
      I5 => \regfile_reg[20]_11\(3),
      O => \b[3]_i_14_n_0\
    );
\b[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[27]_4\(3),
      I1 => \regfile_reg[26]_5\(3),
      I2 => fsel(1),
      I3 => \regfile_reg[25]_6\(3),
      I4 => fsel(0),
      I5 => \regfile_reg[24]_7\(3),
      O => \b[3]_i_15_n_0\
    );
\b[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[31]_0\(3),
      I1 => \regfile_reg[30]_1\(3),
      I2 => fsel(1),
      I3 => \regfile_reg[29]_2\(3),
      I4 => fsel(0),
      I5 => \regfile_reg[28]_3\(3),
      O => \b[3]_i_16_n_0\
    );
\b[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFACA0AC"
    )
        port map (
      I0 => \b_reg[3]_i_7_n_0\,
      I1 => \regfile_reg[7]_24\(3),
      I2 => fsel(4),
      I3 => fsel(3),
      I4 => \b_reg[3]_i_8_n_0\,
      O => \^regfile__0\(3)
    );
\b[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^romaddr\(3),
      I1 => \status_reg_n_0_[3]\,
      I2 => k(1),
      I3 => \rtccount_reg_n_0_[3]\,
      I4 => k(0),
      I5 => \^regfile__0\(3),
      O => \b_reg[3]_0\
    );
\b[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[11]_20\(4),
      I1 => \regfile_reg[10]_21\(4),
      I2 => fsel(1),
      I3 => \regfile_reg[9]_22\(4),
      I4 => fsel(0),
      I5 => \regfile_reg[8]_23\(4),
      O => \b[4]_i_10_n_0\
    );
\b[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[15]_16\(4),
      I1 => \regfile_reg[14]_17\(4),
      I2 => fsel(1),
      I3 => \regfile_reg[13]_18\(4),
      I4 => fsel(0),
      I5 => \regfile_reg[12]_19\(4),
      O => \b[4]_i_11_n_0\
    );
\b[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[19]_12\(4),
      I1 => \regfile_reg[18]_13\(4),
      I2 => fsel(1),
      I3 => \regfile_reg[17]_14\(4),
      I4 => fsel(0),
      I5 => \regfile_reg[16]_15\(4),
      O => \b[4]_i_12_n_0\
    );
\b[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[23]_8\(4),
      I1 => \regfile_reg[22]_9\(4),
      I2 => fsel(1),
      I3 => \regfile_reg[21]_10\(4),
      I4 => fsel(0),
      I5 => \regfile_reg[20]_11\(4),
      O => \b[4]_i_13_n_0\
    );
\b[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[27]_4\(4),
      I1 => \regfile_reg[26]_5\(4),
      I2 => fsel(1),
      I3 => \regfile_reg[25]_6\(4),
      I4 => fsel(0),
      I5 => \regfile_reg[24]_7\(4),
      O => \b[4]_i_14_n_0\
    );
\b[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[31]_0\(4),
      I1 => \regfile_reg[30]_1\(4),
      I2 => fsel(1),
      I3 => \regfile_reg[29]_2\(4),
      I4 => fsel(0),
      I5 => \regfile_reg[28]_3\(4),
      O => \b[4]_i_15_n_0\
    );
\b[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFACA0AC"
    )
        port map (
      I0 => \b_reg[4]_i_6_n_0\,
      I1 => \regfile_reg[7]_24\(4),
      I2 => fsel(4),
      I3 => fsel(3),
      I4 => \b_reg[4]_i_7_n_0\,
      O => \^regfile__0\(4)
    );
\b[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^romaddr\(4),
      I1 => \status_reg_n_0_[4]\,
      I2 => k(1),
      I3 => \rtccount_reg_n_0_[4]\,
      I4 => k(0),
      I5 => \^regfile__0\(4),
      O => \b_reg[4]_0\
    );
\b[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[11]_20\(5),
      I1 => \regfile_reg[10]_21\(5),
      I2 => fsel(1),
      I3 => \regfile_reg[9]_22\(5),
      I4 => fsel(0),
      I5 => \regfile_reg[8]_23\(5),
      O => \b[5]_i_10_n_0\
    );
\b[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[15]_16\(5),
      I1 => \regfile_reg[14]_17\(5),
      I2 => fsel(1),
      I3 => \regfile_reg[13]_18\(5),
      I4 => fsel(0),
      I5 => \regfile_reg[12]_19\(5),
      O => \b[5]_i_11_n_0\
    );
\b[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[19]_12\(5),
      I1 => \regfile_reg[18]_13\(5),
      I2 => fsel(1),
      I3 => \regfile_reg[17]_14\(5),
      I4 => fsel(0),
      I5 => \regfile_reg[16]_15\(5),
      O => \b[5]_i_12_n_0\
    );
\b[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[23]_8\(5),
      I1 => \regfile_reg[22]_9\(5),
      I2 => fsel(1),
      I3 => \regfile_reg[21]_10\(5),
      I4 => fsel(0),
      I5 => \regfile_reg[20]_11\(5),
      O => \b[5]_i_13_n_0\
    );
\b[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[27]_4\(5),
      I1 => \regfile_reg[26]_5\(5),
      I2 => fsel(1),
      I3 => \regfile_reg[25]_6\(5),
      I4 => fsel(0),
      I5 => \regfile_reg[24]_7\(5),
      O => \b[5]_i_14_n_0\
    );
\b[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[31]_0\(5),
      I1 => \regfile_reg[30]_1\(5),
      I2 => fsel(1),
      I3 => \regfile_reg[29]_2\(5),
      I4 => fsel(0),
      I5 => \regfile_reg[28]_3\(5),
      O => \b[5]_i_15_n_0\
    );
\b[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFACA0AC"
    )
        port map (
      I0 => \b_reg[5]_i_6_n_0\,
      I1 => \regfile_reg[7]_24\(5),
      I2 => fsel(4),
      I3 => fsel(3),
      I4 => \b_reg[5]_i_7_n_0\,
      O => \^regfile__0\(5)
    );
\b[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^romaddr\(5),
      I1 => \^pc_reg[9]_p_0\,
      I2 => k(1),
      I3 => \rtccount_reg_n_0_[5]\,
      I4 => k(0),
      I5 => \^regfile__0\(5),
      O => \b_reg[5]_0\
    );
\b[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[11]_20\(6),
      I1 => \regfile_reg[10]_21\(6),
      I2 => fsel(1),
      I3 => \regfile_reg[9]_22\(6),
      I4 => fsel(0),
      I5 => \regfile_reg[8]_23\(6),
      O => \b[6]_i_10_n_0\
    );
\b[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[15]_16\(6),
      I1 => \regfile_reg[14]_17\(6),
      I2 => fsel(1),
      I3 => \regfile_reg[13]_18\(6),
      I4 => fsel(0),
      I5 => \regfile_reg[12]_19\(6),
      O => \b[6]_i_11_n_0\
    );
\b[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[19]_12\(6),
      I1 => \regfile_reg[18]_13\(6),
      I2 => fsel(1),
      I3 => \regfile_reg[17]_14\(6),
      I4 => fsel(0),
      I5 => \regfile_reg[16]_15\(6),
      O => \b[6]_i_12_n_0\
    );
\b[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[23]_8\(6),
      I1 => \regfile_reg[22]_9\(6),
      I2 => fsel(1),
      I3 => \regfile_reg[21]_10\(6),
      I4 => fsel(0),
      I5 => \regfile_reg[20]_11\(6),
      O => \b[6]_i_13_n_0\
    );
\b[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[27]_4\(6),
      I1 => \regfile_reg[26]_5\(6),
      I2 => fsel(1),
      I3 => \regfile_reg[25]_6\(6),
      I4 => fsel(0),
      I5 => \regfile_reg[24]_7\(6),
      O => \b[6]_i_14_n_0\
    );
\b[6]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[31]_0\(6),
      I1 => \regfile_reg[30]_1\(6),
      I2 => fsel(1),
      I3 => \regfile_reg[29]_2\(6),
      I4 => fsel(0),
      I5 => \regfile_reg[28]_3\(6),
      O => \b[6]_i_15_n_0\
    );
\b[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFACA0AC"
    )
        port map (
      I0 => \b_reg[6]_i_6_n_0\,
      I1 => \regfile_reg[7]_24\(6),
      I2 => fsel(4),
      I3 => fsel(3),
      I4 => \b_reg[6]_i_7_n_0\,
      O => \^regfile__0\(6)
    );
\b[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^romaddr\(6),
      I1 => \status_reg_n_0_[6]\,
      I2 => k(1),
      I3 => \rtccount_reg_n_0_[6]\,
      I4 => k(0),
      I5 => \^regfile__0\(6),
      O => \b_reg[6]_0\
    );
\b[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[11]_20\(7),
      I1 => \regfile_reg[10]_21\(7),
      I2 => fsel(1),
      I3 => \regfile_reg[9]_22\(7),
      I4 => fsel(0),
      I5 => \regfile_reg[8]_23\(7),
      O => \b[7]_i_12_n_0\
    );
\b[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[15]_16\(7),
      I1 => \regfile_reg[14]_17\(7),
      I2 => fsel(1),
      I3 => \regfile_reg[13]_18\(7),
      I4 => fsel(0),
      I5 => \regfile_reg[12]_19\(7),
      O => \b[7]_i_13_n_0\
    );
\b[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[19]_12\(7),
      I1 => \regfile_reg[18]_13\(7),
      I2 => fsel(1),
      I3 => \regfile_reg[17]_14\(7),
      I4 => fsel(0),
      I5 => \regfile_reg[16]_15\(7),
      O => \b[7]_i_14_n_0\
    );
\b[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[23]_8\(7),
      I1 => \regfile_reg[22]_9\(7),
      I2 => fsel(1),
      I3 => \regfile_reg[21]_10\(7),
      I4 => fsel(0),
      I5 => \regfile_reg[20]_11\(7),
      O => \b[7]_i_15_n_0\
    );
\b[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[27]_4\(7),
      I1 => \regfile_reg[26]_5\(7),
      I2 => fsel(1),
      I3 => \regfile_reg[25]_6\(7),
      I4 => fsel(0),
      I5 => \regfile_reg[24]_7\(7),
      O => \b[7]_i_16_n_0\
    );
\b[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regfile_reg[31]_0\(7),
      I1 => \regfile_reg[30]_1\(7),
      I2 => fsel(1),
      I3 => \regfile_reg[29]_2\(7),
      I4 => fsel(0),
      I5 => \regfile_reg[28]_3\(7),
      O => \b[7]_i_17_n_0\
    );
\b[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFACA0AC"
    )
        port map (
      I0 => \b_reg[7]_i_7_n_0\,
      I1 => \regfile_reg[7]_24\(7),
      I2 => fsel(4),
      I3 => fsel(3),
      I4 => \b_reg[7]_i_8_n_0\,
      O => \^regfile__0\(7)
    );
\b[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^romaddr\(7),
      I1 => \status_reg_n_0_[7]\,
      I2 => k(1),
      I3 => \rtccount_reg_n_0_[7]\,
      I4 => k(0),
      I5 => \^regfile__0\(7),
      O => \b_reg[7]_0\
    );
\b_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^regfile_reg[23][7]_0\,
      D => \k_reg[7]\(0),
      Q => \^c_reg\(0)
    );
\b_reg[0]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[0]_i_15_n_0\,
      I1 => \b[0]_i_16_n_0\,
      O => \b_reg[0]_i_10_n_0\,
      S => fsel(2)
    );
\b_reg[0]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \b_reg[0]_i_9_n_0\,
      I1 => \b_reg[0]_i_10_n_0\,
      O => \b_reg[0]_i_7_n_0\,
      S => fsel(3)
    );
\b_reg[0]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[0]_i_11_n_0\,
      I1 => \b[0]_i_12_n_0\,
      O => \b_reg[0]_i_8_n_0\,
      S => \fsel_reg[4]_0\
    );
\b_reg[0]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[0]_i_13_n_0\,
      I1 => \b[0]_i_14_n_0\,
      O => \b_reg[0]_i_9_n_0\,
      S => fsel(2)
    );
\b_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^regfile_reg[23][7]_0\,
      D => \k_reg[7]\(1),
      Q => \^c_reg\(1)
    );
\b_reg[1]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[1]_i_15_n_0\,
      I1 => \b[1]_i_16_n_0\,
      O => \b_reg[1]_i_10_n_0\,
      S => fsel(2)
    );
\b_reg[1]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \b_reg[1]_i_9_n_0\,
      I1 => \b_reg[1]_i_10_n_0\,
      O => \b_reg[1]_i_7_n_0\,
      S => fsel(3)
    );
\b_reg[1]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[1]_i_11_n_0\,
      I1 => \b[1]_i_12_n_0\,
      O => \b_reg[1]_i_8_n_0\,
      S => \fsel_reg[4]_0\
    );
\b_reg[1]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[1]_i_13_n_0\,
      I1 => \b[1]_i_14_n_0\,
      O => \b_reg[1]_i_9_n_0\,
      S => fsel(2)
    );
\b_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^regfile_reg[23][7]_0\,
      D => \k_reg[7]\(2),
      Q => \^c_reg\(2)
    );
\b_reg[2]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[2]_i_15_n_0\,
      I1 => \b[2]_i_16_n_0\,
      O => \b_reg[2]_i_10_n_0\,
      S => fsel(2)
    );
\b_reg[2]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \b_reg[2]_i_9_n_0\,
      I1 => \b_reg[2]_i_10_n_0\,
      O => \b_reg[2]_i_7_n_0\,
      S => fsel(3)
    );
\b_reg[2]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[2]_i_11_n_0\,
      I1 => \b[2]_i_12_n_0\,
      O => \b_reg[2]_i_8_n_0\,
      S => \fsel_reg[4]_0\
    );
\b_reg[2]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[2]_i_13_n_0\,
      I1 => \b[2]_i_14_n_0\,
      O => \b_reg[2]_i_9_n_0\,
      S => fsel(2)
    );
\b_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^regfile_reg[23][7]_0\,
      D => \k_reg[7]\(3),
      Q => \^c_reg\(3)
    );
\b_reg[3]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[3]_i_15_n_0\,
      I1 => \b[3]_i_16_n_0\,
      O => \b_reg[3]_i_10_n_0\,
      S => fsel(2)
    );
\b_reg[3]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \b_reg[3]_i_9_n_0\,
      I1 => \b_reg[3]_i_10_n_0\,
      O => \b_reg[3]_i_7_n_0\,
      S => fsel(3)
    );
\b_reg[3]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[3]_i_11_n_0\,
      I1 => \b[3]_i_12_n_0\,
      O => \b_reg[3]_i_8_n_0\,
      S => \fsel_reg[4]_0\
    );
\b_reg[3]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[3]_i_13_n_0\,
      I1 => \b[3]_i_14_n_0\,
      O => \b_reg[3]_i_9_n_0\,
      S => fsel(2)
    );
\b_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^regfile_reg[23][7]_0\,
      D => \k_reg[7]\(4),
      Q => \^c_reg\(4)
    );
\b_reg[4]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \b_reg[4]_i_8_n_0\,
      I1 => \b_reg[4]_i_9_n_0\,
      O => \b_reg[4]_i_6_n_0\,
      S => fsel(3)
    );
\b_reg[4]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[4]_i_10_n_0\,
      I1 => \b[4]_i_11_n_0\,
      O => \b_reg[4]_i_7_n_0\,
      S => \fsel_reg[4]_0\
    );
\b_reg[4]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[4]_i_12_n_0\,
      I1 => \b[4]_i_13_n_0\,
      O => \b_reg[4]_i_8_n_0\,
      S => fsel(2)
    );
\b_reg[4]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[4]_i_14_n_0\,
      I1 => \b[4]_i_15_n_0\,
      O => \b_reg[4]_i_9_n_0\,
      S => fsel(2)
    );
\b_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^regfile_reg[23][7]_0\,
      D => \k_reg[7]\(5),
      Q => \^c_reg\(5)
    );
\b_reg[5]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \b_reg[5]_i_8_n_0\,
      I1 => \b_reg[5]_i_9_n_0\,
      O => \b_reg[5]_i_6_n_0\,
      S => fsel(3)
    );
\b_reg[5]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[5]_i_10_n_0\,
      I1 => \b[5]_i_11_n_0\,
      O => \b_reg[5]_i_7_n_0\,
      S => \fsel_reg[4]_0\
    );
\b_reg[5]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[5]_i_12_n_0\,
      I1 => \b[5]_i_13_n_0\,
      O => \b_reg[5]_i_8_n_0\,
      S => fsel(2)
    );
\b_reg[5]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[5]_i_14_n_0\,
      I1 => \b[5]_i_15_n_0\,
      O => \b_reg[5]_i_9_n_0\,
      S => fsel(2)
    );
\b_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^regfile_reg[23][7]_0\,
      D => \k_reg[7]\(6),
      Q => \^c_reg\(6)
    );
\b_reg[6]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \b_reg[6]_i_8_n_0\,
      I1 => \b_reg[6]_i_9_n_0\,
      O => \b_reg[6]_i_6_n_0\,
      S => fsel(3)
    );
\b_reg[6]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[6]_i_10_n_0\,
      I1 => \b[6]_i_11_n_0\,
      O => \b_reg[6]_i_7_n_0\,
      S => \fsel_reg[4]_0\
    );
\b_reg[6]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[6]_i_12_n_0\,
      I1 => \b[6]_i_13_n_0\,
      O => \b_reg[6]_i_8_n_0\,
      S => fsel(2)
    );
\b_reg[6]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[6]_i_14_n_0\,
      I1 => \b[6]_i_15_n_0\,
      O => \b_reg[6]_i_9_n_0\,
      S => fsel(2)
    );
\b_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^regfile_reg[23][7]_0\,
      D => \k_reg[7]\(7),
      Q => \^c_reg\(7)
    );
\b_reg[7]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[7]_i_16_n_0\,
      I1 => \b[7]_i_17_n_0\,
      O => \b_reg[7]_i_10_n_0\,
      S => fsel(2)
    );
\b_reg[7]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \b_reg[7]_i_9_n_0\,
      I1 => \b_reg[7]_i_10_n_0\,
      O => \b_reg[7]_i_7_n_0\,
      S => fsel(3)
    );
\b_reg[7]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[7]_i_12_n_0\,
      I1 => \b[7]_i_13_n_0\,
      O => \b_reg[7]_i_8_n_0\,
      S => \fsel_reg[4]_0\
    );
\b_reg[7]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b[7]_i_14_n_0\,
      I1 => \b[7]_i_15_n_0\,
      O => \b_reg[7]_i_9_n_0\,
      S => fsel(2)
    );
c_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(5),
      I1 => \^q\(5),
      O => c_i_10_n_0
    );
c_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(4),
      I1 => \^q\(4),
      O => c_i_11_n_0
    );
c_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^c_reg\(7),
      O => c_i_13_n_0
    );
c_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^c_reg\(6),
      O => c_i_14_n_0
    );
c_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^c_reg\(5),
      O => c_i_15_n_0
    );
c_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^c_reg\(4),
      O => c_i_16_n_0
    );
c_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(3),
      I1 => \^q\(3),
      O => c_i_17_n_0
    );
c_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(2),
      I1 => \^q\(2),
      O => c_i_18_n_0
    );
c_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(1),
      I1 => \^q\(1),
      O => c_i_19_n_0
    );
c_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^c_reg\(0),
      I1 => rrf,
      I2 => c_reg_i_3_n_3,
      I3 => addwf,
      I4 => c_reg_i_4_n_3,
      O => c_reg_0
    );
c_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(0),
      I1 => \^q\(0),
      O => c_i_20_n_0
    );
c_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^c_reg\(3),
      O => c_i_21_n_0
    );
c_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^c_reg\(2),
      O => c_i_22_n_0
    );
c_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^c_reg\(1),
      O => c_i_23_n_0
    );
c_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^c_reg\(0),
      O => c_i_24_n_0
    );
c_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(7),
      I1 => \^q\(7),
      O => c_i_8_n_0
    );
c_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(6),
      I1 => \^q\(6),
      O => c_i_9_n_0
    );
c_reg_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => c_reg_i_12_n_0,
      CO(2) => c_reg_i_12_n_1,
      CO(1) => c_reg_i_12_n_2,
      CO(0) => c_reg_i_12_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \^c_reg\(3 downto 0),
      O(3) => c_reg_i_12_n_4,
      O(2) => c_reg_i_12_n_5,
      O(1) => c_reg_i_12_n_6,
      O(0) => c_reg_i_12_n_7,
      S(3) => c_i_21_n_0,
      S(2) => c_i_22_n_0,
      S(1) => c_i_23_n_0,
      S(0) => c_i_24_n_0
    );
c_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => c_reg_i_5_n_0,
      CO(3 downto 1) => NLW_c_reg_i_3_CO_UNCONNECTED(3 downto 1),
      CO(0) => c_reg_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_c_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
c_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => c_reg_i_6_n_0,
      CO(3 downto 1) => NLW_c_reg_i_4_CO_UNCONNECTED(3 downto 1),
      CO(0) => c_reg_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_c_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
c_reg_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => c_reg_i_7_n_0,
      CO(3) => c_reg_i_5_n_0,
      CO(2) => c_reg_i_5_n_1,
      CO(1) => c_reg_i_5_n_2,
      CO(0) => c_reg_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^c_reg\(7 downto 4),
      O(3) => c_reg_i_5_n_4,
      O(2) => c_reg_i_5_n_5,
      O(1) => c_reg_i_5_n_6,
      O(0) => c_reg_i_5_n_7,
      S(3) => c_i_8_n_0,
      S(2) => c_i_9_n_0,
      S(1) => c_i_10_n_0,
      S(0) => c_i_11_n_0
    );
c_reg_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => c_reg_i_12_n_0,
      CO(3) => c_reg_i_6_n_0,
      CO(2) => c_reg_i_6_n_1,
      CO(1) => c_reg_i_6_n_2,
      CO(0) => c_reg_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^c_reg\(7 downto 4),
      O(3) => c_reg_i_6_n_4,
      O(2) => c_reg_i_6_n_5,
      O(1) => c_reg_i_6_n_6,
      O(0) => c_reg_i_6_n_7,
      S(3) => c_i_13_n_0,
      S(2) => c_i_14_n_0,
      S(1) => c_i_15_n_0,
      S(0) => c_i_16_n_0
    );
c_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => c_reg_i_7_n_0,
      CO(2) => c_reg_i_7_n_1,
      CO(1) => c_reg_i_7_n_2,
      CO(0) => c_reg_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^c_reg\(3 downto 0),
      O(3) => c_reg_i_7_n_4,
      O(2) => c_reg_i_7_n_5,
      O(1) => c_reg_i_7_n_6,
      O(0) => c_reg_i_7_n_7,
      S(3) => c_i_17_n_0,
      S(2) => c_i_18_n_0,
      S(1) => c_i_19_n_0,
      S(0) => c_i_20_n_0
    );
dc_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB83CB80"
    )
        port map (
      I0 => dc_i_3_n_0,
      I1 => addwf,
      I2 => \^q\(3),
      I3 => \^c_reg\(3),
      I4 => dc_i_4_n_0,
      O => dc_reg
    );
dc_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^c_reg\(2),
      I2 => \^q\(0),
      I3 => \^c_reg\(0),
      I4 => \^c_reg\(1),
      I5 => \^q\(1),
      O => dc_i_3_n_0
    );
dc_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4DD4444DDDDD4DD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^c_reg\(2),
      I2 => \^c_reg\(0),
      I3 => \^q\(0),
      I4 => \^c_reg\(1),
      I5 => \^q\(1),
      O => dc_i_4_n_0
    );
\frs_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_0(0),
      D => D(0),
      Q => \^b_reg[7]_1\(0),
      R => '0'
    );
\frs_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_0(0),
      D => D(1),
      Q => \^b_reg[7]_1\(1),
      R => '0'
    );
\frs_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_0(0),
      D => D(2),
      Q => \^b_reg[7]_1\(2),
      R => '0'
    );
\frs_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_0(0),
      D => D(3),
      Q => \^b_reg[7]_1\(3),
      R => '0'
    );
\frs_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_0(0),
      D => D(4),
      Q => \^b_reg[7]_1\(4),
      R => '0'
    );
\frs_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_0(0),
      D => D(5),
      Q => \^b_reg[7]_1\(5),
      R => '0'
    );
\frs_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_0(0),
      D => D(6),
      Q => \^b_reg[7]_1\(6),
      R => '0'
    );
\frs_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_0(0),
      D => D(7),
      Q => \^b_reg[7]_1\(7),
      R => '0'
    );
\fsel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFF0000"
    )
        port map (
      I0 => romdata(4),
      I1 => romdata(3),
      I2 => romdata(1),
      I3 => romdata(2),
      I4 => romdata(0),
      I5 => \^b_reg[7]_1\(0),
      O => \fsel_reg[0]\
    );
\fsel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F1F0F0F0F0"
    )
        port map (
      I0 => romdata(4),
      I1 => romdata(3),
      I2 => romdata(1),
      I3 => romdata(2),
      I4 => romdata(0),
      I5 => \^b_reg[7]_1\(1),
      O => \fsel_reg[1]\
    );
\fsel[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FF00"
    )
        port map (
      I0 => romdata(4),
      I1 => romdata(3),
      I2 => romdata(1),
      I3 => romdata(2),
      I4 => romdata(0),
      I5 => \^b_reg[7]_1\(2),
      O => \fsel_reg[2]\
    );
\fsel[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00FF04"
    )
        port map (
      I0 => romdata(4),
      I1 => \^b_reg[7]_1\(3),
      I2 => romdata(0),
      I3 => romdata(3),
      I4 => romdata(2),
      I5 => romdata(1),
      O => \fsel_reg[3]\
    );
\fsel[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
        port map (
      I0 => \^b_reg[7]_1\(4),
      I1 => romdata(0),
      I2 => romdata(2),
      I3 => romdata(1),
      I4 => romdata(3),
      I5 => romdata(4),
      O => \fsel_reg[4]\
    );
osc2_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mclr,
      O => \^trisa_reg[0]_0\
    );
\pc[0]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFF3FFAA00F3"
    )
        port map (
      I0 => \stack1_reg_n_0_[0]\,
      I1 => mclr,
      I2 => k(0),
      I3 => \^stack2_reg[9]_0\,
      I4 => \^stacklevel_reg[1]_0\,
      I5 => \stack2_reg_n_0_[0]\,
      O => data2(0)
    );
\pc[1]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFF3FFAA00F3"
    )
        port map (
      I0 => \stack1_reg_n_0_[1]\,
      I1 => mclr,
      I2 => k(1),
      I3 => \^stack2_reg[9]_0\,
      I4 => \^stacklevel_reg[1]_0\,
      I5 => \stack2_reg_n_0_[1]\,
      O => data2(1)
    );
\pc[2]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFF3FFAA00F3"
    )
        port map (
      I0 => \stack1_reg_n_0_[2]\,
      I1 => mclr,
      I2 => k(2),
      I3 => \^stack2_reg[9]_0\,
      I4 => \^stacklevel_reg[1]_0\,
      I5 => \stack2_reg_n_0_[2]\,
      O => data2(2)
    );
\pc[2]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CFF3C003C783C78"
    )
        port map (
      I0 => \^romaddr\(0),
      I1 => \^romaddr\(1),
      I2 => \^romaddr\(2),
      I3 => \pc1__0\,
      I4 => k(2),
      I5 => goto,
      O => \pc_reg[7]_P_0\(0)
    );
\pc[3]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFF3FFAA00F3"
    )
        port map (
      I0 => \stack1_reg_n_0_[3]\,
      I1 => mclr,
      I2 => k(3),
      I3 => \^stack2_reg[9]_0\,
      I4 => \^stacklevel_reg[1]_0\,
      I5 => \stack2_reg_n_0_[3]\,
      O => data2(3)
    );
\pc[3]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6065656F606A6A"
    )
        port map (
      I0 => \^romaddr\(3),
      I1 => \pc[3]_P_i_6_n_0\,
      I2 => \pc1__0\,
      I3 => k(3),
      I4 => goto,
      I5 => \pc[3]_P_i_7_n_0\,
      O => \pc_reg[7]_P_0\(1)
    );
\pc[3]_P_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^romaddr\(2),
      I1 => \^romaddr\(1),
      O => \pc[3]_P_i_6_n_0\
    );
\pc[3]_P_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^romaddr\(0),
      I1 => \^romaddr\(1),
      I2 => \^romaddr\(2),
      O => \pc[3]_P_i_7_n_0\
    );
\pc[4]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFF3FFAA00F3"
    )
        port map (
      I0 => \stack1_reg_n_0_[4]\,
      I1 => mclr,
      I2 => k(4),
      I3 => \^stack2_reg[9]_0\,
      I4 => \^stacklevel_reg[1]_0\,
      I5 => \stack2_reg_n_0_[4]\,
      O => data2(4)
    );
\pc[4]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6065656F606A6A"
    )
        port map (
      I0 => \^romaddr\(4),
      I1 => \pc[4]_P_i_6_n_0\,
      I2 => \pc1__0\,
      I3 => k(4),
      I4 => goto,
      I5 => \stack2[4]_i_2_n_0\,
      O => \pc_reg[7]_P_0\(2)
    );
\pc[4]_P_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^romaddr\(1),
      I1 => \^romaddr\(2),
      I2 => \^romaddr\(3),
      O => \pc[4]_P_i_6_n_0\
    );
\pc[5]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFF3FFAA00F3"
    )
        port map (
      I0 => \stack1_reg_n_0_[5]\,
      I1 => mclr,
      I2 => \^d\,
      I3 => \^stack2_reg[9]_0\,
      I4 => \^stacklevel_reg[1]_0\,
      I5 => \stack2_reg_n_0_[5]\,
      O => data2(5)
    );
\pc[5]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6065656F606A6A"
    )
        port map (
      I0 => \^romaddr\(5),
      I1 => \pc[5]_P_i_6_n_0\,
      I2 => \pc1__0\,
      I3 => \^d\,
      I4 => goto,
      I5 => \stack2[5]_i_2_n_0\,
      O => \pc_reg[7]_P_0\(3)
    );
\pc[5]_P_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^romaddr\(1),
      I1 => \^romaddr\(2),
      I2 => \^romaddr\(3),
      I3 => \^romaddr\(4),
      O => \pc[5]_P_i_6_n_0\
    );
\pc[6]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFF3FFAA00F3"
    )
        port map (
      I0 => \stack1_reg_n_0_[6]\,
      I1 => mclr,
      I2 => k(5),
      I3 => \^stack2_reg[9]_0\,
      I4 => \^stacklevel_reg[1]_0\,
      I5 => \stack2_reg_n_0_[6]\,
      O => data2(6)
    );
\pc[6]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6065656F606A6A"
    )
        port map (
      I0 => \^romaddr\(6),
      I1 => \pc[6]_P_i_6_n_0\,
      I2 => \pc1__0\,
      I3 => k(5),
      I4 => goto,
      I5 => \stack2[6]_i_2_n_0\,
      O => \pc_reg[7]_P_0\(4)
    );
\pc[6]_P_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^romaddr\(5),
      I1 => \pc[5]_P_i_6_n_0\,
      O => \pc[6]_P_i_6_n_0\
    );
\pc[7]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFF3FFAA00F3"
    )
        port map (
      I0 => \stack1_reg_n_0_[7]\,
      I1 => mclr,
      I2 => k(6),
      I3 => \^stack2_reg[9]_0\,
      I4 => \^stacklevel_reg[1]_0\,
      I5 => \stack2_reg_n_0_[7]\,
      O => data2(7)
    );
\pc[7]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6065656F606A6A"
    )
        port map (
      I0 => \^romaddr\(7),
      I1 => \pc[8]_P_i_6_n_0\,
      I2 => \pc1__0\,
      I3 => k(6),
      I4 => goto,
      I5 => \stack2[7]_i_2_n_0\,
      O => \pc_reg[7]_P_0\(5)
    );
\pc[8]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBBB88B8"
    )
        port map (
      I0 => data1(8),
      I1 => call,
      I2 => data3(8),
      I3 => retlw,
      I4 => \pc[8]_P_i_4_n_0\,
      I5 => \k_reg[2]\,
      O => \pc[8]_P_i_1_n_0\
    );
\pc[8]_P_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^stack2_reg[9]_0\,
      I1 => mclr,
      O => data1(8)
    );
\pc[8]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6065656F606A6A"
    )
        port map (
      I0 => \^romaddr\(8),
      I1 => \pc[8]_P_i_5_n_0\,
      I2 => \pc1__0\,
      I3 => longk(0),
      I4 => goto,
      I5 => \stack2[8]_i_2_n_0\,
      O => data3(8)
    );
\pc[8]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECEFE0E300000000"
    )
        port map (
      I0 => \stack2_reg_n_0_[8]\,
      I1 => \^stacklevel_reg[1]_0\,
      I2 => \^stack2_reg[9]_0\,
      I3 => mclr,
      I4 => \stack1_reg_n_0_[8]\,
      I5 => retlw,
      O => \pc[8]_P_i_4_n_0\
    );
\pc[8]_P_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^romaddr\(7),
      I1 => \pc[8]_P_i_6_n_0\,
      O => \pc[8]_P_i_5_n_0\
    );
\pc[8]_P_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^romaddr\(6),
      I1 => \pc[6]_P_i_6_n_0\,
      O => \pc[8]_P_i_6_n_0\
    );
\pc[9]_P_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^romaddr\(8),
      I1 => \pc[8]_P_i_5_n_0\,
      I2 => \^romaddr\(9),
      O => pc01_in(9)
    );
\pc[9]_P_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mclr,
      O => \^regfile_reg[23][7]_0\
    );
\pc[9]_P_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF2CE32000000000"
    )
        port map (
      I0 => \stack2_reg_n_0_[9]\,
      I1 => \^stacklevel_reg[1]_0\,
      I2 => \^stack2_reg[9]_0\,
      I3 => \^pc_reg[9]_p_1\(0),
      I4 => \stack1_reg_n_0_[9]\,
      I5 => retlw,
      O => \pc_reg[9]_P_3\
    );
\pc[9]_P_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \pc0__9\(9),
      I1 => goto,
      I2 => \^pc_reg[9]_p_0\,
      I3 => \pc1__0\,
      I4 => pc01_in(9),
      I5 => retlw,
      O => \pc_reg[9]_P_2\
    );
\pc[9]_P_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^pc_reg[9]_p_0\,
      I1 => \^stack2_reg[9]_0\,
      I2 => mclr,
      O => \^pc_reg[9]_p_1\(0)
    );
\pc_reg[0]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \yi_reg[0]_P\,
      PRE => \^regfile_reg[23][7]_0\,
      Q => \^romaddr\(0)
    );
\pc_reg[1]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \yi_reg[1]_P\,
      PRE => \^regfile_reg[23][7]_0\,
      Q => \^romaddr\(1)
    );
\pc_reg[2]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \yi_reg[2]_P\,
      PRE => \^regfile_reg[23][7]_0\,
      Q => \^romaddr\(2)
    );
\pc_reg[3]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \yi_reg[3]_P\,
      PRE => \^regfile_reg[23][7]_0\,
      Q => \^romaddr\(3)
    );
\pc_reg[4]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \yi_reg[4]_P\,
      PRE => \^regfile_reg[23][7]_0\,
      Q => \^romaddr\(4)
    );
\pc_reg[5]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \yi_reg[5]_P\,
      PRE => \^regfile_reg[23][7]_0\,
      Q => \^romaddr\(5)
    );
\pc_reg[6]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \yi_reg[6]_P\,
      PRE => \^regfile_reg[23][7]_0\,
      Q => \^romaddr\(6)
    );
\pc_reg[7]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \yi_reg[7]_P\,
      PRE => \^regfile_reg[23][7]_0\,
      Q => \^romaddr\(7)
    );
\pc_reg[8]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \pc[8]_P_i_1_n_0\,
      PRE => \^regfile_reg[23][7]_0\,
      Q => \^romaddr\(8)
    );
\pc_reg[9]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => call_reg,
      PRE => \^regfile_reg[23][7]_0\,
      Q => \^romaddr\(9)
    );
\regfile[31][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mclr,
      O => \regfile[31][0]_i_1_n_0\
    );
\regfile[31][6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mclr,
      O => \regfile[31][6]_i_1_n_0\
    );
\regfile_reg[10][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_20(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[10]_21\(0)
    );
\regfile_reg[10][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_20(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[10]_21\(1)
    );
\regfile_reg[10][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_20(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[10]_21\(2)
    );
\regfile_reg[10][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_20(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[10]_21\(3)
    );
\regfile_reg[10][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_20(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[10]_21\(4)
    );
\regfile_reg[10][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_20(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[10]_21\(5)
    );
\regfile_reg[10][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_20(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[10]_21\(6)
    );
\regfile_reg[10][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_20(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[10]_21\(7)
    );
\regfile_reg[11][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_19(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[11]_20\(0)
    );
\regfile_reg[11][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_19(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[11]_20\(1)
    );
\regfile_reg[11][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_19(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[11]_20\(2)
    );
\regfile_reg[11][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_19(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[11]_20\(3)
    );
\regfile_reg[11][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_19(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[11]_20\(4)
    );
\regfile_reg[11][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_19(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[11]_20\(5)
    );
\regfile_reg[11][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_19(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[11]_20\(6)
    );
\regfile_reg[11][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_19(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[11]_20\(7)
    );
\regfile_reg[12][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_18(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[12]_19\(0)
    );
\regfile_reg[12][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_18(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[12]_19\(1)
    );
\regfile_reg[12][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_18(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[12]_19\(2)
    );
\regfile_reg[12][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_18(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[12]_19\(3)
    );
\regfile_reg[12][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_18(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[12]_19\(4)
    );
\regfile_reg[12][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_18(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[12]_19\(5)
    );
\regfile_reg[12][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_18(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[12]_19\(6)
    );
\regfile_reg[12][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_18(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[12]_19\(7)
    );
\regfile_reg[13][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_17(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[13]_18\(0)
    );
\regfile_reg[13][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_17(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[13]_18\(1)
    );
\regfile_reg[13][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_17(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[13]_18\(2)
    );
\regfile_reg[13][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_17(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[13]_18\(3)
    );
\regfile_reg[13][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_17(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[13]_18\(4)
    );
\regfile_reg[13][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_17(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[13]_18\(5)
    );
\regfile_reg[13][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_17(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[13]_18\(6)
    );
\regfile_reg[13][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_17(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[13]_18\(7)
    );
\regfile_reg[14][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_16(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[14]_17\(0)
    );
\regfile_reg[14][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_16(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[14]_17\(1)
    );
\regfile_reg[14][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_16(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[14]_17\(2)
    );
\regfile_reg[14][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_16(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[14]_17\(3)
    );
\regfile_reg[14][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_16(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[14]_17\(4)
    );
\regfile_reg[14][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_16(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[14]_17\(5)
    );
\regfile_reg[14][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_16(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[14]_17\(6)
    );
\regfile_reg[14][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_16(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[14]_17\(7)
    );
\regfile_reg[15][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_15(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[15]_16\(0)
    );
\regfile_reg[15][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_15(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[15]_16\(1)
    );
\regfile_reg[15][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_15(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[15]_16\(2)
    );
\regfile_reg[15][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_15(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[15]_16\(3)
    );
\regfile_reg[15][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_15(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[15]_16\(4)
    );
\regfile_reg[15][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_15(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[15]_16\(5)
    );
\regfile_reg[15][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_15(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[15]_16\(6)
    );
\regfile_reg[15][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_15(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[15]_16\(7)
    );
\regfile_reg[16][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_14(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[16]_15\(0)
    );
\regfile_reg[16][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_14(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[16]_15\(1)
    );
\regfile_reg[16][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_14(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[16]_15\(2)
    );
\regfile_reg[16][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_14(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[16]_15\(3)
    );
\regfile_reg[16][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_14(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[16]_15\(4)
    );
\regfile_reg[16][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_14(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[16]_15\(5)
    );
\regfile_reg[16][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_14(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[16]_15\(6)
    );
\regfile_reg[16][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_14(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[16]_15\(7)
    );
\regfile_reg[17][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_13(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[17]_14\(0)
    );
\regfile_reg[17][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_13(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[17]_14\(1)
    );
\regfile_reg[17][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_13(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[17]_14\(2)
    );
\regfile_reg[17][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_13(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[17]_14\(3)
    );
\regfile_reg[17][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_13(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[17]_14\(4)
    );
\regfile_reg[17][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_13(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[17]_14\(5)
    );
\regfile_reg[17][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_13(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[17]_14\(6)
    );
\regfile_reg[17][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_13(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[17]_14\(7)
    );
\regfile_reg[18][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_12(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[18]_13\(0)
    );
\regfile_reg[18][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_12(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[18]_13\(1)
    );
\regfile_reg[18][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_12(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[18]_13\(2)
    );
\regfile_reg[18][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_12(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[18]_13\(3)
    );
\regfile_reg[18][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_12(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[18]_13\(4)
    );
\regfile_reg[18][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_12(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[18]_13\(5)
    );
\regfile_reg[18][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_12(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[18]_13\(6)
    );
\regfile_reg[18][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_12(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[18]_13\(7)
    );
\regfile_reg[19][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_11(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[19]_12\(0)
    );
\regfile_reg[19][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_11(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[19]_12\(1)
    );
\regfile_reg[19][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_11(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[19]_12\(2)
    );
\regfile_reg[19][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_11(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[19]_12\(3)
    );
\regfile_reg[19][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_11(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[19]_12\(4)
    );
\regfile_reg[19][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_11(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[19]_12\(5)
    );
\regfile_reg[19][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_11(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[19]_12\(6)
    );
\regfile_reg[19][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_11(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[19]_12\(7)
    );
\regfile_reg[20][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_10(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[20]_11\(0)
    );
\regfile_reg[20][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_10(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[20]_11\(1)
    );
\regfile_reg[20][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_10(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[20]_11\(2)
    );
\regfile_reg[20][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_10(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[20]_11\(3)
    );
\regfile_reg[20][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_10(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[20]_11\(4)
    );
\regfile_reg[20][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_10(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[20]_11\(5)
    );
\regfile_reg[20][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_10(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[20]_11\(6)
    );
\regfile_reg[20][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_10(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[20]_11\(7)
    );
\regfile_reg[21][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_9(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[21]_10\(0)
    );
\regfile_reg[21][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_9(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[21]_10\(1)
    );
\regfile_reg[21][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_9(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[21]_10\(2)
    );
\regfile_reg[21][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_9(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[21]_10\(3)
    );
\regfile_reg[21][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_9(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[21]_10\(4)
    );
\regfile_reg[21][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_9(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[21]_10\(5)
    );
\regfile_reg[21][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_9(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[21]_10\(6)
    );
\regfile_reg[21][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_9(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(7),
      Q => \regfile_reg[21]_10\(7)
    );
\regfile_reg[22][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_8(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[22]_9\(0)
    );
\regfile_reg[22][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_8(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[22]_9\(1)
    );
\regfile_reg[22][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_8(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[22]_9\(2)
    );
\regfile_reg[22][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_8(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[22]_9\(3)
    );
\regfile_reg[22][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_8(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[22]_9\(4)
    );
\regfile_reg[22][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_8(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[22]_9\(5)
    );
\regfile_reg[22][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_8(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[22]_9\(6)
    );
\regfile_reg[22][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_8(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[22]_9\(7)
    );
\regfile_reg[23][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_7(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[23]_8\(0)
    );
\regfile_reg[23][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_7(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[23]_8\(1)
    );
\regfile_reg[23][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_7(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[23]_8\(2)
    );
\regfile_reg[23][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_7(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[23]_8\(3)
    );
\regfile_reg[23][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_7(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[23]_8\(4)
    );
\regfile_reg[23][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_7(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[23]_8\(5)
    );
\regfile_reg[23][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_7(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[23]_8\(6)
    );
\regfile_reg[23][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_7(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(7),
      Q => \regfile_reg[23]_8\(7)
    );
\regfile_reg[24][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_6(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[24]_7\(0)
    );
\regfile_reg[24][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_6(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[24]_7\(1)
    );
\regfile_reg[24][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_6(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[24]_7\(2)
    );
\regfile_reg[24][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_6(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[24]_7\(3)
    );
\regfile_reg[24][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_6(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[24]_7\(4)
    );
\regfile_reg[24][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_6(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[24]_7\(5)
    );
\regfile_reg[24][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_6(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[24]_7\(6)
    );
\regfile_reg[24][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_6(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(7),
      Q => \regfile_reg[24]_7\(7)
    );
\regfile_reg[25][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_5(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[25]_6\(0)
    );
\regfile_reg[25][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_5(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[25]_6\(1)
    );
\regfile_reg[25][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_5(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[25]_6\(2)
    );
\regfile_reg[25][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_5(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[25]_6\(3)
    );
\regfile_reg[25][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_5(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[25]_6\(4)
    );
\regfile_reg[25][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_5(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[25]_6\(5)
    );
\regfile_reg[25][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_5(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[25]_6\(6)
    );
\regfile_reg[25][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_5(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(7),
      Q => \regfile_reg[25]_6\(7)
    );
\regfile_reg[26][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_4(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[26]_5\(0)
    );
\regfile_reg[26][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_4(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[26]_5\(1)
    );
\regfile_reg[26][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_4(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[26]_5\(2)
    );
\regfile_reg[26][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_4(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[26]_5\(3)
    );
\regfile_reg[26][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_4(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[26]_5\(4)
    );
\regfile_reg[26][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_4(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[26]_5\(5)
    );
\regfile_reg[26][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_4(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[26]_5\(6)
    );
\regfile_reg[26][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_4(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(7),
      Q => \regfile_reg[26]_5\(7)
    );
\regfile_reg[27][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_3(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[27]_4\(0)
    );
\regfile_reg[27][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_3(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[27]_4\(1)
    );
\regfile_reg[27][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_3(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[27]_4\(2)
    );
\regfile_reg[27][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_3(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[27]_4\(3)
    );
\regfile_reg[27][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_3(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[27]_4\(4)
    );
\regfile_reg[27][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_3(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[27]_4\(5)
    );
\regfile_reg[27][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_3(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[27]_4\(6)
    );
\regfile_reg[27][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_3(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(7),
      Q => \regfile_reg[27]_4\(7)
    );
\regfile_reg[28][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_2(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[28]_3\(0)
    );
\regfile_reg[28][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_2(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[28]_3\(1)
    );
\regfile_reg[28][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_2(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[28]_3\(2)
    );
\regfile_reg[28][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_2(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[28]_3\(3)
    );
\regfile_reg[28][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_2(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[28]_3\(4)
    );
\regfile_reg[28][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_2(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[28]_3\(5)
    );
\regfile_reg[28][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_2(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[28]_3\(6)
    );
\regfile_reg[28][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_2(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(7),
      Q => \regfile_reg[28]_3\(7)
    );
\regfile_reg[29][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_1(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[29]_2\(0)
    );
\regfile_reg[29][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_1(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[29]_2\(1)
    );
\regfile_reg[29][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_1(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[29]_2\(2)
    );
\regfile_reg[29][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_1(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[29]_2\(3)
    );
\regfile_reg[29][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_1(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[29]_2\(4)
    );
\regfile_reg[29][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_1(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[29]_2\(5)
    );
\regfile_reg[29][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_1(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[29]_2\(6)
    );
\regfile_reg[29][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_1(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(7),
      Q => \regfile_reg[29]_2\(7)
    );
\regfile_reg[30][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_0(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[30]_1\(0)
    );
\regfile_reg[30][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_0(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[30]_1\(1)
    );
\regfile_reg[30][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_0(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[30]_1\(2)
    );
\regfile_reg[30][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_0(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[30]_1\(3)
    );
\regfile_reg[30][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_0(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[30]_1\(4)
    );
\regfile_reg[30][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_0(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[30]_1\(5)
    );
\regfile_reg[30][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_0(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[30]_1\(6)
    );
\regfile_reg[30][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_0(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(7),
      Q => \regfile_reg[30]_1\(7)
    );
\regfile_reg[31][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[31]_0\(0)
    );
\regfile_reg[31][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[31]_0\(1)
    );
\regfile_reg[31][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[31]_0\(2)
    );
\regfile_reg[31][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[31]_0\(3)
    );
\regfile_reg[31][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[31]_0\(4)
    );
\regfile_reg[31][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[31]_0\(5)
    );
\regfile_reg[31][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg(0),
      CLR => \regfile[31][6]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[31]_0\(6)
    );
\regfile_reg[31][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(7),
      Q => \regfile_reg[31]_0\(7)
    );
\regfile_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_23(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(0),
      Q => \regfile_reg[7]_24\(0)
    );
\regfile_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_23(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(1),
      Q => \regfile_reg[7]_24\(1)
    );
\regfile_reg[7][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_23(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(2),
      Q => \regfile_reg[7]_24\(2)
    );
\regfile_reg[7][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_23(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(3),
      Q => \regfile_reg[7]_24\(3)
    );
\regfile_reg[7][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_23(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(4),
      Q => \regfile_reg[7]_24\(4)
    );
\regfile_reg[7][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_23(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(5),
      Q => \regfile_reg[7]_24\(5)
    );
\regfile_reg[7][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_23(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(6),
      Q => \regfile_reg[7]_24\(6)
    );
\regfile_reg[7][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_23(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(7),
      Q => \regfile_reg[7]_24\(7)
    );
\regfile_reg[8][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_22(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[8]_23\(0)
    );
\regfile_reg[8][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_22(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[8]_23\(1)
    );
\regfile_reg[8][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_22(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[8]_23\(2)
    );
\regfile_reg[8][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_22(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[8]_23\(3)
    );
\regfile_reg[8][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_22(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[8]_23\(4)
    );
\regfile_reg[8][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_22(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[8]_23\(5)
    );
\regfile_reg[8][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_22(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[8]_23\(6)
    );
\regfile_reg[8][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_22(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[8]_23\(7)
    );
\regfile_reg[9][0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_21(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(0),
      Q => \regfile_reg[9]_22\(0)
    );
\regfile_reg[9][1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_21(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(1),
      Q => \regfile_reg[9]_22\(1)
    );
\regfile_reg[9][2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_21(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(2),
      Q => \regfile_reg[9]_22\(2)
    );
\regfile_reg[9][3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_21(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(3),
      Q => \regfile_reg[9]_22\(3)
    );
\regfile_reg[9][4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_21(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(4),
      Q => \regfile_reg[9]_22\(4)
    );
\regfile_reg[9][5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_21(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(5),
      Q => \regfile_reg[9]_22\(5)
    );
\regfile_reg[9][6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_21(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(6),
      Q => \regfile_reg[9]_22\(6)
    );
\regfile_reg[9][7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => d_reg_21(0),
      CLR => \regfile[31][0]_i_1_n_0\,
      D => D(7),
      Q => \regfile_reg[9]_22\(7)
    );
\rtccount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => E(0),
      D => D(0),
      Q => \rtccount_reg_n_0_[0]\,
      R => '0'
    );
\rtccount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => E(0),
      D => D(1),
      Q => \rtccount_reg_n_0_[1]\,
      R => '0'
    );
\rtccount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => E(0),
      D => D(2),
      Q => \rtccount_reg_n_0_[2]\,
      R => '0'
    );
\rtccount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => E(0),
      D => D(3),
      Q => \rtccount_reg_n_0_[3]\,
      R => '0'
    );
\rtccount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => E(0),
      D => D(4),
      Q => \rtccount_reg_n_0_[4]\,
      R => '0'
    );
\rtccount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => E(0),
      D => D(5),
      Q => \rtccount_reg_n_0_[5]\,
      R => '0'
    );
\rtccount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => E(0),
      D => D(6),
      Q => \rtccount_reg_n_0_[6]\,
      R => '0'
    );
\rtccount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => E(0),
      D => D(7),
      Q => \rtccount_reg_n_0_[7]\,
      R => '0'
    );
skip_C_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => z_i_10_n_0,
      I1 => incfsz,
      I2 => skip_C_i_4_n_0,
      I3 => decfsz,
      I4 => skip_reg_LDC_i_3_n_0,
      O => skip_reg_C_0
    );
skip_C_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => z_i_18_n_0,
      I1 => \^c_reg\(1),
      I2 => \^c_reg\(0),
      I3 => \^c_reg\(3),
      I4 => \^c_reg\(2),
      O => skip_C_i_4_n_0
    );
skip_reg_LDC_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => skip_reg_LDC_i_3_n_0,
      I1 => mclr,
      O => skip_reg_P
    );
skip_reg_LDC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mclr,
      I1 => skip_reg_LDC_i_3_n_0,
      O => skip_reg_C
    );
skip_reg_LDC_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A80202A"
    )
        port map (
      I0 => mclr,
      I1 => skip_reg_LDC_i_4_n_0,
      I2 => k(6),
      I3 => skip_reg_LDC_i_5_n_0,
      I4 => btfss,
      O => skip_reg_LDC_i_3_n_0
    );
skip_reg_LDC_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^c_reg\(7),
      I1 => \^c_reg\(6),
      I2 => k(5),
      I3 => \^c_reg\(5),
      I4 => \^d\,
      I5 => \^c_reg\(4),
      O => skip_reg_LDC_i_4_n_0
    );
skip_reg_LDC_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^c_reg\(3),
      I1 => \^c_reg\(2),
      I2 => k(5),
      I3 => \^c_reg\(1),
      I4 => \^d\,
      I5 => \^c_reg\(0),
      O => skip_reg_LDC_i_5_n_0
    );
\stack1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => call_reg_2(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[0]_i_1_n_0\,
      Q => \stack1_reg_n_0_[0]\
    );
\stack1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => call_reg_2(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[1]_i_1_n_0\,
      Q => \stack1_reg_n_0_[1]\
    );
\stack1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => call_reg_2(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[2]_i_1_n_0\,
      Q => \stack1_reg_n_0_[2]\
    );
\stack1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => call_reg_2(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[3]_i_1_n_0\,
      Q => \stack1_reg_n_0_[3]\
    );
\stack1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => call_reg_2(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[4]_i_1_n_0\,
      Q => \stack1_reg_n_0_[4]\
    );
\stack1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => call_reg_2(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[5]_i_1_n_0\,
      Q => \stack1_reg_n_0_[5]\
    );
\stack1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => call_reg_2(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[6]_i_1_n_0\,
      Q => \stack1_reg_n_0_[6]\
    );
\stack1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => call_reg_2(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[7]_i_1_n_0\,
      Q => \stack1_reg_n_0_[7]\
    );
\stack1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => call_reg_2(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[8]_i_1_n_0\,
      Q => \stack1_reg_n_0_[8]\
    );
\stack1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => call_reg_2(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[9]_i_2_n_0\,
      Q => \stack1_reg_n_0_[9]\
    );
\stack2[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^romaddr\(0),
      I1 => \^stack2_reg[9]_0\,
      O => \stack2[0]_i_1_n_0\
    );
\stack2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^romaddr\(1),
      I1 => \^romaddr\(0),
      I2 => \^stack2_reg[9]_0\,
      O => \stack2[1]_i_1_n_0\
    );
\stack2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \^romaddr\(0),
      I1 => \^romaddr\(1),
      I2 => \^romaddr\(2),
      I3 => \^stack2_reg[9]_0\,
      O => \stack2[2]_i_1_n_0\
    );
\stack2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \^romaddr\(0),
      I1 => \^romaddr\(1),
      I2 => \^romaddr\(2),
      I3 => \^romaddr\(3),
      I4 => \^stack2_reg[9]_0\,
      O => \stack2[3]_i_1_n_0\
    );
\stack2[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^romaddr\(4),
      I1 => \stack2[4]_i_2_n_0\,
      I2 => \^stack2_reg[9]_0\,
      O => \stack2[4]_i_1_n_0\
    );
\stack2[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^romaddr\(0),
      I1 => \^romaddr\(1),
      I2 => \^romaddr\(2),
      I3 => \^romaddr\(3),
      O => \stack2[4]_i_2_n_0\
    );
\stack2[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^romaddr\(5),
      I1 => \stack2[5]_i_2_n_0\,
      I2 => \^stack2_reg[9]_0\,
      O => \stack2[5]_i_1_n_0\
    );
\stack2[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^romaddr\(4),
      I1 => \stack2[4]_i_2_n_0\,
      O => \stack2[5]_i_2_n_0\
    );
\stack2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^romaddr\(6),
      I1 => \stack2[6]_i_2_n_0\,
      I2 => \^stack2_reg[9]_0\,
      O => \stack2[6]_i_1_n_0\
    );
\stack2[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^romaddr\(5),
      I1 => \stack2[5]_i_2_n_0\,
      O => \stack2[6]_i_2_n_0\
    );
\stack2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^romaddr\(7),
      I1 => \stack2[7]_i_2_n_0\,
      I2 => \^stack2_reg[9]_0\,
      O => \stack2[7]_i_1_n_0\
    );
\stack2[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^romaddr\(6),
      I1 => \stack2[6]_i_2_n_0\,
      O => \stack2[7]_i_2_n_0\
    );
\stack2[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^romaddr\(8),
      I1 => \stack2[8]_i_2_n_0\,
      I2 => \^stack2_reg[9]_0\,
      O => \stack2[8]_i_1_n_0\
    );
\stack2[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^romaddr\(7),
      I1 => \stack2[7]_i_2_n_0\,
      O => \stack2[8]_i_2_n_0\
    );
\stack2[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pc0__9\(9),
      I1 => \^stack2_reg[9]_0\,
      O => \stack2[9]_i_2_n_0\
    );
\stack2[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^romaddr\(7),
      I1 => \^romaddr\(8),
      I2 => \stack2[7]_i_2_n_0\,
      I3 => \^romaddr\(9),
      O => \pc0__9\(9)
    );
\stack2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \stacklevel_reg[1]_1\(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[0]_i_1_n_0\,
      Q => \stack2_reg_n_0_[0]\
    );
\stack2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \stacklevel_reg[1]_1\(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[1]_i_1_n_0\,
      Q => \stack2_reg_n_0_[1]\
    );
\stack2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \stacklevel_reg[1]_1\(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[2]_i_1_n_0\,
      Q => \stack2_reg_n_0_[2]\
    );
\stack2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \stacklevel_reg[1]_1\(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[3]_i_1_n_0\,
      Q => \stack2_reg_n_0_[3]\
    );
\stack2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \stacklevel_reg[1]_1\(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[4]_i_1_n_0\,
      Q => \stack2_reg_n_0_[4]\
    );
\stack2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \stacklevel_reg[1]_1\(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[5]_i_1_n_0\,
      Q => \stack2_reg_n_0_[5]\
    );
\stack2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \stacklevel_reg[1]_1\(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[6]_i_1_n_0\,
      Q => \stack2_reg_n_0_[6]\
    );
\stack2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \stacklevel_reg[1]_1\(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[7]_i_1_n_0\,
      Q => \stack2_reg_n_0_[7]\
    );
\stack2_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \stacklevel_reg[1]_1\(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[8]_i_1_n_0\,
      Q => \stack2_reg_n_0_[8]\
    );
\stack2_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \stacklevel_reg[1]_1\(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => \stack2[9]_i_2_n_0\,
      Q => \stack2_reg_n_0_[9]\
    );
\stacklevel_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => '1',
      CLR => \^regfile_reg[23][7]_0\,
      D => call_reg_1,
      Q => \^stacklevel_reg[1]_0\
    );
\stacklevel_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => '1',
      CLR => \^regfile_reg[23][7]_0\,
      D => call_reg_0,
      Q => \^stack2_reg[9]_0\
    );
\status_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => '1',
      CLR => \^regfile_reg[23][7]_0\,
      D => c_reg_1,
      Q => \^status_c\
    );
\status_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => '1',
      CLR => \^regfile_reg[23][7]_0\,
      D => dc_reg_0,
      Q => \^status_reg[1]_0\
    );
\status_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => '1',
      CLR => \^regfile_reg[23][7]_0\,
      D => z_reg_0,
      Q => \^status_reg[2]_0\
    );
\status_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => status0,
      CLR => \^regfile_reg[23][7]_0\,
      D => D(3),
      Q => \status_reg_n_0_[3]\
    );
\status_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => status0,
      CLR => \^regfile_reg[23][7]_0\,
      D => D(4),
      Q => \status_reg_n_0_[4]\
    );
\status_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => status0,
      CLR => \^regfile_reg[23][7]_0\,
      D => D(5),
      Q => \^pc_reg[9]_p_0\
    );
\status_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => status0,
      CLR => \^regfile_reg[23][7]_0\,
      D => D(6),
      Q => \status_reg_n_0_[6]\
    );
\status_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => status0,
      CLR => \^regfile_reg[23][7]_0\,
      D => D(7),
      Q => \status_reg_n_0_[7]\
    );
\trisa_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg(0),
      D => D(0),
      PRE => \^trisa_reg[0]_0\,
      Q => \b_reg[3]_1\(0)
    );
\trisa_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg(0),
      D => D(1),
      PRE => \^trisa_reg[0]_0\,
      Q => \b_reg[3]_1\(1)
    );
\trisa_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg(0),
      D => D(2),
      PRE => \^trisa_reg[0]_0\,
      Q => \b_reg[3]_1\(2)
    );
\trisa_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg(0),
      D => D(3),
      PRE => \^trisa_reg[0]_0\,
      Q => \b_reg[3]_1\(3)
    );
\trisb_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg_0(0),
      D => D(0),
      PRE => \^regfile_reg[23][7]_0\,
      Q => \b_reg[7]_2\(0)
    );
\trisb_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg_0(0),
      D => D(1),
      PRE => \^regfile_reg[23][7]_0\,
      Q => \b_reg[7]_2\(1)
    );
\trisb_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg_0(0),
      D => D(2),
      PRE => \^regfile_reg[23][7]_0\,
      Q => \b_reg[7]_2\(2)
    );
\trisb_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg_0(0),
      D => D(3),
      PRE => \^regfile_reg[23][7]_0\,
      Q => \b_reg[7]_2\(3)
    );
\trisb_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg_0(0),
      D => D(4),
      PRE => \^regfile_reg[23][7]_0\,
      Q => \b_reg[7]_2\(4)
    );
\trisb_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg_0(0),
      D => D(5),
      PRE => \^regfile_reg[23][7]_0\,
      Q => \b_reg[7]_2\(5)
    );
\trisb_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg_0(0),
      D => D(6),
      PRE => \^regfile_reg[23][7]_0\,
      Q => \b_reg[7]_2\(6)
    );
\trisb_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg_0(0),
      D => D(7),
      PRE => \^regfile_reg[23][7]_0\,
      Q => \b_reg[7]_2\(7)
    );
\w_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_1(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(0),
      Q => \^q\(0)
    );
\w_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_1(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(1),
      Q => \^q\(1)
    );
\w_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_1(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(2),
      Q => \^q\(2)
    );
\w_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_1(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(3),
      Q => \^q\(3)
    );
\w_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_1(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(4),
      Q => \^q\(4)
    );
\w_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_1(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(5),
      Q => \^q\(5)
    );
\w_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_1(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(6),
      Q => \^q\(6)
    );
\w_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_1(0),
      CLR => \^regfile_reg[23][7]_0\,
      D => D(7),
      Q => \^q\(7)
    );
\yi_reg[0]_LDC_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF0EEF0EE66EE00"
    )
        port map (
      I0 => \^c_reg\(0),
      I1 => \^q\(0),
      I2 => c_reg_i_7_n_7,
      I3 => iorwf,
      I4 => xorwf,
      I5 => addwf,
      O => \yi_reg[0]_C\
    );
\yi_reg[0]_LDC_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AA33AA00"
    )
        port map (
      I0 => \^status_c\,
      I1 => \^c_reg\(0),
      I2 => \^c_reg\(1),
      I3 => rlf,
      I4 => decfsz,
      I5 => rrf,
      O => \yi_reg[0]_C_2\
    );
\yi_reg[0]_LDC_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0FAA0FAACCAA00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^c_reg\(4),
      I2 => \^c_reg\(0),
      I3 => option,
      I4 => swapf,
      I5 => incfsz,
      O => \yi_reg[0]_C_3\
    );
\yi_reg[0]_LDC_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFF32FF320002"
    )
        port map (
      I0 => \yi_reg[0]_LDC_i_7_n_0\,
      I1 => andlw,
      I2 => iorlw,
      I3 => xorlw,
      I4 => \^c_reg\(0),
      I5 => \^q\(0),
      O => \yi_reg[0]_C_0\
    );
\yi_reg[0]_LDC_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => \^c_reg\(0),
      I1 => \^q\(0),
      I2 => movlw,
      I3 => tris,
      O => \yi_reg[0]_LDC_i_7_n_0\
    );
\yi_reg[0]_LDC_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8855885588F08800"
    )
        port map (
      I0 => \^c_reg\(0),
      I1 => \^q\(0),
      I2 => c_reg_i_12_n_7,
      I3 => andwf,
      I4 => subwf,
      I5 => decf,
      O => \yi_reg[0]_C_1\
    );
\yi_reg[1]_LDC_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF0EEF0EE66EE00"
    )
        port map (
      I0 => \^c_reg\(1),
      I1 => \^q\(1),
      I2 => c_reg_i_7_n_6,
      I3 => iorwf,
      I4 => xorwf,
      I5 => addwf,
      O => \yi_reg[1]_C\
    );
\yi_reg[1]_LDC_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AA99AA00"
    )
        port map (
      I0 => \^c_reg\(0),
      I1 => \^c_reg\(1),
      I2 => \^c_reg\(2),
      I3 => rlf,
      I4 => decfsz,
      I5 => rrf,
      O => \yi_reg[1]_C_1\
    );
\yi_reg[1]_LDC_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(0),
      I1 => \^c_reg\(1),
      O => \A3/data5\(1)
    );
\yi_reg[1]_LDC_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFF32FF320002"
    )
        port map (
      I0 => \yi_reg[1]_LDC_i_7_n_0\,
      I1 => andlw,
      I2 => iorlw,
      I3 => xorlw,
      I4 => \^c_reg\(1),
      I5 => \^q\(1),
      O => \yi_reg[1]_C_0\
    );
\yi_reg[1]_LDC_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => \^c_reg\(1),
      I1 => \^q\(1),
      I2 => movlw,
      I3 => tris,
      O => \yi_reg[1]_LDC_i_7_n_0\
    );
\yi_reg[1]_LDC_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0FAA0FAACCAA00"
    )
        port map (
      I0 => z_i_31_n_0,
      I1 => c_reg_i_12_n_6,
      I2 => \A3/data5\(1),
      I3 => andwf,
      I4 => subwf,
      I5 => decf,
      O => \yi_reg[1]_C_2\
    );
\yi_reg[2]_LDC_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF0EEF0EE66EE00"
    )
        port map (
      I0 => \^c_reg\(2),
      I1 => \^q\(2),
      I2 => c_reg_i_7_n_5,
      I3 => iorwf,
      I4 => xorwf,
      I5 => addwf,
      O => \yi_reg[2]_C\
    );
\yi_reg[2]_LDC_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AA33AA00"
    )
        port map (
      I0 => \^c_reg\(1),
      I1 => \yi_reg[2]_LDC_i_14_n_0\,
      I2 => \^c_reg\(3),
      I3 => rlf,
      I4 => decfsz,
      I5 => rrf,
      O => \yi_reg[2]_LDC_i_11_n_0\
    );
\yi_reg[2]_LDC_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A556A556AAA6A00"
    )
        port map (
      I0 => \^c_reg\(2),
      I1 => \^c_reg\(1),
      I2 => \^c_reg\(0),
      I3 => incf,
      I4 => movf,
      I5 => comf,
      O => \yi_reg[2]_LDC_i_12_n_0\
    );
\yi_reg[2]_LDC_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^c_reg\(6),
      I2 => \A3/data5\(2),
      I3 => option,
      I4 => swapf,
      I5 => incfsz,
      O => \yi_reg[2]_LDC_i_13_n_0\
    );
\yi_reg[2]_LDC_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^c_reg\(1),
      I1 => \^c_reg\(0),
      I2 => \^c_reg\(2),
      O => \yi_reg[2]_LDC_i_14_n_0\
    );
\yi_reg[2]_LDC_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^c_reg\(0),
      I1 => \^c_reg\(1),
      I2 => \^c_reg\(2),
      O => \A3/data5\(2)
    );
\yi_reg[2]_LDC_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFF32FF320002"
    )
        port map (
      I0 => \yi_reg[2]_LDC_i_7_n_0\,
      I1 => andlw,
      I2 => iorlw,
      I3 => xorlw,
      I4 => \^c_reg\(2),
      I5 => \^q\(2),
      O => \yi_reg[2]_C_0\
    );
\yi_reg[2]_LDC_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \yi_reg[2]_LDC_i_11_n_0\,
      I1 => incfsz_reg,
      I2 => rrf_reg,
      I3 => \yi_reg[2]_LDC_i_12_n_0\,
      I4 => \yi_reg[2]_LDC_i_13_n_0\,
      O => \yi_reg[2]_C_2\
    );
\yi_reg[2]_LDC_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => \^c_reg\(2),
      I1 => \^q\(2),
      I2 => movlw,
      I3 => tris,
      O => \yi_reg[2]_LDC_i_7_n_0\
    );
\yi_reg[2]_LDC_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0FAA0FAACCAA00"
    )
        port map (
      I0 => z_i_33_n_0,
      I1 => c_reg_i_12_n_5,
      I2 => \yi_reg[2]_LDC_i_14_n_0\,
      I3 => andwf,
      I4 => subwf,
      I5 => decf,
      O => \yi_reg[2]_C_1\
    );
\yi_reg[3]_LDC_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF0EEF0EE66EE00"
    )
        port map (
      I0 => \^c_reg\(3),
      I1 => \^q\(3),
      I2 => c_reg_i_7_n_4,
      I3 => iorwf,
      I4 => xorwf,
      I5 => addwf,
      O => \yi_reg[3]_C\
    );
\yi_reg[3]_LDC_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AA33AA00"
    )
        port map (
      I0 => \^c_reg\(2),
      I1 => \yi_reg[3]_LDC_i_15_n_0\,
      I2 => \^c_reg\(4),
      I3 => rlf,
      I4 => decfsz,
      I5 => rrf,
      O => \yi_reg[3]_C_3\
    );
\yi_reg[3]_LDC_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^c_reg\(7),
      I2 => \^yi_reg[7]_c_1\(0),
      I3 => option,
      I4 => swapf,
      I5 => incfsz,
      O => \yi_reg[3]_C_2\
    );
\yi_reg[3]_LDC_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^c_reg\(3),
      O => \yi_reg[3]_LDC_i_14_n_0\
    );
\yi_reg[3]_LDC_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \^c_reg\(2),
      I1 => \^c_reg\(0),
      I2 => \^c_reg\(1),
      I3 => \^c_reg\(3),
      O => \yi_reg[3]_LDC_i_15_n_0\
    );
\yi_reg[3]_LDC_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^c_reg\(1),
      I1 => \^c_reg\(0),
      I2 => \^c_reg\(2),
      I3 => \^c_reg\(3),
      O => \^yi_reg[7]_c_1\(0)
    );
\yi_reg[3]_LDC_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFF32FF320002"
    )
        port map (
      I0 => \yi_reg[3]_LDC_i_7_n_0\,
      I1 => andlw,
      I2 => iorlw,
      I3 => xorlw,
      I4 => \^c_reg\(3),
      I5 => \^q\(3),
      O => \yi_reg[3]_C_0\
    );
\yi_reg[3]_LDC_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => \^c_reg\(3),
      I1 => \^q\(3),
      I2 => movlw,
      I3 => tris,
      O => \yi_reg[3]_LDC_i_7_n_0\
    );
\yi_reg[3]_LDC_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0FAA0FAACCAA00"
    )
        port map (
      I0 => \yi_reg[3]_LDC_i_14_n_0\,
      I1 => c_reg_i_12_n_4,
      I2 => \yi_reg[3]_LDC_i_15_n_0\,
      I3 => andwf,
      I4 => subwf,
      I5 => decf,
      O => \yi_reg[3]_C_1\
    );
\yi_reg[4]_LDC_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF0EEF0EE66EE00"
    )
        port map (
      I0 => \^c_reg\(4),
      I1 => \^q\(4),
      I2 => c_reg_i_5_n_7,
      I3 => iorwf,
      I4 => xorwf,
      I5 => addwf,
      O => \yi_reg[4]_C\
    );
\yi_reg[4]_LDC_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AA33AA00"
    )
        port map (
      I0 => \^c_reg\(3),
      I1 => \yi_reg[4]_LDC_i_14_n_0\,
      I2 => \^c_reg\(5),
      I3 => rlf,
      I4 => decfsz,
      I5 => rrf,
      O => \yi_reg[4]_C_3\
    );
\yi_reg[4]_LDC_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^c_reg\(0),
      I2 => \^yi_reg[7]_c_1\(1),
      I3 => option,
      I4 => swapf,
      I5 => incfsz,
      O => \yi_reg[4]_C_2\
    );
\yi_reg[4]_LDC_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => \^c_reg\(3),
      I1 => \^c_reg\(1),
      I2 => \^c_reg\(0),
      I3 => \^c_reg\(2),
      I4 => \^c_reg\(4),
      O => \yi_reg[4]_LDC_i_14_n_0\
    );
\yi_reg[4]_LDC_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^c_reg\(2),
      I1 => \^c_reg\(0),
      I2 => \^c_reg\(1),
      I3 => \^c_reg\(3),
      I4 => \^c_reg\(4),
      O => \^yi_reg[7]_c_1\(1)
    );
\yi_reg[4]_LDC_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFF32FF320002"
    )
        port map (
      I0 => \yi_reg[4]_LDC_i_7_n_0\,
      I1 => andlw,
      I2 => iorlw,
      I3 => xorlw,
      I4 => \^c_reg\(4),
      I5 => \^q\(4),
      O => \yi_reg[4]_C_0\
    );
\yi_reg[4]_LDC_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => \^c_reg\(4),
      I1 => \^q\(4),
      I2 => movlw,
      I3 => tris,
      O => \yi_reg[4]_LDC_i_7_n_0\
    );
\yi_reg[4]_LDC_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0FAA0FAACCAA00"
    )
        port map (
      I0 => z_i_40_n_0,
      I1 => c_reg_i_6_n_7,
      I2 => \yi_reg[4]_LDC_i_14_n_0\,
      I3 => andwf,
      I4 => subwf,
      I5 => decf,
      O => \yi_reg[4]_C_1\
    );
\yi_reg[5]_LDC_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF0EEF0EE66EE00"
    )
        port map (
      I0 => \^c_reg\(5),
      I1 => \^q\(5),
      I2 => c_reg_i_5_n_6,
      I3 => iorwf,
      I4 => xorwf,
      I5 => addwf,
      O => \yi_reg[5]_C\
    );
\yi_reg[5]_LDC_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AA33AA00"
    )
        port map (
      I0 => \^c_reg\(4),
      I1 => \yi_reg[5]_LDC_i_14_n_0\,
      I2 => \^c_reg\(6),
      I3 => rlf,
      I4 => decfsz,
      I5 => rrf,
      O => \yi_reg[5]_C_3\
    );
\yi_reg[5]_LDC_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^c_reg\(1),
      I2 => \^yi_reg[7]_c_1\(2),
      I3 => option,
      I4 => swapf,
      I5 => incfsz,
      O => \yi_reg[5]_C_2\
    );
\yi_reg[5]_LDC_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \^c_reg\(4),
      I1 => \^c_reg\(2),
      I2 => \^c_reg\(0),
      I3 => \^c_reg\(1),
      I4 => \^c_reg\(3),
      I5 => \^c_reg\(5),
      O => \yi_reg[5]_LDC_i_14_n_0\
    );
\yi_reg[5]_LDC_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^c_reg\(3),
      I1 => \^c_reg\(1),
      I2 => \^c_reg\(0),
      I3 => \^c_reg\(2),
      I4 => \^c_reg\(4),
      I5 => \^c_reg\(5),
      O => \^yi_reg[7]_c_1\(2)
    );
\yi_reg[5]_LDC_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFF32FF320002"
    )
        port map (
      I0 => \yi_reg[5]_LDC_i_7_n_0\,
      I1 => andlw,
      I2 => iorlw,
      I3 => xorlw,
      I4 => \^c_reg\(5),
      I5 => \^q\(5),
      O => \yi_reg[5]_C_0\
    );
\yi_reg[5]_LDC_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => \^c_reg\(5),
      I1 => \^q\(5),
      I2 => movlw,
      I3 => tris,
      O => \yi_reg[5]_LDC_i_7_n_0\
    );
\yi_reg[5]_LDC_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0FAA0FAACCAA00"
    )
        port map (
      I0 => z_i_41_n_0,
      I1 => c_reg_i_6_n_6,
      I2 => \yi_reg[5]_LDC_i_14_n_0\,
      I3 => andwf,
      I4 => subwf,
      I5 => decf,
      O => \yi_reg[5]_C_1\
    );
\yi_reg[6]_LDC_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0FAA0FAACCAA00"
    )
        port map (
      I0 => \yi_reg[6]_LDC_i_17_n_0\,
      I1 => c_reg_i_6_n_5,
      I2 => \yi_reg[6]_LDC_i_18_n_0\,
      I3 => andwf,
      I4 => subwf,
      I5 => decf,
      O => \yi_reg[6]_C_1\
    );
\yi_reg[6]_LDC_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^c_reg\(4),
      I1 => \^c_reg\(2),
      I2 => \yi_reg[6]_LDC_i_19_n_0\,
      I3 => \^c_reg\(3),
      I4 => \^c_reg\(5),
      I5 => \^c_reg\(6),
      O => \^yi_reg[7]_c_1\(3)
    );
\yi_reg[6]_LDC_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000900090"
    )
        port map (
      I0 => \yi_reg[7]_LDC_i_21_n_0\,
      I1 => \^c_reg\(6),
      I2 => decfsz,
      I3 => rlf,
      I4 => \^c_reg\(7),
      I5 => rrf,
      O => \yi_reg[6]_C_3\
    );
\yi_reg[6]_LDC_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^c_reg\(6),
      O => \yi_reg[6]_LDC_i_17_n_0\
    );
\yi_reg[6]_LDC_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \yi_reg[7]_LDC_i_21_n_0\,
      I1 => \^c_reg\(6),
      O => \yi_reg[6]_LDC_i_18_n_0\
    );
\yi_reg[6]_LDC_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_reg\(1),
      I1 => \^c_reg\(0),
      O => \yi_reg[6]_LDC_i_19_n_0\
    );
\yi_reg[6]_LDC_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFF32FF320002"
    )
        port map (
      I0 => \yi_reg[6]_LDC_i_6_n_0\,
      I1 => andlw,
      I2 => iorlw,
      I3 => xorlw,
      I4 => \^c_reg\(6),
      I5 => \^q\(6),
      O => \yi_reg[6]_C_0\
    );
\yi_reg[6]_LDC_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => \^c_reg\(6),
      I1 => \^q\(6),
      I2 => movlw,
      I3 => tris,
      O => \yi_reg[6]_LDC_i_6_n_0\
    );
\yi_reg[6]_LDC_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF0EEF0EE66EE00"
    )
        port map (
      I0 => \^c_reg\(6),
      I1 => \^q\(6),
      I2 => c_reg_i_5_n_5,
      I3 => iorwf,
      I4 => xorwf,
      I5 => addwf,
      O => \yi_reg[6]_C\
    );
\yi_reg[6]_LDC_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^c_reg\(2),
      I2 => \^yi_reg[7]_c_1\(3),
      I3 => option,
      I4 => swapf,
      I5 => incfsz,
      O => \yi_reg[6]_C_2\
    );
\yi_reg[7]_LDC_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0FAA0FAACCAA00"
    )
        port map (
      I0 => \yi_reg[7]_LDC_i_18_n_0\,
      I1 => c_reg_i_6_n_4,
      I2 => \yi_reg[7]_LDC_i_19_n_0\,
      I3 => andwf,
      I4 => subwf,
      I5 => decf,
      O => \yi_reg[7]_C_2\
    );
\yi_reg[7]_LDC_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF0EEF0EE66EE00"
    )
        port map (
      I0 => \^c_reg\(7),
      I1 => \^q\(7),
      I2 => c_reg_i_5_n_4,
      I3 => iorwf,
      I4 => xorwf,
      I5 => addwf,
      O => \yi_reg[7]_C_0\
    );
\yi_reg[7]_LDC_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AA33AA00"
    )
        port map (
      I0 => \^c_reg\(6),
      I1 => \yi_reg[7]_LDC_i_19_n_0\,
      I2 => \^status_c\,
      I3 => rlf,
      I4 => decfsz,
      I5 => rrf,
      O => \yi_reg[7]_C_4\
    );
\yi_reg[7]_LDC_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^c_reg\(3),
      I2 => \^yi_reg[7]_c_1\(4),
      I3 => option,
      I4 => swapf,
      I5 => incfsz,
      O => \yi_reg[7]_C_3\
    );
\yi_reg[7]_LDC_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^c_reg\(7),
      O => \yi_reg[7]_LDC_i_18_n_0\
    );
\yi_reg[7]_LDC_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^c_reg\(6),
      I1 => \yi_reg[7]_LDC_i_21_n_0\,
      I2 => \^c_reg\(7),
      O => \yi_reg[7]_LDC_i_19_n_0\
    );
\yi_reg[7]_LDC_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \yi_reg[7]_LDC_i_22_n_0\,
      I1 => \^c_reg\(6),
      I2 => \^c_reg\(7),
      O => \^yi_reg[7]_c_1\(4)
    );
\yi_reg[7]_LDC_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^c_reg\(4),
      I1 => \^c_reg\(2),
      I2 => \^c_reg\(0),
      I3 => \^c_reg\(1),
      I4 => \^c_reg\(3),
      I5 => \^c_reg\(5),
      O => \yi_reg[7]_LDC_i_21_n_0\
    );
\yi_reg[7]_LDC_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^c_reg\(5),
      I1 => \^c_reg\(3),
      I2 => \^c_reg\(1),
      I3 => \^c_reg\(0),
      I4 => \^c_reg\(2),
      I5 => \^c_reg\(4),
      O => \yi_reg[7]_LDC_i_22_n_0\
    );
\yi_reg[7]_LDC_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFF32FF320002"
    )
        port map (
      I0 => \yi_reg[7]_LDC_i_9_n_0\,
      I1 => andlw,
      I2 => iorlw,
      I3 => xorlw,
      I4 => \^c_reg\(7),
      I5 => \^q\(7),
      O => \yi_reg[7]_C\
    );
\yi_reg[7]_LDC_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => \^c_reg\(7),
      I1 => \^q\(7),
      I2 => movlw,
      I3 => tris,
      O => \yi_reg[7]_LDC_i_9_n_0\
    );
z_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF54FFFFFF540000"
    )
        port map (
      I0 => andlw_reg,
      I1 => z_i_3_n_0,
      I2 => z_i_4_n_0,
      I3 => z_i_5_n_0,
      I4 => z0,
      I5 => z,
      O => z_reg
    );
z_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000001"
    )
        port map (
      I0 => \^c_reg\(5),
      I1 => \^c_reg\(4),
      I2 => z_i_20_n_0,
      I3 => \^c_reg\(7),
      I4 => \^c_reg\(6),
      I5 => z_i_21_n_0,
      O => z_i_10_n_0
    );
z_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001001"
    )
        port map (
      I0 => z_i_22_n_0,
      I1 => z_i_23_n_0,
      I2 => \^q\(6),
      I3 => \^c_reg\(6),
      I4 => z_i_24_n_0,
      I5 => z_i_25_n_0,
      O => z_i_11_n_0
    );
z_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => z_i_26_n_0,
      I1 => z_i_27_n_0,
      I2 => \^c_reg\(6),
      I3 => \^q\(6),
      I4 => z_i_28_n_0,
      I5 => z_i_29_n_0,
      O => z_i_12_n_0
    );
z_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010101"
    )
        port map (
      I0 => z_i_30_n_0,
      I1 => z_i_31_n_0,
      I2 => z_i_32_n_0,
      I3 => \^c_reg\(3),
      I4 => \^q\(3),
      I5 => z_i_33_n_0,
      O => z_i_13_n_0
    );
z_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => c_reg_i_5_n_7,
      I1 => c_reg_i_5_n_6,
      I2 => c_reg_i_5_n_4,
      I3 => c_reg_i_5_n_5,
      I4 => z_i_34_n_0,
      O => z_i_16_n_0
    );
z_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => z_i_11_n_0,
      I1 => xorwf,
      I2 => z_i_13_n_0,
      I3 => andwf,
      I4 => z_i_35_n_0,
      O => z_i_17_n_0
    );
z_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^c_reg\(7),
      I1 => \^c_reg\(6),
      I2 => \^c_reg\(4),
      I3 => \^c_reg\(5),
      O => z_i_18_n_0
    );
z_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^c_reg\(2),
      I1 => \^c_reg\(3),
      I2 => \^c_reg\(1),
      I3 => \^c_reg\(0),
      O => z_i_19_n_0
    );
z_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^c_reg\(3),
      I1 => \^c_reg\(1),
      I2 => \^c_reg\(0),
      I3 => \^c_reg\(2),
      O => z_i_20_n_0
    );
z_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^c_reg\(1),
      I1 => \^c_reg\(0),
      I2 => \^c_reg\(2),
      I3 => \^c_reg\(3),
      O => z_i_21_n_0
    );
z_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(5),
      I1 => \^q\(5),
      O => z_i_22_n_0
    );
z_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(4),
      I1 => \^q\(4),
      O => z_i_23_n_0
    );
z_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(7),
      I1 => \^q\(7),
      O => z_i_24_n_0
    );
z_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FF6"
    )
        port map (
      I0 => \^c_reg\(2),
      I1 => \^q\(2),
      I2 => \^c_reg\(3),
      I3 => \^q\(3),
      I4 => z_i_36_n_0,
      I5 => z_i_37_n_0,
      O => z_i_25_n_0
    );
z_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^c_reg\(5),
      O => z_i_26_n_0
    );
z_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^c_reg\(4),
      O => z_i_27_n_0
    );
z_i_28: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^c_reg\(7),
      O => z_i_28_n_0
    );
z_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^c_reg\(2),
      I2 => \^q\(3),
      I3 => \^c_reg\(3),
      I4 => z_i_38_n_0,
      I5 => z_i_39_n_0,
      O => z_i_29_n_0
    );
z_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF000000E2"
    )
        port map (
      I0 => z_i_7_n_0,
      I1 => movf,
      I2 => z_i_8_n_0,
      I3 => comf,
      I4 => incf,
      I5 => z_i_9_n_0,
      O => z_i_3_n_0
    );
z_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^c_reg\(7),
      I2 => \^q\(6),
      I3 => \^c_reg\(6),
      I4 => z_i_40_n_0,
      I5 => z_i_41_n_0,
      O => z_i_30_n_0
    );
z_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^c_reg\(1),
      O => z_i_31_n_0
    );
z_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^c_reg\(0),
      O => z_i_32_n_0
    );
z_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^c_reg\(2),
      O => z_i_33_n_0
    );
z_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => c_reg_i_7_n_6,
      I1 => c_reg_i_7_n_7,
      I2 => c_reg_i_7_n_4,
      I3 => c_reg_i_7_n_5,
      O => z_i_34_n_0
    );
z_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BBBBB888B8888"
    )
        port map (
      I0 => skip_C_i_4_n_0,
      I1 => decf,
      I2 => z_i_42_n_0,
      I3 => z_i_43_n_0,
      I4 => subwf,
      I5 => clrf_reg,
      O => z_i_35_n_0
    );
z_i_36: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(0),
      I1 => \^q\(0),
      O => z_i_36_n_0
    );
z_i_37: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c_reg\(1),
      I1 => \^q\(1),
      O => z_i_37_n_0
    );
z_i_38: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^c_reg\(0),
      O => z_i_38_n_0
    );
z_i_39: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^c_reg\(1),
      O => z_i_39_n_0
    );
z_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => z_i_10_n_0,
      I1 => incf,
      O => z_i_4_n_0
    );
z_i_40: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^c_reg\(4),
      O => z_i_40_n_0
    );
z_i_41: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^c_reg\(5),
      O => z_i_41_n_0
    );
z_i_42: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => c_reg_i_6_n_4,
      I1 => c_reg_i_6_n_5,
      I2 => c_reg_i_6_n_7,
      I3 => c_reg_i_6_n_6,
      O => z_i_42_n_0
    );
z_i_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => c_reg_i_12_n_5,
      I1 => c_reg_i_12_n_4,
      I2 => c_reg_i_12_n_7,
      I3 => c_reg_i_12_n_6,
      O => z_i_43_n_0
    );
z_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => z_i_11_n_0,
      I1 => z_i_12_n_0,
      I2 => z_i_13_n_0,
      I3 => xorlw,
      I4 => iorlw,
      I5 => andlw,
      O => z_i_5_n_0
    );
z_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => z_i_12_n_0,
      I1 => iorwf,
      I2 => z_i_16_n_0,
      I3 => addwf,
      I4 => z_i_17_n_0,
      O => z_i_7_n_0
    );
z_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => z_i_18_n_0,
      I1 => \^c_reg\(1),
      I2 => \^c_reg\(0),
      I3 => \^c_reg\(3),
      I4 => \^c_reg\(2),
      O => z_i_8_n_0
    );
z_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => z_i_19_n_0,
      I1 => \^c_reg\(7),
      I2 => \^c_reg\(6),
      I3 => \^c_reg\(4),
      I4 => \^c_reg\(5),
      I5 => comf,
      O => z_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer is
  port (
    osc2 : out STD_LOGIC;
    CLK : out STD_LOGIC;
    c2 : out STD_LOGIC;
    c3 : out STD_LOGIC;
    osc1 : in STD_LOGIC;
    mclr_0 : in STD_LOGIC;
    mclr_1 : in STD_LOGIC;
    mclr : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer is
  signal \^clk\ : STD_LOGIC;
  signal \^c2\ : STD_LOGIC;
  signal \^c3\ : STD_LOGIC;
  signal clk1_i_1_n_0 : STD_LOGIC;
  signal clk1_i_2_n_0 : STD_LOGIC;
  signal clk2_i_1_n_0 : STD_LOGIC;
  signal clk3_i_1_n_0 : STD_LOGIC;
  signal clk3_i_2_n_0 : STD_LOGIC;
  signal clk3_i_3_n_0 : STD_LOGIC;
  signal clk3_i_4_n_0 : STD_LOGIC;
  signal \^osc2\ : STD_LOGIC;
  signal osc2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[5]_i_2_n_0\ : STD_LOGIC;
  signal \state[5]_i_3_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \state_reg_n_0_[4]\ : STD_LOGIC;
  signal \state_reg_n_0_[5]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \state[5]_i_3\ : label is "soft_lutpair87";
begin
  CLK <= \^clk\;
  c2 <= \^c2\;
  c3 <= \^c3\;
  osc2 <= \^osc2\;
clk1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000004"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => clk1_i_2_n_0,
      I5 => \^clk\,
      O => clk1_i_1_n_0
    );
clk1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[5]\,
      O => clk1_i_2_n_0
    );
clk1_reg: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => '1',
      CLR => mclr_1,
      D => clk1_i_1_n_0,
      Q => \^clk\
    );
clk2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000004"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => clk1_i_2_n_0,
      I5 => \^c2\,
      O => clk2_i_1_n_0
    );
clk2_reg: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => '1',
      CLR => mclr_0,
      D => clk2_i_1_n_0,
      Q => \^c2\
    );
clk3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk3_i_2_n_0,
      I1 => clk3_i_3_n_0,
      I2 => \^c3\,
      O => clk3_i_1_n_0
    );
clk3_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[2]\,
      O => clk3_i_2_n_0
    );
clk3_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020030"
    )
        port map (
      I0 => mclr,
      I1 => clk3_i_4_n_0,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => \state_reg_n_0_[0]\,
      O => clk3_i_3_n_0
    );
clk3_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      O => clk3_i_4_n_0
    );
clk3_reg: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => '1',
      CLR => mclr_0,
      D => clk3_i_1_n_0,
      Q => \^c3\
    );
osc2_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^osc2\,
      O => osc2_i_1_n_0
    );
osc2_reg: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => '1',
      CLR => mclr_0,
      D => osc2_i_1_n_0,
      Q => \^osc2\
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \state_reg_n_0_[3]\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[2]\,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[2]\,
      O => \state[2]_i_1_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[3]_i_1_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \state_reg_n_0_[5]\,
      I5 => \state_reg_n_0_[3]\,
      O => \state[4]_i_1_n_0\
    );
\state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE9"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => mclr,
      I5 => \state[5]_i_3_n_0\,
      O => state
    );
\state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \state_reg_n_0_[5]\,
      I5 => \state_reg_n_0_[3]\,
      O => \state[5]_i_2_n_0\
    );
\state[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => \state[5]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => state,
      CLR => mclr_1,
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\
    );
\state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => state,
      CLR => mclr_1,
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\
    );
\state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => state,
      CLR => mclr_1,
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\
    );
\state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => state,
      CLR => mclr_1,
      D => \state[3]_i_1_n_0\,
      Q => \state_reg_n_0_[3]\
    );
\state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => state,
      CLR => mclr_1,
      D => \state[4]_i_1_n_0\,
      Q => \state_reg_n_0_[4]\
    );
\state_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => state,
      CLR => mclr_1,
      D => \state[5]_i_2_n_0\,
      Q => \state_reg_n_0_[5]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pic16c56 is
  port (
    romaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    osc2 : out STD_LOGIC;
    c3 : out STD_LOGIC;
    RA : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    RB : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    mclr : in STD_LOGIC;
    romdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    osc1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pic16c56;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pic16c56 is
  signal A1_n_100 : STD_LOGIC;
  signal A1_n_101 : STD_LOGIC;
  signal A1_n_102 : STD_LOGIC;
  signal A1_n_103 : STD_LOGIC;
  signal A1_n_104 : STD_LOGIC;
  signal A1_n_105 : STD_LOGIC;
  signal A1_n_106 : STD_LOGIC;
  signal A1_n_107 : STD_LOGIC;
  signal A1_n_108 : STD_LOGIC;
  signal A1_n_109 : STD_LOGIC;
  signal A1_n_110 : STD_LOGIC;
  signal A1_n_111 : STD_LOGIC;
  signal A1_n_112 : STD_LOGIC;
  signal A1_n_113 : STD_LOGIC;
  signal A1_n_114 : STD_LOGIC;
  signal A1_n_115 : STD_LOGIC;
  signal A1_n_116 : STD_LOGIC;
  signal A1_n_117 : STD_LOGIC;
  signal A1_n_118 : STD_LOGIC;
  signal A1_n_119 : STD_LOGIC;
  signal A1_n_120 : STD_LOGIC;
  signal A1_n_121 : STD_LOGIC;
  signal A1_n_122 : STD_LOGIC;
  signal A1_n_123 : STD_LOGIC;
  signal A1_n_124 : STD_LOGIC;
  signal A1_n_125 : STD_LOGIC;
  signal A1_n_126 : STD_LOGIC;
  signal A1_n_127 : STD_LOGIC;
  signal A1_n_128 : STD_LOGIC;
  signal A1_n_129 : STD_LOGIC;
  signal A1_n_130 : STD_LOGIC;
  signal A1_n_131 : STD_LOGIC;
  signal A1_n_132 : STD_LOGIC;
  signal A1_n_133 : STD_LOGIC;
  signal A1_n_135 : STD_LOGIC;
  signal A1_n_136 : STD_LOGIC;
  signal A1_n_137 : STD_LOGIC;
  signal A1_n_138 : STD_LOGIC;
  signal A1_n_139 : STD_LOGIC;
  signal A1_n_38 : STD_LOGIC;
  signal A1_n_39 : STD_LOGIC;
  signal A1_n_40 : STD_LOGIC;
  signal A1_n_41 : STD_LOGIC;
  signal A1_n_42 : STD_LOGIC;
  signal A1_n_43 : STD_LOGIC;
  signal A1_n_44 : STD_LOGIC;
  signal A1_n_45 : STD_LOGIC;
  signal A1_n_46 : STD_LOGIC;
  signal A1_n_47 : STD_LOGIC;
  signal A1_n_48 : STD_LOGIC;
  signal A1_n_49 : STD_LOGIC;
  signal A1_n_50 : STD_LOGIC;
  signal A1_n_51 : STD_LOGIC;
  signal A1_n_52 : STD_LOGIC;
  signal A1_n_53 : STD_LOGIC;
  signal A1_n_54 : STD_LOGIC;
  signal A1_n_55 : STD_LOGIC;
  signal A1_n_56 : STD_LOGIC;
  signal A1_n_57 : STD_LOGIC;
  signal A1_n_58 : STD_LOGIC;
  signal A1_n_59 : STD_LOGIC;
  signal A1_n_60 : STD_LOGIC;
  signal A1_n_61 : STD_LOGIC;
  signal A1_n_62 : STD_LOGIC;
  signal A1_n_63 : STD_LOGIC;
  signal A1_n_64 : STD_LOGIC;
  signal A1_n_65 : STD_LOGIC;
  signal A1_n_66 : STD_LOGIC;
  signal A1_n_67 : STD_LOGIC;
  signal A1_n_68 : STD_LOGIC;
  signal A1_n_69 : STD_LOGIC;
  signal A1_n_70 : STD_LOGIC;
  signal A1_n_72 : STD_LOGIC;
  signal A1_n_73 : STD_LOGIC;
  signal A1_n_74 : STD_LOGIC;
  signal A1_n_76 : STD_LOGIC;
  signal A1_n_77 : STD_LOGIC;
  signal A1_n_79 : STD_LOGIC;
  signal A1_n_80 : STD_LOGIC;
  signal A1_n_81 : STD_LOGIC;
  signal A1_n_82 : STD_LOGIC;
  signal A1_n_83 : STD_LOGIC;
  signal A1_n_84 : STD_LOGIC;
  signal A1_n_85 : STD_LOGIC;
  signal A1_n_86 : STD_LOGIC;
  signal A1_n_87 : STD_LOGIC;
  signal A1_n_88 : STD_LOGIC;
  signal A1_n_91 : STD_LOGIC;
  signal A1_n_92 : STD_LOGIC;
  signal A1_n_93 : STD_LOGIC;
  signal A1_n_94 : STD_LOGIC;
  signal A1_n_95 : STD_LOGIC;
  signal A1_n_96 : STD_LOGIC;
  signal A1_n_97 : STD_LOGIC;
  signal A1_n_98 : STD_LOGIC;
  signal A1_n_99 : STD_LOGIC;
  signal A2_n_10 : STD_LOGIC;
  signal A2_n_106 : STD_LOGIC;
  signal A2_n_107 : STD_LOGIC;
  signal A2_n_108 : STD_LOGIC;
  signal A2_n_11 : STD_LOGIC;
  signal A2_n_114 : STD_LOGIC;
  signal A2_n_115 : STD_LOGIC;
  signal A2_n_116 : STD_LOGIC;
  signal A2_n_117 : STD_LOGIC;
  signal A2_n_118 : STD_LOGIC;
  signal A2_n_119 : STD_LOGIC;
  signal A2_n_12 : STD_LOGIC;
  signal A2_n_120 : STD_LOGIC;
  signal A2_n_121 : STD_LOGIC;
  signal A2_n_122 : STD_LOGIC;
  signal A2_n_123 : STD_LOGIC;
  signal A2_n_124 : STD_LOGIC;
  signal A2_n_125 : STD_LOGIC;
  signal A2_n_126 : STD_LOGIC;
  signal A2_n_127 : STD_LOGIC;
  signal A2_n_128 : STD_LOGIC;
  signal A2_n_129 : STD_LOGIC;
  signal A2_n_13 : STD_LOGIC;
  signal A2_n_130 : STD_LOGIC;
  signal A2_n_131 : STD_LOGIC;
  signal A2_n_132 : STD_LOGIC;
  signal A2_n_133 : STD_LOGIC;
  signal A2_n_134 : STD_LOGIC;
  signal A2_n_135 : STD_LOGIC;
  signal A2_n_136 : STD_LOGIC;
  signal A2_n_137 : STD_LOGIC;
  signal A2_n_138 : STD_LOGIC;
  signal A2_n_139 : STD_LOGIC;
  signal A2_n_14 : STD_LOGIC;
  signal A2_n_140 : STD_LOGIC;
  signal A2_n_15 : STD_LOGIC;
  signal A2_n_40 : STD_LOGIC;
  signal A2_n_41 : STD_LOGIC;
  signal A2_n_42 : STD_LOGIC;
  signal A2_n_43 : STD_LOGIC;
  signal A2_n_52 : STD_LOGIC;
  signal A2_n_53 : STD_LOGIC;
  signal A2_n_54 : STD_LOGIC;
  signal A2_n_55 : STD_LOGIC;
  signal A2_n_56 : STD_LOGIC;
  signal A2_n_57 : STD_LOGIC;
  signal A2_n_58 : STD_LOGIC;
  signal A2_n_71 : STD_LOGIC;
  signal A2_n_80 : STD_LOGIC;
  signal A2_n_81 : STD_LOGIC;
  signal A2_n_82 : STD_LOGIC;
  signal A2_n_83 : STD_LOGIC;
  signal A2_n_84 : STD_LOGIC;
  signal A2_n_85 : STD_LOGIC;
  signal A2_n_86 : STD_LOGIC;
  signal A2_n_87 : STD_LOGIC;
  signal A2_n_88 : STD_LOGIC;
  signal A2_n_89 : STD_LOGIC;
  signal A2_n_90 : STD_LOGIC;
  signal A2_n_91 : STD_LOGIC;
  signal A2_n_92 : STD_LOGIC;
  signal A2_n_93 : STD_LOGIC;
  signal A2_n_94 : STD_LOGIC;
  signal A2_n_95 : STD_LOGIC;
  signal A2_n_96 : STD_LOGIC;
  signal A2_n_97 : STD_LOGIC;
  signal A3_n_0 : STD_LOGIC;
  signal A3_n_1 : STD_LOGIC;
  signal A3_n_10 : STD_LOGIC;
  signal A3_n_11 : STD_LOGIC;
  signal A3_n_12 : STD_LOGIC;
  signal A3_n_13 : STD_LOGIC;
  signal A3_n_14 : STD_LOGIC;
  signal A3_n_15 : STD_LOGIC;
  signal A3_n_16 : STD_LOGIC;
  signal A3_n_17 : STD_LOGIC;
  signal A3_n_18 : STD_LOGIC;
  signal A3_n_19 : STD_LOGIC;
  signal A3_n_2 : STD_LOGIC;
  signal A3_n_20 : STD_LOGIC;
  signal A3_n_21 : STD_LOGIC;
  signal A3_n_22 : STD_LOGIC;
  signal A3_n_23 : STD_LOGIC;
  signal A3_n_3 : STD_LOGIC;
  signal A3_n_36 : STD_LOGIC;
  signal A3_n_4 : STD_LOGIC;
  signal A3_n_5 : STD_LOGIC;
  signal A3_n_6 : STD_LOGIC;
  signal A3_n_7 : STD_LOGIC;
  signal A3_n_8 : STD_LOGIC;
  signal A3_n_9 : STD_LOGIC;
  signal A4_n_10 : STD_LOGIC;
  signal A4_n_11 : STD_LOGIC;
  signal A4_n_4 : STD_LOGIC;
  signal A4_n_5 : STD_LOGIC;
  signal A4_n_6 : STD_LOGIC;
  signal A4_n_7 : STD_LOGIC;
  signal A4_n_8 : STD_LOGIC;
  signal A4_n_9 : STD_LOGIC;
  signal addwf : STD_LOGIC;
  signal andlw : STD_LOGIC;
  signal andwf : STD_LOGIC;
  signal b : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal btfss : STD_LOGIC;
  signal c : STD_LOGIC;
  signal c1 : STD_LOGIC;
  signal c2 : STD_LOGIC;
  signal call : STD_LOGIC;
  signal comf : STD_LOGIC;
  signal d : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal data2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal data5 : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal dc : STD_LOGIC;
  signal decf : STD_LOGIC;
  signal decfsz : STD_LOGIC;
  signal fsel : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal fsr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal goto : STD_LOGIC;
  signal incf : STD_LOGIC;
  signal incfsz : STD_LOGIC;
  signal iorlw : STD_LOGIC;
  signal iorwf : STD_LOGIC;
  signal k : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal longk : STD_LOGIC_VECTOR ( 8 to 8 );
  signal movf : STD_LOGIC;
  signal movlw : STD_LOGIC;
  signal option : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \pc1__0\ : STD_LOGIC;
  signal \regfile__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal retlw : STD_LOGIC;
  signal rlf : STD_LOGIC;
  signal \^romaddr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rrf : STD_LOGIC;
  signal skip : STD_LOGIC;
  signal stack1 : STD_LOGIC;
  signal stack2 : STD_LOGIC;
  signal status0 : STD_LOGIC;
  signal \status10_out__1\ : STD_LOGIC;
  signal status_c : STD_LOGIC;
  signal subwf : STD_LOGIC;
  signal swapf : STD_LOGIC;
  signal tris : STD_LOGIC;
  signal trisa : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal trisb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal w : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xorlw : STD_LOGIC;
  signal xorwf : STD_LOGIC;
  signal yi : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal z : STD_LOGIC;
  signal z0 : STD_LOGIC;
begin
  romaddr(9 downto 0) <= \^romaddr\(9 downto 0);
A1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decoder
     port map (
      CLK => c1,
      D(1 downto 0) => yi(1 downto 0),
      E(0) => stack1,
      Q(7 downto 0) => b(7 downto 0),
      RA(3 downto 0) => RA(3 downto 0),
      \RA_out_reg[3]\(0) => A1_n_92,
      RB(7 downto 0) => RB(7 downto 0),
      \RB_out_reg[7]\(0) => A1_n_93,
      addwf => addwf,
      addwf_reg_0 => A2_n_96,
      andlw => andlw,
      andlw_reg_0 => A2_n_80,
      andlw_reg_1 => A2_n_83,
      andlw_reg_10 => A3_n_4,
      andlw_reg_11 => A3_n_6,
      andlw_reg_12 => A3_n_8,
      andlw_reg_13 => A3_n_10,
      andlw_reg_14 => A3_n_12,
      andlw_reg_15 => A3_n_14,
      andlw_reg_2 => A2_n_85,
      andlw_reg_3 => A2_n_87,
      andlw_reg_4 => A2_n_89,
      andlw_reg_5 => A2_n_91,
      andlw_reg_6 => A2_n_93,
      andlw_reg_7 => A2_n_95,
      andlw_reg_8 => A3_n_0,
      andlw_reg_9 => A3_n_2,
      andwf => andwf,
      andwf_reg_0 => A2_n_124,
      andwf_reg_1 => A2_n_122,
      andwf_reg_2 => A2_n_121,
      andwf_reg_3 => A2_n_120,
      andwf_reg_4 => A2_n_119,
      andwf_reg_5 => A2_n_108,
      andwf_reg_6 => A2_n_123,
      \b_reg[0]\ => A1_n_136,
      \b_reg[0]_0\ => A2_n_114,
      \b_reg[0]_1\ => A2_n_94,
      \b_reg[0]_2\ => A2_n_107,
      \b_reg[0]_3\ => A2_n_125,
      \b_reg[1]\ => A2_n_131,
      \b_reg[1]_0\ => A2_n_92,
      \b_reg[2]\ => A2_n_90,
      \b_reg[2]_0\ => A2_n_136,
      \b_reg[3]\ => A2_n_88,
      \b_reg[3]_0\ => A2_n_135,
      \b_reg[4]\ => A2_n_86,
      \b_reg[4]_0\ => A2_n_134,
      \b_reg[5]\ => A2_n_84,
      \b_reg[6]\ => A2_n_82,
      \b_reg[6]_0\ => A2_n_132,
      \b_reg[6]_1\ => A2_n_133,
      \b_reg[7]\(7) => A1_n_122,
      \b_reg[7]\(6) => A1_n_123,
      \b_reg[7]\(5) => A1_n_124,
      \b_reg[7]\(4) => A1_n_125,
      \b_reg[7]\(3) => A1_n_126,
      \b_reg[7]\(2) => A1_n_127,
      \b_reg[7]\(1) => A1_n_128,
      \b_reg[7]\(0) => A1_n_129,
      \b_reg[7]_0\ => A2_n_81,
      btfss => btfss,
      c => c,
      c_reg => A1_n_139,
      call => call,
      comf => comf,
      \^d\ => d,
      data2(7 downto 0) => data2(7 downto 0),
      data5(4 downto 0) => data5(7 downto 3),
      dc => dc,
      dc_reg => A1_n_138,
      decf => decf,
      decfsz => decfsz,
      \frs_reg_reg[0]\ => A2_n_115,
      \frs_reg_reg[1]\ => A2_n_118,
      \frs_reg_reg[2]\ => A2_n_117,
      \frs_reg_reg[3]\ => A2_n_116,
      \frs_reg_reg[4]\ => A2_n_71,
      \frs_reg_reg[7]\(0) => A1_n_95,
      \frs_reg_reg[7]_0\(7 downto 0) => fsr(7 downto 0),
      fsel(4 downto 0) => fsel(4 downto 0),
      goto => goto,
      goto_reg_0 => A2_n_40,
      incf => incf,
      incfsz => incfsz,
      incfsz_reg_0 => A2_n_97,
      iorlw => iorlw,
      iorwf => iorwf,
      k(6 downto 5) => k(7 downto 6),
      k(4 downto 0) => k(4 downto 0),
      longk(0) => longk(8),
      mclr => mclr,
      movf => movf,
      movlw => movlw,
      option => option,
      \pc1__0\ => \pc1__0\,
      \pc_reg[0]_P\ => A1_n_88,
      \pc_reg[0]_P_0\ => A1_n_91,
      \pc_reg[0]_P_1\ => \^romaddr\(0),
      \pc_reg[0]_P_2\ => A2_n_58,
      \pc_reg[1]_P\ => A1_n_87,
      \pc_reg[1]_P_0\ => \^romaddr\(1),
      \pc_reg[1]_P_1\ => A2_n_57,
      \pc_reg[2]_P\ => A1_n_86,
      \pc_reg[2]_P_0\ => A2_n_56,
      \pc_reg[3]_P\ => A1_n_85,
      \pc_reg[3]_P_0\ => A2_n_55,
      \pc_reg[4]_P\ => A1_n_84,
      \pc_reg[4]_P_0\ => A2_n_54,
      \pc_reg[5]_P\ => A1_n_83,
      \pc_reg[5]_P_0\ => A2_n_53,
      \pc_reg[6]_P\ => A1_n_82,
      \pc_reg[6]_P_0\ => A2_n_52,
      \pc_reg[7]_P\ => A1_n_81,
      \pc_reg[7]_P_0\(5 downto 0) => data3(7 downto 2),
      \pc_reg[7]_P_1\ => A2_n_43,
      \pc_reg[9]_P\ => A1_n_79,
      \pc_reg[9]_P_0\ => A1_n_80,
      \regfile__0\(7 downto 0) => \regfile__0\(7 downto 0),
      \regfile_reg[10][7]\(0) => A1_n_100,
      \regfile_reg[11][7]\(0) => A1_n_101,
      \regfile_reg[12][7]\(0) => A1_n_102,
      \regfile_reg[13][7]\(0) => A1_n_103,
      \regfile_reg[14][7]\(0) => A1_n_104,
      \regfile_reg[15][7]\(0) => A1_n_105,
      \regfile_reg[16][7]\(0) => A1_n_106,
      \regfile_reg[17][7]\(0) => A1_n_107,
      \regfile_reg[18][7]\(0) => A1_n_108,
      \regfile_reg[19][7]\(0) => A1_n_109,
      \regfile_reg[20][7]\(0) => A1_n_110,
      \regfile_reg[21][7]\(0) => A1_n_111,
      \regfile_reg[22][7]\(0) => A1_n_112,
      \regfile_reg[23][7]\(0) => A1_n_113,
      \regfile_reg[24][7]\(0) => A1_n_114,
      \regfile_reg[25][7]\(0) => A1_n_115,
      \regfile_reg[26][7]\(0) => A1_n_116,
      \regfile_reg[27][7]\(0) => A1_n_117,
      \regfile_reg[28][7]\(0) => A1_n_118,
      \regfile_reg[29][7]\(0) => A1_n_119,
      \regfile_reg[30][7]\(0) => A1_n_120,
      \regfile_reg[31][7]\(0) => A1_n_121,
      \regfile_reg[7][7]\(0) => A1_n_97,
      \regfile_reg[8][7]\(0) => A1_n_98,
      \regfile_reg[9][7]\(0) => A1_n_99,
      retlw => retlw,
      rlf => rlf,
      romdata(11 downto 0) => romdata(11 downto 0),
      rrf => rrf,
      \rtccount_reg[7]\(0) => A1_n_96,
      skip => skip,
      skip_reg_C => A1_n_137,
      \stack2_reg[9]\(0) => stack2,
      \stack2_reg[9]_0\ => A2_n_106,
      \stacklevel_reg[0]\ => A1_n_73,
      \stacklevel_reg[0]_0\ => A2_n_12,
      \stacklevel_reg[1]\ => A1_n_72,
      \stacklevel_reg[1]_0\ => A2_n_11,
      status0 => status0,
      \status10_out__1\ => \status10_out__1\,
      status_c => status_c,
      \status_reg[0]\ => A1_n_76,
      \status_reg[0]_0\ => A2_n_137,
      \status_reg[1]\ => A1_n_74,
      \status_reg[1]_0\ => A2_n_15,
      \status_reg[5]\(0) => data1(9),
      \status_reg[5]_0\ => A2_n_13,
      subwf => subwf,
      swapf => swapf,
      tris => tris,
      \trisa_reg[3]\(0) => A1_n_130,
      \trisb_reg[7]\(0) => A1_n_131,
      \w_reg[0]\ => A2_n_138,
      \w_reg[3]\ => A2_n_130,
      \w_reg[4]\ => A2_n_129,
      \w_reg[5]\ => A2_n_128,
      \w_reg[6]\ => A2_n_127,
      \w_reg[7]\(0) => A1_n_94,
      \w_reg[7]_0\(7 downto 0) => w(7 downto 0),
      \w_reg[7]_1\ => A2_n_126,
      xorlw => xorlw,
      xorwf => xorwf,
      \yi_reg[0]_C\ => A1_n_67,
      \yi_reg[0]_C_0\ => A1_n_68,
      \yi_reg[0]_C_1\ => A1_n_70,
      \yi_reg[0]_C_2\ => A3_n_23,
      \yi_reg[0]_P\ => A1_n_42,
      \yi_reg[0]_P_0\ => A1_n_66,
      \yi_reg[0]_P_1\ => A1_n_69,
      \yi_reg[0]_P_2\ => A1_n_135,
      \yi_reg[0]_P_3\ => A3_n_15,
      \yi_reg[1]_C\ => A1_n_63,
      \yi_reg[1]_C_0\ => A1_n_64,
      \yi_reg[1]_C_1\ => A1_n_132,
      \yi_reg[1]_C_2\ => A3_n_22,
      \yi_reg[1]_P\ => A1_n_62,
      \yi_reg[1]_P_0\ => A1_n_65,
      \yi_reg[1]_P_1\ => A3_n_13,
      \yi_reg[2]_C\ => A1_n_59,
      \yi_reg[2]_C_0\ => A1_n_60,
      \yi_reg[2]_C_1\ => A3_n_21,
      \yi_reg[2]_P\ => A1_n_58,
      \yi_reg[2]_P_0\ => A1_n_61,
      \yi_reg[2]_P_1\ => A3_n_11,
      \yi_reg[3]_C\ => A1_n_55,
      \yi_reg[3]_C_0\ => A1_n_56,
      \yi_reg[3]_C_1\ => A3_n_20,
      \yi_reg[3]_P\ => A1_n_54,
      \yi_reg[3]_P_0\ => A1_n_57,
      \yi_reg[3]_P_1\ => A3_n_9,
      \yi_reg[4]_C\ => A1_n_51,
      \yi_reg[4]_C_0\ => A1_n_52,
      \yi_reg[4]_C_1\ => A3_n_19,
      \yi_reg[4]_P\ => A1_n_50,
      \yi_reg[4]_P_0\ => A1_n_53,
      \yi_reg[4]_P_1\ => A3_n_7,
      \yi_reg[5]_C\ => A1_n_47,
      \yi_reg[5]_C_0\ => A1_n_48,
      \yi_reg[5]_C_1\ => A3_n_18,
      \yi_reg[5]_P\ => A1_n_46,
      \yi_reg[5]_P_0\ => A1_n_49,
      \yi_reg[5]_P_1\ => A3_n_5,
      \yi_reg[6]_C\ => A1_n_44,
      \yi_reg[6]_C_0\ => A1_n_45,
      \yi_reg[6]_C_1\ => A3_n_17,
      \yi_reg[6]_P\ => A1_n_43,
      \yi_reg[6]_P_0\ => A1_n_77,
      \yi_reg[6]_P_1\ => A3_n_3,
      \yi_reg[7]_C\ => A1_n_39,
      \yi_reg[7]_C_0\ => A1_n_40,
      \yi_reg[7]_C_1\ => A3_n_16,
      \yi_reg[7]_P\ => A1_n_38,
      \yi_reg[7]_P_0\ => A1_n_41,
      \yi_reg[7]_P_1\ => A3_n_1,
      z0 => z0,
      z_reg => A1_n_133
    );
A2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_distribute
     port map (
      CLK => c1,
      D(7 downto 0) => yi(7 downto 0),
      E(0) => A1_n_96,
      Q(7 downto 0) => w(7 downto 0),
      RA(3 downto 0) => RA(3 downto 0),
      RB(7 downto 0) => RB(7 downto 0),
      addwf => addwf,
      andlw => andlw,
      andlw_reg => A1_n_133,
      andwf => andwf,
      \b_reg[0]_0\ => A2_n_58,
      \b_reg[1]_0\ => A2_n_57,
      \b_reg[2]_0\ => A2_n_56,
      \b_reg[3]_0\ => A2_n_55,
      \b_reg[3]_1\(3 downto 0) => trisa(3 downto 0),
      \b_reg[4]_0\ => A2_n_54,
      \b_reg[5]_0\ => A2_n_53,
      \b_reg[6]_0\ => A2_n_52,
      \b_reg[7]_0\ => A2_n_43,
      \b_reg[7]_1\(7 downto 0) => fsr(7 downto 0),
      \b_reg[7]_2\(7 downto 0) => trisb(7 downto 0),
      btfss => btfss,
      c2 => c2,
      c_reg(7 downto 0) => b(7 downto 0),
      c_reg_0 => A2_n_125,
      c_reg_1 => A1_n_76,
      call => call,
      call_reg => A1_n_79,
      call_reg_0 => A1_n_72,
      call_reg_1 => A1_n_73,
      call_reg_2(0) => stack1,
      clrf_reg => A1_n_135,
      comf => comf,
      \^d\ => d,
      d_reg(0) => A1_n_121,
      d_reg_0(0) => A1_n_120,
      d_reg_1(0) => A1_n_119,
      d_reg_10(0) => A1_n_110,
      d_reg_11(0) => A1_n_109,
      d_reg_12(0) => A1_n_108,
      d_reg_13(0) => A1_n_107,
      d_reg_14(0) => A1_n_106,
      d_reg_15(0) => A1_n_105,
      d_reg_16(0) => A1_n_104,
      d_reg_17(0) => A1_n_103,
      d_reg_18(0) => A1_n_102,
      d_reg_19(0) => A1_n_101,
      d_reg_2(0) => A1_n_118,
      d_reg_20(0) => A1_n_100,
      d_reg_21(0) => A1_n_99,
      d_reg_22(0) => A1_n_98,
      d_reg_23(0) => A1_n_97,
      d_reg_3(0) => A1_n_117,
      d_reg_4(0) => A1_n_116,
      d_reg_5(0) => A1_n_115,
      d_reg_6(0) => A1_n_114,
      d_reg_7(0) => A1_n_113,
      d_reg_8(0) => A1_n_112,
      d_reg_9(0) => A1_n_111,
      data2(7 downto 0) => data2(7 downto 0),
      dc_reg => A2_n_96,
      dc_reg_0 => A1_n_74,
      decf => decf,
      decfsz => decfsz,
      fsel(4 downto 0) => fsel(4 downto 0),
      \fsel_reg[0]\ => A2_n_115,
      \fsel_reg[1]\ => A2_n_118,
      \fsel_reg[2]\ => A2_n_117,
      \fsel_reg[3]\ => A2_n_116,
      \fsel_reg[4]\ => A2_n_71,
      \fsel_reg[4]_0\ => A1_n_136,
      goto => goto,
      incf => incf,
      incfsz => incfsz,
      incfsz_reg => A1_n_132,
      iorlw => iorlw,
      iorwf => iorwf,
      k(6 downto 5) => k(7 downto 6),
      k(4 downto 0) => k(4 downto 0),
      \k_reg[2]\ => A1_n_80,
      \k_reg[7]\(7) => A1_n_122,
      \k_reg[7]\(6) => A1_n_123,
      \k_reg[7]\(5) => A1_n_124,
      \k_reg[7]\(4) => A1_n_125,
      \k_reg[7]\(3) => A1_n_126,
      \k_reg[7]\(2) => A1_n_127,
      \k_reg[7]\(1) => A1_n_128,
      \k_reg[7]\(0) => A1_n_129,
      longk(0) => longk(8),
      mclr => mclr,
      movf => movf,
      movlw => movlw,
      option => option,
      p_0_out(3 downto 0) => p_0_out(3 downto 0),
      \pc1__0\ => \pc1__0\,
      \pc_reg[7]_P_0\(5 downto 0) => data3(7 downto 2),
      \pc_reg[9]_P_0\ => A2_n_13,
      \pc_reg[9]_P_1\(0) => data1(9),
      \pc_reg[9]_P_2\ => A2_n_40,
      \pc_reg[9]_P_3\ => A2_n_106,
      \regfile__0\(7 downto 0) => \regfile__0\(7 downto 0),
      \regfile_reg[23][7]_0\ => A2_n_10,
      retlw => retlw,
      retlw_reg => A1_n_91,
      retlw_reg_0(0) => A1_n_95,
      retlw_reg_1(0) => A1_n_94,
      retlw_reg_2(0) => A1_n_93,
      retlw_reg_3(0) => A1_n_92,
      rlf => rlf,
      romaddr(9 downto 0) => \^romaddr\(9 downto 0),
      romdata(4 downto 0) => romdata(4 downto 0),
      rrf => rrf,
      rrf_reg => A1_n_70,
      skip_reg_C => A2_n_42,
      skip_reg_C_0 => A2_n_97,
      skip_reg_P => A2_n_41,
      \stack2_reg[9]_0\ => A2_n_11,
      \stacklevel_reg[1]_0\ => A2_n_12,
      \stacklevel_reg[1]_1\(0) => stack2,
      status0 => status0,
      status_c => status_c,
      \status_reg[1]_0\ => A2_n_15,
      \status_reg[2]_0\ => A2_n_14,
      subwf => subwf,
      swapf => swapf,
      tris => tris,
      tris_reg(0) => A1_n_130,
      tris_reg_0(0) => A1_n_131,
      \trisa_reg[0]_0\ => A2_n_140,
      \trisb_reg[0]_0\ => A4_n_4,
      \trisb_reg[1]_0\ => A4_n_5,
      \trisb_reg[2]_0\ => A4_n_6,
      \trisb_reg[3]_0\ => A4_n_7,
      \trisb_reg[4]_0\ => A4_n_8,
      \trisb_reg[5]_0\ => A4_n_9,
      \trisb_reg[6]_0\ => A4_n_10,
      \trisb_reg[7]_0\ => A4_n_11,
      xorlw => xorlw,
      xorwf => xorwf,
      \yi_reg[0]_C\ => A2_n_94,
      \yi_reg[0]_C_0\ => A2_n_95,
      \yi_reg[0]_C_1\ => A2_n_114,
      \yi_reg[0]_C_2\ => A2_n_137,
      \yi_reg[0]_C_3\ => A2_n_138,
      \yi_reg[0]_P\ => A1_n_88,
      \yi_reg[1]_C\ => A2_n_92,
      \yi_reg[1]_C_0\ => A2_n_93,
      \yi_reg[1]_C_1\ => A2_n_107,
      \yi_reg[1]_C_2\ => A2_n_108,
      \yi_reg[1]_P\ => A1_n_87,
      \yi_reg[2]_C\ => A2_n_90,
      \yi_reg[2]_C_0\ => A2_n_91,
      \yi_reg[2]_C_1\ => A2_n_119,
      \yi_reg[2]_C_2\ => A2_n_131,
      \yi_reg[2]_P\ => A1_n_86,
      \yi_reg[3]_C\ => A2_n_88,
      \yi_reg[3]_C_0\ => A2_n_89,
      \yi_reg[3]_C_1\ => A2_n_120,
      \yi_reg[3]_C_2\ => A2_n_130,
      \yi_reg[3]_C_3\ => A2_n_136,
      \yi_reg[3]_P\ => A1_n_85,
      \yi_reg[4]_C\ => A2_n_86,
      \yi_reg[4]_C_0\ => A2_n_87,
      \yi_reg[4]_C_1\ => A2_n_121,
      \yi_reg[4]_C_2\ => A2_n_129,
      \yi_reg[4]_C_3\ => A2_n_135,
      \yi_reg[4]_P\ => A1_n_84,
      \yi_reg[5]_C\ => A2_n_84,
      \yi_reg[5]_C_0\ => A2_n_85,
      \yi_reg[5]_C_1\ => A2_n_122,
      \yi_reg[5]_C_2\ => A2_n_128,
      \yi_reg[5]_C_3\ => A2_n_134,
      \yi_reg[5]_P\ => A1_n_83,
      \yi_reg[6]_C\ => A2_n_82,
      \yi_reg[6]_C_0\ => A2_n_83,
      \yi_reg[6]_C_1\ => A2_n_123,
      \yi_reg[6]_C_2\ => A2_n_127,
      \yi_reg[6]_C_3\ => A2_n_133,
      \yi_reg[6]_P\ => A1_n_82,
      \yi_reg[7]_C\ => A2_n_80,
      \yi_reg[7]_C_0\ => A2_n_81,
      \yi_reg[7]_C_1\(4 downto 0) => data5(7 downto 3),
      \yi_reg[7]_C_2\ => A2_n_124,
      \yi_reg[7]_C_3\ => A2_n_126,
      \yi_reg[7]_C_4\ => A2_n_132,
      \yi_reg[7]_P\ => A1_n_81,
      z => z,
      z0 => z0,
      z_reg => A2_n_139,
      z_reg_0 => A3_n_36
    );
A3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
     port map (
      D(7 downto 0) => yi(7 downto 0),
      addwf_reg => A1_n_138,
      andlw_reg => A1_n_38,
      andlw_reg_0 => A1_n_39,
      andlw_reg_1 => A1_n_43,
      andlw_reg_10 => A1_n_59,
      andlw_reg_11 => A1_n_62,
      andlw_reg_12 => A1_n_63,
      andlw_reg_13 => A1_n_66,
      andlw_reg_14 => A1_n_67,
      andlw_reg_2 => A1_n_44,
      andlw_reg_3 => A1_n_46,
      andlw_reg_4 => A1_n_47,
      andlw_reg_5 => A1_n_50,
      andlw_reg_6 => A1_n_51,
      andlw_reg_7 => A1_n_54,
      andlw_reg_8 => A1_n_55,
      andlw_reg_9 => A1_n_58,
      \b_reg[0]\ => A1_n_69,
      \b_reg[1]\ => A1_n_65,
      \b_reg[2]\ => A1_n_61,
      \b_reg[3]\ => A1_n_57,
      \b_reg[4]\ => A1_n_53,
      \b_reg[5]\ => A1_n_49,
      \b_reg[6]\ => A1_n_77,
      \b_reg[6]_0\ => A1_n_45,
      \b_reg[7]\ => A1_n_41,
      \b_reg[7]_0\ => A1_n_139,
      c => c,
      c2 => c2,
      dc => dc,
      incfsz_reg => A1_n_137,
      \k_reg[7]\ => A2_n_41,
      \k_reg[7]_0\ => A2_n_42,
      mclr => A2_n_10,
      mclr_0 => A2_n_140,
      retlw_reg => A1_n_42,
      \rtccount_reg[0]\ => A3_n_14,
      \rtccount_reg[0]_0\ => A3_n_15,
      \rtccount_reg[0]_1\ => A3_n_23,
      \rtccount_reg[1]\ => A3_n_12,
      \rtccount_reg[1]_0\ => A3_n_13,
      \rtccount_reg[1]_1\ => A3_n_22,
      \rtccount_reg[2]\ => A3_n_10,
      \rtccount_reg[2]_0\ => A3_n_11,
      \rtccount_reg[2]_1\ => A3_n_21,
      \rtccount_reg[3]\ => A3_n_8,
      \rtccount_reg[3]_0\ => A3_n_9,
      \rtccount_reg[3]_1\ => A3_n_20,
      \rtccount_reg[4]\ => A3_n_6,
      \rtccount_reg[4]_0\ => A3_n_7,
      \rtccount_reg[4]_1\ => A3_n_19,
      \rtccount_reg[5]\ => A3_n_4,
      \rtccount_reg[5]_0\ => A3_n_5,
      \rtccount_reg[5]_1\ => A3_n_18,
      \rtccount_reg[6]\ => A3_n_2,
      \rtccount_reg[6]_0\ => A3_n_3,
      \rtccount_reg[6]_1\ => A3_n_17,
      \rtccount_reg[7]\ => A3_n_0,
      \rtccount_reg[7]_0\ => A3_n_1,
      \rtccount_reg[7]_1\ => A3_n_16,
      skip => skip,
      status0 => status0,
      \status10_out__1\ => \status10_out__1\,
      \status_reg[2]\ => A3_n_36,
      \status_reg[2]_0\ => A2_n_14,
      \yi_reg[0]_C_0\ => A1_n_68,
      \yi_reg[1]_C_0\ => A1_n_64,
      \yi_reg[2]_C_0\ => A1_n_60,
      \yi_reg[3]_C_0\ => A1_n_56,
      \yi_reg[4]_C_0\ => A1_n_52,
      \yi_reg[5]_C_0\ => A1_n_48,
      \yi_reg[7]_C_0\ => A1_n_40,
      z => z,
      z_reg_0 => A2_n_139
    );
A4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IO_reg
     port map (
      \b_reg[0]\ => A4_n_4,
      \b_reg[1]\ => A4_n_5,
      \b_reg[2]\ => A4_n_6,
      \b_reg[3]\ => A4_n_7,
      \b_reg[4]\ => A4_n_8,
      \b_reg[5]\ => A4_n_9,
      \b_reg[6]\ => A4_n_10,
      \b_reg[7]\ => A4_n_11,
      p_0_out(3 downto 0) => p_0_out(3 downto 0),
      \trisa_reg[3]\(3 downto 0) => trisa(3 downto 0),
      \trisb_reg[7]\(7 downto 0) => trisb(7 downto 0)
    );
A5: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer
     port map (
      CLK => c1,
      c2 => c2,
      c3 => c3,
      mclr => mclr,
      mclr_0 => A2_n_140,
      mclr_1 => A2_n_10,
      osc1 => osc1,
      osc2 => osc2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    mclr : in STD_LOGIC;
    osc1 : in STD_LOGIC;
    romdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    osc2 : out STD_LOGIC;
    romaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    RA : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    RB : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    c3 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_pic16c56_0_0,pic16c56,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pic16c56,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal n_0_604 : STD_LOGIC;
begin
i_604: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mclr,
      O => n_0_604
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pic16c56
     port map (
      RA(3 downto 0) => RA(3 downto 0),
      RB(7 downto 0) => RB(7 downto 0),
      c3 => c3,
      mclr => mclr,
      osc1 => osc1,
      osc2 => osc2,
      romaddr(9 downto 0) => romaddr(9 downto 0),
      romdata(11 downto 0) => romdata(11 downto 0)
    );
end STRUCTURE;
