----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    01:26:03 10/09/2012 
-- Design Name: 32 X 6 Ram
-- Module Name:    ea32x6Ram - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of 32 X 6 Memory
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

entity ea32x6Ram is
    Port ( OE : in  STD_LOGIC;
           CS : in  STD_LOGIC;
           RW : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR(4 downto 0);
           D : inout  STD_LOGIC_VECTOR(5 downto 0));
end ea32x6Ram;

architecture struct of ea32x6Ram is
component ea6Ram
    Port ( I : in  STD_LOGIC_VECTOR(5 downto 0);
           W : in  STD_LOGIC;
			  R : in  STD_LOGIC;
			  S : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR(5 downto 0));
end component;
component ea5to32Decoder
    Port ( A	: in  STD_LOGIC_VECTOR(4 downto 0);
           csb	: in  STD_LOGIC;
           Z	: out	STD_LOGIC_VECTOR(31 downto 0));
end component;
component eaINVERT
    Port ( a : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component ea3NOR
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
           z : out STD_LOGIC);
end component;
component eaOutputBuf
    Port ( B : in  STD_LOGIC_VECTOR(5 downto 0);
           oe : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR(5 downto 0));
end component;
SIGNAL N0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL RWN : STD_LOGIC;
SIGNAL DA: STD_LOGIC_VECTOR(5 downto 0);
SIGNAL DB: STD_LOGIC_VECTOR(5 downto 0);
SIGNAL D0 : STD_LOGIC_VECTOR(31 downto 0);
SIGNAL OE32RAM :  STD_LOGIC;
SIGNAL CS32RAM :  STD_LOGIC;
SIGNAL RW32RAM :  STD_LOGIC;
begin
gate0 : ea5to32Decoder PORT MAP(A=>A,csb=>CS,Z=>D0); 
gate1 : eaINVERT PORT MAP(a=>RW,z=>RWN);
gate3 : ea3NOR PORT MAP(a=>OE,b=>CS,c=>RWN,z=>N0);
gate4 : eaOutputBuf PORT MAP(B=>DA,oe=>N0,D=>D);

gate5 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(31),D=>DA);
gate6 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(30),D=>DA);
gate7 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(29),D=>DA);
gate8 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(28),D=>DA);
gate9 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(27),D=>DA);
gate10 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(26),D=>DA);
gate11 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(25),D=>DA);
gate12 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(24),D=>DA);
gate13 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(23),D=>DA);
gate14 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(22),D=>DA);
gate15 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(21),D=>DA);
gate16 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(20),D=>DA);
gate17 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(19),D=>DA);
gate18 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(18),D=>DA);
gate19 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(17),D=>DA);
gate20 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(16),D=>DA);

gate21 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(15),D=>DA);
gate22 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(14),D=>DA);
gate23 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(13),D=>DA);
gate24 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(12),D=>DA);
gate25 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(11),D=>DA);
gate26 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(10),D=>DA);
gate27 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(9),D=>DA);
gate28 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(8),D=>DA);
gate29 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(7),D=>DA);
gate30 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(6),D=>DA);
gate31 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(5),D=>DA);
gate32 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(4),D=>DA);
gate33 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(3),D=>DA);
gate34 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(2),D=>DA);
gate35 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(1),D=>DA);
gate36 : ea6Ram PORT MAP(I=>D,W=>RWN,R=>RW,S=>D0(0),D=>DA);
 
end struct;

