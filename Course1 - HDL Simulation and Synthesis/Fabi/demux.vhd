library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity demux is
    port(
        A : in std_logic_vector(9 downto 0);  -- c = Cin
        Y : out std_logic(0 downto 0)
    );
end demux;

architecture struct of demux is
     -- signal s0,s1, s2,s3,s4,s5 : std_logic;
begin

	 --g1 : XOR_4 port map(A,B,Y);

end struct;