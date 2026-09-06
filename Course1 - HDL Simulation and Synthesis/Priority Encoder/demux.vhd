library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity demux is
    port(
        a,b,c,d : in std_logic;  -- c = Cin
        y,y0,y1 : out std_logic
    );
end demux;

architecture struct of demux is
      signal s0,s1 : std_logic;
begin

	 g1 : OR_4 port map(a,b,c,d,y);
	 g2 : INVERTER port map(b,s0);
	 g3 : AND_2 port map(s0,c,s1);
	 g4 : OR_2 port map(s1,a,y0);
	 g5 : OR_2 port map(a,b,y1);
	 
end struct;