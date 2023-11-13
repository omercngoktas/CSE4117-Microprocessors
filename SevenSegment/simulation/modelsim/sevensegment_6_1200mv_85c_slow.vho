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

-- DATE "11/11/2023 12:46:57"

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

ENTITY 	sevensegment IS
    PORT (
	inputNumber : IN std_logic_vector(3 DOWNTO 0);
	segmentBits : OUT std_logic_vector(6 DOWNTO 0)
	);
END sevensegment;

-- Design Ports Information
-- segmentBits[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[4]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentBits[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputNumber[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputNumber[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputNumber[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputNumber[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sevensegment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inputNumber : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segmentBits : std_logic_vector(6 DOWNTO 0);
SIGNAL \segmentBits[0]~output_o\ : std_logic;
SIGNAL \segmentBits[1]~output_o\ : std_logic;
SIGNAL \segmentBits[2]~output_o\ : std_logic;
SIGNAL \segmentBits[3]~output_o\ : std_logic;
SIGNAL \segmentBits[4]~output_o\ : std_logic;
SIGNAL \segmentBits[5]~output_o\ : std_logic;
SIGNAL \segmentBits[6]~output_o\ : std_logic;
SIGNAL \inputNumber[1]~input_o\ : std_logic;
SIGNAL \inputNumber[2]~input_o\ : std_logic;
SIGNAL \inputNumber[3]~input_o\ : std_logic;
SIGNAL \inputNumber[0]~input_o\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \convertToSevenSegment~0_combout\ : std_logic;
SIGNAL \convertToSevenSegment~1_combout\ : std_logic;
SIGNAL \ALT_INV_convertToSevenSegment~1_combout\ : std_logic;
SIGNAL \ALT_INV_convertToSevenSegment~0_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;

BEGIN

ww_inputNumber <= inputNumber;
segmentBits <= ww_segmentBits;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_convertToSevenSegment~1_combout\ <= NOT \convertToSevenSegment~1_combout\;
\ALT_INV_convertToSevenSegment~0_combout\ <= NOT \convertToSevenSegment~0_combout\;
\ALT_INV_Decoder0~0_combout\ <= NOT \Decoder0~0_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;

-- Location: IOOBUF_X0_Y7_N2
\segmentBits[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\segmentBits[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\segmentBits[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\segmentBits[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\segmentBits[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\segmentBits[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_convertToSevenSegment~0_combout\,
	devoe => ww_devoe,
	o => \segmentBits[5]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\segmentBits[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_convertToSevenSegment~1_combout\,
	devoe => ww_devoe,
	o => \segmentBits[6]~output_o\);

-- Location: IOIBUF_X53_Y17_N1
\inputNumber[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputNumber(1),
	o => \inputNumber[1]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\inputNumber[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputNumber(2),
	o => \inputNumber[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\inputNumber[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputNumber(3),
	o => \inputNumber[3]~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\inputNumber[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputNumber(0),
	o => \inputNumber[0]~input_o\);

-- Location: LCCOMB_X1_Y16_N16
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\inputNumber[3]~input_o\) # ((\inputNumber[1]~input_o\ & ((!\inputNumber[0]~input_o\) # (!\inputNumber[2]~input_o\))) # (!\inputNumber[1]~input_o\ & (\inputNumber[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputNumber[1]~input_o\,
	datab => \inputNumber[2]~input_o\,
	datac => \inputNumber[3]~input_o\,
	datad => \inputNumber[0]~input_o\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y16_N18
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\inputNumber[3]~input_o\ & ((\inputNumber[1]~input_o\ & ((\inputNumber[0]~input_o\) # (!\inputNumber[2]~input_o\))) # (!\inputNumber[1]~input_o\ & (!\inputNumber[2]~input_o\ & \inputNumber[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputNumber[1]~input_o\,
	datab => \inputNumber[2]~input_o\,
	datac => \inputNumber[3]~input_o\,
	datad => \inputNumber[0]~input_o\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y16_N28
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\inputNumber[1]~input_o\ & (((!\inputNumber[3]~input_o\ & \inputNumber[0]~input_o\)))) # (!\inputNumber[1]~input_o\ & ((\inputNumber[2]~input_o\ & (!\inputNumber[3]~input_o\)) # (!\inputNumber[2]~input_o\ & 
-- ((\inputNumber[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputNumber[1]~input_o\,
	datab => \inputNumber[2]~input_o\,
	datac => \inputNumber[3]~input_o\,
	datad => \inputNumber[0]~input_o\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y16_N6
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\inputNumber[3]~input_o\ & ((\inputNumber[1]~input_o\ & (\inputNumber[2]~input_o\ & \inputNumber[0]~input_o\)) # (!\inputNumber[1]~input_o\ & (\inputNumber[2]~input_o\ $ (\inputNumber[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputNumber[1]~input_o\,
	datab => \inputNumber[2]~input_o\,
	datac => \inputNumber[3]~input_o\,
	datad => \inputNumber[0]~input_o\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y16_N0
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\inputNumber[1]~input_o\ & (!\inputNumber[2]~input_o\ & (!\inputNumber[3]~input_o\ & !\inputNumber[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputNumber[1]~input_o\,
	datab => \inputNumber[2]~input_o\,
	datac => \inputNumber[3]~input_o\,
	datad => \inputNumber[0]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X1_Y16_N2
\convertToSevenSegment~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \convertToSevenSegment~0_combout\ = (\inputNumber[2]~input_o\ & (!\inputNumber[3]~input_o\ & (\inputNumber[1]~input_o\ $ (\inputNumber[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputNumber[1]~input_o\,
	datab => \inputNumber[2]~input_o\,
	datac => \inputNumber[3]~input_o\,
	datad => \inputNumber[0]~input_o\,
	combout => \convertToSevenSegment~0_combout\);

-- Location: LCCOMB_X1_Y16_N12
\convertToSevenSegment~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \convertToSevenSegment~1_combout\ = (!\inputNumber[1]~input_o\ & (!\inputNumber[3]~input_o\ & (\inputNumber[2]~input_o\ $ (\inputNumber[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputNumber[1]~input_o\,
	datab => \inputNumber[2]~input_o\,
	datac => \inputNumber[3]~input_o\,
	datad => \inputNumber[0]~input_o\,
	combout => \convertToSevenSegment~1_combout\);

ww_segmentBits(0) <= \segmentBits[0]~output_o\;

ww_segmentBits(1) <= \segmentBits[1]~output_o\;

ww_segmentBits(2) <= \segmentBits[2]~output_o\;

ww_segmentBits(3) <= \segmentBits[3]~output_o\;

ww_segmentBits(4) <= \segmentBits[4]~output_o\;

ww_segmentBits(5) <= \segmentBits[5]~output_o\;

ww_segmentBits(6) <= \segmentBits[6]~output_o\;
END structure;


