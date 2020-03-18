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
entity line_if is
generic (
	C_DIFF_TERM				: BOOLEAN					:= FALSE
);
port (
	in_d_p					: in  STD_LOGIC;
	in_d_n					: in  STD_LOGIC;
	in_pclk					: in  STD_LOGIC;
	in_dclk					: in  STD_LOGIC;
	in_rst					: in  STD_LOGIC;
	out_data				: out STD_LOGIC_VECTOR(7 downto 0)
);
end line_if;
----------------------------------------------------------------------------------
architecture arch_imp of line_if is
----------------------------------------------------------------------------------
signal data_s				: STD_LOGIC;
signal data_iserdes			: STD_LOGIC_VECTOR(7 downto 0);
signal dclk_n				: STD_LOGIC;
----------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------
d_ibufds_inst : IBUFDS
generic map (
	DIFF_TERM		=> C_DIFF_TERM
)
port map (
	I 				=> in_d_p,
	IB 				=> in_d_n,
	O 				=> data_s
);

dclk_n	<= not in_dclk;
ISERDESE2_inst : ISERDESE2
generic map (
	DATA_RATE 		=> "DDR",		-- DDR, SDR
	DATA_WIDTH 		=> 8,			-- Parallel data width (2-8,10,14)
	DYN_CLKDIV_INV_EN => "FALSE", -- Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
	DYN_CLK_INV_EN	=> "FALSE",	-- Enable DYNCLKINVSEL inversion (FALSE, TRUE)
	INIT_Q1 		=> '0',
	INIT_Q2 		=> '0',
	INIT_Q3			=> '0',
	INIT_Q4 		=> '0',
	INTERFACE_TYPE 	=> "NETWORKING",   -- MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
	IOBDELAY 		=> "NONE",		-- NONE, BOTH, IBUF, IFD
	NUM_CE 			=> 2,				-- Number of clock enables (1,2)
	OFB_USED 		=> "FALSE",		-- Select OFB path (FALSE, TRUE)
	SERDES_MODE		=> "MASTER",	-- MASTER, SLAVE
	SRVAL_Q1 		=> '0',
	SRVAL_Q2 		=> '0',
	SRVAL_Q3 		=> '0',
	SRVAL_Q4 		=> '0' 
)
port map (
	O 				=> open,					-- 1-bit output: Combinatorial output
	Q1 				=> data_iserdes(7),
	Q2 				=> data_iserdes(6),
	Q3 				=> data_iserdes(5),
	Q4 				=> data_iserdes(4),
	Q5 				=> data_iserdes(3),
	Q6 				=> data_iserdes(2),
	Q7 				=> data_iserdes(1),
	Q8 				=> data_iserdes(0),
	SHIFTOUT1 		=> open,
	SHIFTOUT2 		=> open,
	BITSLIP 		=> '0',				-- 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
	CE1 			=> '1',
	CE2 			=> '1',
	CLKDIVP 		=> '0',				-- 1-bit input: TBD
	CLK 			=> in_dclk,			-- 1-bit input: High-speed clock
	CLKB 			=> dclk_n,			-- 1-bit input: High-speed secondary clock
	CLKDIV 			=> in_pclk,			-- 1-bit input: Divided clock
	OCLK 			=> '0',				-- 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY" 
	DYNCLKDIVSEL	=> '0', 			-- 1-bit input: Dynamic CLKDIV inversion
	DYNCLKSEL 		=> '0',				-- 1-bit input: Dynamic CLK/CLKB inversion
	D 				=> data_s,			-- 1-bit input: Data input
	DDLY 			=> '0',				-- 1-bit input: Serial data from IDELAYE2
	OFB 			=> '0',				-- 1-bit input: Data feedback from OSERDESE2
	OCLKB 			=> '0',				-- 1-bit input: High speed negative edge output clock
	RST 			=> in_rst,			-- 1-bit input: Active high asynchronous reset
	SHIFTIN1 		=>  '0',
	SHIFTIN2 		=>  '0' 
);

out_data			<= data_iserdes;
---------------------------------------------------------------------------------
end arch_imp;
