LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY demux IS
PORT(
	A,S2,S1,S0:IN STD_LOGIC;
	Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0:OUT STD_LOGIC
);
END demux;

ARCHITECTURE demux_arch OF demux IS
BEGIN
	Y7<=S0 and S1 and S2 and A;
	Y6<=(not S0) and S1 and S2 and A;
	Y5<=S0 and (not S1) and S2 and A;
	Y4<=(not S0) and (not S1) and S2 and A;
	Y3<=S0 and S1 and (not S1) and A;
	Y2<=(not S0) and S1 and (not S2) and A;
	Y1<=S0 and (not S1) and (not S2) and A;
	Y0<=(not S0) and (not S1) and (not S2) and A;
END demux_arch;
