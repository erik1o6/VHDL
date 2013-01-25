--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : kitty1.vhw
-- /___/   /\     Timestamp : Mon Nov 12 19:53:48 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: kitty1
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY kitty1 IS
END kitty1;

ARCHITECTURE testbench_arch OF kitty1 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT smicro
        PORT (
            resetb : In std_logic;
            clock : In std_logic;
            asb : Out std_logic;
            rw : Out std_logic;
            iadr : Out std_logic_vector (5 DownTo 0);
            idat : Out std_logic_vector (5 DownTo 0);
            madr : Out std_logic_vector (5 DownTo 0);
            mdat : Out std_logic_vector (5 DownTo 0);
            RIR : Out std_logic;
            WIR : Out std_logic;
            RPC : Out std_logic;
            CPC : Out std_logic;
            SDM : Out std_logic;
            WDR : Out std_logic;
            TEST : Out std_logic_vector (5 DownTo 0);
            DOE : Out std_logic;
            SPC : Out std_logic;
            CF : Out std_logic;
            WC : Out std_logic;
            SUB : Out std_logic;
            SDM1 : Out std_logic;
            input : In std_logic_vector (5 DownTo 0);
            output : Out std_logic_vector (5 DownTo 0);
            DMUXO : Out std_logic_vector (5 DownTo 0);
            SUBOUT : Out std_logic_vector (5 DownTo 0);
            SUBOUTC : Out std_logic
        );
    END COMPONENT;

    SIGNAL resetb : std_logic := '0';
    SIGNAL clock : std_logic := '0';
    SIGNAL asb : std_logic := '0';
    SIGNAL rw : std_logic := '0';
    SIGNAL iadr : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL idat : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL madr : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL mdat : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL RIR : std_logic := '0';
    SIGNAL WIR : std_logic := '0';
    SIGNAL RPC : std_logic := '0';
    SIGNAL CPC : std_logic := '0';
    SIGNAL SDM : std_logic := '0';
    SIGNAL WDR : std_logic := '0';
    SIGNAL TEST : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL DOE : std_logic := '0';
    SIGNAL SPC : std_logic := '0';
    SIGNAL CF : std_logic := '0';
    SIGNAL WC : std_logic := '0';
    SIGNAL SUB : std_logic := '0';
    SIGNAL SDM1 : std_logic := '0';
    SIGNAL input : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL output : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL DMUXO : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL SUBOUT : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL SUBOUTC : std_logic := '0';

    constant PERIOD : time := 2000 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : smicro
        PORT MAP (
            resetb => resetb,
            clock => clock,
            asb => asb,
            rw => rw,
            iadr => iadr,
            idat => idat,
            madr => madr,
            mdat => mdat,
            RIR => RIR,
            WIR => WIR,
            RPC => RPC,
            CPC => CPC,
            SDM => SDM,
            WDR => WDR,
            TEST => TEST,
            DOE => DOE,
            SPC => SPC,
            CF => CF,
            WC => WC,
            SUB => SUB,
            SDM1 => SDM1,
            input => input,
            output => output,
            DMUXO => DMUXO,
            SUBOUT => SUBOUT,
            SUBOUTC => SUBOUTC
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
                -- -------------  Current Time:  1085ns
                WAIT FOR 1085 ns;
                resetb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7085ns
                WAIT FOR 6000 ns;
                resetb <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  13085ns
                WAIT FOR 6000 ns;
                resetb <= '1';
                -- -------------------------------------
                WAIT FOR 138915 ns;

            END PROCESS;

    END testbench_arch;

