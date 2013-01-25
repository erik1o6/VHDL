--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : lollol.vhw
-- /___/   /\     Timestamp : Tue Oct 02 21:15:02 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: lollol
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY lollol IS
END lollol;

ARCHITECTURE testbench_arch OF lollol IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ufm6bit
        PORT (
            ckm : In std_logic;
            rb : In std_logic;
            b : In std_logic_vector (5 DownTo 0);
            s : In std_logic_vector (1 DownTo 0);
            d : Out std_logic_vector (5 DownTo 0)
        );
    END COMPONENT;

    SIGNAL ckm : std_logic := '0';
    SIGNAL rb : std_logic := '0';
    SIGNAL b : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL s : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL d : std_logic_vector (5 DownTo 0) := "000000";

    constant PERIOD : time := 2000 ps;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ps;

    BEGIN
        UUT : ufm6bit
        PORT MAP (
            ckm => ckm,
            rb => rb,
            b => b,
            s => s,
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
                -- -------------  Current Time:  7085ps
                WAIT FOR 7085 ps;
                rb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  25085ps
                WAIT FOR 18000 ps;
                rb <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  49085ps
                WAIT FOR 24000 ps;
                rb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  59085ps
                WAIT FOR 10000 ps;
                b <= "000001";
                -- -------------------------------------
                -- -------------  Current Time:  1.45309e+006ps
                WAIT FOR 1.394e+006 ps;
                s <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  3.30709e+006ps
                WAIT FOR 1.854e+006 ps;
                s <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  5.31109e+006ps
                WAIT FOR 2.004e+006 ps;
                s <= "10";
                -- -------------------------------------
                WAIT FOR 4.69092e+006 ps;

            END PROCESS;

    END testbench_arch;

