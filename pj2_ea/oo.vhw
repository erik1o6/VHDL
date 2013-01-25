--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : oo.vhw
-- /___/   /\     Timestamp : Mon Sep 17 09:10:40 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: oo
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY oo IS
END oo;

ARCHITECTURE testbench_arch OF oo IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ea2to1MUX
        PORT (
            D0 : In std_logic;
            D1 : In std_logic;
            S : In std_logic;
            Z : Out std_logic
        );
    END COMPONENT;

    SIGNAL D0 : std_logic := '0';
    SIGNAL D1 : std_logic := '0';
    SIGNAL S : std_logic := '0';
    SIGNAL Z : std_logic := '0';

    BEGIN
        UUT : ea2to1MUX
        PORT MAP (
            D0 => D0,
            D1 => D1,
            S => S,
            Z => Z
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  900ns
                WAIT FOR 900 ns;
                D0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 300 ns;
                D1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 700 ns;
                D0 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2400ns
                WAIT FOR 500 ns;
                D0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3400ns
                WAIT FOR 1000 ns;
                D0 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3500ns
                WAIT FOR 100 ns;
                D1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3900ns
                WAIT FOR 400 ns;
                D0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4600ns
                WAIT FOR 700 ns;
                S <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4900ns
                WAIT FOR 300 ns;
                D0 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5400ns
                WAIT FOR 500 ns;
                D0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5500ns
                WAIT FOR 100 ns;
                D1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6400ns
                WAIT FOR 900 ns;
                D0 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6500ns
                WAIT FOR 100 ns;
                D1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6900ns
                WAIT FOR 400 ns;
                D0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7900ns
                WAIT FOR 1000 ns;
                D0 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8400ns
                WAIT FOR 500 ns;
                D0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8500ns
                WAIT FOR 100 ns;
                D1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  9400ns
                WAIT FOR 900 ns;
                D0 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9500ns
                WAIT FOR 100 ns;
                D1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9900ns
                WAIT FOR 400 ns;
                D0 <= '1';
                -- -------------------------------------
                WAIT FOR 100 ns;

            END PROCESS;

    END testbench_arch;

