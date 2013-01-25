--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : loro23.vhw
-- /___/   /\     Timestamp : Thu Oct 11 00:09:24 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: loro23
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY loro23 IS
END loro23;

ARCHITECTURE testbench_arch OF loro23 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ea5to32Decoder
        PORT (
            A : In std_logic_vector (4 DownTo 0);
            csb : In std_logic;
            Z : Out std_logic_vector (31 DownTo 0)
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (4 DownTo 0) := "00000";
    SIGNAL csb : std_logic := '0';
    SIGNAL Z : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";

    BEGIN
        UUT : ea5to32Decoder
        PORT MAP (
            A => A,
            csb => csb,
            Z => Z
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  300ns
                WAIT FOR 300 ns;
                csb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 400 ns;
                csb <= '0';
                A <= "10000";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 600 ns;
                csb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 200 ns;
                A <= "10100";
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 500 ns;
                A <= "10101";
                -- -------------------------------------
                -- -------------  Current Time:  2500ns
                WAIT FOR 500 ns;
                A <= "10111";
                -- -------------------------------------
                -- -------------  Current Time:  2800ns
                WAIT FOR 300 ns;
                A <= "00111";
                -- -------------------------------------
                -- -------------  Current Time:  3100ns
                WAIT FOR 300 ns;
                A <= "01111";
                -- -------------------------------------
                -- -------------  Current Time:  3500ns
                WAIT FOR 400 ns;
                A <= "01101";
                -- -------------------------------------
                -- -------------  Current Time:  3900ns
                WAIT FOR 400 ns;
                A <= "01100";
                -- -------------------------------------
                -- -------------  Current Time:  4200ns
                WAIT FOR 300 ns;
                A <= "01000";
                -- -------------------------------------
                -- -------------  Current Time:  4400ns
                WAIT FOR 200 ns;
                A <= "01010";
                -- -------------------------------------
                -- -------------  Current Time:  4500ns
                WAIT FOR 100 ns;
                A <= "11111";
                -- -------------------------------------
                -- -------------  Current Time:  4600ns
                WAIT FOR 100 ns;
                A <= "11110";
                -- -------------------------------------
                -- -------------  Current Time:  4700ns
                WAIT FOR 100 ns;
                A <= "11101";
                -- -------------------------------------
                -- -------------  Current Time:  4800ns
                WAIT FOR 100 ns;
                A <= "11100";
                -- -------------------------------------
                -- -------------  Current Time:  4900ns
                WAIT FOR 100 ns;
                A <= "11011";
                -- -------------------------------------
                -- -------------  Current Time:  5000ns
                WAIT FOR 100 ns;
                A <= "11010";
                -- -------------------------------------
                -- -------------  Current Time:  5100ns
                WAIT FOR 100 ns;
                A <= "11001";
                -- -------------------------------------
                -- -------------  Current Time:  5200ns
                WAIT FOR 100 ns;
                A <= "11000";
                -- -------------------------------------
                WAIT FOR 4800 ns;

            END PROCESS;

    END testbench_arch;

