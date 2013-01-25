--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : new.vhw
-- /___/   /\     Timestamp : Mon Sep 17 09:11:48 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: new
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY new IS
END new;

ARCHITECTURE testbench_arch OF new IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ea2to1MUX
        PORT (
            D0 : In std_logic;
            D1 : In std_logic;
            S : In std_logic;
            Z : Out std_logic
        );
    END COMPONENT;

    SIGNAL D0 : std_logic := '0';
    SIGNAL D1 : std_logic := '0';
    SIGNAL S : std_logic := '0';
    SIGNAL Z : std_logic := '0';

    BEGIN
        UUT : ea2to1MUX
        PORT MAP (
            D0 => D0,
            D1 => D1,
            S => S,
            Z => Z
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  1000ns
                WAIT FOR 1000 ns;
                D0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2700ns
                WAIT FOR 1700 ns;
                D0 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3300ns
                WAIT FOR 600 ns;
                D1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4400ns
                WAIT FOR 1100 ns;
                D0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5100ns
                WAIT FOR 700 ns;
                D1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6200ns
                WAIT FOR 1100 ns;
                D0 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6600ns
                WAIT FOR 400 ns;
                D1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7200ns
                WAIT FOR 600 ns;
                D0 <= '1';
                -- -------------------------------------
                WAIT FOR 2800 ns;

            END PROCESS;

    END testbench_arch;

