-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Wed Nov 14 11:16:07 2018
-- Host        : zhengyuanbo-ThinkPad-T540p running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_algorithm_top_0_0_sim_netlist.vhdl
-- Design      : system_algorithm_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_algorithm_top_v3_0 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_algorithm_top_v3_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_algorithm_top_v3_0 is
  signal \m_axis_tdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[12]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[12]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[12]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[16]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[16]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[16]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[20]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[20]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[20]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[24]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[24]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[24]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[24]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[28]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[28]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[28]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[4]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[4]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[4]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[8]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[8]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[8]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_m_axis_tdata[28]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \m_axis_tdata[0]_INST_0_n_0\,
      CO(2) => \m_axis_tdata[0]_INST_0_n_1\,
      CO(1) => \m_axis_tdata[0]_INST_0_n_2\,
      CO(0) => \m_axis_tdata[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => s_axis_tdata(1),
      DI(0) => '0',
      O(3 downto 0) => m_axis_tdata(3 downto 0),
      S(3 downto 2) => s_axis_tdata(3 downto 2),
      S(1) => \m_axis_tdata[0]_INST_0_i_1_n_0\,
      S(0) => s_axis_tdata(0)
    );
\m_axis_tdata[0]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(1),
      O => \m_axis_tdata[0]_INST_0_i_1_n_0\
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tdata[8]_INST_0_n_0\,
      CO(3) => \m_axis_tdata[12]_INST_0_n_0\,
      CO(2) => \m_axis_tdata[12]_INST_0_n_1\,
      CO(1) => \m_axis_tdata[12]_INST_0_n_2\,
      CO(0) => \m_axis_tdata[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m_axis_tdata(15 downto 12),
      S(3 downto 0) => s_axis_tdata(15 downto 12)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tdata[12]_INST_0_n_0\,
      CO(3) => \m_axis_tdata[16]_INST_0_n_0\,
      CO(2) => \m_axis_tdata[16]_INST_0_n_1\,
      CO(1) => \m_axis_tdata[16]_INST_0_n_2\,
      CO(0) => \m_axis_tdata[16]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m_axis_tdata(19 downto 16),
      S(3 downto 0) => s_axis_tdata(19 downto 16)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tdata[16]_INST_0_n_0\,
      CO(3) => \m_axis_tdata[20]_INST_0_n_0\,
      CO(2) => \m_axis_tdata[20]_INST_0_n_1\,
      CO(1) => \m_axis_tdata[20]_INST_0_n_2\,
      CO(0) => \m_axis_tdata[20]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m_axis_tdata(23 downto 20),
      S(3 downto 0) => s_axis_tdata(23 downto 20)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tdata[20]_INST_0_n_0\,
      CO(3) => \m_axis_tdata[24]_INST_0_n_0\,
      CO(2) => \m_axis_tdata[24]_INST_0_n_1\,
      CO(1) => \m_axis_tdata[24]_INST_0_n_2\,
      CO(0) => \m_axis_tdata[24]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m_axis_tdata(27 downto 24),
      S(3 downto 0) => s_axis_tdata(27 downto 24)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tdata[24]_INST_0_n_0\,
      CO(3) => \NLW_m_axis_tdata[28]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \m_axis_tdata[28]_INST_0_n_1\,
      CO(1) => \m_axis_tdata[28]_INST_0_n_2\,
      CO(0) => \m_axis_tdata[28]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m_axis_tdata(31 downto 28),
      S(3 downto 0) => s_axis_tdata(31 downto 28)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tdata[0]_INST_0_n_0\,
      CO(3) => \m_axis_tdata[4]_INST_0_n_0\,
      CO(2) => \m_axis_tdata[4]_INST_0_n_1\,
      CO(1) => \m_axis_tdata[4]_INST_0_n_2\,
      CO(0) => \m_axis_tdata[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m_axis_tdata(7 downto 4),
      S(3 downto 0) => s_axis_tdata(7 downto 4)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tdata[4]_INST_0_n_0\,
      CO(3) => \m_axis_tdata[8]_INST_0_n_0\,
      CO(2) => \m_axis_tdata[8]_INST_0_n_1\,
      CO(1) => \m_axis_tdata[8]_INST_0_n_2\,
      CO(0) => \m_axis_tdata[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m_axis_tdata(11 downto 8),
      S(3 downto 0) => s_axis_tdata(11 downto 8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_algorithm_top_0_0,algorithm_top_v3_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "algorithm_top_v3_0,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axis_aclk : signal is "XIL_INTERFACENAME M_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of m_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of m_axis_aresetn : signal is "XIL_INTERFACENAME M_AXIS_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk : signal is "XIL_INTERFACENAME S_AXIS_CLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aresetn : signal is "XIL_INTERFACENAME S_AXIS_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M_AXIS TSTRB";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S_AXIS TSTRB";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tstrb\(3 downto 0) <= s_axis_tstrb(3 downto 0);
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tstrb(3 downto 0) <= \^s_axis_tstrb\(3 downto 0);
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
  m_axis_tlast <= 'Z';
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_algorithm_top_v3_0
     port map (
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0)
    );
end STRUCTURE;
