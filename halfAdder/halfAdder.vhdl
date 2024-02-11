library	ieee;
use ieee.std_logic_1164.all;

entity	half_adder is
port(
	A,B:in std_logic;
	s,c:out std_logic
);
end half_adder;

architecture behavior of half_adder is
begin
	ha:process(a,b)
	begin
		if a='1' then
		   s<= not b;
		   c<= b;
		else
		   s<=b;
		   c<= not b;
		end if;
	end process ha;
end behavior;
		  

