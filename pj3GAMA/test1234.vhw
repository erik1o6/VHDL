--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : test1234.vhw
-- /___/   /\     Timestamp : Mon Oct 01 13:57:11 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: test1234
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY test1234 IS
END test1234;

ARCHITECTURE testbench_arch OF test1234 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ea4bitFrequencyCounter
        PORT (
            ck : In std_logic;
            reset : In std_logic;
            d : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL ck : std_logic := '0';
    SIGNAL reset : std_logic := '0';
    SIGNAL d : std_logic_vector (3 DownTo 0) := "0000";

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : ea4bitFrequencyCounter
        PORT MAP (
            ck => ck,
            reset => reset,
            d => d
        );

        PROCESS    -- clock process for ck
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                ck <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                ck <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                WAIT FOR 10200 ns;

            END PROCESS;

    END testbench_arch;

