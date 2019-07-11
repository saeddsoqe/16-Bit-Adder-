library ieee;
use ieee.std_logic_1164.all;


entity fulladder is 
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
end fulladder;


architecture behaviour of fulladder is 
-- sig1 output of a XOR b
signal sig1 : std_logic ;
-- sig2 output of a AND b 
signal sig2 : std_logic ;
--sig3 output of sig1 and c
signal sig3 : std_logic ;
--
begin 
sig1    <= a xor b ;
sig2    <= a and b ;
sig3    <= sig1 and c ;
--summation output function 
sum     <= a xor b xor c;
--carrier output function 
carrier <= sig2 or sig3;
end behaviour;