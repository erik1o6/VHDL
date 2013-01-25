--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : loro32.vhw
-- /___/   /\     Timestamp : Tue Oct 09 15:52:25 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: loro32
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY loro32 IS
END loro32;

ARCHITECTURE testbench_arch OF loro32 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ea32x6Ram
        PORT (
            OE : In std_logic;
            CS : In std_logic;
            RW : In std_logic;
            A : In std_logic_vector (4 DownTo 0);
            D : InOut std_logic_vector (5 DownTo 0)
        );
    END COMPONENT;

    SIGNAL OE : std_logic := '0';
    SIGNAL CS : std_logic := '0';
    SIGNAL RW : std_logic := '0';
    SIGNAL A : std_logic_vector (4 DownTo 0) := "00000";
    SIGNAL D : std_logic_vector (5 DownTo 0) := "ZZZZZZ";

    BEGIN
        UUT : ea32x6Ram
        PORT MAP (
            OE => OE,
            CS => CS,
            RW => RW,
            A => A,
            D => D
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  500ns
                WAIT FOR 500 ns;
                A <= "00001";
                -- -------------------------------------
                WAIT FOR 9500 ns;

            END PROCESS;

    END testbench_arch;

