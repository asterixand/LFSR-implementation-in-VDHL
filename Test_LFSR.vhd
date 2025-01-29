library ieee;
use ieee.std_logic_1164.all;

entity test_LFSR is
end entity test_LFSR;

architecture RTL of test_LFSR is
	component LFSR_PRNG
		port(
			prn : out std_logic_vector(2 downto 0);
			clk : in  std_logic;
			rst : in  std_logic
		);
	end component LFSR_PRNG;

	constant full_period : time := 20 ns;

	signal clk : std_logic := '0';
	signal rst : std_logic := '1';
	signal prn : std_logic_vector(2 downto 0);
begin
	-- set reset to 1, then to 0
	rst <= '1', '0' after full_period;

	-- make the clock
	Clock : process
	begin
		clk <= not clk;
		wait for full_period / 2;
	end process;

	-- test with some inputs
	testing : process
	begin
		wait for 65*full_period;
		assert false report "desired end of simulation" severity failure;
	end process;

	-- Design Under Test
	DUT : LFSR_PRNG
		port map(
			clk => clk,
			rst => rst,
			prn => prn
		);

end architecture RTL;
