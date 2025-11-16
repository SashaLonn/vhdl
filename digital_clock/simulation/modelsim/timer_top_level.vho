-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "11/16/2025 18:50:41"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	timer_top_level IS
    PORT (
	clock_50 : IN std_logic;
	reset_n : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END timer_top_level;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF timer_top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \timer_counter_instans|Add2~0_combout\ : std_logic;
SIGNAL \reset_t1_n~feeder_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_t1_n~q\ : std_logic;
SIGNAL \reset_t2_n~q\ : std_logic;
SIGNAL \clock_divider_instans|Add0~0_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~1\ : std_logic;
SIGNAL \clock_divider_instans|Add0~3\ : std_logic;
SIGNAL \clock_divider_instans|Add0~4_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~5\ : std_logic;
SIGNAL \clock_divider_instans|Add0~6_combout\ : std_logic;
SIGNAL \clock_divider_instans|counter_50~2_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~7\ : std_logic;
SIGNAL \clock_divider_instans|Add0~8_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~9\ : std_logic;
SIGNAL \clock_divider_instans|Add0~10_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~11\ : std_logic;
SIGNAL \clock_divider_instans|Add0~12_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~13\ : std_logic;
SIGNAL \clock_divider_instans|Add0~14_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~15\ : std_logic;
SIGNAL \clock_divider_instans|Add0~16_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~17\ : std_logic;
SIGNAL \clock_divider_instans|Add0~18_combout\ : std_logic;
SIGNAL \clock_divider_instans|Equal0~5_combout\ : std_logic;
SIGNAL \clock_divider_instans|counter_50~4_combout\ : std_logic;
SIGNAL \clock_divider_instans|Equal0~6_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~2_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~19\ : std_logic;
SIGNAL \clock_divider_instans|Add0~20_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~21\ : std_logic;
SIGNAL \clock_divider_instans|Add0~22_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~23\ : std_logic;
SIGNAL \clock_divider_instans|Add0~24_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~25\ : std_logic;
SIGNAL \clock_divider_instans|Add0~26_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~27\ : std_logic;
SIGNAL \clock_divider_instans|Add0~28_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~29\ : std_logic;
SIGNAL \clock_divider_instans|Add0~30_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~31\ : std_logic;
SIGNAL \clock_divider_instans|Add0~32_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~33\ : std_logic;
SIGNAL \clock_divider_instans|Add0~34_combout\ : std_logic;
SIGNAL \clock_divider_instans|Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~35\ : std_logic;
SIGNAL \clock_divider_instans|Add0~36_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~37\ : std_logic;
SIGNAL \clock_divider_instans|Add0~38_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~39\ : std_logic;
SIGNAL \clock_divider_instans|Add0~40_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~41\ : std_logic;
SIGNAL \clock_divider_instans|Add0~42_combout\ : std_logic;
SIGNAL \clock_divider_instans|Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~43\ : std_logic;
SIGNAL \clock_divider_instans|Add0~44_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~45\ : std_logic;
SIGNAL \clock_divider_instans|Add0~46_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~47\ : std_logic;
SIGNAL \clock_divider_instans|Add0~48_combout\ : std_logic;
SIGNAL \clock_divider_instans|Add0~49\ : std_logic;
SIGNAL \clock_divider_instans|Add0~50_combout\ : std_logic;
SIGNAL \clock_divider_instans|Equal0~0_combout\ : std_logic;
SIGNAL \clock_divider_instans|Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider_instans|Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider_instans|counter_50~3_combout\ : std_logic;
SIGNAL \clock_divider_instans|Equal0~7_combout\ : std_logic;
SIGNAL \clock_divider_instans|Equal0~8_combout\ : std_logic;
SIGNAL \clock_divider_instans|clock_1hz~feeder_combout\ : std_logic;
SIGNAL \clock_divider_instans|clock_1hz~q\ : std_logic;
SIGNAL \timer_counter_instans|Add2~1\ : std_logic;
SIGNAL \timer_counter_instans|Add2~2_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add2~3\ : std_logic;
SIGNAL \timer_counter_instans|Add2~4_combout\ : std_logic;
SIGNAL \timer_counter_instans|seconds_intern~3_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add2~5\ : std_logic;
SIGNAL \timer_counter_instans|Add2~6_combout\ : std_logic;
SIGNAL \timer_counter_instans|seconds_intern~2_combout\ : std_logic;
SIGNAL \timer_counter_instans|Equal0~1_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add2~7\ : std_logic;
SIGNAL \timer_counter_instans|Add2~8_combout\ : std_logic;
SIGNAL \timer_counter_instans|seconds_intern~1_combout\ : std_logic;
SIGNAL \timer_counter_instans|Equal0~0_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add2~9\ : std_logic;
SIGNAL \timer_counter_instans|Add2~10_combout\ : std_logic;
SIGNAL \timer_counter_instans|seconds_intern~0_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add2~11\ : std_logic;
SIGNAL \timer_counter_instans|Add2~12_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add2~13\ : std_logic;
SIGNAL \timer_counter_instans|Add2~14_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux6~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux5~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux4~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux3~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux2~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux1~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux0~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux6~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux5~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux4~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux3~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux2~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux1~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux0~0_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add1~0_combout\ : std_logic;
SIGNAL \timer_counter_instans|minets_intern[7]~0_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add1~1\ : std_logic;
SIGNAL \timer_counter_instans|Add1~2_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add1~3\ : std_logic;
SIGNAL \timer_counter_instans|Add1~5\ : std_logic;
SIGNAL \timer_counter_instans|Add1~7\ : std_logic;
SIGNAL \timer_counter_instans|Add1~8_combout\ : std_logic;
SIGNAL \timer_counter_instans|minets_intern~2_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add1~9\ : std_logic;
SIGNAL \timer_counter_instans|Add1~10_combout\ : std_logic;
SIGNAL \timer_counter_instans|minets_intern~1_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add1~11\ : std_logic;
SIGNAL \timer_counter_instans|Add1~12_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add1~13\ : std_logic;
SIGNAL \timer_counter_instans|Add1~14_combout\ : std_logic;
SIGNAL \timer_counter_instans|Equal1~0_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add1~6_combout\ : std_logic;
SIGNAL \timer_counter_instans|minets_intern~3_combout\ : std_logic;
SIGNAL \timer_counter_instans|Equal1~1_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add1~4_combout\ : std_logic;
SIGNAL \timer_counter_instans|minets_intern~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux6~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux5~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux4~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux3~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux2~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux1~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux0~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux6~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux5~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux4~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux3~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux2~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux1~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux0~0_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add0~0_combout\ : std_logic;
SIGNAL \timer_counter_instans|hours_intern[7]~0_combout\ : std_logic;
SIGNAL \timer_counter_instans|hours_intern[7]~1_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add0~1\ : std_logic;
SIGNAL \timer_counter_instans|Add0~2_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add0~3\ : std_logic;
SIGNAL \timer_counter_instans|Add0~4_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add0~5\ : std_logic;
SIGNAL \timer_counter_instans|Add0~7\ : std_logic;
SIGNAL \timer_counter_instans|Add0~9\ : std_logic;
SIGNAL \timer_counter_instans|Add0~10_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add0~11\ : std_logic;
SIGNAL \timer_counter_instans|Add0~12_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add0~13\ : std_logic;
SIGNAL \timer_counter_instans|Add0~14_combout\ : std_logic;
SIGNAL \timer_counter_instans|Equal2~0_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add0~8_combout\ : std_logic;
SIGNAL \timer_counter_instans|hours_intern~2_combout\ : std_logic;
SIGNAL \timer_counter_instans|Equal2~1_combout\ : std_logic;
SIGNAL \timer_counter_instans|Add0~6_combout\ : std_logic;
SIGNAL \timer_counter_instans|hours_intern~3_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~78_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux6~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux5~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux4~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux3~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux2~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux1~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux0~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux6~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux5~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux4~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux3~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux2~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux1~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux0~0_combout\ : std_logic;
SIGNAL \timer_counter_instans|seconds_intern\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock_divider_instans|counter_50\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \timer_counter_instans|minets_intern\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \timer_counter_instans|hours_intern\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock_50 <= clock_50;
ww_reset_n <= reset_n;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|ALT_INV_Mux0~0_combout\ <= NOT \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux0~0_combout\;
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|ALT_INV_Mux0~0_combout\ <= NOT \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux0~0_combout\;
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|ALT_INV_Mux0~0_combout\ <= NOT \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux0~0_combout\;
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|ALT_INV_Mux0~0_combout\ <= NOT \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux0~0_combout\;
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|ALT_INV_Mux0~0_combout\ <= NOT \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux0~0_combout\;
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|ALT_INV_Mux0~0_combout\ <= NOT \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clock_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G19
\clock_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X66_Y37_N0
\timer_counter_instans|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add2~0_combout\ = \timer_counter_instans|seconds_intern\(0) $ (VCC)
-- \timer_counter_instans|Add2~1\ = CARRY(\timer_counter_instans|seconds_intern\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|seconds_intern\(0),
	datad => VCC,
	combout => \timer_counter_instans|Add2~0_combout\,
	cout => \timer_counter_instans|Add2~1\);

-- Location: LCCOMB_X64_Y37_N4
\reset_t1_n~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_t1_n~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \reset_t1_n~feeder_combout\);

-- Location: IOIBUF_X51_Y54_N29
\reset_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X64_Y37_N5
reset_t1_n : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \reset_t1_n~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_t1_n~q\);

-- Location: FF_X64_Y37_N31
reset_t2_n : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \reset_t1_n~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_t2_n~q\);

-- Location: LCCOMB_X63_Y37_N6
\clock_divider_instans|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~0_combout\ = \clock_divider_instans|counter_50\(0) $ (VCC)
-- \clock_divider_instans|Add0~1\ = CARRY(\clock_divider_instans|counter_50\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(0),
	datad => VCC,
	combout => \clock_divider_instans|Add0~0_combout\,
	cout => \clock_divider_instans|Add0~1\);

-- Location: FF_X63_Y37_N7
\clock_divider_instans|counter_50[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~0_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(0));

-- Location: LCCOMB_X63_Y37_N8
\clock_divider_instans|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~2_combout\ = (\clock_divider_instans|counter_50\(1) & (!\clock_divider_instans|Add0~1\)) # (!\clock_divider_instans|counter_50\(1) & ((\clock_divider_instans|Add0~1\) # (GND)))
-- \clock_divider_instans|Add0~3\ = CARRY((!\clock_divider_instans|Add0~1\) # (!\clock_divider_instans|counter_50\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(1),
	datad => VCC,
	cin => \clock_divider_instans|Add0~1\,
	combout => \clock_divider_instans|Add0~2_combout\,
	cout => \clock_divider_instans|Add0~3\);

-- Location: LCCOMB_X63_Y37_N10
\clock_divider_instans|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~4_combout\ = (\clock_divider_instans|counter_50\(2) & (\clock_divider_instans|Add0~3\ $ (GND))) # (!\clock_divider_instans|counter_50\(2) & (!\clock_divider_instans|Add0~3\ & VCC))
-- \clock_divider_instans|Add0~5\ = CARRY((\clock_divider_instans|counter_50\(2) & !\clock_divider_instans|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(2),
	datad => VCC,
	cin => \clock_divider_instans|Add0~3\,
	combout => \clock_divider_instans|Add0~4_combout\,
	cout => \clock_divider_instans|Add0~5\);

-- Location: FF_X63_Y37_N11
\clock_divider_instans|counter_50[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~4_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(2));

-- Location: LCCOMB_X63_Y37_N12
\clock_divider_instans|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~6_combout\ = (\clock_divider_instans|counter_50\(3) & (!\clock_divider_instans|Add0~5\)) # (!\clock_divider_instans|counter_50\(3) & ((\clock_divider_instans|Add0~5\) # (GND)))
-- \clock_divider_instans|Add0~7\ = CARRY((!\clock_divider_instans|Add0~5\) # (!\clock_divider_instans|counter_50\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(3),
	datad => VCC,
	cin => \clock_divider_instans|Add0~5\,
	combout => \clock_divider_instans|Add0~6_combout\,
	cout => \clock_divider_instans|Add0~7\);

-- Location: LCCOMB_X63_Y37_N0
\clock_divider_instans|counter_50~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|counter_50~2_combout\ = (\clock_divider_instans|Add0~6_combout\ & !\clock_divider_instans|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_instans|Add0~6_combout\,
	datad => \clock_divider_instans|Equal0~8_combout\,
	combout => \clock_divider_instans|counter_50~2_combout\);

-- Location: FF_X63_Y37_N1
\clock_divider_instans|counter_50[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|counter_50~2_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(3));

-- Location: LCCOMB_X63_Y37_N14
\clock_divider_instans|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~8_combout\ = (\clock_divider_instans|counter_50\(4) & (\clock_divider_instans|Add0~7\ $ (GND))) # (!\clock_divider_instans|counter_50\(4) & (!\clock_divider_instans|Add0~7\ & VCC))
-- \clock_divider_instans|Add0~9\ = CARRY((\clock_divider_instans|counter_50\(4) & !\clock_divider_instans|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(4),
	datad => VCC,
	cin => \clock_divider_instans|Add0~7\,
	combout => \clock_divider_instans|Add0~8_combout\,
	cout => \clock_divider_instans|Add0~9\);

-- Location: FF_X63_Y37_N15
\clock_divider_instans|counter_50[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~8_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(4));

-- Location: LCCOMB_X63_Y37_N16
\clock_divider_instans|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~10_combout\ = (\clock_divider_instans|counter_50\(5) & (!\clock_divider_instans|Add0~9\)) # (!\clock_divider_instans|counter_50\(5) & ((\clock_divider_instans|Add0~9\) # (GND)))
-- \clock_divider_instans|Add0~11\ = CARRY((!\clock_divider_instans|Add0~9\) # (!\clock_divider_instans|counter_50\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(5),
	datad => VCC,
	cin => \clock_divider_instans|Add0~9\,
	combout => \clock_divider_instans|Add0~10_combout\,
	cout => \clock_divider_instans|Add0~11\);

-- Location: FF_X63_Y37_N17
\clock_divider_instans|counter_50[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~10_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(5));

-- Location: LCCOMB_X63_Y37_N18
\clock_divider_instans|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~12_combout\ = (\clock_divider_instans|counter_50\(6) & (\clock_divider_instans|Add0~11\ $ (GND))) # (!\clock_divider_instans|counter_50\(6) & (!\clock_divider_instans|Add0~11\ & VCC))
-- \clock_divider_instans|Add0~13\ = CARRY((\clock_divider_instans|counter_50\(6) & !\clock_divider_instans|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(6),
	datad => VCC,
	cin => \clock_divider_instans|Add0~11\,
	combout => \clock_divider_instans|Add0~12_combout\,
	cout => \clock_divider_instans|Add0~13\);

-- Location: FF_X63_Y37_N19
\clock_divider_instans|counter_50[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~12_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(6));

-- Location: LCCOMB_X63_Y37_N20
\clock_divider_instans|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~14_combout\ = (\clock_divider_instans|counter_50\(7) & (!\clock_divider_instans|Add0~13\)) # (!\clock_divider_instans|counter_50\(7) & ((\clock_divider_instans|Add0~13\) # (GND)))
-- \clock_divider_instans|Add0~15\ = CARRY((!\clock_divider_instans|Add0~13\) # (!\clock_divider_instans|counter_50\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(7),
	datad => VCC,
	cin => \clock_divider_instans|Add0~13\,
	combout => \clock_divider_instans|Add0~14_combout\,
	cout => \clock_divider_instans|Add0~15\);

-- Location: FF_X63_Y37_N21
\clock_divider_instans|counter_50[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~14_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(7));

-- Location: LCCOMB_X63_Y37_N22
\clock_divider_instans|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~16_combout\ = (\clock_divider_instans|counter_50\(8) & (\clock_divider_instans|Add0~15\ $ (GND))) # (!\clock_divider_instans|counter_50\(8) & (!\clock_divider_instans|Add0~15\ & VCC))
-- \clock_divider_instans|Add0~17\ = CARRY((\clock_divider_instans|counter_50\(8) & !\clock_divider_instans|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(8),
	datad => VCC,
	cin => \clock_divider_instans|Add0~15\,
	combout => \clock_divider_instans|Add0~16_combout\,
	cout => \clock_divider_instans|Add0~17\);

-- Location: FF_X63_Y37_N23
\clock_divider_instans|counter_50[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~16_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(8));

-- Location: LCCOMB_X63_Y37_N24
\clock_divider_instans|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~18_combout\ = (\clock_divider_instans|counter_50\(9) & (!\clock_divider_instans|Add0~17\)) # (!\clock_divider_instans|counter_50\(9) & ((\clock_divider_instans|Add0~17\) # (GND)))
-- \clock_divider_instans|Add0~19\ = CARRY((!\clock_divider_instans|Add0~17\) # (!\clock_divider_instans|counter_50\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(9),
	datad => VCC,
	cin => \clock_divider_instans|Add0~17\,
	combout => \clock_divider_instans|Add0~18_combout\,
	cout => \clock_divider_instans|Add0~19\);

-- Location: FF_X63_Y37_N25
\clock_divider_instans|counter_50[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~18_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(9));

-- Location: LCCOMB_X62_Y37_N18
\clock_divider_instans|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Equal0~5_combout\ = (!\clock_divider_instans|counter_50\(7) & (!\clock_divider_instans|counter_50\(8) & (!\clock_divider_instans|counter_50\(6) & !\clock_divider_instans|counter_50\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(7),
	datab => \clock_divider_instans|counter_50\(8),
	datac => \clock_divider_instans|counter_50\(6),
	datad => \clock_divider_instans|counter_50\(9),
	combout => \clock_divider_instans|Equal0~5_combout\);

-- Location: LCCOMB_X62_Y37_N16
\clock_divider_instans|counter_50~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|counter_50~4_combout\ = ((\clock_divider_instans|counter_50\(1)) # (!\clock_divider_instans|Equal0~5_combout\)) # (!\clock_divider_instans|counter_50\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(0),
	datac => \clock_divider_instans|counter_50\(1),
	datad => \clock_divider_instans|Equal0~5_combout\,
	combout => \clock_divider_instans|counter_50~4_combout\);

-- Location: LCCOMB_X63_Y37_N2
\clock_divider_instans|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Equal0~6_combout\ = (!\clock_divider_instans|counter_50\(2) & (!\clock_divider_instans|counter_50\(5) & (\clock_divider_instans|counter_50\(3) & !\clock_divider_instans|counter_50\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(2),
	datab => \clock_divider_instans|counter_50\(5),
	datac => \clock_divider_instans|counter_50\(3),
	datad => \clock_divider_instans|counter_50\(4),
	combout => \clock_divider_instans|Equal0~6_combout\);

-- Location: LCCOMB_X63_Y37_N26
\clock_divider_instans|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~20_combout\ = (\clock_divider_instans|counter_50\(10) & (\clock_divider_instans|Add0~19\ $ (GND))) # (!\clock_divider_instans|counter_50\(10) & (!\clock_divider_instans|Add0~19\ & VCC))
-- \clock_divider_instans|Add0~21\ = CARRY((\clock_divider_instans|counter_50\(10) & !\clock_divider_instans|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(10),
	datad => VCC,
	cin => \clock_divider_instans|Add0~19\,
	combout => \clock_divider_instans|Add0~20_combout\,
	cout => \clock_divider_instans|Add0~21\);

-- Location: FF_X63_Y37_N27
\clock_divider_instans|counter_50[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~20_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(10));

-- Location: LCCOMB_X63_Y37_N28
\clock_divider_instans|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~22_combout\ = (\clock_divider_instans|counter_50\(11) & (!\clock_divider_instans|Add0~21\)) # (!\clock_divider_instans|counter_50\(11) & ((\clock_divider_instans|Add0~21\) # (GND)))
-- \clock_divider_instans|Add0~23\ = CARRY((!\clock_divider_instans|Add0~21\) # (!\clock_divider_instans|counter_50\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(11),
	datad => VCC,
	cin => \clock_divider_instans|Add0~21\,
	combout => \clock_divider_instans|Add0~22_combout\,
	cout => \clock_divider_instans|Add0~23\);

-- Location: FF_X63_Y37_N29
\clock_divider_instans|counter_50[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~22_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(11));

-- Location: LCCOMB_X63_Y37_N30
\clock_divider_instans|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~24_combout\ = (\clock_divider_instans|counter_50\(12) & (\clock_divider_instans|Add0~23\ $ (GND))) # (!\clock_divider_instans|counter_50\(12) & (!\clock_divider_instans|Add0~23\ & VCC))
-- \clock_divider_instans|Add0~25\ = CARRY((\clock_divider_instans|counter_50\(12) & !\clock_divider_instans|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(12),
	datad => VCC,
	cin => \clock_divider_instans|Add0~23\,
	combout => \clock_divider_instans|Add0~24_combout\,
	cout => \clock_divider_instans|Add0~25\);

-- Location: FF_X63_Y37_N31
\clock_divider_instans|counter_50[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~24_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(12));

-- Location: LCCOMB_X63_Y36_N0
\clock_divider_instans|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~26_combout\ = (\clock_divider_instans|counter_50\(13) & (!\clock_divider_instans|Add0~25\)) # (!\clock_divider_instans|counter_50\(13) & ((\clock_divider_instans|Add0~25\) # (GND)))
-- \clock_divider_instans|Add0~27\ = CARRY((!\clock_divider_instans|Add0~25\) # (!\clock_divider_instans|counter_50\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(13),
	datad => VCC,
	cin => \clock_divider_instans|Add0~25\,
	combout => \clock_divider_instans|Add0~26_combout\,
	cout => \clock_divider_instans|Add0~27\);

-- Location: FF_X63_Y36_N1
\clock_divider_instans|counter_50[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~26_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(13));

-- Location: LCCOMB_X63_Y36_N2
\clock_divider_instans|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~28_combout\ = (\clock_divider_instans|counter_50\(14) & (\clock_divider_instans|Add0~27\ $ (GND))) # (!\clock_divider_instans|counter_50\(14) & (!\clock_divider_instans|Add0~27\ & VCC))
-- \clock_divider_instans|Add0~29\ = CARRY((\clock_divider_instans|counter_50\(14) & !\clock_divider_instans|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(14),
	datad => VCC,
	cin => \clock_divider_instans|Add0~27\,
	combout => \clock_divider_instans|Add0~28_combout\,
	cout => \clock_divider_instans|Add0~29\);

-- Location: FF_X63_Y36_N3
\clock_divider_instans|counter_50[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~28_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(14));

-- Location: LCCOMB_X63_Y36_N4
\clock_divider_instans|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~30_combout\ = (\clock_divider_instans|counter_50\(15) & (!\clock_divider_instans|Add0~29\)) # (!\clock_divider_instans|counter_50\(15) & ((\clock_divider_instans|Add0~29\) # (GND)))
-- \clock_divider_instans|Add0~31\ = CARRY((!\clock_divider_instans|Add0~29\) # (!\clock_divider_instans|counter_50\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(15),
	datad => VCC,
	cin => \clock_divider_instans|Add0~29\,
	combout => \clock_divider_instans|Add0~30_combout\,
	cout => \clock_divider_instans|Add0~31\);

-- Location: FF_X63_Y36_N5
\clock_divider_instans|counter_50[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~30_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(15));

-- Location: LCCOMB_X63_Y36_N6
\clock_divider_instans|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~32_combout\ = (\clock_divider_instans|counter_50\(16) & (\clock_divider_instans|Add0~31\ $ (GND))) # (!\clock_divider_instans|counter_50\(16) & (!\clock_divider_instans|Add0~31\ & VCC))
-- \clock_divider_instans|Add0~33\ = CARRY((\clock_divider_instans|counter_50\(16) & !\clock_divider_instans|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(16),
	datad => VCC,
	cin => \clock_divider_instans|Add0~31\,
	combout => \clock_divider_instans|Add0~32_combout\,
	cout => \clock_divider_instans|Add0~33\);

-- Location: FF_X63_Y36_N7
\clock_divider_instans|counter_50[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~32_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(16));

-- Location: LCCOMB_X63_Y36_N8
\clock_divider_instans|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~34_combout\ = (\clock_divider_instans|counter_50\(17) & (!\clock_divider_instans|Add0~33\)) # (!\clock_divider_instans|counter_50\(17) & ((\clock_divider_instans|Add0~33\) # (GND)))
-- \clock_divider_instans|Add0~35\ = CARRY((!\clock_divider_instans|Add0~33\) # (!\clock_divider_instans|counter_50\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(17),
	datad => VCC,
	cin => \clock_divider_instans|Add0~33\,
	combout => \clock_divider_instans|Add0~34_combout\,
	cout => \clock_divider_instans|Add0~35\);

-- Location: FF_X63_Y36_N9
\clock_divider_instans|counter_50[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~34_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(17));

-- Location: LCCOMB_X63_Y36_N26
\clock_divider_instans|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Equal0~2_combout\ = (!\clock_divider_instans|counter_50\(16) & (!\clock_divider_instans|counter_50\(15) & (!\clock_divider_instans|counter_50\(17) & !\clock_divider_instans|counter_50\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(16),
	datab => \clock_divider_instans|counter_50\(15),
	datac => \clock_divider_instans|counter_50\(17),
	datad => \clock_divider_instans|counter_50\(14),
	combout => \clock_divider_instans|Equal0~2_combout\);

-- Location: LCCOMB_X63_Y36_N10
\clock_divider_instans|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~36_combout\ = (\clock_divider_instans|counter_50\(18) & (\clock_divider_instans|Add0~35\ $ (GND))) # (!\clock_divider_instans|counter_50\(18) & (!\clock_divider_instans|Add0~35\ & VCC))
-- \clock_divider_instans|Add0~37\ = CARRY((\clock_divider_instans|counter_50\(18) & !\clock_divider_instans|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(18),
	datad => VCC,
	cin => \clock_divider_instans|Add0~35\,
	combout => \clock_divider_instans|Add0~36_combout\,
	cout => \clock_divider_instans|Add0~37\);

-- Location: FF_X63_Y36_N11
\clock_divider_instans|counter_50[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~36_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(18));

-- Location: LCCOMB_X63_Y36_N12
\clock_divider_instans|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~38_combout\ = (\clock_divider_instans|counter_50\(19) & (!\clock_divider_instans|Add0~37\)) # (!\clock_divider_instans|counter_50\(19) & ((\clock_divider_instans|Add0~37\) # (GND)))
-- \clock_divider_instans|Add0~39\ = CARRY((!\clock_divider_instans|Add0~37\) # (!\clock_divider_instans|counter_50\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(19),
	datad => VCC,
	cin => \clock_divider_instans|Add0~37\,
	combout => \clock_divider_instans|Add0~38_combout\,
	cout => \clock_divider_instans|Add0~39\);

-- Location: FF_X63_Y36_N13
\clock_divider_instans|counter_50[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~38_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(19));

-- Location: LCCOMB_X63_Y36_N14
\clock_divider_instans|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~40_combout\ = (\clock_divider_instans|counter_50\(20) & (\clock_divider_instans|Add0~39\ $ (GND))) # (!\clock_divider_instans|counter_50\(20) & (!\clock_divider_instans|Add0~39\ & VCC))
-- \clock_divider_instans|Add0~41\ = CARRY((\clock_divider_instans|counter_50\(20) & !\clock_divider_instans|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(20),
	datad => VCC,
	cin => \clock_divider_instans|Add0~39\,
	combout => \clock_divider_instans|Add0~40_combout\,
	cout => \clock_divider_instans|Add0~41\);

-- Location: FF_X63_Y36_N15
\clock_divider_instans|counter_50[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~40_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(20));

-- Location: LCCOMB_X63_Y36_N16
\clock_divider_instans|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~42_combout\ = (\clock_divider_instans|counter_50\(21) & (!\clock_divider_instans|Add0~41\)) # (!\clock_divider_instans|counter_50\(21) & ((\clock_divider_instans|Add0~41\) # (GND)))
-- \clock_divider_instans|Add0~43\ = CARRY((!\clock_divider_instans|Add0~41\) # (!\clock_divider_instans|counter_50\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(21),
	datad => VCC,
	cin => \clock_divider_instans|Add0~41\,
	combout => \clock_divider_instans|Add0~42_combout\,
	cout => \clock_divider_instans|Add0~43\);

-- Location: FF_X63_Y36_N17
\clock_divider_instans|counter_50[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~42_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(21));

-- Location: LCCOMB_X63_Y36_N28
\clock_divider_instans|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Equal0~1_combout\ = (!\clock_divider_instans|counter_50\(18) & (!\clock_divider_instans|counter_50\(21) & (!\clock_divider_instans|counter_50\(20) & !\clock_divider_instans|counter_50\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(18),
	datab => \clock_divider_instans|counter_50\(21),
	datac => \clock_divider_instans|counter_50\(20),
	datad => \clock_divider_instans|counter_50\(19),
	combout => \clock_divider_instans|Equal0~1_combout\);

-- Location: LCCOMB_X63_Y36_N18
\clock_divider_instans|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~44_combout\ = (\clock_divider_instans|counter_50\(22) & (\clock_divider_instans|Add0~43\ $ (GND))) # (!\clock_divider_instans|counter_50\(22) & (!\clock_divider_instans|Add0~43\ & VCC))
-- \clock_divider_instans|Add0~45\ = CARRY((\clock_divider_instans|counter_50\(22) & !\clock_divider_instans|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(22),
	datad => VCC,
	cin => \clock_divider_instans|Add0~43\,
	combout => \clock_divider_instans|Add0~44_combout\,
	cout => \clock_divider_instans|Add0~45\);

-- Location: FF_X63_Y36_N19
\clock_divider_instans|counter_50[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~44_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(22));

-- Location: LCCOMB_X63_Y36_N20
\clock_divider_instans|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~46_combout\ = (\clock_divider_instans|counter_50\(23) & (!\clock_divider_instans|Add0~45\)) # (!\clock_divider_instans|counter_50\(23) & ((\clock_divider_instans|Add0~45\) # (GND)))
-- \clock_divider_instans|Add0~47\ = CARRY((!\clock_divider_instans|Add0~45\) # (!\clock_divider_instans|counter_50\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_instans|counter_50\(23),
	datad => VCC,
	cin => \clock_divider_instans|Add0~45\,
	combout => \clock_divider_instans|Add0~46_combout\,
	cout => \clock_divider_instans|Add0~47\);

-- Location: FF_X63_Y36_N21
\clock_divider_instans|counter_50[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~46_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(23));

-- Location: LCCOMB_X63_Y36_N22
\clock_divider_instans|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~48_combout\ = (\clock_divider_instans|counter_50\(24) & (\clock_divider_instans|Add0~47\ $ (GND))) # (!\clock_divider_instans|counter_50\(24) & (!\clock_divider_instans|Add0~47\ & VCC))
-- \clock_divider_instans|Add0~49\ = CARRY((\clock_divider_instans|counter_50\(24) & !\clock_divider_instans|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(24),
	datad => VCC,
	cin => \clock_divider_instans|Add0~47\,
	combout => \clock_divider_instans|Add0~48_combout\,
	cout => \clock_divider_instans|Add0~49\);

-- Location: FF_X63_Y36_N23
\clock_divider_instans|counter_50[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~48_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(24));

-- Location: LCCOMB_X63_Y36_N24
\clock_divider_instans|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Add0~50_combout\ = \clock_divider_instans|counter_50\(25) $ (\clock_divider_instans|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(25),
	cin => \clock_divider_instans|Add0~49\,
	combout => \clock_divider_instans|Add0~50_combout\);

-- Location: FF_X63_Y36_N25
\clock_divider_instans|counter_50[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|Add0~50_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(25));

-- Location: LCCOMB_X63_Y36_N30
\clock_divider_instans|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Equal0~0_combout\ = (!\clock_divider_instans|counter_50\(24) & (!\clock_divider_instans|counter_50\(22) & (!\clock_divider_instans|counter_50\(25) & !\clock_divider_instans|counter_50\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(24),
	datab => \clock_divider_instans|counter_50\(22),
	datac => \clock_divider_instans|counter_50\(25),
	datad => \clock_divider_instans|counter_50\(23),
	combout => \clock_divider_instans|Equal0~0_combout\);

-- Location: LCCOMB_X62_Y37_N10
\clock_divider_instans|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Equal0~3_combout\ = (!\clock_divider_instans|counter_50\(12) & (!\clock_divider_instans|counter_50\(11) & (!\clock_divider_instans|counter_50\(13) & !\clock_divider_instans|counter_50\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(12),
	datab => \clock_divider_instans|counter_50\(11),
	datac => \clock_divider_instans|counter_50\(13),
	datad => \clock_divider_instans|counter_50\(10),
	combout => \clock_divider_instans|Equal0~3_combout\);

-- Location: LCCOMB_X62_Y37_N28
\clock_divider_instans|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Equal0~4_combout\ = (\clock_divider_instans|Equal0~2_combout\ & (\clock_divider_instans|Equal0~1_combout\ & (\clock_divider_instans|Equal0~0_combout\ & \clock_divider_instans|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|Equal0~2_combout\,
	datab => \clock_divider_instans|Equal0~1_combout\,
	datac => \clock_divider_instans|Equal0~0_combout\,
	datad => \clock_divider_instans|Equal0~3_combout\,
	combout => \clock_divider_instans|Equal0~4_combout\);

-- Location: LCCOMB_X63_Y37_N4
\clock_divider_instans|counter_50~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|counter_50~3_combout\ = (\clock_divider_instans|Add0~2_combout\ & ((\clock_divider_instans|counter_50~4_combout\) # ((!\clock_divider_instans|Equal0~4_combout\) # (!\clock_divider_instans|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50~4_combout\,
	datab => \clock_divider_instans|Equal0~6_combout\,
	datac => \clock_divider_instans|Add0~2_combout\,
	datad => \clock_divider_instans|Equal0~4_combout\,
	combout => \clock_divider_instans|counter_50~3_combout\);

-- Location: FF_X63_Y37_N5
\clock_divider_instans|counter_50[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|counter_50~3_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|counter_50\(1));

-- Location: LCCOMB_X62_Y37_N12
\clock_divider_instans|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Equal0~7_combout\ = (!\clock_divider_instans|counter_50\(1) & \clock_divider_instans|counter_50\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|counter_50\(1),
	datad => \clock_divider_instans|counter_50\(0),
	combout => \clock_divider_instans|Equal0~7_combout\);

-- Location: LCCOMB_X62_Y37_N2
\clock_divider_instans|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|Equal0~8_combout\ = (\clock_divider_instans|Equal0~7_combout\ & (\clock_divider_instans|Equal0~5_combout\ & (\clock_divider_instans|Equal0~6_combout\ & \clock_divider_instans|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|Equal0~7_combout\,
	datab => \clock_divider_instans|Equal0~5_combout\,
	datac => \clock_divider_instans|Equal0~6_combout\,
	datad => \clock_divider_instans|Equal0~4_combout\,
	combout => \clock_divider_instans|Equal0~8_combout\);

-- Location: LCCOMB_X62_Y37_N20
\clock_divider_instans|clock_1hz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_instans|clock_1hz~feeder_combout\ = \clock_divider_instans|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider_instans|Equal0~8_combout\,
	combout => \clock_divider_instans|clock_1hz~feeder_combout\);

-- Location: FF_X62_Y37_N21
\clock_divider_instans|clock_1hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \clock_divider_instans|clock_1hz~feeder_combout\,
	clrn => \reset_t2_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_instans|clock_1hz~q\);

-- Location: FF_X66_Y37_N1
\timer_counter_instans|seconds_intern[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add2~0_combout\,
	clrn => \reset_t2_n~q\,
	ena => \clock_divider_instans|clock_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|seconds_intern\(0));

-- Location: LCCOMB_X66_Y37_N2
\timer_counter_instans|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add2~2_combout\ = (\timer_counter_instans|seconds_intern\(1) & (!\timer_counter_instans|Add2~1\)) # (!\timer_counter_instans|seconds_intern\(1) & ((\timer_counter_instans|Add2~1\) # (GND)))
-- \timer_counter_instans|Add2~3\ = CARRY((!\timer_counter_instans|Add2~1\) # (!\timer_counter_instans|seconds_intern\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|seconds_intern\(1),
	datad => VCC,
	cin => \timer_counter_instans|Add2~1\,
	combout => \timer_counter_instans|Add2~2_combout\,
	cout => \timer_counter_instans|Add2~3\);

-- Location: FF_X66_Y37_N3
\timer_counter_instans|seconds_intern[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add2~2_combout\,
	clrn => \reset_t2_n~q\,
	ena => \clock_divider_instans|clock_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|seconds_intern\(1));

-- Location: LCCOMB_X66_Y37_N4
\timer_counter_instans|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add2~4_combout\ = (\timer_counter_instans|seconds_intern\(2) & (\timer_counter_instans|Add2~3\ $ (GND))) # (!\timer_counter_instans|seconds_intern\(2) & (!\timer_counter_instans|Add2~3\ & VCC))
-- \timer_counter_instans|Add2~5\ = CARRY((\timer_counter_instans|seconds_intern\(2) & !\timer_counter_instans|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|seconds_intern\(2),
	datad => VCC,
	cin => \timer_counter_instans|Add2~3\,
	combout => \timer_counter_instans|Add2~4_combout\,
	cout => \timer_counter_instans|Add2~5\);

-- Location: LCCOMB_X66_Y37_N22
\timer_counter_instans|seconds_intern~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|seconds_intern~3_combout\ = (\timer_counter_instans|Add2~4_combout\ & ((!\timer_counter_instans|Equal0~0_combout\) # (!\timer_counter_instans|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|Equal0~1_combout\,
	datac => \timer_counter_instans|Add2~4_combout\,
	datad => \timer_counter_instans|Equal0~0_combout\,
	combout => \timer_counter_instans|seconds_intern~3_combout\);

-- Location: FF_X66_Y37_N23
\timer_counter_instans|seconds_intern[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|seconds_intern~3_combout\,
	clrn => \reset_t2_n~q\,
	ena => \clock_divider_instans|clock_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|seconds_intern\(2));

-- Location: LCCOMB_X66_Y37_N6
\timer_counter_instans|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add2~6_combout\ = (\timer_counter_instans|seconds_intern\(3) & (!\timer_counter_instans|Add2~5\)) # (!\timer_counter_instans|seconds_intern\(3) & ((\timer_counter_instans|Add2~5\) # (GND)))
-- \timer_counter_instans|Add2~7\ = CARRY((!\timer_counter_instans|Add2~5\) # (!\timer_counter_instans|seconds_intern\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|seconds_intern\(3),
	datad => VCC,
	cin => \timer_counter_instans|Add2~5\,
	combout => \timer_counter_instans|Add2~6_combout\,
	cout => \timer_counter_instans|Add2~7\);

-- Location: LCCOMB_X66_Y37_N16
\timer_counter_instans|seconds_intern~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|seconds_intern~2_combout\ = (\timer_counter_instans|Add2~6_combout\ & ((!\timer_counter_instans|Equal0~1_combout\) # (!\timer_counter_instans|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|Equal0~0_combout\,
	datac => \timer_counter_instans|Equal0~1_combout\,
	datad => \timer_counter_instans|Add2~6_combout\,
	combout => \timer_counter_instans|seconds_intern~2_combout\);

-- Location: FF_X66_Y37_N17
\timer_counter_instans|seconds_intern[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|seconds_intern~2_combout\,
	clrn => \reset_t2_n~q\,
	ena => \clock_divider_instans|clock_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|seconds_intern\(3));

-- Location: LCCOMB_X66_Y37_N26
\timer_counter_instans|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Equal0~1_combout\ = (!\timer_counter_instans|seconds_intern\(2) & (\timer_counter_instans|seconds_intern\(1) & (\timer_counter_instans|seconds_intern\(0) & \timer_counter_instans|seconds_intern\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|seconds_intern\(2),
	datab => \timer_counter_instans|seconds_intern\(1),
	datac => \timer_counter_instans|seconds_intern\(0),
	datad => \timer_counter_instans|seconds_intern\(3),
	combout => \timer_counter_instans|Equal0~1_combout\);

-- Location: LCCOMB_X66_Y37_N8
\timer_counter_instans|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add2~8_combout\ = (\timer_counter_instans|seconds_intern\(4) & (\timer_counter_instans|Add2~7\ $ (GND))) # (!\timer_counter_instans|seconds_intern\(4) & (!\timer_counter_instans|Add2~7\ & VCC))
-- \timer_counter_instans|Add2~9\ = CARRY((\timer_counter_instans|seconds_intern\(4) & !\timer_counter_instans|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|seconds_intern\(4),
	datad => VCC,
	cin => \timer_counter_instans|Add2~7\,
	combout => \timer_counter_instans|Add2~8_combout\,
	cout => \timer_counter_instans|Add2~9\);

-- Location: LCCOMB_X66_Y37_N30
\timer_counter_instans|seconds_intern~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|seconds_intern~1_combout\ = (\timer_counter_instans|Add2~8_combout\ & ((!\timer_counter_instans|Equal0~0_combout\) # (!\timer_counter_instans|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|Equal0~1_combout\,
	datac => \timer_counter_instans|Add2~8_combout\,
	datad => \timer_counter_instans|Equal0~0_combout\,
	combout => \timer_counter_instans|seconds_intern~1_combout\);

-- Location: FF_X66_Y37_N31
\timer_counter_instans|seconds_intern[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|seconds_intern~1_combout\,
	clrn => \reset_t2_n~q\,
	ena => \clock_divider_instans|clock_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|seconds_intern\(4));

-- Location: LCCOMB_X66_Y37_N28
\timer_counter_instans|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Equal0~0_combout\ = (\timer_counter_instans|seconds_intern\(4) & (\timer_counter_instans|seconds_intern\(5) & (!\timer_counter_instans|seconds_intern\(7) & !\timer_counter_instans|seconds_intern\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|seconds_intern\(4),
	datab => \timer_counter_instans|seconds_intern\(5),
	datac => \timer_counter_instans|seconds_intern\(7),
	datad => \timer_counter_instans|seconds_intern\(6),
	combout => \timer_counter_instans|Equal0~0_combout\);

-- Location: LCCOMB_X66_Y37_N10
\timer_counter_instans|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add2~10_combout\ = (\timer_counter_instans|seconds_intern\(5) & (!\timer_counter_instans|Add2~9\)) # (!\timer_counter_instans|seconds_intern\(5) & ((\timer_counter_instans|Add2~9\) # (GND)))
-- \timer_counter_instans|Add2~11\ = CARRY((!\timer_counter_instans|Add2~9\) # (!\timer_counter_instans|seconds_intern\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|seconds_intern\(5),
	datad => VCC,
	cin => \timer_counter_instans|Add2~9\,
	combout => \timer_counter_instans|Add2~10_combout\,
	cout => \timer_counter_instans|Add2~11\);

-- Location: LCCOMB_X66_Y37_N24
\timer_counter_instans|seconds_intern~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|seconds_intern~0_combout\ = (\timer_counter_instans|Add2~10_combout\ & ((!\timer_counter_instans|Equal0~1_combout\) # (!\timer_counter_instans|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|Equal0~0_combout\,
	datac => \timer_counter_instans|Equal0~1_combout\,
	datad => \timer_counter_instans|Add2~10_combout\,
	combout => \timer_counter_instans|seconds_intern~0_combout\);

-- Location: FF_X66_Y37_N25
\timer_counter_instans|seconds_intern[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|seconds_intern~0_combout\,
	clrn => \reset_t2_n~q\,
	ena => \clock_divider_instans|clock_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|seconds_intern\(5));

-- Location: LCCOMB_X66_Y37_N12
\timer_counter_instans|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add2~12_combout\ = (\timer_counter_instans|seconds_intern\(6) & (\timer_counter_instans|Add2~11\ $ (GND))) # (!\timer_counter_instans|seconds_intern\(6) & (!\timer_counter_instans|Add2~11\ & VCC))
-- \timer_counter_instans|Add2~13\ = CARRY((\timer_counter_instans|seconds_intern\(6) & !\timer_counter_instans|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|seconds_intern\(6),
	datad => VCC,
	cin => \timer_counter_instans|Add2~11\,
	combout => \timer_counter_instans|Add2~12_combout\,
	cout => \timer_counter_instans|Add2~13\);

-- Location: FF_X66_Y37_N13
\timer_counter_instans|seconds_intern[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add2~12_combout\,
	clrn => \reset_t2_n~q\,
	ena => \clock_divider_instans|clock_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|seconds_intern\(6));

-- Location: LCCOMB_X66_Y37_N14
\timer_counter_instans|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add2~14_combout\ = \timer_counter_instans|seconds_intern\(7) $ (\timer_counter_instans|Add2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|seconds_intern\(7),
	cin => \timer_counter_instans|Add2~13\,
	combout => \timer_counter_instans|Add2~14_combout\);

-- Location: FF_X66_Y37_N15
\timer_counter_instans|seconds_intern[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add2~14_combout\,
	clrn => \reset_t2_n~q\,
	ena => \clock_divider_instans|clock_1hz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|seconds_intern\(7));

-- Location: LCCOMB_X66_Y41_N20
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \timer_counter_instans|seconds_intern\(5) $ (VCC)
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\timer_counter_instans|seconds_intern\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|seconds_intern\(5),
	datad => VCC,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X66_Y41_N22
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\timer_counter_instans|seconds_intern\(6) & (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\timer_counter_instans|seconds_intern\(6) & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\timer_counter_instans|seconds_intern\(6) & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|seconds_intern\(6),
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X66_Y41_N24
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\timer_counter_instans|seconds_intern\(7) & (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\timer_counter_instans|seconds_intern\(7) & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\timer_counter_instans|seconds_intern\(7) & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|seconds_intern\(7),
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X66_Y41_N26
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X65_Y41_N22
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X65_Y41_N20
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\timer_counter_instans|seconds_intern\(7) & \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(7),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X65_Y41_N26
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X65_Y41_N24
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\timer_counter_instans|seconds_intern\(6) & \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(6),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X65_Y41_N0
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\timer_counter_instans|seconds_intern\(5) & \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(5),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X65_Y41_N28
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X65_Y41_N6
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\timer_counter_instans|seconds_intern\(4) & \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(4),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X65_Y41_N8
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ = (\timer_counter_instans|seconds_intern\(4) & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(4),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X65_Y41_N10
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\) # 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\) # 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X65_Y41_N12
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X65_Y41_N14
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X65_Y41_N16
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & 
-- (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X65_Y41_N18
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X65_Y44_N12
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ = (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X65_Y41_N30
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\timer_counter_instans|seconds_intern\(7))) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \timer_counter_instans|seconds_intern\(7),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X65_Y44_N26
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X65_Y41_N4
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\timer_counter_instans|seconds_intern\(6)))) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \timer_counter_instans|seconds_intern\(6),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X65_Y41_N2
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\timer_counter_instans|seconds_intern\(5))) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|seconds_intern\(5),
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X65_Y42_N16
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ = (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X65_Y44_N24
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timer_counter_instans|seconds_intern\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timer_counter_instans|seconds_intern\(4),
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X65_Y44_N18
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X65_Y44_N30
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ = (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timer_counter_instans|seconds_intern\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timer_counter_instans|seconds_intern\(3),
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X65_Y44_N28
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timer_counter_instans|seconds_intern\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timer_counter_instans|seconds_intern\(3),
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X65_Y44_N0
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\)))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X65_Y44_N2
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X65_Y44_N4
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X65_Y44_N6
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & 
-- (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\)))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X65_Y44_N8
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & 
-- ((((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\))))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # (GND))))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X65_Y44_N10
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X65_Y44_N16
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X65_Y45_N24
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X65_Y45_N22
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X65_Y44_N14
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # ((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X65_Y42_N10
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ = (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X65_Y42_N12
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # ((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X65_Y45_N18
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X65_Y44_N22
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\timer_counter_instans|seconds_intern\(4)))) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timer_counter_instans|seconds_intern\(4),
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X65_Y45_N30
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X65_Y45_N20
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \timer_counter_instans|seconds_intern\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \timer_counter_instans|seconds_intern\(3),
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X65_Y42_N18
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ = (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \timer_counter_instans|seconds_intern\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \timer_counter_instans|seconds_intern\(2),
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X65_Y42_N8
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \timer_counter_instans|seconds_intern\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \timer_counter_instans|seconds_intern\(2),
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X65_Y45_N4
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\) # 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\)))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\) # 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X65_Y45_N6
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\)))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X65_Y45_N8
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\)))))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X65_Y45_N10
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & 
-- (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\)))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X65_Y45_N12
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & 
-- ((((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\))))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # (GND))))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X65_Y45_N14
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & 
-- (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X65_Y45_N16
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X65_Y44_N20
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[54]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\) # ((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X66_Y45_N24
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[54]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ = (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X65_Y45_N26
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[53]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X65_Y45_N28
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[53]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\);

-- Location: LCCOMB_X64_Y45_N20
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[52]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X65_Y42_N22
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[52]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\) # ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X65_Y45_N0
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[51]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # ((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X64_Y45_N2
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[51]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X65_Y45_N2
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\timer_counter_instans|seconds_intern\(3))) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \timer_counter_instans|seconds_intern\(3),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X66_Y45_N2
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X64_Y45_N0
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \timer_counter_instans|seconds_intern\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \timer_counter_instans|seconds_intern\(2),
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X66_Y45_N28
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X66_Y45_N6
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ = (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \timer_counter_instans|seconds_intern\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \timer_counter_instans|seconds_intern\(1),
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X66_Y45_N4
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \timer_counter_instans|seconds_intern\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \timer_counter_instans|seconds_intern\(1),
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X66_Y45_N8
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\) # 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\)))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\) # 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X66_Y45_N10
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X66_Y45_N12
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))))
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X66_Y45_N14
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X66_Y45_N16
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\) # 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X66_Y45_N18
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X66_Y45_N20
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\) # 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X66_Y45_N22
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X66_Y45_N26
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\timer_counter_instans|seconds_intern\(1)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \timer_counter_instans|seconds_intern\(1),
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X66_Y45_N0
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\) # ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X66_Y45_N30
\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datac => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X67_Y50_N4
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux6~0_combout\ = (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (\timer_counter_instans|seconds_intern\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timer_counter_instans|seconds_intern\(0),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y50_N10
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux5~0_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ $ (\timer_counter_instans|seconds_intern\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timer_counter_instans|seconds_intern\(0),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y50_N16
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux4~0_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (!\timer_counter_instans|seconds_intern\(0) & !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timer_counter_instans|seconds_intern\(0),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y50_N2
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux3~0_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ $ (!\timer_counter_instans|seconds_intern\(0))))) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\timer_counter_instans|seconds_intern\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timer_counter_instans|seconds_intern\(0),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y50_N28
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux2~0_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (((\timer_counter_instans|seconds_intern\(0) & 
-- !\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\)))) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\))) # 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\timer_counter_instans|seconds_intern\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timer_counter_instans|seconds_intern\(0),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y50_N14
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux1~0_combout\ = (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- ((\timer_counter_instans|seconds_intern\(0)) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\))) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & \timer_counter_instans|seconds_intern\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timer_counter_instans|seconds_intern\(0),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y50_N12
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux0~0_combout\ = (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\) # ((\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- ((!\timer_counter_instans|seconds_intern\(0)) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\))) # (!\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (\bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timer_counter_instans|seconds_intern\(0),
	datad => \bcd_splitter_instans|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_0|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y41_N22
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \timer_counter_instans|seconds_intern\(5) $ (VCC)
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\timer_counter_instans|seconds_intern\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|seconds_intern\(5),
	datad => VCC,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X70_Y41_N24
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\timer_counter_instans|seconds_intern\(6) & (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\timer_counter_instans|seconds_intern\(6) & (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\timer_counter_instans|seconds_intern\(6) & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|seconds_intern\(6),
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X70_Y41_N26
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\timer_counter_instans|seconds_intern\(7) & (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\timer_counter_instans|seconds_intern\(7) & (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\timer_counter_instans|seconds_intern\(7) & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|seconds_intern\(7),
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X70_Y41_N28
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X70_Y41_N6
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[18]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X70_Y41_N0
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[18]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\timer_counter_instans|seconds_intern\(7) & \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(7),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X70_Y41_N30
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X70_Y41_N8
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\timer_counter_instans|seconds_intern\(6) & \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(6),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X70_Y41_N20
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X70_Y41_N4
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\timer_counter_instans|seconds_intern\(5) & \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(5),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X69_Y41_N8
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\timer_counter_instans|seconds_intern\(4) & \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(4),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X69_Y41_N6
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\timer_counter_instans|seconds_intern\(4) & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(4),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X70_Y41_N10
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\) # 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\) # 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X70_Y41_N12
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\) # (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X70_Y41_N14
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X70_Y41_N16
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X70_Y41_N18
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X69_Y41_N12
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[23]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\timer_counter_instans|seconds_intern\(6)))) # (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timer_counter_instans|seconds_intern\(6),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X69_Y41_N0
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[23]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X69_Y41_N26
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\timer_counter_instans|seconds_intern\(5)))) # (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timer_counter_instans|seconds_intern\(5),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X69_Y41_N2
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X70_Y41_N2
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X69_Y41_N28
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\timer_counter_instans|seconds_intern\(4) & \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(4),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X69_Y41_N10
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\timer_counter_instans|seconds_intern\(3) & \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(3),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X69_Y41_N4
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\timer_counter_instans|seconds_intern\(3) & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(3),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X69_Y41_N16
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\) # 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\) # 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X69_Y41_N18
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\) # (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X69_Y41_N20
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\)))) # 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\)))))
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X69_Y41_N22
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X69_Y41_N24
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X69_Y45_N10
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\timer_counter_instans|seconds_intern\(4))) # (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|seconds_intern\(4),
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X69_Y41_N30
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[28]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X69_Y41_N14
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[28]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X69_Y45_N24
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X69_Y45_N28
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X69_Y45_N26
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\timer_counter_instans|seconds_intern\(3) & \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(3),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X69_Y45_N20
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\timer_counter_instans|seconds_intern\(2) & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(2),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X69_Y45_N14
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\timer_counter_instans|seconds_intern\(2) & \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|seconds_intern\(2),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X67_Y45_N8
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X67_Y45_N10
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\) # (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X67_Y45_N12
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\)))) # 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\)))))
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X67_Y45_N14
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ & 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X67_Y45_N16
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X69_Y45_N12
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[33]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X67_Y45_N4
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[33]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X67_Y45_N6
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[32]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X69_Y45_N8
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\timer_counter_instans|seconds_intern\(3)))) # (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \timer_counter_instans|seconds_intern\(3),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X67_Y45_N2
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[31]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X67_Y45_N0
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[31]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\timer_counter_instans|seconds_intern\(2) & \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|seconds_intern\(2),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X67_Y45_N18
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[30]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\timer_counter_instans|seconds_intern\(1) & \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|seconds_intern\(1),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X67_Y45_N20
\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[30]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ = (\timer_counter_instans|seconds_intern\(1) & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|seconds_intern\(1),
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X67_Y45_N22
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\) # 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datad => VCC,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X67_Y45_N24
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X67_Y45_N26
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\) # (\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X67_Y45_N28
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ & !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X67_Y45_N30
\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X69_Y45_N2
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux6~0_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y45_N4
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux5~0_combout\ = (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y45_N30
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux4~0_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y45_N16
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux3~0_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y45_N22
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux2~0_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y45_N0
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux1~0_combout\ = (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y45_N18
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux0~0_combout\ = ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # 
-- (!\bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_1|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y37_N12
\timer_counter_instans|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add1~0_combout\ = \timer_counter_instans|minets_intern\(0) $ (VCC)
-- \timer_counter_instans|Add1~1\ = CARRY(\timer_counter_instans|minets_intern\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(0),
	datad => VCC,
	combout => \timer_counter_instans|Add1~0_combout\,
	cout => \timer_counter_instans|Add1~1\);

-- Location: LCCOMB_X64_Y37_N30
\timer_counter_instans|minets_intern[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|minets_intern[7]~0_combout\ = (\clock_divider_instans|clock_1hz~q\ & (\timer_counter_instans|Equal0~1_combout\ & \timer_counter_instans|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_instans|clock_1hz~q\,
	datab => \timer_counter_instans|Equal0~1_combout\,
	datad => \timer_counter_instans|Equal0~0_combout\,
	combout => \timer_counter_instans|minets_intern[7]~0_combout\);

-- Location: FF_X64_Y37_N13
\timer_counter_instans|minets_intern[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add1~0_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|minets_intern[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|minets_intern\(0));

-- Location: LCCOMB_X64_Y37_N14
\timer_counter_instans|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add1~2_combout\ = (\timer_counter_instans|minets_intern\(1) & (!\timer_counter_instans|Add1~1\)) # (!\timer_counter_instans|minets_intern\(1) & ((\timer_counter_instans|Add1~1\) # (GND)))
-- \timer_counter_instans|Add1~3\ = CARRY((!\timer_counter_instans|Add1~1\) # (!\timer_counter_instans|minets_intern\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|minets_intern\(1),
	datad => VCC,
	cin => \timer_counter_instans|Add1~1\,
	combout => \timer_counter_instans|Add1~2_combout\,
	cout => \timer_counter_instans|Add1~3\);

-- Location: FF_X64_Y37_N15
\timer_counter_instans|minets_intern[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add1~2_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|minets_intern[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|minets_intern\(1));

-- Location: LCCOMB_X64_Y37_N16
\timer_counter_instans|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add1~4_combout\ = (\timer_counter_instans|minets_intern\(2) & (\timer_counter_instans|Add1~3\ $ (GND))) # (!\timer_counter_instans|minets_intern\(2) & (!\timer_counter_instans|Add1~3\ & VCC))
-- \timer_counter_instans|Add1~5\ = CARRY((\timer_counter_instans|minets_intern\(2) & !\timer_counter_instans|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|minets_intern\(2),
	datad => VCC,
	cin => \timer_counter_instans|Add1~3\,
	combout => \timer_counter_instans|Add1~4_combout\,
	cout => \timer_counter_instans|Add1~5\);

-- Location: LCCOMB_X64_Y37_N18
\timer_counter_instans|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add1~6_combout\ = (\timer_counter_instans|minets_intern\(3) & (!\timer_counter_instans|Add1~5\)) # (!\timer_counter_instans|minets_intern\(3) & ((\timer_counter_instans|Add1~5\) # (GND)))
-- \timer_counter_instans|Add1~7\ = CARRY((!\timer_counter_instans|Add1~5\) # (!\timer_counter_instans|minets_intern\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(3),
	datad => VCC,
	cin => \timer_counter_instans|Add1~5\,
	combout => \timer_counter_instans|Add1~6_combout\,
	cout => \timer_counter_instans|Add1~7\);

-- Location: LCCOMB_X64_Y37_N20
\timer_counter_instans|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add1~8_combout\ = (\timer_counter_instans|minets_intern\(4) & (\timer_counter_instans|Add1~7\ $ (GND))) # (!\timer_counter_instans|minets_intern\(4) & (!\timer_counter_instans|Add1~7\ & VCC))
-- \timer_counter_instans|Add1~9\ = CARRY((\timer_counter_instans|minets_intern\(4) & !\timer_counter_instans|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(4),
	datad => VCC,
	cin => \timer_counter_instans|Add1~7\,
	combout => \timer_counter_instans|Add1~8_combout\,
	cout => \timer_counter_instans|Add1~9\);

-- Location: LCCOMB_X64_Y37_N10
\timer_counter_instans|minets_intern~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|minets_intern~2_combout\ = (\timer_counter_instans|Add1~8_combout\ & ((!\timer_counter_instans|Equal1~0_combout\) # (!\timer_counter_instans|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|Equal1~1_combout\,
	datac => \timer_counter_instans|Equal1~0_combout\,
	datad => \timer_counter_instans|Add1~8_combout\,
	combout => \timer_counter_instans|minets_intern~2_combout\);

-- Location: FF_X64_Y37_N11
\timer_counter_instans|minets_intern[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|minets_intern~2_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|minets_intern[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|minets_intern\(4));

-- Location: LCCOMB_X64_Y37_N22
\timer_counter_instans|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add1~10_combout\ = (\timer_counter_instans|minets_intern\(5) & (!\timer_counter_instans|Add1~9\)) # (!\timer_counter_instans|minets_intern\(5) & ((\timer_counter_instans|Add1~9\) # (GND)))
-- \timer_counter_instans|Add1~11\ = CARRY((!\timer_counter_instans|Add1~9\) # (!\timer_counter_instans|minets_intern\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(5),
	datad => VCC,
	cin => \timer_counter_instans|Add1~9\,
	combout => \timer_counter_instans|Add1~10_combout\,
	cout => \timer_counter_instans|Add1~11\);

-- Location: LCCOMB_X64_Y37_N8
\timer_counter_instans|minets_intern~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|minets_intern~1_combout\ = (\timer_counter_instans|Add1~10_combout\ & ((!\timer_counter_instans|Equal1~0_combout\) # (!\timer_counter_instans|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|Add1~10_combout\,
	datab => \timer_counter_instans|Equal1~1_combout\,
	datac => \timer_counter_instans|Equal1~0_combout\,
	combout => \timer_counter_instans|minets_intern~1_combout\);

-- Location: FF_X64_Y37_N9
\timer_counter_instans|minets_intern[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|minets_intern~1_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|minets_intern[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|minets_intern\(5));

-- Location: LCCOMB_X64_Y37_N24
\timer_counter_instans|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add1~12_combout\ = (\timer_counter_instans|minets_intern\(6) & (\timer_counter_instans|Add1~11\ $ (GND))) # (!\timer_counter_instans|minets_intern\(6) & (!\timer_counter_instans|Add1~11\ & VCC))
-- \timer_counter_instans|Add1~13\ = CARRY((\timer_counter_instans|minets_intern\(6) & !\timer_counter_instans|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|minets_intern\(6),
	datad => VCC,
	cin => \timer_counter_instans|Add1~11\,
	combout => \timer_counter_instans|Add1~12_combout\,
	cout => \timer_counter_instans|Add1~13\);

-- Location: FF_X64_Y37_N25
\timer_counter_instans|minets_intern[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add1~12_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|minets_intern[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|minets_intern\(6));

-- Location: LCCOMB_X64_Y37_N26
\timer_counter_instans|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add1~14_combout\ = \timer_counter_instans|minets_intern\(7) $ (\timer_counter_instans|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(7),
	cin => \timer_counter_instans|Add1~13\,
	combout => \timer_counter_instans|Add1~14_combout\);

-- Location: FF_X64_Y37_N27
\timer_counter_instans|minets_intern[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add1~14_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|minets_intern[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|minets_intern\(7));

-- Location: LCCOMB_X64_Y37_N0
\timer_counter_instans|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Equal1~0_combout\ = (!\timer_counter_instans|minets_intern\(7) & (!\timer_counter_instans|minets_intern\(6) & (\timer_counter_instans|minets_intern\(5) & \timer_counter_instans|minets_intern\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(7),
	datab => \timer_counter_instans|minets_intern\(6),
	datac => \timer_counter_instans|minets_intern\(5),
	datad => \timer_counter_instans|minets_intern\(4),
	combout => \timer_counter_instans|Equal1~0_combout\);

-- Location: LCCOMB_X64_Y37_N6
\timer_counter_instans|minets_intern~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|minets_intern~3_combout\ = (\timer_counter_instans|Add1~6_combout\ & ((!\timer_counter_instans|Equal1~0_combout\) # (!\timer_counter_instans|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|Equal1~1_combout\,
	datac => \timer_counter_instans|Equal1~0_combout\,
	datad => \timer_counter_instans|Add1~6_combout\,
	combout => \timer_counter_instans|minets_intern~3_combout\);

-- Location: FF_X64_Y37_N7
\timer_counter_instans|minets_intern[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|minets_intern~3_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|minets_intern[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|minets_intern\(3));

-- Location: LCCOMB_X64_Y37_N2
\timer_counter_instans|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Equal1~1_combout\ = (\timer_counter_instans|minets_intern\(0) & (!\timer_counter_instans|minets_intern\(2) & (\timer_counter_instans|minets_intern\(1) & \timer_counter_instans|minets_intern\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(0),
	datab => \timer_counter_instans|minets_intern\(2),
	datac => \timer_counter_instans|minets_intern\(1),
	datad => \timer_counter_instans|minets_intern\(3),
	combout => \timer_counter_instans|Equal1~1_combout\);

-- Location: LCCOMB_X64_Y37_N28
\timer_counter_instans|minets_intern~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|minets_intern~4_combout\ = (\timer_counter_instans|Add1~4_combout\ & ((!\timer_counter_instans|Equal1~0_combout\) # (!\timer_counter_instans|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|Equal1~1_combout\,
	datac => \timer_counter_instans|Equal1~0_combout\,
	datad => \timer_counter_instans|Add1~4_combout\,
	combout => \timer_counter_instans|minets_intern~4_combout\);

-- Location: FF_X64_Y37_N29
\timer_counter_instans|minets_intern[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|minets_intern~4_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|minets_intern[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|minets_intern\(2));

-- Location: LCCOMB_X62_Y39_N20
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \timer_counter_instans|minets_intern\(5) $ (VCC)
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\timer_counter_instans|minets_intern\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|minets_intern\(5),
	datad => VCC,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X62_Y39_N22
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\timer_counter_instans|minets_intern\(6) & (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\timer_counter_instans|minets_intern\(6) & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\timer_counter_instans|minets_intern\(6) & !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|minets_intern\(6),
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X62_Y39_N24
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\timer_counter_instans|minets_intern\(7) & (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\timer_counter_instans|minets_intern\(7) & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\timer_counter_instans|minets_intern\(7) & !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(7),
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X62_Y39_N26
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X62_Y39_N16
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timer_counter_instans|minets_intern\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timer_counter_instans|minets_intern\(7),
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X62_Y39_N18
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X62_Y39_N14
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timer_counter_instans|minets_intern\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timer_counter_instans|minets_intern\(6),
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X62_Y39_N28
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X62_Y38_N28
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X62_Y39_N2
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timer_counter_instans|minets_intern\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timer_counter_instans|minets_intern\(5),
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X62_Y39_N30
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timer_counter_instans|minets_intern\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timer_counter_instans|minets_intern\(4),
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X62_Y39_N0
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timer_counter_instans|minets_intern\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timer_counter_instans|minets_intern\(4),
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X62_Y39_N4
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\) # 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\)))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\) # 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X62_Y39_N6
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X62_Y39_N8
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\)))))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X62_Y39_N10
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & 
-- (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\)))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X62_Y39_N12
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X62_Y38_N10
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\timer_counter_instans|minets_intern\(7)))) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \timer_counter_instans|minets_intern\(7),
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X62_Y38_N2
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & 
-- !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X62_Y38_N8
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X62_Y38_N24
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\timer_counter_instans|minets_intern\(6)))) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \timer_counter_instans|minets_intern\(6),
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X62_Y38_N26
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\timer_counter_instans|minets_intern\(5))) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(5),
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X62_Y38_N30
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X63_Y38_N4
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timer_counter_instans|minets_intern\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timer_counter_instans|minets_intern\(4),
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X63_Y38_N26
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X63_Y38_N2
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timer_counter_instans|minets_intern\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timer_counter_instans|minets_intern\(3),
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X63_Y38_N12
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timer_counter_instans|minets_intern\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timer_counter_instans|minets_intern\(3),
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X62_Y38_N12
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\) # 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\)))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\) # 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X62_Y38_N14
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\)))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X62_Y38_N16
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X62_Y38_N18
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & 
-- (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\)))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ & !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X62_Y38_N20
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & 
-- ((((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X62_Y38_N22
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X62_Y38_N0
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X64_Y38_N18
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X64_Y38_N20
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X62_Y38_N6
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\) # ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X62_Y38_N4
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X64_Y38_N30
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X63_Y38_N14
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\timer_counter_instans|minets_intern\(4))) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(4),
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X63_Y38_N24
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X63_Y38_N16
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X63_Y38_N6
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \timer_counter_instans|minets_intern\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \timer_counter_instans|minets_intern\(3),
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X63_Y38_N10
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \timer_counter_instans|minets_intern\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \timer_counter_instans|minets_intern\(2),
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X63_Y38_N28
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \timer_counter_instans|minets_intern\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \timer_counter_instans|minets_intern\(2),
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X64_Y38_N0
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X64_Y38_N2
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\)))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ & !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X64_Y38_N4
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\)))))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X64_Y38_N6
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & 
-- (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\)))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ & !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X64_Y38_N8
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & 
-- ((((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\))))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # (GND))))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X64_Y38_N10
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & 
-- (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ & !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X64_Y38_N12
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X63_Y38_N22
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ = (\timer_counter_instans|minets_intern\(2) & \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|minets_intern\(2),
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X65_Y38_N24
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X64_Y38_N14
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[54]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # ((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X65_Y38_N28
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[54]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X64_Y38_N16
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[53]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\);

-- Location: LCCOMB_X64_Y38_N24
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[53]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X64_Y38_N26
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[52]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\) # ((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X64_Y38_N22
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[52]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X63_Y38_N0
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[51]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X64_Y38_N28
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[51]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X63_Y38_N20
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\timer_counter_instans|minets_intern\(3)))) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \timer_counter_instans|minets_intern\(3),
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X65_Y38_N2
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X65_Y38_N26
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\ = (\timer_counter_instans|minets_intern\(1) & !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|minets_intern\(1),
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X65_Y38_N0
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\timer_counter_instans|minets_intern\(1) & \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|minets_intern\(1),
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X65_Y38_N8
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\) # 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\)))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\) # 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X65_Y38_N10
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\)))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ & !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X65_Y38_N12
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\)))))
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X65_Y38_N14
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ & !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X65_Y38_N16
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\) # 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X65_Y38_N18
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ & !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X65_Y38_N20
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\) # 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X65_Y38_N22
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X65_Y38_N4
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\) # ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X65_Y38_N6
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X65_Y38_N30
\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\timer_counter_instans|minets_intern\(1)))) # 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \timer_counter_instans|minets_intern\(1),
	combout => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X70_Y43_N0
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux6~0_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (\timer_counter_instans|minets_intern\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \timer_counter_instans|minets_intern\(0),
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y43_N26
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux5~0_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ $ (\timer_counter_instans|minets_intern\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \timer_counter_instans|minets_intern\(0),
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y43_N8
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux4~0_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & !\timer_counter_instans|minets_intern\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \timer_counter_instans|minets_intern\(0),
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y43_N10
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux3~0_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ $ (!\timer_counter_instans|minets_intern\(0))))) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & \timer_counter_instans|minets_intern\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \timer_counter_instans|minets_intern\(0),
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y43_N12
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux2~0_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (((!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- \timer_counter_instans|minets_intern\(0))))) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\timer_counter_instans|minets_intern\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \timer_counter_instans|minets_intern\(0),
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y43_N22
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux1~0_combout\ = (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & \timer_counter_instans|minets_intern\(0))) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\) # (\timer_counter_instans|minets_intern\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \timer_counter_instans|minets_intern\(0),
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y43_N28
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux0~0_combout\ = (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\) # ((\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- ((!\timer_counter_instans|minets_intern\(0)) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\))) # (!\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (\bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \bcd_splitter_instans|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \timer_counter_instans|minets_intern\(0),
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_2|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y40_N6
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \timer_counter_instans|minets_intern\(5) $ (VCC)
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\timer_counter_instans|minets_intern\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(5),
	datad => VCC,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X69_Y40_N8
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\timer_counter_instans|minets_intern\(6) & (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\timer_counter_instans|minets_intern\(6) & (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\timer_counter_instans|minets_intern\(6) & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|minets_intern\(6),
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X69_Y40_N10
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\timer_counter_instans|minets_intern\(7) & (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\timer_counter_instans|minets_intern\(7) & (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\timer_counter_instans|minets_intern\(7) & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|minets_intern\(7),
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X69_Y40_N12
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X69_Y40_N14
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[18]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X69_Y40_N0
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[18]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\timer_counter_instans|minets_intern\(7) & \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|minets_intern\(7),
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X69_Y40_N20
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\timer_counter_instans|minets_intern\(6) & \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|minets_intern\(6),
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X69_Y40_N18
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X70_Y40_N4
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\timer_counter_instans|minets_intern\(5) & \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(5),
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X70_Y40_N26
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X69_Y40_N2
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\timer_counter_instans|minets_intern\(4) & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(4),
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X69_Y40_N4
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\timer_counter_instans|minets_intern\(4) & \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(4),
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X69_Y40_N22
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\) # 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\) # 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X69_Y40_N24
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\) # (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X69_Y40_N26
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\) # (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\) # (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X69_Y40_N28
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X69_Y40_N30
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X69_Y40_N16
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[23]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\timer_counter_instans|minets_intern\(6))) # (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \timer_counter_instans|minets_intern\(6),
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X70_Y40_N0
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[23]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X70_Y40_N10
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X70_Y40_N8
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\timer_counter_instans|minets_intern\(5))) # (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|minets_intern\(5),
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X70_Y40_N12
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\timer_counter_instans|minets_intern\(4) & \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|minets_intern\(4),
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X70_Y40_N14
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X70_Y40_N30
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\timer_counter_instans|minets_intern\(3) & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|minets_intern\(3),
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X70_Y40_N28
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\timer_counter_instans|minets_intern\(3) & \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|minets_intern\(3),
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X70_Y40_N16
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\) # 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\) # 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X70_Y40_N18
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\) # (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X70_Y40_N20
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\) # (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\) # (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X70_Y40_N22
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X70_Y40_N24
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X70_Y40_N2
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[28]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X71_Y37_N28
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[28]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ = (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X71_Y37_N10
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ = (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X70_Y40_N6
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\timer_counter_instans|minets_intern\(4)))) # (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timer_counter_instans|minets_intern\(4),
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X71_Y37_N12
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\timer_counter_instans|minets_intern\(3) & \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|minets_intern\(3),
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X71_Y37_N2
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ = (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X71_Y37_N30
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \timer_counter_instans|minets_intern\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timer_counter_instans|minets_intern\(2),
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X71_Y37_N4
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \timer_counter_instans|minets_intern\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timer_counter_instans|minets_intern\(2),
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X71_Y37_N18
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X71_Y37_N20
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\) # (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X71_Y37_N22
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\)))) # 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\)))))
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X71_Y37_N24
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X71_Y37_N26
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X71_Y37_N8
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[33]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # ((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X72_Y37_N20
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[33]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X71_Y37_N16
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\timer_counter_instans|minets_intern\(3)))) # (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timer_counter_instans|minets_intern\(3),
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X72_Y37_N18
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[32]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X71_Y37_N0
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[31]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \timer_counter_instans|minets_intern\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timer_counter_instans|minets_intern\(2),
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X71_Y37_N6
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[31]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ = (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X72_Y37_N22
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[30]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ = (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \timer_counter_instans|minets_intern\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timer_counter_instans|minets_intern\(1),
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X72_Y37_N24
\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[30]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \timer_counter_instans|minets_intern\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timer_counter_instans|minets_intern\(1),
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X72_Y37_N8
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\) # 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X72_Y37_N10
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X72_Y37_N12
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X72_Y37_N14
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X72_Y37_N16
\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X72_Y37_N2
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux6~0_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux6~0_combout\);

-- Location: LCCOMB_X72_Y37_N4
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux5~0_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux5~0_combout\);

-- Location: LCCOMB_X72_Y37_N26
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux4~0_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux4~0_combout\);

-- Location: LCCOMB_X72_Y37_N0
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux3~0_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (((\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux3~0_combout\);

-- Location: LCCOMB_X72_Y37_N6
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux2~0_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux2~0_combout\);

-- Location: LCCOMB_X72_Y37_N28
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux1~0_combout\ = (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux1~0_combout\);

-- Location: LCCOMB_X72_Y37_N30
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux0~0_combout\ = ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # 
-- (!\bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_3|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y37_N8
\timer_counter_instans|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add0~0_combout\ = \timer_counter_instans|hours_intern\(0) $ (VCC)
-- \timer_counter_instans|Add0~1\ = CARRY(\timer_counter_instans|hours_intern\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|hours_intern\(0),
	datad => VCC,
	combout => \timer_counter_instans|Add0~0_combout\,
	cout => \timer_counter_instans|Add0~1\);

-- Location: LCCOMB_X65_Y37_N24
\timer_counter_instans|hours_intern[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|hours_intern[7]~0_combout\ = (\clock_divider_instans|clock_1hz~q\ & \timer_counter_instans|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_instans|clock_1hz~q\,
	datad => \timer_counter_instans|Equal1~1_combout\,
	combout => \timer_counter_instans|hours_intern[7]~0_combout\);

-- Location: LCCOMB_X65_Y37_N26
\timer_counter_instans|hours_intern[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|hours_intern[7]~1_combout\ = (\timer_counter_instans|Equal0~0_combout\ & (\timer_counter_instans|Equal0~1_combout\ & (\timer_counter_instans|Equal1~0_combout\ & \timer_counter_instans|hours_intern[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|Equal0~0_combout\,
	datab => \timer_counter_instans|Equal0~1_combout\,
	datac => \timer_counter_instans|Equal1~0_combout\,
	datad => \timer_counter_instans|hours_intern[7]~0_combout\,
	combout => \timer_counter_instans|hours_intern[7]~1_combout\);

-- Location: FF_X65_Y37_N9
\timer_counter_instans|hours_intern[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add0~0_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|hours_intern[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|hours_intern\(0));

-- Location: LCCOMB_X65_Y37_N10
\timer_counter_instans|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add0~2_combout\ = (\timer_counter_instans|hours_intern\(1) & (!\timer_counter_instans|Add0~1\)) # (!\timer_counter_instans|hours_intern\(1) & ((\timer_counter_instans|Add0~1\) # (GND)))
-- \timer_counter_instans|Add0~3\ = CARRY((!\timer_counter_instans|Add0~1\) # (!\timer_counter_instans|hours_intern\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|hours_intern\(1),
	datad => VCC,
	cin => \timer_counter_instans|Add0~1\,
	combout => \timer_counter_instans|Add0~2_combout\,
	cout => \timer_counter_instans|Add0~3\);

-- Location: FF_X65_Y37_N11
\timer_counter_instans|hours_intern[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add0~2_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|hours_intern[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|hours_intern\(1));

-- Location: LCCOMB_X65_Y37_N12
\timer_counter_instans|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add0~4_combout\ = (\timer_counter_instans|hours_intern\(2) & (\timer_counter_instans|Add0~3\ $ (GND))) # (!\timer_counter_instans|hours_intern\(2) & (!\timer_counter_instans|Add0~3\ & VCC))
-- \timer_counter_instans|Add0~5\ = CARRY((\timer_counter_instans|hours_intern\(2) & !\timer_counter_instans|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|hours_intern\(2),
	datad => VCC,
	cin => \timer_counter_instans|Add0~3\,
	combout => \timer_counter_instans|Add0~4_combout\,
	cout => \timer_counter_instans|Add0~5\);

-- Location: FF_X65_Y37_N13
\timer_counter_instans|hours_intern[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add0~4_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|hours_intern[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|hours_intern\(2));

-- Location: LCCOMB_X65_Y37_N14
\timer_counter_instans|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add0~6_combout\ = (\timer_counter_instans|hours_intern\(3) & (!\timer_counter_instans|Add0~5\)) # (!\timer_counter_instans|hours_intern\(3) & ((\timer_counter_instans|Add0~5\) # (GND)))
-- \timer_counter_instans|Add0~7\ = CARRY((!\timer_counter_instans|Add0~5\) # (!\timer_counter_instans|hours_intern\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|hours_intern\(3),
	datad => VCC,
	cin => \timer_counter_instans|Add0~5\,
	combout => \timer_counter_instans|Add0~6_combout\,
	cout => \timer_counter_instans|Add0~7\);

-- Location: LCCOMB_X65_Y37_N16
\timer_counter_instans|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add0~8_combout\ = (\timer_counter_instans|hours_intern\(4) & (\timer_counter_instans|Add0~7\ $ (GND))) # (!\timer_counter_instans|hours_intern\(4) & (!\timer_counter_instans|Add0~7\ & VCC))
-- \timer_counter_instans|Add0~9\ = CARRY((\timer_counter_instans|hours_intern\(4) & !\timer_counter_instans|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|hours_intern\(4),
	datad => VCC,
	cin => \timer_counter_instans|Add0~7\,
	combout => \timer_counter_instans|Add0~8_combout\,
	cout => \timer_counter_instans|Add0~9\);

-- Location: LCCOMB_X65_Y37_N18
\timer_counter_instans|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add0~10_combout\ = (\timer_counter_instans|hours_intern\(5) & (!\timer_counter_instans|Add0~9\)) # (!\timer_counter_instans|hours_intern\(5) & ((\timer_counter_instans|Add0~9\) # (GND)))
-- \timer_counter_instans|Add0~11\ = CARRY((!\timer_counter_instans|Add0~9\) # (!\timer_counter_instans|hours_intern\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|hours_intern\(5),
	datad => VCC,
	cin => \timer_counter_instans|Add0~9\,
	combout => \timer_counter_instans|Add0~10_combout\,
	cout => \timer_counter_instans|Add0~11\);

-- Location: FF_X65_Y37_N19
\timer_counter_instans|hours_intern[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add0~10_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|hours_intern[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|hours_intern\(5));

-- Location: LCCOMB_X65_Y37_N20
\timer_counter_instans|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add0~12_combout\ = (\timer_counter_instans|hours_intern\(6) & (\timer_counter_instans|Add0~11\ $ (GND))) # (!\timer_counter_instans|hours_intern\(6) & (!\timer_counter_instans|Add0~11\ & VCC))
-- \timer_counter_instans|Add0~13\ = CARRY((\timer_counter_instans|hours_intern\(6) & !\timer_counter_instans|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|hours_intern\(6),
	datad => VCC,
	cin => \timer_counter_instans|Add0~11\,
	combout => \timer_counter_instans|Add0~12_combout\,
	cout => \timer_counter_instans|Add0~13\);

-- Location: FF_X65_Y37_N21
\timer_counter_instans|hours_intern[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add0~12_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|hours_intern[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|hours_intern\(6));

-- Location: LCCOMB_X65_Y37_N22
\timer_counter_instans|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Add0~14_combout\ = \timer_counter_instans|hours_intern\(7) $ (\timer_counter_instans|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|hours_intern\(7),
	cin => \timer_counter_instans|Add0~13\,
	combout => \timer_counter_instans|Add0~14_combout\);

-- Location: FF_X65_Y37_N23
\timer_counter_instans|hours_intern[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|Add0~14_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|hours_intern[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|hours_intern\(7));

-- Location: LCCOMB_X65_Y37_N28
\timer_counter_instans|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Equal2~0_combout\ = (!\timer_counter_instans|hours_intern\(7) & (!\timer_counter_instans|hours_intern\(6) & (\timer_counter_instans|hours_intern\(0) & !\timer_counter_instans|hours_intern\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|hours_intern\(7),
	datab => \timer_counter_instans|hours_intern\(6),
	datac => \timer_counter_instans|hours_intern\(0),
	datad => \timer_counter_instans|hours_intern\(5),
	combout => \timer_counter_instans|Equal2~0_combout\);

-- Location: LCCOMB_X65_Y37_N4
\timer_counter_instans|hours_intern~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|hours_intern~2_combout\ = (\timer_counter_instans|Add0~8_combout\ & ((!\timer_counter_instans|Equal2~1_combout\) # (!\timer_counter_instans|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|Equal2~0_combout\,
	datac => \timer_counter_instans|Equal2~1_combout\,
	datad => \timer_counter_instans|Add0~8_combout\,
	combout => \timer_counter_instans|hours_intern~2_combout\);

-- Location: FF_X65_Y37_N5
\timer_counter_instans|hours_intern[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|hours_intern~2_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|hours_intern[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|hours_intern\(4));

-- Location: LCCOMB_X65_Y37_N30
\timer_counter_instans|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|Equal2~1_combout\ = (\timer_counter_instans|hours_intern\(2) & (!\timer_counter_instans|hours_intern\(3) & (\timer_counter_instans|hours_intern\(4) & \timer_counter_instans|hours_intern\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|hours_intern\(2),
	datab => \timer_counter_instans|hours_intern\(3),
	datac => \timer_counter_instans|hours_intern\(4),
	datad => \timer_counter_instans|hours_intern\(1),
	combout => \timer_counter_instans|Equal2~1_combout\);

-- Location: LCCOMB_X65_Y37_N2
\timer_counter_instans|hours_intern~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer_counter_instans|hours_intern~3_combout\ = (\timer_counter_instans|Add0~6_combout\ & ((!\timer_counter_instans|Equal2~0_combout\) # (!\timer_counter_instans|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|Equal2~1_combout\,
	datac => \timer_counter_instans|Add0~6_combout\,
	datad => \timer_counter_instans|Equal2~0_combout\,
	combout => \timer_counter_instans|hours_intern~3_combout\);

-- Location: FF_X65_Y37_N3
\timer_counter_instans|hours_intern[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \timer_counter_instans|hours_intern~3_combout\,
	clrn => \reset_t2_n~q\,
	ena => \timer_counter_instans|hours_intern[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_counter_instans|hours_intern\(3));

-- Location: LCCOMB_X63_Y39_N6
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \timer_counter_instans|hours_intern\(5) $ (VCC)
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\timer_counter_instans|hours_intern\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|hours_intern\(5),
	datad => VCC,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X63_Y39_N8
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\timer_counter_instans|hours_intern\(6) & (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\timer_counter_instans|hours_intern\(6) & (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\timer_counter_instans|hours_intern\(6) & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|hours_intern\(6),
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X63_Y39_N10
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\timer_counter_instans|hours_intern\(7) & (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\timer_counter_instans|hours_intern\(7) & (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\timer_counter_instans|hours_intern\(7) & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|hours_intern\(7),
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X63_Y39_N12
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X63_Y39_N14
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X63_Y39_N4
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timer_counter_instans|hours_intern\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \timer_counter_instans|hours_intern\(7),
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X65_Y39_N20
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\timer_counter_instans|hours_intern\(6) & \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|hours_intern\(6),
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X64_Y39_N28
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X64_Y39_N12
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timer_counter_instans|hours_intern\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timer_counter_instans|hours_intern\(5),
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X63_Y39_N20
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X65_Y39_N2
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timer_counter_instans|hours_intern\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timer_counter_instans|hours_intern\(4),
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X65_Y39_N28
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\ = (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timer_counter_instans|hours_intern\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timer_counter_instans|hours_intern\(4),
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X64_Y39_N2
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\) # 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\) # 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X64_Y39_N4
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\ & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X64_Y39_N6
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\)))))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X64_Y39_N8
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & 
-- (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\ & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X64_Y39_N10
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X63_Y39_N26
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\timer_counter_instans|hours_intern\(7)))) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => \timer_counter_instans|hours_intern\(7),
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X66_Y39_N16
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X65_Y39_N16
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\timer_counter_instans|hours_intern\(6))) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \timer_counter_instans|hours_intern\(6),
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X65_Y39_N22
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X63_Y39_N28
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\timer_counter_instans|hours_intern\(5)))) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \timer_counter_instans|hours_intern\(5),
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X66_Y39_N14
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X65_Y39_N0
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X66_Y39_N8
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timer_counter_instans|hours_intern\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timer_counter_instans|hours_intern\(4),
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X66_Y39_N10
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timer_counter_instans|hours_intern\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timer_counter_instans|hours_intern\(3),
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X65_Y39_N6
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\ = (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timer_counter_instans|hours_intern\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timer_counter_instans|hours_intern\(3),
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X66_Y39_N20
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\)))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X66_Y39_N22
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\)))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\ & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X66_Y39_N24
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X66_Y39_N26
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & 
-- (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\ & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X66_Y39_N28
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & 
-- ((((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X66_Y39_N30
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X66_Y39_N6
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\timer_counter_instans|hours_intern\(3) & \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|hours_intern\(3),
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X65_Y39_N4
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X66_Y36_N26
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\timer_counter_instans|hours_intern\(2) & \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|hours_intern\(2),
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X66_Y36_N0
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\ = (\timer_counter_instans|hours_intern\(2) & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|hours_intern\(2),
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X66_Y36_N6
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\) # 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\) # 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X66_Y36_N8
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\)))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X66_Y39_N4
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X66_Y36_N24
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X66_Y39_N0
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X65_Y39_N10
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\) # ((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X66_Y39_N18
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ = (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X66_Y39_N2
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\) # ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X65_Y39_N18
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\timer_counter_instans|hours_intern\(4)))) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \timer_counter_instans|hours_intern\(4),
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X66_Y39_N12
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\ = (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X66_Y36_N10
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\)))))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X66_Y36_N12
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & 
-- (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\)))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\ & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X66_Y36_N14
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & 
-- ((((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\))))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\) # (GND))))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X66_Y36_N16
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & 
-- (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X66_Y36_N18
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X66_Y36_N20
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~83_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X66_Y36_N4
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[54]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\) # ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X69_Y36_N24
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[54]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[54]~79_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X65_Y39_N12
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[53]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X66_Y36_N28
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[53]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[53]~80_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[53]~80_combout\);

-- Location: LCCOMB_X69_Y36_N26
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[52]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[52]~81_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X66_Y36_N30
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[52]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\) # ((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X65_Y39_N26
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[51]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\) # ((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X66_Y36_N2
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[51]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[51]~82_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X65_Y39_N24
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\timer_counter_instans|hours_intern\(3)))) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \timer_counter_instans|hours_intern\(3),
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X66_Y36_N22
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~85_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X69_Y36_N16
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~84_combout\ = (\timer_counter_instans|hours_intern\(2) & \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|hours_intern\(2),
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X69_Y36_N22
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~78_combout\ = (\timer_counter_instans|hours_intern\(1) & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|hours_intern\(1),
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X69_Y36_N28
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\timer_counter_instans|hours_intern\(1) & \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|hours_intern\(1),
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X69_Y36_N0
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~78_combout\) # 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~77_combout\)))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~78_combout\) # 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X69_Y36_N2
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~85_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~84_combout\)))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~84_combout\ & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X69_Y36_N4
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~83_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\)))))
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~83_combout\) # (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X69_Y36_N6
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[51]~82_combout\ & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[51]~82_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X69_Y36_N8
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[52]~81_combout\) # 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[52]~81_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X69_Y36_N10
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[53]~80_combout\ & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X69_Y36_N12
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\) # 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[54]~79_combout\) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X69_Y36_N14
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X69_Y36_N18
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~83_combout\) # ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X69_Y36_N30
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\timer_counter_instans|hours_intern\(1))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|hours_intern\(1),
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X69_Y36_N20
\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~85_combout\) # ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[49]~84_combout\,
	combout => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X71_Y40_N0
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux6~0_combout\ = (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\ & (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (\timer_counter_instans|hours_intern\(0) $ (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \timer_counter_instans|hours_intern\(0),
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux6~0_combout\);

-- Location: LCCOMB_X71_Y40_N10
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux5~0_combout\ = (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\ $ (\timer_counter_instans|hours_intern\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \timer_counter_instans|hours_intern\(0),
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux5~0_combout\);

-- Location: LCCOMB_X71_Y40_N12
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux4~0_combout\ = (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (!\timer_counter_instans|hours_intern\(0) & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \timer_counter_instans|hours_intern\(0),
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux4~0_combout\);

-- Location: LCCOMB_X71_Y40_N18
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux3~0_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\ $ (!\timer_counter_instans|hours_intern\(0))))) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\ & \timer_counter_instans|hours_intern\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \timer_counter_instans|hours_intern\(0),
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux3~0_combout\);

-- Location: LCCOMB_X71_Y40_N4
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux2~0_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\ & (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- (\timer_counter_instans|hours_intern\(0)))) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\)) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\timer_counter_instans|hours_intern\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \timer_counter_instans|hours_intern\(0),
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y40_N22
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux1~0_combout\ = (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- ((\timer_counter_instans|hours_intern\(0)) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\))) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (\timer_counter_instans|hours_intern\(0) & !\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \timer_counter_instans|hours_intern\(0),
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y40_N24
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux0~0_combout\ = (\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\) # ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- ((!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\) # (!\timer_counter_instans|hours_intern\(0)))) # (!\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- ((\bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \timer_counter_instans|hours_intern\(0),
	datad => \bcd_splitter_instans|Mod2|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_4|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y39_N0
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \timer_counter_instans|hours_intern\(5) $ (VCC)
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\timer_counter_instans|hours_intern\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|hours_intern\(5),
	datad => VCC,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X69_Y39_N2
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\timer_counter_instans|hours_intern\(6) & (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\timer_counter_instans|hours_intern\(6) & (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\timer_counter_instans|hours_intern\(6) & !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|hours_intern\(6),
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X69_Y39_N4
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\timer_counter_instans|hours_intern\(7) & (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\timer_counter_instans|hours_intern\(7) & (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\timer_counter_instans|hours_intern\(7) & !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_counter_instans|hours_intern\(7),
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X69_Y39_N6
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X69_Y39_N24
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[18]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X69_Y39_N28
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[18]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\timer_counter_instans|hours_intern\(7) & \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|hours_intern\(7),
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X69_Y39_N30
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\timer_counter_instans|hours_intern\(6) & \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|hours_intern\(6),
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X69_Y39_N8
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\ = (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X69_Y39_N22
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ = (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X67_Y39_N24
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\timer_counter_instans|hours_intern\(5) & \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|hours_intern\(5),
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X69_Y39_N26
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\timer_counter_instans|hours_intern\(4) & !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|hours_intern\(4),
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X69_Y39_N20
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\timer_counter_instans|hours_intern\(4) & \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_counter_instans|hours_intern\(4),
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X69_Y39_N10
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\) # 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\) # 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X69_Y39_N12
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\) # (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ & !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X69_Y39_N14
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\) # (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\) # (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X69_Y39_N16
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ & !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X69_Y39_N18
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X67_Y39_N6
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[23]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ = (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X67_Y39_N22
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[23]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\timer_counter_instans|hours_intern\(6))) # (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_counter_instans|hours_intern\(6),
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X67_Y39_N4
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\ = (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X67_Y39_N8
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\timer_counter_instans|hours_intern\(5))) # (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \timer_counter_instans|hours_intern\(5),
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X67_Y39_N26
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timer_counter_instans|hours_intern\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timer_counter_instans|hours_intern\(4),
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X67_Y39_N0
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ = (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X67_Y39_N30
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timer_counter_instans|hours_intern\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timer_counter_instans|hours_intern\(3),
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X67_Y39_N2
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ = (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timer_counter_instans|hours_intern\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timer_counter_instans|hours_intern\(3),
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X67_Y39_N12
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\) # 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\) # 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X67_Y39_N14
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\) # (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ & !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X67_Y39_N16
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X67_Y39_N18
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ & !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X67_Y39_N20
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X67_Y38_N6
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\ = (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X67_Y39_N10
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\timer_counter_instans|hours_intern\(4))) # (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timer_counter_instans|hours_intern\(4),
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X67_Y38_N2
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X67_Y38_N4
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \timer_counter_instans|hours_intern\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timer_counter_instans|hours_intern\(3),
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X67_Y38_N20
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \timer_counter_instans|hours_intern\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timer_counter_instans|hours_intern\(2),
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X67_Y38_N22
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \timer_counter_instans|hours_intern\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timer_counter_instans|hours_intern\(2),
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X66_Y38_N0
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\) # 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\) # 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X66_Y38_N2
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\) # (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ & !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X66_Y38_N4
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\)))) # 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\)))))
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X67_Y39_N28
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[28]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\) # ((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X67_Y38_N0
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[28]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ = (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X66_Y38_N6
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ & 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ & !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X66_Y38_N8
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X66_Y38_N10
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[33]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X67_Y38_N18
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[33]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\) # ((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X66_Y38_N12
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[32]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X67_Y38_N8
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\timer_counter_instans|hours_intern\(3))) # (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \timer_counter_instans|hours_intern\(3),
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X66_Y38_N30
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[31]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ = (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X66_Y38_N24
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[31]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \timer_counter_instans|hours_intern\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timer_counter_instans|hours_intern\(2),
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X66_Y38_N26
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[30]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\ = (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \timer_counter_instans|hours_intern\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timer_counter_instans|hours_intern\(1),
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X66_Y38_N28
\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[30]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \timer_counter_instans|hours_intern\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timer_counter_instans|hours_intern\(1),
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X66_Y38_N14
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\) # 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X66_Y38_N16
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ & !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X66_Y38_N18
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\) # (\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X66_Y38_N20
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ & !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X66_Y38_N22
\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X67_Y38_N24
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux6~0_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y38_N14
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux5~0_combout\ = (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y38_N12
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux4~0_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y38_N30
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux3~0_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y38_N16
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux2~0_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y38_N10
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux1~0_combout\ = (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y38_N28
\status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux0~0_combout\ = ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # 
-- (!\bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bcd_splitter_instans|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \status_display_system_instans|b2v_inst_SJU_SEG_DISPLAYER_5|Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


