 library ieee;
use ieee.std_logic_1164.all;

entity tb_encoder_8to3 is
end tb_encoder_8to3;

architecture sim of tb_encoder_8to3 is
    signal i: std_logic_vector(7 downto 0) := (others => '0');
    signal y: std_logic_vector(2 downto 0);
begin
    uut: entity work.encoder_8to3
        port map(
            i => i,
            y => y
        );

    stim: process
    begin
        i <= "00000001"; wait for 50 ns;
        i <= "00000010"; wait for 50 ns;
        i <= "00000100"; wait for 50 ns;
        i <= "00001000"; wait for 50 ns;
        i <= "00010000"; wait for 50 ns;
        i <= "00100000"; wait for 50 ns;
        i <= "01000000"; wait for 50 ns;
        i <= "10000000"; wait for 50 ns;
        i <= "00000000"; wait for 50 ns;
        wait;
    end process;
end sim;


