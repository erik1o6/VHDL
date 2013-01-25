----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:03:00 10/01/2012 
-- Design Name: 
-- Module Name:    ea6bitto64decoder - struct 
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

entity ea6bitto64decoder is
    Port ( A	: in  STD_LOGIC_VECTOR(5 downto 0);
           csb	: in  STD_LOGIC;
           Z	: out	STD_LOGIC_VECTOR(63 downto 0));
end ea6bitto64decoder;



architecture struct of ea6bitto64decoder is
component ea7AND
	 Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
           d : in  STD_LOGIC;
			  e : in  STD_LOGIC;
           f : in  STD_LOGIC;
			  g : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component eaINVERT
    Port ( a : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
SIGNAL AN : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL NC : STD_LOGIC;
begin
gate0 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>AN(3),d=>AN(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(0));
gate1 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>AN(3),d=>AN(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(1));
gate2 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>AN(3),d=>AN(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(2));
gate3 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>AN(3),d=>AN(2),e=>A(1),f=>A(0),g=>NC,z=>Z(3));
gate4 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>AN(3),d=>A(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(4));
gate5 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>AN(3),d=>A(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(5));
gate6 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>AN(3),d=>A(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(6));
gate7 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>AN(3),d=>A(2),e=>A(1),f=>A(0),g=>NC,z=>Z(7));
gate8 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>A(3),d=>AN(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(8));
gate9 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>A(3),d=>AN(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(9));
gate10 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>A(3),d=>AN(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(10));
gate11 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>A(3),d=>AN(2),e=>A(1),f=>A(0),g=>NC,z=>Z(11));
gate12 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>A(3),d=>A(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(12));
gate13 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>A(3),d=>A(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(13));
gate14 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>A(3),d=>A(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(14));
gate15 : ea7AND PORT MAP(a=>AN(5),b=>AN(4),c=>A(3),d=>A(2),e=>A(1),f=>A(0),g=>NC,z=>Z(15));
gate16 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>AN(3),d=>AN(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(16));
gate17 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>AN(3),d=>AN(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(17));
gate18 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>AN(3),d=>AN(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(18));
gate19 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>AN(3),d=>AN(2),e=>A(1),f=>A(0),g=>NC,z=>Z(19));
gate20 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>AN(3),d=>A(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(20));
gate21 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>AN(3),d=>A(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(21));
gate22 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>AN(3),d=>A(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(22));
gate23 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>AN(3),d=>A(2),e=>A(1),f=>A(0),g=>NC,z=>Z(23));
gate24 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>A(3),d=>AN(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(24));
gate25 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>A(3),d=>AN(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(25));
gate26 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>A(3),d=>AN(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(26));
gate27 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>A(3),d=>AN(2),e=>A(1),f=>A(0),g=>NC,z=>Z(27));
gate28 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>A(3),d=>A(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(28));
gate29 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>A(3),d=>A(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(29));
gate30 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>A(3),d=>A(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(30));
gate31 : ea7AND PORT MAP(a=>AN(5),b=>A(4),c=>A(3),d=>A(2),e=>A(1),f=>A(0),g=>NC,z=>Z(31));
gate32 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>AN(3),d=>AN(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(32));
gate33 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>AN(3),d=>AN(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(33));
gate34 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>AN(3),d=>AN(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(34));
gate35 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>AN(3),d=>AN(2),e=>A(1),f=>A(0),g=>NC,z=>Z(35));
gate36 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>AN(3),d=>A(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(36));
gate37 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>AN(3),d=>A(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(37));
gate38 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>AN(3),d=>A(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(38));
gate39 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>AN(3),d=>A(2),e=>A(1),f=>A(0),g=>NC,z=>Z(39));
gate40 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>A(3),d=>AN(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(40));
gate41 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>A(3),d=>AN(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(41));
gate42 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>A(3),d=>AN(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(42));
gate43 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>A(3),d=>AN(2),e=>A(1),f=>A(0),g=>NC,z=>Z(43));
gate44 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>A(3),d=>A(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(44));
gate45 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>A(3),d=>A(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(45));
gate46 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>A(3),d=>A(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(46));
gate47 : ea7AND PORT MAP(a=>A(5),b=>AN(4),c=>A(3),d=>A(2),e=>A(1),f=>A(0),g=>NC,z=>Z(47));
gate48 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>AN(3),d=>AN(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(48));
gate49 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>AN(3),d=>AN(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(49));
gate50 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>AN(3),d=>AN(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(50));
gate51 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>AN(3),d=>AN(2),e=>A(1),f=>A(0),g=>NC,z=>Z(51));
gate52 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>AN(3),d=>A(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(52));
gate53 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>AN(3),d=>A(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(53));
gate54 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>AN(3),d=>A(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(54));
gate55 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>AN(3),d=>A(2),e=>A(1),f=>A(0),g=>NC,z=>Z(55));
gate56 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>A(3),d=>AN(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(56));
gate57 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>A(3),d=>AN(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(57));
gate58 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>A(3),d=>AN(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(58));
gate59 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>A(3),d=>AN(2),e=>A(1),f=>A(0),g=>NC,z=>Z(59));
gate60 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>A(3),d=>A(2),e=>AN(1),f=>AN(0),g=>NC,z=>Z(60));
gate61 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>A(3),d=>A(2),e=>AN(1),f=>A(0),g=>NC,z=>Z(61));
gate62 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>A(3),d=>A(2),e=>A(1),f=>AN(0),g=>NC,z=>Z(62));
gate63 : ea7AND PORT MAP(a=>A(5),b=>A(4),c=>A(3),d=>A(2),e=>A(1),f=>A(0),g=>NC,z=>Z(63));
gate64 : eaINVERT PORT MAP(a=>A(5),z=>AN(5));
gate65 : eaINVERT PORT MAP(a=>A(4),z=>AN(4));
gate66 : eaINVERT PORT MAP(a=>A(3),z=>AN(3));
gate67 : eaINVERT PORT MAP(a=>A(2),z=>AN(2));
gate68 : eaINVERT PORT MAP(a=>A(1),z=>AN(1));
gate69 : eaINVERT PORT MAP(a=>A(0),z=>AN(0));

gate70 : eaINVERT PORT MAP(a=>csb,z=>NC);

end struct;

