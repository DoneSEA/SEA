----------------------------------------------------------------------------------
-- Company: Trenz Electronic GmbH
-- Engineer: Oleksandr Kiyenko
----------------------------------------------------------------------------------
library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VComponents.all;
----------------------------------------------------------------------------------
entity phy_clock_system is
generic (
	C_USE_DELAY					: BOOLEAN		:= FALSE;
	C_DIFF_TERM					: BOOLEAN		:= FALSE;
	C_IDELAY_TYPE				: STRING		:= "FIXED";
	C_IODELAY_GROUP				: STRING		:= "csi_dly_grp";
	C_ACC_LIMIT					: INTEGER		:= 100000;
	C_RATE_LIMIT				: INTEGER 		:= 5;
	C_CALIB_WAIT				: INTEGER		:= 2047
);
port (
	-- Debug
	--cntvalue_out  		: out STD_LOGIC_VECTOR(4 downto 0);
	--state_out				: out STD_LOGIC_VECTOR(3 downto 0);

	clock_upd_req				: in  STD_LOGIC;
	clock_upd_ack				: out STD_LOGIC;
	in_clk_p					: in  STD_LOGIC;
	in_clk_n					: in  STD_LOGIC;
	in_ref_clk					: in  STD_LOGIC;
	out_dclk					: out STD_LOGIC;
	out_pclk					: out STD_LOGIC;
	out_uclk					: out STD_LOGIC
);
end phy_clock_system;
----------------------------------------------------------------------------------
architecture arch_imp of phy_clock_system is
----------------------------------------------------------------------------------
attribute IODELAY_GROUP 		: STRING;
----------------------------------------------------------------------------------
signal clk_g					: STD_LOGIC;	-- Clock after IBUFGDS
signal clk_d					: STD_LOGIC;	-- Clock after IDELAYE2
signal clk_dn					: STD_LOGIC;	-- Clock after IDELAYE2
signal clk_dg					: STD_LOGIC;	-- Clock after IBUFGDS
signal clk_bufmr				: STD_LOGIC;
signal clk_bufio				: STD_LOGIC;
signal clk_bufr					: STD_LOGIC;
signal rst_bufmr				: STD_LOGIC;
type sm_state_type is (ST_CHECK, ST_FIND_GOOD, ST_GOOD_WAIT, 
	ST_FIND_BAD, ST_BAD_WAIT, ST_CALK_DLY, ST_SET_DLY, ST_SET_WAIT);
signal sm_state					: sm_state_type;
signal wait_cnt					: integer range 0 to C_CALIB_WAIT;
signal delay_ce					: STD_LOGIC;
signal delay_rst				: STD_LOGIC;
signal delay_set				: STD_LOGIC;
signal delay_set_val			: STD_LOGIC_VECTOR(4 downto 0);
signal curr_delay				: UNSIGNED(4 downto 0);
signal start_dly				: UNSIGNED(5 downto 0);
signal end_dly					: UNSIGNED(5 downto 0);
signal sum_dly					: UNSIGNED(5 downto 0);
signal invers_clk				: STD_LOGIC := '0';
signal direct_clk				: STD_LOGIC := '1';
signal direct_clk_s				: STD_LOGIC;
signal invers_clk_s				: STD_LOGIC := '0';
signal direct_clk_c				: STD_LOGIC;
signal invers_clk_c				: STD_LOGIC := '0';
signal req_i					: STD_LOGIC;
signal err_sr					: STD_LOGIC_VECTOR(1 downto 0);
signal acc_cnt					: INTEGER range 0 to C_ACC_LIMIT-1;
signal acc_val					: INTEGER range 0 to C_ACC_LIMIT-1;
signal err_rate					: INTEGER range 0 to C_ACC_LIMIT-1;
----------------------------------------------------------------------------------
attribute ASYNC_REG				: string;
attribute ASYNC_REG of req_i	: signal is "true";
attribute keep 			        : string;
attribute keep of direct_clk_s	: signal is "true";
attribute keep of direct_clk_c	: signal is "true";
attribute keep of invers_clk_s	: signal is "true";
attribute keep of invers_clk_c	: signal is "true";
----------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------
-- Test 
clk_ibufgds_inst : IBUFGDS
generic map (
	DIFF_TERM				 	=> C_DIFF_TERM
)
port map (
	I						 	=> in_clk_p, 
	IB							=> in_clk_n,
	O		 					=> clk_g
);

process(in_ref_clk)
begin
	if(in_ref_clk = '1' and in_ref_clk'event)then
        direct_clk_s	        <= not invers_clk;
        invers_clk_s			<= invers_clk;
        direct_clk_c			<= not invers_clk;
        invers_clk_c			<= invers_clk;
	end if;
end process;
--direct_clk	<= not invers_clk;

dly_gen: if C_USE_DELAY	= TRUE generate
attribute IODELAY_GROUP of IDELAYE2_inst	: label is C_IODELAY_GROUP;
begin
	IDELAYE2_inst : IDELAYE2
	generic map (
		CINVCTRL_SEL 			=> "FALSE",		-- Enable dynamic clock inversion (FALSE, TRUE)
		DELAY_SRC 				=> "IDATAIN",	-- Delay input (IDATAIN, DATAIN)
		HIGH_PERFORMANCE_MODE	=> "TRUE", 		-- Reduced jitter ("TRUE"), Reduced power ("FALSE")
		IDELAY_TYPE 			=> "VAR_LOAD",	-- FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
		IDELAY_VALUE 			=> 0,			-- Input delay tap setting (0-31)
		PIPE_SEL 				=> "FALSE",		-- Select pipelined mode, FALSE, TRUE
		REFCLK_FREQUENCY 		=> 200.0,		-- IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
		SIGNAL_PATTERN 			=> "CLOCK"		-- DATA, CLOCK input signal
	)
	port map (
		--CNTVALUEOUT   			=> cntvalue_out,-- 5-bit output: Counter value output
		CNTVALUEOUT   			=> open,		-- 5-bit output: Counter value output
		DATAOUT	 				=> clk_d,		-- 1-bit output: Delayed data output
		C		 				=> in_ref_clk,	-- 1-bit input: Clock input
		CE						=> '0',			-- 1-bit input: Active high enable increment/decrement input
		CINVCTRL				=> '0',	 		-- 1-bit input: Dynamic clock inversion input
		CNTVALUEIN				=> delay_set_val,	-- 5-bit input: Counter value input
		DATAIN					=> '0',			-- 1-bit input: Internal delay data input
		IDATAIN	 				=> clk_g,		-- 1-bit input: Data input from the I/O
		INC		 				=> '1',			-- 1-bit input: Increment / Decrement tap delay input
		LD						=> delay_set,	-- 1-bit input: Load IDELAY_VALUE input
		LDPIPEEN				=> '0',	 		-- 1-bit input: Enable PIPELINE register to load data input
		REGRST					=> '0'	        -- 1-bit input: Active-high reset tap-delay input
	);
	clk_dn		<= not clk_d;
	
	BUFGCTRL_inst : BUFGCTRL
	generic map (
		INIT_OUT				=> 0,        -- Initial value of BUFGCTRL output (0/1)
		PRESELECT_I0			=> FALSE,    -- BUFGCTRL output uses I0 input (TRUE/FALSE)
		PRESELECT_I1			=> FALSE     -- BUFGCTRL output uses I1 input (TRUE/FALSE)
	)
	port map (
		O						=> clk_dg,          -- 1-bit output: Clock Output pin
		CE0						=> direct_clk_c,    -- 1-bit input: Clock enable input for I0 input
		CE1						=> invers_clk_c,    -- 1-bit input: Clock enable input for I1 input
		I0						=> clk_d,           -- 1-bit input: Primary clock input
		I1						=> clk_dn,          -- 1-bit input: Secondary clock input
		IGNORE0					=> '0',             -- 1-bit input: Clock ignore input for I0
		IGNORE1					=> '0',             -- 1-bit input: Clock ignore input for I1
		S0						=> direct_clk_s,    -- 1-bit input: Clock select input for I0	
		S1						=> invers_clk_s     -- 1-bit input: Clock select input for I1
	);	
	
	process(in_ref_clk)
	begin
		if(in_ref_clk = '1' and in_ref_clk'event)then
			req_i				<= clock_upd_req;
			clock_upd_ack		<= req_i;
			err_sr				<= err_sr(0) & req_i;
			if(acc_cnt = C_ACC_LIMIT-1)then
				acc_cnt			<= 0;
				err_rate		<= acc_val;
				acc_val			<= 0;
			else
				if(err_sr = "01")then
					acc_val		<= acc_val + 1;
				end if;
				acc_cnt			<= acc_cnt + 1;
			end if;
		end if;
	end process;
	
	process(in_ref_clk)
	begin
		if(in_ref_clk = '1' and in_ref_clk'event)then
			case sm_state is
				when ST_CHECK		=>
					if(err_rate > C_RATE_LIMIT)then
						sm_state			<= ST_GOOD_WAIT;
						curr_delay			<= (others => '0');
						delay_set			<= '1';
						wait_cnt			<= C_CALIB_WAIT;
					else
						delay_set			<= '0';
					end if;
				
				when ST_FIND_GOOD	=>
					if(req_i = '0')then	   -- We found start of the eye
						sm_state			<= ST_FIND_BAD;
						start_dly			<= resize(curr_delay,6);
					else
						if(curr_delay < TO_UNSIGNED(31,5))then
							curr_delay		<= curr_delay + 1;
							delay_set		<= '1';
							wait_cnt		<= C_CALIB_WAIT;
							sm_state		<= ST_GOOD_WAIT;
						else				-- Data not found
							invers_clk		<= not invers_clk;
							curr_delay		<= (others => '0');
							delay_set		<= '1';
							wait_cnt		<= C_CALIB_WAIT;
							sm_state		<= ST_GOOD_WAIT;
						end if;
					end if;
				
				when ST_GOOD_WAIT 	=>
					delay_set				<= '0';
					if(wait_cnt = 0)then
						sm_state			<= ST_FIND_GOOD;
					else
						wait_cnt			<= wait_cnt - 1;
					end if;
					
				when ST_FIND_BAD	=>
					if((req_i = '1') or (curr_delay = TO_UNSIGNED(31,5)))then	-- We found end of the eye
						sm_state			<= ST_CALK_DLY;
						end_dly				<= resize(curr_delay,6);
					else
						curr_delay			<= curr_delay + 1;
						delay_set			<= '1';
						wait_cnt			<= C_CALIB_WAIT;
						sm_state			<= ST_BAD_WAIT;
					end if;
					
				when ST_BAD_WAIT 	=>
					delay_set				<= '0';
					if(wait_cnt = 0)then
						sm_state			<= ST_FIND_BAD;
					else
						wait_cnt			<= wait_cnt - 1;
					end if;
					
				when ST_CALK_DLY	=>
					sum_dly					<= start_dly + end_dly;
					sm_state				<= ST_SET_DLY;
					
				when ST_SET_DLY		=>	
					curr_delay				<= sum_dly(5 downto 1);
					delay_set				<= '1';
					wait_cnt				<= C_CALIB_WAIT;
					sm_state				<= ST_SET_WAIT;
					
				when ST_SET_WAIT 	=>
					delay_set				<= '0';
					if(wait_cnt = 0)then
						sm_state			<= ST_CHECK;
					else
						wait_cnt			<= wait_cnt - 1;
					end if;
			end case;
		end if;
	end process;
	delay_set_val		<= STD_LOGIC_VECTOR(curr_delay);
	
	-- process(in_ref_clk)
	-- begin
		-- if(in_ref_clk = '1' and in_ref_clk'event)then
			-- case sm_state is
				-- when ST_CHECK		=> state_out <= x"0";
				-- when ST_FIND_GOOD	=> state_out <= x"2";
				-- when ST_GOOD_WAIT 	=> state_out <= x"3";
				-- when ST_FIND_BAD	=> state_out <= x"4";
				-- when ST_BAD_WAIT 	=> state_out <= x"5";
				-- when ST_CALK_DLY	=> state_out <= x"6";
				-- when ST_SET_DLY		=> state_out <= x"7";
				-- when ST_SET_WAIT 	=> state_out <= x"8";
			-- end case;
		-- end if;
	-- end process;
	
end generate;

no_dly_gen: if C_USE_DELAY = FALSE generate
begin
	clk_dg					<= clk_g;
end generate;

BUFMRCE_inst : BUFMRCE
generic map (
	CE_TYPE 				=> "ASYNC", 	-- SYNC, ASYNC
	INIT_OUT 				=> 0			-- Initial output and stopped polarity, (0-1)
)
port map (
	O	 					=> clk_bufmr,   -- 1-bit output: Clock output (connect to BUFIOs/BUFRs)
	CE	 					=> '1',			-- 1-bit input: Active high buffer enable
	I	 					=> clk_dg		-- 1-bit input: Clock input (Connect to IBUF)
);

BUFIO_inst : BUFIO
port map (
	O     					=> clk_bufio,	-- 1-bit output: Clock output (connect to I/O clock loads).
	I     					=> clk_bufmr 	-- 1-bit input: Clock input (connect to an IBUF or BUFMR).
);
out_dclk					<= clk_bufio;

rst_bufmr					<= '0';
BUFR_inst : BUFR
generic map (
	BUFR_DIVIDE 			=> "4",   		-- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
	SIM_DEVICE				=> "7SERIES"  	-- Must be set to "7SERIES" 
)
port map (
	O     					=> clk_bufr,    -- 1-bit output: Clock output port
	CE    					=> '1',   		-- 1-bit input: Active high, clock enable (Divided modes only)
	CLR   					=> rst_bufmr, 	-- 1-bit input: Active high, asynchronous clear (Divided modes only)
	I     					=> clk_bufmr    -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
);
out_pclk					<= clk_bufr;

usr_BUFG_inst : BUFG
port map (
	O						=> out_uclk,	-- 1-bit output: Clock output
	I						=> clk_bufr		-- 1-bit input: Clock input
);
----------------------------------------------------------------------------------
end arch_imp;
