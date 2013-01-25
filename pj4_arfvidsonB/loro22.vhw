--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : loro22.vhw
-- /___/   /\     Timestamp : Tue Oct 09 15:52:33 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: loro22
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY loro22 IS
END loro22;

ARCHITECTURE testbench_arch OF loro22 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ea64x6Ram
        PORT (
            A : In std_logic_vector (5 DownTo 0);
            RW : In std_logic;
            CS : In std_logic;
            OE : In std_logic;
            D : InOut std_logic_vector (5 DownTo 0)
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL RW : std_logic := '0';
    SIGNAL CS : std_logic := '0';
    SIGNAL OE : std_logic := '0';
    SIGNAL D : std_logic_vector (5 DownTo 0) := "ZZZZZZ";

    BEGIN
        UUT : ea64x6Ram
        PORT MAP (
            A => A,
            RW => RW,
            CS => CS,
            OE => OE,
            D => D
        );

        PROCESS
            BEGIN
                WAIT FOR 10000 ns;

            END PROCESS;

    END testbench_arch;

