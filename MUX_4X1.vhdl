library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity MUX_4X1 is
	port(S: in std_logic_vector(1 downto 0);
		  I: in std_logic_vector(3 downto 0);
		  Y: out std_logic);
		  
end MUX_4X1;

architecture behavioural of MUX_4X1 is
begin

process(S,I)
begin
	
	if(S <= "00") then
	  
	   Y <= I(0);
		
	elsif(S <= "01") then 
	
		Y <= I(1);
		
	elsif(S <= "10") then 
	
		Y <= I(2);
	
	else
	
		Y <= I(3);
		
end if;

end process;

end behavioural;