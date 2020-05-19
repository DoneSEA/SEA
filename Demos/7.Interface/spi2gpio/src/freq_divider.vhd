-- tary, 13:08 2015/10/13

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity freq_divider is
generic (
	COUNTER_SIZE: integer := 9;
	DIVISOR: integer := 50000000 / 115200
);
port (
	i_clk,
	i_rst_n: in std_logic;
	o_bps_clk: out std_logic
);
end entity freq_divider;

architecture rtl of freq_divider is
	constant HALF_CNT: integer := DIVISOR / 2 - 1;
	constant FULL_CNT: integer := DIVISOR - 1;
	signal counter: std_logic_vector(COUNTER_SIZE-1 downto 0);

begin
	p_cnt: process (i_clk, i_rst_n) begin
		if (i_rst_n = '0') then
			counter <= conv_std_logic_vector(0, counter'length);
		elsif (rising_edge(i_clk)) then
			if (counter = FULL_CNT) then
				counter <= conv_std_logic_vector(0, counter'length);
			else
				counter <= counter + 1;
			end if;
		end if;
	end process p_cnt;

	-- o_bps_clk <= '1' when counter = conv_std_logic_vector(HALF_CNT, counter'length) else '0';
	o_bps_clk <= '1' when counter = HALF_CNT else '0';
end architecture rtl;
