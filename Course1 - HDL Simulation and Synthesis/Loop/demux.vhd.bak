library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity demux is
    port(
		  A : in std_logic_vector(5 downto 0);
        Y : out std_logic
    );
end demux;

architecture struct of demux is
     -- signal s0,s1, s2,s3,s4,s5 : std_logic;
begin
		process(A)
		begin
		 if A="100000" then Y<= '1';
		 elsif A="100011" then Y<='1';
		 elsif A="100110" then Y<='1';
		 elsif A="101001" then Y<='1';
		 elsif A="101100" then Y<='1';
		 elsif A="101111" then Y<='1';
		 elsif A="110010" then Y<='1';
		 elsif A="110101" then Y<='1';
		 elsif A="111000" then Y<='1';
		 elsif A="111011" then Y<='1';
		 elsif A="111110" then Y<='1';
		 elsif A="000101" then Y<='1';
		 elsif A="001010" then Y<='1';
		 elsif A="001111" then Y<='1';
		 elsif A="010100" then Y<='1';
		 elsif A="011001" then Y<='1';
		 elsif A="011110" then Y<='1';
		 elsif A="000000" then Y<='1';
		 elsif A="001111" then Y<='1';
		 elsif A="000000" then Y<='1';
		 elsif A="011110" then Y<='1';
		 else Y<='0'; end if;
		end process;
		
end struct;