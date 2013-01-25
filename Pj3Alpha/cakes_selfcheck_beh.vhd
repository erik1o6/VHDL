--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : cakes_selfcheck.vhw
-- /___/   /\     Timestamp : Mon Sep 17 11:16:38 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: cakes_selfcheck_beh
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY cakes_selfcheck_beh IS
END cakes_selfcheck_beh;

ARCHITECTURE testbench_arch OF cakes_selfcheck_beh IS
    COMPONENT eaDlatch
        PORT (
            Din : In std_logic;
            W : In std_logic;
            Q : Out std_logic
        );
    END COMPONENT;

    SIGNAL Din : std_logic := '0';
    SIGNAL W : std_logic := '0';
    SIGNAL Q : std_logic := 'U';

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    BEGIN
        UUT : eaDlatch
        PORT MAP (
            Din => Din,
            W => W,
            Q => Q
        );

        PROCESS
            PROCEDURE CHECK_Q(
                next_Q : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (Q /= next_Q) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns Q="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, Q);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_Q);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  600ns
                WAIT FOR 600 ns;
                Din <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 1000 ns;
                Din <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2100ns
                WAIT FOR 500 ns;
                Din <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3100ns
                WAIT FOR 1000 ns;
                Din <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3600ns
                WAIT FOR 500 ns;
                Din <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4600ns
                WAIT FOR 1000 ns;
                Din <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4800ns
                WAIT FOR 200 ns;
                W <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4850ns
                WAIT FOR 50 ns;
                CHECK_Q('0', 4850);
                -- -------------------------------------
                -- -------------  Current Time:  5100ns
                WAIT FOR 250 ns;
                Din <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5150ns
                WAIT FOR 50 ns;
                CHECK_Q('1', 5150);
                -- -------------------------------------
                -- -------------  Current Time:  6100ns
                WAIT FOR 950 ns;
                Din <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6150ns
                WAIT FOR 50 ns;
                CHECK_Q('0', 6150);
                -- -------------------------------------
                -- -------------  Current Time:  6600ns
                WAIT FOR 450 ns;
                Din <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6650ns
                WAIT FOR 50 ns;
                CHECK_Q('1', 6650);
                -- -------------------------------------
                -- -------------  Current Time:  7600ns
                WAIT FOR 950 ns;
                Din <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  7650ns
                WAIT FOR 50 ns;
                CHECK_Q('0', 7650);
                -- -------------------------------------
                -- -------------  Current Time:  8100ns
                WAIT FOR 450 ns;
                Din <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8150ns
                WAIT FOR 50 ns;
                CHECK_Q('1', 8150);
                -- -------------------------------------
                -- -------------  Current Time:  9100ns
                WAIT FOR 950 ns;
                Din <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9150ns
                WAIT FOR 50 ns;
                CHECK_Q('0', 9150);
                -- -------------------------------------
                -- -------------  Current Time:  9600ns
                WAIT FOR 450 ns;
                Din <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  9650ns
                WAIT FOR 50 ns;
                CHECK_Q('1', 9650);
                -- -------------------------------------
                WAIT FOR 350 ns;

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;

