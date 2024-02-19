library	IEEE;
use	IEEE.std_logic_1164.all;

entity	fa_test	is
end	fa_test;

architecture	test_bench	of	fa_test	is
component	full_adder	is
Port	(A,B,Cin	:	in	STD_LOGIC;
	S,C	:	out	STD_LOGIC);
end	component	full_adder;

signal	A,B,Cin,S,C:	STD_LOGIC;

begin

uut	:	full_adder	port	map(
A=>A,	B=>B,
Cin=>Cin,S=>S,C=>C);

stim:	process
begin
A<='0';
B<='0';
Cin<='0';
wait	for	10	ns;

A<='0';
B<='0';
Cin<='1';
wait	for	10	ns;

A<='0';
B<='1';
Cin<='0';
wait	for	10	ns;

A<='0';
B<='1';
Cin<='1';
wait	for	10	ns;
	wait;

end	process;
end	test_bench;
