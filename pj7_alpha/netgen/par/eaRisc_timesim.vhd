--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.36
--  \   \         Application: netgen
--  /   /         Filename: eaRisc_timesim.vhd
-- /___/   /\     Timestamp: Thu Dec 06 02:01:47 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf eaRisc.pcf -rpw 100 -tpw 0 -ar Structure -tm eaRisc -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim eaRisc.ncd eaRisc_timesim.vhd 
-- Device	: 3s500efg320-4 (PRODUCTION 1.26 2007-04-13)
-- Input file	: eaRisc.ncd
-- Output file	: C:\Users\ERIK\Dropbox\cmpen471\projects\pj7_alpha\netgen\par\eaRisc_timesim.vhd
-- # of Entities	: 1
-- Design Name	: eaRisc
-- Xilinx	: C:\Xilinx92i
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity eaRisc is
  port (
    cf : out STD_LOGIC; 
    bx : out STD_LOGIC; 
    rsm : in STD_LOGIC := 'X'; 
    mdw : out STD_LOGIC; 
    csm : in STD_LOGIC := 'X'; 
    sub : out STD_LOGIC; 
    dx0 : out STD_LOGIC; 
    dx1 : out STD_LOGIC; 
    pck : out STD_LOGIC; 
    wc : out STD_LOGIC; 
    pres : out STD_LOGIC; 
    wot : out STD_LOGIC; 
    adat : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    sdat : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    output : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    dat0 : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    iadr : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    dat1 : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    dat2 : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    ddat : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    input : in STD_LOGIC_VECTOR ( 5 downto 0 ) 
  );
end eaRisc;

architecture Structure of eaRisc is
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal iadr_0_OBUF_0 : STD_LOGIC; 
  signal iadr_1_OBUF_1 : STD_LOGIC; 
  signal iadr_2_OBUF_2 : STD_LOGIC; 
  signal iadr_3_OBUF_3 : STD_LOGIC; 
  signal iadr_4_OBUF_4 : STD_LOGIC; 
  signal iadr_5_OBUF_5 : STD_LOGIC; 
  signal csm_IBUF_6 : STD_LOGIC; 
  signal ROM_gate4_gate5_z_not0001_0 : STD_LOGIC; 
  signal ROM_gate4_gate4_z_not0001_0 : STD_LOGIC; 
  signal ROM_gate4_gate3_z_not0001_0 : STD_LOGIC; 
  signal ROM_WORD_13_0 : STD_LOGIC; 
  signal cf_OBUF_7 : STD_LOGIC; 
  signal N1933 : STD_LOGIC; 
  signal N1934 : STD_LOGIC; 
  signal ROM_gate3_N7 : STD_LOGIC; 
  signal N1178_0 : STD_LOGIC; 
  signal ROM_gate3_N11_0 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal N3_0 : STD_LOGIC; 
  signal N1936 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map259 : STD_LOGIC; 
  signal ROM_gate3_N8 : STD_LOGIC; 
  signal N374_0 : STD_LOGIC; 
  signal ROM_DEOUT_7_0 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst_map7_0 : STD_LOGIC; 
  signal pc_gate2_gate6_gate1_gate1_M0 : STD_LOGIC; 
  signal N378_0 : STD_LOGIC; 
  signal ROM_gate3_N10_0 : STD_LOGIC; 
  signal ROM_gate3_N6_0 : STD_LOGIC; 
  signal N388_0 : STD_LOGIC; 
  signal ROM_DEOUT_9_0 : STD_LOGIC; 
  signal ROM_DEOUT_4_0 : STD_LOGIC; 
  signal N400_0 : STD_LOGIC; 
  signal N402_0 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal ROM_DEOUT_3_0 : STD_LOGIC; 
  signal N398 : STD_LOGIC; 
  signal ROM_WORD_14_0 : STD_LOGIC; 
  signal N386_0 : STD_LOGIC; 
  signal N396_0 : STD_LOGIC; 
  signal pc_gate2_gate5_gate1_gate1_M0 : STD_LOGIC; 
  signal N1947 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map128_0 : STD_LOGIC; 
  signal ROM_gate3_N0 : STD_LOGIC; 
  signal ROM_DEOUT_5_0 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map78 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map77_0 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map84_0 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal DFF_gate1_gate1_M0 : STD_LOGIC; 
  signal pc_gate2_gate4_gate1_gate1_M0 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal pc_gate2_gate1_gate1_gate1_M0 : STD_LOGIC; 
  signal pc_gate2_gate3_gate1_gate1_M0 : STD_LOGIC; 
  signal N1917 : STD_LOGIC; 
  signal pc_gate2_gate2_gate1_gate1_M0 : STD_LOGIC; 
  signal N1939 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map42_0 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map304 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map303_0 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map214_0 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map149_0 : STD_LOGIC; 
  signal N1949_0 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal N1937 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal N1953 : STD_LOGIC; 
  signal N1941 : STD_LOGIC; 
  signal N1925 : STD_LOGIC; 
  signal wot_O : STD_LOGIC; 
  signal iadr_0_O : STD_LOGIC; 
  signal iadr_1_O : STD_LOGIC; 
  signal iadr_2_O : STD_LOGIC; 
  signal bx_O : STD_LOGIC; 
  signal iadr_3_O : STD_LOGIC; 
  signal iadr_4_O : STD_LOGIC; 
  signal iadr_5_O : STD_LOGIC; 
  signal dat0_0_O : STD_LOGIC; 
  signal dat0_1_O : STD_LOGIC; 
  signal dat0_2_O : STD_LOGIC; 
  signal dat0_3_O : STD_LOGIC; 
  signal csm_INBUF : STD_LOGIC; 
  signal dat1_0_O : STD_LOGIC; 
  signal dat0_4_O : STD_LOGIC; 
  signal dat1_1_O : STD_LOGIC; 
  signal dat0_5_O : STD_LOGIC; 
  signal dat1_2_O : STD_LOGIC; 
  signal wc_O : STD_LOGIC; 
  signal dat1_3_O : STD_LOGIC; 
  signal dat2_0_O : STD_LOGIC; 
  signal dat1_4_O : STD_LOGIC; 
  signal N380_pack_1 : STD_LOGIC; 
  signal pc_gate2_gate1_gate1_gate1_M0_pack_1 : STD_LOGIC; 
  signal pc_gate2_gate5_gate1_gate1_M0_pack_1 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal iadr_3_OBUF_pack_2 : STD_LOGIC; 
  signal ROM_gate5_gate6_z_not0001 : STD_LOGIC; 
  signal N1917_pack_1 : STD_LOGIC; 
  signal pc_gate2_gate2_gate1_gate1_M0_pack_1 : STD_LOGIC; 
  signal pc_gate2_gate4_gate1_gate1_M0_pack_1 : STD_LOGIC; 
  signal pc_gate2_gate3_gate1_gate1_M0_pack_1 : STD_LOGIC; 
  signal iadr_4_OBUF_pack_1 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map42 : STD_LOGIC; 
  signal N1939_pack_1 : STD_LOGIC; 
  signal N376_pack_1 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal iadr_5_OBUF_pack_2 : STD_LOGIC; 
  signal N1178 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map304_pack_1 : STD_LOGIC; 
  signal N382_pack_1 : STD_LOGIC; 
  signal ROM_gate4_gate1_z_not0001 : STD_LOGIC; 
  signal N394_pack_1 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map303 : STD_LOGIC; 
  signal N1937_pack_1 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal ROM_gate4_gate3_z_not0001 : STD_LOGIC; 
  signal ROM_gate6_gate6_z_not0001 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map149 : STD_LOGIC; 
  signal N5_pack_1 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N9_pack_1 : STD_LOGIC; 
  signal ROM_gate4_gate4_z_not0001 : STD_LOGIC; 
  signal ROM_gate6_gate4_z_not0001 : STD_LOGIC; 
  signal N392_pack_1 : STD_LOGIC; 
  signal N1949 : STD_LOGIC; 
  signal N1953_pack_1 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map214 : STD_LOGIC; 
  signal N1941_pack_1 : STD_LOGIC; 
  signal ROM_gate3_N6 : STD_LOGIC; 
  signal N1925_pack_1 : STD_LOGIC; 
  signal bx_OBUF_F5MUX_8 : STD_LOGIC; 
  signal bx_OBUF_F : STD_LOGIC; 
  signal bx_OBUF_BXINV_9 : STD_LOGIC; 
  signal N1955 : STD_LOGIC; 
  signal N1936_F5MUX_10 : STD_LOGIC; 
  signal N1959 : STD_LOGIC; 
  signal N1936_BXINV_11 : STD_LOGIC; 
  signal N1960 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map259_F5MUX_12 : STD_LOGIC; 
  signal N1956 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map259_BXINV_13 : STD_LOGIC; 
  signal N1957 : STD_LOGIC; 
  signal ROM_gate6_gate5_z_not0001 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst_map7 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal iadr_0_OBUF_pack_2 : STD_LOGIC; 
  signal ROM_gate5_gate3_z_not0001 : STD_LOGIC; 
  signal ROM_DEOUT_1_pack_1 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
  signal ROM_gate4_gate5_z_not0001 : STD_LOGIC; 
  signal N384_pack_1 : STD_LOGIC; 
  signal N398_pack_1 : STD_LOGIC; 
  signal ROM_gate5_gate5_z_not0001 : STD_LOGIC; 
  signal ROM_DEOUT_2_pack_1 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal ROM_gate3_N7_pack_1 : STD_LOGIC; 
  signal ROM_gate3_N10 : STD_LOGIC; 
  signal ROM_DEOUT_8_pack_1 : STD_LOGIC; 
  signal N386 : STD_LOGIC; 
  signal iadr_1_OBUF_pack_2 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map128 : STD_LOGIC; 
  signal N1947_pack_1 : STD_LOGIC; 
  signal N374 : STD_LOGIC; 
  signal ROM_gate3_N0_pack_1 : STD_LOGIC; 
  signal wc_OBUF_14 : STD_LOGIC; 
  signal pc_gate2_gate6_gate1_gate1_M0_pack_1 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map84 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map78_pack_1 : STD_LOGIC; 
  signal ROM_gate5_gate4_z_not0001 : STD_LOGIC; 
  signal N390_pack_1 : STD_LOGIC; 
  signal ROM_gate3_N8_pack_1 : STD_LOGIC; 
  signal ROM_gate3_N11 : STD_LOGIC; 
  signal ROM_DEOUT_6_pack_1 : STD_LOGIC; 
  signal cf_OBUF_pack_1 : STD_LOGIC; 
  signal DFF_gate1_gate1_M0_pack_2 : STD_LOGIC; 
  signal ROM_gate3_z_6_LogicTrst1_map77 : STD_LOGIC; 
  signal iadr_2_OBUF_pack_2 : STD_LOGIC; 
  signal dat2_1_O : STD_LOGIC; 
  signal dat1_5_O : STD_LOGIC; 
  signal dat2_2_O : STD_LOGIC; 
  signal dat2_3_O : STD_LOGIC; 
  signal dat2_4_O : STD_LOGIC; 
  signal pck_O : STD_LOGIC; 
  signal dat2_5_O : STD_LOGIC; 
  signal mdw_O : STD_LOGIC; 
  signal pres_O : STD_LOGIC; 
  signal adat_0_O : STD_LOGIC; 
  signal adat_1_O : STD_LOGIC; 
  signal adat_2_O : STD_LOGIC; 
  signal adat_3_O : STD_LOGIC; 
  signal adat_4_O : STD_LOGIC; 
  signal adat_5_O : STD_LOGIC; 
  signal dx0_O : STD_LOGIC; 
  signal dx1_O : STD_LOGIC; 
  signal sub_O : STD_LOGIC; 
  signal rsm_INBUF : STD_LOGIC; 
  signal cf_O : STD_LOGIC; 
  signal N1933_F5MUX_15 : STD_LOGIC; 
  signal N1933_F : STD_LOGIC; 
  signal N1933_BXINV_16 : STD_LOGIC; 
  signal N1958 : STD_LOGIC; 
  signal N1934_F5MUX_17 : STD_LOGIC; 
  signal N1961 : STD_LOGIC; 
  signal N1934_BXINV_18 : STD_LOGIC; 
  signal N1962 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal ROM_DEOUT : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal ROM_WORD : STD_LOGIC_VECTOR ( 14 downto 13 ); 
begin
  wot_OBUF : X_OBUF
    generic map(
      LOC => "PAD177"
    )
    port map (
      I => wot_O,
      O => wot
    );
  iadr_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD4"
    )
    port map (
      I => iadr_0_O,
      O => iadr(0)
    );
  iadr_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => iadr_1_O,
      O => iadr(1)
    );
  iadr_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD226"
    )
    port map (
      I => iadr_2_O,
      O => iadr(2)
    );
  bx_OBUF : X_OBUF
    generic map(
      LOC => "PAD225"
    )
    port map (
      I => bx_O,
      O => bx
    );
  iadr_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD15"
    )
    port map (
      I => iadr_3_O,
      O => iadr(3)
    );
  iadr_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => iadr_4_O,
      O => iadr(4)
    );
  iadr_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD12"
    )
    port map (
      I => iadr_5_O,
      O => iadr(5)
    );
  dat0_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD208"
    )
    port map (
      I => dat0_0_O,
      O => dat0(0)
    );
  dat0_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD221"
    )
    port map (
      I => dat0_1_O,
      O => dat0(1)
    );
  dat0_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD207"
    )
    port map (
      I => dat0_2_O,
      O => dat0(2)
    );
  dat0_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD176"
    )
    port map (
      I => dat0_3_O,
      O => dat0(3)
    );
  csm_IBUF : X_BUF
    generic map(
      LOC => "IPAD3",
      PATHPULSE => 798 ps
    )
    port map (
      I => csm,
      O => csm_INBUF
    );
  csm_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD3",
      PATHPULSE => 798 ps
    )
    port map (
      I => csm_INBUF,
      O => csm_IBUF_6
    );
  dat1_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD220"
    )
    port map (
      I => dat1_0_O,
      O => dat1(0)
    );
  dat0_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD179"
    )
    port map (
      I => dat0_4_O,
      O => dat0(4)
    );
  dat1_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => dat1_1_O,
      O => dat1(1)
    );
  dat0_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD178"
    )
    port map (
      I => dat0_5_O,
      O => dat0(5)
    );
  dat1_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD213"
    )
    port map (
      I => dat1_2_O,
      O => dat1(2)
    );
  wc_OBUF : X_OBUF
    generic map(
      LOC => "PAD5"
    )
    port map (
      I => wc_O,
      O => wc
    );
  dat1_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD223"
    )
    port map (
      I => dat1_3_O,
      O => dat1(3)
    );
  dat2_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD181"
    )
    port map (
      I => dat2_0_O,
      O => dat2(0)
    );
  dat1_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => dat1_4_O,
      O => dat1(4)
    );
  ROM_DEOUT_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y70",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_DEOUT(5),
      O => ROM_DEOUT_5_0
    );
  ROM_DEOUT_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y70",
      PATHPULSE => 798 ps
    )
    port map (
      I => N380_pack_1,
      O => N380
    );
  ROM_gate1_gate5_z_SW0 : X_LUT4
    generic map(
      INIT => X"F7F7",
      LOC => "SLICE_X12Y70"
    )
    port map (
      ADR0 => iadr_2_OBUF_2,
      ADR1 => iadr_0_OBUF_0,
      ADR2 => iadr_1_OBUF_1,
      ADR3 => VCC,
      O => N380_pack_1
    );
  pc_gate2_gate1_gate1_gate1_M0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => pc_gate2_gate1_gate1_gate1_M0_pack_1,
      O => pc_gate2_gate1_gate1_gate1_M0
    );
  pc_gate2_gate1_gate1_gate1_M0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => pc_gate2_gate5_gate1_gate1_M0_pack_1,
      O => pc_gate2_gate5_gate1_gate1_M0
    );
  pc_gate2_gate5_gate1_gate1_M01 : X_LUT4
    generic map(
      INIT => X"FF0F",
      LOC => "SLICE_X14Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => csm_IBUF_6,
      ADR3 => pc_gate2_gate5_gate1_gate1_M0,
      O => pc_gate2_gate5_gate1_gate1_M0_pack_1
    );
  N7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => N7,
      O => N7_0
    );
  N7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_3_OBUF_pack_2,
      O => iadr_3_OBUF_3
    );
  pc_gate2_gate3_gate3_gate1_gate3_z1 : X_LUT4
    generic map(
      INIT => X"55F5",
      LOC => "SLICE_X12Y74"
    )
    port map (
      ADR0 => pc_gate2_gate3_gate1_gate1_M0,
      ADR1 => VCC,
      ADR2 => iadr_3_OBUF_3,
      ADR3 => csm_IBUF_6,
      O => iadr_3_OBUF_pack_2
    );
  ROM_gate5_gate6_z_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y71",
      PATHPULSE => 798 ps
    )
    port map (
      I => N1917_pack_1,
      O => N1917
    );
  ROM_gate3_z_6_LogicTrst31_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X2Y71"
    )
    port map (
      ADR0 => ROM_DEOUT_5_0,
      ADR1 => ROM_DEOUT(2),
      ADR2 => ROM_DEOUT_9_0,
      ADR3 => N1178_0,
      O => N1917_pack_1
    );
  pc_gate2_gate2_gate1_gate1_M0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y82",
      PATHPULSE => 798 ps
    )
    port map (
      I => pc_gate2_gate2_gate1_gate1_M0_pack_1,
      O => pc_gate2_gate2_gate1_gate1_M0
    );
  pc_gate2_gate2_gate1_gate1_M0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y82",
      PATHPULSE => 798 ps
    )
    port map (
      I => pc_gate2_gate4_gate1_gate1_M0_pack_1,
      O => pc_gate2_gate4_gate1_gate1_M0
    );
  pc_gate2_gate4_gate1_gate1_M01 : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "SLICE_X12Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => csm_IBUF_6,
      ADR2 => VCC,
      ADR3 => pc_gate2_gate4_gate1_gate1_M0,
      O => pc_gate2_gate4_gate1_gate1_M0_pack_1
    );
  pc_gate2_gate3_gate1_gate1_M0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y83",
      PATHPULSE => 798 ps
    )
    port map (
      I => pc_gate2_gate3_gate1_gate1_M0_pack_1,
      O => pc_gate2_gate3_gate1_gate1_M0
    );
  pc_gate2_gate3_gate1_gate1_M0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y83",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_4_OBUF_pack_1,
      O => iadr_4_OBUF_4
    );
  pc_gate2_gate2_gate3_gate1_gate3_z1 : X_LUT4
    generic map(
      INIT => X"0CFF",
      LOC => "SLICE_X13Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => iadr_4_OBUF_4,
      ADR2 => csm_IBUF_6,
      ADR3 => pc_gate2_gate2_gate1_gate1_M0,
      O => iadr_4_OBUF_pack_1
    );
  ROM_gate3_z_6_LogicTrst1_map42_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y70",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_z_6_LogicTrst1_map42,
      O => ROM_gate3_z_6_LogicTrst1_map42_0
    );
  ROM_gate3_z_6_LogicTrst1_map42_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y70",
      PATHPULSE => 798 ps
    )
    port map (
      I => N1939_pack_1,
      O => N1939
    );
  ROM_gate3_z_6_LogicTrst1142_SW1 : X_LUT4
    generic map(
      INIT => X"0005",
      LOC => "SLICE_X13Y70"
    )
    port map (
      ADR0 => iadr_0_OBUF_0,
      ADR1 => VCC,
      ADR2 => iadr_1_OBUF_1,
      ADR3 => iadr_2_OBUF_2,
      O => N1939_pack_1
    );
  ROM_DEOUT_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y70",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_DEOUT(7),
      O => ROM_DEOUT_7_0
    );
  ROM_DEOUT_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y70",
      PATHPULSE => 798 ps
    )
    port map (
      I => N376_pack_1,
      O => N376
    );
  ROM_gate1_gate7_z_SW0 : X_LUT4
    generic map(
      INIT => X"5FFF",
      LOC => "SLICE_X2Y70"
    )
    port map (
      ADR0 => iadr_1_OBUF_1,
      ADR1 => VCC,
      ADR2 => iadr_2_OBUF_2,
      ADR3 => iadr_0_OBUF_0,
      O => N376_pack_1
    );
  N3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => N3,
      O => N3_0
    );
  N3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_5_OBUF_pack_2,
      O => iadr_5_OBUF_5
    );
  pc_gate2_gate1_gate3_gate1_gate3_z1 : X_LUT4
    generic map(
      INIT => X"33BB",
      LOC => "SLICE_X14Y74"
    )
    port map (
      ADR0 => iadr_5_OBUF_5,
      ADR1 => pc_gate2_gate1_gate1_gate1_M0,
      ADR2 => VCC,
      ADR3 => csm_IBUF_6,
      O => iadr_5_OBUF_pack_2
    );
  N1178_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => N1178,
      O => N1178_0
    );
  N1178_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_z_6_LogicTrst1_map304_pack_1,
      O => ROM_gate3_z_6_LogicTrst1_map304
    );
  ROM_gate3_z_6_LogicTrst11126 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X12Y72"
    )
    port map (
      ADR0 => ROM_gate3_z_6_LogicTrst1_map149_0,
      ADR1 => ROM_gate3_z_6_LogicTrst1_map214_0,
      ADR2 => N1949_0,
      ADR3 => ROM_gate3_z_6_LogicTrst1_map303_0,
      O => ROM_gate3_z_6_LogicTrst1_map304_pack_1
    );
  ROM_DEOUT_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y69",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_DEOUT(4),
      O => ROM_DEOUT_4_0
    );
  ROM_DEOUT_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y69",
      PATHPULSE => 798 ps
    )
    port map (
      I => N382_pack_1,
      O => N382
    );
  ROM_gate1_gate4_z_SW0 : X_LUT4
    generic map(
      INIT => X"FFF5",
      LOC => "SLICE_X2Y69"
    )
    port map (
      ADR0 => iadr_2_OBUF_2,
      ADR1 => VCC,
      ADR2 => iadr_1_OBUF_1,
      ADR3 => iadr_0_OBUF_0,
      O => N382_pack_1
    );
  ROM_gate4_gate1_z_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y76",
      PATHPULSE => 798 ps
    )
    port map (
      I => N394_pack_1,
      O => N394
    );
  ROM_gate3_z_17_LogicTrst_SW0 : X_LUT4
    generic map(
      INIT => X"FFFB",
      LOC => "SLICE_X3Y76"
    )
    port map (
      ADR0 => ROM_gate3_N10_0,
      ADR1 => ROM_DEOUT_7_0,
      ADR2 => ROM_DEOUT_3_0,
      ADR3 => ROM_DEOUT_9_0,
      O => N394_pack_1
    );
  ROM_gate3_z_6_LogicTrst1_map303_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_z_6_LogicTrst1_map303,
      O => ROM_gate3_z_6_LogicTrst1_map303_0
    );
  ROM_gate3_z_6_LogicTrst1_map303_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => N1937_pack_1,
      O => N1937
    );
  ROM_gate3_z_6_LogicTrst11110_SW2 : X_LUT4
    generic map(
      INIT => X"EEEA",
      LOC => "SLICE_X13Y73"
    )
    port map (
      ADR0 => N7_0,
      ADR1 => N3_0,
      ADR2 => iadr_0_OBUF_0,
      ADR3 => iadr_1_OBUF_1,
      O => N1937_pack_1
    );
  N388_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => N388,
      O => N388_0
    );
  ROM_gate1_gate1_z_SW0 : X_LUT4
    generic map(
      INIT => X"FFBB",
      LOC => "SLICE_X3Y75"
    )
    port map (
      ADR0 => iadr_2_OBUF_2,
      ADR1 => iadr_0_OBUF_0,
      ADR2 => VCC,
      ADR3 => iadr_1_OBUF_1,
      O => N388
    );
  ROM_gate4_gate3_z_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate4_gate3_z_not0001,
      O => ROM_gate4_gate3_z_not0001_0
    );
  ROM_gate6_gate6_z_not00011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y58"
    )
    port map (
      ADR0 => ROM_DEOUT(8),
      ADR1 => ROM_gate3_N8,
      ADR2 => ROM_DEOUT_5_0,
      ADR3 => N402_0,
      O => ROM_gate6_gate6_z_not0001
    );
  ROM_gate3_z_6_LogicTrst1_map149_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_z_6_LogicTrst1_map149,
      O => ROM_gate3_z_6_LogicTrst1_map149_0
    );
  ROM_gate3_z_6_LogicTrst1_map149_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => N5_pack_1,
      O => N5
    );
  ROM_gate1_gate40_z11 : X_LUT4
    generic map(
      INIT => X"4400",
      LOC => "SLICE_X14Y72"
    )
    port map (
      ADR0 => iadr_4_OBUF_4,
      ADR1 => iadr_5_OBUF_5,
      ADR2 => VCC,
      ADR3 => iadr_3_OBUF_3,
      O => N5_pack_1
    );
  N400_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y61",
      PATHPULSE => 798 ps
    )
    port map (
      I => N400,
      O => N400_0
    );
  ROM_gate3_z_13_LogicTrst_SW0 : X_LUT4
    generic map(
      INIT => X"FCFD",
      LOC => "SLICE_X3Y61"
    )
    port map (
      ADR0 => ROM_DEOUT(8),
      ADR1 => ROM_DEOUT_4_0,
      ADR2 => ROM_DEOUT_5_0,
      ADR3 => ROM_DEOUT(6),
      O => N400
    );
  ROM_DEOUT_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y68",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_DEOUT(9),
      O => ROM_DEOUT_9_0
    );
  ROM_DEOUT_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y68",
      PATHPULSE => 798 ps
    )
    port map (
      I => N9_pack_1,
      O => N9
    );
  ROM_gate1_gate10_z11 : X_LUT4
    generic map(
      INIT => X"0300",
      LOC => "SLICE_X3Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => iadr_5_OBUF_5,
      ADR2 => iadr_4_OBUF_4,
      ADR3 => iadr_3_OBUF_3,
      O => N9_pack_1
    );
  ROM_gate4_gate4_z_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y77",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate4_gate4_z_not0001,
      O => ROM_gate4_gate4_z_not0001_0
    );
  id_dx0_z1 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X2Y77"
    )
    port map (
      ADR0 => ROM_gate3_N11_0,
      ADR1 => ROM_gate3_N7,
      ADR2 => N1178_0,
      ADR3 => N398,
      O => ROM_gate4_gate4_z_not0001
    );
  ROM_gate6_gate4_z_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y60",
      PATHPULSE => 798 ps
    )
    port map (
      I => N392_pack_1,
      O => N392
    );
  ROM_gate3_z_2_LogicTrst_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X3Y60"
    )
    port map (
      ADR0 => ROM_DEOUT_7_0,
      ADR1 => N1178_0,
      ADR2 => ROM_DEOUT(8),
      ADR3 => ROM_DEOUT_9_0,
      O => N392_pack_1
    );
  N1949_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => N1949,
      O => N1949_0
    );
  N1949_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => N1953_pack_1,
      O => N1953
    );
  ROM_gate3_z_6_LogicTrst11126_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"A898",
      LOC => "SLICE_X15Y72"
    )
    port map (
      ADR0 => iadr_3_OBUF_3,
      ADR1 => iadr_2_OBUF_2,
      ADR2 => iadr_0_OBUF_0,
      ADR3 => iadr_1_OBUF_1,
      O => N1953_pack_1
    );
  ROM_gate3_z_6_LogicTrst1_map214_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_z_6_LogicTrst1_map214,
      O => ROM_gate3_z_6_LogicTrst1_map214_0
    );
  ROM_gate3_z_6_LogicTrst1_map214_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => N1941_pack_1,
      O => N1941
    );
  ROM_gate3_z_6_LogicTrst1754_SW1 : X_LUT4
    generic map(
      INIT => X"A005",
      LOC => "SLICE_X12Y75"
    )
    port map (
      ADR0 => iadr_1_OBUF_1,
      ADR1 => VCC,
      ADR2 => iadr_4_OBUF_4,
      ADR3 => iadr_3_OBUF_3,
      O => N1941_pack_1
    );
  ROM_gate3_N6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y71",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_N6,
      O => ROM_gate3_N6_0
    );
  ROM_gate3_N6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y71",
      PATHPULSE => 798 ps
    )
    port map (
      I => N1925_pack_1,
      O => N1925
    );
  ROM_gate3_z_7_LogicTrst2_SW1 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X12Y71"
    )
    port map (
      ADR0 => ROM_DEOUT_5_0,
      ADR1 => N1178_0,
      ADR2 => VCC,
      ADR3 => ROM_DEOUT_3_0,
      O => N1925_pack_1
    );
  id_bx0_z11 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X3Y77"
    )
    port map (
      ADR0 => cf_OBUF_7,
      ADR1 => N1178_0,
      ADR2 => N394,
      ADR3 => ROM_gate3_N11_0,
      O => N1955
    );
  bx_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X3Y77"
    )
    port map (
      IA => N1955,
      IB => bx_OBUF_F,
      SEL => bx_OBUF_BXINV_9,
      O => bx_OBUF_F5MUX_8
    );
  bx_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y77",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_N7,
      O => bx_OBUF_BXINV_9
    );
  ROM_gate3_z_6_LogicTrst11110_SW12 : X_LUT4
    generic map(
      INIT => X"AEEC",
      LOC => "SLICE_X13Y72"
    )
    port map (
      ADR0 => N7_0,
      ADR1 => N3_0,
      ADR2 => iadr_0_OBUF_0,
      ADR3 => iadr_1_OBUF_1,
      O => N1960
    );
  N1936_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => N1936_F5MUX_10,
      O => N1936
    );
  N1936_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y72"
    )
    port map (
      IA => N1960,
      IB => N1959,
      SEL => N1936_BXINV_11,
      O => N1936_F5MUX_10
    );
  N1936_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => N9,
      O => N1936_BXINV_11
    );
  ROM_gate3_z_6_LogicTrst19232 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X12Y73"
    )
    port map (
      ADR0 => iadr_2_OBUF_2,
      ADR1 => iadr_1_OBUF_1,
      ADR2 => N3_0,
      ADR3 => iadr_0_OBUF_0,
      O => N1957
    );
  ROM_gate3_z_6_LogicTrst1_map259_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_z_6_LogicTrst1_map259_F5MUX_12,
      O => ROM_gate3_z_6_LogicTrst1_map259
    );
  ROM_gate3_z_6_LogicTrst1_map259_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y73"
    )
    port map (
      IA => N1957,
      IB => N1956,
      SEL => ROM_gate3_z_6_LogicTrst1_map259_BXINV_13,
      O => ROM_gate3_z_6_LogicTrst1_map259_F5MUX_12
    );
  ROM_gate3_z_6_LogicTrst1_map259_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => N9,
      O => ROM_gate3_z_6_LogicTrst1_map259_BXINV_13
    );
  ROM_gate6_gate5_z_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y66",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_z_6_LogicTrst_map7,
      O => ROM_gate3_z_6_LogicTrst_map7_0
    );
  ROM_gate3_z_6_LogicTrst12 : X_LUT4
    generic map(
      INIT => X"0003",
      LOC => "SLICE_X2Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ROM_DEOUT_7_0,
      ADR2 => ROM_DEOUT(6),
      ADR3 => ROM_DEOUT(1),
      O => ROM_gate3_z_6_LogicTrst_map7
    );
  N378_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y80",
      PATHPULSE => 798 ps
    )
    port map (
      I => N378,
      O => N378_0
    );
  N378_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y80",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_0_OBUF_pack_2,
      O => iadr_0_OBUF_0
    );
  pc_gate2_gate6_gate3_gate1_gate3_z1 : X_LUT4
    generic map(
      INIT => X"3F33",
      LOC => "SLICE_X2Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => pc_gate2_gate6_gate1_gate1_M0,
      ADR2 => csm_IBUF_6,
      ADR3 => iadr_0_OBUF_0,
      O => iadr_0_OBUF_pack_2
    );
  ROM_gate5_gate3_z_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_DEOUT_1_pack_1,
      O => ROM_DEOUT(1)
    );
  ROM_gate1_gate1_z : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y74"
    )
    port map (
      ADR0 => N388_0,
      ADR1 => iadr_5_OBUF_5,
      ADR2 => iadr_3_OBUF_3,
      ADR3 => iadr_4_OBUF_4,
      O => ROM_DEOUT_1_pack_1
    );
  N402_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => N402,
      O => N402_0
    );
  N402_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate4_gate5_z_not0001,
      O => ROM_gate4_gate5_z_not0001_0
    );
  ROM_gate4_gate5_z_not00011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X2Y58"
    )
    port map (
      ADR0 => ROM_gate3_N7,
      ADR1 => N400_0,
      ADR2 => ROM_DEOUT_9_0,
      ADR3 => ROM_gate3_N8,
      O => ROM_gate4_gate5_z_not0001
    );
  ROM_DEOUT_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y69",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_DEOUT(3),
      O => ROM_DEOUT_3_0
    );
  ROM_DEOUT_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y69",
      PATHPULSE => 798 ps
    )
    port map (
      I => N384_pack_1,
      O => N384
    );
  ROM_gate1_gate3_z_SW0 : X_LUT4
    generic map(
      INIT => X"FF77",
      LOC => "SLICE_X3Y69"
    )
    port map (
      ADR0 => iadr_0_OBUF_0,
      ADR1 => iadr_1_OBUF_1,
      ADR2 => VCC,
      ADR3 => iadr_2_OBUF_2,
      O => N384_pack_1
    );
  ROM_WORD_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y76",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_WORD(14),
      O => ROM_WORD_14_0
    );
  ROM_WORD_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y76",
      PATHPULSE => 798 ps
    )
    port map (
      I => N398_pack_1,
      O => N398
    );
  ROM_gate3_z_14_LogicTrst_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X2Y76"
    )
    port map (
      ADR0 => ROM_DEOUT_9_0,
      ADR1 => ROM_DEOUT_3_0,
      ADR2 => ROM_DEOUT_7_0,
      ADR3 => ROM_gate3_N10_0,
      O => N398_pack_1
    );
  ROM_gate5_gate5_z_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_DEOUT_2_pack_1,
      O => ROM_DEOUT(2)
    );
  ROM_gate1_gate2_z : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X19Y74"
    )
    port map (
      ADR0 => N386_0,
      ADR1 => iadr_3_OBUF_3,
      ADR2 => iadr_4_OBUF_4,
      ADR3 => iadr_5_OBUF_5,
      O => ROM_DEOUT_2_pack_1
    );
  N396_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y64",
      PATHPULSE => 798 ps
    )
    port map (
      I => N396,
      O => N396_0
    );
  N396_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y64",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_N7_pack_1,
      O => ROM_gate3_N7
    );
  ROM_gate3_z_8_LogicTrst11 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X2Y64"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => ROM_DEOUT(2),
      ADR3 => ROM_DEOUT(1),
      O => ROM_gate3_N7_pack_1
    );
  ROM_gate3_N10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y68",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_N10,
      O => ROM_gate3_N10_0
    );
  ROM_gate3_N10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y68",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_DEOUT_8_pack_1,
      O => ROM_DEOUT(8)
    );
  ROM_gate1_gate8_z1 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X2Y68"
    )
    port map (
      ADR0 => iadr_2_OBUF_2,
      ADR1 => N9,
      ADR2 => iadr_1_OBUF_1,
      ADR3 => iadr_0_OBUF_0,
      O => ROM_DEOUT_8_pack_1
    );
  N386_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => N386,
      O => N386_0
    );
  N386_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_1_OBUF_pack_2,
      O => iadr_1_OBUF_1
    );
  pc_gate2_gate5_gate3_gate1_gate3_z1 : X_LUT4
    generic map(
      INIT => X"7733",
      LOC => "SLICE_X15Y75"
    )
    port map (
      ADR0 => csm_IBUF_6,
      ADR1 => pc_gate2_gate5_gate1_gate1_M0,
      ADR2 => VCC,
      ADR3 => iadr_1_OBUF_1,
      O => iadr_1_OBUF_pack_2
    );
  ROM_gate3_z_6_LogicTrst1_map128_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_z_6_LogicTrst1_map128,
      O => ROM_gate3_z_6_LogicTrst1_map128_0
    );
  ROM_gate3_z_6_LogicTrst1_map128_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => N1947_pack_1,
      O => N1947
    );
  ROM_gate3_z_6_LogicTrst1455_SW0 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X14Y73"
    )
    port map (
      ADR0 => iadr_1_OBUF_1,
      ADR1 => VCC,
      ADR2 => iadr_2_OBUF_2,
      ADR3 => iadr_0_OBUF_0,
      O => N1947_pack_1
    );
  N374_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y64",
      PATHPULSE => 798 ps
    )
    port map (
      I => N374,
      O => N374_0
    );
  N374_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y64",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_N0_pack_1,
      O => ROM_gate3_N0
    );
  ROM_gate3_z_1_LogicTrst11 : X_LUT4
    generic map(
      INIT => X"0101",
      LOC => "SLICE_X3Y64"
    )
    port map (
      ADR0 => ROM_DEOUT_4_0,
      ADR1 => ROM_DEOUT_5_0,
      ADR2 => ROM_DEOUT(6),
      ADR3 => VCC,
      O => ROM_gate3_N0_pack_1
    );
  wc_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y88",
      PATHPULSE => 798 ps
    )
    port map (
      I => pc_gate2_gate6_gate1_gate1_M0_pack_1,
      O => pc_gate2_gate6_gate1_gate1_M0
    );
  pc_gate2_gate6_gate1_gate1_M01 : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "SLICE_X5Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => csm_IBUF_6,
      ADR2 => VCC,
      ADR3 => pc_gate2_gate6_gate1_gate1_M0,
      O => pc_gate2_gate6_gate1_gate1_M0_pack_1
    );
  ROM_gate3_z_6_LogicTrst1_map84_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_z_6_LogicTrst1_map84,
      O => ROM_gate3_z_6_LogicTrst1_map84_0
    );
  ROM_gate3_z_6_LogicTrst1_map84_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_z_6_LogicTrst1_map78_pack_1,
      O => ROM_gate3_z_6_LogicTrst1_map78
    );
  ROM_gate3_z_6_LogicTrst1248 : X_LUT4
    generic map(
      INIT => X"0030",
      LOC => "SLICE_X13Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => iadr_5_OBUF_5,
      ADR2 => ROM_gate3_z_6_LogicTrst1_map77_0,
      ADR3 => iadr_4_OBUF_4,
      O => ROM_gate3_z_6_LogicTrst1_map78_pack_1
    );
  ROM_gate5_gate4_z_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y61",
      PATHPULSE => 798 ps
    )
    port map (
      I => N390_pack_1,
      O => N390
    );
  ROM_gate3_z_8_LogicTrst_SW0 : X_LUT4
    generic map(
      INIT => X"FF10",
      LOC => "SLICE_X2Y61"
    )
    port map (
      ADR0 => ROM_DEOUT_3_0,
      ADR1 => ROM_DEOUT(8),
      ADR2 => ROM_gate3_N0,
      ADR3 => ROM_DEOUT_7_0,
      O => N390_pack_1
    );
  ROM_WORD_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y60",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_WORD(13),
      O => ROM_WORD_13_0
    );
  ROM_WORD_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y60",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_N8_pack_1,
      O => ROM_gate3_N8
    );
  ROM_gate3_z_1_LogicTrst21 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X2Y60"
    )
    port map (
      ADR0 => ROM_DEOUT_3_0,
      ADR1 => VCC,
      ADR2 => N1178_0,
      ADR3 => ROM_DEOUT_7_0,
      O => ROM_gate3_N8_pack_1
    );
  ROM_gate3_N11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y71",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_N11,
      O => ROM_gate3_N11_0
    );
  ROM_gate3_N11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y71",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_DEOUT_6_pack_1,
      O => ROM_DEOUT(6)
    );
  ROM_gate1_gate6_z : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y71"
    )
    port map (
      ADR0 => iadr_4_OBUF_4,
      ADR1 => iadr_5_OBUF_5,
      ADR2 => iadr_3_OBUF_3,
      ADR3 => N378_0,
      O => ROM_DEOUT_6_pack_1
    );
  cf_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => cf_OBUF_pack_1,
      O => cf_OBUF_7
    );
  cf_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => DFF_gate1_gate1_M0_pack_2,
      O => DFF_gate1_gate1_M0
    );
  DFF_gate1_gate1_M01 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X2Y78"
    )
    port map (
      ADR0 => ROM_WORD_14_0,
      ADR1 => VCC,
      ADR2 => csm_IBUF_6,
      ADR3 => DFF_gate1_gate1_M0,
      O => DFF_gate1_gate1_M0_pack_2
    );
  pc_gate2_gate4_gate3_gate1_gate3_z1 : X_LUT4
    generic map(
      INIT => X"22FF",
      LOC => "SLICE_X12Y79"
    )
    port map (
      ADR0 => iadr_2_OBUF_2,
      ADR1 => csm_IBUF_6,
      ADR2 => VCC,
      ADR3 => pc_gate2_gate4_gate1_gate1_M0,
      O => iadr_2_OBUF_pack_2
    );
  ROM_gate3_z_6_LogicTrst1_map77_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y79",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate3_z_6_LogicTrst1_map77,
      O => ROM_gate3_z_6_LogicTrst1_map77_0
    );
  ROM_gate3_z_6_LogicTrst1_map77_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y79",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_2_OBUF_pack_2,
      O => iadr_2_OBUF_2
    );
  dat2_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD211"
    )
    port map (
      I => dat2_1_O,
      O => dat2(1)
    );
  dat1_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD191"
    )
    port map (
      I => dat1_5_O,
      O => dat1(5)
    );
  dat2_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD229"
    )
    port map (
      I => dat2_2_O,
      O => dat2(2)
    );
  dat2_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD183"
    )
    port map (
      I => dat2_3_O,
      O => dat2(3)
    );
  dat2_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD185"
    )
    port map (
      I => dat2_4_O,
      O => dat2(4)
    );
  pck_OBUF : X_OBUF
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => pck_O,
      O => pck
    );
  dat2_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => dat2_5_O,
      O => dat2(5)
    );
  mdw_OBUF : X_OBUF
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => mdw_O,
      O => mdw
    );
  pres_OBUF : X_OBUF
    generic map(
      LOC => "PAD116"
    )
    port map (
      I => pres_O,
      O => pres
    );
  adat_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => adat_0_O,
      O => adat(0)
    );
  adat_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD217"
    )
    port map (
      I => adat_1_O,
      O => adat(1)
    );
  adat_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD218"
    )
    port map (
      I => adat_2_O,
      O => adat(2)
    );
  adat_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => adat_3_O,
      O => adat(3)
    );
  adat_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => adat_4_O,
      O => adat(4)
    );
  adat_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD212"
    )
    port map (
      I => adat_5_O,
      O => adat(5)
    );
  dx0_OBUF : X_OBUF
    generic map(
      LOC => "PAD230"
    )
    port map (
      I => dx0_O,
      O => dx0
    );
  dx1_OBUF : X_OBUF
    generic map(
      LOC => "PAD182"
    )
    port map (
      I => dx1_O,
      O => dx1
    );
  sub_OBUF : X_OBUF
    generic map(
      LOC => "PAD210"
    )
    port map (
      I => sub_O,
      O => sub
    );
  rsm_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 798 ps
    )
    port map (
      I => rsm,
      O => rsm_INBUF
    );
  cf_OBUF : X_OBUF
    generic map(
      LOC => "PAD227"
    )
    port map (
      I => cf_O,
      O => cf
    );
  ROM_gate3_z_6_LogicTrst1291_SW21 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X12Y78"
    )
    port map (
      ADR0 => iadr_4_OBUF_4,
      ADR1 => iadr_3_OBUF_3,
      ADR2 => iadr_0_OBUF_0,
      ADR3 => iadr_1_OBUF_1,
      O => N1958
    );
  N1933_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => N1933_F5MUX_15,
      O => N1933
    );
  N1933_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y78"
    )
    port map (
      IA => N1958,
      IB => N1933_F,
      SEL => N1933_BXINV_16,
      O => N1933_F5MUX_15
    );
  N1933_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_5_OBUF_5,
      O => N1933_BXINV_16
    );
  ROM_gate3_z_6_LogicTrst1291_SW32 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X15Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => iadr_4_OBUF_4,
      ADR2 => iadr_3_OBUF_3,
      ADR3 => VCC,
      O => N1962
    );
  N1934_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => N1934_F5MUX_17,
      O => N1934
    );
  N1934_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y78"
    )
    port map (
      IA => N1962,
      IB => N1961,
      SEL => N1934_BXINV_18,
      O => N1934_F5MUX_17
    );
  N1934_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_5_OBUF_5,
      O => N1934_BXINV_18
    );
  ROM_gate3_z_6_LogicTrst11110_SW11 : X_LUT4
    generic map(
      INIT => X"FEEC",
      LOC => "SLICE_X13Y72"
    )
    port map (
      ADR0 => N7_0,
      ADR1 => N3_0,
      ADR2 => iadr_0_OBUF_0,
      ADR3 => iadr_1_OBUF_1,
      O => N1959
    );
  ROM_gate3_z_6_LogicTrst19231 : X_LUT4
    generic map(
      INIT => X"0064",
      LOC => "SLICE_X12Y73"
    )
    port map (
      ADR0 => iadr_2_OBUF_2,
      ADR1 => iadr_1_OBUF_1,
      ADR2 => N3_0,
      ADR3 => iadr_0_OBUF_0,
      O => N1956
    );
  ROM_gate3_z_6_LogicTrst1291_SW31 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X15Y78"
    )
    port map (
      ADR0 => iadr_0_OBUF_0,
      ADR1 => iadr_4_OBUF_4,
      ADR2 => iadr_3_OBUF_3,
      ADR3 => iadr_1_OBUF_1,
      O => N1961
    );
  ROM_gate6_gate5_z_not00011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X2Y66"
    )
    port map (
      ADR0 => N374_0,
      ADR1 => ROM_DEOUT(8),
      ADR2 => ROM_gate3_N8,
      ADR3 => ROM_DEOUT(1),
      O => ROM_gate6_gate5_z_not0001
    );
  ROM_gate3_z_6_LogicTrst1142 : X_LUT4
    generic map(
      INIT => X"4004",
      LOC => "SLICE_X13Y70"
    )
    port map (
      ADR0 => iadr_5_OBUF_5,
      ADR1 => iadr_4_OBUF_4,
      ADR2 => N1939,
      ADR3 => iadr_3_OBUF_3,
      O => ROM_gate3_z_6_LogicTrst1_map42
    );
  ROM_gate1_gate7_z : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X2Y70"
    )
    port map (
      ADR0 => iadr_4_OBUF_4,
      ADR1 => iadr_3_OBUF_3,
      ADR2 => iadr_5_OBUF_5,
      ADR3 => N376,
      O => ROM_DEOUT(7)
    );
  ROM_gate1_gate56_z11 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X14Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => iadr_3_OBUF_3,
      ADR2 => iadr_4_OBUF_4,
      ADR3 => iadr_5_OBUF_5,
      O => N3
    );
  ROM_gate3_z_6_LogicTrst11139 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X12Y72"
    )
    port map (
      ADR0 => ROM_gate3_z_6_LogicTrst1_map42_0,
      ADR1 => ROM_gate3_z_6_LogicTrst1_map128_0,
      ADR2 => ROM_gate3_z_6_LogicTrst1_map84_0,
      ADR3 => ROM_gate3_z_6_LogicTrst1_map304,
      O => N1178
    );
  ROM_gate1_gate4_z : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X2Y69"
    )
    port map (
      ADR0 => iadr_3_OBUF_3,
      ADR1 => iadr_4_OBUF_4,
      ADR2 => N382,
      ADR3 => iadr_5_OBUF_5,
      O => ROM_DEOUT(4)
    );
  ROM_gate4_gate1_z_not00011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y76"
    )
    port map (
      ADR0 => ROM_gate3_N7,
      ADR1 => N1178_0,
      ADR2 => N394,
      ADR3 => ROM_gate3_N11_0,
      O => ROM_gate4_gate1_z_not0001
    );
  ROM_gate3_z_6_LogicTrst11110 : X_LUT4
    generic map(
      INIT => X"FAFC",
      LOC => "SLICE_X13Y73"
    )
    port map (
      ADR0 => N1937,
      ADR1 => N1936,
      ADR2 => ROM_gate3_z_6_LogicTrst1_map259,
      ADR3 => iadr_2_OBUF_2,
      O => ROM_gate3_z_6_LogicTrst1_map303
    );
  id_dx1_z1 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y58"
    )
    port map (
      ADR0 => N396_0,
      ADR1 => ROM_gate3_N8,
      ADR2 => ROM_DEOUT_5_0,
      ADR3 => ROM_DEOUT(6),
      O => ROM_gate4_gate3_z_not0001
    );
  ROM_gate3_z_6_LogicTrst1455 : X_LUT4
    generic map(
      INIT => X"4008",
      LOC => "SLICE_X14Y73"
    )
    port map (
      ADR0 => iadr_4_OBUF_4,
      ADR1 => iadr_5_OBUF_5,
      ADR2 => N1947,
      ADR3 => iadr_3_OBUF_3,
      O => ROM_gate3_z_6_LogicTrst1_map128
    );
  ROM_gate3_z_1_LogicTrst_SW0 : X_LUT4
    generic map(
      INIT => X"1010",
      LOC => "SLICE_X3Y64"
    )
    port map (
      ADR0 => ROM_DEOUT_9_0,
      ADR1 => ROM_DEOUT(2),
      ADR2 => ROM_gate3_N0,
      ADR3 => VCC,
      O => N374
    );
  id_wc0_z1 : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X5Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => csm_IBUF_6,
      ADR2 => VCC,
      ADR3 => ROM_WORD_14_0,
      O => wc_OBUF_14
    );
  ROM_gate3_z_6_LogicTrst1291 : X_LUT4
    generic map(
      INIT => X"FBF8",
      LOC => "SLICE_X13Y78"
    )
    port map (
      ADR0 => N1934,
      ADR1 => iadr_2_OBUF_2,
      ADR2 => ROM_gate3_z_6_LogicTrst1_map78,
      ADR3 => N1933,
      O => ROM_gate3_z_6_LogicTrst1_map84
    );
  ROM_gate5_gate4_z_not00011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X2Y61"
    )
    port map (
      ADR0 => N1178_0,
      ADR1 => ROM_DEOUT_9_0,
      ADR2 => N390,
      ADR3 => ROM_gate3_N7,
      O => ROM_gate5_gate4_z_not0001
    );
  ROM_gate3_z_13_LogicTrst : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X2Y60"
    )
    port map (
      ADR0 => ROM_DEOUT_9_0,
      ADR1 => ROM_gate3_N7,
      ADR2 => ROM_gate3_N8,
      ADR3 => N400_0,
      O => ROM_WORD(13)
    );
  ROM_gate3_z_14_LogicTrst31 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X3Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ROM_DEOUT_5_0,
      ADR2 => VCC,
      ADR3 => ROM_DEOUT(6),
      O => ROM_gate3_N11
    );
  ROM_gate1_gate6_z_SW0 : X_LUT4
    generic map(
      INIT => X"CFFF",
      LOC => "SLICE_X2Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => iadr_0_OBUF_0,
      ADR2 => iadr_1_OBUF_1,
      ADR3 => iadr_2_OBUF_2,
      O => N378
    );
  ROM_gate5_gate3_z_not00011 : X_LUT4
    generic map(
      INIT => X"0032",
      LOC => "SLICE_X3Y74"
    )
    port map (
      ADR0 => ROM_DEOUT(2),
      ADR1 => ROM_gate3_N6_0,
      ADR2 => ROM_DEOUT(1),
      ADR3 => ROM_gate3_N10_0,
      O => ROM_gate5_gate3_z_not0001
    );
  ROM_gate3_z_0_LogicTrst_SW0 : X_LUT4
    generic map(
      INIT => X"FF01",
      LOC => "SLICE_X2Y58"
    )
    port map (
      ADR0 => ROM_DEOUT(6),
      ADR1 => ROM_gate3_N7,
      ADR2 => ROM_DEOUT_9_0,
      ADR3 => ROM_DEOUT_4_0,
      O => N402
    );
  ROM_gate1_gate3_z : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y69"
    )
    port map (
      ADR0 => iadr_3_OBUF_3,
      ADR1 => iadr_5_OBUF_5,
      ADR2 => iadr_4_OBUF_4,
      ADR3 => N384,
      O => ROM_DEOUT(3)
    );
  ROM_gate3_z_14_LogicTrst : X_LUT4
    generic map(
      INIT => X"FFFD",
      LOC => "SLICE_X2Y76"
    )
    port map (
      ADR0 => ROM_gate3_N11_0,
      ADR1 => ROM_gate3_N7,
      ADR2 => N1178_0,
      ADR3 => N398,
      O => ROM_WORD(14)
    );
  ROM_gate5_gate5_z_not00011 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X19Y74"
    )
    port map (
      ADR0 => ROM_DEOUT(1),
      ADR1 => ROM_gate3_N10_0,
      ADR2 => ROM_DEOUT(2),
      ADR3 => ROM_gate3_N6_0,
      O => ROM_gate5_gate5_z_not0001
    );
  ROM_gate3_z_15_LogicTrst_SW0 : X_LUT4
    generic map(
      INIT => X"AAAB",
      LOC => "SLICE_X2Y64"
    )
    port map (
      ADR0 => ROM_DEOUT_4_0,
      ADR1 => ROM_DEOUT(8),
      ADR2 => ROM_DEOUT_9_0,
      ADR3 => ROM_gate3_N7,
      O => N396
    );
  ROM_gate3_z_6_LogicTrst21 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X2Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ROM_DEOUT_4_0,
      ADR2 => VCC,
      ADR3 => ROM_DEOUT(8),
      O => ROM_gate3_N10
    );
  ROM_gate1_gate2_z_SW0 : X_LUT4
    generic map(
      INIT => X"FCFF",
      LOC => "SLICE_X15Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => iadr_2_OBUF_2,
      ADR2 => iadr_0_OBUF_0,
      ADR3 => iadr_1_OBUF_1,
      O => N386
    );
  DFF_gate3_gate1_gate3_z1 : X_LUT4
    generic map(
      INIT => X"C8FF",
      LOC => "SLICE_X2Y78"
    )
    port map (
      ADR0 => ROM_WORD_14_0,
      ADR1 => cf_OBUF_7,
      ADR2 => csm_IBUF_6,
      ADR3 => DFF_gate1_gate1_M0,
      O => cf_OBUF_pack_1
    );
  ROM_gate3_z_6_LogicTrst1245 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X12Y79"
    )
    port map (
      ADR0 => iadr_0_OBUF_0,
      ADR1 => iadr_3_OBUF_3,
      ADR2 => iadr_2_OBUF_2,
      ADR3 => iadr_1_OBUF_1,
      O => ROM_gate3_z_6_LogicTrst1_map77
    );
  ROM_gate1_gate5_z : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X12Y70"
    )
    port map (
      ADR0 => iadr_3_OBUF_3,
      ADR1 => iadr_4_OBUF_4,
      ADR2 => iadr_5_OBUF_5,
      ADR3 => N380,
      O => ROM_DEOUT(5)
    );
  pc_gate2_gate1_gate1_gate1_M01 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X14Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => pc_gate2_gate1_gate1_gate1_M0,
      ADR2 => VCC,
      ADR3 => csm_IBUF_6,
      O => pc_gate2_gate1_gate1_gate1_M0_pack_1
    );
  ROM_gate1_gate24_z11 : X_LUT4
    generic map(
      INIT => X"4040",
      LOC => "SLICE_X12Y74"
    )
    port map (
      ADR0 => iadr_5_OBUF_5,
      ADR1 => iadr_3_OBUF_3,
      ADR2 => iadr_4_OBUF_4,
      ADR3 => VCC,
      O => N7
    );
  ROM_gate5_gate6_z_not00011 : X_LUT4
    generic map(
      INIT => X"0F0B",
      LOC => "SLICE_X2Y71"
    )
    port map (
      ADR0 => ROM_DEOUT_3_0,
      ADR1 => ROM_gate3_z_6_LogicTrst_map7_0,
      ADR2 => N1917,
      ADR3 => ROM_gate3_N10_0,
      O => ROM_gate5_gate6_z_not0001
    );
  pc_gate2_gate2_gate1_gate1_M01 : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "SLICE_X12Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => csm_IBUF_6,
      ADR2 => VCC,
      ADR3 => pc_gate2_gate2_gate1_gate1_M0,
      O => pc_gate2_gate2_gate1_gate1_M0_pack_1
    );
  pc_gate2_gate3_gate1_gate1_M01 : X_LUT4
    generic map(
      INIT => X"FF0F",
      LOC => "SLICE_X13Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => csm_IBUF_6,
      ADR3 => pc_gate2_gate3_gate1_gate1_M0,
      O => pc_gate2_gate3_gate1_gate1_M0_pack_1
    );
  ROM_gate3_z_6_LogicTrst1549 : X_LUT4
    generic map(
      INIT => X"7800",
      LOC => "SLICE_X14Y72"
    )
    port map (
      ADR0 => iadr_1_OBUF_1,
      ADR1 => iadr_0_OBUF_0,
      ADR2 => iadr_2_OBUF_2,
      ADR3 => N5,
      O => ROM_gate3_z_6_LogicTrst1_map149
    );
  ROM_gate1_gate9_z1 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X3Y68"
    )
    port map (
      ADR0 => iadr_0_OBUF_0,
      ADR1 => iadr_1_OBUF_1,
      ADR2 => N9,
      ADR3 => iadr_2_OBUF_2,
      O => ROM_DEOUT(9)
    );
  ROM_gate6_gate4_z_not00011 : X_LUT4
    generic map(
      INIT => X"0F0B",
      LOC => "SLICE_X3Y60"
    )
    port map (
      ADR0 => ROM_gate3_N7,
      ADR1 => ROM_gate3_N0,
      ADR2 => N392,
      ADR3 => ROM_DEOUT_3_0,
      O => ROM_gate6_gate4_z_not0001
    );
  ROM_gate3_z_6_LogicTrst11126_SW0 : X_LUT4
    generic map(
      INIT => X"000A",
      LOC => "SLICE_X15Y72"
    )
    port map (
      ADR0 => iadr_5_OBUF_5,
      ADR1 => VCC,
      ADR2 => N1953,
      ADR3 => iadr_4_OBUF_4,
      O => N1949
    );
  ROM_gate3_z_6_LogicTrst1754 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X12Y75"
    )
    port map (
      ADR0 => iadr_2_OBUF_2,
      ADR1 => iadr_0_OBUF_0,
      ADR2 => N1941,
      ADR3 => iadr_5_OBUF_5,
      O => ROM_gate3_z_6_LogicTrst1_map214
    );
  ROM_gate3_z_7_LogicTrst2 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X12Y71"
    )
    port map (
      ADR0 => ROM_DEOUT_7_0,
      ADR1 => ROM_DEOUT(6),
      ADR2 => N1925,
      ADR3 => ROM_DEOUT_9_0,
      O => ROM_gate3_N6
    );
  GLOBAL_LOGIC0_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  wot_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  wot_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  wot_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 798 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => wot_O
    );
  iadr_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_0_OBUF_0,
      O => iadr_0_O
    );
  iadr_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_1_OBUF_1,
      O => iadr_1_O
    );
  iadr_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_2_OBUF_2,
      O => iadr_2_O
    );
  bx_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 798 ps
    )
    port map (
      I => bx_OBUF_F5MUX_8,
      O => bx_O
    );
  iadr_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_3_OBUF_3,
      O => iadr_3_O
    );
  iadr_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_4_OBUF_4,
      O => iadr_4_O
    );
  iadr_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 798 ps
    )
    port map (
      I => iadr_5_OBUF_5,
      O => iadr_5_O
    );
  dat0_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD208",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate6_gate6_z_not0001,
      O => dat0_0_O
    );
  dat0_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate6_gate5_z_not0001,
      O => dat0_1_O
    );
  dat0_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD207",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate6_gate4_z_not0001,
      O => dat0_2_O
    );
  dat0_3_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat0_3_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat0_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 798 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => dat0_3_O
    );
  dat1_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate5_gate6_z_not0001,
      O => dat1_0_O
    );
  dat0_4_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat0_4_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat0_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 798 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => dat0_4_O
    );
  dat1_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate5_gate5_z_not0001,
      O => dat1_1_O
    );
  dat0_5_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat0_5_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat0_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 798 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => dat0_5_O
    );
  dat1_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD213",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate5_gate4_z_not0001,
      O => dat1_2_O
    );
  wc_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 798 ps
    )
    port map (
      I => wc_OBUF_14,
      O => wc_O
    );
  dat1_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate5_gate3_z_not0001,
      O => dat1_3_O
    );
  dat2_0_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat2_0_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat2_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 798 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => dat2_0_O
    );
  dat1_4_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat1_4_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat1_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 798 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => dat1_4_O
    );
  bx_OBUF_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X3Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => bx_OBUF_F
    );
  dat2_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD211",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate4_gate5_z_not0001_0,
      O => dat2_1_O
    );
  dat1_5_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat1_5_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat1_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 798 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => dat1_5_O
    );
  dat2_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate4_gate4_z_not0001_0,
      O => dat2_2_O
    );
  dat2_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate4_gate3_z_not0001_0,
      O => dat2_3_O
    );
  dat2_4_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat2_4_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  dat2_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 798 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => dat2_4_O
    );
  pck_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 798 ps
    )
    port map (
      I => csm_IBUF_6,
      O => pck_O
    );
  dat2_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate4_gate1_z_not0001,
      O => dat2_5_O
    );
  mdw_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD8",
      PATHPULSE => 798 ps
    )
    port map (
      I => csm_IBUF_6,
      O => mdw_O
    );
  pres_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 798 ps
    )
    port map (
      I => rsm_INBUF,
      O => pres_O
    );
  adat_0_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  adat_0_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  adat_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 798 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => adat_0_O
    );
  adat_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD217",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_WORD_13_0,
      O => adat_1_O
    );
  adat_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD218",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_WORD_13_0,
      O => adat_2_O
    );
  adat_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD215",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_WORD_13_0,
      O => adat_3_O
    );
  adat_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_WORD_13_0,
      O => adat_4_O
    );
  adat_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD212",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_WORD_13_0,
      O => adat_5_O
    );
  dx0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate4_gate4_z_not0001_0,
      O => dx0_O
    );
  dx1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate4_gate3_z_not0001_0,
      O => dx1_O
    );
  sub_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD210",
      PATHPULSE => 798 ps
    )
    port map (
      I => ROM_gate4_gate5_z_not0001_0,
      O => sub_O
    );
  cf_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 798 ps
    )
    port map (
      I => cf_OBUF_7,
      O => cf_O
    );
  N1933_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N1933_F
    );
  NlwBlock_eaRisc_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

