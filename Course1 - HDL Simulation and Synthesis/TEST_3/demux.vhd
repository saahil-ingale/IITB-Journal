library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity demux is
    port(
        A : in std_logic_vector(2 downto 0);  -- c = Cin
        Y : out std_logic_vector(7 downto 0)
    );
end demux;

architecture struct of demux is
     -- signal s0,s1, s2,s3,s4,s5 : std_logic;
begin

	 g1 : DEM8 port map(A,Y);

end struct;