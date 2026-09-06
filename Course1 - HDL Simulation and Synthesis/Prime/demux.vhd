library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity demux is
    port(
		  A : in std_logic_vector(4 downto 0);
        Y : out std_logic
    );
end demux;

architecture struct of demux is
     -- signal s0,s1, s2,s3,s4,s5 : std_logic;
begin
		process(A)
		begin
		 if A="00011" then Y<= '1';
		 elsif A="00010" then Y<='1';
		 elsif A="00101" then Y<='1';
		 elsif A="00111" then Y<='1';
		 elsif A="01011" then Y<='1';
		 elsif A="01101" then Y<='1';
		 elsif A="10001" then Y<='1';
		 elsif A="10011" then Y<='1';
		 elsif A="10111" then Y<='1';
		 elsif A="11101" then Y<='1';
		 elsif A="11111" then Y<='1';
		 else Y<='0'; end if;
		end process;
		
end struct;