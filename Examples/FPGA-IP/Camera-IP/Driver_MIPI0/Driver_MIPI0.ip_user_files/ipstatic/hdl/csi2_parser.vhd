----------------------------------------------------------------------------------
-- Company: Trenz Electronic GmbH
-- Engineer: Oleksandr Kiyenko
----------------------------------------------------------------------------------
library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
----------------------------------------------------------------------------------
entity csi2_parser is
generic(
	C_LANES					: INTEGER range 1 to 4	:= 2
);
port (
	enable_in				: in  STD_LOGIC;
	resync_out				: out STD_LOGIC;
	axis_aclk				: in  STD_LOGIC;
	s_axis_tdata			: in  STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
	s_axis_tvalid			: in  STD_LOGIC;
	m_axis_tvalid			: out STD_LOGIC;
	m_axis_tdata			: out STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
	m_axis_tuser			: out STD_LOGIC;
	m_axis_tlast			: out STD_LOGIC;
	
	frame_start_dbg			: out STD_LOGIC;
	line_start_dbg			: out STD_LOGIC;
	packet_id_dbg			: out STD_LOGIC_VECTOR(7 downto 0);
	packet_id_upd			: out STD_LOGIC;
	packet_size_dbg			: out STD_LOGIC_VECTOR(15 downto 0);
	transfer_cnt_dbg		: out STD_LOGIC_VECTOR(15 downto 0)
);
end csi2_parser;
----------------------------------------------------------------------------------
architecture arch_imp of csi2_parser is
----------------------------------------------------------------------------------
constant C_SOT				: STD_LOGIC_VECTOR(7 downto 0) := x"B8";
constant C_RAW10			: STD_LOGIC_VECTOR(7 downto 0) := x"2B";
constant C_EOF				: STD_LOGIC_VECTOR(7 downto 0) := x"01";
constant C_WAIT				: INTEGER := 15;
----------------------------------------------------------------------------------
type sm_state_type is (ST_IDLE, ST_HDRA, ST_HDRB, ST_TRANSFER, ST_RESYNC);
signal sm_state				: sm_state_type := ST_IDLE;
----------------------------------------------------------------------------------
signal packet_size			: STD_LOGIC_VECTOR(15 downto 0);
signal packet_cs			: STD_LOGIC_VECTOR( 7 downto 0);
signal packet_id			: STD_LOGIC_VECTOR( 7 downto 0);
signal transfer_cnt			: UNSIGNED(15 downto 0);
signal start_of_frame		: STD_LOGIC;
signal start_of_line		: STD_LOGIC;
signal enable_req			: STD_LOGIC;
signal enable				: STD_LOGIC;
signal wait_cnt				: INTEGER range 0 to C_WAIT-1	:= 0;
----------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------
process(axis_aclk)
begin
	if(axis_aclk = '1' and axis_aclk'event)then
		m_axis_tdata		<= s_axis_tdata;
		enable_req			<= enable_in;
		case sm_state is
			when ST_IDLE =>
				m_axis_tvalid				<= '0';
				m_axis_tlast				<= '0';
				packet_id_upd				<= '0';
				if(s_axis_tvalid = '1')then
					if((s_axis_tdata(7 downto 0) = C_SOT) and (s_axis_tdata(15 downto 8) = C_SOT))then
						sm_state				<= ST_HDRA;
					else
						sm_state				<= ST_RESYNC;
					end if;
				end if;
			when ST_RESYNC =>	
				m_axis_tvalid					<= '0';
				m_axis_tlast					<= '0';
				if(s_axis_tvalid = '0')then
					sm_state					<= ST_IDLE;
				end if;
			when ST_HDRA =>
				if(s_axis_tvalid = '1')then
					packet_size( 7 downto 0)	<= s_axis_tdata(15 downto 8);
					packet_id					<= s_axis_tdata( 7 downto 0);
					if((s_axis_tdata( 7 downto 0) = C_RAW10) or (s_axis_tdata( 7 downto 0) = C_EOF))then	-- Correct ID
						sm_state				<= ST_HDRB;
					else
						sm_state				<= ST_RESYNC;
					end if;
				else
					sm_state					<= ST_RESYNC;
				end if;
			when ST_HDRB =>
				if(s_axis_tvalid = '1')then
					packet_cs					<= s_axis_tdata(15 downto 8);
					packet_size(15 downto 8)	<= s_axis_tdata( 7 downto 0);
					if(packet_id = C_RAW10)then
						sm_state				<= ST_TRANSFER;
						transfer_cnt			<= (others => '0');
						start_of_line			<= '1';
					else
						sm_state				<= ST_RESYNC;
						packet_id_dbg			<= packet_id;
						packet_id_upd			<= '1';
					end if;
					if(packet_id = C_EOF)then
						start_of_frame			<= '1';
						enable					<= enable_req;
					end if;
				else
					sm_state					<= ST_RESYNC;
				end if;
			when ST_TRANSFER =>
				if(s_axis_tvalid = '1')then
					start_of_frame				<= '0';
					start_of_line				<= '0';
					m_axis_tuser				<= start_of_frame;
					m_axis_tvalid				<= enable;
					if(transfer_cnt >= (UNSIGNED(packet_size)-2))then
						m_axis_tlast			<= '1';
						sm_state				<= ST_RESYNC;
					else
						transfer_cnt			<= transfer_cnt + 2;
					end if;
				else
					m_axis_tlast				<= '1';
					sm_state					<= ST_IDLE;
				end if;
		end case;
	end if;
end process;

frame_start_dbg			<= start_of_frame;
line_start_dbg			<= start_of_line;
packet_size_dbg			<= packet_size;
transfer_cnt_dbg		<= STD_LOGIC_VECTOR(transfer_cnt);

process(sm_state)
begin
	if(
	((sm_state = ST_IDLE) and (s_axis_tvalid = '1') and ((s_axis_tdata(7 downto 0) /= C_SOT) or (s_axis_tdata(15 downto 8) /= C_SOT))) or
	((sm_state = ST_HDRA) and not ((s_axis_tdata( 7 downto 0) = C_RAW10) or (s_axis_tdata( 7 downto 0) = C_EOF)))
	)then
		resync_out				<= '1';
	else
		resync_out				<= '0';
	end if;
end process;
---------------------------------------------------------------------------------
end arch_imp;
