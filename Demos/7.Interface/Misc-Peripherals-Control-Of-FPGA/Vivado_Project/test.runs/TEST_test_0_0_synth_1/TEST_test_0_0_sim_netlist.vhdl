-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed May 29 17:10:24 2019
-- Host        : DESKTOP-JG260B6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ TEST_test_0_0_sim_netlist.vhdl
-- Design      : TEST_test_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s15ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_test is
  port (
    io0 : out STD_LOGIC;
    fpga_rgb : out STD_LOGIC;
    adc_en : out STD_LOGIC;
    din : out STD_LOGIC;
    sync : out STD_LOGIC;
    clk : in STD_LOGIC;
    adc_date : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_test;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_test is
  signal \^adc_en\ : STD_LOGIC;
  signal adc_en_i_1_n_0 : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_a[7]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_a_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \cnt_a_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_a_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_a_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_a_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_a_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_a_reg_n_0_[5]\ : STD_LOGIC;
  signal cnt_n : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \cnt_n0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_n0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_n0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_n0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_n0_carry__0_n_4\ : STD_LOGIC;
  signal \cnt_n0_carry__0_n_5\ : STD_LOGIC;
  signal \cnt_n0_carry__0_n_6\ : STD_LOGIC;
  signal \cnt_n0_carry__0_n_7\ : STD_LOGIC;
  signal \cnt_n0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt_n0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_n0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt_n0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt_n0_carry__1_n_4\ : STD_LOGIC;
  signal \cnt_n0_carry__1_n_5\ : STD_LOGIC;
  signal \cnt_n0_carry__1_n_6\ : STD_LOGIC;
  signal \cnt_n0_carry__1_n_7\ : STD_LOGIC;
  signal \cnt_n0_carry__2_n_0\ : STD_LOGIC;
  signal \cnt_n0_carry__2_n_1\ : STD_LOGIC;
  signal \cnt_n0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt_n0_carry__2_n_3\ : STD_LOGIC;
  signal \cnt_n0_carry__2_n_4\ : STD_LOGIC;
  signal \cnt_n0_carry__2_n_5\ : STD_LOGIC;
  signal \cnt_n0_carry__2_n_6\ : STD_LOGIC;
  signal \cnt_n0_carry__2_n_7\ : STD_LOGIC;
  signal \cnt_n0_carry__3_n_0\ : STD_LOGIC;
  signal \cnt_n0_carry__3_n_1\ : STD_LOGIC;
  signal \cnt_n0_carry__3_n_2\ : STD_LOGIC;
  signal \cnt_n0_carry__3_n_3\ : STD_LOGIC;
  signal \cnt_n0_carry__3_n_4\ : STD_LOGIC;
  signal \cnt_n0_carry__3_n_5\ : STD_LOGIC;
  signal \cnt_n0_carry__3_n_6\ : STD_LOGIC;
  signal \cnt_n0_carry__3_n_7\ : STD_LOGIC;
  signal \cnt_n0_carry__4_n_2\ : STD_LOGIC;
  signal \cnt_n0_carry__4_n_3\ : STD_LOGIC;
  signal \cnt_n0_carry__4_n_5\ : STD_LOGIC;
  signal \cnt_n0_carry__4_n_6\ : STD_LOGIC;
  signal \cnt_n0_carry__4_n_7\ : STD_LOGIC;
  signal cnt_n0_carry_n_0 : STD_LOGIC;
  signal cnt_n0_carry_n_1 : STD_LOGIC;
  signal cnt_n0_carry_n_2 : STD_LOGIC;
  signal cnt_n0_carry_n_3 : STD_LOGIC;
  signal cnt_n0_carry_n_4 : STD_LOGIC;
  signal cnt_n0_carry_n_5 : STD_LOGIC;
  signal cnt_n0_carry_n_6 : STD_LOGIC;
  signal cnt_n0_carry_n_7 : STD_LOGIC;
  signal \cnt_n[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_n[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_n[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_n[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_n[0]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_n[0]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_n[0]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_n[23]_i_1_n_0\ : STD_LOGIC;
  signal cnt_n_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dac_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dac_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \dac_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \dac_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \dac_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \dac_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \dac_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_cnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \data_cnt[5]_i_6_n_0\ : STD_LOGIC;
  signal \data_cnt[5]_i_7_n_0\ : STD_LOGIC;
  signal \data_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \^din\ : STD_LOGIC;
  signal din_i_1_n_0 : STD_LOGIC;
  signal din_i_2_n_0 : STD_LOGIC;
  signal din_i_3_n_0 : STD_LOGIC;
  signal din_i_4_n_0 : STD_LOGIC;
  signal din_i_5_n_0 : STD_LOGIC;
  signal \^fpga_rgb\ : STD_LOGIC;
  signal fpga_rgb_i_1_n_0 : STD_LOGIC;
  signal fpga_rgb_i_2_n_0 : STD_LOGIC;
  signal fpga_rgb_i_3_n_0 : STD_LOGIC;
  signal fpga_rgb_i_4_n_0 : STD_LOGIC;
  signal io0_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal rgb_data : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \rgb_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \send_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \send_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \send_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \send_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \send_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \send_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \send_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \send_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \send_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \send_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \send_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \send_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \send_cnt[9]_i_4_n_0\ : STD_LOGIC;
  signal \send_cnt[9]_i_5_n_0\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \send_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \^sync\ : STD_LOGIC;
  signal sync_i_1_n_0 : STD_LOGIC;
  signal \NLW_cnt_n0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_n0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_a[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_a[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_a[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_a[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_a[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_a[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dac_cnt[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dac_cnt[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dac_cnt[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dac_cnt[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dac_cnt[4]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_cnt[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_cnt[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_cnt[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_cnt[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_cnt[5]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_cnt[5]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_cnt[5]_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_cnt[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_cnt[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of din_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of fpga_rgb_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \send_cnt[0]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \send_cnt[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \send_cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \send_cnt[5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \send_cnt[8]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \send_cnt[9]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \send_cnt[9]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair4";
begin
  adc_en <= \^adc_en\;
  din <= \^din\;
  fpga_rgb <= \^fpga_rgb\;
  sync <= \^sync\;
adc_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00000100"
    )
        port map (
      I0 => dac_cnt(1),
      I1 => dac_cnt(0),
      I2 => dac_cnt(3),
      I3 => dac_cnt(4),
      I4 => dac_cnt(2),
      I5 => \^adc_en\,
      O => adc_en_i_1_n_0
    );
adc_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => adc_en_i_1_n_0,
      Q => \^adc_en\,
      R => '0'
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => cnt_n(0),
      I1 => \cnt_n[0]_i_2_n_0\,
      I2 => cnt(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => cnt(0),
      I1 => \cnt_n[0]_i_2_n_0\,
      I2 => cnt_n(0),
      I3 => cnt(1),
      O => \cnt[1]_i_1_n_0\
    );
\cnt_a[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_a_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\cnt_a[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_a_reg_n_0_[0]\,
      I1 => \cnt_a_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\cnt_a[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_a_reg_n_0_[0]\,
      I1 => \cnt_a_reg_n_0_[1]\,
      I2 => \cnt_a_reg_n_0_[2]\,
      O => p_0_in(2)
    );
\cnt_a[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_a_reg_n_0_[1]\,
      I1 => \cnt_a_reg_n_0_[0]\,
      I2 => \cnt_a_reg_n_0_[2]\,
      I3 => \cnt_a_reg_n_0_[3]\,
      O => p_0_in(3)
    );
\cnt_a[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt_a_reg_n_0_[2]\,
      I1 => \cnt_a_reg_n_0_[0]\,
      I2 => \cnt_a_reg_n_0_[1]\,
      I3 => \cnt_a_reg_n_0_[3]\,
      I4 => \cnt_a_reg_n_0_[4]\,
      O => p_0_in(4)
    );
\cnt_a[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \cnt_a_reg_n_0_[3]\,
      I1 => \cnt_a_reg_n_0_[1]\,
      I2 => \cnt_a_reg_n_0_[0]\,
      I3 => \cnt_a_reg_n_0_[2]\,
      I4 => \cnt_a_reg_n_0_[4]\,
      I5 => \cnt_a_reg_n_0_[5]\,
      O => p_0_in(5)
    );
\cnt_a[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_a[7]_i_2_n_0\,
      I1 => \cnt_a_reg__0\(6),
      O => p_0_in(6)
    );
\cnt_a[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_a[7]_i_2_n_0\,
      I1 => \cnt_a_reg__0\(6),
      I2 => \cnt_a_reg__0\(7),
      O => p_0_in(7)
    );
\cnt_a[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \cnt_a_reg_n_0_[5]\,
      I1 => \cnt_a_reg_n_0_[3]\,
      I2 => \cnt_a_reg_n_0_[1]\,
      I3 => \cnt_a_reg_n_0_[0]\,
      I4 => \cnt_a_reg_n_0_[2]\,
      I5 => \cnt_a_reg_n_0_[4]\,
      O => \cnt_a[7]_i_2_n_0\
    );
\cnt_a_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => \cnt_a_reg_n_0_[0]\,
      R => '0'
    );
\cnt_a_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => \cnt_a_reg_n_0_[1]\,
      R => '0'
    );
\cnt_a_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => \cnt_a_reg_n_0_[2]\,
      R => '0'
    );
\cnt_a_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => \cnt_a_reg_n_0_[3]\,
      R => '0'
    );
\cnt_a_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => \cnt_a_reg_n_0_[4]\,
      R => '0'
    );
\cnt_a_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      Q => \cnt_a_reg_n_0_[5]\,
      R => '0'
    );
\cnt_a_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      Q => \cnt_a_reg__0\(6),
      R => '0'
    );
\cnt_a_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      Q => \cnt_a_reg__0\(7),
      R => '0'
    );
cnt_n0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt_n0_carry_n_0,
      CO(2) => cnt_n0_carry_n_1,
      CO(1) => cnt_n0_carry_n_2,
      CO(0) => cnt_n0_carry_n_3,
      CYINIT => cnt_n(0),
      DI(3 downto 0) => B"0000",
      O(3) => cnt_n0_carry_n_4,
      O(2) => cnt_n0_carry_n_5,
      O(1) => cnt_n0_carry_n_6,
      O(0) => cnt_n0_carry_n_7,
      S(3 downto 0) => cnt_n(4 downto 1)
    );
\cnt_n0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt_n0_carry_n_0,
      CO(3) => \cnt_n0_carry__0_n_0\,
      CO(2) => \cnt_n0_carry__0_n_1\,
      CO(1) => \cnt_n0_carry__0_n_2\,
      CO(0) => \cnt_n0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_n0_carry__0_n_4\,
      O(2) => \cnt_n0_carry__0_n_5\,
      O(1) => \cnt_n0_carry__0_n_6\,
      O(0) => \cnt_n0_carry__0_n_7\,
      S(3 downto 0) => cnt_n(8 downto 5)
    );
\cnt_n0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_n0_carry__0_n_0\,
      CO(3) => \cnt_n0_carry__1_n_0\,
      CO(2) => \cnt_n0_carry__1_n_1\,
      CO(1) => \cnt_n0_carry__1_n_2\,
      CO(0) => \cnt_n0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_n0_carry__1_n_4\,
      O(2) => \cnt_n0_carry__1_n_5\,
      O(1) => \cnt_n0_carry__1_n_6\,
      O(0) => \cnt_n0_carry__1_n_7\,
      S(3 downto 0) => cnt_n(12 downto 9)
    );
\cnt_n0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_n0_carry__1_n_0\,
      CO(3) => \cnt_n0_carry__2_n_0\,
      CO(2) => \cnt_n0_carry__2_n_1\,
      CO(1) => \cnt_n0_carry__2_n_2\,
      CO(0) => \cnt_n0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_n0_carry__2_n_4\,
      O(2) => \cnt_n0_carry__2_n_5\,
      O(1) => \cnt_n0_carry__2_n_6\,
      O(0) => \cnt_n0_carry__2_n_7\,
      S(3 downto 0) => cnt_n(16 downto 13)
    );
\cnt_n0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_n0_carry__2_n_0\,
      CO(3) => \cnt_n0_carry__3_n_0\,
      CO(2) => \cnt_n0_carry__3_n_1\,
      CO(1) => \cnt_n0_carry__3_n_2\,
      CO(0) => \cnt_n0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_n0_carry__3_n_4\,
      O(2) => \cnt_n0_carry__3_n_5\,
      O(1) => \cnt_n0_carry__3_n_6\,
      O(0) => \cnt_n0_carry__3_n_7\,
      S(3 downto 0) => cnt_n(20 downto 17)
    );
\cnt_n0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_n0_carry__3_n_0\,
      CO(3 downto 2) => \NLW_cnt_n0_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_n0_carry__4_n_2\,
      CO(0) => \cnt_n0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_n0_carry__4_O_UNCONNECTED\(3),
      O(2) => \cnt_n0_carry__4_n_5\,
      O(1) => \cnt_n0_carry__4_n_6\,
      O(0) => \cnt_n0_carry__4_n_7\,
      S(3) => '0',
      S(2 downto 0) => cnt_n(23 downto 21)
    );
\cnt_n[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_n[0]_i_2_n_0\,
      I1 => cnt_n(0),
      O => cnt_n_0(0)
    );
\cnt_n[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cnt_n[0]_i_3_n_0\,
      I1 => \cnt_n[0]_i_4_n_0\,
      I2 => \cnt_n[0]_i_5_n_0\,
      I3 => \cnt_n[0]_i_6_n_0\,
      I4 => \cnt_n[0]_i_7_n_0\,
      I5 => \cnt_n[0]_i_8_n_0\,
      O => \cnt_n[0]_i_2_n_0\
    );
\cnt_n[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => cnt_n(19),
      I1 => cnt_n(18),
      I2 => cnt_n(20),
      I3 => cnt_n(21),
      O => \cnt_n[0]_i_3_n_0\
    );
\cnt_n[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => cnt_n(23),
      I1 => cnt_n(22),
      I2 => cnt_n(1),
      O => \cnt_n[0]_i_4_n_0\
    );
\cnt_n[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => cnt_n(10),
      I1 => cnt_n(11),
      I2 => cnt_n(12),
      I3 => cnt_n(13),
      O => \cnt_n[0]_i_5_n_0\
    );
\cnt_n[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => cnt_n(15),
      I1 => cnt_n(14),
      I2 => cnt_n(17),
      I3 => cnt_n(16),
      O => \cnt_n[0]_i_6_n_0\
    );
\cnt_n[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => cnt_n(7),
      I1 => cnt_n(6),
      I2 => cnt_n(9),
      I3 => cnt_n(8),
      O => \cnt_n[0]_i_7_n_0\
    );
\cnt_n[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_n(3),
      I1 => cnt_n(2),
      I2 => cnt_n(5),
      I3 => cnt_n(4),
      O => \cnt_n[0]_i_8_n_0\
    );
\cnt_n[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_n[0]_i_2_n_0\,
      I1 => cnt_n(0),
      O => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt_n_0(0),
      Q => cnt_n(0),
      R => '0'
    );
\cnt_n_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__1_n_6\,
      Q => cnt_n(10),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__1_n_5\,
      Q => cnt_n(11),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__1_n_4\,
      Q => cnt_n(12),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__2_n_7\,
      Q => cnt_n(13),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__2_n_6\,
      Q => cnt_n(14),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__2_n_5\,
      Q => cnt_n(15),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__2_n_4\,
      Q => cnt_n(16),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__3_n_7\,
      Q => cnt_n(17),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__3_n_6\,
      Q => cnt_n(18),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__3_n_5\,
      Q => cnt_n(19),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt_n0_carry_n_7,
      Q => cnt_n(1),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__3_n_4\,
      Q => cnt_n(20),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__4_n_7\,
      Q => cnt_n(21),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__4_n_6\,
      Q => cnt_n(22),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__4_n_5\,
      Q => cnt_n(23),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt_n0_carry_n_6,
      Q => cnt_n(2),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt_n0_carry_n_5,
      Q => cnt_n(3),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt_n0_carry_n_4,
      Q => cnt_n(4),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__0_n_7\,
      Q => cnt_n(5),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__0_n_6\,
      Q => cnt_n(6),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__0_n_5\,
      Q => cnt_n(7),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__0_n_4\,
      Q => cnt_n(8),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_n_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_n0_carry__1_n_7\,
      Q => cnt_n(9),
      R => \cnt_n[23]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => cnt(0),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt[1]_i_1_n_0\,
      Q => cnt(1),
      R => '0'
    );
\dac_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_cnt(0),
      O => \dac_cnt[0]_i_1_n_0\
    );
\dac_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_cnt(0),
      I1 => dac_cnt(1),
      O => \dac_cnt[1]_i_1_n_0\
    );
\dac_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => dac_cnt(0),
      I1 => dac_cnt(1),
      I2 => dac_cnt(2),
      O => \dac_cnt[2]_i_1_n_0\
    );
\dac_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => dac_cnt(1),
      I1 => dac_cnt(0),
      I2 => dac_cnt(2),
      I3 => dac_cnt(3),
      O => \dac_cnt[3]_i_1_n_0\
    );
\dac_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => dac_cnt(4),
      I1 => dac_cnt(1),
      I2 => dac_cnt(0),
      I3 => dac_cnt(3),
      I4 => dac_cnt(2),
      O => \dac_cnt[4]_i_1_n_0\
    );
\dac_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => dac_cnt(2),
      I1 => dac_cnt(0),
      I2 => dac_cnt(1),
      I3 => dac_cnt(3),
      I4 => dac_cnt(4),
      O => \dac_cnt[4]_i_2_n_0\
    );
\dac_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dac_cnt[0]_i_1_n_0\,
      Q => dac_cnt(0),
      R => \dac_cnt[4]_i_1_n_0\
    );
\dac_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dac_cnt[1]_i_1_n_0\,
      Q => dac_cnt(1),
      R => \dac_cnt[4]_i_1_n_0\
    );
\dac_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dac_cnt[2]_i_1_n_0\,
      Q => dac_cnt(2),
      R => \dac_cnt[4]_i_1_n_0\
    );
\dac_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dac_cnt[3]_i_1_n_0\,
      Q => dac_cnt(3),
      R => \dac_cnt[4]_i_1_n_0\
    );
\dac_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dac_cnt[4]_i_2_n_0\,
      Q => dac_cnt(4),
      R => \dac_cnt[4]_i_1_n_0\
    );
\data_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[0]\,
      O => \data_cnt[0]_i_1_n_0\
    );
\data_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[0]\,
      I1 => \data_cnt_reg_n_0_[1]\,
      O => \data_cnt[1]_i_1_n_0\
    );
\data_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[2]\,
      I1 => \data_cnt_reg_n_0_[1]\,
      I2 => \data_cnt_reg_n_0_[0]\,
      O => \data_cnt[2]_i_1_n_0\
    );
\data_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[3]\,
      I1 => \data_cnt_reg_n_0_[2]\,
      I2 => \data_cnt_reg_n_0_[0]\,
      I3 => \data_cnt_reg_n_0_[1]\,
      O => \data_cnt[3]_i_1_n_0\
    );
\data_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[4]\,
      I1 => \data_cnt_reg_n_0_[3]\,
      I2 => \data_cnt_reg_n_0_[1]\,
      I3 => \data_cnt_reg_n_0_[0]\,
      I4 => \data_cnt_reg_n_0_[2]\,
      O => \data_cnt[4]_i_1_n_0\
    );
\data_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_cnt[5]_i_4_n_0\,
      I1 => \data_cnt[5]_i_2_n_0\,
      O => \data_cnt[5]_i_1_n_0\
    );
\data_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00100010"
    )
        port map (
      I0 => \send_cnt[3]_i_3_n_0\,
      I1 => \send_cnt_reg_n_0_[2]\,
      I2 => \send_cnt_reg_n_0_[3]\,
      I3 => \send_cnt[5]_i_3_n_0\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \data_cnt[5]_i_2_n_0\
    );
\data_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[5]\,
      I1 => \data_cnt_reg_n_0_[2]\,
      I2 => \data_cnt_reg_n_0_[0]\,
      I3 => \data_cnt_reg_n_0_[1]\,
      I4 => \data_cnt_reg_n_0_[3]\,
      I5 => \data_cnt_reg_n_0_[4]\,
      O => \data_cnt[5]_i_3_n_0\
    );
\data_cnt[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FE00FE00FEFE"
    )
        port map (
      I0 => \data_cnt[5]_i_5_n_0\,
      I1 => \send_cnt[9]_i_5_n_0\,
      I2 => \data_cnt[5]_i_6_n_0\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \data_cnt[5]_i_7_n_0\,
      I5 => \state[1]_i_3_n_0\,
      O => \data_cnt[5]_i_4_n_0\
    );
\data_cnt[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[8]\,
      I1 => \send_cnt_reg_n_0_[7]\,
      I2 => \send_cnt_reg_n_0_[6]\,
      O => \data_cnt[5]_i_5_n_0\
    );
\data_cnt[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \send_cnt_reg_n_0_[7]\,
      I3 => \send_cnt_reg_n_0_[9]\,
      I4 => \send_cnt_reg_n_0_[8]\,
      O => \data_cnt[5]_i_6_n_0\
    );
\data_cnt[5]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[4]\,
      I1 => \data_cnt_reg_n_0_[8]\,
      I2 => \data_cnt_reg_n_0_[3]\,
      O => \data_cnt[5]_i_7_n_0\
    );
\data_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F10"
    )
        port map (
      I0 => \data_cnt[8]_i_2_n_0\,
      I1 => \data_cnt[5]_i_4_n_0\,
      I2 => \data_cnt[5]_i_2_n_0\,
      I3 => \data_cnt_reg_n_0_[6]\,
      O => \data_cnt[6]_i_1_n_0\
    );
\data_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0BFF0400"
    )
        port map (
      I0 => \data_cnt[8]_i_2_n_0\,
      I1 => \data_cnt_reg_n_0_[6]\,
      I2 => \data_cnt[5]_i_4_n_0\,
      I3 => \data_cnt[5]_i_2_n_0\,
      I4 => \data_cnt_reg_n_0_[7]\,
      O => \data_cnt[7]_i_1_n_0\
    );
\data_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DFFFFF00200000"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[6]\,
      I1 => \data_cnt[8]_i_2_n_0\,
      I2 => \data_cnt_reg_n_0_[7]\,
      I3 => \data_cnt[5]_i_4_n_0\,
      I4 => \data_cnt[5]_i_2_n_0\,
      I5 => \data_cnt_reg_n_0_[8]\,
      O => \data_cnt[8]_i_1_n_0\
    );
\data_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[5]\,
      I1 => \data_cnt_reg_n_0_[2]\,
      I2 => \data_cnt_reg_n_0_[0]\,
      I3 => \data_cnt_reg_n_0_[1]\,
      I4 => \data_cnt_reg_n_0_[3]\,
      I5 => \data_cnt_reg_n_0_[4]\,
      O => \data_cnt[8]_i_2_n_0\
    );
\data_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_cnt[5]_i_2_n_0\,
      D => \data_cnt[0]_i_1_n_0\,
      Q => \data_cnt_reg_n_0_[0]\,
      R => \data_cnt[5]_i_1_n_0\
    );
\data_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_cnt[5]_i_2_n_0\,
      D => \data_cnt[1]_i_1_n_0\,
      Q => \data_cnt_reg_n_0_[1]\,
      R => \data_cnt[5]_i_1_n_0\
    );
\data_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_cnt[5]_i_2_n_0\,
      D => \data_cnt[2]_i_1_n_0\,
      Q => \data_cnt_reg_n_0_[2]\,
      R => \data_cnt[5]_i_1_n_0\
    );
\data_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_cnt[5]_i_2_n_0\,
      D => \data_cnt[3]_i_1_n_0\,
      Q => \data_cnt_reg_n_0_[3]\,
      R => \data_cnt[5]_i_1_n_0\
    );
\data_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_cnt[5]_i_2_n_0\,
      D => \data_cnt[4]_i_1_n_0\,
      Q => \data_cnt_reg_n_0_[4]\,
      R => \data_cnt[5]_i_1_n_0\
    );
\data_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_cnt[5]_i_2_n_0\,
      D => \data_cnt[5]_i_3_n_0\,
      Q => \data_cnt_reg_n_0_[5]\,
      R => \data_cnt[5]_i_1_n_0\
    );
\data_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_cnt[6]_i_1_n_0\,
      Q => \data_cnt_reg_n_0_[6]\,
      R => '0'
    );
\data_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_cnt[7]_i_1_n_0\,
      Q => \data_cnt_reg_n_0_[7]\,
      R => '0'
    );
\data_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_cnt[8]_i_1_n_0\,
      Q => \data_cnt_reg_n_0_[8]\,
      R => '0'
    );
din_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => din_i_2_n_0,
      I1 => dac_cnt(3),
      I2 => dac_cnt(0),
      I3 => din_i_3_n_0,
      I4 => din_i_4_n_0,
      I5 => \^din\,
      O => din_i_1_n_0
    );
din_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc_date(1),
      I1 => adc_date(5),
      I2 => dac_cnt(1),
      I3 => adc_date(3),
      I4 => dac_cnt(2),
      I5 => adc_date(7),
      O => din_i_2_n_0
    );
din_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => adc_date(6),
      I1 => dac_cnt(2),
      I2 => adc_date(2),
      I3 => dac_cnt(3),
      I4 => dac_cnt(1),
      I5 => din_i_5_n_0,
      O => din_i_3_n_0
    );
din_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555557"
    )
        port map (
      I0 => dac_cnt(4),
      I1 => dac_cnt(1),
      I2 => dac_cnt(0),
      I3 => dac_cnt(2),
      I4 => dac_cnt(3),
      O => din_i_4_n_0
    );
din_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => adc_date(4),
      I1 => dac_cnt(2),
      I2 => dac_cnt(3),
      I3 => adc_date(0),
      O => din_i_5_n_0
    );
din_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => din_i_1_n_0,
      Q => \^din\,
      R => '0'
    );
fpga_rgb_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF22200000222"
    )
        port map (
      I0 => fpga_rgb_i_2_n_0,
      I1 => fpga_rgb_i_3_n_0,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => fpga_rgb_i_4_n_0,
      I5 => \^fpga_rgb\,
      O => fpga_rgb_i_1_n_0
    );
fpga_rgb_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABBB"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \send_cnt_reg_n_0_[2]\,
      I2 => \send_cnt_reg_n_0_[0]\,
      I3 => \send_cnt_reg_n_0_[1]\,
      I4 => \send_cnt_reg_n_0_[3]\,
      O => fpga_rgb_i_2_n_0
    );
fpga_rgb_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEEEEA"
    )
        port map (
      I0 => \send_cnt[5]_i_3_n_0\,
      I1 => \send_cnt_reg_n_0_[3]\,
      I2 => \send_cnt_reg_n_0_[1]\,
      I3 => \send_cnt_reg_n_0_[0]\,
      I4 => \send_cnt_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[1]\,
      O => fpga_rgb_i_3_n_0
    );
fpga_rgb_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \send_cnt[5]_i_3_n_0\,
      I2 => \send_cnt_reg_n_0_[3]\,
      I3 => \send_cnt_reg_n_0_[2]\,
      I4 => \send_cnt_reg_n_0_[0]\,
      I5 => \send_cnt_reg_n_0_[1]\,
      O => fpga_rgb_i_4_n_0
    );
fpga_rgb_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fpga_rgb_i_1_n_0,
      Q => \^fpga_rgb\,
      R => '0'
    );
io0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cnt_a_reg__0\(7),
      I1 => \cnt_a_reg__0\(6),
      O => io0_i_1_n_0
    );
io0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => io0_i_1_n_0,
      Q => io0,
      R => '0'
    );
\rgb_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(1),
      O => \rgb_data[0]_i_1_n_0\
    );
\rgb_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rgb_data[0]_i_1_n_0\,
      Q => rgb_data(0),
      R => '0'
    );
\rgb_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt(1),
      Q => rgb_data(16),
      R => '0'
    );
\rgb_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cnt(0),
      Q => rgb_data(8),
      R => '0'
    );
\send_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5545555555555555"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[0]\,
      I1 => \send_cnt[8]_i_2_n_0\,
      I2 => \send_cnt[0]_i_2_n_0\,
      I3 => \send_cnt_reg_n_0_[4]\,
      I4 => \send_cnt_reg_n_0_[5]\,
      I5 => \send_cnt[0]_i_3_n_0\,
      O => \send_cnt[0]_i_1_n_0\
    );
\send_cnt[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[6]\,
      I1 => \send_cnt_reg_n_0_[7]\,
      O => \send_cnt[0]_i_2_n_0\
    );
\send_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000005D"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[5]\,
      I1 => \send_cnt_reg_n_0_[3]\,
      I2 => \send_cnt_reg_n_0_[4]\,
      I3 => \send_cnt_reg_n_0_[2]\,
      I4 => \send_cnt_reg_n_0_[1]\,
      O => \send_cnt[0]_i_3_n_0\
    );
\send_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[1]\,
      I1 => \send_cnt_reg_n_0_[0]\,
      O => p_1_in(1)
    );
\send_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA55555545"
    )
        port map (
      I0 => \send_cnt[3]_i_3_n_0\,
      I1 => \send_cnt_reg_n_0_[4]\,
      I2 => \send_cnt_reg_n_0_[3]\,
      I3 => \send_cnt[5]_i_3_n_0\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \send_cnt_reg_n_0_[2]\,
      O => p_1_in(2)
    );
\send_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700777400770000"
    )
        port map (
      I0 => \send_cnt[3]_i_2_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \send_cnt[5]_i_3_n_0\,
      I3 => \send_cnt[3]_i_3_n_0\,
      I4 => \send_cnt_reg_n_0_[2]\,
      I5 => \send_cnt_reg_n_0_[3]\,
      O => p_1_in(3)
    );
\send_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[0]\,
      I1 => \send_cnt_reg_n_0_[8]\,
      I2 => \send_cnt_reg_n_0_[9]\,
      I3 => \send_cnt_reg_n_0_[7]\,
      I4 => \send_cnt_reg_n_0_[6]\,
      I5 => \send_cnt[9]_i_5_n_0\,
      O => \send_cnt[3]_i_2_n_0\
    );
\send_cnt[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[1]\,
      I1 => \send_cnt_reg_n_0_[0]\,
      O => \send_cnt[3]_i_3_n_0\
    );
\send_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[2]\,
      I1 => \send_cnt_reg_n_0_[1]\,
      I2 => \send_cnt_reg_n_0_[0]\,
      I3 => \send_cnt_reg_n_0_[3]\,
      I4 => \send_cnt_reg_n_0_[4]\,
      O => p_1_in(4)
    );
\send_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006660"
    )
        port map (
      I0 => \send_cnt[5]_i_2_n_0\,
      I1 => \send_cnt_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \send_cnt[5]_i_3_n_0\,
      I4 => \send_cnt[9]_i_3_n_0\,
      O => p_1_in(5)
    );
\send_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[4]\,
      I1 => \send_cnt_reg_n_0_[3]\,
      I2 => \send_cnt_reg_n_0_[0]\,
      I3 => \send_cnt_reg_n_0_[1]\,
      I4 => \send_cnt_reg_n_0_[2]\,
      O => \send_cnt[5]_i_2_n_0\
    );
\send_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[8]\,
      I1 => \send_cnt_reg_n_0_[9]\,
      I2 => \send_cnt_reg_n_0_[6]\,
      I3 => \send_cnt_reg_n_0_[7]\,
      I4 => \send_cnt_reg_n_0_[4]\,
      I5 => \send_cnt_reg_n_0_[5]\,
      O => \send_cnt[5]_i_3_n_0\
    );
\send_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000025A52121"
    )
        port map (
      I0 => \send_cnt[8]_i_4_n_0\,
      I1 => \send_cnt[8]_i_3_n_0\,
      I2 => \send_cnt_reg_n_0_[6]\,
      I3 => \send_cnt_reg_n_0_[7]\,
      I4 => \send_cnt_reg_n_0_[8]\,
      I5 => fpga_rgb_i_4_n_0,
      O => p_1_in(6)
    );
\send_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040505004400550"
    )
        port map (
      I0 => fpga_rgb_i_4_n_0,
      I1 => \send_cnt_reg_n_0_[8]\,
      I2 => \send_cnt_reg_n_0_[7]\,
      I3 => \send_cnt_reg_n_0_[6]\,
      I4 => \send_cnt[8]_i_3_n_0\,
      I5 => \send_cnt[8]_i_4_n_0\,
      O => p_1_in(7)
    );
\send_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3377037700553055"
    )
        port map (
      I0 => \send_cnt[8]_i_2_n_0\,
      I1 => \send_cnt[8]_i_3_n_0\,
      I2 => \send_cnt_reg_n_0_[7]\,
      I3 => \send_cnt_reg_n_0_[6]\,
      I4 => \send_cnt[8]_i_4_n_0\,
      I5 => \send_cnt_reg_n_0_[8]\,
      O => p_1_in(8)
    );
\send_cnt[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[8]\,
      I1 => \send_cnt_reg_n_0_[9]\,
      I2 => \send_cnt_reg_n_0_[7]\,
      I3 => \state_reg_n_0_[1]\,
      O => \send_cnt[8]_i_2_n_0\
    );
\send_cnt[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \send_cnt[9]_i_5_n_0\,
      I1 => \send_cnt_reg_n_0_[8]\,
      I2 => \send_cnt_reg_n_0_[9]\,
      I3 => \send_cnt_reg_n_0_[7]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \send_cnt_reg_n_0_[0]\,
      O => \send_cnt[8]_i_3_n_0\
    );
\send_cnt[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[5]\,
      I1 => \send_cnt_reg_n_0_[2]\,
      I2 => \send_cnt_reg_n_0_[1]\,
      I3 => \send_cnt_reg_n_0_[0]\,
      I4 => \send_cnt_reg_n_0_[3]\,
      I5 => \send_cnt_reg_n_0_[4]\,
      O => \send_cnt[8]_i_4_n_0\
    );
\send_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => \send_cnt[9]_i_1_n_0\
    );
\send_cnt[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => fpga_rgb_i_4_n_0,
      I1 => \send_cnt[9]_i_3_n_0\,
      I2 => \send_cnt[9]_i_4_n_0\,
      I3 => \send_cnt_reg_n_0_[9]\,
      O => p_1_in(9)
    );
\send_cnt[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000001010101"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[0]\,
      I1 => \send_cnt[8]_i_2_n_0\,
      I2 => \send_cnt[9]_i_5_n_0\,
      I3 => \send_cnt_reg_n_0_[6]\,
      I4 => \send_cnt_reg_n_0_[7]\,
      I5 => \send_cnt_reg_n_0_[8]\,
      O => \send_cnt[9]_i_3_n_0\
    );
\send_cnt[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[8]\,
      I1 => \send_cnt[8]_i_4_n_0\,
      I2 => \send_cnt_reg_n_0_[6]\,
      I3 => \send_cnt_reg_n_0_[7]\,
      O => \send_cnt[9]_i_4_n_0\
    );
\send_cnt[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => \send_cnt_reg_n_0_[5]\,
      I1 => \send_cnt_reg_n_0_[4]\,
      I2 => \send_cnt_reg_n_0_[3]\,
      I3 => \send_cnt_reg_n_0_[1]\,
      I4 => \send_cnt_reg_n_0_[2]\,
      O => \send_cnt[9]_i_5_n_0\
    );
\send_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \send_cnt[9]_i_1_n_0\,
      D => \send_cnt[0]_i_1_n_0\,
      Q => \send_cnt_reg_n_0_[0]\,
      R => '0'
    );
\send_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \send_cnt[9]_i_1_n_0\,
      D => p_1_in(1),
      Q => \send_cnt_reg_n_0_[1]\,
      R => '0'
    );
\send_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \send_cnt[9]_i_1_n_0\,
      D => p_1_in(2),
      Q => \send_cnt_reg_n_0_[2]\,
      R => '0'
    );
\send_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \send_cnt[9]_i_1_n_0\,
      D => p_1_in(3),
      Q => \send_cnt_reg_n_0_[3]\,
      R => '0'
    );
\send_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \send_cnt[9]_i_1_n_0\,
      D => p_1_in(4),
      Q => \send_cnt_reg_n_0_[4]\,
      R => '0'
    );
\send_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \send_cnt[9]_i_1_n_0\,
      D => p_1_in(5),
      Q => \send_cnt_reg_n_0_[5]\,
      R => '0'
    );
\send_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \send_cnt[9]_i_1_n_0\,
      D => p_1_in(6),
      Q => \send_cnt_reg_n_0_[6]\,
      R => '0'
    );
\send_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \send_cnt[9]_i_1_n_0\,
      D => p_1_in(7),
      Q => \send_cnt_reg_n_0_[7]\,
      R => '0'
    );
\send_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \send_cnt[9]_i_1_n_0\,
      D => p_1_in(8),
      Q => \send_cnt_reg_n_0_[8]\,
      R => '0'
    );
\send_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \send_cnt[9]_i_1_n_0\,
      D => p_1_in(9),
      Q => \send_cnt_reg_n_0_[9]\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F222F202F202F20"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \state[0]_i_2_n_0\,
      I2 => fpga_rgb_i_4_n_0,
      I3 => \state_reg_n_0_[0]\,
      I4 => \send_cnt[8]_i_3_n_0\,
      I5 => \send_cnt_reg_n_0_[6]\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0344CF77441D771D"
    )
        port map (
      I0 => rgb_data(16),
      I1 => \data_cnt_reg_n_0_[4]\,
      I2 => rgb_data(0),
      I3 => \data_cnt_reg_n_0_[3]\,
      I4 => rgb_data(8),
      I5 => \data_cnt_reg_n_0_[5]\,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7577777745444444"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => fpga_rgb_i_4_n_0,
      I2 => \state_reg_n_0_[0]\,
      I3 => \send_cnt[8]_i_3_n_0\,
      I4 => \send_cnt_reg_n_0_[6]\,
      I5 => \state_reg_n_0_[1]\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state[1]_i_3_n_0\,
      I2 => \data_cnt_reg_n_0_[4]\,
      I3 => \data_cnt_reg_n_0_[8]\,
      I4 => \data_cnt_reg_n_0_[3]\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \data_cnt_reg_n_0_[1]\,
      I1 => \data_cnt_reg_n_0_[0]\,
      I2 => \data_cnt_reg_n_0_[2]\,
      I3 => \data_cnt_reg_n_0_[6]\,
      I4 => \data_cnt_reg_n_0_[7]\,
      I5 => \data_cnt_reg_n_0_[5]\,
      O => \state[1]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
sync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00800000"
    )
        port map (
      I0 => dac_cnt(1),
      I1 => dac_cnt(0),
      I2 => dac_cnt(3),
      I3 => dac_cnt(4),
      I4 => dac_cnt(2),
      I5 => \^sync\,
      O => sync_i_1_n_0
    );
sync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sync_i_1_n_0,
      Q => \^sync\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "TEST_test_0_0,test,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "test,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^k1\ : STD_LOGIC;
  signal \^k2\ : STD_LOGIC;
  signal \^k3\ : STD_LOGIC;
  signal \^k4\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of dac_clk : signal is "xilinx.com:signal:clock:1.0 dac_clk CLK";
  attribute X_INTERFACE_PARAMETER of dac_clk : signal is "XIL_INTERFACENAME dac_clk, FREQ_HZ 20000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
begin
  IN1 <= \^k1\;
  IN4 <= \^k2\;
  SCL <= \^k4\;
  SDA <= \^k3\;
  \^k1\ <= k1;
  \^k2\ <= k2;
  \^k3\ <= k3;
  \^k4\ <= k4;
  io10 <= \^k1\;
  io11 <= \^k2\;
  io12 <= \^k1\;
  io13 <= \^k2\;
  io3 <= \^k2\;
  io4 <= \^k1\;
  io5 <= \^k2\;
  io6 <= \^k1\;
  io7 <= \^k2\;
  io8 <= \^k1\;
  io9 <= \^k2\;
  led1 <= \^k3\;
  led2 <= \^k4\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_test
     port map (
      adc_date(7 downto 0) => adc_date(7 downto 0),
      adc_en => adc_en,
      clk => clk,
      din => din,
      fpga_rgb => fpga_rgb,
      io0 => io0,
      sync => sync
    );
io1_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^k3\,
      O => io1
    );
io2_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^k4\,
      O => io2
    );
end STRUCTURE;
