----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    23:52:52 10/15/2012 
-- Design Name:  Instruction Register
-- Module Name:    eaIR - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:  Structural Description of Instruction register
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eaIR is
                port ( 
                   I0  : in std_logic_vector(5 downto 0);
                   RIR   : in std_logic;
                   WIR   : in std_logic;
			 Iout  : out std_logic_vector(5 downto 0));
end eaIR;

architecture struct of eaIR is
component ea6Flip
    Port ( A : in  STD_LOGIC_VECTOR(5 downto 0);
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(5 downto 0));
end component;
component ea6bitMUX
    Port ( D0	: in  STD_LOGIC_VECTOR(5 downto 0);
           D1	: in  STD_LOGIC_VECTOR(5 downto 0);
           S	: in  STD_LOGIC_VECTOR(5 downto 0);
           Z	: out	STD_LOGIC_VECTOR(5 downto 0));
end component;
SIGNAL I1  :  std_logic_vector(5 downto 0);
SIGNAL Mout  :  std_logic_vector(5 downto 0);
begin





gate0 : 	ea6Flip port map(A=>Mout,CLK=>WIR,Q=>Iout);
gate1 :	ea6bitMUX port map(D0=>I0,D1=>I1,S(5)=>RIR,S(4)=>RIR,S(3)=>RIR,S(2)=>RIR,S(1)=>RIR,S(0)=>RIR,Z=>Mout);
I1(5)<='0';
I1(4)<='0';
I1(3)<='0';
I1(2)<='0';
I1(1)<='0';
I1(0)<='0';
end struct;

