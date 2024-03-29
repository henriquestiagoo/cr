library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ex3_3 is
    Port ( clk : in STD_LOGIC;
           btnC : in STD_LOGIC;
           sel_disp : out STD_LOGIC_VECTOR (7 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end ex3_3;

architecture Behavioral of ex3_3 is
    signal random_number : std_logic_vector(999 downto 0);
    signal number : std_logic_vector(999 downto 0) := (others => '0');
    signal result : integer range 0 to 1000;
    signal result_hex : std_logic_vector(9 downto 0);
    signal result_dec : std_logic_vector(31 downto 0);
begin

-- Use random number generator component
random : entity work.RanGen
         generic map (width => 1000)
         port map (clk, random_number);

-- When btnC is pressed get a new random number
number <= random_number when btnC = '1';

-- Use Consecutive ones component
ones : entity work.ConsecutiveOnes
       generic map (size => 1000)
       port map (clk => clk, input => random_number, reset => '0', result => result);

-- Convert result to hex
result_hex <= conv_std_logic_vector(result, 10);

-- Show result in displays
--disp : entity work.EightDisplayControl
--       port map(clk, "0000", "0000", "0000", "0000", "0000",
--                "00" & result_hex(9 downto 8), result_hex(7 downto 4), result_hex(3 downto 0),
--                select_display=>sel_disp, segments=>seg);

-- Convert result to decimal
result_dec <= conv_std_logic_vector(result, 32);
-- TODO

end Behavioral;

