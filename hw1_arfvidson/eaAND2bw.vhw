--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : eaAND2bw.vhw
-- /___/   /\     Timestamp : Tue Sep 04 20:33:59 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: eaAND2bw
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY eaAND2bw IS
END eaAND2bw;

ARCHITECTURE testbench_arch OF eaAND2bw IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT eaAND2
        PORT (
            a : In std_logic;
            b : In std_logic;
            z : Out std_logic
        );
    END COMPONENT;

    SIGNAL a : std_logic := '0';
    SIGNAL b : std_logic := '0';
    SIGNAL z : std_logic := '0';

    BEGIN
        UUT : eaAND2
        PORT MAP (
            a => a,
            b => b,
            z => z
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  400ns
                WAIT FOR 400 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 200 ns;
                a <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 200 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                a <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 300 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 400 ns;
                a <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 300 ns;
                b <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2200ns
                WAIT FOR 300 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2400ns
                WAIT FOR 200 ns;
                a <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2700ns
                WAIT FOR 300 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2800ns
                WAIT FOR 100 ns;
                a <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3000ns
                WAIT FOR 200 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3400ns
                WAIT FOR 400 ns;
                a <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3600ns
                WAIT FOR 200 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4000ns
                WAIT FOR 400 ns;
                b <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4500ns
                WAIT FOR 500 ns;
                a <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4600ns
                WAIT FOR 100 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5400ns
                WAIT FOR 800 ns;
                a <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5800ns
                WAIT FOR 400 ns;
                b <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6100ns
                WAIT FOR 300 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6400ns
                WAIT FOR 300 ns;
                a <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6700ns
                WAIT FOR 300 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7300ns
                WAIT FOR 600 ns;
                a <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8100ns
                WAIT FOR 800 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8200ns
                WAIT FOR 100 ns;
                a <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8400ns
                WAIT FOR 200 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8600ns
                WAIT FOR 200 ns;
                a <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8700ns
                WAIT FOR 100 ns;
                b <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8800ns
                WAIT FOR 100 ns;
                a <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8900ns
                WAIT FOR 100 ns;
                a <= '0';
                -- -------------------------------------
                WAIT FOR 1100 ns;

            END PROCESS;

    END testbench_arch;

