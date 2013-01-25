----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    10:41:37 10/01/2012 
-- Design Name: 4 to 1 Multiplexor 
-- Module Name:    ea4to1MUX - Struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:  Structural description of a 4 to 1 Multiplexor
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

entity ea4to1MUX is
    Port ( I : in STD_LOGIC_VECTOR(3 downto 0);
			  s   : in   STD_LOGIC_VECTOR(1 downto 0);
           Z : out  STD_LOGIC);
end ea4to1MUX;

architecture struct of ea4to1MUX is



component ea3NAND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component ea4NAND
    Port ( a : in  	STD_LOGIC;
           b : in  	STD_LOGIC;
           c : in 	STD_LOGIC;
           d : in  	STD_LOGIC;
           z : out 	STD_LOGIC);
end component;
component eaINVERT
    Port ( a : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;

SIGNAL S1N : STD_LOGIC;
SIGNAL S0N : STD_LOGIC;
SIGNAL OUT0 : STD_LOGIC;
SIGNAL OUT1 : STD_LOGIC;
SIGNAL OUT2 : STD_LOGIC;
SIGNAL OUT3 : STD_LOGIC;
begin
gate1 : eaINVERT PORT MAP(a=>s(1),z=>S1N);
gate2 : eaINVERT PORT MAP(a=>s(0),z=>S0N);
gate3 : ea3NAND PORT MAP(a=>I(0),b=>S1N,c=>S0N,z=>OUT0);---
gate4 : ea3NAND PORT MAP(a=>I(1),b=>s(1),c=>S0N,z=>OUT1);
gate5 : ea3NAND PORT MAP(a=>I(2),b=>S1N,c=>s(0),z=>OUT2);
gate6 : ea3NAND PORT MAP(a=>I(3),b=>s(1),c=>s(0),z=>OUT3);--
gate7 : ea4NAND PORT MAP(a=>OUT0,b=>OUT1,c=>OUT2,d=>OUT3,z=>Z);


end struct;

