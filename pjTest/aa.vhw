--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : aa.vhw
-- /___/   /\     Timestamp : Mon Sep 17 07:56:18 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: aa
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY aa IS
END aa;

ARCHITECTURE testbench_arch OF aa IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT eaMY
        PORT (
            a : In std_logic;
            b : In std_logic;
            c : In std_logic;
            d : In std_logic;
            z : Out std_logic
        );
    END COMPONENT;

    SIGNAL a : std_logic := '0';
    SIGNAL b : std_logic := '0';
    SIGNAL c : std_logic := '0';
    SIGNAL d : std_logic := '0';
    SIGNAL z : std_logic := '0';

    BEGIN
        UUT : eaMY
        PORT MAP (
            a => a,
            b => b,
            c => c,
            d => d,
            z => z
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  200ns
                WAIT FOR 200 ns;
                c <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 400 ns;
                d <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 600 ns;
                d <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 600 ns;
                d <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2400ns
                WAIT FOR 600 ns;
                d <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3000ns
                WAIT FOR 600 ns;
                d <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3400ns
                WAIT FOR 400 ns;
                d <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3800ns
                WAIT FOR 400 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3900ns
                WAIT FOR 100 ns;
                d <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4100ns
                WAIT FOR 200 ns;
                b <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4500ns
                WAIT FOR 400 ns;
                d <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4900ns
                WAIT FOR 400 ns;
                c <= '0';
                -- -------------------------------------
                WAIT FOR 5100 ns;

            END PROCESS;

    END testbench_arch;

