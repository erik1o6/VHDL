--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : eaTest00.vhw
-- /___/   /\     Timestamp : Thu Sep 13 18:46:25 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: eaTest00
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY eaTest00 IS
END eaTest00;

ARCHITECTURE testbench_arch OF eaTest00 IS
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
                -- -------------  Current Time:  1200ns
                WAIT FOR 1200 ns;
                Cin <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 400 ns;
                B <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 400 ns;
                RESET <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2800ns
                WAIT FOR 800 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3600ns
                WAIT FOR 800 ns;
                RESET <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3900ns
                WAIT FOR 300 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4200ns
                WAIT FOR 300 ns;
                RESET <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4300ns
                WAIT FOR 100 ns;
                Cin <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4800ns
                WAIT FOR 500 ns;
                CLK <= '1';
                RESET <= '0';
                Cin <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5000ns
                WAIT FOR 200 ns;
                Cin <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5100ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5300ns
                WAIT FOR 200 ns;
                RESET <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5900ns
                WAIT FOR 600 ns;
                Cin <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6600ns
                WAIT FOR 700 ns;
                CLK <= '1';
                -- -------------------------------------
                WAIT FOR 3400 ns;

            END PROCESS;

    END testbench_arch;

