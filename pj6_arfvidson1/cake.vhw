--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : cake.vhw
-- /___/   /\     Timestamp : Wed Nov 14 18:14:08 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: cake
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY cake IS
END cake;

ARCHITECTURE testbench_arch OF cake IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT r2s8mt
        PORT (
            resetb : In std_logic;
            clock : In std_logic;
            asb : Out std_logic;
            rw : Out std_logic;
            iadr : Out std_logic_vector (5 DownTo 0);
            madr : Out std_logic_vector (5 DownTo 0);
            mdat : Out std_logic_vector (5 DownTo 0);
            input : In std_logic_vector (5 DownTo 0);
            output : Out std_logic_vector (5 DownTo 0);
            RIR : Out std_logic;
            WIR : Out std_logic;
            RPC : Out std_logic;
            CPC : Out std_logic;
            SDM0 : Out std_logic;
            SDM1 : Out std_logic;
            WDR : Out std_logic;
            DOE : Out std_logic;
            SPC : Out std_logic;
            WC : Out std_logic;
            CF : Out std_logic
        );
    END COMPONENT;

    SIGNAL resetb : std_logic := '0';
    SIGNAL clock : std_logic := '0';
    SIGNAL asb : std_logic := '0';
    SIGNAL rw : std_logic := '0';
    SIGNAL iadr : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL madr : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL mdat : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL input : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL output : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL RIR : std_logic := '0';
    SIGNAL WIR : std_logic := '0';
    SIGNAL RPC : std_logic := '0';
    SIGNAL CPC : std_logic := '0';
    SIGNAL SDM0 : std_logic := '0';
    SIGNAL SDM1 : std_logic := '0';
    SIGNAL WDR : std_logic := '0';
    SIGNAL DOE : std_logic := '0';
    SIGNAL SPC : std_logic := '0';
    SIGNAL WC : std_logic := '0';
    SIGNAL CF : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : r2s8mt
        PORT MAP (
            resetb => resetb,
            clock => clock,
            asb => asb,
            rw => rw,
            iadr => iadr,
            madr => madr,
            mdat => mdat,
            input => input,
            output => output,
            RIR => RIR,
            WIR => WIR,
            RPC => RPC,
            CPC => CPC,
            SDM0 => SDM0,
            SDM1 => SDM1,
            WDR => WDR,
            DOE => DOE,
            SPC => SPC,
            WC => WC,
            CF => CF
        );

        PROCESS    -- clock process for clock
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                clock <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                clock <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  385ns
                WAIT FOR 385 ns;
                resetb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  785ns
                WAIT FOR 400 ns;
                resetb <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1185ns
                WAIT FOR 400 ns;
                resetb <= '1';
                -- -------------------------------------
                WAIT FOR 9015 ns;

            END PROCESS;

    END testbench_arch;

