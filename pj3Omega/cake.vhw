--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : cake.vhw
-- /___/   /\     Timestamp : Tue Oct 02 14:51:18 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: cake
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY cake IS
END cake;

ARCHITECTURE testbench_arch OF cake IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ea6PCf
        PORT (
            CLK : In std_logic;
            RESET : In std_logic;
            Cin : In std_logic;
            B : In std_logic_vector (5 DownTo 0);
            SUM : Out std_logic_vector (5 DownTo 0);
            C : Out std_logic_vector (5 DownTo 0);
            A : Out std_logic_vector (5 DownTo 0)
        );
    END COMPONENT;

    SIGNAL CLK : std_logic := '0';
    SIGNAL RESET : std_logic := '0';
    SIGNAL Cin : std_logic := '0';
    SIGNAL B : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL SUM : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL C : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL A : std_logic_vector (5 DownTo 0) := "000000";

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : ea6PCf
        PORT MAP (
            CLK => CLK,
            RESET => RESET,
            Cin => Cin,
            B => B,
            SUM => SUM,
            C => C,
            A => A
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
                RESET <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  785ns
                WAIT FOR 600 ns;
                B <= "000001";
                -- -------------------------------------
                WAIT FOR 9415 ns;

            END PROCESS;

    END testbench_arch;
