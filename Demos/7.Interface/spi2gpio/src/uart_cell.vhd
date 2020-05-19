-- tary, 21:48 2015/10/11

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity uart_cell is
port(
	i_clk,
	i_rst_n,
	i_rd_n,
	i_wr_n,
	i_rx: in std_logic;
	i_tx_data: in std_logic_vector(7 downto 0);
	o_tx,
	o_ri,
	o_tfr_busy: out std_logic;
	o_rx_data: out std_logic_vector(7 downto 0)
);
end entity uart_cell;

architecture rtl of uart_cell is
	component freq_div
	generic (
		DIVISOR, COUNTER_SIZE: integer
	);
	port(
		i_clk,
		i_rst_n: in std_logic;
		o_bps_clk: out std_logic
	);
	end component freq_div;

	component freq_divider
	generic (
		DIVISOR, COUNTER_SIZE: integer
	);
	port(
		i_clk,
		i_rst_n: in std_logic;
		o_bps_clk: out std_logic
	);
	end component freq_divider;

	component shifter
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
		o_do: out std_logic_vector
	);
	end component shifter;

	signal rcv_en: std_logic;
	constant starts_size: integer := 2;
	signal starts: std_logic_vector(starts_size - 1 downto 0);

	-- 8 data
	constant BITS_DATA: integer := 8;
	-- 1 start, 1 stop
	constant BITS_TOTAL: integer := BITS_DATA + 2;

	-- constant DIVIDER: integer := 50000000 / 57600;
	-- constant DIVIDER_SIZE: integer := 10;
	constant DIVIDER: integer := 50000000 / 115200;
	constant DIVIDER_SIZE: integer := 9;

	signal rcv_clk: std_logic;
	signal rcv_shift_en: std_logic;
	signal rcv_bits: integer range 0 to 15;

	signal ri: std_logic;
	signal rcv_data: std_logic_vector(7 downto 0);


	signal tfr_clk: std_logic;
	signal tfr_shift_en: std_logic;
	signal tfr_bits: integer range 0 to 15;

	signal tfr_en: std_logic;

	signal tfr_out: std_logic_vector(7 downto 0);
begin
	rx_clk: freq_divider
	generic map(
		DIVISOR => DIVIDER,
		COUNTER_SIZE => DIVIDER_SIZE
	)
	port map(
		i_clk => i_clk,
		o_bps_clk => rcv_clk,
		i_rst_n => rcv_en
	);

	p_rcv_start: process(i_clk, i_rst_n) begin
		if (i_rst_n = '0') then
			starts <= not conv_std_logic_vector(0, starts'length);
			rcv_en <= '0';
		elsif (rising_edge(i_clk)) then
			starts <= starts(starts'left - 1 downto 0) & i_rx;
			if (rcv_bits = BITS_TOTAL) then
				rcv_en <= '0';
			elsif (rcv_bits = 0 and starts(1) = '1' and starts(0) = '0') then
				rcv_en <= '1';
			end if;
		end if;
	end process p_rcv_start;

	rcv_shift_en <=
		rcv_en and rcv_clk when rcv_bits > 0 and rcv_bits <= BITS_DATA else
		'0';

	rx_shifter: shifter
	-- generic map(
	--	SIZE => 8
	-- )
	port map(
		i_clk => i_clk,
		i_rst_n => i_rst_n,
		i_en => rcv_shift_en,
		i_si => i_rx,
		i_load_n => '1',
		i_load => "00000000",
		o_do => rcv_data
	);

	-- *** debug only ***
	-- o_rx_data <= conv_std_logic_vector(rcv_bits, 8);
	o_rx_data <= rcv_data;

	ri0: process(i_clk, i_rst_n) begin
		if (i_rst_n = '0') then
			ri <= '0';
		elsif (rising_edge(i_clk)) then
			if (i_rd_n = '0') then
				ri <= '0';
			elsif (rcv_bits = BITS_TOTAL) then
				ri <= '1';
			end if;
		end if;
	end process ri0;
	o_ri <= ri;

	rp0: process(i_clk, i_rst_n) begin
		if (i_rst_n = '0') then
			rcv_bits <= 0;
		elsif (rising_edge(i_clk)) then
			if (rcv_bits = BITS_TOTAL) then
				rcv_bits <= 0;
			elsif (rcv_clk = '1') then
				rcv_bits <= rcv_bits + 1;
			end if;
		end if;
	end process rp0;



	-- o_tx <= i_rx;

	tx_clk: freq_divider
	generic map(
		DIVISOR => DIVIDER,
		COUNTER_SIZE => DIVIDER_SIZE
	)
	port map(
		i_clk => i_clk,
		o_bps_clk => tfr_clk,
		i_rst_n => tfr_en
	);

	p_tfr_0: process (i_clk, i_rst_n) begin
		if (i_rst_n = '0') then
			tfr_en <= '0';
		elsif (rising_edge(i_clk)) then
			if (i_wr_n = '0') then
				tfr_en <= '1';
			elsif (tfr_bits = BITS_TOTAL + 1) then
				tfr_en <= '0';
			end if;
		end if;
	end process p_tfr_0;
	o_tfr_busy <= tfr_en;

	p_tfr_1: process(i_clk, i_rst_n) begin
		if (i_rst_n = '0') then
			tfr_bits <= 0;
		elsif (rising_edge(i_clk)) then
			if (tfr_bits = BITS_TOTAL + 1) then
				tfr_bits <= 0;
			elsif (tfr_clk = '1') then
				tfr_bits <= tfr_bits + 1;
			end if;
		end if;
	end process p_tfr_1;

	tx_shifter: shifter
	-- generic map(
	--	SIZE => 8
	-- )
	port map(
		i_clk => i_clk,
		i_rst_n => i_rst_n,
		i_en => tfr_shift_en,
		i_si => '1',
		i_load_n => i_wr_n,
		i_load => i_tx_data,
		o_do => tfr_out
	);

	tfr_shift_en <=
		tfr_en and tfr_clk when tfr_bits > 1 else
		'0';
	o_tx <=
		'0' when tfr_bits = 1 else
		tfr_out(0) when tfr_bits > 1 else
		'1';
end architecture rtl;
