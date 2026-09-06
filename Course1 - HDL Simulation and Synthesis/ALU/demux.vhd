library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demux is
    port(
        S : in unsigned(1 downto 0);
        A : in unsigned(3 downto 0);
        B : in unsigned(3 downto 0);
        Y : out unsigned(7 downto 0)
    );
end demux;

architecture struct of demux is
begin
    process(S, A, B)
        variable sign_A : signed(4 downto 0);
        variable sign_B : signed(4 downto 0);
        variable sub_res : signed(4 downto 0);
    begin
        if S = "00" then 
            -- Concatenation Mode
            Y <= (A & B);
            
        elsif S = "01" then 
            -- Signed Subtraction (A - B) with 8-bit sign extension
            sign_A := signed(resize(A, 5));
            sign_B := signed(resize(B, 5));
            sub_res := sign_A - sign_B;
            Y <= unsigned(resize(sub_res, 8));
            
        elsif S = "10" then 
            -- Bitwise XOR padded with 4 leading zeros
            Y <= "0000" & (A xor B);
            
        else -- S = "11"
            -- Shift Operations
            Y(7 downto 4) <= "0000";
            if B(3) = '1' then 
                Y(3 downto 0) <= shift_right(A, to_integer(B(1 downto 0)));
            else 
                Y(3 downto 0) <= shift_left(A, to_integer(B(1 downto 0)));
            end if;
        end if;
    end process;
end struct;