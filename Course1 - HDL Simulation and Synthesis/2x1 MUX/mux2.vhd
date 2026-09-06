library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux2 is
    port(
        a, b, s : in std_logic;  -- c = Cin
        output  : out std_logic
    );
end mux2;

architecture struct of mux2 is
    --signal s9, s10, s11 : std_logic;
begin

	 g1 : MUX2x1 port map(a, b,s, output);
end struct;