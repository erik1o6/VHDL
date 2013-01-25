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
           reset : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR(3 downto 0));
end ea4bitFrequencyCounter;

architecture struct of ea4bitFrequencyCounter is
component ea6PCf

end component;
begin


end struct;

