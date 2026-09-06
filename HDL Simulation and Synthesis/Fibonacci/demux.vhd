library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demux is
    port(
        X : in  std_logic_vector(9 downto 0); -- 10-bit input vector
        y : out std_logic                     -- 1-bit detection output
    );
end entity demux;

architecture behav of demux is
begin

    -- Behavioral process modeling for sequence evaluation
    process(X)
        variable input_val : integer range 0 to 1023;
    begin
        -- Cast the standard logic vector array to an integer for standard matching
        input_val := to_integer(unsigned(X));

        -- Output evaluates to '1' only when matching a Fibonacci value
        case input_val is
            when 0 | 1 | 2 | 3 | 5 | 8 | 13 | 21 | 34 | 55 | 89 | 144 | 233 | 377 | 610 | 987 =>
                y <= '1'; 
            when others =>
                y <= '0'; 
        end case;
        
    end process;

end behav;