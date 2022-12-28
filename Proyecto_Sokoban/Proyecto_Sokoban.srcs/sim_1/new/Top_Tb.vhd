-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 3.2.2022 16:08:43 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_Top_proyecto is
end tb_Top_proyecto;

architecture tb of tb_Top_proyecto is
    
    component Top_proyecto
        
        
        port (clk   : in std_logic;
              reset : in std_logic;
              up    : in std_logic;
              down  : in std_logic;
              left  : in std_logic;
              switch: in STD_LOGIC;
              switch_2: in STD_LOGIC;
              right : in std_logic;
              HS    : out std_logic;
              VS    : out std_logic;
              RED   : out std_logic_vector (3 downto 0);
              GRN   : out std_logic_vector (3 downto 0);
              BLU   : out std_logic_vector (3 downto 0));
    end component;

    signal clk   : std_logic;
    signal reset : std_logic;
    signal up    : std_logic;
    signal down  : std_logic;
    signal left  : std_logic;
    signal switch  : std_logic;
    signal switch_2  : std_logic;
    signal right : std_logic;
    signal HS    : std_logic;
    signal VS    : std_logic;
    signal RED   : std_logic_vector (3 downto 0);
    signal GRN   : std_logic_vector (3 downto 0);
    signal BLU   : std_logic_vector (3 downto 0);

    constant TbPeriod : time := 1000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : Top_proyecto
    port map (clk   => clk,
              reset => reset,
              up    => up,
              down  => down,
              left  => left,
              right => right,
              switch_2 => switch_2,
              switch => switch,
              HS    => HS,
              VS    => VS,
              RED   => RED,
              GRN   => GRN,
              BLU   => BLU);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        reset <= '1';
        up <= '0';
        down <= '0';
        left <= '0';
        right <= '0';
        switch_2 <= '0';
        switch <= '0';
        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;
        reset <= '0';
        wait for 500* TbPeriod;
        left <= '1';
        wait for 500* TbPeriod;
        left <= '0';
        wait for 500* TbPeriod;
        down <= '1';
        wait for 500* TbPeriod;
        down <= '0';    
        wait for 500* TbPeriod;
        switch_2 <= '1';
        reset <= '1';
        wait for 500* TbPeriod;
        reset <= '0';
        
        wait;
        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_Top_proyecto of tb_Top_proyecto is
    for tb
    end for;
end cfg_tb_Top_proyecto;