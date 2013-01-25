----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    02:14:12 10/09/2012 
-- Design Name: 64 x 6 Ram
-- Module Name:    ea64x6Ram - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of 64 x 6 Ram
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

entity ea64x6Ram is
    Port ( dat0 : in  STD_LOGIC_VECTOR(5 downto 0);
           adr0 : in  STD_LOGIC_VECTOR(5 downto 0);
			  adr1 : in  STD_LOGIC_VECTOR(5 downto 0);
			  adr2 : in  STD_LOGIC_VECTOR(5 downto 0);
			  mdw : in  STD_LOGIC;
           --CS : in  STD_LOGIC;
           --OE : in  STD_LOGIC;
			  dat1 : out  STD_LOGIC_VECTOR(5 downto 0);
           dat2 : out  STD_LOGIC_VECTOR(5 downto 0));
end ea64x6Ram;

architecture struct of ea64x6Ram is

component ea2OR
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out STD_LOGIC);
end component;
component eaINVERT
    Port ( a : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component ea32x6Ram
    Port ( OE : in  STD_LOGIC;
           CS : in  STD_LOGIC;
           RW : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR(4 downto 0);
           D : inout  STD_LOGIC_VECTOR(5 downto 0));
			  
			  
end component;

component ea6Ram
    Port ( I : in  STD_LOGIC_VECTOR(5 downto 0);
           W : in  STD_LOGIC;
			  S : in  STD_LOGIC;
			  sa : in  STD_LOGIC;
			  sb : in  STD_LOGIC;
			  ad0 : out  STD_LOGIC_VECTOR(5 downto 0);
           bd0 : out  STD_LOGIC_VECTOR(5 downto 0));
end component;

component ea6bitto64decoder
    Port ( A	: in  STD_LOGIC_VECTOR(5 downto 0);
           csb	: in  STD_LOGIC;
           Z	: out	STD_LOGIC_VECTOR(63 downto 0));
end component;

component eaOutputBuf
    Port ( B : in  STD_LOGIC_VECTOR(5 downto 0);
           oe : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR(5 downto 0));
end component;


SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL A3 : STD_LOGIC;
SIGNAL AN : STD_LOGIC;
SIGNAL D0: STD_LOGIC_VECTOR(63 downto 0);
SIGNAL D1: STD_LOGIC_VECTOR(63 downto 0);
SIGNAL D2: STD_LOGIC_VECTOR(63 downto 0);
SIGNAL DATT1: STD_LOGIC_VECTOR(5 downto 0);
SIGNAL DATT2: STD_LOGIC_VECTOR(5 downto 0);

begin

gate0 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(0 ),sa=>D1(0 ),sb=>D2(0 ),ad0=>DATT1,bd0=>DATT2);
gate1 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(1 ),sa=>D1(1 ),sb=>D2(1 ),ad0=>DATT1,bd0=>DATT2);
gate2 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(2 ),sa=>D1(2 ),sb=>D2(2 ),ad0=>DATT1,bd0=>DATT2);
gate3 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(3 ),sa=>D1(3 ),sb=>D2(3 ),ad0=>DATT1,bd0=>DATT2);
gate4 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(4 ),sa=>D1(4 ),sb=>D2(4 ),ad0=>DATT1,bd0=>DATT2);
gate5 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(5 ),sa=>D1(5 ),sb=>D2(5 ),ad0=>DATT1,bd0=>DATT2);
gate6 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(6 ),sa=>D1(6 ),sb=>D2(6 ),ad0=>DATT1,bd0=>DATT2);
gate7 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(7 ),sa=>D1(7 ),sb=>D2(7 ),ad0=>DATT1,bd0=>DATT2);
gate8 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(8 ),sa=>D1(8 ),sb=>D2(8 ),ad0=>DATT1,bd0=>DATT2);
gate9 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(9 ),sa=>D1(9 ),sb=>D2(9 ),ad0=>DATT1,bd0=>DATT2);
gate10 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(10),sa=>D1(10),sb=>D2(10),ad0=>DATT1,bd0=>DATT2);
gate11 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(11),sa=>D1(11),sb=>D2(11),ad0=>DATT1,bd0=>DATT2);
gate12 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(12),sa=>D1(12),sb=>D2(12),ad0=>DATT1,bd0=>DATT2);
gate13 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(13),sa=>D1(13),sb=>D2(13),ad0=>DATT1,bd0=>DATT2);
gate14 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(14),sa=>D1(14),sb=>D2(14),ad0=>DATT1,bd0=>DATT2);
gate15 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(15),sa=>D1(15),sb=>D2(15),ad0=>DATT1,bd0=>DATT2);
gate16 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(16),sa=>D1(16),sb=>D2(16),ad0=>DATT1,bd0=>DATT2);
gate17 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(17),sa=>D1(17),sb=>D2(17),ad0=>DATT1,bd0=>DATT2);
gate18 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(18),sa=>D1(18),sb=>D2(18),ad0=>DATT1,bd0=>DATT2);
gate19 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(19),sa=>D1(19),sb=>D2(19),ad0=>DATT1,bd0=>DATT2);
gate20 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(20),sa=>D1(20),sb=>D2(20),ad0=>DATT1,bd0=>DATT2);
gate21 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(21),sa=>D1(21),sb=>D2(21),ad0=>DATT1,bd0=>DATT2);
gate22 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(22),sa=>D1(22),sb=>D2(22),ad0=>DATT1,bd0=>DATT2);
gate23 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(23),sa=>D1(23),sb=>D2(23),ad0=>DATT1,bd0=>DATT2);
gate24 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(24),sa=>D1(24),sb=>D2(24),ad0=>DATT1,bd0=>DATT2);
gate25 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(25),sa=>D1(25),sb=>D2(25),ad0=>DATT1,bd0=>DATT2);
gate26 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(26),sa=>D1(26),sb=>D2(26),ad0=>DATT1,bd0=>DATT2);
gate27 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(27),sa=>D1(27),sb=>D2(27),ad0=>DATT1,bd0=>DATT2);
gate28 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(28),sa=>D1(28),sb=>D2(28),ad0=>DATT1,bd0=>DATT2);
gate29 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(29),sa=>D1(29),sb=>D2(29),ad0=>DATT1,bd0=>DATT2);
gate30 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(30),sa=>D1(30),sb=>D2(30),ad0=>DATT1,bd0=>DATT2);
gate31 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(31),sa=>D1(31),sb=>D2(31),ad0=>DATT1,bd0=>DATT2);
gate32 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(32),sa=>D1(32),sb=>D2(32),ad0=>DATT1,bd0=>DATT2);
gate33 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(33),sa=>D1(33),sb=>D2(33),ad0=>DATT1,bd0=>DATT2);
gate34 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(34),sa=>D1(34),sb=>D2(34),ad0=>DATT1,bd0=>DATT2);
gate35 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(35),sa=>D1(35),sb=>D2(35),ad0=>DATT1,bd0=>DATT2);
gate36 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(36),sa=>D1(36),sb=>D2(36),ad0=>DATT1,bd0=>DATT2);
gate37 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(37),sa=>D1(37),sb=>D2(37),ad0=>DATT1,bd0=>DATT2);
gate38 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(38),sa=>D1(38),sb=>D2(38),ad0=>DATT1,bd0=>DATT2);
gate39 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(39),sa=>D1(39),sb=>D2(39),ad0=>DATT1,bd0=>DATT2);
gate40 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(40),sa=>D1(40),sb=>D2(40),ad0=>DATT1,bd0=>DATT2);
gate41 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(41),sa=>D1(41),sb=>D2(41),ad0=>DATT1,bd0=>DATT2);
gate42 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(42),sa=>D1(42),sb=>D2(42),ad0=>DATT1,bd0=>DATT2);
gate43 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(43),sa=>D1(43),sb=>D2(43),ad0=>DATT1,bd0=>DATT2);
gate44 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(44),sa=>D1(44),sb=>D2(44),ad0=>DATT1,bd0=>DATT2);
gate45 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(45),sa=>D1(45),sb=>D2(45),ad0=>DATT1,bd0=>DATT2);
gate46 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(46),sa=>D1(46),sb=>D2(46),ad0=>DATT1,bd0=>DATT2);
gate47 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(47),sa=>D1(47),sb=>D2(47),ad0=>DATT1,bd0=>DATT2);
gate48 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(48),sa=>D1(48),sb=>D2(48),ad0=>DATT1,bd0=>DATT2);
gate49 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(49),sa=>D1(49),sb=>D2(49),ad0=>DATT1,bd0=>DATT2);
gate50 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(50),sa=>D1(50),sb=>D2(50),ad0=>DATT1,bd0=>DATT2);
gate51 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(51),sa=>D1(51),sb=>D2(51),ad0=>DATT1,bd0=>DATT2);
gate52 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(52),sa=>D1(52),sb=>D2(52),ad0=>DATT1,bd0=>DATT2);
gate53 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(53),sa=>D1(53),sb=>D2(53),ad0=>DATT1,bd0=>DATT2);
gate54 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(54),sa=>D1(54),sb=>D2(54),ad0=>DATT1,bd0=>DATT2);
gate55 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(55),sa=>D1(55),sb=>D2(55),ad0=>DATT1,bd0=>DATT2);
gate56 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(56),sa=>D1(56),sb=>D2(56),ad0=>DATT1,bd0=>DATT2);
gate57 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(57),sa=>D1(57),sb=>D2(57),ad0=>DATT1,bd0=>DATT2);
gate58 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(58),sa=>D1(58),sb=>D2(58),ad0=>DATT1,bd0=>DATT2);
gate59 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(59),sa=>D1(59),sb=>D2(59),ad0=>DATT1,bd0=>DATT2);
gate60 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(60),sa=>D1(60),sb=>D2(60),ad0=>DATT1,bd0=>DATT2);
gate61 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(61),sa=>D1(61),sb=>D2(61),ad0=>DATT1,bd0=>DATT2);
gate62 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(62),sa=>D1(62),sb=>D2(62),ad0=>DATT1,bd0=>DATT2);
gate63 : ea6Ram PORT MAP(I=>dat0,W=>mdw,S=>D0(63),sa=>D1(63),sb=>D2(63),ad0=>DATT1,bd0=>DATT2);

gate65 : eaOutputBuf PORT MAP(B=>DATT1,oe=>'1',D=>dat1);--outputbuff??? oe ask john maybe cs
gate66 : eaOutputBuf PORT MAP(B=>DATT2,oe=>'1',D=>dat2);--

gate67 : ea6bitto64decoder PORT MAP(A=>adr0,csb=>'0',Z=>D0);
gate68 : ea6bitto64decoder PORT MAP(A=>adr1,csb=>'0',Z=>D1);
gate69 : ea6bitto64decoder PORT MAP(A=>adr2,csb=>'0',Z=>D2);
 

--gate2 : eaINVERT PORT MAP(a=>A(5),z=>AN);
--gate3 : ea2OR PORT MAP(a=>A(5),b=>CS,z=>A0);
--gate4 : ea2OR PORT MAP(a=>AN,b=>CS,z=>A1);
--gate5 : ea2OR PORT MAP(a=>A(5),b=>OE,z=>A2);
--gate6 : ea2OR PORT MAP(a=>AN,b=>OE,z=>A3);

end struct;

