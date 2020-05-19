-- tary, 20:02 2015/10/13

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity shifter is
generic(
	SIZE: integer := 8
);
port(
	i_clk,
	i_rst_n,
	i_en,
	i_si,
	i_load_n: in std_logic;
	i_load: in std_logic_vector(SIZE - 1 downto 0);
	o_do: out std_logic_vector (SIZE - 1 downto 0)
);
end entity shifter;

architecture rtl of shifter is
	signal reg: std_logic_vector(i_load'left downto i_load'right);
	-- signal reg: std_logic_vector(SIZE - 1 downto 0);
begin
	p0: process (i_clk, i_rst_n) begin
		if (i_rst_n = '0') then
			reg <= conv_std_logic_vector(0, reg'length);
		elsif (rising_edge(i_clk)) then
			if (i_load_n = '0') then
				reg <= i_load;
			elsif (i_en = '1') then
				reg(reg'high - 1 downto reg'low)
				<= reg(reg'high downto reg'low + 1);
				reg(reg'high) <= i_si;
			end if;
		end if;
	end process p0;

	o_do <= reg;
end architecture rtl;
