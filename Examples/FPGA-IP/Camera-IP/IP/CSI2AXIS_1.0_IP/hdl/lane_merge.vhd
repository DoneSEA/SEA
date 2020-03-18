----------------------------------------------------------------------------------
-- Company: Trenz Electronic GmbH
-- Engineer: Oleksandr Kiyenko
----------------------------------------------------------------------------------
library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
----------------------------------------------------------------------------------
entity lane_merge is
generic(
	C_LANES			: INTEGER range 1 to 4	:= 2
);
port (
	clk_in			: in  STD_LOGIC;
	resync_in		: in  STD_LOGIC;
	resync_out		: out STD_LOGIC;
	data_in			: in  STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
	valid_in		: in  STD_LOGIC_VECTOR(C_LANES-1 downto 0);
	data_out		: out STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
	valid_out		: out STD_LOGIC
);
end lane_merge;
----------------------------------------------------------------------------------
architecture arch_imp of lane_merge is
----------------------------------------------------------------------------------
constant C_SOT		: STD_LOGIC_VECTOR(7 downto 0) := x"B8";
constant ones_vec	: STD_LOGIC_VECTOR(C_LANES-1 downto 0) := (others => '1');
constant zero_vec	: STD_LOGIC_VECTOR(C_LANES-1 downto 0) := (others => '0');
----------------------------------------------------------------------------------
type sm_state_type is (ST_IDLE, ST_FIRST, ST_TRANSFER, ST_RESYNC);
signal sm_state		: sm_state_type	:= ST_IDLE;
----------------------------------------------------------------------------------
signal data_dl		: STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
signal valid_dl		: STD_LOGIC_VECTOR(C_LANES-1 downto 0);
signal align_vec	: STD_LOGIC_VECTOR(C_LANES-1 downto 0);
----------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------
process(clk_in)
begin
	if(clk_in = '1' and clk_in'event)then
		data_dl			<= data_in;
		valid_dl		<= valid_in;
		case sm_state is
			when ST_IDLE => 
				if(valid_in /= zero_vec)then
					align_vec	<= valid_in;
					sm_state	<= ST_FIRST;
					-- valid_out	<= '1';
				-- else
					-- valid_out	<= '0';
				end if;
			when ST_FIRST =>
				if((valid_in /= ones_vec) or (resync_in = '1'))then
					align_vec	<= (others => '0');
					sm_state	<= ST_RESYNC;
					resync_out	<= '1';
				else
					sm_state	<= ST_TRANSFER;
					valid_out	<= '1';
					for i in 0 to C_LANES-1 loop
						if(data_in(i*8+7 downto i*8) = C_SOT)then
							align_vec(i)	<= '0';		-- Not delayed
						else
							align_vec(i)	<= '1';		-- Delayed
						end if;
					end loop;
				end if;
				
			when ST_TRANSFER =>
				-- if((valid_in /= ones_vec) or (resync_in = '1'))then
					-- align_vec	<= (others => '0');
					-- sm_state	<= ST_RESYNC;
					-- resync_out	<= '1';
					-- valid_out	<= '0';
				-- end if;
				if(valid_in /= ones_vec)then
					align_vec	<= (others => '0');
					sm_state	<= ST_IDLE;
					valid_out	<= '0';
				elsif(resync_in = '1')then
					align_vec	<= (others => '0');
					sm_state	<= ST_RESYNC;
					resync_out	<= '1';
					valid_out	<= '0';
				end if;
			when ST_RESYNC =>
				resync_out	<= '0';
				if(valid_in = zero_vec)then
					sm_state	<= ST_IDLE;
				end if;
		end case;
		
		--valid_out	<= '0';
		--valid_out	<= '1';
		for i in 0 to C_LANES-1 loop
			--if(valid_dl(i) = '1')then
			--	valid_out	<= '1';
			--end if;
			-- if(align_vec(i) = '1')then
				-- if(valid_dl(i) = '0')then
					-- valid_out	<= '0';
				-- end if;
			-- else
				-- if(valid_in(i) = '0')then
					-- valid_out	<= '0';
				-- end if;
			-- end if;
			if(align_vec(i) = '1')then
				data_out(i*8+7 downto i*8)	<= data_dl(i*8+7 downto i*8);
			else
				data_out(i*8+7 downto i*8)	<= data_in(i*8+7 downto i*8);
			end if;
		end loop;
	end if;
end process;
---------------------------------------------------------------------------------
end arch_imp;
