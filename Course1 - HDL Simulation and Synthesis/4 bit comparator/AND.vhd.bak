library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity andy is
    port(
        a,b: in std_logic;  -- c = Cin
        output  : out std_logic
    );
end andy;

architecture struct of andy is
    signal s1 : std_logic;
begin

	 g1 : NAND_2 port map(a, b, s1);
	 g2 : NAND_2 port map(s1, s1,output);	 
end struct;