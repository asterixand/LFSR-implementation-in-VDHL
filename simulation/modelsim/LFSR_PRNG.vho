-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/29/2025 11:13:04"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LFSR_PRNG IS
    PORT (
	prn : OUT std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic
	);
END LFSR_PRNG;

-- Design Ports Information
-- prn[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prn[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prn[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LFSR_PRNG IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_prn : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \clk_div[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \prn[0]~output_o\ : std_logic;
SIGNAL \prn[1]~output_o\ : std_logic;
SIGNAL \prn[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_div[0]~69_combout\ : std_logic;
SIGNAL \clk_div[1]~23_combout\ : std_logic;
SIGNAL \clk_div[1]~24\ : std_logic;
SIGNAL \clk_div[2]~25_combout\ : std_logic;
SIGNAL \clk_div[2]~26\ : std_logic;
SIGNAL \clk_div[3]~27_combout\ : std_logic;
SIGNAL \clk_div[3]~28\ : std_logic;
SIGNAL \clk_div[4]~29_combout\ : std_logic;
SIGNAL \clk_div[4]~30\ : std_logic;
SIGNAL \clk_div[5]~31_combout\ : std_logic;
SIGNAL \clk_div[5]~32\ : std_logic;
SIGNAL \clk_div[6]~33_combout\ : std_logic;
SIGNAL \clk_div[6]~34\ : std_logic;
SIGNAL \clk_div[7]~35_combout\ : std_logic;
SIGNAL \clk_div[7]~36\ : std_logic;
SIGNAL \clk_div[8]~37_combout\ : std_logic;
SIGNAL \clk_div[8]~38\ : std_logic;
SIGNAL \clk_div[9]~39_combout\ : std_logic;
SIGNAL \clk_div[9]~40\ : std_logic;
SIGNAL \clk_div[10]~41_combout\ : std_logic;
SIGNAL \clk_div[10]~42\ : std_logic;
SIGNAL \clk_div[11]~43_combout\ : std_logic;
SIGNAL \clk_div[11]~44\ : std_logic;
SIGNAL \clk_div[12]~45_combout\ : std_logic;
SIGNAL \clk_div[12]~46\ : std_logic;
SIGNAL \clk_div[13]~47_combout\ : std_logic;
SIGNAL \clk_div[13]~48\ : std_logic;
SIGNAL \clk_div[14]~49_combout\ : std_logic;
SIGNAL \clk_div[14]~50\ : std_logic;
SIGNAL \clk_div[15]~51_combout\ : std_logic;
SIGNAL \clk_div[15]~52\ : std_logic;
SIGNAL \clk_div[16]~53_combout\ : std_logic;
SIGNAL \clk_div[16]~54\ : std_logic;
SIGNAL \clk_div[17]~55_combout\ : std_logic;
SIGNAL \clk_div[17]~56\ : std_logic;
SIGNAL \clk_div[18]~57_combout\ : std_logic;
SIGNAL \clk_div[18]~58\ : std_logic;
SIGNAL \clk_div[19]~59_combout\ : std_logic;
SIGNAL \clk_div[19]~60\ : std_logic;
SIGNAL \clk_div[20]~61_combout\ : std_logic;
SIGNAL \clk_div[20]~62\ : std_logic;
SIGNAL \clk_div[21]~63_combout\ : std_logic;
SIGNAL \clk_div[21]~64\ : std_logic;
SIGNAL \clk_div[22]~65_combout\ : std_logic;
SIGNAL \clk_div[22]~66\ : std_logic;
SIGNAL \clk_div[23]~67_combout\ : std_logic;
SIGNAL \clk_div[23]~clkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \D123456~5_combout\ : std_logic;
SIGNAL \D123456~2_combout\ : std_logic;
SIGNAL \D123456~4_combout\ : std_logic;
SIGNAL \D123456~1_combout\ : std_logic;
SIGNAL \D123456~3_combout\ : std_logic;
SIGNAL \D123456~0_combout\ : std_logic;
SIGNAL clk_div : std_logic_vector(23 DOWNTO 0);
SIGNAL D123456 : std_logic_vector(5 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

prn <= ww_prn;
ww_clk <= clk;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_div[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & clk_div(23));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\prn[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D123456(5),
	devoe => ww_devoe,
	o => \prn[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\prn[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D123456(3),
	devoe => ww_devoe,
	o => \prn[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\prn[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D123456(1),
	devoe => ww_devoe,
	o => \prn[2]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y33_N4
\clk_div[0]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[0]~69_combout\ = !clk_div(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk_div(0),
	combout => \clk_div[0]~69_combout\);

-- Location: FF_X25_Y33_N5
\clk_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(0));

-- Location: LCCOMB_X25_Y33_N10
\clk_div[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[1]~23_combout\ = (clk_div(1) & (clk_div(0) $ (VCC))) # (!clk_div(1) & (clk_div(0) & VCC))
-- \clk_div[1]~24\ = CARRY((clk_div(1) & clk_div(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(1),
	datab => clk_div(0),
	datad => VCC,
	combout => \clk_div[1]~23_combout\,
	cout => \clk_div[1]~24\);

-- Location: FF_X25_Y33_N11
\clk_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(1));

-- Location: LCCOMB_X25_Y33_N12
\clk_div[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[2]~25_combout\ = (clk_div(2) & (!\clk_div[1]~24\)) # (!clk_div(2) & ((\clk_div[1]~24\) # (GND)))
-- \clk_div[2]~26\ = CARRY((!\clk_div[1]~24\) # (!clk_div(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(2),
	datad => VCC,
	cin => \clk_div[1]~24\,
	combout => \clk_div[2]~25_combout\,
	cout => \clk_div[2]~26\);

-- Location: FF_X25_Y33_N13
\clk_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(2));

-- Location: LCCOMB_X25_Y33_N14
\clk_div[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[3]~27_combout\ = (clk_div(3) & (\clk_div[2]~26\ $ (GND))) # (!clk_div(3) & (!\clk_div[2]~26\ & VCC))
-- \clk_div[3]~28\ = CARRY((clk_div(3) & !\clk_div[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(3),
	datad => VCC,
	cin => \clk_div[2]~26\,
	combout => \clk_div[3]~27_combout\,
	cout => \clk_div[3]~28\);

-- Location: FF_X25_Y33_N15
\clk_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(3));

-- Location: LCCOMB_X25_Y33_N16
\clk_div[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[4]~29_combout\ = (clk_div(4) & (!\clk_div[3]~28\)) # (!clk_div(4) & ((\clk_div[3]~28\) # (GND)))
-- \clk_div[4]~30\ = CARRY((!\clk_div[3]~28\) # (!clk_div(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(4),
	datad => VCC,
	cin => \clk_div[3]~28\,
	combout => \clk_div[4]~29_combout\,
	cout => \clk_div[4]~30\);

-- Location: FF_X25_Y33_N17
\clk_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(4));

-- Location: LCCOMB_X25_Y33_N18
\clk_div[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[5]~31_combout\ = (clk_div(5) & (\clk_div[4]~30\ $ (GND))) # (!clk_div(5) & (!\clk_div[4]~30\ & VCC))
-- \clk_div[5]~32\ = CARRY((clk_div(5) & !\clk_div[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(5),
	datad => VCC,
	cin => \clk_div[4]~30\,
	combout => \clk_div[5]~31_combout\,
	cout => \clk_div[5]~32\);

-- Location: FF_X25_Y33_N19
\clk_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(5));

-- Location: LCCOMB_X25_Y33_N20
\clk_div[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[6]~33_combout\ = (clk_div(6) & (!\clk_div[5]~32\)) # (!clk_div(6) & ((\clk_div[5]~32\) # (GND)))
-- \clk_div[6]~34\ = CARRY((!\clk_div[5]~32\) # (!clk_div(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(6),
	datad => VCC,
	cin => \clk_div[5]~32\,
	combout => \clk_div[6]~33_combout\,
	cout => \clk_div[6]~34\);

-- Location: FF_X25_Y33_N21
\clk_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(6));

-- Location: LCCOMB_X25_Y33_N22
\clk_div[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[7]~35_combout\ = (clk_div(7) & (\clk_div[6]~34\ $ (GND))) # (!clk_div(7) & (!\clk_div[6]~34\ & VCC))
-- \clk_div[7]~36\ = CARRY((clk_div(7) & !\clk_div[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(7),
	datad => VCC,
	cin => \clk_div[6]~34\,
	combout => \clk_div[7]~35_combout\,
	cout => \clk_div[7]~36\);

-- Location: FF_X25_Y33_N23
\clk_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(7));

-- Location: LCCOMB_X25_Y33_N24
\clk_div[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[8]~37_combout\ = (clk_div(8) & (!\clk_div[7]~36\)) # (!clk_div(8) & ((\clk_div[7]~36\) # (GND)))
-- \clk_div[8]~38\ = CARRY((!\clk_div[7]~36\) # (!clk_div(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(8),
	datad => VCC,
	cin => \clk_div[7]~36\,
	combout => \clk_div[8]~37_combout\,
	cout => \clk_div[8]~38\);

-- Location: FF_X25_Y33_N25
\clk_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(8));

-- Location: LCCOMB_X25_Y33_N26
\clk_div[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[9]~39_combout\ = (clk_div(9) & (\clk_div[8]~38\ $ (GND))) # (!clk_div(9) & (!\clk_div[8]~38\ & VCC))
-- \clk_div[9]~40\ = CARRY((clk_div(9) & !\clk_div[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(9),
	datad => VCC,
	cin => \clk_div[8]~38\,
	combout => \clk_div[9]~39_combout\,
	cout => \clk_div[9]~40\);

-- Location: FF_X25_Y33_N27
\clk_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[9]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(9));

-- Location: LCCOMB_X25_Y33_N28
\clk_div[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[10]~41_combout\ = (clk_div(10) & (!\clk_div[9]~40\)) # (!clk_div(10) & ((\clk_div[9]~40\) # (GND)))
-- \clk_div[10]~42\ = CARRY((!\clk_div[9]~40\) # (!clk_div(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(10),
	datad => VCC,
	cin => \clk_div[9]~40\,
	combout => \clk_div[10]~41_combout\,
	cout => \clk_div[10]~42\);

-- Location: FF_X25_Y33_N29
\clk_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(10));

-- Location: LCCOMB_X25_Y33_N30
\clk_div[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[11]~43_combout\ = (clk_div(11) & (\clk_div[10]~42\ $ (GND))) # (!clk_div(11) & (!\clk_div[10]~42\ & VCC))
-- \clk_div[11]~44\ = CARRY((clk_div(11) & !\clk_div[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(11),
	datad => VCC,
	cin => \clk_div[10]~42\,
	combout => \clk_div[11]~43_combout\,
	cout => \clk_div[11]~44\);

-- Location: FF_X25_Y33_N31
\clk_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(11));

-- Location: LCCOMB_X25_Y32_N0
\clk_div[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[12]~45_combout\ = (clk_div(12) & (!\clk_div[11]~44\)) # (!clk_div(12) & ((\clk_div[11]~44\) # (GND)))
-- \clk_div[12]~46\ = CARRY((!\clk_div[11]~44\) # (!clk_div(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(12),
	datad => VCC,
	cin => \clk_div[11]~44\,
	combout => \clk_div[12]~45_combout\,
	cout => \clk_div[12]~46\);

-- Location: FF_X25_Y32_N1
\clk_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[12]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(12));

-- Location: LCCOMB_X25_Y32_N2
\clk_div[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[13]~47_combout\ = (clk_div(13) & (\clk_div[12]~46\ $ (GND))) # (!clk_div(13) & (!\clk_div[12]~46\ & VCC))
-- \clk_div[13]~48\ = CARRY((clk_div(13) & !\clk_div[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(13),
	datad => VCC,
	cin => \clk_div[12]~46\,
	combout => \clk_div[13]~47_combout\,
	cout => \clk_div[13]~48\);

-- Location: FF_X25_Y32_N3
\clk_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[13]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(13));

-- Location: LCCOMB_X25_Y32_N4
\clk_div[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[14]~49_combout\ = (clk_div(14) & (!\clk_div[13]~48\)) # (!clk_div(14) & ((\clk_div[13]~48\) # (GND)))
-- \clk_div[14]~50\ = CARRY((!\clk_div[13]~48\) # (!clk_div(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(14),
	datad => VCC,
	cin => \clk_div[13]~48\,
	combout => \clk_div[14]~49_combout\,
	cout => \clk_div[14]~50\);

-- Location: FF_X25_Y32_N5
\clk_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(14));

-- Location: LCCOMB_X25_Y32_N6
\clk_div[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[15]~51_combout\ = (clk_div(15) & (\clk_div[14]~50\ $ (GND))) # (!clk_div(15) & (!\clk_div[14]~50\ & VCC))
-- \clk_div[15]~52\ = CARRY((clk_div(15) & !\clk_div[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(15),
	datad => VCC,
	cin => \clk_div[14]~50\,
	combout => \clk_div[15]~51_combout\,
	cout => \clk_div[15]~52\);

-- Location: FF_X25_Y32_N7
\clk_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(15));

-- Location: LCCOMB_X25_Y32_N8
\clk_div[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[16]~53_combout\ = (clk_div(16) & (!\clk_div[15]~52\)) # (!clk_div(16) & ((\clk_div[15]~52\) # (GND)))
-- \clk_div[16]~54\ = CARRY((!\clk_div[15]~52\) # (!clk_div(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(16),
	datad => VCC,
	cin => \clk_div[15]~52\,
	combout => \clk_div[16]~53_combout\,
	cout => \clk_div[16]~54\);

-- Location: FF_X25_Y32_N9
\clk_div[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[16]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(16));

-- Location: LCCOMB_X25_Y32_N10
\clk_div[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[17]~55_combout\ = (clk_div(17) & (\clk_div[16]~54\ $ (GND))) # (!clk_div(17) & (!\clk_div[16]~54\ & VCC))
-- \clk_div[17]~56\ = CARRY((clk_div(17) & !\clk_div[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(17),
	datad => VCC,
	cin => \clk_div[16]~54\,
	combout => \clk_div[17]~55_combout\,
	cout => \clk_div[17]~56\);

-- Location: FF_X25_Y32_N11
\clk_div[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[17]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(17));

-- Location: LCCOMB_X25_Y32_N12
\clk_div[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[18]~57_combout\ = (clk_div(18) & (!\clk_div[17]~56\)) # (!clk_div(18) & ((\clk_div[17]~56\) # (GND)))
-- \clk_div[18]~58\ = CARRY((!\clk_div[17]~56\) # (!clk_div(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(18),
	datad => VCC,
	cin => \clk_div[17]~56\,
	combout => \clk_div[18]~57_combout\,
	cout => \clk_div[18]~58\);

-- Location: FF_X25_Y32_N13
\clk_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[18]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(18));

-- Location: LCCOMB_X25_Y32_N14
\clk_div[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[19]~59_combout\ = (clk_div(19) & (\clk_div[18]~58\ $ (GND))) # (!clk_div(19) & (!\clk_div[18]~58\ & VCC))
-- \clk_div[19]~60\ = CARRY((clk_div(19) & !\clk_div[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(19),
	datad => VCC,
	cin => \clk_div[18]~58\,
	combout => \clk_div[19]~59_combout\,
	cout => \clk_div[19]~60\);

-- Location: FF_X25_Y32_N15
\clk_div[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[19]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(19));

-- Location: LCCOMB_X25_Y32_N16
\clk_div[20]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[20]~61_combout\ = (clk_div(20) & (!\clk_div[19]~60\)) # (!clk_div(20) & ((\clk_div[19]~60\) # (GND)))
-- \clk_div[20]~62\ = CARRY((!\clk_div[19]~60\) # (!clk_div(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(20),
	datad => VCC,
	cin => \clk_div[19]~60\,
	combout => \clk_div[20]~61_combout\,
	cout => \clk_div[20]~62\);

-- Location: FF_X25_Y32_N17
\clk_div[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[20]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(20));

-- Location: LCCOMB_X25_Y32_N18
\clk_div[21]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[21]~63_combout\ = (clk_div(21) & (\clk_div[20]~62\ $ (GND))) # (!clk_div(21) & (!\clk_div[20]~62\ & VCC))
-- \clk_div[21]~64\ = CARRY((clk_div(21) & !\clk_div[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(21),
	datad => VCC,
	cin => \clk_div[20]~62\,
	combout => \clk_div[21]~63_combout\,
	cout => \clk_div[21]~64\);

-- Location: FF_X25_Y32_N19
\clk_div[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[21]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(21));

-- Location: LCCOMB_X25_Y32_N20
\clk_div[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[22]~65_combout\ = (clk_div(22) & (!\clk_div[21]~64\)) # (!clk_div(22) & ((\clk_div[21]~64\) # (GND)))
-- \clk_div[22]~66\ = CARRY((!\clk_div[21]~64\) # (!clk_div(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(22),
	datad => VCC,
	cin => \clk_div[21]~64\,
	combout => \clk_div[22]~65_combout\,
	cout => \clk_div[22]~66\);

-- Location: FF_X25_Y32_N21
\clk_div[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[22]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(22));

-- Location: LCCOMB_X25_Y32_N22
\clk_div[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div[23]~67_combout\ = \clk_div[22]~66\ $ (!clk_div(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_div(23),
	cin => \clk_div[22]~66\,
	combout => \clk_div[23]~67_combout\);

-- Location: FF_X25_Y32_N23
\clk_div[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div[23]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(23));

-- Location: CLKCTRL_G11
\clk_div[23]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div[23]~clkctrl_outclk\);

-- Location: IOIBUF_X53_Y14_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X50_Y33_N18
\D123456~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \D123456~5_combout\ = (\rst~input_o\ & (D123456(5) $ (!D123456(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => D123456(5),
	datad => D123456(4),
	combout => \D123456~5_combout\);

-- Location: FF_X50_Y33_N19
\D123456[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div[23]~clkctrl_outclk\,
	d => \D123456~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D123456(0));

-- Location: LCCOMB_X50_Y33_N12
\D123456~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \D123456~2_combout\ = (\rst~input_o\ & !D123456(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => D123456(0),
	combout => \D123456~2_combout\);

-- Location: FF_X50_Y33_N13
\D123456[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div[23]~clkctrl_outclk\,
	d => \D123456~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D123456(1));

-- Location: LCCOMB_X50_Y33_N28
\D123456~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \D123456~4_combout\ = (\rst~input_o\ & D123456(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => D123456(1),
	combout => \D123456~4_combout\);

-- Location: FF_X50_Y33_N29
\D123456[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div[23]~clkctrl_outclk\,
	d => \D123456~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D123456(2));

-- Location: LCCOMB_X50_Y33_N6
\D123456~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \D123456~1_combout\ = (\rst~input_o\ & D123456(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => D123456(2),
	combout => \D123456~1_combout\);

-- Location: FF_X50_Y33_N7
\D123456[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div[23]~clkctrl_outclk\,
	d => \D123456~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D123456(3));

-- Location: LCCOMB_X50_Y33_N10
\D123456~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \D123456~3_combout\ = (\rst~input_o\ & D123456(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => D123456(3),
	combout => \D123456~3_combout\);

-- Location: FF_X50_Y33_N11
\D123456[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div[23]~clkctrl_outclk\,
	d => \D123456~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D123456(4));

-- Location: LCCOMB_X50_Y33_N4
\D123456~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D123456~0_combout\ = (\rst~input_o\ & D123456(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => D123456(4),
	combout => \D123456~0_combout\);

-- Location: FF_X50_Y33_N5
\D123456[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div[23]~clkctrl_outclk\,
	d => \D123456~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D123456(5));

ww_prn(0) <= \prn[0]~output_o\;

ww_prn(1) <= \prn[1]~output_o\;

ww_prn(2) <= \prn[2]~output_o\;
END structure;


