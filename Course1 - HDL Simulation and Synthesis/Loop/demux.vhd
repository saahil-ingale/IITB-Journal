library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.Gates.all;

entity demux is
    port(
		  A : in unsigned(2 downto 0);
        Y : out unsigned(7 downto 0)
    );
end demux;

architecture struct of demux is
begin
    process(A)
        variable temp : unsigned(7 downto 0);
    begin
        temp := (others => '0');

        for i in 0 to 7 loop
            if to_integer(A) = i then
                temp(i) := '1';
            end if;
        end loop;

        Y <= temp;
    end process;
end struct;