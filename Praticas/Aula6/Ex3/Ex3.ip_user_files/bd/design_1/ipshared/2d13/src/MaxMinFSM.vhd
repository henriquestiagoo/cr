
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MaxMinFSM is
    generic( number_of_bits : integer := 8);
    Port ( clk : in STD_LOGIC;
           btnC : in STD_LOGIC; -- max or min
           btnL : in std_logic; -- reset
           inadd : in  STD_LOGIC_VECTOR (3 downto 0);
           inp : in STD_LOGIC_VECTOR (7 downto 0);
           outp : out STD_LOGIC_VECTOR (7 downto 0);
           outadd : out STD_LOGIC_VECTOR (3 downto 0));
end MaxMinFSM;

architecture Behavioral of MaxMinFSM is
    type state_type is (initial_state, final_state); -- enumera��o de estados
    signal C_S, N_S : state_type;
    signal ResMax, next_ResMax : STD_LOGIC_VECTOR (7 downto 0);
    signal ResMin, next_ResMin : STD_LOGIC_VECTOR (7 downto 0);
    signal ResAddMin, next_ResAddMin : STD_LOGIC_VECTOR (3 downto 0);
    signal ResAddMax, next_ResAddMax : STD_LOGIC_VECTOR (3 downto 0);
    
begin
process (clk) -- processo sequencial
    begin
        if rising_edge(clk) then
            if (btnL = '1') then 
                C_S <= initial_state; ResMax <= (others => '0');  ResMin <= (others => '1');  ResAddMin <= (others => '0'); ResAddMax <= (others => '0');
            else C_S <= N_S;
                ResMax <= next_ResMax; 
                ResMin <= next_ResMin;
                ResAddMin <= next_ResAddMin;
                ResAddMax <= next_ResAddMax;
        end if;
    end if;
end process;

process (C_S, ResMax, ResMin, ResAddMin, ResAddMax, inadd, inp) -- processo combinat�rio
begin
    N_S <= C_S;
    next_ResMax <= ResMax;
    next_ResMin <= ResMin;
    next_ResAddMin <= ResAddMin;
    next_ResAddMax <= ResAddMax;
    case C_S is
        when initial_state => N_S <= initial_state;
            if(inp > ResMax) then
                next_ResMax <= inp;
                next_ResAddMax <= inadd;
            elsif(inp < ResMin) then
                next_ResMin <= inp;
                next_ResAddMin <= inadd;
            end if;             
            if(inadd = "1111") then N_S <= final_state;
            end if;
        when final_state => N_S <= initial_state;
            if(btnC = '1') then
                outp <= ResMin;
                outadd <= ResAddMin;
            else
                outp <= ResMax;
                outadd <= ResAddMax;
            end if;
        when others => N_S <= initial_state;
    end case;
end process;
end Behavioral;