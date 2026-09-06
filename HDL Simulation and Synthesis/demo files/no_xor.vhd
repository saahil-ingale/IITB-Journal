library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity no_xor is
    port(
        a, b, c : in std_logic;  -- c = Cin
        sum     : out std_logic;
        carry   : out std_logic
    );
end no_xor;

architecture struct of no_xor is
    signal s1, s2, s3, s4 : std_logic;
    signal s5, s6, s7, s8 : std_logic;
    signal s9, s10, s11 : std_logic;
begin

    -- XOR(A,B)
    g1 : NAND_2 port map(a, b, s1);
    g2 : NAND_2 port map(a, s1, s2);
    g3 : NAND_2 port map(b, s1, s3);
    g4 : NAND_2 port map(s2, s3, s4);

    -- SUM = XOR(s4,Cin)
    g5 : NAND_2 port map(s4, c, s5);
    g6 : NAND_2 port map(s4, s5, s6);
    g7 : NAND_2 port map(c, s5, s7);
    g8 : NAND_2 port map(s6, s7, sum);

    g9  : NAND_2 port map(c, s4, s8);
	 g10 : NAND_2 port map(s1, s8, carry);
end struct;