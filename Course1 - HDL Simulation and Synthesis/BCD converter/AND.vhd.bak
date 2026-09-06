library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.Gates.all;

entity andy is
    port(
        C,D: in std_logic_vector(3 downto 0);  -- c = Cin
        Y  : out std_logic_vector(2 downto 0)
    );
end andy;

architecture struct of andy is
	 signal A,B : unsigned(3 downto 0);
begin
	A <= unsigned(C);
	B <= unsigned(D);

	process(A,B)
	begin
	if to_integer(A) > to_integer(B) then
		Y(2) <= '1';
		Y(0) <= '0';
		Y(1) <= '0';
	elsif to_integer(A) = to_integer(B) then
		Y(1) <= '1';
		Y(2) <= '0';
		Y(0) <= '0';
	elsif to_integer(A) < to_integer(B) then
		Y(0) <= '1';
		Y(1) <= '0';
		Y(2) <= '0';
	end if;
	end process;
end struct;