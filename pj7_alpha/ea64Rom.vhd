----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    02:04:00 10/01/2012 
-- Design Name: 64 bit ROM 
-- Module Name:    ea64Rom - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural description of a 64 bit ROM
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

entity ea64Rom is
    Port ( a : in  STD_LOGIC_VECTOR (5 downto 0);
           csb : in  STD_LOGIC;
           oeb : in  STD_LOGIC;
			  D2 : out  STD_LOGIC_VECTOR (5 downto 0);
			  D1 : out  STD_LOGIC_VECTOR (5 downto 0);
           D : out  STD_LOGIC_VECTOR (5 downto 0));
end ea64Rom;

architecture struct of ea64Rom is
component ea6bitto64decoder
    Port ( A	: in  STD_LOGIC_VECTOR(5 downto 0);
           csb	: in  STD_LOGIC;
           Z	: out	STD_LOGIC_VECTOR(63 downto 0));
end component;
component ea2NOR
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component eaOutputBuf
    Port ( B : in  STD_LOGIC_VECTOR(5 downto 0);
           oe : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR(5 downto 0));
end component;
component ea18bit64word
    Port ( e : in   STD_LOGIC_VECTOR(63 downto 0);
           z : out  STD_LOGIC_VECTOR(17 downto 0));
end component;
signal DEOUT : STD_LOGIC_VECTOR(63 downto 0);
signal WORD : STD_LOGIC_VECTOR(17 downto 0);
SIGNAL NORS : STD_LOGIC;
begin
gate1 : ea6bitto64decoder PORT MAP(A=>a,csb=>csb,Z=>DEOUT);
gate2 : ea2NOR PORT MAP(a=>csb,b=>oeb,z=>NORS);

gate3 : ea18bit64word PORT MAP(e=>DEOUT,z=>WORD);

gate4: eaOutputBuf PORT MAP(B=>WORD(17 downto 12), oe=>NORS, D=>D2);
gate5: eaOutputBuf PORT MAP(B=>WORD(11 downto 6), oe=>NORS, D=>D1);
gate6: eaOutputBuf PORT MAP(B=>WORD( 5 downto 0), oe=>NORS, D=>D);
end struct;

