--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : test1.vhw
-- /___/   /\     Timestamp : Thu Dec 06 03:01:50 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: test1
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY test1 IS
END test1;

ARCHITECTURE testbench_arch OF test1 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT eaRisc
        PORT (
            input : In std_logic_vector (5 DownTo 0);
            output : Out std_logic_vector (5 DownTo 0);
            rsm : In std_logic;
            csm : In std_logic;
            iadr : Out std_logic_vector (5 DownTo 0);
            dat0 : Out std_logic_vector (5 DownTo 0);
            dat1 : Out std_logic_vector (5 DownTo 0);
            dat2 : Out std_logic_vector (5 DownTo 0);
            adat : Out std_logic_vector (5 DownTo 0);
            sdat : Out std_logic_vector (5 DownTo 0);
            ddat : Out std_logic_vector (5 DownTo 0);
            dx0 : Out std_logic;
            dx1 : Out std_logic;
            mdw : Out std_logic;
            bx : Out std_logic;
            wc : Out std_logic;
            cf : Out std_logic;
            wot : Out std_logic;
            sub : Out std_logic;
            pres : Out std_logic;
            pck : Out std_logic
        );
    END COMPONENT;

    SIGNAL input : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL output : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL rsm : std_logic := '0';
    SIGNAL csm : std_logic := '0';
    SIGNAL iadr : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL dat0 : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL dat1 : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL dat2 : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL adat : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL sdat : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL ddat : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL dx0 : std_logic := '0';
    SIGNAL dx1 : std_logic := '0';
    SIGNAL mdw : std_logic := '0';
    SIGNAL bx : std_logic := '0';
    SIGNAL wc : std_logic := '0';
    SIGNAL cf : std_logic := '0';
    SIGNAL wot : std_logic := '0';
    SIGNAL sub : std_logic := '0';
    SIGNAL pres : std_logic := '0';
    SIGNAL pck : std_logic := '0';

    constant PERIOD : time := 2000 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : eaRisc
        PORT MAP (
            input => input,
            output => output,
            rsm => rsm,
            csm => csm,
            iadr => iadr,
            dat0 => dat0,
            dat1 => dat1,
            dat2 => dat2,
            adat => adat,
            sdat => sdat,
            ddat => ddat,
            dx0 => dx0,
            dx1 => dx1,
            mdw => mdw,
            bx => bx,
            wc => wc,
            cf => cf,
            wot => wot,
            sub => sub,
            pres => pres,
            pck => pck
        );

        PROCESS    -- clock process for csm
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                csm <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                csm <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  5085ns
                WAIT FOR 5085 ns;
                rsm <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  11085ns
                WAIT FOR 6000 ns;
                input <= "000100";
                -- -------------------------------------
                -- -------------  Current Time:  25085ns
                WAIT FOR 14000 ns;
                input <= "010100";
                -- -------------------------------------
                WAIT FOR 76915 ns;

            END PROCESS;

    END testbench_arch;

