-----------------------------------------------
-- Designer:    Kyusun Choi
-- Date:        2/14/2009
-- Course:      for CSE 471, CSE478, and EE478
-- Affiliation: The Pennsylvania State University
-- Description: Inverter with initial '0' output.
--              This is a simulation friendly inverter
--              used in T flip-flop feedback loop.
-----------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity eaSINVERTER is
    Port ( a : in std_logic;
           z : out std_logic);
end eaSINVERTER;

architecture Behavioral of eaSINVERTER is

begin

   z <= '0' after 100 ps when a = 'U' else
      not a after 100ps;

end Behavioral;