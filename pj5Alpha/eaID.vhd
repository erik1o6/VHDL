----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:54:55 10/16/2012 
-- Design Name: 
-- Module Name:    eaID - struct 
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

entity eaID is
    Port ( T : in  STD_LOGIC;
           CSM : in  STD_LOGIC;
           RSM : in  STD_LOGIC;
           IR : in  std_logic_vector(5 downto 0);
           asb : out  STD_LOGIC;
	     rw : out  STD_LOGIC;
	     RIR : out  STD_LOGIC;
           WIR : out  STD_LOGIC;
           RPC : out  STD_LOGIC;
           CPC : out  STD_LOGIC;
           SDM : out  STD_LOGIC;
           WDR : out  STD_LOGIC;
           DOE : out  STD_LOGIC);
end eaID;

architecture struct of eaID is

begin


end struct;

