library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.Gates.all;

entity andy is
    port(
        A: in std_logic_vector(3 downto 0);  -- riablec = Cin
        Y  : out std_logic_vector(3 downto 0)
    );
end andy;

architecture struct of andy is
begin
	
	process(A)
	variable B,C : unsigned(3 downto 0);
	begin
		B := unsigned(A);
		C := "0000";
	
	if to_integer(B) >= 5 then
		C := "0110" + to_integer(B);
	else
		C := B;
	end if;
	
	Y <= std_logic_vector(C);
	end process;
end struct;