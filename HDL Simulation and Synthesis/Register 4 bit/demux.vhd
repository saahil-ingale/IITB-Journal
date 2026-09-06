library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity D_FF is
port(
	CLK : in std_logic ;
	RESET : in std_logic;a
	D : in std_logic;
	Q : out std_logic
);
end D_FF;

architecture main of D_FF is
 begin
	process(CLK)
	begin
	
	if RESET = '1' then
		Q <= '0';
	
	elsif rising_edge(CLK) then
		Q <= D;
	end if;
	end process;
 end main;		
 
 entity REG is
 port(
	CLK : in std_logic;
	R : in std_logic;
	D : in unsigned(3 downto 0);
	Y : out unsigned(3 downto 0)
);

architecture main of REG is

component D_FF is
port(
	CLK : in std_logic ;
	RESET : in std_logic;
	D : in std_logic;
	Q : out std_logic
);
end component;

	
begin
	process (R,D)
	begin
		
 