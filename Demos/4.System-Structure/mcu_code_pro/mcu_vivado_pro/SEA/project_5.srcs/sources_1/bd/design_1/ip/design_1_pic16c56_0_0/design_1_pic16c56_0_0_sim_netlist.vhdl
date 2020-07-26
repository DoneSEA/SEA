-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Mar  3 22:26:31 2020
-- Host        : DESKTOP-2M5KLAK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/vivadohls/1/project_5/project_5.srcs/sources_1/bd/design_1/ip/design_1_pic16c56_0_0/design_1_pic16c56_0_0_sim_netlist.vhdl
-- Design      : design_1_pic16c56_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pic16c56_0_0_IO_reg is
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pic16c56_0_0_IO_reg : entity is "IO_reg";
end design_1_pic16c56_0_0_IO_reg;

architecture STRUCTURE of design_1_pic16c56_0_0_IO_reg is
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
entity design_1_pic16c56_0_0_alu is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    skip_reg_C_0 : out STD_LOGIC;
    z : out STD_LOGIC;
    dc : out STD_LOGIC;
    c : out STD_LOGIC;
    \status_reg[2]\ : out STD_LOGIC;
    \status_reg[0]\ : out STD_LOGIC;
    andwf_reg : in STD_LOGIC;
    retlw_reg : in STD_LOGIC;
    c2 : in STD_LOGIC;
    mclr : in STD_LOGIC;
    retlw_reg_0 : in STD_LOGIC;
    retlw_reg_1 : in STD_LOGIC;
    retlw_reg_2 : in STD_LOGIC;
    retlw_reg_3 : in STD_LOGIC;
    retlw_reg_4 : in STD_LOGIC;
    retlw_reg_5 : in STD_LOGIC;
    retlw_reg_6 : in STD_LOGIC;
    skip_reg_C_1 : in STD_LOGIC;
    z_reg_0 : in STD_LOGIC;
    dc_reg_0 : in STD_LOGIC;
    c_reg_0 : in STD_LOGIC;
    bcf_reg : in STD_LOGIC;
    xorlw_reg : in STD_LOGIC;
    \status_reg[2]_0\ : in STD_LOGIC;
    addwf_reg : in STD_LOGIC;
    status_c : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pic16c56_0_0_alu : entity is "alu";
end design_1_pic16c56_0_0_alu;

architecture STRUCTURE of design_1_pic16c56_0_0_alu is
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^c\ : STD_LOGIC;
  signal \^z\ : STD_LOGIC;
begin
  D(7 downto 0) <= \^d\(7 downto 0);
  c <= \^c\;
  z <= \^z\;
c_reg: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => mclr,
      D => c_reg_0,
      Q => \^c\
    );
dc_reg: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => mclr,
      D => dc_reg_0,
      Q => dc
    );
skip_reg_C: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => '1',
      CLR => mclr,
      D => skip_reg_C_1,
      Q => skip_reg_C_0
    );
\status[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCCA0CC"
    )
        port map (
      I0 => \^d\(0),
      I1 => \^c\,
      I2 => bcf_reg,
      I3 => addwf_reg,
      I4 => status_c,
      O => \status_reg[0]\
    );
\status[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCCA0CC"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^z\,
      I2 => bcf_reg,
      I3 => xorlw_reg,
      I4 => \status_reg[2]_0\,
      O => \status_reg[2]\
    );
\yi_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => andwf_reg,
      CLR => mclr,
      D => retlw_reg_6,
      Q => \^d\(0)
    );
\yi_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => andwf_reg,
      CLR => mclr,
      D => retlw_reg_5,
      Q => \^d\(1)
    );
\yi_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => andwf_reg,
      CLR => mclr,
      D => retlw_reg_4,
      Q => \^d\(2)
    );
\yi_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => andwf_reg,
      CLR => mclr,
      D => retlw_reg_3,
      Q => \^d\(3)
    );
\yi_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => andwf_reg,
      CLR => mclr,
      D => retlw_reg_2,
      Q => \^d\(4)
    );
\yi_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => andwf_reg,
      CLR => mclr,
      D => retlw_reg_1,
      Q => \^d\(5)
    );
\yi_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => andwf_reg,
      CLR => mclr,
      D => retlw_reg_0,
      Q => \^d\(6)
    );
\yi_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => c2,
      CE => andwf_reg,
      CLR => mclr,
      D => retlw_reg,
      Q => \^d\(7)
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
entity design_1_pic16c56_0_0_decoder is
  port (
    \status_reg[7]\ : out STD_LOGIC;
    \b_reg[7]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \yi_reg[1]_C\ : out STD_LOGIC;
    incf : out STD_LOGIC;
    movf : out STD_LOGIC;
    comf : out STD_LOGIC;
    \yi_reg[4]_C\ : out STD_LOGIC;
    decfsz : out STD_LOGIC;
    rlf : out STD_LOGIC;
    rrf : out STD_LOGIC;
    \yi_reg[2]_C\ : out STD_LOGIC;
    option : out STD_LOGIC;
    incfsz : out STD_LOGIC;
    swapf : out STD_LOGIC;
    \yi_reg[1]_C_0\ : out STD_LOGIC;
    \yi_reg[0]_C\ : out STD_LOGIC;
    \status_reg[2]\ : out STD_LOGIC;
    xorlw : out STD_LOGIC;
    andlw : out STD_LOGIC;
    iorlw : out STD_LOGIC;
    \pc_reg[2]_P\ : out STD_LOGIC;
    retlw : out STD_LOGIC;
    call : out STD_LOGIC;
    z_reg : out STD_LOGIC;
    \^d\ : out STD_LOGIC;
    \stacklevel_reg[1]\ : out STD_LOGIC;
    \stacklevel_reg[1]_0\ : out STD_LOGIC;
    \stacklevel_reg[0]\ : out STD_LOGIC;
    \status_reg[1]\ : out STD_LOGIC;
    addwf : out STD_LOGIC;
    subwf : out STD_LOGIC;
    \yi_reg[7]_C\ : out STD_LOGIC;
    xorwf : out STD_LOGIC;
    iorwf : out STD_LOGIC;
    z_reg_0 : out STD_LOGIC;
    andwf : out STD_LOGIC;
    \yi_reg[6]_C\ : out STD_LOGIC;
    \yi_reg[5]_C\ : out STD_LOGIC;
    \yi_reg[4]_C_0\ : out STD_LOGIC;
    \yi_reg[3]_C\ : out STD_LOGIC;
    \yi_reg[2]_C_0\ : out STD_LOGIC;
    \yi_reg[1]_C_1\ : out STD_LOGIC;
    decf : out STD_LOGIC;
    \yi_reg[0]_C_0\ : out STD_LOGIC;
    movlw : out STD_LOGIC;
    tris : out STD_LOGIC;
    \status_reg[0]\ : out STD_LOGIC;
    \b_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rtccount_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RB_out_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RA_out_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \frs_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \w_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pc_reg[0]_P\ : out STD_LOGIC;
    \pc_reg[1]_P\ : out STD_LOGIC;
    \pc_reg[2]_P_0\ : out STD_LOGIC;
    \pc_reg[3]_P\ : out STD_LOGIC;
    \pc_reg[6]_P\ : out STD_LOGIC;
    \pc_reg[7]_P\ : out STD_LOGIC;
    \pc_reg[0]_P_0\ : out STD_LOGIC;
    \yi_reg[0]_C_1\ : out STD_LOGIC;
    \pc_reg[6]_P_0\ : out STD_LOGIC;
    goto : out STD_LOGIC;
    \pc_reg[5]_P\ : out STD_LOGIC;
    \pc_reg[9]_P\ : out STD_LOGIC;
    \yi_reg[4]_C_1\ : out STD_LOGIC;
    \yi_reg[2]_C_1\ : out STD_LOGIC;
    \status_reg[2]_0\ : out STD_LOGIC;
    \yi_reg[2]_C_2\ : out STD_LOGIC;
    \trisb_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pc_reg[7]_P_0\ : out STD_LOGIC;
    \pc_reg[6]_P_1\ : out STD_LOGIC;
    \pc_reg[5]_P_0\ : out STD_LOGIC;
    \pc_reg[4]_P\ : out STD_LOGIC;
    \pc_reg[3]_P_0\ : out STD_LOGIC;
    \pc_reg[2]_P_1\ : out STD_LOGIC;
    \yi_reg[1]_C_2\ : out STD_LOGIC;
    skip_reg_C : out STD_LOGIC;
    c_reg : out STD_LOGIC;
    longk : out STD_LOGIC_VECTOR ( 0 to 0 );
    \status_reg[0]_0\ : in STD_LOGIC;
    \w_reg[7]_0\ : in STD_LOGIC;
    \w_reg[7]_1\ : in STD_LOGIC;
    mclr : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \w_reg[7]_2\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \stacklevel_reg[0]_0\ : in STD_LOGIC;
    \stacklevel_reg[1]_1\ : in STD_LOGIC;
    \b_reg[6]\ : in STD_LOGIC;
    RB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \frs_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rtccount_reg[6]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    RA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \status_reg[1]_0\ : in STD_LOGIC;
    \status_reg[0]_1\ : in STD_LOGIC;
    \status_reg[3]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dc : in STD_LOGIC;
    \status_reg[1]_1\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    decf_reg_0 : in STD_LOGIC;
    \w_reg[5]\ : in STD_LOGIC;
    \w_reg[1]\ : in STD_LOGIC;
    \w_reg[6]\ : in STD_LOGIC;
    decf_reg_1 : in STD_LOGIC;
    \w_reg[5]_0\ : in STD_LOGIC;
    \w_reg[5]_1\ : in STD_LOGIC;
    \b_reg[3]\ : in STD_LOGIC;
    \w_reg[4]\ : in STD_LOGIC;
    \w_reg[4]_0\ : in STD_LOGIC;
    addwf_reg_0 : in STD_LOGIC;
    andwf_reg_0 : in STD_LOGIC;
    \w_reg[3]\ : in STD_LOGIC;
    decfsz_reg_0 : in STD_LOGIC;
    \w_reg[2]\ : in STD_LOGIC;
    \w_reg[2]_0\ : in STD_LOGIC;
    \b_reg[2]\ : in STD_LOGIC;
    decf_reg_2 : in STD_LOGIC;
    addwf_reg_1 : in STD_LOGIC;
    \b_reg[0]\ : in STD_LOGIC;
    \w_reg[1]_0\ : in STD_LOGIC;
    iorwf_reg_0 : in STD_LOGIC;
    \w_reg[0]\ : in STD_LOGIC;
    \w_reg[0]_0\ : in STD_LOGIC;
    \pc_reg[4]_P_0\ : in STD_LOGIC;
    \status_reg[4]\ : in STD_LOGIC;
    \pc_reg[7]_P_1\ : in STD_LOGIC;
    call_reg_0 : in STD_LOGIC;
    call_reg_1 : in STD_LOGIC;
    retlw_reg_0 : in STD_LOGIC;
    \stack1_reg[2]\ : in STD_LOGIC;
    \stack1_reg[3]\ : in STD_LOGIC;
    \stack1_reg[6]\ : in STD_LOGIC;
    \stack1_reg[7]\ : in STD_LOGIC;
    \pc_reg[7]_P_2\ : in STD_LOGIC;
    \pc_reg[6]_P_2\ : in STD_LOGIC;
    \pc_reg[0]_P_1\ : in STD_LOGIC;
    \pc_reg[4]_P_1\ : in STD_LOGIC;
    \pc_reg[3]_P_1\ : in STD_LOGIC;
    \pc_reg[1]_P_0\ : in STD_LOGIC;
    \pc_reg[1]_P_1\ : in STD_LOGIC;
    \pc_reg[9]_P_0\ : in STD_LOGIC;
    \status_reg[5]\ : in STD_LOGIC;
    \pc_reg[9]_P_1\ : in STD_LOGIC;
    skip_reg_C_0 : in STD_LOGIC;
    \b_reg[7]_1\ : in STD_LOGIC;
    \b_reg[4]\ : in STD_LOGIC;
    \b_reg[6]_0\ : in STD_LOGIC;
    \b_reg[5]\ : in STD_LOGIC;
    \b_reg[4]_0\ : in STD_LOGIC;
    \w_reg[3]_0\ : in STD_LOGIC;
    \b_reg[4]_1\ : in STD_LOGIC;
    status_c : in STD_LOGIC;
    \b_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \b_reg[7]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \b_reg[4]_2\ : in STD_LOGIC;
    \b_reg[4]_3\ : in STD_LOGIC;
    \b_reg[5]_0\ : in STD_LOGIC;
    \b_reg[5]_1\ : in STD_LOGIC;
    \b_reg[7]_3\ : in STD_LOGIC;
    \b_reg[7]_4\ : in STD_LOGIC;
    \status_reg[2]_1\ : in STD_LOGIC;
    \pc_reg[5]_P_1\ : in STD_LOGIC;
    \status_reg[6]\ : in STD_LOGIC;
    \k_reg[7]_0\ : in STD_LOGIC;
    \b_reg[2]_0\ : in STD_LOGIC;
    \b_reg[3]_1\ : in STD_LOGIC;
    \b_reg[6]_1\ : in STD_LOGIC;
    c : in STD_LOGIC;
    rrf_reg_0 : in STD_LOGIC;
    romdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pic16c56_0_0_decoder : entity is "decoder";
end design_1_pic16c56_0_0_decoder;

architecture STRUCTURE of design_1_pic16c56_0_0_decoder is
  signal \^addwf\ : STD_LOGIC;
  signal addwf_i_1_n_0 : STD_LOGIC;
  signal \^andlw\ : STD_LOGIC;
  signal andlw_i_1_n_0 : STD_LOGIC;
  signal \^andwf\ : STD_LOGIC;
  signal andwf_i_1_n_0 : STD_LOGIC;
  signal \b[0]_i_2_n_0\ : STD_LOGIC;
  signal \b[0]_i_3_n_0\ : STD_LOGIC;
  signal \b[1]_i_2_n_0\ : STD_LOGIC;
  signal \b[1]_i_3_n_0\ : STD_LOGIC;
  signal \b[2]_i_3_n_0\ : STD_LOGIC;
  signal \b[3]_i_2_n_0\ : STD_LOGIC;
  signal \b[3]_i_3_n_0\ : STD_LOGIC;
  signal \b[4]_i_2_n_0\ : STD_LOGIC;
  signal \b[4]_i_3_n_0\ : STD_LOGIC;
  signal \b[4]_i_4_n_0\ : STD_LOGIC;
  signal \b[5]_i_2_n_0\ : STD_LOGIC;
  signal \b[5]_i_3_n_0\ : STD_LOGIC;
  signal \b[6]_i_2_n_0\ : STD_LOGIC;
  signal \b[6]_i_3_n_0\ : STD_LOGIC;
  signal \b[7]_i_2_n_0\ : STD_LOGIC;
  signal \b[7]_i_4_n_0\ : STD_LOGIC;
  signal \^b_reg[7]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal bcf : STD_LOGIC;
  signal bcf_i_1_n_0 : STD_LOGIC;
  signal bsf : STD_LOGIC;
  signal bsf_i_1_n_0 : STD_LOGIC;
  signal btfsc : STD_LOGIC;
  signal btfsc_i_1_n_0 : STD_LOGIC;
  signal btfss : STD_LOGIC;
  signal btfss_i_1_n_0 : STD_LOGIC;
  signal \^call\ : STD_LOGIC;
  signal call_i_1_n_0 : STD_LOGIC;
  signal clrf : STD_LOGIC;
  signal clrf_i_1_n_0 : STD_LOGIC;
  signal clrf_i_2_n_0 : STD_LOGIC;
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
  signal k : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^movf\ : STD_LOGIC;
  signal movf_i_1_n_0 : STD_LOGIC;
  signal \^movlw\ : STD_LOGIC;
  signal movlw_i_1_n_0 : STD_LOGIC;
  signal movwf : STD_LOGIC;
  signal movwf_i_1_n_0 : STD_LOGIC;
  signal movwf_i_2_n_0 : STD_LOGIC;
  signal \^option\ : STD_LOGIC;
  signal option_i_1_n_0 : STD_LOGIC;
  signal \pc[0]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[0]_P_i_3_n_0\ : STD_LOGIC;
  signal \pc[1]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[1]_P_i_3_n_0\ : STD_LOGIC;
  signal \pc[3]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[6]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[9]_P_i_8_n_0\ : STD_LOGIC;
  signal \pc[9]_P_i_9_n_0\ : STD_LOGIC;
  signal \^pc_reg[2]_p\ : STD_LOGIC;
  signal \^pc_reg[5]_p\ : STD_LOGIC;
  signal \^pc_reg[6]_p_0\ : STD_LOGIC;
  signal \^retlw\ : STD_LOGIC;
  signal retlw_i_1_n_0 : STD_LOGIC;
  signal \^rlf\ : STD_LOGIC;
  signal rlf_i_1_n_0 : STD_LOGIC;
  signal \^rrf\ : STD_LOGIC;
  signal rrf_i_1_n_0 : STD_LOGIC;
  signal \rtccount[7]_i_2_n_0\ : STD_LOGIC;
  signal \rtccount[7]_i_3_n_0\ : STD_LOGIC;
  signal skip_C_i_2_n_0 : STD_LOGIC;
  signal skip_C_i_4_n_0 : STD_LOGIC;
  signal \^stacklevel_reg[1]_0\ : STD_LOGIC;
  signal \status[2]_i_3_n_0\ : STD_LOGIC;
  signal \status[2]_i_5_n_0\ : STD_LOGIC;
  signal \status[7]_i_2_n_0\ : STD_LOGIC;
  signal \^status_reg[2]_0\ : STD_LOGIC;
  signal \^status_reg[7]\ : STD_LOGIC;
  signal \^subwf\ : STD_LOGIC;
  signal subwf_i_1_n_0 : STD_LOGIC;
  signal \^swapf\ : STD_LOGIC;
  signal swapf_i_1_n_0 : STD_LOGIC;
  signal \^tris\ : STD_LOGIC;
  signal tris_i_1_n_0 : STD_LOGIC;
  signal \w[7]_i_2_n_0\ : STD_LOGIC;
  signal \w[7]_i_3_n_0\ : STD_LOGIC;
  signal \^xorlw\ : STD_LOGIC;
  signal xorlw_i_1_n_0 : STD_LOGIC;
  signal \^xorwf\ : STD_LOGIC;
  signal xorwf_i_1_n_0 : STD_LOGIC;
  signal \yi[0]_C_i_10_n_0\ : STD_LOGIC;
  signal \yi[0]_C_i_11_n_0\ : STD_LOGIC;
  signal \yi[0]_C_i_12_n_0\ : STD_LOGIC;
  signal \yi[0]_C_i_13_n_0\ : STD_LOGIC;
  signal \yi[0]_C_i_14_n_0\ : STD_LOGIC;
  signal \yi[0]_C_i_2_n_0\ : STD_LOGIC;
  signal \yi[0]_C_i_3_n_0\ : STD_LOGIC;
  signal \yi[0]_C_i_4_n_0\ : STD_LOGIC;
  signal \yi[0]_C_i_5_n_0\ : STD_LOGIC;
  signal \yi[0]_C_i_7_n_0\ : STD_LOGIC;
  signal \yi[0]_C_i_8_n_0\ : STD_LOGIC;
  signal \yi[1]_C_i_2_n_0\ : STD_LOGIC;
  signal \yi[1]_C_i_3_n_0\ : STD_LOGIC;
  signal \yi[1]_C_i_4_n_0\ : STD_LOGIC;
  signal \yi[1]_C_i_7_n_0\ : STD_LOGIC;
  signal \yi[1]_C_i_8_n_0\ : STD_LOGIC;
  signal \yi[2]_C_i_2_n_0\ : STD_LOGIC;
  signal \yi[2]_C_i_3_n_0\ : STD_LOGIC;
  signal \yi[2]_C_i_4_n_0\ : STD_LOGIC;
  signal \yi[2]_C_i_7_n_0\ : STD_LOGIC;
  signal \yi[3]_C_i_14_n_0\ : STD_LOGIC;
  signal \yi[3]_C_i_2_n_0\ : STD_LOGIC;
  signal \yi[3]_C_i_3_n_0\ : STD_LOGIC;
  signal \yi[3]_C_i_6_n_0\ : STD_LOGIC;
  signal \yi[4]_C_i_11_n_0\ : STD_LOGIC;
  signal \yi[4]_C_i_12_n_0\ : STD_LOGIC;
  signal \yi[4]_C_i_13_n_0\ : STD_LOGIC;
  signal \yi[4]_C_i_2_n_0\ : STD_LOGIC;
  signal \yi[4]_C_i_3_n_0\ : STD_LOGIC;
  signal \yi[4]_C_i_6_n_0\ : STD_LOGIC;
  signal \yi[5]_C_i_11_n_0\ : STD_LOGIC;
  signal \yi[5]_C_i_12_n_0\ : STD_LOGIC;
  signal \yi[5]_C_i_13_n_0\ : STD_LOGIC;
  signal \yi[5]_C_i_2_n_0\ : STD_LOGIC;
  signal \yi[5]_C_i_3_n_0\ : STD_LOGIC;
  signal \yi[5]_C_i_4_n_0\ : STD_LOGIC;
  signal \yi[5]_C_i_6_n_0\ : STD_LOGIC;
  signal \yi[5]_C_i_8_n_0\ : STD_LOGIC;
  signal \yi[6]_C_i_11_n_0\ : STD_LOGIC;
  signal \yi[6]_C_i_13_n_0\ : STD_LOGIC;
  signal \yi[6]_C_i_2_n_0\ : STD_LOGIC;
  signal \yi[6]_C_i_3_n_0\ : STD_LOGIC;
  signal \yi[6]_C_i_4_n_0\ : STD_LOGIC;
  signal \yi[6]_C_i_5_n_0\ : STD_LOGIC;
  signal \yi[6]_C_i_6_n_0\ : STD_LOGIC;
  signal \yi[6]_C_i_8_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_11_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_14_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_16_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_19_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_20_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_21_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_3_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_5_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_6_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_7_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_8_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_9_n_0\ : STD_LOGIC;
  signal \^yi_reg[0]_c\ : STD_LOGIC;
  signal \^yi_reg[2]_c\ : STD_LOGIC;
  signal \yi_reg[3]_C_i_9_n_0\ : STD_LOGIC;
  signal \^yi_reg[4]_c\ : STD_LOGIC;
  signal z_i_26_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RA_out[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \RB_out[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of andlw_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \b[0]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \b[3]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \b[4]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \b[7]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of bcf_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of bsf_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of btfsc_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of btfss_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of call_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of clrf_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of clrw_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of clrw_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \frs_reg[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of iorlw_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of movlw_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of movwf_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of option_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pc[7]_P_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \pc[9]_P_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pc[9]_P_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pc[9]_P_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pc[9]_P_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pc[9]_P_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pc[9]_P_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of retlw_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rtccount[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rtccount[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of skip_C_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \stacklevel[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \stacklevel[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \status[0]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \status[2]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \status[2]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \status[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of tris_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \trisa[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \trisb[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \w[7]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \w[7]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of xorlw_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \yi[0]_C_i_13\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \yi[0]_C_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \yi[0]_C_i_7\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \yi[1]_C_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \yi[1]_C_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \yi[2]_C_i_14\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \yi[2]_C_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \yi[3]_C_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \yi[4]_C_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \yi[5]_C_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \yi[6]_C_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \yi[7]_C_i_16\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \yi[7]_C_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \yi[7]_C_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \yi[7]_C_i_6\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \yi[7]_C_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of z_i_26 : label is "soft_lutpair26";
begin
  \^d\ <= \^d_1\;
  addwf <= \^addwf\;
  andlw <= \^andlw\;
  andwf <= \^andwf\;
  \b_reg[7]\(5 downto 0) <= \^b_reg[7]\(5 downto 0);
  call <= \^call\;
  comf <= \^comf\;
  decf <= \^decf\;
  decfsz <= \^decfsz\;
  goto <= \^goto\;
  incf <= \^incf\;
  incfsz <= \^incfsz\;
  iorlw <= \^iorlw\;
  iorwf <= \^iorwf\;
  movf <= \^movf\;
  movlw <= \^movlw\;
  option <= \^option\;
  \pc_reg[2]_P\ <= \^pc_reg[2]_p\;
  \pc_reg[5]_P\ <= \^pc_reg[5]_p\;
  \pc_reg[6]_P_0\ <= \^pc_reg[6]_p_0\;
  retlw <= \^retlw\;
  rlf <= \^rlf\;
  rrf <= \^rrf\;
  \stacklevel_reg[1]_0\ <= \^stacklevel_reg[1]_0\;
  \status_reg[2]_0\ <= \^status_reg[2]_0\;
  \status_reg[7]\ <= \^status_reg[7]\;
  subwf <= \^subwf\;
  swapf <= \^swapf\;
  tris <= \^tris\;
  xorlw <= \^xorlw\;
  xorwf <= \^xorwf\;
  \yi_reg[0]_C\ <= \^yi_reg[0]_c\;
  \yi_reg[2]_C\ <= \^yi_reg[2]_c\;
  \yi_reg[4]_C\ <= \^yi_reg[4]_c\;
\RA_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^b_reg[7]\(1),
      I1 => \rtccount[7]_i_2_n_0\,
      I2 => \^b_reg[7]\(2),
      I3 => \^b_reg[7]\(0),
      O => \RA_out_reg[3]\(0)
    );
\RB_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \rtccount[7]_i_2_n_0\,
      I1 => \^b_reg[7]\(2),
      I2 => \^b_reg[7]\(0),
      I3 => \^b_reg[7]\(1),
      O => \RB_out_reg[7]\(0)
    );
addwf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => romdata(6),
      I1 => romdata(11),
      I2 => romdata(10),
      I3 => romdata(7),
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
      INIT => X"0800"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(8),
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
      INIT => X"0000000200000000"
    )
        port map (
      I0 => romdata(6),
      I1 => romdata(11),
      I2 => romdata(10),
      I3 => romdata(7),
      I4 => romdata(9),
      I5 => romdata(8),
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
\b[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => \b[0]_i_2_n_0\,
      I1 => k(3),
      I2 => \^b_reg[7]\(3),
      I3 => \b[7]_i_4_n_0\,
      I4 => \^b_reg[7]\(0),
      O => \b_reg[7]_0\(0)
    );
\b[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => RB(0),
      I1 => \^b_reg[7]\(0),
      I2 => \^b_reg[7]\(1),
      I3 => \b[0]_i_3_n_0\,
      I4 => \^b_reg[7]\(2),
      I5 => \status_reg[0]_1\,
      O => \b[0]_i_2_n_0\
    );
\b[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^b_reg[7]\(0),
      I1 => \frs_reg_reg[7]_0\(0),
      I2 => RA(0),
      O => \b[0]_i_3_n_0\
    );
\b[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => \b[1]_i_2_n_0\,
      I1 => k(3),
      I2 => \^b_reg[7]\(3),
      I3 => \b[7]_i_4_n_0\,
      I4 => \^b_reg[7]\(1),
      O => \b_reg[7]_0\(1)
    );
\b[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => RB(1),
      I1 => \^b_reg[7]\(0),
      I2 => \^b_reg[7]\(1),
      I3 => \b[1]_i_3_n_0\,
      I4 => \^b_reg[7]\(2),
      I5 => \status_reg[1]_0\,
      O => \b[1]_i_2_n_0\
    );
\b[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^b_reg[7]\(0),
      I1 => \frs_reg_reg[7]_0\(1),
      I2 => RA(1),
      O => \b[1]_i_3_n_0\
    );
\b[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CFFFF000A0000"
    )
        port map (
      I0 => \status_reg[2]_1\,
      I1 => \b[2]_i_3_n_0\,
      I2 => k(3),
      I3 => \^b_reg[7]\(3),
      I4 => \b[7]_i_4_n_0\,
      I5 => \^b_reg[7]\(2),
      O => \b_reg[7]_0\(2)
    );
\b[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2222FC30"
    )
        port map (
      I0 => RB(2),
      I1 => \^b_reg[7]\(0),
      I2 => \frs_reg_reg[7]_0\(2),
      I3 => RA(2),
      I4 => \^b_reg[7]\(1),
      O => \b[2]_i_3_n_0\
    );
\b[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCF0000FFCF0010"
    )
        port map (
      I0 => \b[3]_i_2_n_0\,
      I1 => \^retlw\,
      I2 => \b[4]_i_3_n_0\,
      I3 => \^movlw\,
      I4 => k(3),
      I5 => \^b_reg[7]\(3),
      O => \b_reg[7]_0\(3)
    );
\b[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CBFFFFF8CBF0000"
    )
        port map (
      I0 => \^b_reg[7]\(0),
      I1 => \^b_reg[7]\(1),
      I2 => RB(3),
      I3 => \b[3]_i_3_n_0\,
      I4 => \^b_reg[7]\(2),
      I5 => \status_reg[3]\,
      O => \b[3]_i_2_n_0\
    );
\b[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^b_reg[7]\(0),
      I1 => \frs_reg_reg[7]_0\(3),
      I2 => RA(3),
      O => \b[3]_i_3_n_0\
    );
\b[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFFCF00000010"
    )
        port map (
      I0 => \b[4]_i_2_n_0\,
      I1 => \^retlw\,
      I2 => \b[4]_i_3_n_0\,
      I3 => \^movlw\,
      I4 => k(3),
      I5 => \^b_reg[7]\(3),
      O => \b_reg[7]_0\(4)
    );
\b[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDDFFFDF"
    )
        port map (
      I0 => \^b_reg[7]\(1),
      I1 => \^b_reg[7]\(2),
      I2 => \pc_reg[4]_P_0\,
      I3 => \^b_reg[7]\(0),
      I4 => \status_reg[4]\,
      I5 => \b[4]_i_4_n_0\,
      O => \b[4]_i_2_n_0\
    );
\b[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^iorlw\,
      I1 => \^andlw\,
      I2 => \^xorlw\,
      O => \b[4]_i_3_n_0\
    );
\b[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055D8000000D800"
    )
        port map (
      I0 => \^b_reg[7]\(1),
      I1 => RB(4),
      I2 => \frs_reg_reg[7]_0\(4),
      I3 => \^b_reg[7]\(2),
      I4 => \^b_reg[7]\(0),
      I5 => \rtccount_reg[6]\(0),
      O => \b[4]_i_4_n_0\
    );
\b[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AA00AAF3AA"
    )
        port map (
      I0 => \^d_1\,
      I1 => \b[5]_i_2_n_0\,
      I2 => \b[5]_i_3_n_0\,
      I3 => \b[7]_i_4_n_0\,
      I4 => k(3),
      I5 => \^b_reg[7]\(3),
      O => \b_reg[7]_0\(5)
    );
\b[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47FFFF"
    )
        port map (
      I0 => \status_reg[5]\,
      I1 => \^b_reg[7]\(0),
      I2 => \pc_reg[5]_P_1\,
      I3 => \^b_reg[7]\(2),
      I4 => \^b_reg[7]\(1),
      O => \b[5]_i_2_n_0\
    );
\b[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055D8000000D800"
    )
        port map (
      I0 => \^b_reg[7]\(1),
      I1 => RB(5),
      I2 => \frs_reg_reg[7]_0\(5),
      I3 => \^b_reg[7]\(2),
      I4 => \^b_reg[7]\(0),
      I5 => \rtccount_reg[6]\(1),
      O => \b[5]_i_3_n_0\
    );
\b[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AA00AAF3AA"
    )
        port map (
      I0 => \^b_reg[7]\(4),
      I1 => \b[6]_i_2_n_0\,
      I2 => \b[6]_i_3_n_0\,
      I3 => \b[7]_i_4_n_0\,
      I4 => k(3),
      I5 => \^b_reg[7]\(3),
      O => \b_reg[7]_0\(6)
    );
\b[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47FFFF"
    )
        port map (
      I0 => \status_reg[6]\,
      I1 => \^b_reg[7]\(0),
      I2 => \pc_reg[6]_P_2\,
      I3 => \^b_reg[7]\(2),
      I4 => \^b_reg[7]\(1),
      O => \b[6]_i_2_n_0\
    );
\b[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => RB(6),
      I1 => \^b_reg[7]\(1),
      I2 => \frs_reg_reg[7]_0\(6),
      I3 => \^b_reg[7]\(2),
      I4 => \^b_reg[7]\(0),
      I5 => \rtccount_reg[6]\(2),
      O => \b[6]_i_3_n_0\
    );
\b[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AA00AAF3AA"
    )
        port map (
      I0 => \^b_reg[7]\(5),
      I1 => \b[7]_i_2_n_0\,
      I2 => \pc_reg[7]_P_1\,
      I3 => \b[7]_i_4_n_0\,
      I4 => k(3),
      I5 => \^b_reg[7]\(3),
      O => \b_reg[7]_0\(7)
    );
\b[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF27FFFF"
    )
        port map (
      I0 => \^b_reg[7]\(1),
      I1 => RB(7),
      I2 => \frs_reg_reg[7]_0\(7),
      I3 => \^b_reg[7]\(0),
      I4 => \^b_reg[7]\(2),
      O => \b[7]_i_2_n_0\
    );
\b[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^movlw\,
      I1 => \^iorlw\,
      I2 => \^andlw\,
      I3 => \^xorlw\,
      I4 => \^retlw\,
      O => \b[7]_i_4_n_0\
    );
bcf_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(9),
      I3 => romdata(8),
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
      INIT => X"0400"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(9),
      I3 => romdata(8),
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
      INIT => X"0400"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(8),
      I3 => romdata(9),
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
      INIT => X"4000"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(9),
      I3 => romdata(8),
      O => btfss_i_1_n_0
    );
btfss_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => btfss_i_1_n_0,
      Q => btfss,
      R => '0'
    );
c_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => c,
      I1 => \^addwf\,
      I2 => \^subwf\,
      I3 => \^rlf\,
      I4 => \^rrf\,
      I5 => rrf_reg_0,
      O => c_reg
    );
call_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(9),
      I3 => romdata(8),
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
      I0 => romdata(5),
      I1 => clrf_i_2_n_0,
      I2 => romdata(6),
      I3 => romdata(11),
      I4 => romdata(10),
      I5 => romdata(7),
      O => clrf_i_1_n_0
    );
clrf_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => romdata(8),
      I1 => romdata(9),
      O => clrf_i_2_n_0
    );
clrf_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => clrf_i_1_n_0,
      Q => clrf,
      R => '0'
    );
clrw_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => clrw_i_2_n_0,
      I1 => romdata(2),
      I2 => romdata(1),
      I3 => romdata(0),
      I4 => clrw_i_3_n_0,
      O => clrw_i_1_n_0
    );
clrw_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => romdata(7),
      I1 => romdata(10),
      I2 => romdata(11),
      I3 => romdata(6),
      O => clrw_i_2_n_0
    );
clrw_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => romdata(5),
      I1 => romdata(8),
      I2 => romdata(9),
      I3 => romdata(4),
      I4 => romdata(3),
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
clrwdt_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => movwf_i_2_n_0,
      I1 => romdata(1),
      I2 => romdata(2),
      I3 => romdata(0),
      I4 => clrw_i_3_n_0,
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
      INIT => X"0000000200000000"
    )
        port map (
      I0 => romdata(6),
      I1 => romdata(11),
      I2 => romdata(10),
      I3 => romdata(7),
      I4 => romdata(8),
      I5 => romdata(9),
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
decf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => romdata(6),
      I1 => romdata(11),
      I2 => romdata(10),
      I3 => romdata(7),
      I4 => romdata(9),
      I5 => romdata(8),
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
      INIT => X"0000020000000000"
    )
        port map (
      I0 => romdata(6),
      I1 => romdata(11),
      I2 => romdata(10),
      I3 => romdata(7),
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
\frs_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^b_reg[7]\(1),
      I1 => \rtccount[7]_i_2_n_0\,
      I2 => \^b_reg[7]\(2),
      I3 => \^b_reg[7]\(0),
      O => \frs_reg_reg[7]\(0)
    );
goto_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(9),
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
      INIT => X"0000010000000000"
    )
        port map (
      I0 => romdata(6),
      I1 => romdata(11),
      I2 => romdata(10),
      I3 => romdata(7),
      I4 => romdata(8),
      I5 => romdata(9),
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
      INIT => X"0200000000000000"
    )
        port map (
      I0 => romdata(6),
      I1 => romdata(11),
      I2 => romdata(10),
      I3 => romdata(7),
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
      INIT => X"0800"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(9),
      I3 => romdata(8),
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
      INIT => X"0000000100000000"
    )
        port map (
      I0 => romdata(6),
      I1 => romdata(11),
      I2 => romdata(10),
      I3 => romdata(7),
      I4 => romdata(9),
      I5 => romdata(8),
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
      Q => \^b_reg[7]\(0),
      R => '0'
    );
\k_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(1),
      Q => \^b_reg[7]\(1),
      R => '0'
    );
\k_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(2),
      Q => \^b_reg[7]\(2),
      R => '0'
    );
\k_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(3),
      Q => k(3),
      R => '0'
    );
\k_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(4),
      Q => \^b_reg[7]\(3),
      R => '0'
    );
\k_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(6),
      Q => \^b_reg[7]\(4),
      R => '0'
    );
\k_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => romdata(7),
      Q => \^b_reg[7]\(5),
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
      INIT => X"0000000000000004"
    )
        port map (
      I0 => romdata(8),
      I1 => romdata(9),
      I2 => romdata(6),
      I3 => romdata(11),
      I4 => romdata(10),
      I5 => romdata(7),
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
      INIT => X"0008"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(9),
      I3 => romdata(8),
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
movwf_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => romdata(5),
      I1 => romdata(8),
      I2 => romdata(9),
      I3 => movwf_i_2_n_0,
      O => movwf_i_1_n_0
    );
movwf_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => romdata(7),
      I1 => romdata(10),
      I2 => romdata(11),
      I3 => romdata(6),
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
option_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => movwf_i_2_n_0,
      I1 => romdata(2),
      I2 => romdata(1),
      I3 => romdata(0),
      I4 => clrw_i_3_n_0,
      O => option_i_1_n_0
    );
option_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => option_i_1_n_0,
      Q => \^option\,
      R => '0'
    );
\pc[0]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => D(0),
      I1 => \^stacklevel_reg[1]_0\,
      I2 => \pc[0]_P_i_2_n_0\,
      I3 => \pc[0]_P_i_3_n_0\,
      I4 => call_reg_0,
      O => \pc_reg[0]_P\
    );
\pc[0]_P_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F00080000000B"
    )
        port map (
      I0 => \^b_reg[7]\(0),
      I1 => \^goto\,
      I2 => \^retlw\,
      I3 => \^call\,
      I4 => \^pc_reg[6]_p_0\,
      I5 => \pc_reg[0]_P_1\,
      O => \pc[0]_P_i_2_n_0\
    );
\pc[0]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDF00DFDFD0000"
    )
        port map (
      I0 => mclr,
      I1 => \^b_reg[7]\(0),
      I2 => \stacklevel_reg[1]_1\,
      I3 => \stacklevel_reg[0]_0\,
      I4 => \^call\,
      I5 => \^retlw\,
      O => \pc[0]_P_i_3_n_0\
    );
\pc[1]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => D(1),
      I1 => \^stacklevel_reg[1]_0\,
      I2 => \pc[1]_P_i_2_n_0\,
      I3 => \pc[1]_P_i_3_n_0\,
      I4 => call_reg_1,
      O => \pc_reg[1]_P\
    );
\pc[1]_P_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF008B00B800"
    )
        port map (
      I0 => \^b_reg[7]\(1),
      I1 => \^goto\,
      I2 => \pc_reg[0]_P_1\,
      I3 => \^pc_reg[5]_p\,
      I4 => \pc_reg[1]_P_1\,
      I5 => \^pc_reg[6]_p_0\,
      O => \pc[1]_P_i_2_n_0\
    );
\pc[1]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECECECDC00DCDC"
    )
        port map (
      I0 => \stacklevel_reg[0]_0\,
      I1 => \^call\,
      I2 => \^retlw\,
      I3 => \^b_reg[7]\(1),
      I4 => mclr,
      I5 => \stacklevel_reg[1]_1\,
      O => \pc[1]_P_i_3_n_0\
    );
\pc[2]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBBBBBB8"
    )
        port map (
      I0 => D(2),
      I1 => \^stacklevel_reg[1]_0\,
      I2 => retlw_reg_0,
      I3 => \stack1_reg[2]\,
      I4 => \^b_reg[7]\(2),
      I5 => \^pc_reg[2]_p\,
      O => \pc_reg[2]_P_0\
    );
\pc[3]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB8888888B"
    )
        port map (
      I0 => D(3),
      I1 => \^stacklevel_reg[1]_0\,
      I2 => \pc[3]_P_i_2_n_0\,
      I3 => \^retlw\,
      I4 => \^call\,
      I5 => \stack1_reg[3]\,
      O => \pc_reg[3]_P\
    );
\pc[3]_P_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1BB11BB10FF00FA5"
    )
        port map (
      I0 => \^pc_reg[6]_p_0\,
      I1 => k(3),
      I2 => \pc_reg[3]_P_1\,
      I3 => \pc_reg[1]_P_0\,
      I4 => \pc_reg[0]_P_1\,
      I5 => \^goto\,
      O => \pc[3]_P_i_2_n_0\
    );
\pc[3]_P_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECECECDC00DCDC"
    )
        port map (
      I0 => \stacklevel_reg[0]_0\,
      I1 => \^call\,
      I2 => \^retlw\,
      I3 => k(3),
      I4 => mclr,
      I5 => \stacklevel_reg[1]_1\,
      O => \pc_reg[3]_P_0\
    );
\pc[4]_P_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECECECDC00DCDC"
    )
        port map (
      I0 => \stacklevel_reg[0]_0\,
      I1 => \^call\,
      I2 => \^retlw\,
      I3 => \^b_reg[7]\(3),
      I4 => mclr,
      I5 => \stacklevel_reg[1]_1\,
      O => \pc_reg[4]_P\
    );
\pc[5]_P_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECECECDC00DCDC"
    )
        port map (
      I0 => \stacklevel_reg[0]_0\,
      I1 => \^call\,
      I2 => \^retlw\,
      I3 => \^d_1\,
      I4 => mclr,
      I5 => \stacklevel_reg[1]_1\,
      O => \pc_reg[5]_P_0\
    );
\pc[6]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB8888888B"
    )
        port map (
      I0 => D(4),
      I1 => \^stacklevel_reg[1]_0\,
      I2 => \pc[6]_P_i_2_n_0\,
      I3 => \^retlw\,
      I4 => \^call\,
      I5 => \stack1_reg[6]\,
      O => \pc_reg[6]_P\
    );
\pc[6]_P_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10BF10BFBF10BA15"
    )
        port map (
      I0 => \^pc_reg[6]_p_0\,
      I1 => \^b_reg[7]\(4),
      I2 => \^goto\,
      I3 => \pc_reg[6]_P_2\,
      I4 => \pc_reg[0]_P_1\,
      I5 => \pc_reg[4]_P_1\,
      O => \pc[6]_P_i_2_n_0\
    );
\pc[6]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECECECDC00DCDC"
    )
        port map (
      I0 => \stacklevel_reg[0]_0\,
      I1 => \^call\,
      I2 => \^retlw\,
      I3 => \^b_reg[7]\(4),
      I4 => mclr,
      I5 => \stacklevel_reg[1]_1\,
      O => \pc_reg[6]_P_1\
    );
\pc[7]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAABAAAB"
    )
        port map (
      I0 => \stack1_reg[7]\,
      I1 => \^call\,
      I2 => \^retlw\,
      I3 => \pc_reg[7]_P_2\,
      I4 => D(5),
      I5 => \^stacklevel_reg[1]_0\,
      O => \pc_reg[7]_P\
    );
\pc[7]_P_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^retlw\,
      I1 => \^call\,
      O => \pc_reg[2]_P_1\
    );
\pc[7]_P_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECECECDC00DCDC"
    )
        port map (
      I0 => \stacklevel_reg[0]_0\,
      I1 => \^call\,
      I2 => \^retlw\,
      I3 => \^b_reg[7]\(5),
      I4 => mclr,
      I5 => \stacklevel_reg[1]_1\,
      O => \pc_reg[7]_P_0\
    );
\pc[8]_P_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^retlw\,
      I1 => \^call\,
      O => \^pc_reg[5]_p\
    );
\pc[9]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFB"
    )
        port map (
      I0 => \^stacklevel_reg[1]_0\,
      I1 => \^retlw\,
      I2 => \^call\,
      I3 => \stacklevel_reg[0]_0\,
      I4 => \stacklevel_reg[1]_1\,
      O => \pc_reg[0]_P_0\
    );
\pc[9]_P_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => skip_reg_C_0,
      I1 => btfsc,
      I2 => btfss,
      I3 => \^incfsz\,
      I4 => \^decfsz\,
      O => \^pc_reg[6]_p_0\
    );
\pc[9]_P_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFEE"
    )
        port map (
      I0 => bsf,
      I1 => bcf,
      I2 => \pc[9]_P_i_8_n_0\,
      I3 => \^d_1\,
      I4 => \pc[9]_P_i_9_n_0\,
      O => \^stacklevel_reg[1]_0\
    );
\pc[9]_P_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1331"
    )
        port map (
      I0 => \^retlw\,
      I1 => \^call\,
      I2 => \stacklevel_reg[0]_0\,
      I3 => \stacklevel_reg[1]_1\,
      O => \^pc_reg[2]_p\
    );
\pc[9]_P_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A202AAAAA202"
    )
        port map (
      I0 => \^pc_reg[5]_p\,
      I1 => \pc_reg[9]_P_0\,
      I2 => \^goto\,
      I3 => \status_reg[5]\,
      I4 => \^pc_reg[6]_p_0\,
      I5 => \pc_reg[9]_P_1\,
      O => \pc_reg[9]_P\
    );
\pc[9]_P_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \status[2]_i_3_n_0\,
      I1 => \^swapf\,
      I2 => movwf,
      I3 => \^rrf\,
      I4 => \^rlf\,
      O => \pc[9]_P_i_8_n_0\
    );
\pc[9]_P_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => \^b_reg[7]\(0),
      I1 => \^b_reg[7]\(1),
      I2 => \^b_reg[7]\(2),
      I3 => k(3),
      I4 => \^b_reg[7]\(3),
      O => \pc[9]_P_i_9_n_0\
    );
retlw_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => romdata(10),
      I1 => romdata(11),
      I2 => romdata(9),
      I3 => romdata(8),
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
      INIT => X"0002000000000000"
    )
        port map (
      I0 => romdata(6),
      I1 => romdata(11),
      I2 => romdata(10),
      I3 => romdata(7),
      I4 => romdata(9),
      I5 => romdata(8),
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
      INIT => X"0000000000000008"
    )
        port map (
      I0 => romdata(9),
      I1 => romdata(8),
      I2 => romdata(6),
      I3 => romdata(11),
      I4 => romdata(10),
      I5 => romdata(7),
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
\rtccount[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \rtccount[7]_i_2_n_0\,
      I1 => \^b_reg[7]\(1),
      I2 => \^b_reg[7]\(0),
      I3 => \^b_reg[7]\(2),
      O => \rtccount_reg[7]\(0)
    );
\rtccount[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008008880080"
    )
        port map (
      I0 => mclr,
      I1 => \status[7]_i_2_n_0\,
      I2 => \w[7]_i_3_n_0\,
      I3 => \rtccount[7]_i_3_n_0\,
      I4 => \^d_1\,
      I5 => \^retlw\,
      O => \rtccount[7]_i_2_n_0\
    );
\rtccount[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bsf,
      I1 => bcf,
      O => \rtccount[7]_i_3_n_0\
    );
skip_C_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BB8B8B8B"
    )
        port map (
      I0 => skip_reg_C_0,
      I1 => skip_C_i_2_n_0,
      I2 => \^incfsz\,
      I3 => \b_reg[6]\,
      I4 => Q(7),
      I5 => skip_C_i_4_n_0,
      O => skip_reg_C
    );
skip_C_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^decfsz\,
      I1 => \^incfsz\,
      I2 => btfss,
      I3 => btfsc,
      O => skip_C_i_2_n_0
    );
skip_C_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF6F006F"
    )
        port map (
      I0 => \k_reg[7]_0\,
      I1 => btfss,
      I2 => mclr,
      I3 => \^decfsz\,
      I4 => \b_reg[2]_0\,
      I5 => \^incfsz\,
      O => skip_C_i_4_n_0
    );
\stacklevel[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F003D8"
    )
        port map (
      I0 => \^retlw\,
      I1 => \stacklevel_reg[1]_1\,
      I2 => \stacklevel_reg[0]_0\,
      I3 => \^call\,
      I4 => \^stacklevel_reg[1]_0\,
      O => \stacklevel_reg[0]\
    );
\stacklevel[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC30C4"
    )
        port map (
      I0 => \^retlw\,
      I1 => \stacklevel_reg[1]_1\,
      I2 => \stacklevel_reg[0]_0\,
      I3 => \^call\,
      I4 => \^stacklevel_reg[1]_0\,
      O => \stacklevel_reg[1]\
    );
\status[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^addwf\,
      I1 => \^subwf\,
      I2 => \^rlf\,
      I3 => \^rrf\,
      O => \status_reg[0]\
    );
\status[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCAFCCCCCCA0"
    )
        port map (
      I0 => D(1),
      I1 => dc,
      I2 => \^status_reg[7]\,
      I3 => \^addwf\,
      I4 => \^subwf\,
      I5 => \status_reg[1]_1\,
      O => \status_reg[1]\
    );
\status[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \status[2]_i_3_n_0\,
      I1 => \^xorlw\,
      I2 => \^andlw\,
      I3 => \^iorlw\,
      O => \status_reg[2]\
    );
\status[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \^yi_reg[0]_c\,
      I1 => \^andwf\,
      I2 => \^decf\,
      I3 => \^subwf\,
      I4 => \^status_reg[2]_0\,
      I5 => \status[2]_i_5_n_0\,
      O => \status[2]_i_3_n_0\
    );
\status[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clrw,
      I1 => clrf,
      O => \^status_reg[2]_0\
    );
\status[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^movf\,
      I1 => \^incf\,
      I2 => \^comf\,
      O => \status[2]_i_5_n_0\
    );
\status[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E00000000000"
    )
        port map (
      I0 => bcf,
      I1 => bsf,
      I2 => \^b_reg[7]\(1),
      I3 => \status[7]_i_2_n_0\,
      I4 => \^b_reg[7]\(2),
      I5 => \^b_reg[7]\(0),
      O => \^status_reg[7]\
    );
\status[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^b_reg[7]\(3),
      I1 => k(3),
      O => \status[7]_i_2_n_0\
    );
subwf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => romdata(6),
      I1 => romdata(11),
      I2 => romdata(10),
      I3 => romdata(7),
      I4 => romdata(9),
      I5 => romdata(8),
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
      INIT => X"0100000000000000"
    )
        port map (
      I0 => romdata(6),
      I1 => romdata(11),
      I2 => romdata(10),
      I3 => romdata(7),
      I4 => romdata(9),
      I5 => romdata(8),
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
tris_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28000000"
    )
        port map (
      I0 => movwf_i_2_n_0,
      I1 => romdata(1),
      I2 => romdata(0),
      I3 => romdata(2),
      I4 => clrw_i_3_n_0,
      O => tris_i_1_n_0
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
      I0 => \^b_reg[7]\(2),
      I1 => \^tris\,
      I2 => \^b_reg[7]\(0),
      I3 => \^b_reg[7]\(1),
      O => E(0)
    );
\trisb[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^tris\,
      I1 => \^b_reg[7]\(2),
      I2 => \^b_reg[7]\(0),
      I3 => \^b_reg[7]\(1),
      O => \trisb_reg[7]\(0)
    );
\w[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BB00BB00BB0FBB"
    )
        port map (
      I0 => \^retlw\,
      I1 => \^d_1\,
      I2 => \w[7]_i_2_n_0\,
      I3 => \w[7]_i_3_n_0\,
      I4 => bcf,
      I5 => bsf,
      O => \w_reg[7]\(0)
    );
\w[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^xorlw\,
      I1 => \^andlw\,
      I2 => \^iorlw\,
      I3 => \^movlw\,
      O => \w[7]_i_2_n_0\
    );
\w[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \pc[9]_P_i_8_n_0\,
      I1 => \^incfsz\,
      I2 => \^decfsz\,
      I3 => \^retlw\,
      O => \w[7]_i_3_n_0\
    );
xorlw_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => romdata(11),
      I1 => romdata(10),
      I2 => romdata(9),
      I3 => romdata(8),
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
      INIT => X"0000010000000000"
    )
        port map (
      I0 => romdata(6),
      I1 => romdata(11),
      I2 => romdata(10),
      I3 => romdata(7),
      I4 => romdata(9),
      I5 => romdata(8),
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
\yi[0]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFE54105410"
    )
        port map (
      I0 => \^retlw\,
      I1 => bsf,
      I2 => \yi[0]_C_i_2_n_0\,
      I3 => \yi[0]_C_i_3_n_0\,
      I4 => bcf,
      I5 => Q(0),
      O => \yi_reg[0]_C_0\
    );
\yi[0]_C_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555D0000FFFFFFFF"
    )
        port map (
      I0 => \yi[0]_C_i_13_n_0\,
      I1 => \w_reg[7]_2\(0),
      I2 => clrw,
      I3 => clrf,
      I4 => \yi[0]_C_i_14_n_0\,
      I5 => \^yi_reg[0]_c\,
      O => \yi[0]_C_i_10_n_0\
    );
\yi[0]_C_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40544000FFFFFFFF"
    )
        port map (
      I0 => \^xorlw\,
      I1 => Q(0),
      I2 => \w_reg[7]_2\(0),
      I3 => \^andlw\,
      I4 => \^iorlw\,
      I5 => \yi[2]_C_i_7_n_0\,
      O => \yi[0]_C_i_11_n_0\
    );
\yi[0]_C_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F0000FF1FBF5FFF"
    )
        port map (
      I0 => \^movlw\,
      I1 => \^tris\,
      I2 => \b[4]_i_3_n_0\,
      I3 => Q(0),
      I4 => \w_reg[7]_2\(0),
      I5 => \^xorlw\,
      O => \yi[0]_C_i_12_n_0\
    );
\yi[0]_C_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^decf\,
      I1 => \^subwf\,
      I2 => \^andwf\,
      O => \yi[0]_C_i_13_n_0\
    );
\yi[0]_C_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00000045EF45EF"
    )
        port map (
      I0 => \^decf\,
      I1 => \b_reg[3]_0\(0),
      I2 => \^subwf\,
      I3 => Q(0),
      I4 => \w_reg[7]_2\(0),
      I5 => \^andwf\,
      O => \yi[0]_C_i_14_n_0\
    );
\yi[0]_C_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00AE"
    )
        port map (
      I0 => \yi[0]_C_i_4_n_0\,
      I1 => \yi[7]_C_i_9_n_0\,
      I2 => \yi[0]_C_i_5_n_0\,
      I3 => \w_reg[0]\,
      I4 => \yi[2]_C_i_7_n_0\,
      I5 => \yi[0]_C_i_7_n_0\,
      O => \yi[0]_C_i_2_n_0\
    );
\yi[0]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^b_reg[7]\(5),
      I2 => \^b_reg[7]\(4),
      O => \yi[0]_C_i_3_n_0\
    );
\yi[0]_C_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB888"
    )
        port map (
      I0 => status_c,
      I1 => \^rlf\,
      I2 => Q(1),
      I3 => \^rrf\,
      I4 => \yi[0]_C_i_8_n_0\,
      O => \yi[0]_C_i_4_n_0\
    );
\yi[0]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9ABA9A8A9ABA9AB"
    )
        port map (
      I0 => Q(0),
      I1 => \^comf\,
      I2 => \^incf\,
      I3 => \^movf\,
      I4 => \w_reg[0]_0\,
      I5 => \yi[0]_C_i_10_n_0\,
      O => \yi[0]_C_i_5_n_0\
    );
\yi[0]_C_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => \yi[0]_C_i_11_n_0\,
      I1 => \yi[0]_C_i_12_n_0\,
      I2 => bcf,
      I3 => mclr,
      O => \yi[0]_C_i_7_n_0\
    );
\yi[0]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF04"
    )
        port map (
      I0 => \^yi_reg[2]_c\,
      I1 => \^decfsz\,
      I2 => Q(0),
      I3 => \^option\,
      I4 => \^incfsz\,
      I5 => \^swapf\,
      O => \yi[0]_C_i_8_n_0\
    );
\yi[1]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFE54105410"
    )
        port map (
      I0 => \^retlw\,
      I1 => bsf,
      I2 => \yi[1]_C_i_2_n_0\,
      I3 => \yi[1]_C_i_3_n_0\,
      I4 => bcf,
      I5 => Q(1),
      O => \yi_reg[1]_C_1\
    );
\yi[1]_C_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^rlf\,
      I1 => \^rrf\,
      I2 => \^decfsz\,
      O => \yi_reg[1]_C_0\
    );
\yi[1]_C_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555DFF5D"
    )
        port map (
      I0 => \^yi_reg[4]_c\,
      I1 => \^rrf\,
      I2 => Q(2),
      I3 => \^rlf\,
      I4 => Q(0),
      O => \yi_reg[1]_C_2\
    );
\yi[1]_C_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"39396C7DFFFFFFFF"
    )
        port map (
      I0 => \^incf\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^movf\,
      I4 => \^comf\,
      I5 => \yi[7]_C_i_9_n_0\,
      O => \yi_reg[1]_C\
    );
\yi[1]_C_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000E0000000E00"
    )
        port map (
      I0 => \yi[1]_C_i_4_n_0\,
      I1 => \yi[7]_C_i_5_n_0\,
      I2 => \b_reg[0]\,
      I3 => \yi[7]_C_i_16_n_0\,
      I4 => \yi[2]_C_i_7_n_0\,
      I5 => \w_reg[1]_0\,
      O => \yi[1]_C_i_2_n_0\
    );
\yi[1]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^b_reg[7]\(5),
      I2 => \^b_reg[7]\(4),
      O => \yi[1]_C_i_3_n_0\
    );
\yi[1]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEBFF"
    )
        port map (
      I0 => \yi[1]_C_i_7_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^decf\,
      I4 => \yi[1]_C_i_8_n_0\,
      I5 => iorwf_reg_0,
      O => \yi[1]_C_i_4_n_0\
    );
\yi[1]_C_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \^xorwf\,
      I1 => \^addwf\,
      I2 => \^iorwf\,
      I3 => Q(1),
      I4 => \w_reg[7]_2\(1),
      I5 => \^andwf\,
      O => \yi[1]_C_i_7_n_0\
    );
\yi[1]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00070F07"
    )
        port map (
      I0 => \^status_reg[2]_0\,
      I1 => \w_reg[7]_2\(1),
      I2 => \^decf\,
      I3 => \^subwf\,
      I4 => \b_reg[3]_0\(1),
      I5 => \^andwf\,
      O => \yi[1]_C_i_8_n_0\
    );
\yi[2]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFE54105410"
    )
        port map (
      I0 => \^retlw\,
      I1 => bsf,
      I2 => \yi[2]_C_i_2_n_0\,
      I3 => \yi[2]_C_i_3_n_0\,
      I4 => bcf,
      I5 => Q(2),
      O => \yi_reg[2]_C_0\
    );
\yi[2]_C_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F55DFD"
    )
        port map (
      I0 => \^yi_reg[4]_c\,
      I1 => \^rrf\,
      I2 => \^rlf\,
      I3 => Q(1),
      I4 => Q(3),
      O => \yi_reg[2]_C_1\
    );
\yi[2]_C_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rrf\,
      I1 => \^rlf\,
      O => \^yi_reg[2]_c\
    );
\yi[2]_C_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0F000808"
    )
        port map (
      I0 => \w_reg[7]_2\(2),
      I1 => \^status_reg[2]_0\,
      I2 => \^decf\,
      I3 => \b_reg[3]_0\(2),
      I4 => \^subwf\,
      I5 => \^andwf\,
      O => \yi_reg[2]_C_2\
    );
\yi[2]_C_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF008A0000008A00"
    )
        port map (
      I0 => \yi[2]_C_i_4_n_0\,
      I1 => decfsz_reg_0,
      I2 => \w_reg[2]\,
      I3 => \yi[7]_C_i_16_n_0\,
      I4 => \yi[2]_C_i_7_n_0\,
      I5 => \w_reg[2]_0\,
      O => \yi[2]_C_i_2_n_0\
    );
\yi[2]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^b_reg[7]\(4),
      I2 => \^b_reg[7]\(5),
      O => \yi[2]_C_i_3_n_0\
    );
\yi[2]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFA200"
    )
        port map (
      I0 => \^yi_reg[0]_c\,
      I1 => \^andwf\,
      I2 => \b_reg[2]\,
      I3 => decf_reg_2,
      I4 => addwf_reg_1,
      I5 => \yi[7]_C_i_5_n_0\,
      O => \yi[2]_C_i_4_n_0\
    );
\yi[2]_C_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => clrwdt,
      I1 => \^tris\,
      I2 => \^movlw\,
      I3 => \^iorlw\,
      I4 => \^andlw\,
      I5 => \^xorlw\,
      O => \yi[2]_C_i_7_n_0\
    );
\yi[3]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFE54105410"
    )
        port map (
      I0 => \^retlw\,
      I1 => bsf,
      I2 => \yi[3]_C_i_2_n_0\,
      I3 => \yi[3]_C_i_3_n_0\,
      I4 => bcf,
      I5 => Q(3),
      O => \yi_reg[3]_C\
    );
\yi[3]_C_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88BB888"
    )
        port map (
      I0 => \b_reg[3]_1\,
      I1 => \^incf\,
      I2 => \^comf\,
      I3 => Q(3),
      I4 => \^movf\,
      O => \yi[3]_C_i_14_n_0\
    );
\yi[3]_C_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA8AAAAAAAA"
    )
        port map (
      I0 => \yi[7]_C_i_16_n_0\,
      I1 => \yi[7]_C_i_5_n_0\,
      I2 => addwf_reg_0,
      I3 => andwf_reg_0,
      I4 => \yi[3]_C_i_6_n_0\,
      I5 => \w_reg[3]\,
      O => \yi[3]_C_i_2_n_0\
    );
\yi[3]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^d_1\,
      I1 => \^b_reg[7]\(4),
      I2 => \^b_reg[7]\(5),
      O => \yi[3]_C_i_3_n_0\
    );
\yi[3]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAA"
    )
        port map (
      I0 => \yi[2]_C_i_7_n_0\,
      I1 => \^option\,
      I2 => \^incfsz\,
      I3 => \^swapf\,
      I4 => \yi_reg[3]_C_i_9_n_0\,
      I5 => \w_reg[3]_0\,
      O => \yi[3]_C_i_6_n_0\
    );
\yi[4]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFE54105410"
    )
        port map (
      I0 => \^retlw\,
      I1 => bsf,
      I2 => \yi[4]_C_i_2_n_0\,
      I3 => \yi[4]_C_i_3_n_0\,
      I4 => bcf,
      I5 => Q(4),
      O => \yi_reg[4]_C_0\
    );
\yi[4]_C_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0FFCAFFCA00C0"
    )
        port map (
      I0 => \^xorwf\,
      I1 => O(0),
      I2 => \^addwf\,
      I3 => \^iorwf\,
      I4 => \w_reg[7]_2\(3),
      I5 => Q(4),
      O => \yi[4]_C_i_11_n_0\
    );
\yi[4]_C_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007F7FFFF07F7"
    )
        port map (
      I0 => \^subwf\,
      I1 => \b_reg[7]_2\(0),
      I2 => \^decf\,
      I3 => \b_reg[4]_2\,
      I4 => \^andwf\,
      I5 => \b_reg[4]_3\,
      O => \yi[4]_C_i_12_n_0\
    );
\yi[4]_C_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \^andwf\,
      I1 => \^subwf\,
      I2 => \^decf\,
      I3 => \w_reg[7]_2\(3),
      I4 => clrw,
      I5 => clrf,
      O => \yi[4]_C_i_13_n_0\
    );
\yi[4]_C_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA08AAAAAAAA"
    )
        port map (
      I0 => \yi[7]_C_i_16_n_0\,
      I1 => \^yi_reg[4]_c\,
      I2 => \b_reg[3]\,
      I3 => \w_reg[4]\,
      I4 => \yi[4]_C_i_6_n_0\,
      I5 => \w_reg[4]_0\,
      O => \yi[4]_C_i_2_n_0\
    );
\yi[4]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^b_reg[7]\(4),
      I1 => \^b_reg[7]\(5),
      I2 => \^d_1\,
      O => \yi[4]_C_i_3_n_0\
    );
\yi[4]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAABABABAB"
    )
        port map (
      I0 => \yi[2]_C_i_7_n_0\,
      I1 => \yi[7]_C_i_5_n_0\,
      I2 => \yi[4]_C_i_11_n_0\,
      I3 => \yi[4]_C_i_12_n_0\,
      I4 => \yi[4]_C_i_13_n_0\,
      I5 => \^yi_reg[0]_c\,
      O => \yi[4]_C_i_6_n_0\
    );
\yi[4]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888880C0CC0CC"
    )
        port map (
      I0 => \b_reg[4]_0\,
      I1 => \yi[7]_C_i_9_n_0\,
      I2 => \^comf\,
      I3 => \^movf\,
      I4 => Q(4),
      I5 => \^incf\,
      O => \yi_reg[4]_C_1\
    );
\yi[5]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFE54105410"
    )
        port map (
      I0 => \^retlw\,
      I1 => bsf,
      I2 => \yi[5]_C_i_2_n_0\,
      I3 => \yi[5]_C_i_3_n_0\,
      I4 => bcf,
      I5 => Q(5),
      O => \yi_reg[5]_C\
    );
\yi[5]_C_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0FFCAFFCA00C0"
    )
        port map (
      I0 => \^xorwf\,
      I1 => O(1),
      I2 => \^addwf\,
      I3 => \^iorwf\,
      I4 => \w_reg[7]_2\(4),
      I5 => Q(5),
      O => \yi[5]_C_i_11_n_0\
    );
\yi[5]_C_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007F7FFFF07F7"
    )
        port map (
      I0 => \^subwf\,
      I1 => \b_reg[7]_2\(1),
      I2 => \^decf\,
      I3 => \b_reg[5]_0\,
      I4 => \^andwf\,
      I5 => \b_reg[5]_1\,
      O => \yi[5]_C_i_12_n_0\
    );
\yi[5]_C_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \^andwf\,
      I1 => \^subwf\,
      I2 => \^decf\,
      I3 => \w_reg[7]_2\(4),
      I4 => clrw,
      I5 => clrf,
      O => \yi[5]_C_i_13_n_0\
    );
\yi[5]_C_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000444044444444"
    )
        port map (
      I0 => bcf,
      I1 => mclr,
      I2 => \yi[5]_C_i_4_n_0\,
      I3 => \w_reg[5]_0\,
      I4 => \yi[5]_C_i_6_n_0\,
      I5 => \w_reg[5]_1\,
      O => \yi[5]_C_i_2_n_0\
    );
\yi[5]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^b_reg[7]\(4),
      I1 => \^b_reg[7]\(5),
      I2 => \^d_1\,
      O => \yi[5]_C_i_3_n_0\
    );
\yi[5]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010101000100"
    )
        port map (
      I0 => \^option\,
      I1 => \^incfsz\,
      I2 => \^swapf\,
      I3 => \yi[5]_C_i_8_n_0\,
      I4 => \yi[7]_C_i_9_n_0\,
      I5 => \b_reg[6]_0\,
      O => \yi[5]_C_i_4_n_0\
    );
\yi[5]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAABABABAB"
    )
        port map (
      I0 => \yi[2]_C_i_7_n_0\,
      I1 => \yi[7]_C_i_5_n_0\,
      I2 => \yi[5]_C_i_11_n_0\,
      I3 => \yi[5]_C_i_12_n_0\,
      I4 => \yi[5]_C_i_13_n_0\,
      I5 => \^yi_reg[0]_c\,
      O => \yi[5]_C_i_6_n_0\
    );
\yi[5]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888880C0CC0CC"
    )
        port map (
      I0 => \b_reg[5]\,
      I1 => \yi[7]_C_i_9_n_0\,
      I2 => \^comf\,
      I3 => \^movf\,
      I4 => Q(5),
      I5 => \^incf\,
      O => \yi[5]_C_i_8_n_0\
    );
\yi[6]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFE54105410"
    )
        port map (
      I0 => \^retlw\,
      I1 => bsf,
      I2 => \yi[6]_C_i_2_n_0\,
      I3 => \yi[6]_C_i_3_n_0\,
      I4 => bcf,
      I5 => Q(6),
      O => \yi_reg[6]_C\
    );
\yi[6]_C_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0FFCAFFCA00C0"
    )
        port map (
      I0 => \^xorwf\,
      I1 => O(2),
      I2 => \^addwf\,
      I3 => \^iorwf\,
      I4 => \w_reg[7]_2\(5),
      I5 => Q(6),
      O => \yi[6]_C_i_11_n_0\
    );
\yi[6]_C_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010101010001"
    )
        port map (
      I0 => \^andwf\,
      I1 => \^subwf\,
      I2 => \^decf\,
      I3 => \w_reg[7]_2\(5),
      I4 => clrw,
      I5 => clrf,
      O => \yi[6]_C_i_13_n_0\
    );
\yi[6]_C_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000444044444444"
    )
        port map (
      I0 => bcf,
      I1 => mclr,
      I2 => \yi[6]_C_i_4_n_0\,
      I3 => \yi[6]_C_i_5_n_0\,
      I4 => \yi[6]_C_i_6_n_0\,
      I5 => \w_reg[6]\,
      O => \yi[6]_C_i_2_n_0\
    );
\yi[6]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^b_reg[7]\(4),
      I1 => \^b_reg[7]\(5),
      I2 => \^d_1\,
      O => \yi[6]_C_i_3_n_0\
    );
\yi[6]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010001000101"
    )
        port map (
      I0 => \^option\,
      I1 => \^incfsz\,
      I2 => \^swapf\,
      I3 => \yi[6]_C_i_8_n_0\,
      I4 => \yi[7]_C_i_9_n_0\,
      I5 => \b_reg[7]_1\,
      O => \yi[6]_C_i_4_n_0\
    );
\yi[6]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8080000F808"
    )
        port map (
      I0 => \^swapf\,
      I1 => Q(2),
      I2 => \^incfsz\,
      I3 => \b_reg[6]_1\,
      I4 => \^option\,
      I5 => \w_reg[7]_2\(5),
      O => \yi[6]_C_i_5_n_0\
    );
\yi[6]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABABABAAABAB"
    )
        port map (
      I0 => \yi[2]_C_i_7_n_0\,
      I1 => \yi[7]_C_i_5_n_0\,
      I2 => \yi[6]_C_i_11_n_0\,
      I3 => decf_reg_1,
      I4 => \^yi_reg[0]_c\,
      I5 => \yi[6]_C_i_13_n_0\,
      O => \yi[6]_C_i_6_n_0\
    );
\yi[6]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8844884400CCCC0C"
    )
        port map (
      I0 => \b_reg[4]\,
      I1 => \yi[7]_C_i_9_n_0\,
      I2 => \^movf\,
      I3 => Q(6),
      I4 => \^comf\,
      I5 => \^incf\,
      O => \yi[6]_C_i_8_n_0\
    );
\yi[7]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \yi[7]_C_i_3_n_0\,
      I1 => \^andwf\,
      I2 => \^yi_reg[0]_c\,
      I3 => \b[7]_i_4_n_0\,
      I4 => \yi[7]_C_i_5_n_0\,
      O => \yi_reg[0]_C_1\
    );
\yi[7]_C_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^swapf\,
      I1 => \^incfsz\,
      I2 => \^option\,
      O => \^yi_reg[4]_c\
    );
\yi[7]_C_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73BF73BF7FB37FBF"
    )
        port map (
      I0 => \b_reg[6]\,
      I1 => \yi[7]_C_i_9_n_0\,
      I2 => \^incf\,
      I3 => Q(7),
      I4 => \^movf\,
      I5 => \^comf\,
      O => \yi[7]_C_i_11_n_0\
    );
\yi[7]_C_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAABABABAB"
    )
        port map (
      I0 => \yi[2]_C_i_7_n_0\,
      I1 => \yi[7]_C_i_5_n_0\,
      I2 => \yi[7]_C_i_19_n_0\,
      I3 => \yi[7]_C_i_20_n_0\,
      I4 => \yi[7]_C_i_21_n_0\,
      I5 => \^yi_reg[0]_c\,
      O => \yi[7]_C_i_14_n_0\
    );
\yi[7]_C_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mclr,
      I1 => bcf,
      O => \yi[7]_C_i_16_n_0\
    );
\yi[7]_C_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0FFCAFFCA00C0"
    )
        port map (
      I0 => \^xorwf\,
      I1 => O(3),
      I2 => \^addwf\,
      I3 => \^iorwf\,
      I4 => \w_reg[7]_2\(6),
      I5 => Q(7),
      O => \yi[7]_C_i_19_n_0\
    );
\yi[7]_C_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF45FB40FF45FA40"
    )
        port map (
      I0 => \^retlw\,
      I1 => \yi[7]_C_i_6_n_0\,
      I2 => bsf,
      I3 => Q(7),
      I4 => \yi[7]_C_i_7_n_0\,
      I5 => bcf,
      O => \yi_reg[7]_C\
    );
\yi[7]_C_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F707FFFFF707"
    )
        port map (
      I0 => \^subwf\,
      I1 => \b_reg[7]_2\(2),
      I2 => \^decf\,
      I3 => \b_reg[7]_3\,
      I4 => \^andwf\,
      I5 => \b_reg[7]_4\,
      O => \yi[7]_C_i_20_n_0\
    );
\yi[7]_C_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \^andwf\,
      I1 => \^subwf\,
      I2 => \^decf\,
      I3 => \w_reg[7]_2\(6),
      I4 => clrw,
      I5 => clrf,
      O => \yi[7]_C_i_21_n_0\
    );
\yi[7]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \yi[7]_C_i_8_n_0\,
      I1 => movwf,
      I2 => bcf,
      I3 => bsf,
      I4 => \^tris\,
      I5 => clrwdt,
      O => \yi[7]_C_i_3_n_0\
    );
\yi[7]_C_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^iorwf\,
      I1 => \^addwf\,
      I2 => \^xorwf\,
      O => \^yi_reg[0]_c\
    );
\yi[7]_C_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFFFF"
    )
        port map (
      I0 => \yi[7]_C_i_9_n_0\,
      I1 => \^movf\,
      I2 => \^incf\,
      I3 => \^comf\,
      I4 => \^yi_reg[4]_c\,
      O => \yi[7]_C_i_5_n_0\
    );
\yi[7]_C_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^b_reg[7]\(4),
      I1 => \^b_reg[7]\(5),
      I2 => \^d_1\,
      O => \yi[7]_C_i_6_n_0\
    );
\yi[7]_C_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00F200000000"
    )
        port map (
      I0 => \yi[7]_C_i_11_n_0\,
      I1 => \status_reg[0]_0\,
      I2 => \w_reg[7]_0\,
      I3 => \yi[7]_C_i_14_n_0\,
      I4 => \w_reg[7]_1\,
      I5 => \yi[7]_C_i_16_n_0\,
      O => \yi[7]_C_i_7_n_0\
    );
\yi[7]_C_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^decf\,
      I1 => \^subwf\,
      I2 => clrf,
      I3 => clrw,
      O => \yi[7]_C_i_8_n_0\
    );
\yi[7]_C_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^decfsz\,
      I1 => \^rlf\,
      I2 => \^rrf\,
      O => \yi[7]_C_i_9_n_0\
    );
\yi_reg[3]_C_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \b_reg[4]_1\,
      I1 => \yi[3]_C_i_14_n_0\,
      O => \yi_reg[3]_C_i_9_n_0\,
      S => \yi[7]_C_i_9_n_0\
    );
z_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => z_i_26_n_0,
      I1 => decf_reg_0,
      I2 => \^andwf\,
      I3 => \w_reg[5]\,
      I4 => \^xorwf\,
      I5 => \w_reg[1]\,
      O => z_reg_0
    );
z_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addwf\,
      I1 => \^iorwf\,
      O => z_i_26_n_0
    );
z_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF70"
    )
        port map (
      I0 => \b_reg[6]\,
      I1 => Q(7),
      I2 => \^incf\,
      I3 => \^xorlw\,
      I4 => \^andlw\,
      I5 => \^iorlw\,
      O => z_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pic16c56_0_0_distribute is
  port (
    \romaddr[9]\ : out STD_LOGIC;
    \trisa_reg[0]_0\ : out STD_LOGIC;
    \romaddr[8]\ : out STD_LOGIC;
    \romaddr[7]\ : out STD_LOGIC;
    \romaddr[6]\ : out STD_LOGIC;
    \romaddr[5]\ : out STD_LOGIC;
    \romaddr[4]\ : out STD_LOGIC;
    \romaddr[3]\ : out STD_LOGIC;
    \romaddr[2]\ : out STD_LOGIC;
    \romaddr[1]\ : out STD_LOGIC;
    \romaddr[0]\ : out STD_LOGIC;
    \stack2_reg[0]_0\ : out STD_LOGIC;
    \stack2_reg[0]_1\ : out STD_LOGIC;
    \b_reg[6]_0\ : out STD_LOGIC;
    \pc_reg[9]_P_0\ : out STD_LOGIC;
    \b_reg[4]_0\ : out STD_LOGIC;
    \status_reg[2]_0\ : out STD_LOGIC;
    \status_reg[1]_0\ : out STD_LOGIC;
    status_c : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    skip_reg_C : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \stack1_reg[7]_0\ : out STD_LOGIC;
    \pc_reg[9]_P_1\ : out STD_LOGIC;
    \pc_reg[9]_P_2\ : out STD_LOGIC;
    \yi_reg[7]_C\ : out STD_LOGIC;
    \yi_reg[3]_C\ : out STD_LOGIC;
    \yi_reg[6]_C\ : out STD_LOGIC;
    z_reg : out STD_LOGIC;
    \yi_reg[5]_C\ : out STD_LOGIC;
    \yi_reg[4]_C\ : out STD_LOGIC;
    RA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \yi_reg[7]_C_0\ : out STD_LOGIC;
    z_reg_0 : out STD_LOGIC;
    z_reg_1 : out STD_LOGIC;
    \yi_reg[6]_C_0\ : out STD_LOGIC;
    \yi_reg[5]_C_0\ : out STD_LOGIC;
    \yi_reg[4]_C_0\ : out STD_LOGIC;
    \yi_reg[3]_C_0\ : out STD_LOGIC;
    \yi_reg[3]_C_1\ : out STD_LOGIC;
    \yi_reg[2]_C\ : out STD_LOGIC;
    \yi_reg[2]_C_0\ : out STD_LOGIC;
    \yi_reg[1]_C\ : out STD_LOGIC;
    \yi_reg[1]_C_0\ : out STD_LOGIC;
    \yi_reg[0]_C\ : out STD_LOGIC;
    \b_reg[3]_0\ : out STD_LOGIC;
    \b_reg[7]_0\ : out STD_LOGIC;
    \pc_reg[7]_P_0\ : out STD_LOGIC;
    \pc_reg[2]_P_0\ : out STD_LOGIC;
    \yi_reg[4]_C_1\ : out STD_LOGIC;
    \yi_reg[2]_C_1\ : out STD_LOGIC;
    \yi_reg[1]_C_1\ : out STD_LOGIC;
    \yi_reg[7]_C_1\ : out STD_LOGIC;
    \yi_reg[3]_C_2\ : out STD_LOGIC;
    \yi_reg[5]_C_1\ : out STD_LOGIC;
    \yi_reg[6]_C_1\ : out STD_LOGIC;
    c_reg : out STD_LOGIC;
    \yi_reg[2]_C_2\ : out STD_LOGIC;
    \yi_reg[3]_C_3\ : out STD_LOGIC;
    z_reg_2 : out STD_LOGIC;
    skip_reg_C_0 : out STD_LOGIC;
    \yi_reg[6]_C_2\ : out STD_LOGIC;
    z_reg_3 : out STD_LOGIC;
    z_reg_4 : out STD_LOGIC;
    \yi_reg[2]_C_3\ : out STD_LOGIC;
    \pc_reg[3]_P_0\ : out STD_LOGIC;
    \pc_reg[0]_P_0\ : out STD_LOGIC;
    \pc_reg[1]_P_0\ : out STD_LOGIC;
    \pc_reg[2]_P_1\ : out STD_LOGIC;
    \pc_reg[3]_P_1\ : out STD_LOGIC;
    \pc_reg[6]_P_0\ : out STD_LOGIC;
    \pc_reg[7]_P_1\ : out STD_LOGIC;
    \b_reg[2]_0\ : out STD_LOGIC;
    \b_reg[1]_0\ : out STD_LOGIC;
    \b_reg[0]_0\ : out STD_LOGIC;
    \yi_reg[4]_C_2\ : out STD_LOGIC;
    \yi_reg[5]_C_2\ : out STD_LOGIC;
    skip_reg_C_1 : out STD_LOGIC;
    \yi_reg[2]_C_4\ : out STD_LOGIC;
    \yi_reg[3]_C_4\ : out STD_LOGIC;
    \yi_reg[7]_C_2\ : out STD_LOGIC;
    skip_reg_C_2 : out STD_LOGIC;
    \yi_reg[5]_C_3\ : out STD_LOGIC;
    \yi_reg[4]_C_3\ : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \yi_reg[7]_C_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    z_reg_5 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \yi_reg[5]_C_4\ : out STD_LOGIC;
    \yi_reg[0]_C_0\ : out STD_LOGIC;
    z_reg_6 : out STD_LOGIC;
    dc_reg : out STD_LOGIC;
    \b_reg[6]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \b_reg[7]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \b_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \b_reg[7]_2\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    retlw_reg : in STD_LOGIC;
    c2 : in STD_LOGIC;
    call_reg : in STD_LOGIC;
    \yi_reg[6]_C_3\ : in STD_LOGIC;
    \yi_reg[3]_C_5\ : in STD_LOGIC;
    \yi_reg[2]_C_5\ : in STD_LOGIC;
    \yi_reg[1]_C_2\ : in STD_LOGIC;
    \yi_reg[0]_C_1\ : in STD_LOGIC;
    retlw_reg_0 : in STD_LOGIC;
    retlw_reg_1 : in STD_LOGIC;
    bcf_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \yi_reg[2]_C_6\ : in STD_LOGIC;
    \yi_reg[1]_C_3\ : in STD_LOGIC;
    \yi_reg[0]_C_2\ : in STD_LOGIC;
    skip_reg_C_3 : in STD_LOGIC;
    retlw_reg_2 : in STD_LOGIC;
    addwf : in STD_LOGIC;
    p_0_out : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \trisb_reg[0]_0\ : in STD_LOGIC;
    \trisb_reg[1]_0\ : in STD_LOGIC;
    \trisb_reg[2]_0\ : in STD_LOGIC;
    \trisb_reg[3]_0\ : in STD_LOGIC;
    \trisb_reg[4]_0\ : in STD_LOGIC;
    \trisb_reg[5]_0\ : in STD_LOGIC;
    \trisb_reg[6]_0\ : in STD_LOGIC;
    \trisb_reg[7]_0\ : in STD_LOGIC;
    iorlw : in STD_LOGIC;
    andlw : in STD_LOGIC;
    xorlw : in STD_LOGIC;
    andwf_reg : in STD_LOGIC;
    movf : in STD_LOGIC;
    comf : in STD_LOGIC;
    iorwf : in STD_LOGIC;
    xorwf : in STD_LOGIC;
    \k_reg[7]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    call : in STD_LOGIC;
    bsf_reg : in STD_LOGIC;
    \stacklevel_reg[0]_0\ : in STD_LOGIC;
    retlw_reg_3 : in STD_LOGIC;
    goto_reg : in STD_LOGIC;
    longk : in STD_LOGIC_VECTOR ( 0 to 0 );
    goto : in STD_LOGIC;
    retlw : in STD_LOGIC;
    \^d\ : in STD_LOGIC;
    rlf : in STD_LOGIC;
    rrf : in STD_LOGIC;
    comf_reg : in STD_LOGIC;
    rrf_reg : in STD_LOGIC;
    decfsz : in STD_LOGIC;
    rrf_reg_0 : in STD_LOGIC;
    rlf_reg : in STD_LOGIC;
    rrf_reg_1 : in STD_LOGIC;
    incf_reg : in STD_LOGIC;
    swapf_reg : in STD_LOGIC;
    decf : in STD_LOGIC;
    \w_reg[2]_0\ : in STD_LOGIC;
    andwf : in STD_LOGIC;
    iorwf_reg : in STD_LOGIC;
    subwf : in STD_LOGIC;
    clrw_reg : in STD_LOGIC;
    incf : in STD_LOGIC;
    retlw_reg_4 : in STD_LOGIC;
    \stacklevel_reg[0]_1\ : in STD_LOGIC;
    \stacklevel_reg[0]_2\ : in STD_LOGIC;
    \stacklevel_reg[0]_3\ : in STD_LOGIC;
    \stacklevel_reg[0]_4\ : in STD_LOGIC;
    mclr : in STD_LOGIC;
    movlw : in STD_LOGIC;
    tris : in STD_LOGIC;
    swapf : in STD_LOGIC;
    option : in STD_LOGIC;
    incfsz : in STD_LOGIC;
    z : in STD_LOGIC;
    xorlw_reg : in STD_LOGIC;
    \b_reg[7]_3\ : in STD_LOGIC;
    dc : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \k_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \k_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    retlw_reg_5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \k_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \k_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \k_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    tris_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pic16c56_0_0_distribute : entity is "distribute";
end design_1_pic16c56_0_0_distribute;

architecture STRUCTURE of design_1_pic16c56_0_0_distribute is
  signal \^o\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal RA_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal RB_out : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal c_i_3_n_0 : STD_LOGIC;
  signal c_i_8_n_0 : STD_LOGIC;
  signal c_i_9_n_0 : STD_LOGIC;
  signal c_reg_i_12_n_0 : STD_LOGIC;
  signal c_reg_i_12_n_1 : STD_LOGIC;
  signal c_reg_i_12_n_2 : STD_LOGIC;
  signal c_reg_i_12_n_3 : STD_LOGIC;
  signal c_reg_i_12_n_4 : STD_LOGIC;
  signal c_reg_i_4_n_3 : STD_LOGIC;
  signal c_reg_i_5_n_3 : STD_LOGIC;
  signal c_reg_i_6_n_0 : STD_LOGIC;
  signal c_reg_i_6_n_1 : STD_LOGIC;
  signal c_reg_i_6_n_2 : STD_LOGIC;
  signal c_reg_i_6_n_3 : STD_LOGIC;
  signal c_reg_i_7_n_0 : STD_LOGIC;
  signal c_reg_i_7_n_1 : STD_LOGIC;
  signal c_reg_i_7_n_2 : STD_LOGIC;
  signal c_reg_i_7_n_3 : STD_LOGIC;
  signal c_reg_i_7_n_5 : STD_LOGIC;
  signal dc_i_2_n_0 : STD_LOGIC;
  signal dc_i_3_n_0 : STD_LOGIC;
  signal dc_i_4_n_0 : STD_LOGIC;
  signal dc_i_5_n_0 : STD_LOGIC;
  signal dc_i_6_n_0 : STD_LOGIC;
  signal dc_i_7_n_0 : STD_LOGIC;
  signal \pc[2]_P_i_4_n_0\ : STD_LOGIC;
  signal \pc[2]_P_i_5_n_0\ : STD_LOGIC;
  signal \pc[4]_P_i_1_n_0\ : STD_LOGIC;
  signal \pc[4]_P_i_3_n_0\ : STD_LOGIC;
  signal \pc[4]_P_i_4_n_0\ : STD_LOGIC;
  signal \pc[4]_P_i_5_n_0\ : STD_LOGIC;
  signal \pc[4]_P_i_6_n_0\ : STD_LOGIC;
  signal \pc[5]_P_i_1_n_0\ : STD_LOGIC;
  signal \pc[5]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[5]_P_i_3_n_0\ : STD_LOGIC;
  signal \pc[5]_P_i_4_n_0\ : STD_LOGIC;
  signal \pc[7]_P_i_6_n_0\ : STD_LOGIC;
  signal \pc[7]_P_i_7_n_0\ : STD_LOGIC;
  signal \pc[8]_P_i_1_n_0\ : STD_LOGIC;
  signal \pc[8]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[8]_P_i_4_n_0\ : STD_LOGIC;
  signal \pc[8]_P_i_5_n_0\ : STD_LOGIC;
  signal \pc[8]_P_i_6_n_0\ : STD_LOGIC;
  signal \pc[9]_P_i_2_n_0\ : STD_LOGIC;
  signal \pc[9]_P_i_4_n_0\ : STD_LOGIC;
  signal \pc[9]_P_i_6_n_0\ : STD_LOGIC;
  signal \^pc_reg[9]_p_0\ : STD_LOGIC;
  signal \^romaddr[0]\ : STD_LOGIC;
  signal \^romaddr[1]\ : STD_LOGIC;
  signal \^romaddr[2]\ : STD_LOGIC;
  signal \^romaddr[3]\ : STD_LOGIC;
  signal \^romaddr[4]\ : STD_LOGIC;
  signal \^romaddr[5]\ : STD_LOGIC;
  signal \^romaddr[6]\ : STD_LOGIC;
  signal \^romaddr[7]\ : STD_LOGIC;
  signal \^romaddr[8]\ : STD_LOGIC;
  signal \^romaddr[9]\ : STD_LOGIC;
  signal \rtccount_reg_n_0_[0]\ : STD_LOGIC;
  signal \rtccount_reg_n_0_[1]\ : STD_LOGIC;
  signal \rtccount_reg_n_0_[2]\ : STD_LOGIC;
  signal \rtccount_reg_n_0_[3]\ : STD_LOGIC;
  signal \rtccount_reg_n_0_[7]\ : STD_LOGIC;
  signal skip_C_i_7_n_0 : STD_LOGIC;
  signal skip_C_i_8_n_0 : STD_LOGIC;
  signal skip_C_i_9_n_0 : STD_LOGIC;
  signal \^skip_reg_c\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^skip_reg_c_0\ : STD_LOGIC;
  signal stack1 : STD_LOGIC;
  signal \^stack1_reg[7]_0\ : STD_LOGIC;
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
  signal stack2 : STD_LOGIC;
  signal \stack2[0]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[1]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[2]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[3]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[4]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[5]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[5]_i_2_n_0\ : STD_LOGIC;
  signal \stack2[6]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[7]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[8]_i_1_n_0\ : STD_LOGIC;
  signal \stack2[9]_i_2_n_0\ : STD_LOGIC;
  signal \stack2[9]_i_3_n_0\ : STD_LOGIC;
  signal \^stack2_reg[0]_0\ : STD_LOGIC;
  signal \^stack2_reg[0]_1\ : STD_LOGIC;
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
  signal \^status_c\ : STD_LOGIC;
  signal \^status_reg[1]_0\ : STD_LOGIC;
  signal \^status_reg[2]_0\ : STD_LOGIC;
  signal \status_reg_n_0_[3]\ : STD_LOGIC;
  signal \status_reg_n_0_[7]\ : STD_LOGIC;
  signal \^trisa_reg[0]_0\ : STD_LOGIC;
  signal w : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \yi[1]_C_i_10_n_0\ : STD_LOGIC;
  signal \yi[1]_C_i_14_n_0\ : STD_LOGIC;
  signal \yi[1]_C_i_15_n_0\ : STD_LOGIC;
  signal \yi[2]_C_i_12_n_0\ : STD_LOGIC;
  signal \yi[2]_C_i_15_n_0\ : STD_LOGIC;
  signal \yi[2]_C_i_16_n_0\ : STD_LOGIC;
  signal \yi[2]_C_i_17_n_0\ : STD_LOGIC;
  signal \yi[3]_C_i_11_n_0\ : STD_LOGIC;
  signal \yi[3]_C_i_12_n_0\ : STD_LOGIC;
  signal \yi[3]_C_i_8_n_0\ : STD_LOGIC;
  signal \yi[4]_C_i_14_n_0\ : STD_LOGIC;
  signal \yi[4]_C_i_8_n_0\ : STD_LOGIC;
  signal \yi[5]_C_i_14_n_0\ : STD_LOGIC;
  signal \yi[5]_C_i_15_n_0\ : STD_LOGIC;
  signal \yi[6]_C_i_14_n_0\ : STD_LOGIC;
  signal \yi[6]_C_i_15_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_17_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_18_n_0\ : STD_LOGIC;
  signal \yi[7]_C_i_22_n_0\ : STD_LOGIC;
  signal \^yi_reg[3]_c\ : STD_LOGIC;
  signal \^yi_reg[4]_c\ : STD_LOGIC;
  signal \^yi_reg[5]_c\ : STD_LOGIC;
  signal \^yi_reg[7]_c_3\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal z_i_11_n_0 : STD_LOGIC;
  signal z_i_12_n_0 : STD_LOGIC;
  signal z_i_14_n_0 : STD_LOGIC;
  signal z_i_15_n_0 : STD_LOGIC;
  signal z_i_16_n_0 : STD_LOGIC;
  signal z_i_17_n_0 : STD_LOGIC;
  signal z_i_19_n_0 : STD_LOGIC;
  signal z_i_21_n_0 : STD_LOGIC;
  signal z_i_22_n_0 : STD_LOGIC;
  signal z_i_23_n_0 : STD_LOGIC;
  signal z_i_25_n_0 : STD_LOGIC;
  signal z_i_28_n_0 : STD_LOGIC;
  signal z_i_29_n_0 : STD_LOGIC;
  signal z_i_2_n_0 : STD_LOGIC;
  signal z_i_30_n_0 : STD_LOGIC;
  signal z_i_31_n_0 : STD_LOGIC;
  signal z_i_32_n_0 : STD_LOGIC;
  signal z_i_33_n_0 : STD_LOGIC;
  signal z_i_34_n_0 : STD_LOGIC;
  signal z_i_35_n_0 : STD_LOGIC;
  signal z_i_36_n_0 : STD_LOGIC;
  signal z_i_37_n_0 : STD_LOGIC;
  signal z_i_4_n_0 : STD_LOGIC;
  signal z_i_5_n_0 : STD_LOGIC;
  signal z_i_8_n_0 : STD_LOGIC;
  signal z_i_9_n_0 : STD_LOGIC;
  signal \^z_reg\ : STD_LOGIC;
  signal \^z_reg_0\ : STD_LOGIC;
  signal \^z_reg_1\ : STD_LOGIC;
  signal \^z_reg_3\ : STD_LOGIC;
  signal \^z_reg_4\ : STD_LOGIC;
  signal \^z_reg_5\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal z_reg_i_24_n_0 : STD_LOGIC;
  signal z_reg_i_24_n_1 : STD_LOGIC;
  signal z_reg_i_24_n_2 : STD_LOGIC;
  signal z_reg_i_24_n_3 : STD_LOGIC;
  signal z_reg_i_24_n_4 : STD_LOGIC;
  signal z_reg_i_24_n_5 : STD_LOGIC;
  signal z_reg_i_24_n_6 : STD_LOGIC;
  signal z_reg_i_24_n_7 : STD_LOGIC;
  signal NLW_c_reg_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_c_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_c_reg_i_5_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_c_reg_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of c_i_3 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of dc_i_4 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of dc_i_6 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of dc_i_7 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \pc[2]_P_i_5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \pc[3]_P_i_4\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \pc[4]_P_i_6\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \pc[7]_P_i_7\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \pc[8]_P_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \pc[8]_P_i_6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \pc[9]_P_i_12\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \pc[9]_P_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of skip_C_i_3 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of skip_C_i_6 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of skip_C_i_9 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \stack2[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \stack2[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \stack2[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \stack2[5]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \stack2[5]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \stack2[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \stack2[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \stack2[8]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \yi[1]_C_i_14\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \yi[1]_C_i_15\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \yi[2]_C_i_10\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \yi[2]_C_i_15\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \yi[2]_C_i_16\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \yi[2]_C_i_17\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \yi[2]_C_i_9\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \yi[3]_C_i_11\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \yi[3]_C_i_12\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \yi[3]_C_i_15\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \yi[3]_C_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \yi[4]_C_i_10\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \yi[4]_C_i_14\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \yi[4]_C_i_15\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \yi[5]_C_i_14\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \yi[5]_C_i_15\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \yi[5]_C_i_17\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \yi[6]_C_i_10\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \yi[6]_C_i_14\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \yi[6]_C_i_15\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \yi[7]_C_i_18\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \yi[7]_C_i_22\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \yi[7]_C_i_23\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of z_i_11 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of z_i_14 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of z_i_18 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of z_i_19 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of z_i_21 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of z_i_22 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of z_i_29 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of z_i_30 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of z_i_31 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of z_i_5 : label is "soft_lutpair33";
begin
  O(3 downto 0) <= \^o\(3 downto 0);
  Q(6 downto 0) <= \^q\(6 downto 0);
  \pc_reg[9]_P_0\ <= \^pc_reg[9]_p_0\;
  \romaddr[0]\ <= \^romaddr[0]\;
  \romaddr[1]\ <= \^romaddr[1]\;
  \romaddr[2]\ <= \^romaddr[2]\;
  \romaddr[3]\ <= \^romaddr[3]\;
  \romaddr[4]\ <= \^romaddr[4]\;
  \romaddr[5]\ <= \^romaddr[5]\;
  \romaddr[6]\ <= \^romaddr[6]\;
  \romaddr[7]\ <= \^romaddr[7]\;
  \romaddr[8]\ <= \^romaddr[8]\;
  \romaddr[9]\ <= \^romaddr[9]\;
  skip_reg_C(7 downto 0) <= \^skip_reg_c\(7 downto 0);
  skip_reg_C_0 <= \^skip_reg_c_0\;
  \stack1_reg[7]_0\ <= \^stack1_reg[7]_0\;
  \stack2_reg[0]_0\ <= \^stack2_reg[0]_0\;
  \stack2_reg[0]_1\ <= \^stack2_reg[0]_1\;
  status_c <= \^status_c\;
  \status_reg[1]_0\ <= \^status_reg[1]_0\;
  \status_reg[2]_0\ <= \^status_reg[2]_0\;
  \trisa_reg[0]_0\ <= \^trisa_reg[0]_0\;
  \yi_reg[3]_C\ <= \^yi_reg[3]_c\;
  \yi_reg[4]_C\ <= \^yi_reg[4]_c\;
  \yi_reg[5]_C\ <= \^yi_reg[5]_c\;
  \yi_reg[7]_C_3\(2 downto 0) <= \^yi_reg[7]_c_3\(2 downto 0);
  z_reg <= \^z_reg\;
  z_reg_0 <= \^z_reg_0\;
  z_reg_1 <= \^z_reg_1\;
  z_reg_3 <= \^z_reg_3\;
  z_reg_4 <= \^z_reg_4\;
  z_reg_5(2 downto 0) <= \^z_reg_5\(2 downto 0);
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
      CE => \k_reg[1]_0\(0),
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
      CE => \k_reg[1]_0\(0),
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
      CE => \k_reg[1]_0\(0),
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
      CE => \k_reg[1]_0\(0),
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
      CE => \k_reg[2]\(0),
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
      CE => \k_reg[2]\(0),
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
      CE => \k_reg[2]\(0),
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
      CE => \k_reg[2]\(0),
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
      CE => \k_reg[2]\(0),
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
      CE => \k_reg[2]\(0),
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
      CE => \k_reg[2]\(0),
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
      CE => \k_reg[2]\(0),
      D => D(7),
      Q => RB_out(7),
      R => '0'
    );
\b[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \^status_c\,
      I1 => \^romaddr[0]\,
      I2 => \k_reg[7]\(1),
      I3 => \k_reg[7]\(0),
      I4 => \rtccount_reg_n_0_[0]\,
      O => \b_reg[0]_0\
    );
\b[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \^status_reg[1]_0\,
      I1 => \^romaddr[1]\,
      I2 => \k_reg[7]\(1),
      I3 => \k_reg[7]\(0),
      I4 => \rtccount_reg_n_0_[1]\,
      O => \b_reg[1]_0\
    );
\b[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \^status_reg[2]_0\,
      I1 => \^romaddr[2]\,
      I2 => \k_reg[7]\(1),
      I3 => \k_reg[7]\(0),
      I4 => \rtccount_reg_n_0_[2]\,
      O => \b_reg[2]_0\
    );
\b[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"503F5F3F"
    )
        port map (
      I0 => \status_reg_n_0_[3]\,
      I1 => \^romaddr[3]\,
      I2 => \k_reg[7]\(1),
      I3 => \k_reg[7]\(0),
      I4 => \rtccount_reg_n_0_[3]\,
      O => \b_reg[3]_0\
    );
\b[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0A0F000C0A0000"
    )
        port map (
      I0 => \^romaddr[7]\,
      I1 => \status_reg_n_0_[7]\,
      I2 => \k_reg[7]\(2),
      I3 => \k_reg[7]\(0),
      I4 => \k_reg[7]\(1),
      I5 => \rtccount_reg_n_0_[7]\,
      O => \b_reg[7]_0\
    );
\b_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^trisa_reg[0]_0\,
      D => \k_reg[7]_0\(0),
      Q => \^skip_reg_c\(0)
    );
\b_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^trisa_reg[0]_0\,
      D => \k_reg[7]_0\(1),
      Q => \^skip_reg_c\(1)
    );
\b_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^trisa_reg[0]_0\,
      D => \k_reg[7]_0\(2),
      Q => \^skip_reg_c\(2)
    );
\b_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^trisa_reg[0]_0\,
      D => \k_reg[7]_0\(3),
      Q => \^skip_reg_c\(3)
    );
\b_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^trisa_reg[0]_0\,
      D => \k_reg[7]_0\(4),
      Q => \^skip_reg_c\(4)
    );
\b_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^trisa_reg[0]_0\,
      D => \k_reg[7]_0\(5),
      Q => \^skip_reg_c\(5)
    );
\b_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^trisa_reg[0]_0\,
      D => \k_reg[7]_0\(6),
      Q => \^skip_reg_c\(6)
    );
\b_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^trisa_reg[0]_0\,
      D => \k_reg[7]_0\(7),
      Q => \^skip_reg_c\(7)
    );
c_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(5),
      I1 => \^q\(4),
      O => c_i_10_n_0
    );
c_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(4),
      I1 => \^q\(3),
      O => c_i_11_n_0
    );
c_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^skip_reg_c\(7),
      O => c_i_13_n_0
    );
c_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^skip_reg_c\(6),
      O => c_i_14_n_0
    );
c_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^skip_reg_c\(5),
      O => c_i_15_n_0
    );
c_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^skip_reg_c\(4),
      O => c_i_16_n_0
    );
c_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => w(3),
      I1 => \^skip_reg_c\(3),
      O => c_i_17_n_0
    );
c_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^skip_reg_c\(2),
      O => c_i_18_n_0
    );
c_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^skip_reg_c\(1),
      O => c_i_19_n_0
    );
c_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => c_i_3_n_0,
      I1 => rrf,
      I2 => rlf,
      I3 => c_reg_i_4_n_3,
      I4 => addwf,
      I5 => c_reg_i_5_n_3,
      O => c_reg
    );
c_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^skip_reg_c\(0),
      O => c_i_20_n_0
    );
c_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^skip_reg_c\(7),
      I1 => rlf,
      I2 => \^skip_reg_c\(0),
      O => c_i_3_n_0
    );
c_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(7),
      I1 => \^q\(6),
      O => c_i_8_n_0
    );
c_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(6),
      I1 => \^q\(5),
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
      DI(3 downto 0) => \^skip_reg_c\(3 downto 0),
      O(3) => c_reg_i_12_n_4,
      O(2 downto 0) => \^z_reg_5\(2 downto 0),
      S(3) => c_i_17_n_0,
      S(2) => c_i_18_n_0,
      S(1) => c_i_19_n_0,
      S(0) => c_i_20_n_0
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
      CO(3 downto 1) => NLW_c_reg_i_5_CO_UNCONNECTED(3 downto 1),
      CO(0) => c_reg_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_c_reg_i_5_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
c_reg_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => z_reg_i_24_n_0,
      CO(3) => c_reg_i_6_n_0,
      CO(2) => c_reg_i_6_n_1,
      CO(1) => c_reg_i_6_n_2,
      CO(0) => c_reg_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^skip_reg_c\(7 downto 4),
      O(3 downto 0) => \^o\(3 downto 0),
      S(3) => c_i_8_n_0,
      S(2) => c_i_9_n_0,
      S(1) => c_i_10_n_0,
      S(0) => c_i_11_n_0
    );
c_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => c_reg_i_12_n_0,
      CO(3) => c_reg_i_7_n_0,
      CO(2) => c_reg_i_7_n_1,
      CO(1) => c_reg_i_7_n_2,
      CO(0) => c_reg_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^skip_reg_c\(7 downto 4),
      O(3) => \^yi_reg[7]_c_3\(2),
      O(2) => c_reg_i_7_n_5,
      O(1 downto 0) => \^yi_reg[7]_c_3\(1 downto 0),
      S(3) => c_i_13_n_0,
      S(2) => c_i_14_n_0,
      S(1) => c_i_15_n_0,
      S(0) => c_i_16_n_0
    );
dc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE02FE02"
    )
        port map (
      I0 => dc,
      I1 => subwf,
      I2 => addwf,
      I3 => dc_i_2_n_0,
      I4 => dc_i_3_n_0,
      I5 => dc_i_4_n_0,
      O => dc_reg
    );
dc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4504450405004504"
    )
        port map (
      I0 => addwf,
      I1 => dc_i_5_n_0,
      I2 => w(3),
      I3 => \^skip_reg_c\(3),
      I4 => \^q\(2),
      I5 => \^skip_reg_c\(2),
      O => dc_i_2_n_0
    );
dc_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF2BFF2BFFFFFF"
    )
        port map (
      I0 => dc_i_6_n_0,
      I1 => \^q\(2),
      I2 => \^skip_reg_c\(2),
      I3 => addwf,
      I4 => \^skip_reg_c\(3),
      I5 => w(3),
      O => dc_i_3_n_0
    );
dc_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F888FFFF"
    )
        port map (
      I0 => \^skip_reg_c\(0),
      I1 => \^q\(0),
      I2 => \^skip_reg_c\(1),
      I3 => \^q\(1),
      I4 => dc_i_7_n_0,
      O => dc_i_4_n_0
    );
dc_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0FBB0FBFFFFB0FB"
    )
        port map (
      I0 => \^skip_reg_c\(0),
      I1 => \^q\(0),
      I2 => \^skip_reg_c\(1),
      I3 => \^q\(1),
      I4 => \^skip_reg_c\(2),
      I5 => \^q\(2),
      O => dc_i_5_n_0
    );
dc_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^skip_reg_c\(1),
      I1 => \^q\(1),
      O => dc_i_6_n_0
    );
dc_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => w(3),
      I1 => \^skip_reg_c\(3),
      I2 => \^q\(2),
      I3 => \^skip_reg_c\(2),
      O => dc_i_7_n_0
    );
\frs_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \k_reg[1]\(0),
      D => D(0),
      Q => \b_reg[7]_1\(0),
      R => '0'
    );
\frs_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \k_reg[1]\(0),
      D => D(1),
      Q => \b_reg[7]_1\(1),
      R => '0'
    );
\frs_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \k_reg[1]\(0),
      D => D(2),
      Q => \b_reg[7]_1\(2),
      R => '0'
    );
\frs_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \k_reg[1]\(0),
      D => D(3),
      Q => \b_reg[7]_1\(3),
      R => '0'
    );
\frs_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \k_reg[1]\(0),
      D => D(4),
      Q => \b_reg[7]_1\(4),
      R => '0'
    );
\frs_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \k_reg[1]\(0),
      D => D(5),
      Q => \b_reg[7]_1\(5),
      R => '0'
    );
\frs_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \k_reg[1]\(0),
      D => D(6),
      Q => \b_reg[7]_1\(6),
      R => '0'
    );
\frs_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \k_reg[1]\(0),
      D => D(7),
      Q => \b_reg[7]_1\(7),
      R => '0'
    );
osc2_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mclr,
      O => \^trisa_reg[0]_0\
    );
\pc[0]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044400000004000"
    )
        port map (
      I0 => call,
      I1 => retlw,
      I2 => \stack1_reg_n_0_[0]\,
      I3 => \^stack2_reg[0]_1\,
      I4 => \^stack2_reg[0]_0\,
      I5 => \stack2_reg_n_0_[0]\,
      O => \pc_reg[0]_P_0\
    );
\pc[1]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044400000004000"
    )
        port map (
      I0 => call,
      I1 => retlw,
      I2 => \stack2_reg_n_0_[1]\,
      I3 => \^stack2_reg[0]_0\,
      I4 => \^stack2_reg[0]_1\,
      I5 => \stack1_reg_n_0_[1]\,
      O => \pc_reg[1]_P_0\
    );
\pc[2]_P_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020202020002"
    )
        port map (
      I0 => \pc[2]_P_i_4_n_0\,
      I1 => retlw,
      I2 => call,
      I3 => skip_reg_C_3,
      I4 => \^romaddr[2]\,
      I5 => \^romaddr[1]\,
      O => \pc_reg[2]_P_0\
    );
\pc[2]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEAAAEAAAAAAAAA"
    )
        port map (
      I0 => \pc[2]_P_i_5_n_0\,
      I1 => \stack1_reg_n_0_[2]\,
      I2 => \^stack2_reg[0]_1\,
      I3 => \^stack2_reg[0]_0\,
      I4 => \stack2_reg_n_0_[2]\,
      I5 => retlw_reg_4,
      O => \pc_reg[2]_P_1\
    );
\pc[2]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF006A6A"
    )
        port map (
      I0 => \^romaddr[2]\,
      I1 => \^romaddr[1]\,
      I2 => \^romaddr[0]\,
      I3 => \k_reg[7]\(2),
      I4 => goto,
      I5 => skip_reg_C_3,
      O => \pc[2]_P_i_4_n_0\
    );
\pc[2]_P_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDC1DD00"
    )
        port map (
      I0 => mclr,
      I1 => \^stack2_reg[0]_0\,
      I2 => \^stack2_reg[0]_1\,
      I3 => call,
      I4 => retlw,
      O => \pc[2]_P_i_5_n_0\
    );
\pc[3]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF38080000"
    )
        port map (
      I0 => \stack1_reg_n_0_[3]\,
      I1 => \^stack2_reg[0]_1\,
      I2 => \^stack2_reg[0]_0\,
      I3 => \stack2_reg_n_0_[3]\,
      I4 => retlw_reg_4,
      I5 => \stacklevel_reg[0]_1\,
      O => \pc_reg[3]_P_1\
    );
\pc[3]_P_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^romaddr[1]\,
      I1 => \^romaddr[2]\,
      O => \pc_reg[3]_P_0\
    );
\pc[4]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EEFEEEFE"
    )
        port map (
      I0 => \stacklevel_reg[0]_0\,
      I1 => \pc[4]_P_i_3_n_0\,
      I2 => \pc[4]_P_i_4_n_0\,
      I3 => \pc[4]_P_i_5_n_0\,
      I4 => D(4),
      I5 => bsf_reg,
      O => \pc[4]_P_i_1_n_0\
    );
\pc[4]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044400000004000"
    )
        port map (
      I0 => call,
      I1 => retlw,
      I2 => \stack2_reg_n_0_[4]\,
      I3 => \^stack2_reg[0]_0\,
      I4 => \^stack2_reg[0]_1\,
      I5 => \stack1_reg_n_0_[4]\,
      O => \pc[4]_P_i_3_n_0\
    );
\pc[4]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF009A9A"
    )
        port map (
      I0 => \^romaddr[4]\,
      I1 => \pc[4]_P_i_6_n_0\,
      I2 => \^romaddr[0]\,
      I3 => \k_reg[7]\(3),
      I4 => goto,
      I5 => skip_reg_C_3,
      O => \pc[4]_P_i_4_n_0\
    );
\pc[4]_P_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"95550000FFFFFFFF"
    )
        port map (
      I0 => \^romaddr[4]\,
      I1 => \^romaddr[3]\,
      I2 => \^romaddr[1]\,
      I3 => \^romaddr[2]\,
      I4 => skip_reg_C_3,
      I5 => retlw_reg_2,
      O => \pc[4]_P_i_5_n_0\
    );
\pc[4]_P_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^romaddr[2]\,
      I1 => \^romaddr[1]\,
      I2 => \^romaddr[3]\,
      O => \pc[4]_P_i_6_n_0\
    );
\pc[5]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAEAAAEA"
    )
        port map (
      I0 => \pc[5]_P_i_2_n_0\,
      I1 => \pc[5]_P_i_3_n_0\,
      I2 => retlw_reg_2,
      I3 => \pc[5]_P_i_4_n_0\,
      I4 => D(5),
      I5 => bsf_reg,
      O => \pc[5]_P_i_1_n_0\
    );
\pc[5]_P_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF38080000"
    )
        port map (
      I0 => \stack1_reg_n_0_[5]\,
      I1 => \^stack2_reg[0]_1\,
      I2 => \^stack2_reg[0]_0\,
      I3 => \stack2_reg_n_0_[5]\,
      I4 => retlw_reg_4,
      I5 => \stacklevel_reg[0]_2\,
      O => \pc[5]_P_i_2_n_0\
    );
\pc[5]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF009A9A"
    )
        port map (
      I0 => \^romaddr[5]\,
      I1 => \stack2[5]_i_2_n_0\,
      I2 => \^romaddr[0]\,
      I3 => \^d\,
      I4 => goto,
      I5 => skip_reg_C_3,
      O => \pc[5]_P_i_3_n_0\
    );
\pc[5]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800000002AAAAAAA"
    )
        port map (
      I0 => skip_reg_C_3,
      I1 => \^romaddr[3]\,
      I2 => \^romaddr[1]\,
      I3 => \^romaddr[2]\,
      I4 => \^romaddr[4]\,
      I5 => \^romaddr[5]\,
      O => \pc[5]_P_i_4_n_0\
    );
\pc[6]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF38080000"
    )
        port map (
      I0 => \stack1_reg_n_0_[6]\,
      I1 => \^stack2_reg[0]_1\,
      I2 => \^stack2_reg[0]_0\,
      I3 => \stack2_reg_n_0_[6]\,
      I4 => retlw_reg_4,
      I5 => \stacklevel_reg[0]_3\,
      O => \pc_reg[6]_P_0\
    );
\pc[7]_P_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF38080000"
    )
        port map (
      I0 => \stack1_reg_n_0_[7]\,
      I1 => \^stack2_reg[0]_1\,
      I2 => \^stack2_reg[0]_0\,
      I3 => \stack2_reg_n_0_[7]\,
      I4 => retlw_reg_4,
      I5 => \stacklevel_reg[0]_4\,
      O => \pc_reg[7]_P_1\
    );
\pc[7]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909F909F9F9F9090"
    )
        port map (
      I0 => \^romaddr[7]\,
      I1 => \pc[7]_P_i_6_n_0\,
      I2 => skip_reg_C_3,
      I3 => \k_reg[7]\(5),
      I4 => \pc[7]_P_i_7_n_0\,
      I5 => goto,
      O => \pc_reg[7]_P_0\
    );
\pc[7]_P_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^romaddr[6]\,
      I1 => \^romaddr[5]\,
      I2 => \^romaddr[3]\,
      I3 => \^romaddr[1]\,
      I4 => \^romaddr[2]\,
      I5 => \^romaddr[4]\,
      O => \pc[7]_P_i_6_n_0\
    );
\pc[7]_P_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5955"
    )
        port map (
      I0 => \^romaddr[7]\,
      I1 => \^romaddr[6]\,
      I2 => \^stack1_reg[7]_0\,
      I3 => \^romaddr[0]\,
      O => \pc[7]_P_i_7_n_0\
    );
\pc[8]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF444F"
    )
        port map (
      I0 => \pc[8]_P_i_2_n_0\,
      I1 => retlw_reg_2,
      I2 => retlw_reg_3,
      I3 => \pc[9]_P_i_4_n_0\,
      I4 => \pc[8]_P_i_4_n_0\,
      I5 => bsf_reg,
      O => \pc[8]_P_i_1_n_0\
    );
\pc[8]_P_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909F909F9F9F9090"
    )
        port map (
      I0 => \^romaddr[8]\,
      I1 => \pc[8]_P_i_5_n_0\,
      I2 => skip_reg_C_3,
      I3 => longk(0),
      I4 => \pc[8]_P_i_6_n_0\,
      I5 => goto,
      O => \pc[8]_P_i_2_n_0\
    );
\pc[8]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044400000004000"
    )
        port map (
      I0 => call,
      I1 => retlw,
      I2 => \stack2_reg_n_0_[8]\,
      I3 => \^stack2_reg[0]_0\,
      I4 => \^stack2_reg[0]_1\,
      I5 => \stack1_reg_n_0_[8]\,
      O => \pc[8]_P_i_4_n_0\
    );
\pc[8]_P_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^stack1_reg[7]_0\,
      I1 => \^romaddr[6]\,
      I2 => \^romaddr[7]\,
      O => \pc[8]_P_i_5_n_0\
    );
\pc[8]_P_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59555555"
    )
        port map (
      I0 => \^romaddr[8]\,
      I1 => \^romaddr[0]\,
      I2 => \^stack1_reg[7]_0\,
      I3 => \^romaddr[6]\,
      I4 => \^romaddr[7]\,
      O => \pc[8]_P_i_6_n_0\
    );
\pc[9]_P_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555955555555555"
    )
        port map (
      I0 => \^romaddr[9]\,
      I1 => \^romaddr[8]\,
      I2 => \^romaddr[7]\,
      I3 => \^romaddr[6]\,
      I4 => \^stack1_reg[7]_0\,
      I5 => \^romaddr[0]\,
      O => \pc_reg[9]_P_1\
    );
\pc[9]_P_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59555555"
    )
        port map (
      I0 => \^romaddr[9]\,
      I1 => \^romaddr[8]\,
      I2 => \^stack1_reg[7]_0\,
      I3 => \^romaddr[6]\,
      I4 => \^romaddr[7]\,
      O => \pc_reg[9]_P_2\
    );
\pc[9]_P_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF3FFF1"
    )
        port map (
      I0 => \pc[9]_P_i_4_n_0\,
      I1 => retlw_reg_3,
      I2 => \pc[9]_P_i_6_n_0\,
      I3 => goto_reg,
      I4 => \^pc_reg[9]_p_0\,
      I5 => bsf_reg,
      O => \pc[9]_P_i_2_n_0\
    );
\pc[9]_P_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mclr,
      I1 => \^stack2_reg[0]_0\,
      O => \pc[9]_P_i_4_n_0\
    );
\pc[9]_P_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044400000004000"
    )
        port map (
      I0 => call,
      I1 => retlw,
      I2 => \stack2_reg_n_0_[9]\,
      I3 => \^stack2_reg[0]_0\,
      I4 => \^stack2_reg[0]_1\,
      I5 => \stack1_reg_n_0_[9]\,
      O => \pc[9]_P_i_6_n_0\
    );
\pc_reg[0]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \yi_reg[0]_C_1\,
      PRE => \^trisa_reg[0]_0\,
      Q => \^romaddr[0]\
    );
\pc_reg[1]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \yi_reg[1]_C_2\,
      PRE => \^trisa_reg[0]_0\,
      Q => \^romaddr[1]\
    );
\pc_reg[2]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \yi_reg[2]_C_5\,
      PRE => \^trisa_reg[0]_0\,
      Q => \^romaddr[2]\
    );
\pc_reg[3]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \yi_reg[3]_C_5\,
      PRE => \^trisa_reg[0]_0\,
      Q => \^romaddr[3]\
    );
\pc_reg[4]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \pc[4]_P_i_1_n_0\,
      PRE => \^trisa_reg[0]_0\,
      Q => \^romaddr[4]\
    );
\pc_reg[5]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \pc[5]_P_i_1_n_0\,
      PRE => \^trisa_reg[0]_0\,
      Q => \^romaddr[5]\
    );
\pc_reg[6]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \yi_reg[6]_C_3\,
      PRE => \^trisa_reg[0]_0\,
      Q => \^romaddr[6]\
    );
\pc_reg[7]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => call_reg,
      PRE => \^trisa_reg[0]_0\,
      Q => \^romaddr[7]\
    );
\pc_reg[8]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \pc[8]_P_i_1_n_0\,
      PRE => \^trisa_reg[0]_0\,
      Q => \^romaddr[8]\
    );
\pc_reg[9]_P\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg,
      D => \pc[9]_P_i_2_n_0\,
      PRE => \^trisa_reg[0]_0\,
      Q => \^romaddr[9]\
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
      Q => \b_reg[6]_1\(0),
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
      Q => \b_reg[6]_1\(1),
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
      Q => \b_reg[6]_1\(2),
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
skip_C_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^skip_reg_c\(6),
      I1 => \^z_reg\,
      O => skip_reg_C_2
    );
skip_C_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \^skip_reg_c\(2),
      I1 => \^skip_reg_c\(3),
      I2 => \^skip_reg_c\(1),
      I3 => \^skip_reg_c\(0),
      I4 => skip_C_i_9_n_0,
      O => \^skip_reg_c_0\
    );
skip_C_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^skip_reg_c\(3),
      I1 => \^skip_reg_c\(2),
      I2 => \k_reg[7]\(4),
      I3 => \^skip_reg_c\(1),
      I4 => \^d\,
      I5 => \^skip_reg_c\(0),
      O => skip_C_i_7_n_0
    );
skip_C_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^skip_reg_c\(7),
      I1 => \^skip_reg_c\(6),
      I2 => \k_reg[7]\(4),
      I3 => \^skip_reg_c\(5),
      I4 => \^d\,
      I5 => \^skip_reg_c\(4),
      O => skip_C_i_8_n_0
    );
skip_C_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^skip_reg_c\(5),
      I1 => \^skip_reg_c\(4),
      I2 => \^skip_reg_c\(6),
      I3 => \^skip_reg_c\(7),
      O => skip_C_i_9_n_0
    );
skip_reg_C_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => skip_C_i_7_n_0,
      I1 => skip_C_i_8_n_0,
      O => skip_reg_C_1,
      S => \k_reg[7]\(5)
    );
\stack1[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => \^stack2_reg[0]_1\,
      I1 => \^stack2_reg[0]_0\,
      I2 => call,
      I3 => bsf_reg,
      O => stack1
    );
\stack1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack1,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[0]_i_1_n_0\,
      Q => \stack1_reg_n_0_[0]\
    );
\stack1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack1,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[1]_i_1_n_0\,
      Q => \stack1_reg_n_0_[1]\
    );
\stack1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack1,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[2]_i_1_n_0\,
      Q => \stack1_reg_n_0_[2]\
    );
\stack1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack1,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[3]_i_1_n_0\,
      Q => \stack1_reg_n_0_[3]\
    );
\stack1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack1,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[4]_i_1_n_0\,
      Q => \stack1_reg_n_0_[4]\
    );
\stack1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack1,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[5]_i_1_n_0\,
      Q => \stack1_reg_n_0_[5]\
    );
\stack1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack1,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[6]_i_1_n_0\,
      Q => \stack1_reg_n_0_[6]\
    );
\stack1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack1,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[7]_i_1_n_0\,
      Q => \stack1_reg_n_0_[7]\
    );
\stack1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack1,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[8]_i_1_n_0\,
      Q => \stack1_reg_n_0_[8]\
    );
\stack1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack1,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[9]_i_2_n_0\,
      Q => \stack1_reg_n_0_[9]\
    );
\stack2[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^stack2_reg[0]_0\,
      I1 => \^romaddr[0]\,
      O => \stack2[0]_i_1_n_0\
    );
\stack2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^romaddr[1]\,
      I1 => \^romaddr[0]\,
      I2 => \^stack2_reg[0]_0\,
      O => \stack2[1]_i_1_n_0\
    );
\stack2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \^stack2_reg[0]_0\,
      I1 => \^romaddr[0]\,
      I2 => \^romaddr[1]\,
      I3 => \^romaddr[2]\,
      O => \stack2[2]_i_1_n_0\
    );
\stack2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \^stack2_reg[0]_0\,
      I1 => \^romaddr[0]\,
      I2 => \^romaddr[2]\,
      I3 => \^romaddr[1]\,
      I4 => \^romaddr[3]\,
      O => \stack2[3]_i_1_n_0\
    );
\stack2[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \^stack2_reg[0]_0\,
      I1 => \^romaddr[0]\,
      I2 => \^romaddr[3]\,
      I3 => \^romaddr[1]\,
      I4 => \^romaddr[2]\,
      I5 => \^romaddr[4]\,
      O => \stack2[4]_i_1_n_0\
    );
\stack2[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5104"
    )
        port map (
      I0 => \^stack2_reg[0]_0\,
      I1 => \^romaddr[0]\,
      I2 => \stack2[5]_i_2_n_0\,
      I3 => \^romaddr[5]\,
      O => \stack2[5]_i_1_n_0\
    );
\stack2[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^romaddr[3]\,
      I1 => \^romaddr[1]\,
      I2 => \^romaddr[2]\,
      I3 => \^romaddr[4]\,
      O => \stack2[5]_i_2_n_0\
    );
\stack2[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4510"
    )
        port map (
      I0 => \^stack2_reg[0]_0\,
      I1 => \^stack1_reg[7]_0\,
      I2 => \^romaddr[0]\,
      I3 => \^romaddr[6]\,
      O => \stack2[6]_i_1_n_0\
    );
\stack2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550400"
    )
        port map (
      I0 => \^stack2_reg[0]_0\,
      I1 => \^romaddr[0]\,
      I2 => \^stack1_reg[7]_0\,
      I3 => \^romaddr[6]\,
      I4 => \^romaddr[7]\,
      O => \stack2[7]_i_1_n_0\
    );
\stack2[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515555500400000"
    )
        port map (
      I0 => \^stack2_reg[0]_0\,
      I1 => \^romaddr[7]\,
      I2 => \^romaddr[6]\,
      I3 => \^stack1_reg[7]_0\,
      I4 => \^romaddr[0]\,
      I5 => \^romaddr[8]\,
      O => \stack2[8]_i_1_n_0\
    );
\stack2[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^romaddr[4]\,
      I1 => \^romaddr[2]\,
      I2 => \^romaddr[1]\,
      I3 => \^romaddr[3]\,
      I4 => \^romaddr[5]\,
      O => \^stack1_reg[7]_0\
    );
\stack2[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \^stack2_reg[0]_0\,
      I1 => \^stack2_reg[0]_1\,
      I2 => call,
      I3 => bsf_reg,
      O => stack2
    );
\stack2[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4555555510000000"
    )
        port map (
      I0 => \^stack2_reg[0]_0\,
      I1 => \stack2[9]_i_3_n_0\,
      I2 => \^romaddr[6]\,
      I3 => \^romaddr[7]\,
      I4 => \^romaddr[8]\,
      I5 => \^romaddr[9]\,
      O => \stack2[9]_i_2_n_0\
    );
\stack2[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^romaddr[5]\,
      I1 => \^romaddr[3]\,
      I2 => \^romaddr[1]\,
      I3 => \^romaddr[2]\,
      I4 => \^romaddr[4]\,
      I5 => \^romaddr[0]\,
      O => \stack2[9]_i_3_n_0\
    );
\stack2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack2,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[0]_i_1_n_0\,
      Q => \stack2_reg_n_0_[0]\
    );
\stack2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack2,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[1]_i_1_n_0\,
      Q => \stack2_reg_n_0_[1]\
    );
\stack2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack2,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[2]_i_1_n_0\,
      Q => \stack2_reg_n_0_[2]\
    );
\stack2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack2,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[3]_i_1_n_0\,
      Q => \stack2_reg_n_0_[3]\
    );
\stack2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack2,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[4]_i_1_n_0\,
      Q => \stack2_reg_n_0_[4]\
    );
\stack2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack2,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[5]_i_1_n_0\,
      Q => \stack2_reg_n_0_[5]\
    );
\stack2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack2,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[6]_i_1_n_0\,
      Q => \stack2_reg_n_0_[6]\
    );
\stack2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack2,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[7]_i_1_n_0\,
      Q => \stack2_reg_n_0_[7]\
    );
\stack2_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack2,
      CLR => \^trisa_reg[0]_0\,
      D => \stack2[8]_i_1_n_0\,
      Q => \stack2_reg_n_0_[8]\
    );
\stack2_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => stack2,
      CLR => \^trisa_reg[0]_0\,
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
      CLR => \^trisa_reg[0]_0\,
      D => retlw_reg_1,
      Q => \^stack2_reg[0]_1\
    );
\stacklevel_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => '1',
      CLR => \^trisa_reg[0]_0\,
      D => retlw_reg_0,
      Q => \^stack2_reg[0]_0\
    );
\status_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => '1',
      CLR => \^trisa_reg[0]_0\,
      D => \yi_reg[0]_C_2\,
      Q => \^status_c\
    );
\status_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => '1',
      CLR => \^trisa_reg[0]_0\,
      D => \yi_reg[1]_C_3\,
      Q => \^status_reg[1]_0\
    );
\status_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => '1',
      CLR => \^trisa_reg[0]_0\,
      D => \yi_reg[2]_C_6\,
      Q => \^status_reg[2]_0\
    );
\status_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => bcf_reg,
      CLR => \^trisa_reg[0]_0\,
      D => D(3),
      Q => \status_reg_n_0_[3]\
    );
\status_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => bcf_reg,
      CLR => \^trisa_reg[0]_0\,
      D => D(4),
      Q => \b_reg[4]_0\
    );
\status_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => bcf_reg,
      CLR => \^trisa_reg[0]_0\,
      D => D(5),
      Q => \^pc_reg[9]_p_0\
    );
\status_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => bcf_reg,
      CLR => \^trisa_reg[0]_0\,
      D => D(6),
      Q => \b_reg[6]_0\
    );
\status_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => bcf_reg,
      CLR => \^trisa_reg[0]_0\,
      D => D(7),
      Q => \status_reg_n_0_[7]\
    );
\trisa_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => \k_reg[2]_0\(0),
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
      CE => \k_reg[2]_0\(0),
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
      CE => \k_reg[2]_0\(0),
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
      CE => \k_reg[2]_0\(0),
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
      CE => tris_reg(0),
      D => D(0),
      PRE => \^trisa_reg[0]_0\,
      Q => \b_reg[7]_2\(0)
    );
\trisb_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg(0),
      D => D(1),
      PRE => \^trisa_reg[0]_0\,
      Q => \b_reg[7]_2\(1)
    );
\trisb_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg(0),
      D => D(2),
      PRE => \^trisa_reg[0]_0\,
      Q => \b_reg[7]_2\(2)
    );
\trisb_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg(0),
      D => D(3),
      PRE => \^trisa_reg[0]_0\,
      Q => \b_reg[7]_2\(3)
    );
\trisb_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg(0),
      D => D(4),
      PRE => \^trisa_reg[0]_0\,
      Q => \b_reg[7]_2\(4)
    );
\trisb_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg(0),
      D => D(5),
      PRE => \^trisa_reg[0]_0\,
      Q => \b_reg[7]_2\(5)
    );
\trisb_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg(0),
      D => D(6),
      PRE => \^trisa_reg[0]_0\,
      Q => \b_reg[7]_2\(6)
    );
\trisb_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => tris_reg(0),
      D => D(7),
      PRE => \^trisa_reg[0]_0\,
      Q => \b_reg[7]_2\(7)
    );
\w_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_5(0),
      CLR => \^trisa_reg[0]_0\,
      D => D(0),
      Q => \^q\(0)
    );
\w_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_5(0),
      CLR => \^trisa_reg[0]_0\,
      D => D(1),
      Q => \^q\(1)
    );
\w_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_5(0),
      CLR => \^trisa_reg[0]_0\,
      D => D(2),
      Q => \^q\(2)
    );
\w_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_5(0),
      CLR => \^trisa_reg[0]_0\,
      D => D(3),
      Q => w(3)
    );
\w_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_5(0),
      CLR => \^trisa_reg[0]_0\,
      D => D(4),
      Q => \^q\(3)
    );
\w_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_5(0),
      CLR => \^trisa_reg[0]_0\,
      D => D(5),
      Q => \^q\(4)
    );
\w_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_5(0),
      CLR => \^trisa_reg[0]_0\,
      D => D(6),
      Q => \^q\(5)
    );
\w_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => c2,
      CE => retlw_reg_5(0),
      CLR => \^trisa_reg[0]_0\,
      D => D(7),
      Q => \^q\(6)
    );
\yi[0]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555C0CF5555C0C0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^skip_reg_c\(0),
      I2 => incfsz,
      I3 => \^skip_reg_c\(4),
      I4 => option,
      I5 => swapf,
      O => \yi_reg[0]_C_0\
    );
\yi[0]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11110F9911110F00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^skip_reg_c\(0),
      I2 => z_reg_i_24_n_7,
      I3 => addwf,
      I4 => iorwf,
      I5 => xorwf,
      O => \yi_reg[0]_C\
    );
\yi[1]_C_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050535F5F5F535F"
    )
        port map (
      I0 => \^q\(1),
      I1 => swapf,
      I2 => option,
      I3 => \^skip_reg_c\(5),
      I4 => incfsz,
      I5 => \yi[1]_C_i_15_n_0\,
      O => \yi[1]_C_i_10_n_0\
    );
\yi[1]_C_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4777"
    )
        port map (
      I0 => \^skip_reg_c\(1),
      I1 => movlw,
      I2 => tris,
      I3 => \^q\(1),
      O => \yi[1]_C_i_14_n_0\
    );
\yi[1]_C_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(0),
      I1 => \^skip_reg_c\(1),
      O => \yi[1]_C_i_15_n_0\
    );
\yi[1]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0220AAAAAAAA"
    )
        port map (
      I0 => \yi[1]_C_i_10_n_0\,
      I1 => rlf_reg,
      I2 => \^skip_reg_c\(0),
      I3 => \^skip_reg_c\(1),
      I4 => rrf_reg_1,
      I5 => incf_reg,
      O => \yi_reg[1]_C_1\
    );
\yi[1]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666666668888EE0F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^skip_reg_c\(1),
      I2 => \yi[1]_C_i_14_n_0\,
      I3 => iorlw,
      I4 => andlw,
      I5 => xorlw,
      O => \yi_reg[1]_C_0\
    );
\yi[1]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"131010DF101010DC"
    )
        port map (
      I0 => z_reg_i_24_n_6,
      I1 => iorwf,
      I2 => addwf,
      I3 => \^skip_reg_c\(1),
      I4 => \^q\(1),
      I5 => xorwf,
      O => \yi_reg[1]_C\
    );
\yi[2]_C_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8882"
    )
        port map (
      I0 => decf,
      I1 => \^skip_reg_c\(2),
      I2 => \^skip_reg_c\(1),
      I3 => \^skip_reg_c\(0),
      I4 => \w_reg[2]_0\,
      O => \yi_reg[2]_C_2\
    );
\yi[2]_C_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FBFB08F8F8F808"
    )
        port map (
      I0 => z_reg_i_24_n_5,
      I1 => addwf,
      I2 => iorwf,
      I3 => \^skip_reg_c\(2),
      I4 => \^q\(2),
      I5 => xorwf,
      O => \yi_reg[2]_C\
    );
\yi[2]_C_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70707F7F8F8F808F"
    )
        port map (
      I0 => \^skip_reg_c\(1),
      I1 => \^skip_reg_c\(0),
      I2 => incf,
      I3 => movf,
      I4 => comf,
      I5 => \^skip_reg_c\(2),
      O => \yi[2]_C_i_12_n_0\
    );
\yi[2]_C_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^skip_reg_c\(0),
      I1 => \^skip_reg_c\(1),
      O => \yi[2]_C_i_15_n_0\
    );
\yi[2]_C_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^skip_reg_c\(2),
      I1 => \^skip_reg_c\(1),
      I2 => \^skip_reg_c\(0),
      O => \yi[2]_C_i_16_n_0\
    );
\yi[2]_C_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4777"
    )
        port map (
      I0 => \^skip_reg_c\(2),
      I1 => movlw,
      I2 => tris,
      I3 => \^q\(2),
      O => \yi[2]_C_i_17_n_0\
    );
\yi[2]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332330233023332"
    )
        port map (
      I0 => \yi[2]_C_i_12_n_0\,
      I1 => rrf_reg,
      I2 => decfsz,
      I3 => rrf_reg_0,
      I4 => \yi[2]_C_i_15_n_0\,
      I5 => \^skip_reg_c\(2),
      O => \yi_reg[2]_C_1\
    );
\yi[2]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050535F5F5F535F"
    )
        port map (
      I0 => \^q\(2),
      I1 => swapf,
      I2 => option,
      I3 => \^skip_reg_c\(6),
      I4 => incfsz,
      I5 => \yi[2]_C_i_16_n_0\,
      O => \yi_reg[2]_C_4\
    );
\yi[2]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666666668888EE0F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^skip_reg_c\(2),
      I2 => \yi[2]_C_i_17_n_0\,
      I3 => iorlw,
      I4 => andlw,
      I5 => xorlw,
      O => \yi_reg[2]_C_0\
    );
\yi[2]_C_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^skip_reg_c\(2),
      I1 => \^q\(2),
      O => \yi_reg[2]_C_3\
    );
\yi[3]_C_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F535F5050535F"
    )
        port map (
      I0 => w(3),
      I1 => swapf,
      I2 => option,
      I3 => \^skip_reg_c\(7),
      I4 => incfsz,
      I5 => \^yi_reg[3]_c\,
      O => \yi_reg[3]_C_4\
    );
\yi[3]_C_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4777"
    )
        port map (
      I0 => \^skip_reg_c\(3),
      I1 => movlw,
      I2 => tris,
      I3 => w(3),
      O => \yi[3]_C_i_11_n_0\
    );
\yi[3]_C_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \^skip_reg_c\(3),
      I1 => \^skip_reg_c\(0),
      I2 => \^skip_reg_c\(1),
      I3 => \^skip_reg_c\(2),
      O => \yi[3]_C_i_12_n_0\
    );
\yi[3]_C_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04070407F4F7F7F4"
    )
        port map (
      I0 => \^skip_reg_c\(4),
      I1 => rrf,
      I2 => rlf,
      I3 => \^skip_reg_c\(3),
      I4 => \yi[2]_C_i_15_n_0\,
      I5 => \^skip_reg_c\(2),
      O => \yi_reg[3]_C_2\
    );
\yi[3]_C_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => \^skip_reg_c\(3),
      I1 => \^skip_reg_c\(0),
      I2 => \^skip_reg_c\(1),
      I3 => \^skip_reg_c\(2),
      O => \^yi_reg[3]_c\
    );
\yi[3]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FBFB08F8F8F808"
    )
        port map (
      I0 => z_reg_i_24_n_4,
      I1 => addwf,
      I2 => iorwf,
      I3 => \^skip_reg_c\(3),
      I4 => w(3),
      I5 => xorwf,
      O => \yi_reg[3]_C_1\
    );
\yi[3]_C_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2220000"
    )
        port map (
      I0 => \yi[3]_C_i_8_n_0\,
      I1 => andwf,
      I2 => w(3),
      I3 => \^skip_reg_c\(3),
      I4 => iorwf_reg,
      O => \yi_reg[3]_C_3\
    );
\yi[3]_C_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999777711F0"
    )
        port map (
      I0 => w(3),
      I1 => \^skip_reg_c\(3),
      I2 => \yi[3]_C_i_11_n_0\,
      I3 => iorlw,
      I4 => andlw,
      I5 => xorlw,
      O => \yi_reg[3]_C_0\
    );
\yi[3]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \yi[3]_C_i_12_n_0\,
      I1 => decf,
      I2 => c_reg_i_12_n_4,
      I3 => subwf,
      I4 => w(3),
      I5 => clrw_reg,
      O => \yi[3]_C_i_8_n_0\
    );
\yi[4]_C_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^skip_reg_c\(4),
      I1 => \^skip_reg_c\(2),
      I2 => \^skip_reg_c\(1),
      I3 => \^skip_reg_c\(0),
      I4 => \^skip_reg_c\(3),
      O => \^yi_reg[4]_c\
    );
\yi[4]_C_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4777"
    )
        port map (
      I0 => \^skip_reg_c\(4),
      I1 => movlw,
      I2 => tris,
      I3 => \^q\(3),
      O => \yi[4]_C_i_14_n_0\
    );
\yi[4]_C_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \^skip_reg_c\(4),
      I1 => \^skip_reg_c\(0),
      I2 => \^skip_reg_c\(1),
      I3 => \^skip_reg_c\(2),
      I4 => \^skip_reg_c\(3),
      O => \yi_reg[4]_C_2\
    );
\yi[4]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047770000"
    )
        port map (
      I0 => \^skip_reg_c\(3),
      I1 => rlf,
      I2 => rrf,
      I3 => \^skip_reg_c\(5),
      I4 => \yi[4]_C_i_8_n_0\,
      I5 => comf_reg,
      O => \yi_reg[4]_C_1\
    );
\yi[4]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFACA0A0A0ACA0"
    )
        port map (
      I0 => \^q\(3),
      I1 => swapf,
      I2 => option,
      I3 => \^skip_reg_c\(0),
      I4 => incfsz,
      I5 => \^yi_reg[4]_c\,
      O => \yi_reg[4]_C_3\
    );
\yi[4]_C_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999777711F0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^skip_reg_c\(4),
      I2 => \yi[4]_C_i_14_n_0\,
      I3 => iorlw,
      I4 => andlw,
      I5 => xorlw,
      O => \yi_reg[4]_C_0\
    );
\yi[4]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABFFFFFFFE"
    )
        port map (
      I0 => rlf_reg,
      I1 => \^skip_reg_c\(3),
      I2 => \^skip_reg_c\(2),
      I3 => \^skip_reg_c\(1),
      I4 => \^skip_reg_c\(0),
      I5 => \^skip_reg_c\(4),
      O => \yi[4]_C_i_8_n_0\
    );
\yi[5]_C_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^skip_reg_c\(5),
      I1 => \^skip_reg_c\(4),
      I2 => \^skip_reg_c\(3),
      I3 => \^skip_reg_c\(0),
      I4 => \^skip_reg_c\(1),
      I5 => \^skip_reg_c\(2),
      O => \^yi_reg[5]_c\
    );
\yi[5]_C_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4777"
    )
        port map (
      I0 => \^skip_reg_c\(5),
      I1 => movlw,
      I2 => tris,
      I3 => \^q\(4),
      O => \yi[5]_C_i_14_n_0\
    );
\yi[5]_C_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^skip_reg_c\(3),
      I1 => \^skip_reg_c\(2),
      I2 => \^skip_reg_c\(1),
      I3 => \^skip_reg_c\(0),
      O => \yi[5]_C_i_15_n_0\
    );
\yi[5]_C_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \^skip_reg_c\(5),
      I1 => \^skip_reg_c\(4),
      I2 => \^skip_reg_c\(3),
      I3 => \^skip_reg_c\(2),
      I4 => \^skip_reg_c\(1),
      I5 => \^skip_reg_c\(0),
      O => \yi_reg[5]_C_2\
    );
\yi[5]_C_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^skip_reg_c\(5),
      I1 => \^q\(4),
      O => \yi_reg[5]_C_4\
    );
\yi[5]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFACA0A0A0ACA0"
    )
        port map (
      I0 => \^q\(4),
      I1 => swapf,
      I2 => option,
      I3 => \^skip_reg_c\(1),
      I4 => incfsz,
      I5 => \^yi_reg[5]_c\,
      O => \yi_reg[5]_C_3\
    );
\yi[5]_C_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999777711F0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^skip_reg_c\(5),
      I2 => \yi[5]_C_i_14_n_0\,
      I3 => iorlw,
      I4 => andlw,
      I5 => xorlw,
      O => \yi_reg[5]_C_0\
    );
\yi[5]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8080BFBF80B08"
    )
        port map (
      I0 => \^skip_reg_c\(6),
      I1 => rrf,
      I2 => rlf,
      I3 => \^skip_reg_c\(5),
      I4 => \^skip_reg_c\(4),
      I5 => \yi[5]_C_i_15_n_0\,
      O => \yi_reg[5]_C_1\
    );
\yi[6]_C_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^skip_reg_c\(6),
      I1 => \^z_reg\,
      O => \yi_reg[6]_C\
    );
\yi[6]_C_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003530FFFF3530"
    )
        port map (
      I0 => c_reg_i_7_n_5,
      I1 => \yi[6]_C_i_15_n_0\,
      I2 => decf,
      I3 => subwf,
      I4 => andwf,
      I5 => z_i_19_n_0,
      O => \yi_reg[6]_C_2\
    );
\yi[6]_C_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4777"
    )
        port map (
      I0 => \^skip_reg_c\(6),
      I1 => movlw,
      I2 => tris,
      I3 => \^q\(5),
      O => \yi[6]_C_i_14_n_0\
    );
\yi[6]_C_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(6),
      I1 => z_i_12_n_0,
      O => \yi[6]_C_i_15_n_0\
    );
\yi[6]_C_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999777711F0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^skip_reg_c\(6),
      I2 => \yi[6]_C_i_14_n_0\,
      I3 => iorlw,
      I4 => andlw,
      I5 => xorlw,
      O => \yi_reg[6]_C_0\
    );
\yi[6]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"335F33503350335F"
    )
        port map (
      I0 => \^skip_reg_c\(7),
      I1 => \^skip_reg_c\(5),
      I2 => rrf,
      I3 => rlf,
      I4 => \^skip_reg_c\(6),
      I5 => z_i_12_n_0,
      O => \yi_reg[6]_C_1\
    );
\yi[7]_C_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFBBAFAAFFFFFFFF"
    )
        port map (
      I0 => \yi[7]_C_i_17_n_0\,
      I1 => \^status_c\,
      I2 => \^skip_reg_c\(6),
      I3 => rlf,
      I4 => rrf,
      I5 => swapf_reg,
      O => \yi_reg[7]_C_1\
    );
\yi[7]_C_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0C00AAAAFCF0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^skip_reg_c\(3),
      I2 => incfsz,
      I3 => swapf,
      I4 => option,
      I5 => \yi[7]_C_i_18_n_0\,
      O => \yi_reg[7]_C_2\
    );
\yi[7]_C_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666666668888EE0F"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^skip_reg_c\(7),
      I2 => \yi[7]_C_i_22_n_0\,
      I3 => iorlw,
      I4 => andlw,
      I5 => xorlw,
      O => \yi_reg[7]_C_0\
    );
\yi[7]_C_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002D00"
    )
        port map (
      I0 => z_i_12_n_0,
      I1 => \^skip_reg_c\(6),
      I2 => \^skip_reg_c\(7),
      I3 => decfsz,
      I4 => rrf,
      I5 => rlf,
      O => \yi[7]_C_i_17_n_0\
    );
\yi[7]_C_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \^skip_reg_c\(7),
      I1 => \^z_reg\,
      I2 => \^skip_reg_c\(6),
      O => \yi[7]_C_i_18_n_0\
    );
\yi[7]_C_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4777"
    )
        port map (
      I0 => \^skip_reg_c\(7),
      I1 => movlw,
      I2 => tris,
      I3 => \^q\(6),
      O => \yi[7]_C_i_22_n_0\
    );
\yi[7]_C_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \^skip_reg_c\(7),
      I1 => \^skip_reg_c\(6),
      I2 => z_i_12_n_0,
      O => \yi_reg[7]_C\
    );
z_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB8B8"
    )
        port map (
      I0 => z,
      I1 => xorlw_reg,
      I2 => z_i_2_n_0,
      I3 => \b_reg[7]_3\,
      I4 => z_i_4_n_0,
      I5 => z_i_5_n_0,
      O => z_reg_6
    );
z_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^skip_reg_c\(7),
      I1 => \^skip_reg_c\(6),
      O => z_i_11_n_0
    );
z_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^skip_reg_c\(0),
      I1 => \^skip_reg_c\(1),
      I2 => \^skip_reg_c\(2),
      I3 => \^skip_reg_c\(3),
      I4 => \^skip_reg_c\(5),
      I5 => \^skip_reg_c\(4),
      O => z_i_12_n_0
    );
z_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^skip_reg_c\(4),
      I1 => \^skip_reg_c\(3),
      I2 => \^skip_reg_c\(0),
      I3 => \^skip_reg_c\(1),
      I4 => \^skip_reg_c\(2),
      I5 => \^skip_reg_c\(5),
      O => \^z_reg\
    );
z_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(3),
      I1 => w(3),
      O => z_i_14_n_0
    );
z_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(5),
      I1 => \^q\(4),
      O => z_i_15_n_0
    );
z_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(6),
      I1 => \^q\(5),
      O => z_i_16_n_0
    );
z_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FF6"
    )
        port map (
      I0 => \^skip_reg_c\(7),
      I1 => \^q\(6),
      I2 => \^skip_reg_c\(4),
      I3 => \^q\(3),
      I4 => z_i_28_n_0,
      I5 => z_i_29_n_0,
      O => z_i_17_n_0
    );
z_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^skip_reg_c\(7),
      I1 => \^q\(6),
      O => \^z_reg_3\
    );
z_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^skip_reg_c\(6),
      I1 => \^q\(5),
      O => z_i_19_n_0
    );
z_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55553F3055553030"
    )
        port map (
      I0 => \^z_reg_0\,
      I1 => \^z_reg_1\,
      I2 => andlw,
      I3 => iorlw,
      I4 => xorlw,
      I5 => z_i_8_n_0,
      O => z_i_2_n_0
    );
z_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^skip_reg_c\(4),
      I1 => \^q\(3),
      O => \^z_reg_4\
    );
z_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^skip_reg_c\(6),
      I1 => \^q\(5),
      O => z_i_21_n_0
    );
z_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^skip_reg_c\(4),
      I1 => \^q\(3),
      O => z_i_22_n_0
    );
z_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => z_i_30_n_0,
      I1 => z_i_31_n_0,
      I2 => \^skip_reg_c\(0),
      I3 => \^q\(0),
      I4 => \^skip_reg_c\(7),
      I5 => \^q\(6),
      O => z_i_23_n_0
    );
z_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^o\(1),
      I1 => z_reg_i_24_n_7,
      I2 => z_reg_i_24_n_6,
      I3 => \^o\(0),
      I4 => \^o\(2),
      I5 => \^o\(3),
      O => z_i_25_n_0
    );
z_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBBBBBB88888"
    )
        port map (
      I0 => \^skip_reg_c_0\,
      I1 => decf,
      I2 => z_i_36_n_0,
      I3 => z_i_37_n_0,
      I4 => subwf,
      I5 => clrw_reg,
      O => z_reg_2
    );
z_i_28: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(2),
      I1 => \^q\(2),
      O => z_i_28_n_0
    );
z_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(0),
      I1 => \^q\(0),
      O => z_i_29_n_0
    );
z_i_30: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^skip_reg_c\(3),
      I1 => w(3),
      O => z_i_30_n_0
    );
z_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^skip_reg_c\(2),
      I1 => \^q\(2),
      O => z_i_31_n_0
    );
z_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(3),
      I1 => w(3),
      O => z_i_32_n_0
    );
z_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(2),
      I1 => \^q\(2),
      O => z_i_33_n_0
    );
z_i_34: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(1),
      I1 => \^q\(1),
      O => z_i_34_n_0
    );
z_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^skip_reg_c\(0),
      I1 => \^q\(0),
      O => z_i_35_n_0
    );
z_i_36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^z_reg_5\(1),
      I1 => \^z_reg_5\(0),
      I2 => c_reg_i_12_n_4,
      I3 => \^z_reg_5\(2),
      O => z_i_36_n_0
    );
z_i_37: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^yi_reg[7]_c_3\(1),
      I1 => \^yi_reg[7]_c_3\(0),
      I2 => c_reg_i_7_n_5,
      I3 => \^yi_reg[7]_c_3\(2),
      O => z_i_37_n_0
    );
z_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000EFE0E0E"
    )
        port map (
      I0 => z_i_9_n_0,
      I1 => andwf_reg,
      I2 => movf,
      I3 => z_i_11_n_0,
      I4 => z_i_12_n_0,
      I5 => comf,
      O => z_i_4_n_0
    );
z_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF20FF00"
    )
        port map (
      I0 => \^skip_reg_c\(6),
      I1 => \^z_reg\,
      I2 => \^skip_reg_c\(7),
      I3 => incf,
      I4 => comf,
      O => z_i_5_n_0
    );
z_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFE"
    )
        port map (
      I0 => z_i_14_n_0,
      I1 => z_i_15_n_0,
      I2 => \^q\(1),
      I3 => \^skip_reg_c\(1),
      I4 => z_i_16_n_0,
      I5 => z_i_17_n_0,
      O => \^z_reg_0\
    );
z_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => dc_i_4_n_0,
      I1 => \^z_reg_3\,
      I2 => z_i_19_n_0,
      I3 => \^q\(4),
      I4 => \^skip_reg_c\(5),
      I5 => \^z_reg_4\,
      O => \^z_reg_1\
    );
z_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => dc_i_6_n_0,
      I1 => z_i_21_n_0,
      I2 => \^q\(4),
      I3 => \^skip_reg_c\(5),
      I4 => z_i_22_n_0,
      I5 => z_i_23_n_0,
      O => z_i_8_n_0
    );
z_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888B88"
    )
        port map (
      I0 => z_i_8_n_0,
      I1 => iorwf,
      I2 => z_reg_i_24_n_5,
      I3 => addwf,
      I4 => z_reg_i_24_n_4,
      I5 => z_i_25_n_0,
      O => z_i_9_n_0
    );
z_reg_i_24: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => z_reg_i_24_n_0,
      CO(2) => z_reg_i_24_n_1,
      CO(1) => z_reg_i_24_n_2,
      CO(0) => z_reg_i_24_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^skip_reg_c\(3 downto 0),
      O(3) => z_reg_i_24_n_4,
      O(2) => z_reg_i_24_n_5,
      O(1) => z_reg_i_24_n_6,
      O(0) => z_reg_i_24_n_7,
      S(3) => z_i_32_n_0,
      S(2) => z_i_33_n_0,
      S(1) => z_i_34_n_0,
      S(0) => z_i_35_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pic16c56_0_0_timer is
  port (
    osc2 : out STD_LOGIC;
    CLK : out STD_LOGIC;
    c2 : out STD_LOGIC;
    c3 : out STD_LOGIC;
    osc1 : in STD_LOGIC;
    mclr_0 : in STD_LOGIC;
    mclr : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pic16c56_0_0_timer : entity is "timer";
end design_1_pic16c56_0_0_timer;

architecture STRUCTURE of design_1_pic16c56_0_0_timer is
  signal \^clk\ : STD_LOGIC;
  signal \^c2\ : STD_LOGIC;
  signal \^c3\ : STD_LOGIC;
  signal clk1_i_1_n_0 : STD_LOGIC;
  signal clk1_i_2_n_0 : STD_LOGIC;
  signal clk2_i_1_n_0 : STD_LOGIC;
  signal clk3_i_1_n_0 : STD_LOGIC;
  signal clk3_i_2_n_0 : STD_LOGIC;
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
  attribute SOFT_HLUTNM of clk1_i_2 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of clk3_i_1 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of clk3_i_2 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair58";
begin
  CLK <= \^clk\;
  c2 <= \^c2\;
  c3 <= \^c3\;
  osc2 <= \^osc2\;
clk1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000020"
    )
        port map (
      I0 => clk1_i_2_n_0,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \^clk\,
      O => clk1_i_1_n_0
    );
clk1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[4]\,
      O => clk1_i_2_n_0
    );
clk1_reg: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => '1',
      CLR => mclr_0,
      D => clk1_i_1_n_0,
      Q => \^clk\
    );
clk2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF00001000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => clk1_i_2_n_0,
      I4 => \state_reg_n_0_[3]\,
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
clk3_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF30020"
    )
        port map (
      I0 => mclr,
      I1 => \state_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => clk3_i_2_n_0,
      I4 => \^c3\,
      O => clk3_i_1_n_0
    );
clk3_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      O => clk3_i_2_n_0
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
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[5]\,
      I5 => \state_reg_n_0_[4]\,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[5]\,
      I5 => \state_reg_n_0_[4]\,
      O => \state[2]_i_1_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \state[3]_i_1_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[5]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => \state_reg_n_0_[3]\,
      O => \state[4]_i_1_n_0\
    );
\state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE9"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => mclr,
      I5 => \state[5]_i_3_n_0\,
      O => state
    );
\state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \state[5]_i_2_n_0\
    );
\state[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => \state[5]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => state,
      CLR => mclr_0,
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\
    );
\state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => state,
      CLR => mclr_0,
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\
    );
\state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => state,
      CLR => mclr_0,
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\
    );
\state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => state,
      CLR => mclr_0,
      D => \state[3]_i_1_n_0\,
      Q => \state_reg_n_0_[3]\
    );
\state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => state,
      CLR => mclr_0,
      D => \state[4]_i_1_n_0\,
      Q => \state_reg_n_0_[4]\
    );
\state_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => osc1,
      CE => state,
      CLR => mclr_0,
      D => \state[5]_i_2_n_0\,
      Q => \state_reg_n_0_[5]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pic16c56_0_0_pic16c56 is
  port (
    \romaddr[9]\ : out STD_LOGIC;
    \romaddr[8]\ : out STD_LOGIC;
    \romaddr[7]\ : out STD_LOGIC;
    \romaddr[6]\ : out STD_LOGIC;
    \romaddr[5]\ : out STD_LOGIC;
    \romaddr[4]\ : out STD_LOGIC;
    \romaddr[3]\ : out STD_LOGIC;
    \romaddr[2]\ : out STD_LOGIC;
    \romaddr[1]\ : out STD_LOGIC;
    \romaddr[0]\ : out STD_LOGIC;
    osc2 : out STD_LOGIC;
    c3 : out STD_LOGIC;
    RB : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    RA : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    mclr : in STD_LOGIC;
    romdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    osc1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pic16c56_0_0_pic16c56 : entity is "pic16c56";
end design_1_pic16c56_0_0_pic16c56;

architecture STRUCTURE of design_1_pic16c56_0_0_pic16c56 is
  signal A1_n_0 : STD_LOGIC;
  signal A1_n_11 : STD_LOGIC;
  signal A1_n_15 : STD_LOGIC;
  signal A1_n_19 : STD_LOGIC;
  signal A1_n_20 : STD_LOGIC;
  signal A1_n_21 : STD_LOGIC;
  signal A1_n_25 : STD_LOGIC;
  signal A1_n_28 : STD_LOGIC;
  signal A1_n_30 : STD_LOGIC;
  signal A1_n_31 : STD_LOGIC;
  signal A1_n_32 : STD_LOGIC;
  signal A1_n_33 : STD_LOGIC;
  signal A1_n_36 : STD_LOGIC;
  signal A1_n_39 : STD_LOGIC;
  signal A1_n_41 : STD_LOGIC;
  signal A1_n_42 : STD_LOGIC;
  signal A1_n_43 : STD_LOGIC;
  signal A1_n_44 : STD_LOGIC;
  signal A1_n_45 : STD_LOGIC;
  signal A1_n_46 : STD_LOGIC;
  signal A1_n_48 : STD_LOGIC;
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
  signal A1_n_7 : STD_LOGIC;
  signal A1_n_70 : STD_LOGIC;
  signal A1_n_71 : STD_LOGIC;
  signal A1_n_72 : STD_LOGIC;
  signal A1_n_73 : STD_LOGIC;
  signal A1_n_74 : STD_LOGIC;
  signal A1_n_76 : STD_LOGIC;
  signal A1_n_77 : STD_LOGIC;
  signal A1_n_78 : STD_LOGIC;
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
  signal A1_n_89 : STD_LOGIC;
  signal A1_n_90 : STD_LOGIC;
  signal A1_n_91 : STD_LOGIC;
  signal A2_n_1 : STD_LOGIC;
  signal A2_n_100 : STD_LOGIC;
  signal A2_n_101 : STD_LOGIC;
  signal A2_n_102 : STD_LOGIC;
  signal A2_n_103 : STD_LOGIC;
  signal A2_n_104 : STD_LOGIC;
  signal A2_n_105 : STD_LOGIC;
  signal A2_n_106 : STD_LOGIC;
  signal A2_n_107 : STD_LOGIC;
  signal A2_n_108 : STD_LOGIC;
  signal A2_n_109 : STD_LOGIC;
  signal A2_n_11 : STD_LOGIC;
  signal A2_n_110 : STD_LOGIC;
  signal A2_n_111 : STD_LOGIC;
  signal A2_n_112 : STD_LOGIC;
  signal A2_n_113 : STD_LOGIC;
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
  signal A2_n_13 : STD_LOGIC;
  signal A2_n_14 : STD_LOGIC;
  signal A2_n_15 : STD_LOGIC;
  signal A2_n_16 : STD_LOGIC;
  signal A2_n_17 : STD_LOGIC;
  signal A2_n_34 : STD_LOGIC;
  signal A2_n_35 : STD_LOGIC;
  signal A2_n_36 : STD_LOGIC;
  signal A2_n_37 : STD_LOGIC;
  signal A2_n_38 : STD_LOGIC;
  signal A2_n_39 : STD_LOGIC;
  signal A2_n_40 : STD_LOGIC;
  signal A2_n_41 : STD_LOGIC;
  signal A2_n_42 : STD_LOGIC;
  signal A2_n_55 : STD_LOGIC;
  signal A2_n_56 : STD_LOGIC;
  signal A2_n_57 : STD_LOGIC;
  signal A2_n_58 : STD_LOGIC;
  signal A2_n_59 : STD_LOGIC;
  signal A2_n_60 : STD_LOGIC;
  signal A2_n_61 : STD_LOGIC;
  signal A2_n_62 : STD_LOGIC;
  signal A2_n_63 : STD_LOGIC;
  signal A2_n_64 : STD_LOGIC;
  signal A2_n_65 : STD_LOGIC;
  signal A2_n_66 : STD_LOGIC;
  signal A2_n_67 : STD_LOGIC;
  signal A2_n_68 : STD_LOGIC;
  signal A2_n_69 : STD_LOGIC;
  signal A2_n_70 : STD_LOGIC;
  signal A2_n_71 : STD_LOGIC;
  signal A2_n_72 : STD_LOGIC;
  signal A2_n_73 : STD_LOGIC;
  signal A2_n_74 : STD_LOGIC;
  signal A2_n_75 : STD_LOGIC;
  signal A2_n_76 : STD_LOGIC;
  signal A2_n_77 : STD_LOGIC;
  signal A2_n_78 : STD_LOGIC;
  signal A2_n_79 : STD_LOGIC;
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
  signal A2_n_98 : STD_LOGIC;
  signal A2_n_99 : STD_LOGIC;
  signal A3_n_0 : STD_LOGIC;
  signal A3_n_1 : STD_LOGIC;
  signal A3_n_12 : STD_LOGIC;
  signal A3_n_13 : STD_LOGIC;
  signal A3_n_2 : STD_LOGIC;
  signal A3_n_3 : STD_LOGIC;
  signal A3_n_4 : STD_LOGIC;
  signal A3_n_5 : STD_LOGIC;
  signal A3_n_6 : STD_LOGIC;
  signal A3_n_7 : STD_LOGIC;
  signal A3_n_8 : STD_LOGIC;
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
  signal c : STD_LOGIC;
  signal c1 : STD_LOGIC;
  signal c2 : STD_LOGIC;
  signal call : STD_LOGIC;
  signal comf : STD_LOGIC;
  signal d : STD_LOGIC;
  signal dc : STD_LOGIC;
  signal decf : STD_LOGIC;
  signal decfsz : STD_LOGIC;
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
  signal retlw : STD_LOGIC;
  signal rlf : STD_LOGIC;
  signal \^romaddr[0]\ : STD_LOGIC;
  signal \^romaddr[1]\ : STD_LOGIC;
  signal \^romaddr[3]\ : STD_LOGIC;
  signal \^romaddr[4]\ : STD_LOGIC;
  signal \^romaddr[5]\ : STD_LOGIC;
  signal \^romaddr[6]\ : STD_LOGIC;
  signal rrf : STD_LOGIC;
  signal status_c : STD_LOGIC;
  signal subwf : STD_LOGIC;
  signal swapf : STD_LOGIC;
  signal tris : STD_LOGIC;
  signal trisa : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal trisb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal w : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xorlw : STD_LOGIC;
  signal xorwf : STD_LOGIC;
  signal z : STD_LOGIC;
begin
  \romaddr[0]\ <= \^romaddr[0]\;
  \romaddr[1]\ <= \^romaddr[1]\;
  \romaddr[3]\ <= \^romaddr[3]\;
  \romaddr[4]\ <= \^romaddr[4]\;
  \romaddr[5]\ <= \^romaddr[5]\;
  \romaddr[6]\ <= \^romaddr[6]\;
A1: entity work.design_1_pic16c56_0_0_decoder
     port map (
      CLK => c1,
      D(5) => A3_n_0,
      D(4) => A3_n_1,
      D(3) => A3_n_4,
      D(2) => A3_n_5,
      D(1) => A3_n_6,
      D(0) => A3_n_7,
      E(0) => A1_n_60,
      O(3) => A2_n_107,
      O(2) => A2_n_108,
      O(1) => A2_n_109,
      O(0) => A2_n_110,
      Q(7 downto 0) => b(7 downto 0),
      RA(3 downto 0) => RA(3 downto 0),
      \RA_out_reg[3]\(0) => A1_n_63,
      RB(7 downto 0) => RB(7 downto 0),
      \RB_out_reg[7]\(0) => A1_n_62,
      addwf => addwf,
      addwf_reg_0 => A2_n_62,
      addwf_reg_1 => A2_n_63,
      andlw => andlw,
      andwf => andwf,
      andwf_reg_0 => A2_n_81,
      \b_reg[0]\ => A2_n_74,
      \b_reg[2]\ => A2_n_87,
      \b_reg[2]_0\ => A2_n_83,
      \b_reg[3]\ => A2_n_72,
      \b_reg[3]_0\(2) => A2_n_114,
      \b_reg[3]_0\(1) => A2_n_115,
      \b_reg[3]_0\(0) => A2_n_116,
      \b_reg[3]_1\ => A2_n_38,
      \b_reg[4]\ => A2_n_40,
      \b_reg[4]_0\ => A2_n_42,
      \b_reg[4]_1\ => A2_n_76,
      \b_reg[4]_2\ => A2_n_98,
      \b_reg[4]_3\ => A2_n_86,
      \b_reg[5]\ => A2_n_41,
      \b_reg[5]_0\ => A2_n_99,
      \b_reg[5]_1\ => A2_n_117,
      \b_reg[6]\ => A2_n_104,
      \b_reg[6]_0\ => A2_n_77,
      \b_reg[6]_1\ => A2_n_39,
      \b_reg[7]\(5 downto 4) => k(7 downto 6),
      \b_reg[7]\(3) => k(4),
      \b_reg[7]\(2 downto 0) => k(2 downto 0),
      \b_reg[7]_0\(7) => A1_n_52,
      \b_reg[7]_0\(6) => A1_n_53,
      \b_reg[7]_0\(5) => A1_n_54,
      \b_reg[7]_0\(4) => A1_n_55,
      \b_reg[7]_0\(3) => A1_n_56,
      \b_reg[7]_0\(2) => A1_n_57,
      \b_reg[7]_0\(1) => A1_n_58,
      \b_reg[7]_0\(0) => A1_n_59,
      \b_reg[7]_1\ => A2_n_78,
      \b_reg[7]_2\(2) => A2_n_111,
      \b_reg[7]_2\(1) => A2_n_112,
      \b_reg[7]_2\(0) => A2_n_113,
      \b_reg[7]_3\ => A2_n_37,
      \b_reg[7]_4\ => A2_n_85,
      c => c,
      c_reg => A1_n_91,
      call => call,
      call_reg_0 => A2_n_89,
      call_reg_1 => A2_n_90,
      comf => comf,
      \^d\ => d,
      dc => dc,
      decf => decf,
      decf_reg_0 => A2_n_82,
      decf_reg_1 => A2_n_84,
      decf_reg_2 => A2_n_80,
      decfsz => decfsz,
      decfsz_reg_0 => A2_n_73,
      \frs_reg_reg[7]\(0) => A1_n_64,
      \frs_reg_reg[7]_0\(7 downto 0) => fsr(7 downto 0),
      goto => goto,
      incf => incf,
      incfsz => incfsz,
      iorlw => iorlw,
      iorwf => iorwf,
      iorwf_reg_0 => A2_n_65,
      \k_reg[7]_0\ => A2_n_100,
      longk(0) => longk(8),
      mclr => mclr,
      movf => movf,
      movlw => movlw,
      option => option,
      \pc_reg[0]_P\ => A1_n_66,
      \pc_reg[0]_P_0\ => A1_n_72,
      \pc_reg[0]_P_1\ => \^romaddr[0]\,
      \pc_reg[1]_P\ => A1_n_67,
      \pc_reg[1]_P_0\ => A2_n_88,
      \pc_reg[1]_P_1\ => \^romaddr[1]\,
      \pc_reg[2]_P\ => A1_n_25,
      \pc_reg[2]_P_0\ => A1_n_68,
      \pc_reg[2]_P_1\ => A1_n_88,
      \pc_reg[3]_P\ => A1_n_69,
      \pc_reg[3]_P_0\ => A1_n_87,
      \pc_reg[3]_P_1\ => \^romaddr[3]\,
      \pc_reg[4]_P\ => A1_n_86,
      \pc_reg[4]_P_0\ => \^romaddr[4]\,
      \pc_reg[4]_P_1\ => A2_n_34,
      \pc_reg[5]_P\ => A1_n_76,
      \pc_reg[5]_P_0\ => A1_n_85,
      \pc_reg[5]_P_1\ => \^romaddr[5]\,
      \pc_reg[6]_P\ => A1_n_70,
      \pc_reg[6]_P_0\ => A1_n_74,
      \pc_reg[6]_P_1\ => A1_n_84,
      \pc_reg[6]_P_2\ => \^romaddr[6]\,
      \pc_reg[7]_P\ => A1_n_71,
      \pc_reg[7]_P_0\ => A1_n_83,
      \pc_reg[7]_P_1\ => A2_n_69,
      \pc_reg[7]_P_2\ => A2_n_70,
      \pc_reg[9]_P\ => A1_n_77,
      \pc_reg[9]_P_0\ => A2_n_35,
      \pc_reg[9]_P_1\ => A2_n_36,
      retlw => retlw,
      retlw_reg_0 => A2_n_71,
      rlf => rlf,
      romdata(11 downto 0) => romdata(11 downto 0),
      rrf => rrf,
      rrf_reg_0 => A2_n_79,
      \rtccount_reg[6]\(2) => A2_n_121,
      \rtccount_reg[6]\(1) => A2_n_122,
      \rtccount_reg[6]\(0) => A2_n_123,
      \rtccount_reg[7]\(0) => A1_n_61,
      skip_reg_C => A1_n_90,
      skip_reg_C_0 => A3_n_8,
      \stack1_reg[2]\ => A2_n_91,
      \stack1_reg[3]\ => A2_n_92,
      \stack1_reg[6]\ => A2_n_93,
      \stack1_reg[7]\ => A2_n_94,
      \stacklevel_reg[0]\ => A1_n_32,
      \stacklevel_reg[0]_0\ => A2_n_12,
      \stacklevel_reg[1]\ => A1_n_30,
      \stacklevel_reg[1]_0\ => A1_n_31,
      \stacklevel_reg[1]_1\ => A2_n_11,
      status_c => status_c,
      \status_reg[0]\ => A1_n_51,
      \status_reg[0]_0\ => A2_n_75,
      \status_reg[0]_1\ => A2_n_97,
      \status_reg[1]\ => A1_n_33,
      \status_reg[1]_0\ => A2_n_96,
      \status_reg[1]_1\ => A2_n_17,
      \status_reg[2]\ => A1_n_21,
      \status_reg[2]_0\ => A1_n_80,
      \status_reg[2]_1\ => A2_n_95,
      \status_reg[3]\ => A2_n_68,
      \status_reg[4]\ => A2_n_15,
      \status_reg[5]\ => A2_n_14,
      \status_reg[6]\ => A2_n_13,
      \status_reg[7]\ => A1_n_0,
      subwf => subwf,
      swapf => swapf,
      tris => tris,
      \trisb_reg[7]\(0) => A1_n_82,
      \w_reg[0]\ => A2_n_118,
      \w_reg[0]_0\ => A2_n_67,
      \w_reg[1]\ => A2_n_56,
      \w_reg[1]_0\ => A2_n_66,
      \w_reg[2]\ => A2_n_101,
      \w_reg[2]_0\ => A2_n_64,
      \w_reg[3]\ => A2_n_61,
      \w_reg[3]_0\ => A2_n_102,
      \w_reg[4]\ => A2_n_106,
      \w_reg[4]_0\ => A2_n_60,
      \w_reg[5]\ => A2_n_57,
      \w_reg[5]_0\ => A2_n_105,
      \w_reg[5]_1\ => A2_n_59,
      \w_reg[6]\ => A2_n_58,
      \w_reg[7]\(0) => A1_n_65,
      \w_reg[7]_0\ => A2_n_103,
      \w_reg[7]_1\ => A2_n_55,
      \w_reg[7]_2\(6 downto 3) => w(7 downto 4),
      \w_reg[7]_2\(2 downto 0) => w(2 downto 0),
      xorlw => xorlw,
      xorwf => xorwf,
      \yi_reg[0]_C\ => A1_n_20,
      \yi_reg[0]_C_0\ => A1_n_48,
      \yi_reg[0]_C_1\ => A1_n_73,
      \yi_reg[1]_C\ => A1_n_7,
      \yi_reg[1]_C_0\ => A1_n_19,
      \yi_reg[1]_C_1\ => A1_n_46,
      \yi_reg[1]_C_2\ => A1_n_89,
      \yi_reg[2]_C\ => A1_n_15,
      \yi_reg[2]_C_0\ => A1_n_45,
      \yi_reg[2]_C_1\ => A1_n_79,
      \yi_reg[2]_C_2\ => A1_n_81,
      \yi_reg[3]_C\ => A1_n_44,
      \yi_reg[4]_C\ => A1_n_11,
      \yi_reg[4]_C_0\ => A1_n_43,
      \yi_reg[4]_C_1\ => A1_n_78,
      \yi_reg[5]_C\ => A1_n_42,
      \yi_reg[6]_C\ => A1_n_41,
      \yi_reg[7]_C\ => A1_n_36,
      z_reg => A1_n_28,
      z_reg_0 => A1_n_39
    );
A2: entity work.design_1_pic16c56_0_0_distribute
     port map (
      CLK => c1,
      D(7) => A3_n_0,
      D(6) => A3_n_1,
      D(5) => A3_n_2,
      D(4) => A3_n_3,
      D(3) => A3_n_4,
      D(2) => A3_n_5,
      D(1) => A3_n_6,
      D(0) => A3_n_7,
      E(0) => A1_n_61,
      O(3) => A2_n_107,
      O(2) => A2_n_108,
      O(1) => A2_n_109,
      O(0) => A2_n_110,
      Q(6 downto 3) => w(7 downto 4),
      Q(2 downto 0) => w(2 downto 0),
      RA(3 downto 0) => RA(3 downto 0),
      RB(7 downto 0) => RB(7 downto 0),
      addwf => addwf,
      andlw => andlw,
      andwf => andwf,
      andwf_reg => A1_n_39,
      \b_reg[0]_0\ => A2_n_97,
      \b_reg[1]_0\ => A2_n_96,
      \b_reg[2]_0\ => A2_n_95,
      \b_reg[3]_0\ => A2_n_68,
      \b_reg[3]_1\(3 downto 0) => trisa(3 downto 0),
      \b_reg[4]_0\ => A2_n_15,
      \b_reg[6]_0\ => A2_n_13,
      \b_reg[6]_1\(2) => A2_n_121,
      \b_reg[6]_1\(1) => A2_n_122,
      \b_reg[6]_1\(0) => A2_n_123,
      \b_reg[7]_0\ => A2_n_69,
      \b_reg[7]_1\(7 downto 0) => fsr(7 downto 0),
      \b_reg[7]_2\(7 downto 0) => trisb(7 downto 0),
      \b_reg[7]_3\ => A1_n_28,
      bcf_reg => A1_n_0,
      bsf_reg => A1_n_31,
      c2 => c2,
      c_reg => A2_n_79,
      call => call,
      call_reg => A1_n_71,
      clrw_reg => A1_n_80,
      comf => comf,
      comf_reg => A1_n_78,
      \^d\ => d,
      dc => dc,
      dc_reg => A2_n_120,
      decf => decf,
      decfsz => decfsz,
      goto => goto,
      goto_reg => A1_n_77,
      incf => incf,
      incf_reg => A1_n_7,
      incfsz => incfsz,
      iorlw => iorlw,
      iorwf => iorwf,
      iorwf_reg => A1_n_20,
      \k_reg[1]\(0) => A1_n_64,
      \k_reg[1]_0\(0) => A1_n_63,
      \k_reg[2]\(0) => A1_n_62,
      \k_reg[2]_0\(0) => A1_n_60,
      \k_reg[7]\(5 downto 4) => k(7 downto 6),
      \k_reg[7]\(3) => k(4),
      \k_reg[7]\(2 downto 0) => k(2 downto 0),
      \k_reg[7]_0\(7) => A1_n_52,
      \k_reg[7]_0\(6) => A1_n_53,
      \k_reg[7]_0\(5) => A1_n_54,
      \k_reg[7]_0\(4) => A1_n_55,
      \k_reg[7]_0\(3) => A1_n_56,
      \k_reg[7]_0\(2) => A1_n_57,
      \k_reg[7]_0\(1) => A1_n_58,
      \k_reg[7]_0\(0) => A1_n_59,
      longk(0) => longk(8),
      mclr => mclr,
      movf => movf,
      movlw => movlw,
      option => option,
      p_0_out(3 downto 0) => p_0_out(3 downto 0),
      \pc_reg[0]_P_0\ => A2_n_89,
      \pc_reg[1]_P_0\ => A2_n_90,
      \pc_reg[2]_P_0\ => A2_n_71,
      \pc_reg[2]_P_1\ => A2_n_91,
      \pc_reg[3]_P_0\ => A2_n_88,
      \pc_reg[3]_P_1\ => A2_n_92,
      \pc_reg[6]_P_0\ => A2_n_93,
      \pc_reg[7]_P_0\ => A2_n_70,
      \pc_reg[7]_P_1\ => A2_n_94,
      \pc_reg[9]_P_0\ => A2_n_14,
      \pc_reg[9]_P_1\ => A2_n_35,
      \pc_reg[9]_P_2\ => A2_n_36,
      retlw => retlw,
      retlw_reg => A1_n_72,
      retlw_reg_0 => A1_n_30,
      retlw_reg_1 => A1_n_32,
      retlw_reg_2 => A1_n_76,
      retlw_reg_3 => A1_n_25,
      retlw_reg_4 => A1_n_88,
      retlw_reg_5(0) => A1_n_65,
      rlf => rlf,
      rlf_reg => A1_n_19,
      \romaddr[0]\ => \^romaddr[0]\,
      \romaddr[1]\ => \^romaddr[1]\,
      \romaddr[2]\ => \romaddr[2]\,
      \romaddr[3]\ => \^romaddr[3]\,
      \romaddr[4]\ => \^romaddr[4]\,
      \romaddr[5]\ => \^romaddr[5]\,
      \romaddr[6]\ => \^romaddr[6]\,
      \romaddr[7]\ => \romaddr[7]\,
      \romaddr[8]\ => \romaddr[8]\,
      \romaddr[9]\ => \romaddr[9]\,
      rrf => rrf,
      rrf_reg => A1_n_79,
      rrf_reg_0 => A1_n_15,
      rrf_reg_1 => A1_n_89,
      skip_reg_C(7 downto 0) => b(7 downto 0),
      skip_reg_C_0 => A2_n_83,
      skip_reg_C_1 => A2_n_100,
      skip_reg_C_2 => A2_n_104,
      skip_reg_C_3 => A1_n_74,
      \stack1_reg[7]_0\ => A2_n_34,
      \stack2_reg[0]_0\ => A2_n_11,
      \stack2_reg[0]_1\ => A2_n_12,
      \stacklevel_reg[0]_0\ => A1_n_86,
      \stacklevel_reg[0]_1\ => A1_n_87,
      \stacklevel_reg[0]_2\ => A1_n_85,
      \stacklevel_reg[0]_3\ => A1_n_84,
      \stacklevel_reg[0]_4\ => A1_n_83,
      status_c => status_c,
      \status_reg[1]_0\ => A2_n_17,
      \status_reg[2]_0\ => A2_n_16,
      subwf => subwf,
      swapf => swapf,
      swapf_reg => A1_n_11,
      tris => tris,
      tris_reg(0) => A1_n_82,
      \trisa_reg[0]_0\ => A2_n_1,
      \trisb_reg[0]_0\ => A4_n_4,
      \trisb_reg[1]_0\ => A4_n_5,
      \trisb_reg[2]_0\ => A4_n_6,
      \trisb_reg[3]_0\ => A4_n_7,
      \trisb_reg[4]_0\ => A4_n_8,
      \trisb_reg[5]_0\ => A4_n_9,
      \trisb_reg[6]_0\ => A4_n_10,
      \trisb_reg[7]_0\ => A4_n_11,
      \w_reg[2]_0\ => A1_n_81,
      xorlw => xorlw,
      xorlw_reg => A1_n_21,
      xorwf => xorwf,
      \yi_reg[0]_C\ => A2_n_67,
      \yi_reg[0]_C_0\ => A2_n_118,
      \yi_reg[0]_C_1\ => A1_n_66,
      \yi_reg[0]_C_2\ => A3_n_13,
      \yi_reg[1]_C\ => A2_n_65,
      \yi_reg[1]_C_0\ => A2_n_66,
      \yi_reg[1]_C_1\ => A2_n_74,
      \yi_reg[1]_C_2\ => A1_n_67,
      \yi_reg[1]_C_3\ => A1_n_33,
      \yi_reg[2]_C\ => A2_n_63,
      \yi_reg[2]_C_0\ => A2_n_64,
      \yi_reg[2]_C_1\ => A2_n_73,
      \yi_reg[2]_C_2\ => A2_n_80,
      \yi_reg[2]_C_3\ => A2_n_87,
      \yi_reg[2]_C_4\ => A2_n_101,
      \yi_reg[2]_C_5\ => A1_n_68,
      \yi_reg[2]_C_6\ => A3_n_12,
      \yi_reg[3]_C\ => A2_n_38,
      \yi_reg[3]_C_0\ => A2_n_61,
      \yi_reg[3]_C_1\ => A2_n_62,
      \yi_reg[3]_C_2\ => A2_n_76,
      \yi_reg[3]_C_3\ => A2_n_81,
      \yi_reg[3]_C_4\ => A2_n_102,
      \yi_reg[3]_C_5\ => A1_n_69,
      \yi_reg[4]_C\ => A2_n_42,
      \yi_reg[4]_C_0\ => A2_n_60,
      \yi_reg[4]_C_1\ => A2_n_72,
      \yi_reg[4]_C_2\ => A2_n_98,
      \yi_reg[4]_C_3\ => A2_n_106,
      \yi_reg[5]_C\ => A2_n_41,
      \yi_reg[5]_C_0\ => A2_n_59,
      \yi_reg[5]_C_1\ => A2_n_77,
      \yi_reg[5]_C_2\ => A2_n_99,
      \yi_reg[5]_C_3\ => A2_n_105,
      \yi_reg[5]_C_4\ => A2_n_117,
      \yi_reg[6]_C\ => A2_n_39,
      \yi_reg[6]_C_0\ => A2_n_58,
      \yi_reg[6]_C_1\ => A2_n_78,
      \yi_reg[6]_C_2\ => A2_n_84,
      \yi_reg[6]_C_3\ => A1_n_70,
      \yi_reg[7]_C\ => A2_n_37,
      \yi_reg[7]_C_0\ => A2_n_55,
      \yi_reg[7]_C_1\ => A2_n_75,
      \yi_reg[7]_C_2\ => A2_n_103,
      \yi_reg[7]_C_3\(2) => A2_n_111,
      \yi_reg[7]_C_3\(1) => A2_n_112,
      \yi_reg[7]_C_3\(0) => A2_n_113,
      z => z,
      z_reg => A2_n_40,
      z_reg_0 => A2_n_56,
      z_reg_1 => A2_n_57,
      z_reg_2 => A2_n_82,
      z_reg_3 => A2_n_85,
      z_reg_4 => A2_n_86,
      z_reg_5(2) => A2_n_114,
      z_reg_5(1) => A2_n_115,
      z_reg_5(0) => A2_n_116,
      z_reg_6 => A2_n_119
    );
A3: entity work.design_1_pic16c56_0_0_alu
     port map (
      D(7) => A3_n_0,
      D(6) => A3_n_1,
      D(5) => A3_n_2,
      D(4) => A3_n_3,
      D(3) => A3_n_4,
      D(2) => A3_n_5,
      D(1) => A3_n_6,
      D(0) => A3_n_7,
      addwf_reg => A1_n_51,
      andwf_reg => A1_n_73,
      bcf_reg => A1_n_0,
      c => c,
      c2 => c2,
      c_reg_0 => A1_n_91,
      dc => dc,
      dc_reg_0 => A2_n_120,
      mclr => A2_n_1,
      retlw_reg => A1_n_36,
      retlw_reg_0 => A1_n_41,
      retlw_reg_1 => A1_n_42,
      retlw_reg_2 => A1_n_43,
      retlw_reg_3 => A1_n_44,
      retlw_reg_4 => A1_n_45,
      retlw_reg_5 => A1_n_46,
      retlw_reg_6 => A1_n_48,
      skip_reg_C_0 => A3_n_8,
      skip_reg_C_1 => A1_n_90,
      status_c => status_c,
      \status_reg[0]\ => A3_n_13,
      \status_reg[2]\ => A3_n_12,
      \status_reg[2]_0\ => A2_n_16,
      xorlw_reg => A1_n_21,
      z => z,
      z_reg_0 => A2_n_119
    );
A4: entity work.design_1_pic16c56_0_0_IO_reg
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
A5: entity work.design_1_pic16c56_0_0_timer
     port map (
      CLK => c1,
      c2 => c2,
      c3 => c3,
      mclr => mclr,
      mclr_0 => A2_n_1,
      osc1 => osc1,
      osc2 => osc2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pic16c56_0_0 is
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
  attribute NotValidForBitStream of design_1_pic16c56_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pic16c56_0_0 : entity is "design_1_pic16c56_0_0,pic16c56,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_pic16c56_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_pic16c56_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_pic16c56_0_0 : entity is "pic16c56,Vivado 2018.2";
end design_1_pic16c56_0_0;

architecture STRUCTURE of design_1_pic16c56_0_0 is
begin
inst: entity work.design_1_pic16c56_0_0_pic16c56
     port map (
      RA(3 downto 0) => RA(3 downto 0),
      RB(7 downto 0) => RB(7 downto 0),
      c3 => c3,
      mclr => mclr,
      osc1 => osc1,
      osc2 => osc2,
      \romaddr[0]\ => romaddr(0),
      \romaddr[1]\ => romaddr(1),
      \romaddr[2]\ => romaddr(2),
      \romaddr[3]\ => romaddr(3),
      \romaddr[4]\ => romaddr(4),
      \romaddr[5]\ => romaddr(5),
      \romaddr[6]\ => romaddr(6),
      \romaddr[7]\ => romaddr(7),
      \romaddr[8]\ => romaddr(8),
      \romaddr[9]\ => romaddr(9),
      romdata(11 downto 0) => romdata(11 downto 0)
    );
end STRUCTURE;
