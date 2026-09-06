library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity orr is
    port(
        a,b: in std_logic;  -- c = Cin
        output  : out std_logic
    );
end orr;

architecture struct of orr is
    signal s1,s2,s3 : std_logic;
begin

	 g1 : NAND_2 port map(a, b, s1);
	 g2 : NAND_2 port map(a, s1,s2);	 
	 g3 : NAND_2 port map(b, s1,s3);
	 g4 : NAND_2 port map(s1, s3, output);
end struct;