library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sbadder is 
port (
--first input to the adder 
firstinput : IN std_logic_vector (15 downto 0) ;
--second input to the adder 
secondinput : IN std_logic_vector (15 downto 0) ;
--total summation 
sum         : OUT std_logic_vector (15 downto 0) ;
--carrier output 
carrier     : OUT std_logic 
);
end sbadder;


architecture behaviour of sbadder is 
component fulladder is 
port (
--input terminal 
a       : IN std_logic ;
--input terminal 
b       : IN std_logic ;
--input terminal 
c       : IN std_logic ;
--suming output terminal 
sum     : OUT std_logic ;
--carrier output terminal 
carrier : OUT std_logic 
);
end component;
-- the input carreier and it initialized to zero
signal inputcarrier : std_logic ;
-- output signal of each block
signal sig : std_logic_vector(14 downto 0) ;
begin 
inputcarrier <= '0';
adder1 : fulladder port map (firstinput(0),secondinput(0),inputcarrier,sum(0),sig(0));
adder2 : fulladder port map (firstinput(1),secondinput(1),sig(0),sum(1),sig(1));
adder3 : fulladder port map (firstinput(2),secondinput(2),sig(1),sum(2),sig(2));
adder4 : fulladder port map (firstinput(3),secondinput(3),sig(2),sum(3),sig(3));
adder5 : fulladder port map (firstinput(4),secondinput(4),sig(3),sum(4),sig(4));
adder6 : fulladder port map (firstinput(5),secondinput(5),sig(4),sum(5),sig(5));
adder7 : fulladder port map (firstinput(6),secondinput(6),sig(5),sum(6),sig(6));
adder8 : fulladder port map (firstinput(7),secondinput(7),sig(6),sum(7),sig(7));
adder9 : fulladder port map (firstinput(8),secondinput(8),sig(7),sum(8),sig(8));
adder10: fulladder port map (firstinput(9),secondinput(9),sig(8),sum(9),sig(9));
adder11: fulladder port map (firstinput(10),secondinput(10),sig(9),sum(10),sig(10));
adder12: fulladder port map (firstinput(11),secondinput(11),sig(10),sum(11),sig(11));
adder13: fulladder port map (firstinput(12),secondinput(12),sig(11),sum(12),sig(12));
adder14: fulladder port map (firstinput(13),secondinput(13),sig(12),sum(13),sig(13));
adder15: fulladder port map (firstinput(14),secondinput(14),sig(13),sum(14),sig(14));
adder16: fulladder port map (firstinput(15),secondinput(15),sig(14),sum(15),carrier);



end behaviour;