--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : loll23.vhw
-- /___/   /\     Timestamp : Tue Oct 02 15:14:05 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: loll23
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY loll23 IS
END loll23;

ARCHITECTURE testbench_arch OF loll23 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ea6Flip
        PORT (
            A : In std_logic_vector (5 DownTo 0);
            CLK : In std_logic;
            Q : Out std_logic_vector (5 DownTo 0)
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL CLK : std_logic := '0';
    SIGNAL Q : std_logic_vector (5 DownTo 0) := "000000";

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : ea6Flip
        PORT MAP (
            A => A,
            CLK => CLK,
            Q => Q
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
                A <= "010000";
                -- -------------------------------------
                -- -------------  Current Time:  985ns
                WAIT FOR 800 ns;
                A <= "010100";
                -- -------------------------------------
                -- -------------  Current Time:  1985ns
                WAIT FOR 1000 ns;
                A <= "010110";
                -- -------------------------------------
                WAIT FOR 8215 ns;

            END PROCESS;

    END testbench_arch;

