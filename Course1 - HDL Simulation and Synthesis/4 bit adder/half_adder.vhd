library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity half is
    port(
        b4,b3,b2,b1,  a4,a3,a2,a1,mode : in  std_logic;
        y1,y2,y3,y4        : out std_logic;
        carry      : out std_logic
    );
end half;

architecture struct of half is

    signal n1, n2, n3,s1,s2,s3,s4 : std_logic;

begin

    -- XOR of s2 and s1
    g1 : XOR_2 port map(b1, mode,s1);
	 g2 : XOR_2 port map(b2, mode,s2);
    g3 : XOR_2 port map(b3, mode,s3);
    g4 : XOR_2 port map(b4, mode,s4);

    g5 : FULL_ADDER port map(s1, a1,mode,y1,n1 );
    g6 : FULL_ADDER port map(a2,s2, n1,y2,n2);
    g7 : FULL_ADDER port map(a3,s3, n2, y3,n3);
    g8 : FULL_ADDER port map(a4,s4, n3, y4,carry);


end struct;