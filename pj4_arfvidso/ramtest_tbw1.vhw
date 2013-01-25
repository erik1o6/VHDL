--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : ramtest_tbw1.vhw
-- /___/   /\     Timestamp : Thu Oct 11 10:08:34 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: ramtest_tbw1
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY ramtest_tbw1 IS
END ramtest_tbw1;

ARCHITECTURE testbench_arch OF ramtest_tbw1 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ramtest
        PORT (
            a : In std_logic_vector (5 DownTo 0);
            rw : In std_logic;
            csb : In std_logic;
            oeb : In std_logic;
            j : In std_logic_vector (5 DownTo 0);
            joe : In std_logic;
            d : InOut std_logic_vector (5 DownTo 0)
        );
    END COMPONENT;

    SIGNAL a : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL rw : std_logic := '0';
    SIGNAL csb : std_logic := '0';
    SIGNAL oeb : std_logic := '0';
    SIGNAL j : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL joe : std_logic := '0';
    SIGNAL d : std_logic_vector (5 DownTo 0) := "ZZZZZZ";

    BEGIN
        UUT : ramtest
        PORT MAP (
            a => a,
            rw => rw,
            csb => csb,
            oeb => oeb,
            j => j,
            joe => joe,
            d => d
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                rw <= '1';
                csb <= '1';
                oeb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 300 ns;
                j <= "000010";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                a <= "000011";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                csb <= '0';
                joe <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 200 ns;
                rw <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 200 ns;
                rw <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 300 ns;
                csb <= '1';
                joe <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 300 ns;
                joe <= '1';
                a <= "010010";
                j <= "000111";
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 100 ns;
                csb <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 200 ns;
                rw <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2100ns
                WAIT FOR 200 ns;
                rw <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2300ns
                WAIT FOR 200 ns;
                csb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2500ns
                WAIT FOR 200 ns;
                joe <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2800ns
                WAIT FOR 300 ns;
                joe <= '1';
                a <= "100010";
                j <= "010111";
                -- -------------------------------------
                -- -------------  Current Time:  2900ns
                WAIT FOR 100 ns;
                csb <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3200ns
                WAIT FOR 300 ns;
                rw <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3300ns
                WAIT FOR 100 ns;
                rw <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3600ns
                WAIT FOR 300 ns;
                csb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3700ns
                WAIT FOR 100 ns;
                joe <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4100ns
                WAIT FOR 400 ns;
                csb <= '0';
                a <= "000011";
                -- -------------------------------------
                -- -------------  Current Time:  4300ns
                WAIT FOR 200 ns;
                oeb <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4800ns
                WAIT FOR 500 ns;
                oeb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5000ns
                WAIT FOR 200 ns;
                csb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5200ns
                WAIT FOR 200 ns;
                a <= "010010";
                -- -------------------------------------
                -- -------------  Current Time:  5300ns
                WAIT FOR 100 ns;
                csb <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5500ns
                WAIT FOR 200 ns;
                oeb <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5700ns
                WAIT FOR 200 ns;
                oeb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5900ns
                WAIT FOR 200 ns;
                csb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6100ns
                WAIT FOR 200 ns;
                a <= "100010";
                -- -------------------------------------
                -- -------------  Current Time:  6200ns
                WAIT FOR 100 ns;
                csb <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6300ns
                WAIT FOR 100 ns;
                oeb <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6800ns
                WAIT FOR 500 ns;
                oeb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7000ns
                WAIT FOR 200 ns;
                csb <= '1';
                -- -------------------------------------
                WAIT FOR 3000 ns;

            END PROCESS;

    END testbench_arch;

