----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    01:00:30 10/09/2012 
-- Design Name: 5 to 32 decoder
-- Module Name:    ea5to32Decoder - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural description of a 5 to 32 bit decoder
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

entity ea5to32Decoder is
    Port ( A	: in  STD_LOGIC_VECTOR(4 downto 0);
           csb	: in  STD_LOGIC;
           Z	: out	STD_LOGIC_VECTOR(31 downto 0));
end ea5to32Decoder;

architecture struct of ea5to32Decoder is
component ea6AND
	 Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
           d : in  STD_LOGIC;
			  e : in  STD_LOGIC;
           f : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component eaINVERT
    Port ( a : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
SIGNAL AN : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL NC : STD_LOGIC;
begin
gate0 : ea6AND PORT MAP(a=>AN(4),b=>AN(3),c=>AN(2),d=>AN(1),e=>AN(0),f=>NC,z=>Z(0));
gate1 : ea6AND PORT MAP(a=>AN(4),b=>AN(3),c=>AN(2),d=>AN(1),e=>A(0),f=>NC,z=>Z(1));
gate2 : ea6AND PORT MAP(a=>AN(4),b=>AN(3),c=>AN(2),d=>A(1),e=>AN(0),f=>NC,z=>Z(2));
gate3 : ea6AND PORT MAP(a=>AN(4),b=>AN(3),c=>AN(2),d=>A(1),e=>A(0),f=>NC,z=>Z(3));
gate4 : ea6AND PORT MAP(a=>AN(4),b=>AN(3),c=>A(2),d=>AN(1),e=>AN(0),f=>NC,z=>Z(4));
gate5 : ea6AND PORT MAP(a=>AN(4),b=>AN(3),c=>A(2),d=>AN(1),e=>A(0),f=>NC,z=>Z(5));
gate6 : ea6AND PORT MAP(a=>AN(4),b=>AN(3),c=>A(2),d=>A(1),e=>AN(0),f=>NC,z=>Z(6));
gate7 : ea6AND PORT MAP(a=>AN(4),b=>AN(3),c=>A(2),d=>A(1),e=>A(0),f=>NC,z=>Z(7));
gate8 : ea6AND PORT MAP(a=>AN(4),b=>A(3),c=>AN(2),d=>AN(1),e=>AN(0),f=>NC,z=>Z(8));
gate9 : ea6AND PORT MAP(a=>AN(4),b=>A(3),c=>AN(2),d=>AN(1),e=>A(0),f=>NC,z=>Z(9));
gate10 : ea6AND PORT MAP(a=>AN(4),b=>A(3),c=>AN(2),d=>A(1),e=>AN(0),f=>NC,z=>Z(10));
gate11 : ea6AND PORT MAP(a=>AN(4),b=>A(3),c=>AN(2),d=>A(1),e=>A(0),f=>NC,z=>Z(11));
gate12 : ea6AND PORT MAP(a=>AN(4),b=>A(3),c=>A(2),d=>AN(1),e=>AN(0),f=>NC,z=>Z(12));
gate13 : ea6AND PORT MAP(a=>AN(4),b=>A(3),c=>A(2),d=>AN(1),e=>A(0),f=>NC,z=>Z(13));
gate14 : ea6AND PORT MAP(a=>AN(4),b=>A(3),c=>A(2),d=>A(1),e=>AN(0),f=>NC,z=>Z(14));
gate15 : ea6AND PORT MAP(a=>AN(4),b=>A(3),c=>A(2),d=>A(1),e=>A(0),f=>NC,z=>Z(15));
gate16 : ea6AND PORT MAP(a=>A(4),b=>AN(3),c=>AN(2),d=>AN(1),e=>AN(0),f=>NC,z=>Z(16));
gate17 : ea6AND PORT MAP(a=>A(4),b=>AN(3),c=>AN(2),d=>AN(1),e=>A(0),f=>NC,z=>Z(17));
gate18 : ea6AND PORT MAP(a=>A(4),b=>AN(3),c=>AN(2),d=>A(1),e=>AN(0),f=>NC,z=>Z(18));
gate19 : ea6AND PORT MAP(a=>A(4),b=>AN(3),c=>AN(2),d=>A(1),e=>A(0),f=>NC,z=>Z(19));
gate20 : ea6AND PORT MAP(a=>A(4),b=>AN(3),c=>A(2),d=>AN(1),e=>AN(0),f=>NC,z=>Z(20));
gate21 : ea6AND PORT MAP(a=>A(4),b=>AN(3),c=>A(2),d=>AN(1),e=>A(0),f=>NC,z=>Z(21));
gate22 : ea6AND PORT MAP(a=>A(4),b=>AN(3),c=>A(2),d=>A(1),e=>AN(0),f=>NC,z=>Z(22));
gate23 : ea6AND PORT MAP(a=>A(4),b=>AN(3),c=>A(2),d=>A(1),e=>A(0),f=>NC,z=>Z(23));
gate24 : ea6AND PORT MAP(a=>A(4),b=>A(3),c=>AN(2),d=>AN(1),e=>AN(0),f=>NC,z=>Z(24));
gate25 : ea6AND PORT MAP(a=>A(4),b=>A(3),c=>AN(2),d=>AN(1),e=>A(0),f=>NC,z=>Z(25));
gate26 : ea6AND PORT MAP(a=>A(4),b=>A(3),c=>AN(2),d=>A(1),e=>AN(0),f=>NC,z=>Z(26));
gate27 : ea6AND PORT MAP(a=>A(4),b=>A(3),c=>AN(2),d=>A(1),e=>A(0),f=>NC,z=>Z(27));
gate28 : ea6AND PORT MAP(a=>A(4),b=>A(3),c=>A(2),d=>AN(1),e=>AN(0),f=>NC,z=>Z(28));
gate29 : ea6AND PORT MAP(a=>A(4),b=>A(3),c=>A(2),d=>AN(1),e=>A(0),f=>NC,z=>Z(29));
gate30 : ea6AND PORT MAP(a=>A(4),b=>A(3),c=>A(2),d=>A(1),e=>AN(0),f=>NC,z=>Z(30));
gate31 : ea6AND PORT MAP(a=>A(4),b=>A(3),c=>A(2),d=>A(1),e=>A(0),f=>NC,z=>Z(31));


gate32 : eaINVERT PORT MAP(a=>A(4),z=>AN(4));
gate33 : eaINVERT PORT MAP(a=>A(3),z=>AN(3));
gate34 : eaINVERT PORT MAP(a=>A(2),z=>AN(2));
gate35 : eaINVERT PORT MAP(a=>A(1),z=>AN(1));
gate36 : eaINVERT PORT MAP(a=>A(0),z=>AN(0));

gate37 : eaINVERT PORT MAP(a=>csb,z=>NC);


end struct;

