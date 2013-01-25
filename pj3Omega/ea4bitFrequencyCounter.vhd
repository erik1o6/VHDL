----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:22:46 10/01/2012 
-- Design Name: 
-- Module Name:    ea4bitFrequencyCounter - struct 
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

entity ea4bitFrequencyCounter is
    Port ( ck : in  STD_LOGIC;
			RESET: IN STD_LOGIC;
           d : out  STD_LOGIC_VECTOR(3 downto 0));
end ea4bitFrequencyCounter;

architecture struct of ea4bitFrequencyCounter is
component eaTFlipFlop
    Port ( ce : in  STD_LOGIC;
           ck : in  STD_LOGIC;
           res : in  STD_LOGIC;
           q : out  STD_LOGIC);
end component;
component ea2to1MUX
    Port ( D0 	: in  	STD_LOGIC;
           D1 	: in  	STD_LOGIC;
           S 	: in  	STD_LOGIC;
           Z 	: out  	STD_LOGIC);
end component;
component ea3AND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           z : out STD_LOGIC);
end component;
component ea2AND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out STD_LOGIC);
end component;
component eaFlipFlop
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
component eaINVERT
    Port ( a : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component ea2OR
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out STD_LOGIC);
end component;
component eaSINVERTER
    Port ( a : in std_logic;
           z : out std_logic);
end component;
SIGNAL DO : STD_LOGIC_VECTOR(3 downto 0);
SIGNAL AND2OUT : STD_LOGIC;
SIGNAL AND3OUT : STD_LOGIC;
--ATTEMPTING FREQUENCY DIVIDER
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;

SIGNAL AND3O : STD_LOGIC;
SIGNAL AND2O : STD_LOGIC;
SIGNAL CNOT : STD_LOGIC;
SIGNAL ANOT : STD_LOGIC;
SIGNAL BNOT : STD_LOGIC;
SIGNAL AND2OO : STD_LOGIC;
SIGNAL OR2O :STD_LOGIC;
SIGNAL OR2OO :STD_LOGIC;
SIGNAL DIV5 :STD_LOGIC;
SIGNAL DIV10 :STD_LOGIC;
SIGNAL INITA : STD_LOGIC;
SIGNAL INITB : STD_LOGIC;
SIGNAL INITC : STD_LOGIC;
begin

gate1 : eaTFlipFlop PORT MAP(ce=>'1',ck=>ck,res=>'0', q=>DO(0));
gate2 : eaTFlipFlop PORT MAP(ce=>DO(0),ck=>ck,res=>'0', q=>DO(1));
gate3 : eaTFlipFlop PORT MAP(ce=>AND2OUT,ck=>ck,res=>'0', q=>DO(2));
gate4 : eaTFlipFlop PORT MAP(ce=>AND3OUT,ck=>ck,res=>'0', q=>DO(3));

gate5 : ea2AND PORT MAP(a=>DO(0),b=>DO(1), z=>AND2OUT);
gate6 : ea3AND PORT MAP(a=>DO(0),b=>DO(1),c=>DO(2),z=>AND3OUT);


--d<=DO;
--ATTEMPTING FREQUENCY DIVIDER
gate7 : eaFlipFlop PORT MAP(D=>INITA,CLK=>ck,Q=>A);
gate8 : eaFlipFlop PORT MAP(D=>INITB,CLK=>ck,Q=>B);
gate9 : eaFlipFlop PORT MAP(D=>INITC,CLK=>ck,Q=>C);
gate10 : eaINVERT PORT MAP(a=>A, z=>ANOT);
gate11 : eaINVERT PORT MAP(a=>B, z=>BNOT);
gate12 : ea2AND PORT MAP(a=>CNOT,b=>ANOT, z=>AND2O);
gate13 : eaINVERT PORT MAP(a=>C, z=>CNOT);
gate14 : ea3AND PORT MAP(a=>ANOT,b=>BNOT,c=>C,z=>AND3O);

gate15 : ea2OR PORT MAP(a=>A,b=>DIV5,z=>OR2O);
gate16 : ea2OR PORT MAP(a=>ck,b=>BNOT,z=>OR2OO);
gate17 : ea2AND PORT MAP(a=>OR2O,b=>OR2OO, z=>DIV5);
gate18 : eaTFlipFlop PORT MAP(ce=>'1',ck=>DIV5,res=>'0', q=>DIV10);
gate19 : ea2to1MUX PORT MAP(D0=>'1',D1=>B,S=>RESET,Z=>INITC);
gate20 : ea2to1MUX PORT MAP(D0=>'1',D1=>AND2O,S=>RESET,Z=>INITB);
gate21 : ea2to1MUX PORT MAP(D0=>'1',D1=>AND3O,S=>RESET,Z=>INITA);
d(0)<=DO(0);
d(1)<=DO(1);
d(2)<=DIV5;
d(3)<=DIV10;
end struct;