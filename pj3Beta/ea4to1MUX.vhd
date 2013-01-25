----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:41:37 10/01/2012 
-- Design Name: 
-- Module Name:    ea4to1MUX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
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
gate1 : eaINVERT PORT MAP(a=>S1,z=>S1N);
gate2 : eaINVERT PORT MAP(a=>S0,z=>S0N);
gate3 : ea3NAND PORT MAP(a=>D,b=>S1,c=>S0,z=>OUT0);
gate4 : ea3NAND PORT MAP(a=>C,b=>S1,c=>S0N,z=>OUT1);
gate5 : ea3NAND PORT MAP(a=>B,b=>S1N,c=>S0,z=>OUT2);
gate6 : ea3NAND PORT MAP(a=>A,b=>S1N,c=>S0N,z=>OUT3);
gate7 : ea4NAND PORT MAP(a=>OUT0,b=>OUT1,c=>OUT2,d=>OUT3,z=>Z);


end struct;

