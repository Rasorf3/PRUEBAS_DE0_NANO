library IEEE;
use IEEE.std_logic_1164.all;

entity counter_15 is
port(
		CLK,RST : in std_logic;
		F : out std_logic_Vector(3 downto 0)
		);
end entity counter_15;

architecture beh of counter_15 is
	signal counter : integer range 0 to 15;
begin
	process(CLK) is
	begin
		if(RST = '0')then
			counter <= 0;
		elsif(CLK'EVENT AND CLK= '1')then
			counter <= counter + 1;
		end if;
	end process;
	F <= std_logic_vector(to_unsigned(counter,4));
end architecture beh;
