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

-- DATE "11/11/2023 15:08:41"

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

ENTITY 	SevenSegment IS
    PORT (
	segmentBits : OUT std_logic_vector(6 DOWNTO 0);
	grounds : OUT std_logic_vector(3 DOWNTO 0);
	leftButton : IN std_logic;
	rightButton : IN std_logic
	);
END SevenSegment;

-- Design Ports Information
-- segmentBits[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grounds[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grounds[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grounds[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grounds[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_leftButton : std_logic;
SIGNAL ww_rightButton : std_logic;
SIGNAL \leftButton~input_o\ : std_logic;
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
SIGNAL \rightButton~input_o\ : std_logic;
SIGNAL \data[0]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL data : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr5~0_combout\ : std_logic;

BEGIN

segmentBits <= ww_segmentBits;
grounds <= ww_grounds;
ww_leftButton <= leftButton;
ww_rightButton <= rightButton;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
\ALT_INV_WideOr3~0_combout\ <= NOT \WideOr3~0_combout\;
\ALT_INV_WideOr4~0_combout\ <= NOT \WideOr4~0_combout\;
\ALT_INV_WideOr5~0_combout\ <= NOT \WideOr5~0_combout\;

-- Location: IOOBUF_X5_Y34_N16
\segmentBits[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\segmentBits[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[1]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\segmentBits[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[2]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\segmentBits[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[3]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\segmentBits[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[4]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\segmentBits[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[5]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\segmentBits[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[6]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\grounds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \grounds[0]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\grounds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \grounds[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\grounds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \grounds[2]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\grounds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \grounds[3]~output_o\);

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

-- Location: LCCOMB_X52_Y14_N24
\data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[0]~0_combout\ = \data[0]~0_combout\ $ (\rightButton~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data[0]~0_combout\,
	datad => \rightButton~input_o\,
	combout => \data[0]~0_combout\);

-- Location: LCCOMB_X52_Y14_N18
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = data(1) $ (\data[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(1),
	datad => \data[0]~0_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X52_Y14_N8
\data[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- data(1) = (\rightButton~input_o\ & ((\Add0~0_combout\))) # (!\rightButton~input_o\ & (data(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data(1),
	datac => \rightButton~input_o\,
	datad => \Add0~0_combout\,
	combout => data(1));

-- Location: LCCOMB_X52_Y14_N28
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = data(2) $ (((data(1) & \data[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(2),
	datac => data(1),
	datad => \data[0]~0_combout\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X52_Y14_N26
\data[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- data(2) = (\rightButton~input_o\ & ((\Add0~1_combout\))) # (!\rightButton~input_o\ & (data(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(2),
	datac => \rightButton~input_o\,
	datad => \Add0~1_combout\,
	combout => data(2));

-- Location: LCCOMB_X52_Y14_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = data(3) $ (((data(1) & (data(2) & \data[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(3),
	datab => data(1),
	datac => data(2),
	datad => \data[0]~0_combout\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X52_Y14_N12
\data[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- data(3) = (\rightButton~input_o\ & ((\Add0~2_combout\))) # (!\rightButton~input_o\ & (data(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(3),
	datac => \rightButton~input_o\,
	datad => \Add0~2_combout\,
	combout => data(3));

-- Location: LCCOMB_X21_Y30_N16
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\data[0]~0_combout\ & ((data(3)) # (data(2) $ (data(1))))) # (!\data[0]~0_combout\ & ((data(1)) # (data(2) $ (data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(2),
	datab => \data[0]~0_combout\,
	datac => data(1),
	datad => data(3),
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X21_Y30_N10
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (data(2) & (\data[0]~0_combout\ & (data(1) $ (data(3))))) # (!data(2) & (!data(3) & ((\data[0]~0_combout\) # (data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(2),
	datab => \data[0]~0_combout\,
	datac => data(1),
	datad => data(3),
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X21_Y30_N24
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (data(1) & (((\data[0]~0_combout\ & !data(3))))) # (!data(1) & ((data(2) & ((!data(3)))) # (!data(2) & (\data[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(2),
	datab => \data[0]~0_combout\,
	datac => data(1),
	datad => data(3),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X21_Y30_N6
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (data(1) & ((data(2) & (\data[0]~0_combout\)) # (!data(2) & (!\data[0]~0_combout\ & data(3))))) # (!data(1) & (!data(3) & (data(2) $ (\data[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(2),
	datab => \data[0]~0_combout\,
	datac => data(1),
	datad => data(3),
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X21_Y30_N4
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (data(2) & (data(3) & ((data(1)) # (!\data[0]~0_combout\)))) # (!data(2) & (!\data[0]~0_combout\ & (data(1) & !data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(2),
	datab => \data[0]~0_combout\,
	datac => data(1),
	datad => data(3),
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X21_Y30_N26
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (data(1) & ((\data[0]~0_combout\ & ((data(3)))) # (!\data[0]~0_combout\ & (data(2))))) # (!data(1) & (data(2) & (\data[0]~0_combout\ $ (data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(2),
	datab => \data[0]~0_combout\,
	datac => data(1),
	datad => data(3),
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X21_Y30_N12
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (data(2) & (!data(1) & (\data[0]~0_combout\ $ (!data(3))))) # (!data(2) & (\data[0]~0_combout\ & (data(1) $ (!data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(2),
	datab => \data[0]~0_combout\,
	datac => data(1),
	datad => data(3),
	combout => \WideOr0~0_combout\);

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


