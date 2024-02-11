library ieee;
use ieee.std_logic_1164.all;

entity fsmtb_lcm  is 
	end fsmtb_lcm;

architecture behavior of fsmtb_lcm is 
signal CLK, RESET: std_logic;
signal A, B, LCM: integer;
component fsm_LCM 
	port(CLK, RESET : IN STD_LOGIC;
	    A, B: IN INTEGER;
	    LCM : OUT INTEGER);
END COMPONENT;
BEGIN
fsm_LCM1 : fsm_LCM port map(CLK=> CLK, RESET=>  RESET, A=>A, B=>B, LCM=>LCM);
clock: process
begin
	CLK<= '1';
	wait for 100 ns;

	CLK <= '0';
	WAIT FOR 100 NS;
	
end process;
process
begin
	RESET <= '1';
	wait for 10 ns;
	RESET <= '0';

	A <= 45;
	B <= 15;
	wait for 1600 ns;

	A <= 8;
	B <= 10;
	wait for 1600 ns;

	A <= 15;
	B <= 55;
	wait for 1600 ns;

	WAIT;
end process;
end behavior;
