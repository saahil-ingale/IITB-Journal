library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.Gates.all;

entity add is
    port(
        C: in std_logic_vector(8 downto 5);  -- riablec = Cin
		  D: in std_logic_vector(4 downto 1);
		  M: in std_logic;
        Y: out std_logic_vector(4 downto 0)
    );
end add;


architecture struct of add is

component andy is
port(
    A : in std_logic_vector(3 downto 0);
    Y : out std_logic_vector(3 downto 0)
);
end component;

	signal C1,D1 : std_logic_vector(3 downto 0);
	
	
begin

	g1 : andy port map(C,C1);
	g2 : andy port map(D,D1);
	
	process(C1,D1,M)
	
	variable C2,D2 : unsigned(3 downto 0);
	variable S : unsigned (4 downto 0);
		
	begin
	
		C2 := unsigned(C1);
		D2 := unsigned(D1);
		
		if M='0' then
			if (to_integer(C2) >= 5) and (to_integer(D2) >= 5) then
				S := ("0" & c2) + ("0" & d2) - "00110" ;
			else
				S := ("0" & c2) + ("0" & d2);
			end if;
		end if;
		Y <= std_logic_vector(S);
	end process;
end struct;