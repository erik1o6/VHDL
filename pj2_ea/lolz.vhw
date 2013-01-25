--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : lolz.vhw
-- /___/   /\     Timestamp : Mon Sep 17 11:45:57 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: lolz
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY lolz IS
END lolz;

ARCHITECTURE testbench_arch OF lolz IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ea4Dlatch
        PORT (
            A : In std_logic_vector (3 DownTo 0);
            CLK : In std_logic;
            Q : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL CLK : std_logic := '0';
    SIGNAL Q : std_logic_vector (3 DownTo 0) := "0000";

    BEGIN
        UUT : ea4Dlatch
        PORT MAP (
            A => A,
            CLK => CLK,
            Q => Q
        );

        PROCESS
            BEGIN
                WAIT FOR 10000 ns;

            END PROCESS;

    END testbench_arch;

