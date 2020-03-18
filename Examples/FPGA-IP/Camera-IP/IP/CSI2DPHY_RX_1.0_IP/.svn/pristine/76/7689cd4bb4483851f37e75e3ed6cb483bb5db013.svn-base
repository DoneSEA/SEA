----------------------------------------------------------------------------------
-- Company: Trenz Electronic GmbH
-- Engineer: Oleksandr Kiyenko
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
Library UNISIM;
use UNISIM.vcomponents.all;
----------------------------------------------------------------------------------
entity csi2_d_phy_rx is 
generic (
	C_NUM_LANES 			: integer range 1 to 4	:= 2;		-- Number of data lanes
	C_NUM_LP_LANES 			: integer range 0 to 4	:= 1; 		-- Number of lanes that support LP input
	C_D0_SWAP 				: BOOLEAN 				:= FALSE;
	C_D1_SWAP 				: BOOLEAN 				:= FALSE;
	C_D2_SWAP 				: BOOLEAN 				:= FALSE;
	C_D3_SWAP 				: BOOLEAN 				:= FALSE;
	-------------------------------------------------------------------------------
	C_USE_DELAY				: BOOLEAN				:= TRUE;
	C_DIFF_TERM				: BOOLEAN				:= FALSE;
	C_ADD_IDELAYCTRL		: BOOLEAN				:= FALSE;
	C_IODELAY_GROUP			: STRING				:= "csi_dly_grp";
	C_CALIB_WAIT			: INTEGER				:= 2047;
	C_RATE_LIMIT			: INTEGER 				:= 10
);
port ( 
	in_delay_clk			: in  STD_LOGIC;
	-- Camera physical interface
	clk_rxp 				: in  STD_LOGIC;
	clk_rxn 				: in  STD_LOGIC;
	data_rxp 				: in  STD_LOGIC_VECTOR(C_NUM_LANES-1 downto 0);
	data_rxn 				: in  STD_LOGIC_VECTOR(C_NUM_LANES-1 downto 0);
	data_lp_p 				: in  STD_LOGIC_VECTOR(C_NUM_LP_LANES-1 downto 0);
	data_lp_n 				: in  STD_LOGIC_VECTOR(C_NUM_LP_LANES-1 downto 0);
	-- Calibration
	trig_req				: in  STD_LOGIC;
	trig_ack				: out STD_LOGIC;
	-- MIPI PPI 
	rxbyteclkhs				: out STD_LOGIC; -- Main byte clock bitrate/8  
	cl_enable				: in  STD_LOGIC := '1';	-- PPI ShutDown ?
	cl_stopstate			: out STD_LOGIC;		-- PPI StopState
	cl_rxclkactivehs 		: out STD_LOGIC;		-- optional, PPI RxClkActiveHS
	dl0_enable	   			: in  STD_LOGIC;
	dl0_rxactivehs   		: out STD_LOGIC;
	dl0_rxvalidhs			: out STD_LOGIC;
	dl0_rxsynchs	 		: out STD_LOGIC;
	dl0_datahs	   			: out STD_LOGIC_VECTOR(7 downto 0);
	dl1_enable	   			: in  STD_LOGIC;
	dl1_rxactivehs   		: out STD_LOGIC;
	dl1_rxvalidhs			: out STD_LOGIC;
	dl1_rxsynchs	 		: out STD_LOGIC;
	dl1_datahs	   			: out STD_LOGIC_VECTOR(7 downto 0);
	dl2_enable	   			: in  STD_LOGIC;
	dl2_rxactivehs   		: out STD_LOGIC;
	dl2_rxvalidhs			: out STD_LOGIC;
	dl2_rxsynchs	 		: out STD_LOGIC;
	dl2_datahs	   			: out STD_LOGIC_VECTOR(7 downto 0);
	dl3_enable	   			: in  STD_LOGIC;
	dl3_rxactivehs   		: out STD_LOGIC;
	dl3_rxvalidhs			: out STD_LOGIC;
	dl3_rxsynchs	 		: out STD_LOGIC;
	dl3_datahs	   			: out STD_LOGIC_VECTOR(7 downto 0)
);
end csi2_d_phy_rx;
----------------------------------------------------------------------------------
architecture Behavioral of csi2_d_phy_rx is
----------------------------------------------------------------------------------
component phy_clock_system is
generic (
	C_USE_DELAY				: BOOLEAN				:= FALSE;
	C_DIFF_TERM				: BOOLEAN				:= FALSE;
	C_IODELAY_GROUP			: STRING				:= "csi_dly_grp";
	C_CALIB_WAIT			: INTEGER				:= 2047;
	C_ACC_LIMIT				: INTEGER				:= 100000;
	C_RATE_LIMIT			: INTEGER 				:= 5
);
port (
	clock_upd_req			: in  STD_LOGIC;
	clock_upd_ack			: out STD_LOGIC;
	in_clk_p				: in  STD_LOGIC;
	in_clk_n				: in  STD_LOGIC;
	in_ref_clk				: in  STD_LOGIC;
	out_dclk				: out STD_LOGIC;
	out_pclk				: out STD_LOGIC;
	out_uclk				: out STD_LOGIC
);
end component;

component line_if is
generic (
	C_DIFF_TERM				: BOOLEAN				:= FALSE
);
port (
	in_d_p					: in  STD_LOGIC;
	in_d_n					: in  STD_LOGIC;
	in_pclk					: in  STD_LOGIC;
	in_dclk					: in  STD_LOGIC;
	in_rst					: in  STD_LOGIC;
	out_data				: out STD_LOGIC_VECTOR(7 downto 0)
);
end component;
----------------------------------------------------------------------------------
constant C_ACC_LIMIT		: INTEGER				:= 1000000;
attribute IODELAY_GROUP 	: STRING;
signal rst_iserdes			: STD_LOGIC;
signal dclk					: STD_LOGIC;
signal pclk					: STD_LOGIC;
signal uclk					: STD_LOGIC;
signal prev_raw_valid		: STD_LOGIC_VECTOR(C_NUM_LANES-1 downto 0);
signal line_raw_sync		: STD_LOGIC_VECTOR(C_NUM_LANES-1 downto 0);
signal line_raw_out			: STD_LOGIC_VECTOR(C_NUM_LANES*8-1 downto 0);
signal raw_valid			: STD_LOGIC_VECTOR(C_NUM_LANES-1 downto 0);
signal raw_fe_data			: STD_LOGIC_VECTOR(C_NUM_LANES*8-1 downto 0);
signal raw_fe_valid			: STD_LOGIC_VECTOR(C_NUM_LANES-1 downto 0);
signal swap_vec				: STD_LOGIC_VECTOR(3 downto 0);
signal clock_upd_req		: STD_LOGIC;
signal clock_upd_ack		: STD_LOGIC;
signal data_err_i			: UNSIGNED(C_NUM_LANES-1 downto 0);
----------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------
swap_vec(0)		<= '1' when C_D0_SWAP = TRUE else '0';
swap_vec(1)		<= '1' when C_D1_SWAP = TRUE else '0';
swap_vec(2)		<= '1' when C_D2_SWAP = TRUE else '0';
swap_vec(3)		<= '1' when C_D3_SWAP = TRUE else '0';
----------------------------------------------------------------------------------
IDELAYCTRL_gen: if (C_ADD_IDELAYCTRL = TRUE) and (C_USE_DELAY = TRUE) generate
attribute IODELAY_GROUP of IdlyCtrl_inst_0 : label is C_IODELAY_GROUP;
begin
	IdlyCtrl_inst_0 : IDELAYCTRL
	port map (
		REFCLK 			=> in_delay_clk,
		RST 			=> '0', 
		RDY 			=> open
	);
end generate;
----------------------------------------------------------------------------------
process(in_delay_clk)
begin
	if(in_delay_clk = '1' and in_delay_clk'event)then
		clock_upd_req	<= trig_req;
	end if;
end process;
----------------------------------------------------------------------------------
clock_system_inst: phy_clock_system
generic map(
	C_USE_DELAY			=> C_USE_DELAY,
	C_DIFF_TERM			=> C_DIFF_TERM,
	C_IODELAY_GROUP		=> C_IODELAY_GROUP,
	C_CALIB_WAIT		=> C_CALIB_WAIT,
	C_ACC_LIMIT			=> C_ACC_LIMIT,
	C_RATE_LIMIT		=> C_RATE_LIMIT
)
port map(
	clock_upd_req		=> clock_upd_req,
	clock_upd_ack		=> clock_upd_ack,
	in_clk_p			=> clk_rxp,
	in_clk_n			=> clk_rxn,
	in_ref_clk			=> in_delay_clk,
	out_dclk			=> dclk,
	out_pclk			=> pclk,
	out_uclk			=> uclk
);
rst_iserdes 			<= '0';

bits_gen: for i in 0 to C_NUM_LANES-1 generate
begin
	line_if_inst: line_if
	generic map(
		C_DIFF_TERM		=> C_DIFF_TERM
	)
	port map(
		in_d_p			=> data_rxp(i),
		in_d_n			=> data_rxn(i),
		in_pclk			=> pclk,
		in_dclk			=> dclk,
		in_rst			=> rst_iserdes,
		out_data		=> line_raw_out(i*8+7 downto i*8)
	);
end generate;

without_lp_gen: if C_NUM_LP_LANES = 0 generate
begin
	raw_valid		<= (others => '1');
	line_raw_sync	<= (others => '0');
end generate;

with_lp_gen: if C_NUM_LP_LANES > 0 generate
begin
process(pclk)
begin
	if(pclk = '1' and pclk'event)then
		for i in 0 to C_NUM_LP_LANES-1 loop
			raw_valid(i)		<= not (data_lp_p(i) or data_lp_n(i));
			prev_raw_valid(i)	<= raw_valid(i);
			if((prev_raw_valid(i) = '0') and ((data_lp_p(i) or data_lp_n(i)) = '0'))then
				line_raw_sync(i)	<= '1';
			else
				line_raw_sync(i)	<= '0';
			end if;
		end loop;
	end if;
end process;

ext_lp_gen: if C_NUM_LP_LANES < C_NUM_LANES generate
begin
	process(pclk)
	begin
		if(pclk = '1' and pclk'event)then
			for i in C_NUM_LP_LANES to C_NUM_LANES-1 loop
				raw_valid(i)		<= not (data_lp_p(0) or data_lp_n(0));
				prev_raw_valid(i)	<= raw_valid(i);
				if((prev_raw_valid(i) = '0') and ((data_lp_p(0) or data_lp_n(0)) = '0'))then
					line_raw_sync(i)	<= '1';
				else
					line_raw_sync(i)	<= '0';
				end if;
			end loop;
		end if;
	end process;
end generate;
end generate;

process(uclk)
begin
	if(uclk = '0' and uclk'event)then
		for i in 0 to C_NUM_LANES-1 loop
			if(swap_vec(i) = '0')then
				raw_fe_data(i*8+7 downto i*8)	<= line_raw_out(i*8+7 downto i*8);
			else
				raw_fe_data(i*8+7 downto i*8)	<= not line_raw_out(i*8+7 downto i*8);
			end if;
		end loop;
		raw_fe_valid		<= raw_valid;
	end if;
end process;

process(uclk)
begin
	if(uclk = '1' and uclk'event)then
		dl0_rxvalidhs		<= raw_fe_valid(0);
		dl0_rxactivehs   	<= raw_fe_valid(0);
		dl0_datahs	   		<= raw_fe_data(7 downto 0);
		dl0_rxsynchs	 	<= line_raw_sync(0);
	end if;
end process;

lane_1_gen: if C_NUM_LANES > 1 generate
begin
	process(uclk)
	begin
		if(uclk = '1' and uclk'event)then
			dl1_rxvalidhs		<= raw_fe_valid(1);
			dl1_rxactivehs   	<= raw_fe_valid(1);
			dl1_datahs	   		<= raw_fe_data(15 downto 8);
			dl1_rxsynchs	 	<= line_raw_sync(1);
		end if;
	end process;
end generate;

lane_2_gen: if C_NUM_LANES > 2 generate
begin
	process(uclk)
	begin
		if(uclk = '1' and uclk'event)then
			dl2_rxvalidhs		<= raw_fe_valid(2);
			dl2_rxactivehs   	<= raw_fe_valid(2);
			dl2_datahs	   		<= raw_fe_data(23 downto 16);
			dl2_rxsynchs	 	<= line_raw_sync(2);
		end if;
	end process;
end generate;

lane_3_gen: if C_NUM_LANES > 3 generate
begin
	process(uclk)
	begin
		if(uclk = '1' and uclk'event)then
			dl3_rxvalidhs		<= raw_fe_valid(3);
			dl3_rxactivehs   	<= raw_fe_valid(3);
			dl3_datahs	   		<= raw_fe_data(31 downto 24);
			dl3_rxsynchs	 	<= line_raw_sync(3);
		end if;
	end process;
end generate;

rxbyteclkhs			<= uclk; -- Main byte clock bitrate/8  
cl_stopstate		<= '0';	-- PPI StopState
cl_rxclkactivehs 	<= '1';	-- optional, PPI RxClkActiveHS
----------------------------------------------------------------------------------	 
end Behavioral;

