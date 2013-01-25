--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : oooooo.vhw
-- /___/   /\     Timestamp : Thu Sep 13 14:39:56 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: oooooo
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY oooooo IS
END oooooo;

ARCHITECTURE testbench_arch OF oooooo IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT eaadd4bit
        PORT (
            ci : In std_logic;
            a : In std_logic_vector (3 DownTo 0);
            b : In std_logic_vector (3 DownTo 0);
            s : Out std_logic_vector (3 DownTo 0);
            co : Out std_logic
        );
    END COMPONENT;

    SIGNAL ci : std_logic := '0';
    SIGNAL a : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL b : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL s : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL co : std_logic := '0';

    BEGIN
        UUT : eaadd4bit
        PORT MAP (
            ci => ci,
            a => a,
            b => b,
            s => s,
            co => co
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  800ns
                WAIT FOR 800 ns;
                a <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 600 ns;
                b <= "0101";
                -- -------------------------------------
                WAIT FOR 8600 ns;

            END PROCESS;

    END testbench_arch;

