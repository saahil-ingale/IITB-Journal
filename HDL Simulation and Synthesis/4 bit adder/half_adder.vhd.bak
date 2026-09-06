library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity half is
    port(
        s2, s1, s0 : in  std_logic;
        sum        : out std_logic;
        carry      : out std_logic
    );
end half;

architecture struct of half is

    signal n1, n2, n3, n4 : std_logic;
    signal n5, n6, n7, n8 : std_logic;
    signal n9, n10, n11, n12 : std_logic;

begin

    -- XOR of s2 and s1
    g1 : NAND_2 port map(s2, s1, n1);
    g2 : NAND_2 port map(s2, n1, n2);
    g3 : NAND_2 port map(s1, n1, n3);
    g4 : NAND_2 port map(n2, n3, n4);

    -- SUM = XOR(n4, s0)
    g5 : NAND_2 port map(n4, s0, n5);
    g6 : NAND_2 port map(n4, n5, n6);
    g7 : NAND_2 port map(s0, n5, n7);
    g8 : NAND_2 port map(n6, n7, sum);

    -- Carry generation
    g9  : NAND_2 port map(s0, n4, n8);
    g10 : NAND_2 port map(n1, n1, n9);
    g11 : NAND_2 port map(n8, n8, n10);
    g12 : NAND_2 port map(n9, n10, carry);

end struct;