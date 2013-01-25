----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:35:10 11/11/2012 
-- Design Name: 
-- Module Name:    eaBGMUX - struct 
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

entity eaBGMUX is
    Port ( a : in std_logic_vector(5 downto 0);
           b : in std_logic_vector(5 downto 0);
			  c : in std_logic_vector(5 downto 0);
			  SDM0  : in STD_LOGIC;
			  SDM1 : in STD_LOGIC;
           z : out  std_logic_vector(5 downto 0));
end eaBGMUX;

architecture struct of eaBGMUX is
component ea4to1MUX
    Port ( I : in STD_LOGIC_VECTOR(3 downto 0);
			  s   : in   STD_LOGIC_VECTOR(1 downto 0);
           Z : out  STD_LOGIC);
end component;
begin
gate1		:	ea4to1MUX	PORT MAP(I(0)=>c(5),I(1)=>'0',I(2)=>b(5),I(3)=>a(5),s(1)=>SDM1,s(0)=>SDM0,Z=>Z(5));--Switch S1 and S0 to fix
gate2		:	ea4to1MUX	PORT MAP(I(0)=>c(4),I(1)=>'0',I(2)=>b(4),I(3)=>a(4),s(1)=>SDM1,s(0)=>SDM0,Z=>Z(4));
gate3		:	ea4to1MUX	PORT MAP(I(0)=>c(3),I(1)=>'0',I(2)=>b(3),I(3)=>a(3),s(1)=>SDM1,s(0)=>SDM0,Z=>Z(3));
gate4		:	ea4to1MUX	PORT MAP(I(0)=>c(2),I(1)=>'0',I(2)=>b(2),I(3)=>a(2),s(1)=>SDM1,s(0)=>SDM0,Z=>Z(2));
gate5		:	ea4to1MUX	PORT MAP(I(0)=>c(1),I(1)=>'0',I(2)=>b(1),I(3)=>a(1),s(1)=>SDM1,s(0)=>SDM0,Z=>Z(1));
gate6		:	ea4to1MUX	PORT MAP(I(0)=>c(0),I(1)=>'0',I(2)=>b(0),I(3)=>a(0),s(1)=>SDM1,s(0)=>SDM0,Z=>Z(0));
                                                                                
end struct;

