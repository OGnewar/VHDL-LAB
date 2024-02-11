LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY demux_test IS
END demux_test;

ARCHITECTURE test_arch OF demux_test IS
SIGNAL A,S2,S1,S0,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0: STD_LOGIC;

COMPONENT demux 
	PORT(
		A,S2,S1,S0:IN STD_LOGIC;
		Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0:OUT STD_LOGIC
	    );
END COMPONENT demux;

BEGIN
	UUT: demux
	PORT MAP(A => A, S2 => S2, S1 => S1, S0 => S0, Y7 => Y7,Y6 => Y6,Y5 => Y5,Y4 => Y4,Y3 => Y3,Y2 => Y2,Y1 => Y1,Y0 => Y0);

	stimulus_process: PROCESS
	BEGIN
		--TEST CASE 1
		A<='1';
		S2<='0';
		S1<='0';
		S0<='0';
		WAIT FOR 10 ns;

		--TEST CASE 2
		A<='1';
		S2<='0';
		S1<='0';
		S0<='1';
		WAIT FOR 10 ns;

		--TEST CASE 3
		A<='1';
		S2<='0';
		S1<='1';
		S0<='0';
		WAIT FOR 10 ns;

		--TEST CASE 4
		A<='1';
		S2<='0';
		S1<='1';
		S0<='1';
		WAIT FOR 10 ns;

		--TEST CASE 5
		A<='1';
		S2<='1';
		S1<='0';
		S0<='0';
		WAIT FOR 10 ns;

		--TEST CASE 6
		A<='1';
		S2<='1';
		S1<='0';
		S0<='1';
		WAIT FOR 10 ns;

		WAIT;
	END PROCESS stimulus_process;
END test_arch;
