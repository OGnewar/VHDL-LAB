library	ieee;
use	IEEE.STD_LOGIC_1164.ALL;

ENTITY	test	IS 
    PORT(A1,A0,E:	IN	STD_LOGIC;
        Y3,Y2,Y1,Y0:	OUT	STD_LOGIC
    );
END	test;

ARCHITECTURE	test	OF	test	IS 
	BEGIN
        Y3	<=	E	AND	A1	AND	A0;
        Y2	<=	E	AND	A1	AND	(NOT	A0);
        Y1	<=	E	AND	(NOT	A1)	AND	A0;
        Y0	<=	E	AND	(NOT	A1)	AND	(NOT	A0);
END	test;
