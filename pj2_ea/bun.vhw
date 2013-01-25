--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : bun.vhw
-- /___/   /\     Timestamp : Tue Sep 18 09:22:43 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: bun
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY bun IS
END bun;

ARCHITECTURE testbench_arch OF bun IS
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

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

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

        PROCESS    -- clock process for CLK
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLK <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLK <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  185ns
                WAIT FOR 185 ns;
                B <= "1000";
                -- -------------------------------------
                -- -------------  Current Time:  385ns
                WAIT FOR 200 ns;
                B <= "0000";
                -- -------------------------------------
                -- -------------  Current Time:  585ns
                WAIT FOR 200 ns;
                B <= "0010";
                -- -------------------------------------
                WAIT FOR 615 ns;

            END PROCESS;

    END testbench_arch;
