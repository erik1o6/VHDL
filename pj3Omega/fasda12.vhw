--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : fasda12.vhw
-- /___/   /\     Timestamp : Tue Oct 02 16:18:55 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: fasda12
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY fasda12 IS
END fasda12;

ARCHITECTURE testbench_arch OF fasda12 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ufm6bit
        PORT (
            ckm : In std_logic;
            rb : In std_logic;
            b : In std_logic_vector (5 DownTo 0);
            s : In std_logic_vector (1 DownTo 0);
            testCK : Out std_logic;
            testF : Out std_logic_vector (3 DownTo 0);
            testA : Out std_logic_vector (5 DownTo 0);
            d : Out std_logic_vector (5 DownTo 0)
        );
    END COMPONENT;

    SIGNAL ckm : std_logic := '0';
    SIGNAL rb : std_logic := '0';
    SIGNAL b : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL s : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL testCK : std_logic := '0';
    SIGNAL testF : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL testA : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL d : std_logic_vector (5 DownTo 0) := "000000";

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : ufm6bit
        PORT MAP (
            ckm => ckm,
            rb => rb,
            b => b,
            s => s,
            testCK => testCK,
            testF => testF,
            testA => testA,
            d => d
        );

        PROCESS    -- clock process for ckm
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                ckm <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                ckm <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                WAIT FOR 1200 ns;

            END PROCESS;

    END testbench_arch;

