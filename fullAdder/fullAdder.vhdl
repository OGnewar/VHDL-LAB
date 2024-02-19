--	vhdl code for or gate
LIBRARY	IEEE;
USE	IEEE.STD_LOGIC_1164.ALL;

ENTITY	or_gate	IS
PORT(
	x,y:IN	STD_LOGIC;
	z:OUT	STD_LOGIC
);
END	or_gate;

ARCHITECTURE	or_arch	OF	or_gate	IS
BEGIN
	z<=x	or	y;
END	or_arch;

-- vhdl code for half adder
LIBRARY	IEEE;
USE	IEEE.STD_LOGIC_1164.ALL;

ENTITY	half_adder	IS
PORT(
	a,b:IN	STD_LOGIC;
	s,c:OUT	STD_LOGIC
);
END	half_adder;

ARCHITECTURE	ha_arch	OF	half_adder	IS
BEGIN
s<=a	xor	b;
c<=a	and	b;
END	ha_arch;

--vhdl code for full adder using two half adder and a or gate

LIBRARY	IEEE;
USE	IEEE.STD_LOGIC_1164.ALL;

ENTITY	full_adder	IS
PORT(
	A,B,Cin:IN	STD_LOGIC;
	S,C:OUT	STD_LOGIC
);
END	full_adder;
ARCHITECTURE	fa_arch	OF	full_adder	IS
COMPONENT	or_gate	IS
PORT(
	x,y:IN	STD_LOGIC;
	z:OUT	STD_LOGIC			
);
END	COMPONENT	or_gate;

COMPONENT	half_adder	IS
PORT(
	a,b:IN	STD_LOGIC;
	s,c:OUT	STD_LOGIC
);
END	COMPONENT	half_adder;

SIGNAL	S1,C1,C2:STD_LOGIC;
BEGIN
	HA1:half_adder	PORT	MAP(a=>A,b=>B,s=>S1,c=>C1);
	HA2:half_adder	PORT	MAP(a=>S1,b=>Cin,s=>S,c=>C2);
	OR1:or_gate	PORT	MAP(x=>C1,y=>C2,z=>C);
END	fa_arch;
