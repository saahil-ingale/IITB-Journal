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

    type state_type is (rst, s1, s2, s3, s4, s5, s6, s7,rst1,t1,t2,t3); --
    signal present_state, next_state,present_state1, next_state1  : state_type;

begin

    process(clock, reset)
    begin
        if reset = '1' then
            present_state <= rst;
				present_state1 <= rst1;
        elsif rising_edge(clock) then
            present_state <= next_state;
				present_state1 <= next_state1;
        end if;
    end process;

  
    process(present_state, inp)
    begin

        next_state <= present_state;

        case present_state is

          
            when rst =>
                if inp = "00010" then
                    next_state <= s1;
                else
                    next_state <= rst;
                end if;

            
            when s1 =>
                if inp = "01111" then
                    next_state <= s2;
                else
                    next_state <= s1;
                end if;

            when s2 =>
                if inp = "11101" then
                    next_state <= s3;
                else
                    next_state <= s2;
                end if;

            when s3 =>
                if inp = "00010" then
                    next_state <= s4;
                else
                    next_state <= s1;
                end if;

        end case;
		  
		  
		  

		  
		  
		  

    end process;
	 
	 
	 process(present_state1, inp)
    begin

        next_state1 <= present_state1;

        case present_state1 is

          
            when rst1 =>
                if inp = "00111" then
                    next_state1 <= t1;
                else
                    next_state1 <= rst1;
                end if;

            
            when t1 =>
                if inp = "10110" then
                    next_state1 <= t2;
                else
                    next_state1 <= t1;
                end if;

            when t2 =>
                if inp = "01110" then
                    next_state <= t3;
                else
                    next_state <= t2;
                end if;

        end case;
		  
		  
		  

    end process;

    -- melay output 
    process(present_state, inp,present_state1)
    begin

        outp <= '0';

        if ((present_state = s1 and inp = "00010") or (present_state1 = t3 and inp ="01110")) then
            outp <= '1';
        end if;
    end process;

end bhy;