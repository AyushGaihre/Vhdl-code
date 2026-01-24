 library ieee;
use ieee.std_logic_1164.all;

entity encoder_8to3 is
    port(
        i : in  std_logic_vector(7 downto 0); -- one-hot inputs
        y : out std_logic_vector(2 downto 0)  -- encoded output
    );
end encoder_8to3;

architecture rtl of encoder_8to3 is
begin
    process(i)
    begin
        case i is
            when "00000001" => y <= "000";
            when "00000010" => y <= "001";
            when "00000100" => y <= "010";
            when "00001000" => y <= "011";
            when "00010000" => y <= "100";
            when "00100000" => y <= "101";
            when "01000000" => y <= "110";
            when "10000000" => y <= "111";
            when others      => y <= "000"; -- default / no input
        end case;
    end process;
end rtl;
