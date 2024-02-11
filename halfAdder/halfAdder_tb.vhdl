library ieee;
use ieee.std_logic_1164.all;

entity half_addertest is
end half_addertest;

architecture test of half_addertest is
	signal a,b,s,c: std_logic;
	component half_adder
		port(
		    A,B:in std_logic;
	            S,C:out std_logic
		);
	end component;

begin
	half_adder1: half_adder port map(a => a, b => b, s => s, c => c);

	process begin

		wait for 500 ms;

		a <= '1';
		b <= '1';
		wait for 500 ms;

		a <= '0';
		b <= '1';
		wait for 500 ms;

		wait;
	end process;
end test;


