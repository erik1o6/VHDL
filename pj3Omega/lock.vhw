--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : lock.vhw
-- /___/   /\     Timestamp : Tue Oct 02 20:24:17 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: lock
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY lock IS
END lock;

ARCHITECTURE testbench_arch OF lock IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ea4bitFrequencyCounter
        PORT (
            ck : In std_logic;
            RESET : In std_logic;
            TESTA : Out std_logic;
            TESTB : Out std_logic;
            TESTC : Out std_logic;
            d : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL ck : std_logic := '0';
    SIGNAL RESET : std_logic := '0';
    SIGNAL TESTA : std_logic := '0';
    SIGNAL TESTB : std_logic := '0';
    SIGNAL TESTC : std_logic := '0';
    SIGNAL d : std_logic_vector (3 DownTo 0) := "0000";

    constant PERIOD : time := 2000 ps;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ps;

    BEGIN
        UUT : ea4bitFrequencyCounter
        PORT MAP (
            ck => ck,
            RESET => RESET,
            TESTA => TESTA,
            TESTB => TESTB,
            TESTC => TESTC,
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
                -- -------------  Current Time:  9085ps
                WAIT FOR 9085 ps;
                RESET <= '1';
                -- -------------------------------------
                WAIT FOR 992915 ps;

            END PROCESS;

    END testbench_arch;

