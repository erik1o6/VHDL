--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : testfinal.vhw
-- /___/   /\     Timestamp : Tue Oct 02 01:08:40 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: testfinal
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY testfinal IS
END testfinal;

ARCHITECTURE testbench_arch OF testfinal IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT eaUltraMultiplier
        PORT (
            B : In std_logic_vector (5 DownTo 0);
            Reset : In std_logic;
            CKm : In std_logic;
            S1 : In std_logic;
            S0 : In std_logic;
            D : Out std_logic_vector (5 DownTo 0)
        );
    END COMPONENT;

    SIGNAL B : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL Reset : std_logic := '0';
    SIGNAL CKm : std_logic := '0';
    SIGNAL S1 : std_logic := '0';
    SIGNAL S0 : std_logic := '0';
    SIGNAL D : std_logic_vector (5 DownTo 0) := "000000";

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : eaUltraMultiplier
        PORT MAP (
            B => B,
            Reset => Reset,
            CKm => CKm,
            S1 => S1,
            S0 => S0,
            D => D
        );

        PROCESS    -- clock process for CKm
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CKm <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CKm <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  185ns
                WAIT FOR 185 ns;
                Reset <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  785ns
                WAIT FOR 600 ns;
                B <= "000001";
                -- -------------------------------------
                WAIT FOR 9415 ns;

            END PROCESS;

    END testbench_arch;

