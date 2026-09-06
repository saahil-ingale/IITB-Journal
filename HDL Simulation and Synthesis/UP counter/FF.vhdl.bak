library ieee;
use ieee.std_logic_1164.all;
package Gates is
  component INVERTER is
   port (A: in std_logic; Y: out std_logic);
  end component INVERTER;

  component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;

  component NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NAND_2;

  component OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component OR_2;
  
  component OR_4 is
   port (A, B, C, D: in std_logic; Y: out std_logic);
  end component OR_4;

  component NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NOR_2;

  component XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XOR_2;

  component XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XNOR_2;

  component HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
  end component HALF_ADDER;
  
  component DEMUX_2 is
   port (A,B,E: in std_logic; Y3,Y2,Y1,Y0: out std_logic);
  end component DEMUX_2;
  
  component S is
   port (A, B, C,D,E: in std_logic; Y: out std_logic);
  end component S;
  
  component MUX_2 is
   port (A, B, S: in std_logic; Y: out std_logic);
  end component MUX_2;
  
  component DIV is
   port ( A: in std_logic_vector; Y: out std_logic);
  end component DIV;

end package Gates;


library ieee;
use ieee.std_logic_1164.all;
entity DIV is
   port (A: in std_logic_vector; Y: out std_logic);
end entity DIV;

architecture Equations of DIV is
begin
	
	Y <= '1' when
       A = "100000" or
       A = "100011" or
       A = "100110" or
       A = "101001" or
       A = "101100" or
       A = "101111" or
       A = "110010" or
       A = "110101" or
       A = "111000" or
       A = "111011" or
       A = "111110" or 
		 A = "000000" or
       A = "000101" or
       A = "001010" or
       A = "001111" or
       A = "010100" or
       A = "011001" or
       A = "011110"
      else '0';
		
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity INVERTER is
   port (A: in std_logic; Y: out std_logic);
end entity INVERTER;

architecture Equations of INVERTER is
begin
   Y <= not A;
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity MUX_2 is
   port (A,B,S: in std_logic; Y: out std_logic);
end entity MUX_2;

architecture Equations of MUX_2 is
begin
   Y <= ( (not S) and B) OR (S and A);
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity S is
   port (A,B,C,D,E: in std_logic; Y: out std_logic);
end entity S;

architecture Equations of S is
begin
   Y <= ((not A) and (not C) and (not E))
  or ((not A) and C and E)
  or (A and (not C));
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity OR_4 is
   port (A,B,C,D: in std_logic; Y: out std_logic);
end entity OR_4;

architecture Equations of OR_4 is
begin
   Y <= A or B or C or D;
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity DEMUX_2 is
   port (A,B,E: in std_logic; Y3,Y2,Y1,Y0: out std_logic);
end entity DEMUX_2;

architecture Equations of DEMUX_2 is
begin
   Y0 <= (not A) and (not B) and E;
	Y1 <= (not A) and (B) and E;
	Y2 <= (A) and (not B) and E;
	Y3 <= A and B and E;
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity AND_2;

architecture Equations of AND_2 is
begin
   Y <= A and B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NAND_2;

architecture Equations of NAND_2 is
begin
   Y <= not (A and B);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity OR_2;

architecture Equations of OR_2 is
begin
   Y <= A or B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NOR_2;

architecture Equations of NOR_2 is
begin
   Y <= not (A or B);
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XOR_2;

architecture Equations of XOR_2 is
begin
   Y <= A xor B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XNOR_2;

architecture Equations of XNOR_2 is
begin
   Y <= not (A xor B);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
end entity HALF_ADDER;

architecture Equations of HALF_ADDER is
begin
   S <= (A xor B);
   C <= (A and B);
end Equations;
  
