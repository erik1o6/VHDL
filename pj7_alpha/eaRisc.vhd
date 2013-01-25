----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:37:15 12/05/2012 
-- Design Name: 
-- Module Name:    eaRisc - struct 
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

entity eaRisc is
   Port ( input : in  STD_LOGIC_VECTOR(5 downto 0);
           output : out  STD_LOGIC_VECTOR(5 downto 0);
           rsm : in  STD_LOGIC;
           csm : in  STD_LOGIC;
           iadr : out  STD_LOGIC_VECTOR (5 downto 0);
           dat0 : out  STD_LOGIC_VECTOR (5 downto 0);
           dat1 : out  STD_LOGIC_VECTOR (5 downto 0);
           dat2 : out  STD_LOGIC_VECTOR (5 downto 0);
           adat : out  STD_LOGIC_VECTOR (5 downto 0);
           sdat : out  STD_LOGIC_VECTOR (5 downto 0);
           ddat : out  STD_LOGIC_VECTOR (5 downto 0);
           dx0 : out  STD_LOGIC;
           dx1 : out  STD_LOGIC;
           mdw : out  STD_LOGIC;
           bx : out  STD_LOGIC;
           wc : out  STD_LOGIC;
           cf : out  STD_LOGIC;
           wot : out  STD_LOGIC;
           sub : out  STD_LOGIC;
			  pres : out  STD_LOGIC;
			  pck : out  STD_LOGIC);
end eaRisc;

architecture struct of eaRisc is
component eaSM
    Port ( reset : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           T : out  STD_LOGIC);
end component;

component ea64x6Ram
    Port ( dat0 : in  STD_LOGIC_VECTOR(5 downto 0);
           adr0 : in  STD_LOGIC_VECTOR(5 downto 0);
			  adr1 : in  STD_LOGIC_VECTOR(5 downto 0);
			  adr2 : in  STD_LOGIC_VECTOR(5 downto 0);
			  mdw : in  STD_LOGIC;
           --CS : in  STD_LOGIC;
           --OE : in  STD_LOGIC;
			  dat1 : out  STD_LOGIC_VECTOR(5 downto 0);
           dat2 : out  STD_LOGIC_VECTOR(5 downto 0));
end component;

component ea64Rom
    Port ( a : in  STD_LOGIC_VECTOR (5 downto 0);
           csb : in  STD_LOGIC;
           oeb : in  STD_LOGIC;
			  D2 : out  STD_LOGIC_VECTOR (5 downto 0);
			  D1 : out  STD_LOGIC_VECTOR (5 downto 0);
           D : out  STD_LOGIC_VECTOR (5 downto 0));			  
end component;

component ea6SUB 
    Port ( a : in std_logic_vector(5 downto 0);
           b : in std_logic_vector(5 downto 0);
			  subs : in std_logic;
			  Cout : out std_logic;
           z : out  std_logic_vector(5 downto 0));
end component;

component eaID
    Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
			  rsm : in  STD_LOGIC;
           csm : in  STD_LOGIC;
           cf : in  STD_LOGIC;
           t : in  STD_LOGIC;
           pres : out  STD_LOGIC;
           pck : out  STD_LOGIC;
           bx : out  STD_LOGIC;
           dx : out  STD_LOGIC_VECTOR (1 downto 0);
           mdw : out  STD_LOGIC;
           sub : out  STD_LOGIC;
           wc : out  STD_LOGIC;
           wot : out  STD_LOGIC);
end component;

component ea6bitMUX
    Port ( D0	: in  STD_LOGIC_VECTOR(5 downto 0);
           D1	: in  STD_LOGIC_VECTOR(5 downto 0);
           S	: in  STD_LOGIC_VECTOR(5 downto 0);
           Z	: out	STD_LOGIC_VECTOR(5 downto 0));
end component;

component ea6Flip
    Port ( A : in  STD_LOGIC_VECTOR(5 downto 0);
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(5 downto 0));
end component;

component eaFlipFlop
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

component eaBGMUX
    Port ( a : in std_logic_vector(5 downto 0);
           b : in std_logic_vector(5 downto 0);
			  c : in std_logic_vector(5 downto 0);
			  d : in std_logic_vector(5 downto 0);
			  SDM0  : in STD_LOGIC;
			  SDM1 : in STD_LOGIC;
           z : out  std_logic_vector(5 downto 0));
end component;
component ea6PCf
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           B : in  std_logic_vector(5 downto 0);
           A : out  std_logic_vector(5 downto 0));
           
end component;
  
signal news,idat0,idat1,idat2,ddat0,sdat0,binc,adat0,mux_o,iadr0: std_logic_vector(5 downto 0);
signal idx: std_logic_vector(1 downto 0);
signal t0,bx0,mdw0,cout,wc0,wot0,cf0,pres0,pck0,sub0:std_logic;	  

begin

ROM:  ea64Rom   port map(a=>iadr0,csb=>'0',oeb=>'0',D2=>idat2,D1=>idat1,D=>idat0);

RAM:  ea64x6Ram  port map(dat0=>mux_o,adr0=>idat0,adr1=>idat1,adr2=>idat0,mdw=>mdw0,dat1=>sdat0,dat2=>ddat0);

--mux6:  port map(d(11 downto 6)=>idat1,d(5 downto 0)=>"000001",reset=>bx0,z=>binc);
mux6 : ea6bitMUX PORT MAP(D0=>"000001",D1=>idat1,S=>news,Z=>binc);

pc: ea6PCf PORT MAP(CLK=>pck0,RESET=>pres0,Cin=>'1',B=>binc,A=>iadr0);



alu: ea6SUB PORT MAP(a=>ddat0,b=>sdat0,subs=>sub0,Cout=>cout,z=>adat0);

sm	: eaSM port map(reset=>rsm,clock=>csm,T=>t0);

id:   eaID  		 port map(op=>idat2,rsm=>rsm,csm=>csm,cf=>cf0,t=>t0,pres=>pres0,pck=>pck0,bx=>bx0,dx=>idx,mdw=>mdw0,sub=>sub0,wc=>wc0,wot=>wot0);


dmux : eaBGMUX PORT MAP(a=>sdat0,b=>adat0,c=>idat1,d=>input,SDM0=>idx(1),SDM1=>idx(0),Z=>mux_o);--

DFF6	: ea6Flip PORT MAP(A=>sdat0,CLK=>wot0,Q=>output);


DFF : eaFlipFlop PORT MAP(D=>cout,CLK=>wc0 ,Q=>cf0);
news(5)<=bx0;
news(4)<=bx0;
news(3)<=bx0;
news(2)<=bx0;
news(1)<=bx0;
news(0)<=bx0;

dat0<=idat0;
dat1<=idat1;
dat2<=idat2;
ddat<=ddat0;
sdat<=sdat0;
adat<=adat0;
dx0<=idx(0);
dx1<=idx(1);
bx<=bx0;
mdw<=mdw0;
wc<=wc0;
wot<=wot0;
cf<=cf0;
pres<=pres0;
pck<=pck0;
sub<=sub0;
iadr<=iadr0;
end struct;

