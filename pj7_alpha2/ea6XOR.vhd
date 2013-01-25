----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:16:28 11/11/2012 
-- Design Name: 
-- Module Name:    ea6XOR - struct 
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

entity ea6XOR is
    Port ( a : in std_logic_vector(5 downto 0);
           b : in std_logic_vector(5 downto 0);
           z : out  std_logic_vector(5 downto 0));
end ea6XOR;

architecture struct of ea6XOR is
component eaXOR
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
begin
gate1		:	eaXOR		PORT MAP(a=>a(5),b=>b(5) ,z=>z(5));
gate2		:	eaXOR		PORT MAP(a=>a(4),b=>b(4) ,z=>z(4));
gate3		:	eaXOR		PORT MAP(a=>a(3),b=>b(3) ,z=>z(3));
gate4 	:	eaXOR		PORT MAP(a=>a(2),b=>b(2) ,z=>z(2));
gate5		:	eaXOR		PORT MAP(a=>a(1),b=>b(1) ,z=>z(1));
gate6 	:	eaXOR		PORT MAP(a=>a(0),b=>b(0) ,z=>z(0));

end struct;

