--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : lolfd.vhw
-- /___/   /\     Timestamp : Tue Oct 02 15:20:27 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: lolfd
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY lolfd IS
END lolfd;

ARCHITECTURE testbench_arch OF lolfd IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ea6bitMUX
        PORT (
            D0 : In std_logic_vector (5 DownTo 0);
            D1 : In std_logic_vector (5 DownTo 0);
            S : In std_logic_vector (5 DownTo 0);
            Z : Out std_logic_vector (5 DownTo 0)
        );
    END COMPONENT;

    SIGNAL D0 : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL D1 : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL S : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL Z : std_logic_vector (5 DownTo 0) := "000000";

    BEGIN
        UUT : ea6bitMUX
        PORT MAP (
            D0 => D0,
            D1 => D1,
            S => S,
            Z => Z
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  600ns
                WAIT FOR 600 ns;
                S <= "000010";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                S <= "000011";
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 500 ns;
                D0 <= "010000";
                D1 <= "000100";
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 600 ns;
                S <= "001011";
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 100 ns;
                D1 <= "000110";
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 100 ns;
                D0 <= "010100";
                -- -------------------------------------
                -- -------------  Current Time:  2100ns
                WAIT FOR 100 ns;
                D1 <= "001110";
                -- -------------------------------------
                -- -------------  Current Time:  2300ns
                WAIT FOR 200 ns;
                S <= "011011";
                -- -------------------------------------
                -- -------------  Current Time:  2500ns
                WAIT FOR 200 ns;
                S <= "111011";
                -- -------------------------------------
                -- -------------  Current Time:  3100ns
                WAIT FOR 600 ns;
                D0 <= "011100";
                -- -------------------------------------
                -- -------------  Current Time:  3500ns
                WAIT FOR 400 ns;
                D1 <= "101110";
                -- -------------------------------------
                WAIT FOR 6500 ns;

            END PROCESS;

    END testbench_arch;

