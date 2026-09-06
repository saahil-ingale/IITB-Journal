library ieee;
use ieee.std_logic_1164.all;

entity students is
    port(
        inp   : in  std_logic_vector(4 downto 0);
        reset : in  std_logic;
        clock : in  std_logic;
        outp  : out std_logic
    );
end students;

architecture bhy of students is

    type state_type is (rst, s1, s2, s3, s4, s5, s6, s7); --
    signal present_state, next_state : state_type;

begin

    process(clock, reset)
    begin
        if reset = '1' then
            present_state <= rst;
        elsif rising_edge(clock) then
            present_state <= next_state;
        end if;
    end process;

  
    process(present_state, inp)
    begin

        next_state <= present_state;

        case present_state is

          
            when rst =>
                if inp = "10011" then
                    next_state <= s1;
                else
                    next_state <= rst;
                end if;

            
            when s1 =>
                if inp = "10100" then
                    next_state <= s2;
                else
                    next_state <= s1;
                end if;

            when s2 =>
                if inp = "10101" then
                    next_state <= s3;
                else
                    next_state <= s2;
                end if;

            when s3 =>
                if inp = "00100" then
                    next_state <= s4;
                else
                    next_state <= s3;
                end if;
					 
            when s4 =>
                if inp = "00101" then
                    next_state <= s5;
                else
                    next_state <= s4;
                end if;

            when s5 =>
                if inp = "01110" then
                    next_state <= s6;
                else
                    next_state <= s5;
                end if;

        
            when s6 =>
                if inp = "10100" then
                    next_state <= s7;
                else
                    next_state <= s6;
                end if;

 
            when s7 =>
                if inp = "10011" then
                    next_state <= s1;  -- overlap detection
                else
                    next_state <= s7;
                end if;

        end case;

    end process;

    -- melay output 
    process(present_state, inp)
    begin

        outp <= '0';

        if (present_state = s7 and inp = "10011") then
            outp <= '1';
        end if;
    end process;

end bhy;