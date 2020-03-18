-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: trenz.biz:user:csi_to_axis:1.0
-- IP Revision: 47

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT csi_to_axis_0
  PORT (
    enable_in : IN STD_LOGIC;
    rxbyteclkhs : IN STD_LOGIC;
    cl_enable : OUT STD_LOGIC;
    cl_stopstate : IN STD_LOGIC;
    cl_rxclkactivehs : IN STD_LOGIC;
    dl0_enable : OUT STD_LOGIC;
    dl0_rxactivehs : IN STD_LOGIC;
    dl0_rxvalidhs : IN STD_LOGIC;
    dl0_rxsynchs : IN STD_LOGIC;
    dl0_datahs : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dl1_enable : OUT STD_LOGIC;
    dl1_rxactivehs : IN STD_LOGIC;
    dl1_rxvalidhs : IN STD_LOGIC;
    dl1_rxsynchs : IN STD_LOGIC;
    dl1_datahs : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    trig_req : OUT STD_LOGIC;
    trig_ack : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_tuser : OUT STD_LOGIC;
    m_axis_tlast : OUT STD_LOGIC;
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_aclk : IN STD_LOGIC;
    m_axis_aresetn : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : csi_to_axis_0
  PORT MAP (
    enable_in => enable_in,
    rxbyteclkhs => rxbyteclkhs,
    cl_enable => cl_enable,
    cl_stopstate => cl_stopstate,
    cl_rxclkactivehs => cl_rxclkactivehs,
    dl0_enable => dl0_enable,
    dl0_rxactivehs => dl0_rxactivehs,
    dl0_rxvalidhs => dl0_rxvalidhs,
    dl0_rxsynchs => dl0_rxsynchs,
    dl0_datahs => dl0_datahs,
    dl1_enable => dl1_enable,
    dl1_rxactivehs => dl1_rxactivehs,
    dl1_rxvalidhs => dl1_rxvalidhs,
    dl1_rxsynchs => dl1_rxsynchs,
    dl1_datahs => dl1_datahs,
    trig_req => trig_req,
    trig_ack => trig_ack,
    m_axis_tdata => m_axis_tdata,
    m_axis_tuser => m_axis_tuser,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid,
    m_axis_tready => m_axis_tready,
    m_axis_aclk => m_axis_aclk,
    m_axis_aresetn => m_axis_aresetn
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

