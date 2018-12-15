-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Sat Dec 15 16:58:04 2018
-- Host        : ece07 running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/user/Documents/FPGA_PONG/embedded_pong/embedded_pong.srcs/sources_1/bd/design_1/ip/design_1_pixel_pusher_0_0/design_1_pixel_pusher_0_0_sim_netlist.vhdl
-- Design      : design_1_pixel_pusher_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pixel_pusher_0_0_pixel_pusher is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    vcount : in STD_LOGIC_VECTOR ( 4 downto 0 );
    hcount : in STD_LOGIC_VECTOR ( 2 downto 0 );
    en : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pixel_pusher_0_0_pixel_pusher : entity is "pixel_pusher";
end design_1_pixel_pusher_0_0_pixel_pusher;

architecture STRUCTURE of design_1_pixel_pusher_0_0_pixel_pusher is
  signal \^r\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \R0/i__n_0\ : STD_LOGIC;
  signal \R[0]_i_1_n_0\ : STD_LOGIC;
begin
  R(0) <= \^r\(0);
\R0/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15555555"
    )
        port map (
      I0 => vcount(4),
      I1 => vcount(1),
      I2 => vcount(0),
      I3 => vcount(2),
      I4 => vcount(3),
      O => \R0/i__n_0\
    );
\R[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F00FFFF1F000000"
    )
        port map (
      I0 => hcount(0),
      I1 => hcount(1),
      I2 => hcount(2),
      I3 => \R0/i__n_0\,
      I4 => en,
      I5 => \^r\(0),
      O => \R[0]_i_1_n_0\
    );
\R_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \R[0]_i_1_n_0\,
      Q => \^r\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pixel_pusher_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    hcount : in STD_LOGIC_VECTOR ( 9 downto 0 );
    vcount : in STD_LOGIC_VECTOR ( 9 downto 0 );
    R : out STD_LOGIC_VECTOR ( 4 downto 0 );
    B : out STD_LOGIC_VECTOR ( 4 downto 0 );
    G : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pixel_pusher_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pixel_pusher_0_0 : entity is "design_1_pixel_pusher_0_0,pixel_pusher,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_pixel_pusher_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_pixel_pusher_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_pixel_pusher_0_0 : entity is "pixel_pusher,Vivado 2018.2";
end design_1_pixel_pusher_0_0;

architecture STRUCTURE of design_1_pixel_pusher_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^r\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0";
begin
  B(4) <= \<const0>\;
  B(3) <= \<const0>\;
  B(2) <= \<const0>\;
  B(1) <= \<const0>\;
  B(0) <= \<const0>\;
  G(5) <= \<const0>\;
  G(4) <= \<const0>\;
  G(3) <= \<const0>\;
  G(2) <= \<const0>\;
  G(1) <= \<const0>\;
  G(0) <= \<const0>\;
  R(4) <= \^r\(0);
  R(3) <= \^r\(0);
  R(2) <= \^r\(0);
  R(1) <= \^r\(0);
  R(0) <= \^r\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_pixel_pusher_0_0_pixel_pusher
     port map (
      R(0) => \^r\(0),
      clk => clk,
      en => en,
      hcount(2 downto 0) => hcount(9 downto 7),
      vcount(4 downto 0) => vcount(9 downto 5)
    );
end STRUCTURE;
