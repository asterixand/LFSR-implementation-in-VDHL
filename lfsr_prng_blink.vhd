library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.ALL;

entity LFSR_PRNG is
	port(
		prn : out std_logic_vector(2 downto 0);  -- Pseudorandom number output (LEDs)
		clk : in  std_logic;                      -- Clock input
		rst : in  std_logic;                      -- Reset input
		KEY1 : in  std_logic;                     -- Key1 button input
		led : out std_logic                        -- 4th LED output
	);
end entity LFSR_PRNG;

architecture RTL of LFSR_PRNG is
	signal D123456 : std_logic_vector(5 downto 0) := "000001"; -- NEVER 000000
	signal clk_div : std_logic_vector (23 downto 0) := (others => '0');
	signal clk_slow: std_logic;
begin
	prn(0) <= D123456(5);
	prn(1) <= D123456(3);
	prn(2) <= D123456(1);
	clk_slow <= clk_div(23);
	led <= KEY1;

	-- Clock Divider
	process (clk) -- notice how this process works at clk speed
	begin
		if rising_edge(clk) then
			clk_div <= clk_div + 1;
		end if;
	end process;

	-- Linear Feedback Shift Register Pseudorandom Number Generator
	process(clk_slow) -- notice how this process runs in parallel, at clk_slow speed
	begin
		if rising_edge(clk_slow) then
			if (rst = '0') then
				D123456 <= "000001";
			else
				D123456(1) <= D123456(0);
				D123456(2) <= D123456(1);
				D123456(3) <= D123456(2);
				D123456(4) <= D123456(3);
				D123456(5) <= D123456(4);
				D123456(0) <= D123456(5) XOR D123456(4);
			end if;
		end if;
	end process;

	-- Asynchronous LED control based on KEY1 button press
	process(KEY1) -- process is triggered by changes to KEY1
	begin
		if KEY1 = '1' then
			led <= '1';  -- Turn on LED if KEY1 is pressed
		else
			led <= '0';  -- Turn off LED if KEY1 is not pressed
		end if;
	end process;

end architecture RTL;
