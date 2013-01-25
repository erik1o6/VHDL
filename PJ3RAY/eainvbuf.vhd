---------------------------------------
--Kyusun Choi
--Pennsylvania State University
--Computer Science and Engineering
--Sep. 28, 2009
--CSE471 VHDL Project 3
---------------------------------------
--VHDL File: kcinvbuf1.vhd
--Function:  One bit Inverting Tri-State Buffer
--Input:     a: data input
--           e: output enable, active high
--Output:    out: data output, delayed, 
--                inverted or tri-stated
---------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity eainvbuf is
   Port ( a : in  std_logic;
          e : in  std_logic;
          z : out std_logic);
end eainvbuf;

architecture Behavioral of eainvbuf is

begin

   z <= not a after 120 ps when e = '1' else
          'Z' after 120 ps;

end Behavioral;