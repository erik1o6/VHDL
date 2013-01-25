--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : lol232.vhw
-- /___/   /\     Timestamp : Tue Oct 02 15:06:26 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: lol232
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY lol232 IS
END lol232;

ARCHITECTURE testbench_arch OF lol232 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT eaadd6bit
        PORT (
            ci : In std_logic;
            a : In std_logic_vector (5 DownTo 0);
            b : In std_logic_vector (5 DownTo 0);
            s : Out std_logic_vector (5 DownTo 0);
            co : Out std_logic
        );
    END COMPONENT;

    SIGNAL ci : std_logic := '0';
    SIGNAL a : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL b : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL s : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL co : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : eaadd6bit
        PORT MAP (
            ci => ci,
            a => a,
            b => b,
            s => s,
            co => co
        );

        PROCESS    -- clock process for ci
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                ci <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                ci <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  185ns
                WAIT FOR 185 ns;
                b <= "000001";
                -- -------------------------------------
                -- -------------  Current Time:  1185ns
                WAIT FOR 1000 ns;
                b <= "000011";
                -- -------------------------------------
                -- -------------  Current Time:  2785ns
                WAIT FOR 1600 ns;
                b <= "001011";
                -- -------------------------------------
                WAIT FOR 7415 ns;

            END PROCESS;

    END testbench_arch;

