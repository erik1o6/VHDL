--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : lor212_selfcheck.vhw
-- /___/   /\     Timestamp : Tue Nov 13 00:10:44 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: lor212_selfcheck
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY lor212_selfcheck IS
END lor212_selfcheck;

ARCHITECTURE testbench_arch OF lor212_selfcheck IS
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
    SIGNAL asb : std_logic := 'U';
    SIGNAL rw : std_logic := 'U';
    SIGNAL iadr : std_logic_vector (5 DownTo 0) := "UUUUUU";
    SIGNAL idat : std_logic_vector (5 DownTo 0) := "UUUUUU";
    SIGNAL madr : std_logic_vector (5 DownTo 0) := "UUUUUU";
    SIGNAL mdat : std_logic_vector (5 DownTo 0) := "UUUUUU";
    SIGNAL RIR : std_logic := 'U';
    SIGNAL WIR : std_logic := 'U';
    SIGNAL RPC : std_logic := '0';
    SIGNAL CPC : std_logic := '0';
    SIGNAL SDM : std_logic := 'U';
    SIGNAL WDR : std_logic := 'U';
    SIGNAL TEST : std_logic_vector (5 DownTo 0) := "UUUUUU";
    SIGNAL DOE : std_logic := 'U';
    SIGNAL SPC : std_logic := 'U';
    SIGNAL CF : std_logic := 'U';
    SIGNAL WC : std_logic := 'U';
    SIGNAL SUB : std_logic := 'U';
    SIGNAL SDM1 : std_logic := 'U';
    SIGNAL input : std_logic_vector (5 DownTo 0) := "000000";
    SIGNAL output : std_logic_vector (5 DownTo 0) := "UUUUUU";
    SIGNAL DMUXO : std_logic_vector (5 DownTo 0) := "UUUUUU";
    SIGNAL SUBOUT : std_logic_vector (5 DownTo 0) := "UUUUUU";
    SIGNAL SUBOUTC : std_logic := 'U';

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

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
            PROCEDURE CHECK_CF(
                next_CF : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (CF /= next_CF) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns CF="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, CF);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_CF);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_CPC(
                next_CPC : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (CPC /= next_CPC) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns CPC="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, CPC);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_CPC);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_DMUXO(
                next_DMUXO : std_logic_vector (5 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (DMUXO /= next_DMUXO) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns DMUXO="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, DMUXO);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_DMUXO);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_DOE(
                next_DOE : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (DOE /= next_DOE) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns DOE="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, DOE);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_DOE);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_RIR(
                next_RIR : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (RIR /= next_RIR) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns RIR="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, RIR);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_RIR);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_RPC(
                next_RPC : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (RPC /= next_RPC) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns RPC="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, RPC);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_RPC);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_SDM(
                next_SDM : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (SDM /= next_SDM) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns SDM="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, SDM);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_SDM);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_SDM1(
                next_SDM1 : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (SDM1 /= next_SDM1) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns SDM1="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, SDM1);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_SDM1);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_SPC(
                next_SPC : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (SPC /= next_SPC) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns SPC="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, SPC);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_SPC);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_SUB(
                next_SUB : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (SUB /= next_SUB) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns SUB="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, SUB);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_SUB);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_SUBOUT(
                next_SUBOUT : std_logic_vector (5 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (SUBOUT /= next_SUBOUT) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns SUBOUT="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, SUBOUT);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_SUBOUT);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_SUBOUTC(
                next_SUBOUTC : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (SUBOUTC /= next_SUBOUTC) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns SUBOUTC="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, SUBOUTC);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_SUBOUTC);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_TEST(
                next_TEST : std_logic_vector (5 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (TEST /= next_TEST) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns TEST="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, TEST);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_TEST);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_WC(
                next_WC : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (WC /= next_WC) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns WC="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, WC);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_WC);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_WDR(
                next_WDR : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (WDR /= next_WDR) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns WDR="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, WDR);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_WDR);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_WIR(
                next_WIR : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (WIR /= next_WIR) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns WIR="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, WIR);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_WIR);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_asb(
                next_asb : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (asb /= next_asb) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns asb="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, asb);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_asb);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_iadr(
                next_iadr : std_logic_vector (5 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (iadr /= next_iadr) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns iadr="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, iadr);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_iadr);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_idat(
                next_idat : std_logic_vector (5 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (idat /= next_idat) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns idat="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, idat);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_idat);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_madr(
                next_madr : std_logic_vector (5 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (madr /= next_madr) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns madr="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, madr);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_madr);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_mdat(
                next_mdat : std_logic_vector (5 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (mdat /= next_mdat) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns mdat="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, mdat);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_mdat);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_output(
                next_output : std_logic_vector (5 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (output /= next_output) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns output="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, output);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_output);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_rw(
                next_rw : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (rw /= next_rw) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns rw="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, rw);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_rw);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  1115ns
                WAIT FOR 1115 ns;
                CHECK_asb('1', 1115);
                CHECK_rw('1', 1115);
                CHECK_RIR('1', 1115);
                CHECK_WIR('0', 1115);
                CHECK_CPC('1', 1115);
                CHECK_WDR('0', 1115);
                CHECK_DOE('0', 1115);
                CHECK_WC('0', 1115);
                CHECK_iadr("000000", 1115);
                CHECK_idat("000000", 1115);
                CHECK_madr("000000", 1115);
                CHECK_mdat("ZZZZZZ", 1115);
                CHECK_output("XXXXXX", 1115);
                -- -------------------------------------
                -- -------------  Current Time:  3115ns
                WAIT FOR 2000 ns;
                CHECK_SDM('0', 3115);
                CHECK_SPC('0', 3115);
                CHECK_SUB('0', 3115);
                CHECK_SDM1('0', 3115);
                CHECK_DMUXO("000000", 3115);
                -- -------------------------------------
                -- -------------  Current Time:  9085ns
                WAIT FOR 5970 ns;
                resetb <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  9115ns
                WAIT FOR 30 ns;
                CHECK_RIR('0', 9115);
                CHECK_RPC('1', 9115);
                CHECK_iadr("000001", 9115);
                -- -------------------------------------
                -- -------------  Current Time:  11115ns
                WAIT FOR 2000 ns;
                CHECK_iadr("000010", 11115);
                -- -------------------------------------
                -- -------------  Current Time:  13115ns
                WAIT FOR 2000 ns;
                CHECK_iadr("000011", 13115);
                -- -------------------------------------
                -- -------------  Current Time:  15115ns
                WAIT FOR 2000 ns;
                CHECK_iadr("000100", 15115);
                CHECK_idat("010000", 15115);
                CHECK_madr("010000", 15115);
                CHECK_DMUXO("010000", 15115);
                -- -------------------------------------
                -- -------------  Current Time:  17115ns
                WAIT FOR 2000 ns;
                CHECK_iadr("000101", 17115);
                CHECK_idat("001001", 17115);
                CHECK_madr("001001", 17115);
                CHECK_DMUXO("001001", 17115);
                -- -------------------------------------
                -- -------------  Current Time:  19115ns
                WAIT FOR 2000 ns;
                CHECK_SUBOUTC('0', 19115);
                CHECK_iadr("000110", 19115);
                CHECK_idat("101000", 19115);
                CHECK_madr("101000", 19115);
                CHECK_mdat("000000", 19115);
                CHECK_TEST("001001", 19115);
                CHECK_output("000000", 19115);
                CHECK_DMUXO("101000", 19115);
                CHECK_SUBOUT("001001", 19115);
                -- -------------------------------------
                -- -------------  Current Time:  21115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 21115);
                CHECK_SDM('1', 21115);
                CHECK_DOE('1', 21115);
                CHECK_SUBOUTC('U', 21115);
                CHECK_iadr("000111", 21115);
                CHECK_idat("000101", 21115);
                CHECK_madr("000101", 21115);
                CHECK_mdat("UUUUUU", 21115);
                CHECK_output("UUUUUU", 21115);
                CHECK_DMUXO("UUUUUU", 21115);
                CHECK_SUBOUT("UUUUUU", 21115);
                -- -------------------------------------
                -- -------------  Current Time:  23115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 23115);
                CHECK_DOE('0', 23115);
                CHECK_SUBOUTC('X', 23115);
                CHECK_iadr("001000", 23115);
                CHECK_idat("010000", 23115);
                CHECK_madr("010000", 23115);
                CHECK_mdat("ZZZZZZ", 23115);
                CHECK_output("XXXXXX", 23115);
                CHECK_DMUXO("XXXXXX", 23115);
                CHECK_SUBOUT("XXXXXX", 23115);
                -- -------------------------------------
                -- -------------  Current Time:  25115ns
                WAIT FOR 2000 ns;
                CHECK_SDM('0', 25115);
                CHECK_iadr("001001", 25115);
                CHECK_idat("001000", 25115);
                CHECK_madr("001000", 25115);
                CHECK_DMUXO("001000", 25115);
                -- -------------------------------------
                -- -------------  Current Time:  27115ns
                WAIT FOR 2000 ns;
                CHECK_CF('X', 27115);
                CHECK_SUBOUTC('0', 27115);
                CHECK_iadr("001010", 27115);
                CHECK_idat("101000", 27115);
                CHECK_madr("101000", 27115);
                CHECK_mdat("000000", 27115);
                CHECK_TEST("001000", 27115);
                CHECK_output("000000", 27115);
                CHECK_DMUXO("101000", 27115);
                CHECK_SUBOUT("001000", 27115);
                -- -------------------------------------
                -- -------------  Current Time:  29115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 29115);
                CHECK_SDM('1', 29115);
                CHECK_DOE('1', 29115);
                CHECK_SUBOUTC('U', 29115);
                CHECK_iadr("001011", 29115);
                CHECK_idat("000111", 29115);
                CHECK_madr("000111", 29115);
                CHECK_mdat("UUUUUU", 29115);
                CHECK_output("UUUUUU", 29115);
                CHECK_DMUXO("UUUUUU", 29115);
                CHECK_SUBOUT("UUUUUU", 29115);
                -- -------------------------------------
                -- -------------  Current Time:  31115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 31115);
                CHECK_DOE('0', 31115);
                CHECK_SUBOUTC('X', 31115);
                CHECK_iadr("001100", 31115);
                CHECK_idat("011000", 31115);
                CHECK_madr("011000", 31115);
                CHECK_mdat("ZZZZZZ", 31115);
                CHECK_output("XXXXXX", 31115);
                CHECK_DMUXO("XXXXXX", 31115);
                CHECK_SUBOUT("XXXXXX", 31115);
                -- -------------------------------------
                -- -------------  Current Time:  33115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 33115);
                CHECK_SUBOUTC('0', 33115);
                CHECK_iadr("001101", 33115);
                CHECK_idat("000101", 33115);
                CHECK_madr("000101", 33115);
                CHECK_mdat("001001", 33115);
                CHECK_output("001001", 33115);
                CHECK_DMUXO("001001", 33115);
                CHECK_SUBOUT("010001", 33115);
                -- -------------------------------------
                -- -------------  Current Time:  35085ns
                WAIT FOR 1970 ns;
                input <= "001000";
                -- -------------------------------------
                -- -------------  Current Time:  35115ns
                WAIT FOR 30 ns;
                CHECK_asb('1', 35115);
                CHECK_CF('0', 35115);
                CHECK_iadr("001110", 35115);
                CHECK_idat("101000", 35115);
                CHECK_madr("101000", 35115);
                CHECK_mdat("001000", 35115);
                CHECK_TEST("001001", 35115);
                CHECK_output("001000", 35115);
                CHECK_DMUXO("001000", 35115);
                -- -------------------------------------
                -- -------------  Current Time:  37115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 37115);
                CHECK_DOE('1', 37115);
                CHECK_SUBOUTC('U', 37115);
                CHECK_iadr("001111", 37115);
                CHECK_idat("000100", 37115);
                CHECK_madr("000100", 37115);
                CHECK_mdat("UUUUUU", 37115);
                CHECK_output("UUUUUU", 37115);
                CHECK_DMUXO("UUUUUU", 37115);
                CHECK_SUBOUT("UUUUUU", 37115);
                -- -------------------------------------
                -- -------------  Current Time:  39115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 39115);
                CHECK_DOE('0', 39115);
                CHECK_SUBOUTC('X', 39115);
                CHECK_iadr("010000", 39115);
                CHECK_idat("011000", 39115);
                CHECK_madr("011000", 39115);
                CHECK_mdat("ZZZZZZ", 39115);
                CHECK_output("XXXXXX", 39115);
                CHECK_DMUXO("XXXXXX", 39115);
                CHECK_SUBOUT("XXXXXX", 39115);
                -- -------------------------------------
                -- -------------  Current Time:  41115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 41115);
                CHECK_SUBOUTC('0', 41115);
                CHECK_iadr("010001", 41115);
                CHECK_idat("000111", 41115);
                CHECK_madr("000111", 41115);
                CHECK_mdat("001000", 41115);
                CHECK_output("001000", 41115);
                CHECK_DMUXO("001000", 41115);
                CHECK_SUBOUT("010001", 41115);
                -- -------------------------------------
                -- -------------  Current Time:  43115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 43115);
                CHECK_iadr("010010", 43115);
                CHECK_idat("101000", 43115);
                CHECK_madr("101000", 43115);
                CHECK_TEST("001000", 43115);
                CHECK_SUBOUT("010000", 43115);
                -- -------------------------------------
                -- -------------  Current Time:  45115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 45115);
                CHECK_DOE('1', 45115);
                CHECK_SUBOUTC('U', 45115);
                CHECK_iadr("010011", 45115);
                CHECK_idat("000110", 45115);
                CHECK_madr("000110", 45115);
                CHECK_mdat("UUUUUU", 45115);
                CHECK_output("UUUUUU", 45115);
                CHECK_DMUXO("UUUUUU", 45115);
                CHECK_SUBOUT("UUUUUU", 45115);
                -- -------------------------------------
                -- -------------  Current Time:  47115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 47115);
                CHECK_DOE('0', 47115);
                CHECK_SUBOUTC('X', 47115);
                CHECK_iadr("010100", 47115);
                CHECK_idat("011000", 47115);
                CHECK_madr("011000", 47115);
                CHECK_mdat("ZZZZZZ", 47115);
                CHECK_output("XXXXXX", 47115);
                CHECK_DMUXO("XXXXXX", 47115);
                CHECK_SUBOUT("XXXXXX", 47115);
                -- -------------------------------------
                -- -------------  Current Time:  49115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 49115);
                CHECK_SUBOUTC('0', 49115);
                CHECK_iadr("010101", 49115);
                CHECK_idat("000100", 49115);
                CHECK_madr("000100", 49115);
                CHECK_mdat("001001", 49115);
                CHECK_output("001001", 49115);
                CHECK_DMUXO("001001", 49115);
                CHECK_SUBOUT("010001", 49115);
                -- -------------------------------------
                -- -------------  Current Time:  51115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 51115);
                CHECK_iadr("010110", 51115);
                CHECK_idat("101000", 51115);
                CHECK_madr("101000", 51115);
                CHECK_mdat("001000", 51115);
                CHECK_TEST("001001", 51115);
                CHECK_output("001000", 51115);
                CHECK_DMUXO("001000", 51115);
                -- -------------------------------------
                -- -------------  Current Time:  53115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 53115);
                CHECK_DOE('1', 53115);
                CHECK_iadr("010111", 53115);
                CHECK_idat("000110", 53115);
                CHECK_madr("000110", 53115);
                CHECK_mdat("00100X", 53115);
                CHECK_output("00100X", 53115);
                CHECK_DMUXO("00100X", 53115);
                CHECK_SUBOUT("0100XX", 53115);
                -- -------------------------------------
                -- -------------  Current Time:  55115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 55115);
                CHECK_DOE('0', 55115);
                CHECK_SUBOUTC('X', 55115);
                CHECK_iadr("011000", 55115);
                CHECK_idat("011000", 55115);
                CHECK_madr("011000", 55115);
                CHECK_mdat("ZZZZZZ", 55115);
                CHECK_output("XXXXXX", 55115);
                CHECK_DMUXO("XXXXXX", 55115);
                CHECK_SUBOUT("XXXXXX", 55115);
                -- -------------------------------------
                -- -------------  Current Time:  57115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 57115);
                CHECK_SUBOUTC('0', 57115);
                CHECK_iadr("011001", 57115);
                CHECK_idat("000111", 57115);
                CHECK_madr("000111", 57115);
                CHECK_mdat("001000", 57115);
                CHECK_output("001000", 57115);
                CHECK_DMUXO("001000", 57115);
                CHECK_SUBOUT("010001", 57115);
                -- -------------------------------------
                -- -------------  Current Time:  59115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 59115);
                CHECK_SUBOUTC('X', 59115);
                CHECK_iadr("011010", 59115);
                CHECK_idat("011110", 59115);
                CHECK_madr("011110", 59115);
                CHECK_mdat("ZZZZZZ", 59115);
                CHECK_TEST("001000", 59115);
                CHECK_output("XXXXXX", 59115);
                CHECK_DMUXO("XXXXXX", 59115);
                CHECK_SUBOUT("XXXXXX", 59115);
                -- -------------------------------------
                -- -------------  Current Time:  61115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 61115);
                CHECK_SUB('1', 61115);
                CHECK_SDM1('1', 61115);
                CHECK_SUBOUTC('1', 61115);
                CHECK_iadr("011011", 61115);
                CHECK_idat("000101", 61115);
                CHECK_madr("000101", 61115);
                CHECK_mdat("001001", 61115);
                CHECK_output("001001", 61115);
                CHECK_DMUXO("111111", 61115);
                CHECK_SUBOUT("111111", 61115);
                -- -------------------------------------
                -- -------------  Current Time:  63115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 63115);
                CHECK_CF('1', 63115);
                CHECK_SUBOUTC('0', 63115);
                CHECK_iadr("011100", 63115);
                CHECK_idat("000001", 63115);
                CHECK_madr("000001", 63115);
                CHECK_mdat("ZZZZZZ", 63115);
                CHECK_TEST("111111", 63115);
                CHECK_output("XXXXXX", 63115);
                CHECK_DMUXO("XXXXXX", 63115);
                CHECK_SUBOUT("XXXXXX", 63115);
                -- -------------------------------------
                -- -------------  Current Time:  65115ns
                WAIT FOR 2000 ns;
                CHECK_SDM('0', 65115);
                CHECK_SPC('1', 65115);
                CHECK_SUB('0', 65115);
                CHECK_SDM1('0', 65115);
                CHECK_SUBOUTC('1', 65115);
                CHECK_iadr("011101", 65115);
                CHECK_idat("111101", 65115);
                CHECK_madr("111101", 65115);
                CHECK_mdat("001000", 65115);
                CHECK_output("001000", 65115);
                CHECK_DMUXO("111101", 65115);
                CHECK_SUBOUT("000111", 65115);
                -- -------------------------------------
                -- -------------  Current Time:  67115ns
                WAIT FOR 2000 ns;
                CHECK_SUBOUTC('X', 67115);
                CHECK_iadr("011010", 67115);
                CHECK_idat("011110", 67115);
                CHECK_madr("011110", 67115);
                CHECK_mdat("ZZZZZZ", 67115);
                CHECK_output("XXXXXX", 67115);
                CHECK_DMUXO("011110", 67115);
                CHECK_SUBOUT("XXXXXX", 67115);
                -- -------------------------------------
                -- -------------  Current Time:  69115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 69115);
                CHECK_SDM('1', 69115);
                CHECK_SPC('0', 69115);
                CHECK_SUB('1', 69115);
                CHECK_SDM1('1', 69115);
                CHECK_SUBOUTC('0', 69115);
                CHECK_iadr("011011", 69115);
                CHECK_idat("000101", 69115);
                CHECK_madr("000101", 69115);
                CHECK_mdat("001001", 69115);
                CHECK_output("001001", 69115);
                CHECK_DMUXO("110110", 69115);
                CHECK_SUBOUT("110110", 69115);
                -- -------------------------------------
                -- -------------  Current Time:  71115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 71115);
                CHECK_CF('0', 71115);
                CHECK_SUBOUTC('X', 71115);
                CHECK_iadr("011100", 71115);
                CHECK_idat("000001", 71115);
                CHECK_madr("000001", 71115);
                CHECK_mdat("ZZZZZZ", 71115);
                CHECK_TEST("110110", 71115);
                CHECK_output("XXXXXX", 71115);
                CHECK_DMUXO("XXXXXX", 71115);
                CHECK_SUBOUT("XXXXXX", 71115);
                -- -------------------------------------
                -- -------------  Current Time:  73115ns
                WAIT FOR 2000 ns;
                CHECK_SDM('0', 73115);
                CHECK_SUB('0', 73115);
                CHECK_SDM1('0', 73115);
                CHECK_SUBOUTC('0', 73115);
                CHECK_iadr("011101", 73115);
                CHECK_idat("111101", 73115);
                CHECK_madr("111101", 73115);
                CHECK_mdat("001000", 73115);
                CHECK_output("001000", 73115);
                CHECK_DMUXO("111101", 73115);
                CHECK_SUBOUT("111110", 73115);
                -- -------------------------------------
                -- -------------  Current Time:  75115ns
                WAIT FOR 2000 ns;
                CHECK_SUBOUTC('X', 75115);
                CHECK_iadr("011110", 75115);
                CHECK_idat("011100", 75115);
                CHECK_madr("011100", 75115);
                CHECK_mdat("ZZZZZZ", 75115);
                CHECK_output("XXXXXX", 75115);
                CHECK_DMUXO("011100", 75115);
                CHECK_SUBOUT("XXXXXX", 75115);
                -- -------------------------------------
                -- -------------  Current Time:  77115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 77115);
                CHECK_SDM('1', 77115);
                CHECK_SUBOUTC('U', 77115);
                CHECK_iadr("011111", 77115);
                CHECK_idat("000000", 77115);
                CHECK_madr("000000", 77115);
                CHECK_mdat("UUUUUU", 77115);
                CHECK_output("UUUUUU", 77115);
                CHECK_DMUXO("UUUUUU", 77115);
                CHECK_SUBOUT("UUUUUU", 77115);
                -- -------------------------------------
                -- -------------  Current Time:  79115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 79115);
                CHECK_CF('U', 79115);
                CHECK_iadr("100000", 79115);
                CHECK_idat("011000", 79115);
                CHECK_madr("011000", 79115);
                CHECK_mdat("ZZZZZZ", 79115);
                CHECK_TEST("UUUUUU", 79115);
                CHECK_output("XXXXXX", 79115);
                CHECK_DMUXO("XXXXXX", 79115);
                -- -------------------------------------
                -- -------------  Current Time:  81115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 81115);
                CHECK_iadr("100001", 81115);
                CHECK_idat("010101", 81115);
                CHECK_madr("010101", 81115);
                CHECK_mdat("UUUUUU", 81115);
                CHECK_output("UUUUUU", 81115);
                CHECK_DMUXO("UUUUUU", 81115);
                -- -------------------------------------
                -- -------------  Current Time:  83115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 83115);
                CHECK_iadr("100010", 83115);
                CHECK_idat("000000", 83115);
                CHECK_madr("000000", 83115);
                CHECK_mdat("ZZZZZZ", 83115);
                CHECK_output("XXXXXX", 83115);
                CHECK_DMUXO("XXXXXX", 83115);
                -- -------------------------------------
                -- -------------  Current Time:  85115ns
                WAIT FOR 2000 ns;
                CHECK_SDM('0', 85115);
                CHECK_iadr("100011", 85115);
                CHECK_DMUXO("000000", 85115);
                -- -------------------------------------
                -- -------------  Current Time:  87115ns
                WAIT FOR 2000 ns;
                CHECK_iadr("100100", 87115);
                CHECK_idat("010000", 87115);
                CHECK_madr("010000", 87115);
                CHECK_DMUXO("010000", 87115);
                -- -------------------------------------
                -- -------------  Current Time:  89115ns
                WAIT FOR 2000 ns;
                CHECK_iadr("100101", 89115);
                CHECK_idat("000111", 89115);
                CHECK_madr("000111", 89115);
                CHECK_DMUXO("000111", 89115);
                -- -------------------------------------
                -- -------------  Current Time:  91115ns
                WAIT FOR 2000 ns;
                CHECK_SUBOUTC('0', 91115);
                CHECK_iadr("100110", 91115);
                CHECK_idat("101000", 91115);
                CHECK_madr("101000", 91115);
                CHECK_mdat("001000", 91115);
                CHECK_TEST("000111", 91115);
                CHECK_output("001000", 91115);
                CHECK_DMUXO("101000", 91115);
                CHECK_SUBOUT("001111", 91115);
                -- -------------------------------------
                -- -------------  Current Time:  93115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 93115);
                CHECK_SDM('1', 93115);
                CHECK_DOE('1', 93115);
                CHECK_SUBOUTC('U', 93115);
                CHECK_iadr("100111", 93115);
                CHECK_idat("001101", 93115);
                CHECK_madr("001101", 93115);
                CHECK_mdat("UUUUUU", 93115);
                CHECK_output("UUUUUU", 93115);
                CHECK_DMUXO("UUUUUU", 93115);
                CHECK_SUBOUT("UUUUUU", 93115);
                -- -------------------------------------
                -- -------------  Current Time:  95115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 95115);
                CHECK_DOE('0', 95115);
                CHECK_SUBOUTC('0', 95115);
                CHECK_iadr("101000", 95115);
                CHECK_idat("101000", 95115);
                CHECK_madr("101000", 95115);
                CHECK_mdat("001000", 95115);
                CHECK_output("001000", 95115);
                CHECK_DMUXO("001000", 95115);
                CHECK_SUBOUT("001111", 95115);
                -- -------------------------------------
                -- -------------  Current Time:  97115ns
                WAIT FOR 2000 ns;
                CHECK_asb('0', 97115);
                CHECK_DOE('1', 97115);
                CHECK_SUBOUTC('U', 97115);
                CHECK_iadr("101001", 97115);
                CHECK_idat("001001", 97115);
                CHECK_madr("001001", 97115);
                CHECK_mdat("UUUUUU", 97115);
                CHECK_output("UUUUUU", 97115);
                CHECK_DMUXO("UUUUUU", 97115);
                CHECK_SUBOUT("UUUUUU", 97115);
                -- -------------------------------------
                -- -------------  Current Time:  99115ns
                WAIT FOR 2000 ns;
                CHECK_asb('1', 99115);
                CHECK_DOE('0', 99115);
                CHECK_SUBOUTC('X', 99115);
                CHECK_iadr("101010", 99115);
                CHECK_idat("000000", 99115);
                CHECK_madr("000000", 99115);
                CHECK_mdat("ZZZZZZ", 99115);
                CHECK_output("XXXXXX", 99115);
                CHECK_DMUXO("XXXXXX", 99115);
                CHECK_SUBOUT("XXXXXX", 99115);
                -- -------------------------------------
                WAIT FOR 2885 ns;

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

