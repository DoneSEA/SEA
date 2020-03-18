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
entity csi_to_axis_v1_0 is
generic (
	C_M_AXIS_TDATA_WIDTH	: INTEGER				:= 32;
	C_LANES					: INTEGER range 1 to 4	:= 2;
	C_TIMEOUT				: INTEGER				:= 127
);
port (
	-- Transfer enable
	enable_in				: in  STD_LOGIC;
	-- MIPI PPI 
	rxbyteclkhs				: in  STD_LOGIC;
	cl_enable				: out STD_LOGIC := '1';
	cl_stopstate			: in  STD_LOGIC;
	cl_rxclkactivehs 		: in  STD_LOGIC;
	dl0_enable	   			: out STD_LOGIC := '1';
	dl0_rxactivehs   		: in  STD_LOGIC;
	dl0_rxvalidhs			: in  STD_LOGIC;
	dl0_rxsynchs	 		: in  STD_LOGIC;
	dl0_datahs	   			: in  STD_LOGIC_VECTOR(7 downto 0);
	dl1_enable	   			: out STD_LOGIC;
	dl1_rxactivehs   		: in  STD_LOGIC;
	dl1_rxvalidhs			: in  STD_LOGIC;
	dl1_rxsynchs	 		: in  STD_LOGIC;
	dl1_datahs	   			: in  STD_LOGIC_VECTOR(7 downto 0);
	dl2_enable	   			: out STD_LOGIC;
	dl2_rxactivehs   		: in  STD_LOGIC;
	dl2_rxvalidhs			: in  STD_LOGIC;
	dl2_rxsynchs	 		: in  STD_LOGIC;
	dl2_datahs	   			: in  STD_LOGIC_VECTOR(7 downto 0);
	dl3_enable	   			: out STD_LOGIC;
	dl3_rxactivehs   		: in  STD_LOGIC;
	dl3_rxvalidhs			: in  STD_LOGIC;
	dl3_rxsynchs	 		: in  STD_LOGIC;
	dl3_datahs	   			: in  STD_LOGIC_VECTOR(7 downto 0);
	-- Status
	trig_req				: out STD_LOGIC;
	trig_ack				: in  STD_LOGIC;
	-- AXIS
	m_axis_aclk				: in  STD_LOGIC;
	m_axis_aresetn			: in  STD_LOGIC;
	m_axis_tvalid			: out STD_LOGIC;
	m_axis_tdata			: out STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
	m_axis_tuser			: out STD_LOGIC;
	m_axis_tlast			: out STD_LOGIC;
	m_axis_tready			: in  STD_LOGIC
	-- -- Debug
--	raw_data_dbg			: out STD_LOGIC_VECTOR(15 downto 0);
--	raw_valid_dbg			: out STD_LOGIC_VECTOR( 1 downto 0);
--	align_data_dbg			: out STD_LOGIC_VECTOR(15 downto 0);
--	align_valid_dbg			: out STD_LOGIC_VECTOR( 1 downto 0);
--	merge_data_dbg			: out STD_LOGIC_VECTOR(15 downto 0);
--	merge_valid_dbg			: out STD_LOGIC;
--	frame_start_dbg			: out STD_LOGIC;
--	line_start_dbg			: out STD_LOGIC;
--	parse_data_dbg			: out STD_LOGIC_VECTOR(15 downto 0);
--	parse_valid_dbg			: out STD_LOGIC;
--	parse_user_dbg			: out STD_LOGIC;
--	parse_last_dbg			: out STD_LOGIC;
--	packet_id_dbg			: out STD_LOGIC_VECTOR( 7 downto 0);
--	packet_id_upd_dbd		: out STD_LOGIC;
--	packet_size_dbg			: out STD_LOGIC_VECTOR(15 downto 0);
--	transfer_cnt_dbg		: out STD_LOGIC_VECTOR(15 downto 0);
--	align_resync_dbg		: out STD_LOGIC;
--	merge_resync_dbg		: out STD_LOGIC
);
end csi_to_axis_v1_0;
----------------------------------------------------------------------------------
architecture arch_imp of csi_to_axis_v1_0 is
----------------------------------------------------------------------------------
component lane_align is
generic(
	C_LANES					: INTEGER range 1 to 4	:= 2;
	C_TIMEOUT				: INTEGER 				:= 127
);
port (
	clk_in					: in  STD_LOGIC;
	resync					: in  STD_LOGIC;
	data_in					: in  STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
	valid_in				: in  STD_LOGIC_VECTOR(C_LANES-1 downto 0);
	data_out				: out STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
	valid_out				: out STD_LOGIC_VECTOR(C_LANES-1 downto 0);
	err_req					: out STD_LOGIC;
	err_ack					: in  STD_LOGIC
);
end component;

component lane_merge is
generic(
	C_LANES					: INTEGER range 1 to 4	:= 2
);
port(
	clk_in					: in  STD_LOGIC;
	resync_in				: in  STD_LOGIC;
	resync_out				: out STD_LOGIC;
	data_in					: in  STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
	valid_in				: in  STD_LOGIC_VECTOR(C_LANES-1 downto 0);
	data_out				: out STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
	valid_out				: out STD_LOGIC
);
end component;

component csi2_parser is
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
	-- Debug
	frame_start_dbg			: out STD_LOGIC;
	line_start_dbg			: out STD_LOGIC;
	packet_id_dbg			: out STD_LOGIC_VECTOR(7 downto 0);
	packet_id_upd			: out STD_LOGIC;
	packet_size_dbg			: out STD_LOGIC_VECTOR(15 downto 0);
	transfer_cnt_dbg		: out STD_LOGIC_VECTOR(15 downto 0)
);
end component;
----------------------------------------------------------------------------------
signal pclk					: STD_LOGIC;
signal raw_data				: STD_LOGIC_VECTOR(8*C_LANES-1 downto 0);
signal align_data			: STD_LOGIC_VECTOR(8*C_LANES-1 downto 0);
signal merge_data			: STD_LOGIC_VECTOR(8*C_LANES-1 downto 0);
signal raw_valid			: STD_LOGIC_VECTOR(C_LANES-1 downto 0);
signal align_valid			: STD_LOGIC_VECTOR(C_LANES-1 downto 0);
signal merge_valid			: STD_LOGIC;
signal tuser_drv			: STD_LOGIC;
signal tlast_drv			: STD_LOGIC;
signal tvalid_drv			: STD_LOGIC;
signal tdata_drv			: STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
signal frame_start			: STD_LOGIC;
signal line_start			: STD_LOGIC;
signal packet_id			: STD_LOGIC_VECTOR(7 downto 0);
signal packet_id_upd		: STD_LOGIC;
signal packet_size			: STD_LOGIC_VECTOR(15 downto 0);
signal transfer_cnt			: STD_LOGIC_VECTOR(15 downto 0);
signal align_resync			: STD_LOGIC;
signal merge_resync			: STD_LOGIC;
signal parse_resync			: STD_LOGIC;
----------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------
pclk						<= rxbyteclkhs; -- Main byte clock bitrate/8  
cl_enable					<= '1';	 -- PPI ShutDown ?
----------------------------------------------------------------------------------
-- Lane 0
dl0_enable					<= '1';
raw_valid(0)				<= dl0_rxvalidhs;
raw_data( 7 downto  0)		<= dl0_datahs;
----------------------------------------------------------------------------------
-- Lane 1
lane_1_gen: if C_LANES > 1 generate
begin
	dl1_enable				<= '1';
	raw_valid(1)			<= dl1_rxvalidhs;
	raw_data(15 downto  8)	<= dl1_datahs;
end generate;
----------------------------------------------------------------------------------
-- Lane 2
lane_2_gen: if C_LANES > 2 generate
begin
	dl2_enable				<= '1';
	raw_valid(2)			<= dl2_rxvalidhs;
	raw_data(23 downto 16)	<= dl2_datahs;
end generate;
----------------------------------------------------------------------------------
-- Lane 3
lane_3_gen: if C_LANES > 3 generate
begin
	dl3_enable				<= '1';
	raw_valid(3)			<= dl3_rxvalidhs;
	raw_data(31 downto 24)	<= dl3_datahs;
end generate;
----------------------------------------------------------------------------------
lane_align_inst: lane_align
generic map(
	C_LANES					=> C_LANES,
	C_TIMEOUT				=> C_TIMEOUT
)
port map(
	clk_in					=> pclk,
	resync					=> align_resync,
	data_in					=> raw_data,
	valid_in				=> raw_valid,
	data_out				=> align_data,
	valid_out				=> align_valid,
	err_req					=> trig_req,
	err_ack					=> trig_ack
);
----------------------------------------------------------------------------------
lane_merge_inst: lane_merge
generic map(
	C_LANES					=> C_LANES
)
port map(
	clk_in					=> pclk,
	resync_in				=> parse_resync,
	resync_out				=> merge_resync,
	data_in					=> align_data,
	valid_in				=> align_valid,
	data_out				=> merge_data,
	valid_out				=> merge_valid
);
----------------------------------------------------------------------------------
align_resync	<= merge_resync or parse_resync;
----------------------------------------------------------------------------------
parser_inst: csi2_parser
generic map(
	C_LANES					=> C_LANES
)
port map(
	enable_in				=> enable_in,
	resync_out				=> parse_resync,
	axis_aclk				=> pclk,
	s_axis_tdata			=> merge_data,
	s_axis_tvalid			=> merge_valid,
	m_axis_tvalid			=> tvalid_drv,
	m_axis_tdata			=> tdata_drv,
	m_axis_tuser			=> tuser_drv,
	m_axis_tlast			=> tlast_drv,
	
	frame_start_dbg			=> frame_start,
	line_start_dbg			=> line_start,
	packet_id_dbg			=> packet_id,
	packet_id_upd			=> packet_id_upd,
	packet_size_dbg			=> packet_size,
	transfer_cnt_dbg		=> transfer_cnt
);
----------------------------------------------------------------------------------
m_axis_tvalid				<= tvalid_drv;
m_axis_tdata				<= tdata_drv;
m_axis_tuser				<= tuser_drv;
m_axis_tlast				<= tlast_drv;
----------------------------------------------------------------------------------
-- Debug
----------------------------------------------------------------------------------
--raw_data_dbg		<= raw_data;
--raw_valid_dbg		<= raw_valid;
--align_data_dbg		<= align_data;
--align_valid_dbg		<= align_valid;
--merge_data_dbg		<= merge_data;
--merge_valid_dbg		<= merge_valid;
--frame_start_dbg		<= frame_start;
--line_start_dbg		<= line_start;
--parse_data_dbg		<= tdata_drv;
--parse_valid_dbg		<= tvalid_drv;
--parse_user_dbg		<= tuser_drv;
--parse_last_dbg		<= tlast_drv;
--packet_id_dbg		<= packet_id;
--packet_id_upd_dbd	<= packet_id_upd;
--packet_size_dbg		<= packet_size;
--transfer_cnt_dbg	<= transfer_cnt;
--align_resync_dbg	<= align_resync;
--merge_resync_dbg	<= merge_resync;
----------------------------------------------------------------------------------
end arch_imp;
