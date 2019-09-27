library ieee;
use ieee.std_logic_1164.all;

entity Simple_Counter is
	port (clk: in std_logic;
	HEX0: out std_logic_vector ( 6 downto 0 );
	HEX1: out std_logic_vector ( 6 downto 0 ));
end;

architecture myarch of Simple_Counter is
	function f_bcd_to_7_segment (digit : in integer)
	return std_logic_vector is 
	variable d7seg: std_logic_vector ( 6 downto 0 );
	begin
		case digit is
			when 0 => d7seg := "1000000";
			when 1 => d7seg := "1111001";
			when 2 => d7seg := "0100100";
			when 3 => d7seg := "0110000";
			when 4 => d7seg := "0011001";
			when 5 => d7seg := "0010010";
			when 6 => d7seg := "0000010";
			when 7 => d7seg := "1111000";
			when 8 => d7seg := "0000000";
			when 9 => d7seg := "0010000";
			when others => d7seg := "ZZZZZZZ";
		end case;
		return std_logic_vector(d7seg);
	end function f_bcd_to_7_segment;

	begin
		process(clk)
			variable d1: integer range 0 to 9 := 0;
			variable d2: integer range 0 to 9 := 0;
		begin
			if (clk'event and clk = '0') then
				if d1 = 9 then
					d1 := 0;
					d2 := d2 + 1;
				else
					d1 := d1+1;
				end if;
			end if;
			HEX0 <= f_bcd_to_7_segment(d1);
			HEX1 <= f_bcd_to_7_segment(d2);
		end process;
end;