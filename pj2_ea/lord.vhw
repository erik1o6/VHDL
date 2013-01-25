--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : lord.vhw
-- /___/   /\     Timestamp : Mon Sep 17 09:22:16 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: lord
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY lord IS
END lord;

ARCHITECTURE testbench_arch OF lord IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT eaPC
        PORT (
            CLK : In std_logic;
            RESET : In std_logic;
            Cin : In std_logic;
            B : In std_logic_vector (3 DownTo 0);
            A : Out std_logic_vector (3 DownTo 0);
            C : Out std_logic_vector (3 DownTo 0);
            SUM : Out std_logic_vector (3 DownTo 0);
            Cout : Out std_logic
        );
    END COMPONENT;

    SIGNAL CLK : std_logic := '0';
    SIGNAL RESET : std_logic := '0';
    SIGNAL Cin : std_logic := '0';
    SIGNAL B : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL A : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL C : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL SUM : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL Cout : std_logic := '0';

    BEGIN
        UUT : eaPC
        PORT MAP (
            CLK => CLK,
            RESET => RESET,
            Cin => Cin,
            B => B,
            A => A,
            C => C,
            SUM => SUM,
            Cout => Cout
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  300ns
                WAIT FOR 300 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 200 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2100ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2200ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2300ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2400ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2500ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2600ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2700ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2800ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2900ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3000ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3100ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3200ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3300ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3400ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3500ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                WAIT FOR 6500 ns;

            END PROCESS;

    END testbench_arch;

