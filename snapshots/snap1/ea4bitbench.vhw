--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : ea4bitbench.vhw
-- /___/   /\     Timestamp : Thu Sep 13 12:26:16 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: ea4bitbench
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY ea4bitbench IS
END ea4bitbench;

ARCHITECTURE testbench_arch OF ea4bitbench IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ea4bitMUX
        PORT (
            D0 : In std_logic_vector (3 DownTo 0);
            D1 : In std_logic_vector (3 DownTo 0);
            S : In std_logic_vector (3 DownTo 0);
            Z : Out std_logic
        );
    END COMPONENT;

    SIGNAL D0 : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL D1 : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL S : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL Z : std_logic := '0';

    BEGIN
        UUT : ea4bitMUX
        PORT MAP (
            D0 => D0,
            D1 => D1,
            S => S,
            Z => Z
        );

        PROCESS
            BEGIN
                WAIT FOR 10000 ns;

            END PROCESS;

    END testbench_arch;

