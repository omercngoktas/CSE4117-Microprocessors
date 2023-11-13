-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/13/2023 21:05:01"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SevenSegment IS
    PORT (
	segmentBits : OUT std_logic_vector(6 DOWNTO 0);
	grounds : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	leftButton : IN std_logic;
	rightButton : IN std_logic
	);
END SevenSegment;

-- Design Ports Information
-- segmentBits[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[6]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grounds[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grounds[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grounds[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grounds[3]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftButton	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rightButton	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SevenSegment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_segmentBits : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_grounds : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_leftButton : std_logic;
SIGNAL ww_rightButton : std_logic;
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \segmentBits[0]~output_o\ : std_logic;
SIGNAL \segmentBits[1]~output_o\ : std_logic;
SIGNAL \segmentBits[2]~output_o\ : std_logic;
SIGNAL \segmentBits[3]~output_o\ : std_logic;
SIGNAL \segmentBits[4]~output_o\ : std_logic;
SIGNAL \segmentBits[5]~output_o\ : std_logic;
SIGNAL \segmentBits[6]~output_o\ : std_logic;
SIGNAL \grounds[0]~output_o\ : std_logic;
SIGNAL \grounds[1]~output_o\ : std_logic;
SIGNAL \grounds[2]~output_o\ : std_logic;
SIGNAL \grounds[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \number[0]~2_combout\ : std_logic;
SIGNAL \leftButton~input_o\ : std_logic;
SIGNAL \leftButtonPrev~q\ : std_logic;
SIGNAL \number[12]~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \number[1]~6_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \number[2]~9_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \number[5]~5_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \number[7]~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \number[8]~1_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \number[9]~4_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \number[10]~8_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \number[11]~11_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \number[12]~3_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \number[13]~7_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \number[14]~10_combout\ : std_logic;
SIGNAL \clk1[0]~75_combout\ : std_logic;
SIGNAL \clk1[1]~25_combout\ : std_logic;
SIGNAL \clk1[1]~26\ : std_logic;
SIGNAL \clk1[2]~27_combout\ : std_logic;
SIGNAL \clk1[2]~28\ : std_logic;
SIGNAL \clk1[3]~29_combout\ : std_logic;
SIGNAL \clk1[3]~30\ : std_logic;
SIGNAL \clk1[4]~31_combout\ : std_logic;
SIGNAL \clk1[4]~32\ : std_logic;
SIGNAL \clk1[5]~33_combout\ : std_logic;
SIGNAL \clk1[5]~34\ : std_logic;
SIGNAL \clk1[6]~35_combout\ : std_logic;
SIGNAL \clk1[6]~36\ : std_logic;
SIGNAL \clk1[7]~37_combout\ : std_logic;
SIGNAL \clk1[7]~38\ : std_logic;
SIGNAL \clk1[8]~39_combout\ : std_logic;
SIGNAL \clk1[8]~40\ : std_logic;
SIGNAL \clk1[9]~41_combout\ : std_logic;
SIGNAL \clk1[9]~42\ : std_logic;
SIGNAL \clk1[10]~43_combout\ : std_logic;
SIGNAL \clk1[10]~44\ : std_logic;
SIGNAL \clk1[11]~45_combout\ : std_logic;
SIGNAL \clk1[11]~46\ : std_logic;
SIGNAL \clk1[12]~47_combout\ : std_logic;
SIGNAL \clk1[12]~48\ : std_logic;
SIGNAL \clk1[13]~49_combout\ : std_logic;
SIGNAL \clk1[13]~50\ : std_logic;
SIGNAL \clk1[14]~51_combout\ : std_logic;
SIGNAL \clk1[14]~52\ : std_logic;
SIGNAL \clk1[15]~53_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3_combout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \rightButton~input_o\ : std_logic;
SIGNAL \rightButtonPrev~q\ : std_logic;
SIGNAL \scanSpeed[0]~0_combout\ : std_logic;
SIGNAL \Add3~4\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9_combout\ : std_logic;
SIGNAL \Add3~11_combout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \clk1[15]~54\ : std_logic;
SIGNAL \clk1[16]~55_combout\ : std_logic;
SIGNAL \clk1[16]~56\ : std_logic;
SIGNAL \clk1[17]~57_combout\ : std_logic;
SIGNAL \clk1[17]~58\ : std_logic;
SIGNAL \clk1[18]~59_combout\ : std_logic;
SIGNAL \clk1[18]~60\ : std_logic;
SIGNAL \clk1[19]~61_combout\ : std_logic;
SIGNAL \clk1[19]~62\ : std_logic;
SIGNAL \clk1[20]~63_combout\ : std_logic;
SIGNAL \clk1[20]~64\ : std_logic;
SIGNAL \clk1[21]~65_combout\ : std_logic;
SIGNAL \clk1[21]~66\ : std_logic;
SIGNAL \clk1[22]~67_combout\ : std_logic;
SIGNAL \clk1[22]~68\ : std_logic;
SIGNAL \clk1[23]~69_combout\ : std_logic;
SIGNAL \clk1[23]~70\ : std_logic;
SIGNAL \clk1[24]~71_combout\ : std_logic;
SIGNAL \clk1[24]~72\ : std_logic;
SIGNAL \clk1[25]~73_combout\ : std_logic;
SIGNAL \Mux0~16_combout\ : std_logic;
SIGNAL \Mux0~17_combout\ : std_logic;
SIGNAL \Mux0~18_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mux0~15_combout\ : std_logic;
SIGNAL \Mux0~19_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~1_combout\ : std_logic;
SIGNAL \count[1]~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \number[15]~13_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \grounds[1]~1_combout\ : std_logic;
SIGNAL \grounds[1]~reg0_q\ : std_logic;
SIGNAL \grounds[2]~reg0feeder_combout\ : std_logic;
SIGNAL \grounds[2]~reg0_q\ : std_logic;
SIGNAL \grounds[3]~reg0feeder_combout\ : std_logic;
SIGNAL \grounds[3]~reg0_q\ : std_logic;
SIGNAL \grounds[0]~0_combout\ : std_logic;
SIGNAL \grounds[0]~reg0_q\ : std_logic;
SIGNAL scanSpeed : std_logic_vector(4 DOWNTO 0);
SIGNAL number : std_logic_vector(15 DOWNTO 0);
SIGNAL count : std_logic_vector(1 DOWNTO 0);
SIGNAL clk1 : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_grounds[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_WideOr6~0_combout\ : std_logic;

BEGIN

segmentBits <= ww_segmentBits;
grounds <= ww_grounds;
ww_clk <= clk;
ww_leftButton <= leftButton;
ww_rightButton <= rightButton;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_grounds[0]~reg0_q\ <= NOT \grounds[0]~reg0_q\;
\ALT_INV_WideOr6~0_combout\ <= NOT \WideOr6~0_combout\;

-- Location: IOOBUF_X20_Y34_N9
\segmentBits[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\segmentBits[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[1]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\segmentBits[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[2]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\segmentBits[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[3]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\segmentBits[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[4]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\segmentBits[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[5]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\segmentBits[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[6]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\grounds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_grounds[0]~reg0_q\,
	devoe => ww_devoe,
	o => \grounds[0]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\grounds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \grounds[1]~reg0_q\,
	devoe => ww_devoe,
	o => \grounds[1]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\grounds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \grounds[2]~reg0_q\,
	devoe => ww_devoe,
	o => \grounds[2]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\grounds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \grounds[3]~reg0_q\,
	devoe => ww_devoe,
	o => \grounds[3]~output_o\);

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

-- Location: LCCOMB_X19_Y33_N26
\number[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[0]~2_combout\ = !number(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => number(0),
	combout => \number[0]~2_combout\);

-- Location: IOIBUF_X0_Y16_N8
\leftButton~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_leftButton,
	o => \leftButton~input_o\);

-- Location: FF_X21_Y33_N29
leftButtonPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \leftButton~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leftButtonPrev~q\);

-- Location: LCCOMB_X21_Y33_N28
\number[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[12]~0_combout\ = (\leftButton~input_o\ & !\leftButtonPrev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leftButton~input_o\,
	datac => \leftButtonPrev~q\,
	combout => \number[12]~0_combout\);

-- Location: FF_X20_Y33_N23
\number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \number[0]~2_combout\,
	sload => VCC,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(0));

-- Location: LCCOMB_X20_Y33_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (number(0) & (!number(1) & VCC)) # (!number(0) & (number(1) $ (GND)))
-- \Add2~1\ = CARRY((!number(0) & !number(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datab => number(1),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X21_Y33_N30
\number[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[1]~6_combout\ = !\Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	combout => \number[1]~6_combout\);

-- Location: FF_X20_Y33_N3
\number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \number[1]~6_combout\,
	sload => VCC,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(1));

-- Location: LCCOMB_X20_Y33_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (number(2) & ((\Add2~1\) # (GND))) # (!number(2) & (!\Add2~1\))
-- \Add2~3\ = CARRY((number(2)) # (!\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(2),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X21_Y33_N12
\number[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[2]~9_combout\ = !\Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~2_combout\,
	combout => \number[2]~9_combout\);

-- Location: FF_X20_Y33_N15
\number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \number[2]~9_combout\,
	sload => VCC,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(2));

-- Location: LCCOMB_X20_Y33_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (number(3) & (\Add2~3\ $ (GND))) # (!number(3) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((number(3) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X20_Y33_N5
\number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(3));

-- Location: LCCOMB_X20_Y33_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (number(4) & (!\Add2~5\)) # (!number(4) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!number(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X20_Y33_N7
\number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(4));

-- Location: LCCOMB_X20_Y33_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (number(5) & (!\Add2~7\ & VCC)) # (!number(5) & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((!number(5) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X19_Y33_N14
\number[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[5]~5_combout\ = !\Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	combout => \number[5]~5_combout\);

-- Location: FF_X19_Y33_N15
\number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \number[5]~5_combout\,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(5));

-- Location: LCCOMB_X20_Y33_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (number(6) & (!\Add2~9\)) # (!number(6) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!number(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(6),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X20_Y33_N11
\number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(6));

-- Location: LCCOMB_X20_Y33_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (number(7) & (!\Add2~11\ & VCC)) # (!number(7) & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((!number(7) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(7),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X21_Y33_N6
\number[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[7]~12_combout\ = !\Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~12_combout\,
	combout => \number[7]~12_combout\);

-- Location: FF_X21_Y33_N7
\number[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \number[7]~12_combout\,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(7));

-- Location: LCCOMB_X20_Y33_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (number(8) & ((\Add2~13\) # (GND))) # (!number(8) & (!\Add2~13\))
-- \Add2~15\ = CARRY((number(8)) # (!\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(8),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X19_Y33_N8
\number[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[8]~1_combout\ = !\Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~14_combout\,
	combout => \number[8]~1_combout\);

-- Location: FF_X19_Y33_N9
\number[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \number[8]~1_combout\,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(8));

-- Location: LCCOMB_X20_Y33_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (number(9) & (!\Add2~15\ & VCC)) # (!number(9) & (\Add2~15\ $ (GND)))
-- \Add2~17\ = CARRY((!number(9) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(9),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X19_Y33_N4
\number[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[9]~4_combout\ = !\Add2~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~16_combout\,
	combout => \number[9]~4_combout\);

-- Location: FF_X19_Y33_N5
\number[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \number[9]~4_combout\,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(9));

-- Location: LCCOMB_X20_Y33_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (number(10) & ((\Add2~17\) # (GND))) # (!number(10) & (!\Add2~17\))
-- \Add2~19\ = CARRY((number(10)) # (!\Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(10),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X21_Y33_N10
\number[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[10]~8_combout\ = !\Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~18_combout\,
	combout => \number[10]~8_combout\);

-- Location: FF_X21_Y33_N11
\number[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \number[10]~8_combout\,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(10));

-- Location: LCCOMB_X20_Y33_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (number(11) & (!\Add2~19\ & VCC)) # (!number(11) & (\Add2~19\ $ (GND)))
-- \Add2~21\ = CARRY((!number(11) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(11),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X21_Y33_N4
\number[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[11]~11_combout\ = !\Add2~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~20_combout\,
	combout => \number[11]~11_combout\);

-- Location: FF_X21_Y33_N5
\number[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \number[11]~11_combout\,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(11));

-- Location: LCCOMB_X20_Y33_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (number(12) & ((\Add2~21\) # (GND))) # (!number(12) & (!\Add2~21\))
-- \Add2~23\ = CARRY((number(12)) # (!\Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(12),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X19_Y33_N16
\number[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[12]~3_combout\ = !\Add2~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~22_combout\,
	combout => \number[12]~3_combout\);

-- Location: FF_X19_Y33_N17
\number[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \number[12]~3_combout\,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(12));

-- Location: LCCOMB_X20_Y33_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (number(13) & (!\Add2~23\ & VCC)) # (!number(13) & (\Add2~23\ $ (GND)))
-- \Add2~25\ = CARRY((!number(13) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(13),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X21_Y33_N20
\number[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[13]~7_combout\ = !\Add2~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~24_combout\,
	combout => \number[13]~7_combout\);

-- Location: FF_X21_Y33_N21
\number[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \number[13]~7_combout\,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(13));

-- Location: LCCOMB_X20_Y33_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (number(14) & ((\Add2~25\) # (GND))) # (!number(14) & (!\Add2~25\))
-- \Add2~27\ = CARRY((number(14)) # (!\Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(14),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X20_Y33_N30
\number[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[14]~10_combout\ = !\Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~26_combout\,
	combout => \number[14]~10_combout\);

-- Location: FF_X20_Y33_N31
\number[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \number[14]~10_combout\,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(14));

-- Location: LCCOMB_X27_Y6_N0
\clk1[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[0]~75_combout\ = !clk1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk1(0),
	combout => \clk1[0]~75_combout\);

-- Location: FF_X26_Y6_N9
\clk1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk1[0]~75_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(0));

-- Location: LCCOMB_X26_Y6_N8
\clk1[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[1]~25_combout\ = (clk1(1) & (clk1(0) $ (VCC))) # (!clk1(1) & (clk1(0) & VCC))
-- \clk1[1]~26\ = CARRY((clk1(1) & clk1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk1(1),
	datab => clk1(0),
	datad => VCC,
	combout => \clk1[1]~25_combout\,
	cout => \clk1[1]~26\);

-- Location: FF_X26_Y6_N7
\clk1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \clk1[1]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(1));

-- Location: LCCOMB_X26_Y6_N10
\clk1[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[2]~27_combout\ = (clk1(2) & (!\clk1[1]~26\)) # (!clk1(2) & ((\clk1[1]~26\) # (GND)))
-- \clk1[2]~28\ = CARRY((!\clk1[1]~26\) # (!clk1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk1(2),
	datad => VCC,
	cin => \clk1[1]~26\,
	combout => \clk1[2]~27_combout\,
	cout => \clk1[2]~28\);

-- Location: FF_X26_Y6_N11
\clk1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(2));

-- Location: LCCOMB_X26_Y6_N12
\clk1[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[3]~29_combout\ = (clk1(3) & (\clk1[2]~28\ $ (GND))) # (!clk1(3) & (!\clk1[2]~28\ & VCC))
-- \clk1[3]~30\ = CARRY((clk1(3) & !\clk1[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk1(3),
	datad => VCC,
	cin => \clk1[2]~28\,
	combout => \clk1[3]~29_combout\,
	cout => \clk1[3]~30\);

-- Location: FF_X26_Y6_N13
\clk1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(3));

-- Location: LCCOMB_X26_Y6_N14
\clk1[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[4]~31_combout\ = (clk1(4) & (!\clk1[3]~30\)) # (!clk1(4) & ((\clk1[3]~30\) # (GND)))
-- \clk1[4]~32\ = CARRY((!\clk1[3]~30\) # (!clk1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(4),
	datad => VCC,
	cin => \clk1[3]~30\,
	combout => \clk1[4]~31_combout\,
	cout => \clk1[4]~32\);

-- Location: FF_X26_Y6_N15
\clk1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(4));

-- Location: LCCOMB_X26_Y6_N16
\clk1[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[5]~33_combout\ = (clk1(5) & (\clk1[4]~32\ $ (GND))) # (!clk1(5) & (!\clk1[4]~32\ & VCC))
-- \clk1[5]~34\ = CARRY((clk1(5) & !\clk1[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(5),
	datad => VCC,
	cin => \clk1[4]~32\,
	combout => \clk1[5]~33_combout\,
	cout => \clk1[5]~34\);

-- Location: FF_X26_Y6_N17
\clk1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(5));

-- Location: LCCOMB_X26_Y6_N18
\clk1[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[6]~35_combout\ = (clk1(6) & (!\clk1[5]~34\)) # (!clk1(6) & ((\clk1[5]~34\) # (GND)))
-- \clk1[6]~36\ = CARRY((!\clk1[5]~34\) # (!clk1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(6),
	datad => VCC,
	cin => \clk1[5]~34\,
	combout => \clk1[6]~35_combout\,
	cout => \clk1[6]~36\);

-- Location: FF_X26_Y6_N19
\clk1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(6));

-- Location: LCCOMB_X26_Y6_N20
\clk1[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[7]~37_combout\ = (clk1(7) & (\clk1[6]~36\ $ (GND))) # (!clk1(7) & (!\clk1[6]~36\ & VCC))
-- \clk1[7]~38\ = CARRY((clk1(7) & !\clk1[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(7),
	datad => VCC,
	cin => \clk1[6]~36\,
	combout => \clk1[7]~37_combout\,
	cout => \clk1[7]~38\);

-- Location: FF_X26_Y6_N21
\clk1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(7));

-- Location: LCCOMB_X26_Y6_N22
\clk1[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[8]~39_combout\ = (clk1(8) & (!\clk1[7]~38\)) # (!clk1(8) & ((\clk1[7]~38\) # (GND)))
-- \clk1[8]~40\ = CARRY((!\clk1[7]~38\) # (!clk1(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk1(8),
	datad => VCC,
	cin => \clk1[7]~38\,
	combout => \clk1[8]~39_combout\,
	cout => \clk1[8]~40\);

-- Location: FF_X26_Y6_N23
\clk1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[8]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(8));

-- Location: LCCOMB_X26_Y6_N24
\clk1[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[9]~41_combout\ = (clk1(9) & (\clk1[8]~40\ $ (GND))) # (!clk1(9) & (!\clk1[8]~40\ & VCC))
-- \clk1[9]~42\ = CARRY((clk1(9) & !\clk1[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(9),
	datad => VCC,
	cin => \clk1[8]~40\,
	combout => \clk1[9]~41_combout\,
	cout => \clk1[9]~42\);

-- Location: FF_X26_Y6_N25
\clk1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(9));

-- Location: LCCOMB_X26_Y6_N26
\clk1[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[10]~43_combout\ = (clk1(10) & (!\clk1[9]~42\)) # (!clk1(10) & ((\clk1[9]~42\) # (GND)))
-- \clk1[10]~44\ = CARRY((!\clk1[9]~42\) # (!clk1(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk1(10),
	datad => VCC,
	cin => \clk1[9]~42\,
	combout => \clk1[10]~43_combout\,
	cout => \clk1[10]~44\);

-- Location: FF_X26_Y6_N27
\clk1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(10));

-- Location: LCCOMB_X26_Y6_N28
\clk1[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[11]~45_combout\ = (clk1(11) & (\clk1[10]~44\ $ (GND))) # (!clk1(11) & (!\clk1[10]~44\ & VCC))
-- \clk1[11]~46\ = CARRY((clk1(11) & !\clk1[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(11),
	datad => VCC,
	cin => \clk1[10]~44\,
	combout => \clk1[11]~45_combout\,
	cout => \clk1[11]~46\);

-- Location: FF_X26_Y6_N29
\clk1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(11));

-- Location: LCCOMB_X26_Y6_N30
\clk1[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[12]~47_combout\ = (clk1(12) & (!\clk1[11]~46\)) # (!clk1(12) & ((\clk1[11]~46\) # (GND)))
-- \clk1[12]~48\ = CARRY((!\clk1[11]~46\) # (!clk1(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk1(12),
	datad => VCC,
	cin => \clk1[11]~46\,
	combout => \clk1[12]~47_combout\,
	cout => \clk1[12]~48\);

-- Location: FF_X26_Y6_N31
\clk1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(12));

-- Location: LCCOMB_X26_Y5_N0
\clk1[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[13]~49_combout\ = (clk1(13) & (\clk1[12]~48\ $ (GND))) # (!clk1(13) & (!\clk1[12]~48\ & VCC))
-- \clk1[13]~50\ = CARRY((clk1(13) & !\clk1[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(13),
	datad => VCC,
	cin => \clk1[12]~48\,
	combout => \clk1[13]~49_combout\,
	cout => \clk1[13]~50\);

-- Location: FF_X26_Y5_N1
\clk1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(13));

-- Location: LCCOMB_X26_Y5_N2
\clk1[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[14]~51_combout\ = (clk1(14) & (!\clk1[13]~50\)) # (!clk1(14) & ((\clk1[13]~50\) # (GND)))
-- \clk1[14]~52\ = CARRY((!\clk1[13]~50\) # (!clk1(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(14),
	datad => VCC,
	cin => \clk1[13]~50\,
	combout => \clk1[14]~51_combout\,
	cout => \clk1[14]~52\);

-- Location: FF_X26_Y5_N3
\clk1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[14]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(14));

-- Location: LCCOMB_X26_Y5_N4
\clk1[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[15]~53_combout\ = (clk1(15) & (\clk1[14]~52\ $ (GND))) # (!clk1(15) & (!\clk1[14]~52\ & VCC))
-- \clk1[15]~54\ = CARRY((clk1(15) & !\clk1[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(15),
	datad => VCC,
	cin => \clk1[14]~52\,
	combout => \clk1[15]~53_combout\,
	cout => \clk1[15]~54\);

-- Location: FF_X26_Y5_N5
\clk1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[15]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(15));

-- Location: LCCOMB_X26_Y4_N16
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = scanSpeed(0) $ (VCC)
-- \Add3~1\ = CARRY(scanSpeed(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => scanSpeed(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X26_Y4_N18
\Add3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~3_combout\ = (scanSpeed(1) & (!\Add3~1\)) # (!scanSpeed(1) & (\Add3~1\ & VCC))
-- \Add3~4\ = CARRY((scanSpeed(1) & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scanSpeed(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~3_combout\,
	cout => \Add3~4\);

-- Location: LCCOMB_X26_Y4_N8
\Add3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~5_combout\ = (\LessThan0~0_combout\) # (!\Add3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~0_combout\,
	datad => \Add3~3_combout\,
	combout => \Add3~5_combout\);

-- Location: IOIBUF_X53_Y14_N1
\rightButton~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rightButton,
	o => \rightButton~input_o\);

-- Location: FF_X26_Y4_N11
rightButtonPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rightButton~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rightButtonPrev~q\);

-- Location: LCCOMB_X26_Y4_N10
\scanSpeed[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \scanSpeed[0]~0_combout\ = (\rightButton~input_o\ & !\rightButtonPrev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rightButton~input_o\,
	datac => \rightButtonPrev~q\,
	combout => \scanSpeed[0]~0_combout\);

-- Location: FF_X26_Y4_N9
\scanSpeed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~5_combout\,
	ena => \scanSpeed[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scanSpeed(1));

-- Location: LCCOMB_X26_Y4_N20
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (scanSpeed(2) & (\Add3~4\ $ (GND))) # (!scanSpeed(2) & (!\Add3~4\ & VCC))
-- \Add3~7\ = CARRY((scanSpeed(2) & !\Add3~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scanSpeed(2),
	datad => VCC,
	cin => \Add3~4\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X26_Y4_N28
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (!\LessThan0~0_combout\ & \Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~0_combout\,
	datad => \Add3~6_combout\,
	combout => \Add3~8_combout\);

-- Location: FF_X26_Y4_N29
\scanSpeed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~8_combout\,
	ena => \scanSpeed[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scanSpeed(2));

-- Location: LCCOMB_X26_Y4_N22
\Add3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~9_combout\ = (scanSpeed(3) & ((\Add3~7\) # (GND))) # (!scanSpeed(3) & (!\Add3~7\))
-- \Add3~10\ = CARRY((scanSpeed(3)) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scanSpeed(3),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~9_combout\,
	cout => \Add3~10\);

-- Location: LCCOMB_X26_Y4_N30
\Add3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~11_combout\ = (\LessThan0~0_combout\) # (!\Add3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \Add3~9_combout\,
	combout => \Add3~11_combout\);

-- Location: FF_X26_Y4_N31
\scanSpeed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~11_combout\,
	ena => \scanSpeed[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scanSpeed(3));

-- Location: LCCOMB_X26_Y4_N24
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = \Add3~10\ $ (!scanSpeed(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => scanSpeed(4),
	cin => \Add3~10\,
	combout => \Add3~12_combout\);

-- Location: LCCOMB_X26_Y4_N2
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (!\LessThan0~0_combout\ & \Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~0_combout\,
	datad => \Add3~12_combout\,
	combout => \Add3~14_combout\);

-- Location: FF_X26_Y4_N3
\scanSpeed[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~14_combout\,
	ena => \scanSpeed[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scanSpeed(4));

-- Location: LCCOMB_X26_Y4_N4
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (scanSpeed(4) & (!scanSpeed(3) & ((scanSpeed(2)) # (!scanSpeed(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scanSpeed(1),
	datab => scanSpeed(4),
	datac => scanSpeed(2),
	datad => scanSpeed(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y4_N0
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (!\LessThan0~0_combout\ & \Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~0_combout\,
	datad => \Add3~0_combout\,
	combout => \Add3~2_combout\);

-- Location: FF_X26_Y4_N1
\scanSpeed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~2_combout\,
	ena => \scanSpeed[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scanSpeed(0));

-- Location: LCCOMB_X25_Y5_N6
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (scanSpeed(0) & (((clk1(15)) # (scanSpeed(1))))) # (!scanSpeed(0) & (clk1(14) & ((!scanSpeed(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk1(14),
	datab => clk1(15),
	datac => scanSpeed(0),
	datad => scanSpeed(1),
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X25_Y5_N16
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Mux0~6_combout\ & ((clk1(13)) # ((!scanSpeed(1))))) # (!\Mux0~6_combout\ & (((clk1(12) & scanSpeed(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => clk1(13),
	datac => clk1(12),
	datad => scanSpeed(1),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X25_Y6_N6
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (scanSpeed(0) & ((clk1(11)) # ((scanSpeed(1))))) # (!scanSpeed(0) & (((!scanSpeed(1) & clk1(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk1(11),
	datab => scanSpeed(0),
	datac => scanSpeed(1),
	datad => clk1(10),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X25_Y6_N14
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~4_combout\ & (((clk1(9)) # (!scanSpeed(1))))) # (!\Mux0~4_combout\ & (clk1(8) & (scanSpeed(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~4_combout\,
	datab => clk1(8),
	datac => scanSpeed(1),
	datad => clk1(9),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X26_Y4_N14
\Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (scanSpeed(2) & (!\Mux0~7_combout\)) # (!scanSpeed(2) & ((!\Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~7_combout\,
	datac => \Mux0~5_combout\,
	datad => scanSpeed(2),
	combout => \Mux0~13_combout\);

-- Location: LCCOMB_X26_Y6_N4
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (scanSpeed(1) & (((scanSpeed(0))))) # (!scanSpeed(1) & ((scanSpeed(0) & ((clk1(7)))) # (!scanSpeed(0) & (clk1(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scanSpeed(1),
	datab => clk1(6),
	datac => scanSpeed(0),
	datad => clk1(7),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X26_Y6_N0
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (scanSpeed(1) & ((\Mux0~2_combout\ & ((clk1(5)))) # (!\Mux0~2_combout\ & (clk1(4))))) # (!scanSpeed(1) & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scanSpeed(1),
	datab => clk1(4),
	datac => \Mux0~2_combout\,
	datad => clk1(5),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X26_Y6_N2
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (scanSpeed(0) & ((clk1(3)) # ((scanSpeed(1))))) # (!scanSpeed(0) & (((clk1(2) & !scanSpeed(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk1(3),
	datab => clk1(2),
	datac => scanSpeed(0),
	datad => scanSpeed(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X26_Y6_N6
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (scanSpeed(1) & ((\Mux0~0_combout\ & ((clk1(1)))) # (!\Mux0~0_combout\ & (clk1(0))))) # (!scanSpeed(1) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scanSpeed(1),
	datab => clk1(0),
	datac => clk1(1),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X26_Y4_N6
\Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (scanSpeed(2) & (!\Mux0~3_combout\)) # (!scanSpeed(2) & ((!\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => scanSpeed(2),
	datad => \Mux0~1_combout\,
	combout => \Mux0~12_combout\);

-- Location: LCCOMB_X26_Y4_N12
\Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~14_combout\ = (scanSpeed(3) & ((\Mux0~12_combout\))) # (!scanSpeed(3) & (\Mux0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~13_combout\,
	datac => scanSpeed(3),
	datad => \Mux0~12_combout\,
	combout => \Mux0~14_combout\);

-- Location: LCCOMB_X26_Y5_N6
\clk1[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[16]~55_combout\ = (clk1(16) & (!\clk1[15]~54\)) # (!clk1(16) & ((\clk1[15]~54\) # (GND)))
-- \clk1[16]~56\ = CARRY((!\clk1[15]~54\) # (!clk1(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk1(16),
	datad => VCC,
	cin => \clk1[15]~54\,
	combout => \clk1[16]~55_combout\,
	cout => \clk1[16]~56\);

-- Location: FF_X26_Y5_N7
\clk1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[16]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(16));

-- Location: LCCOMB_X26_Y5_N8
\clk1[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[17]~57_combout\ = (clk1(17) & (\clk1[16]~56\ $ (GND))) # (!clk1(17) & (!\clk1[16]~56\ & VCC))
-- \clk1[17]~58\ = CARRY((clk1(17) & !\clk1[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(17),
	datad => VCC,
	cin => \clk1[16]~56\,
	combout => \clk1[17]~57_combout\,
	cout => \clk1[17]~58\);

-- Location: FF_X26_Y5_N9
\clk1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[17]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(17));

-- Location: LCCOMB_X26_Y5_N10
\clk1[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[18]~59_combout\ = (clk1(18) & (!\clk1[17]~58\)) # (!clk1(18) & ((\clk1[17]~58\) # (GND)))
-- \clk1[18]~60\ = CARRY((!\clk1[17]~58\) # (!clk1(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk1(18),
	datad => VCC,
	cin => \clk1[17]~58\,
	combout => \clk1[18]~59_combout\,
	cout => \clk1[18]~60\);

-- Location: FF_X26_Y5_N11
\clk1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[18]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(18));

-- Location: LCCOMB_X26_Y5_N12
\clk1[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[19]~61_combout\ = (clk1(19) & (\clk1[18]~60\ $ (GND))) # (!clk1(19) & (!\clk1[18]~60\ & VCC))
-- \clk1[19]~62\ = CARRY((clk1(19) & !\clk1[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk1(19),
	datad => VCC,
	cin => \clk1[18]~60\,
	combout => \clk1[19]~61_combout\,
	cout => \clk1[19]~62\);

-- Location: FF_X26_Y5_N13
\clk1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[19]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(19));

-- Location: LCCOMB_X26_Y5_N14
\clk1[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[20]~63_combout\ = (clk1(20) & (!\clk1[19]~62\)) # (!clk1(20) & ((\clk1[19]~62\) # (GND)))
-- \clk1[20]~64\ = CARRY((!\clk1[19]~62\) # (!clk1(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(20),
	datad => VCC,
	cin => \clk1[19]~62\,
	combout => \clk1[20]~63_combout\,
	cout => \clk1[20]~64\);

-- Location: FF_X26_Y5_N15
\clk1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[20]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(20));

-- Location: LCCOMB_X26_Y5_N16
\clk1[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[21]~65_combout\ = (clk1(21) & (\clk1[20]~64\ $ (GND))) # (!clk1(21) & (!\clk1[20]~64\ & VCC))
-- \clk1[21]~66\ = CARRY((clk1(21) & !\clk1[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(21),
	datad => VCC,
	cin => \clk1[20]~64\,
	combout => \clk1[21]~65_combout\,
	cout => \clk1[21]~66\);

-- Location: FF_X26_Y5_N17
\clk1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[21]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(21));

-- Location: LCCOMB_X26_Y5_N18
\clk1[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[22]~67_combout\ = (clk1(22) & (!\clk1[21]~66\)) # (!clk1(22) & ((\clk1[21]~66\) # (GND)))
-- \clk1[22]~68\ = CARRY((!\clk1[21]~66\) # (!clk1(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(22),
	datad => VCC,
	cin => \clk1[21]~66\,
	combout => \clk1[22]~67_combout\,
	cout => \clk1[22]~68\);

-- Location: FF_X26_Y5_N19
\clk1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[22]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(22));

-- Location: LCCOMB_X26_Y5_N20
\clk1[23]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[23]~69_combout\ = (clk1(23) & (\clk1[22]~68\ $ (GND))) # (!clk1(23) & (!\clk1[22]~68\ & VCC))
-- \clk1[23]~70\ = CARRY((clk1(23) & !\clk1[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(23),
	datad => VCC,
	cin => \clk1[22]~68\,
	combout => \clk1[23]~69_combout\,
	cout => \clk1[23]~70\);

-- Location: FF_X26_Y5_N21
\clk1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(23));

-- Location: LCCOMB_X26_Y5_N22
\clk1[24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[24]~71_combout\ = (clk1(24) & (!\clk1[23]~70\)) # (!clk1(24) & ((\clk1[23]~70\) # (GND)))
-- \clk1[24]~72\ = CARRY((!\clk1[23]~70\) # (!clk1(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk1(24),
	datad => VCC,
	cin => \clk1[23]~70\,
	combout => \clk1[24]~71_combout\,
	cout => \clk1[24]~72\);

-- Location: FF_X26_Y5_N23
\clk1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[24]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(24));

-- Location: LCCOMB_X26_Y5_N24
\clk1[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1[25]~73_combout\ = clk1(25) $ (!\clk1[24]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk1(25),
	cin => \clk1[24]~72\,
	combout => \clk1[25]~73_combout\);

-- Location: FF_X26_Y5_N25
\clk1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk1[25]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk1(25));

-- Location: LCCOMB_X26_Y5_N30
\Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~16_combout\ = (scanSpeed(0) & ((!clk1(25)))) # (!scanSpeed(0) & (!clk1(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => scanSpeed(0),
	datac => clk1(24),
	datad => clk1(25),
	combout => \Mux0~16_combout\);

-- Location: LCCOMB_X25_Y5_N28
\Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~17_combout\ = (!\Mux0~16_combout\ & scanSpeed(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux0~16_combout\,
	datad => scanSpeed(1),
	combout => \Mux0~17_combout\);

-- Location: LCCOMB_X25_Y5_N12
\Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~18_combout\ = (scanSpeed(2)) # (!\Mux0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => scanSpeed(2),
	datad => \Mux0~17_combout\,
	combout => \Mux0~18_combout\);

-- Location: LCCOMB_X25_Y5_N26
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (scanSpeed(0) & (((clk1(19)) # (scanSpeed(1))))) # (!scanSpeed(0) & (clk1(18) & ((!scanSpeed(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk1(18),
	datab => scanSpeed(0),
	datac => clk1(19),
	datad => scanSpeed(1),
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X25_Y5_N22
\Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\Mux0~8_combout\ & (((clk1(17)) # (!scanSpeed(1))))) # (!\Mux0~8_combout\ & (clk1(16) & ((scanSpeed(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk1(16),
	datab => clk1(17),
	datac => \Mux0~8_combout\,
	datad => scanSpeed(1),
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X26_Y5_N26
\Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (scanSpeed(0) & ((clk1(23)) # ((scanSpeed(1))))) # (!scanSpeed(0) & (((!scanSpeed(1) & clk1(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk1(23),
	datab => scanSpeed(0),
	datac => scanSpeed(1),
	datad => clk1(22),
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X26_Y5_N28
\Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (\Mux0~10_combout\ & ((clk1(21)) # ((!scanSpeed(1))))) # (!\Mux0~10_combout\ & (((clk1(20) & scanSpeed(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~10_combout\,
	datab => clk1(21),
	datac => clk1(20),
	datad => scanSpeed(1),
	combout => \Mux0~11_combout\);

-- Location: LCCOMB_X25_Y5_N24
\Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~15_combout\ = (scanSpeed(2) & ((!\Mux0~11_combout\))) # (!scanSpeed(2) & (!\Mux0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~9_combout\,
	datac => scanSpeed(2),
	datad => \Mux0~11_combout\,
	combout => \Mux0~15_combout\);

-- Location: LCCOMB_X25_Y5_N30
\Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~19_combout\ = (scanSpeed(3) & ((\Mux0~15_combout\))) # (!scanSpeed(3) & (\Mux0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~18_combout\,
	datac => scanSpeed(3),
	datad => \Mux0~15_combout\,
	combout => \Mux0~19_combout\);

-- Location: LCCOMB_X26_Y4_N26
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((scanSpeed(4) & ((!\Mux0~19_combout\))) # (!scanSpeed(4) & (!\Mux0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~14_combout\,
	datac => \Mux0~19_combout\,
	datad => scanSpeed(4),
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G16
\rtl~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X19_Y33_N0
\count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~1_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~1_combout\);

-- Location: FF_X19_Y33_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X19_Y33_N2
\count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~0_combout\ = count(1) $ (count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(1),
	datad => count(0),
	combout => \count[1]~0_combout\);

-- Location: FF_X19_Y33_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X19_Y33_N20
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (count(0) & (((count(1))))) # (!count(0) & ((count(1) & (!number(10))) # (!count(1) & ((!number(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(10),
	datab => count(0),
	datac => number(2),
	datad => count(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X19_Y33_N6
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((!count(0))) # (!number(14)))) # (!\Mux2~0_combout\ & (((number(6) & count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(14),
	datab => \Mux2~0_combout\,
	datac => number(6),
	datad => count(0),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X19_Y33_N24
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (count(0) & (((count(1)) # (!number(5))))) # (!count(0) & (!number(1) & ((!count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(1),
	datab => count(0),
	datac => number(5),
	datad => count(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X19_Y33_N18
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((!count(1))) # (!number(13)))) # (!\Mux3~0_combout\ & (((!number(9) & count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(13),
	datab => \Mux3~0_combout\,
	datac => number(9),
	datad => count(1),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X20_Y33_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = \Add2~27\ $ (number(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => number(15),
	cin => \Add2~27\,
	combout => \Add2~28_combout\);

-- Location: LCCOMB_X19_Y33_N30
\number[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[15]~13_combout\ = !\Add2~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~28_combout\,
	combout => \number[15]~13_combout\);

-- Location: FF_X19_Y33_N31
\number[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \number[15]~13_combout\,
	ena => \number[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(15));

-- Location: LCCOMB_X19_Y33_N28
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (count(0) & (((count(1)) # (!number(7))))) # (!count(0) & (number(3) & ((!count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(3),
	datab => count(0),
	datac => number(7),
	datad => count(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X19_Y33_N12
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((!count(1))) # (!number(15)))) # (!\Mux1~0_combout\ & (((!number(11) & count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(15),
	datab => \Mux1~0_combout\,
	datac => number(11),
	datad => count(1),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X19_Y33_N10
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (count(0) & ((number(4)) # ((count(1))))) # (!count(0) & (((!count(1) & !number(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(4),
	datab => count(0),
	datac => count(1),
	datad => number(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X19_Y33_N22
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((!count(1))) # (!number(12)))) # (!\Mux4~0_combout\ & (((!number(8) & count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => number(12),
	datac => number(8),
	datad => count(1),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X18_Y33_N28
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\Mux4~1_combout\ & ((\Mux1~1_combout\) # (\Mux2~1_combout\ $ (\Mux3~1_combout\)))) # (!\Mux4~1_combout\ & ((\Mux3~1_combout\) # (\Mux2~1_combout\ $ (\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux4~1_combout\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X18_Y33_N6
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\Mux2~1_combout\ & (\Mux4~1_combout\ & (\Mux3~1_combout\ $ (\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (!\Mux1~1_combout\ & ((\Mux3~1_combout\) # (\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux4~1_combout\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X18_Y33_N8
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\Mux3~1_combout\ & (((!\Mux1~1_combout\ & \Mux4~1_combout\)))) # (!\Mux3~1_combout\ & ((\Mux2~1_combout\ & (!\Mux1~1_combout\)) # (!\Mux2~1_combout\ & ((\Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux4~1_combout\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X18_Y33_N26
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\Mux3~1_combout\ & ((\Mux2~1_combout\ & ((\Mux4~1_combout\))) # (!\Mux2~1_combout\ & (\Mux1~1_combout\ & !\Mux4~1_combout\)))) # (!\Mux3~1_combout\ & (!\Mux1~1_combout\ & (\Mux2~1_combout\ $ (\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux4~1_combout\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X18_Y33_N0
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\Mux2~1_combout\ & (\Mux1~1_combout\ & ((\Mux3~1_combout\) # (!\Mux4~1_combout\)))) # (!\Mux2~1_combout\ & (\Mux3~1_combout\ & (!\Mux1~1_combout\ & !\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux4~1_combout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X18_Y33_N22
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\Mux3~1_combout\ & ((\Mux4~1_combout\ & ((\Mux1~1_combout\))) # (!\Mux4~1_combout\ & (\Mux2~1_combout\)))) # (!\Mux3~1_combout\ & (\Mux2~1_combout\ & (\Mux1~1_combout\ $ (\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux4~1_combout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X18_Y33_N24
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\Mux2~1_combout\ & (!\Mux3~1_combout\ & (\Mux1~1_combout\ $ (!\Mux4~1_combout\)))) # (!\Mux2~1_combout\ & (\Mux4~1_combout\ & (\Mux3~1_combout\ $ (!\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux4~1_combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X3_Y33_N10
\grounds[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \grounds[1]~1_combout\ = !\grounds[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \grounds[0]~reg0_q\,
	combout => \grounds[1]~1_combout\);

-- Location: FF_X3_Y33_N11
\grounds[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \grounds[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \grounds[1]~reg0_q\);

-- Location: LCCOMB_X3_Y33_N12
\grounds[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \grounds[2]~reg0feeder_combout\ = \grounds[1]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \grounds[1]~reg0_q\,
	combout => \grounds[2]~reg0feeder_combout\);

-- Location: FF_X3_Y33_N13
\grounds[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \grounds[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \grounds[2]~reg0_q\);

-- Location: LCCOMB_X3_Y33_N6
\grounds[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \grounds[3]~reg0feeder_combout\ = \grounds[2]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \grounds[2]~reg0_q\,
	combout => \grounds[3]~reg0feeder_combout\);

-- Location: FF_X3_Y33_N7
\grounds[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \grounds[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \grounds[3]~reg0_q\);

-- Location: LCCOMB_X3_Y33_N0
\grounds[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \grounds[0]~0_combout\ = !\grounds[3]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \grounds[3]~reg0_q\,
	combout => \grounds[0]~0_combout\);

-- Location: FF_X3_Y33_N1
\grounds[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \grounds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \grounds[0]~reg0_q\);

ww_segmentBits(0) <= \segmentBits[0]~output_o\;

ww_segmentBits(1) <= \segmentBits[1]~output_o\;

ww_segmentBits(2) <= \segmentBits[2]~output_o\;

ww_segmentBits(3) <= \segmentBits[3]~output_o\;

ww_segmentBits(4) <= \segmentBits[4]~output_o\;

ww_segmentBits(5) <= \segmentBits[5]~output_o\;

ww_segmentBits(6) <= \segmentBits[6]~output_o\;

ww_grounds(0) <= \grounds[0]~output_o\;

ww_grounds(1) <= \grounds[1]~output_o\;

ww_grounds(2) <= \grounds[2]~output_o\;

ww_grounds(3) <= \grounds[3]~output_o\;
END structure;


