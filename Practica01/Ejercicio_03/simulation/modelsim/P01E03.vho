-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "02/19/2024 09:49:51"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	conta3display IS
    PORT (
	clk : IN std_logic;
	ssg0 : BUFFER std_logic_vector(6 DOWNTO 0);
	ssg1 : BUFFER std_logic_vector(6 DOWNTO 0);
	ssg2 : BUFFER std_logic_vector(6 DOWNTO 0);
	banderaSal : BUFFER std_logic
	);
END conta3display;

-- Design Ports Information
-- ssg0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssg2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- banderaSal	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF conta3display IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ssg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_banderaSal : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u7|u4|u1|clkl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u7|u4|u2|bandera~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u7|u5|bandera~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ssg0[0]~output_o\ : std_logic;
SIGNAL \ssg0[1]~output_o\ : std_logic;
SIGNAL \ssg0[2]~output_o\ : std_logic;
SIGNAL \ssg0[3]~output_o\ : std_logic;
SIGNAL \ssg0[4]~output_o\ : std_logic;
SIGNAL \ssg0[5]~output_o\ : std_logic;
SIGNAL \ssg0[6]~output_o\ : std_logic;
SIGNAL \ssg1[0]~output_o\ : std_logic;
SIGNAL \ssg1[1]~output_o\ : std_logic;
SIGNAL \ssg1[2]~output_o\ : std_logic;
SIGNAL \ssg1[3]~output_o\ : std_logic;
SIGNAL \ssg1[4]~output_o\ : std_logic;
SIGNAL \ssg1[5]~output_o\ : std_logic;
SIGNAL \ssg1[6]~output_o\ : std_logic;
SIGNAL \ssg2[0]~output_o\ : std_logic;
SIGNAL \ssg2[1]~output_o\ : std_logic;
SIGNAL \ssg2[2]~output_o\ : std_logic;
SIGNAL \ssg2[3]~output_o\ : std_logic;
SIGNAL \ssg2[4]~output_o\ : std_logic;
SIGNAL \ssg2[5]~output_o\ : std_logic;
SIGNAL \ssg2[6]~output_o\ : std_logic;
SIGNAL \banderaSal~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u7|u4|u1|Add0~0_combout\ : std_logic;
SIGNAL \u7|u4|u1|contador~3_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~1\ : std_logic;
SIGNAL \u7|u4|u1|Add0~2_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~3\ : std_logic;
SIGNAL \u7|u4|u1|Add0~4_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~5\ : std_logic;
SIGNAL \u7|u4|u1|Add0~6_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~7\ : std_logic;
SIGNAL \u7|u4|u1|Add0~8_combout\ : std_logic;
SIGNAL \u7|u4|u1|contador~1_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~9\ : std_logic;
SIGNAL \u7|u4|u1|Add0~10_combout\ : std_logic;
SIGNAL \u7|u4|u1|contador~0_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~11\ : std_logic;
SIGNAL \u7|u4|u1|Add0~12_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~13\ : std_logic;
SIGNAL \u7|u4|u1|Add0~14_combout\ : std_logic;
SIGNAL \u7|u4|u1|contador~2_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~15\ : std_logic;
SIGNAL \u7|u4|u1|Add0~16_combout\ : std_logic;
SIGNAL \u7|u4|u1|contador~4_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~17\ : std_logic;
SIGNAL \u7|u4|u1|Add0~18_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~19\ : std_logic;
SIGNAL \u7|u4|u1|Add0~20_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~21\ : std_logic;
SIGNAL \u7|u4|u1|Add0~22_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~23\ : std_logic;
SIGNAL \u7|u4|u1|Add0~24_combout\ : std_logic;
SIGNAL \u7|u4|u1|contador~5_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~25\ : std_logic;
SIGNAL \u7|u4|u1|Add0~26_combout\ : std_logic;
SIGNAL \u7|u4|u1|contador~6_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~27\ : std_logic;
SIGNAL \u7|u4|u1|Add0~28_combout\ : std_logic;
SIGNAL \u7|u4|u1|contador~7_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~29\ : std_logic;
SIGNAL \u7|u4|u1|Add0~30_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~31\ : std_logic;
SIGNAL \u7|u4|u1|Add0~32_combout\ : std_logic;
SIGNAL \u7|u4|u1|contador~8_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~33\ : std_logic;
SIGNAL \u7|u4|u1|Add0~34_combout\ : std_logic;
SIGNAL \u7|u4|u1|contador~9_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~35\ : std_logic;
SIGNAL \u7|u4|u1|Add0~36_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~37\ : std_logic;
SIGNAL \u7|u4|u1|Add0~38_combout\ : std_logic;
SIGNAL \u7|u4|u1|contador~10_combout\ : std_logic;
SIGNAL \u7|u4|u1|Equal0~5_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~39\ : std_logic;
SIGNAL \u7|u4|u1|Add0~40_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~41\ : std_logic;
SIGNAL \u7|u4|u1|Add0~42_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~43\ : std_logic;
SIGNAL \u7|u4|u1|Add0~44_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~45\ : std_logic;
SIGNAL \u7|u4|u1|Add0~46_combout\ : std_logic;
SIGNAL \u7|u4|u1|Add0~47\ : std_logic;
SIGNAL \u7|u4|u1|Add0~48_combout\ : std_logic;
SIGNAL \u7|u4|u1|Equal0~6_combout\ : std_logic;
SIGNAL \u7|u4|u1|Equal0~3_combout\ : std_logic;
SIGNAL \u7|u4|u1|Equal0~2_combout\ : std_logic;
SIGNAL \u7|u4|u1|Equal0~0_combout\ : std_logic;
SIGNAL \u7|u4|u1|Equal0~1_combout\ : std_logic;
SIGNAL \u7|u4|u1|Equal0~4_combout\ : std_logic;
SIGNAL \u7|u4|u1|Equal0~7_combout\ : std_logic;
SIGNAL \u7|u4|u1|clkl~0_combout\ : std_logic;
SIGNAL \u7|u4|u1|clkl~feeder_combout\ : std_logic;
SIGNAL \u7|u4|u1|clkl~q\ : std_logic;
SIGNAL \u7|u4|u1|clkl~clkctrl_outclk\ : std_logic;
SIGNAL \u7|u4|u2|Add0~0_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~1\ : std_logic;
SIGNAL \u7|u4|u2|Add0~2_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~7\ : std_logic;
SIGNAL \u7|u4|u2|Add0~8_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~9\ : std_logic;
SIGNAL \u7|u4|u2|Add0~10_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~11\ : std_logic;
SIGNAL \u7|u4|u2|Add0~12_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~13\ : std_logic;
SIGNAL \u7|u4|u2|Add0~14_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~15\ : std_logic;
SIGNAL \u7|u4|u2|Add0~16_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~17\ : std_logic;
SIGNAL \u7|u4|u2|Add0~18_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~19\ : std_logic;
SIGNAL \u7|u4|u2|Add0~20_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~21\ : std_logic;
SIGNAL \u7|u4|u2|Add0~22_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~23\ : std_logic;
SIGNAL \u7|u4|u2|Add0~24_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~25\ : std_logic;
SIGNAL \u7|u4|u2|Add0~26_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~27\ : std_logic;
SIGNAL \u7|u4|u2|Add0~28_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~29\ : std_logic;
SIGNAL \u7|u4|u2|Add0~30_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~31\ : std_logic;
SIGNAL \u7|u4|u2|Add0~32_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~33\ : std_logic;
SIGNAL \u7|u4|u2|Add0~34_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~35\ : std_logic;
SIGNAL \u7|u4|u2|Add0~36_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~37\ : std_logic;
SIGNAL \u7|u4|u2|Add0~38_combout\ : std_logic;
SIGNAL \u7|u4|u2|Equal0~5_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~39\ : std_logic;
SIGNAL \u7|u4|u2|Add0~40_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~41\ : std_logic;
SIGNAL \u7|u4|u2|Add0~42_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~43\ : std_logic;
SIGNAL \u7|u4|u2|Add0~44_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~45\ : std_logic;
SIGNAL \u7|u4|u2|Add0~46_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~47\ : std_logic;
SIGNAL \u7|u4|u2|Add0~48_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~49\ : std_logic;
SIGNAL \u7|u4|u2|Add0~50_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~51\ : std_logic;
SIGNAL \u7|u4|u2|Add0~52_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~53\ : std_logic;
SIGNAL \u7|u4|u2|Add0~54_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~55\ : std_logic;
SIGNAL \u7|u4|u2|Add0~56_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~57\ : std_logic;
SIGNAL \u7|u4|u2|Add0~58_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~59\ : std_logic;
SIGNAL \u7|u4|u2|Add0~60_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~61\ : std_logic;
SIGNAL \u7|u4|u2|Add0~62_combout\ : std_logic;
SIGNAL \u7|u4|u2|Equal0~7_combout\ : std_logic;
SIGNAL \u7|u4|u2|Equal0~8_combout\ : std_logic;
SIGNAL \u7|u4|u2|Equal0~9_combout\ : std_logic;
SIGNAL \u7|u4|u2|Equal0~3_combout\ : std_logic;
SIGNAL \u7|u4|u2|Equal0~0_combout\ : std_logic;
SIGNAL \u7|u4|u2|Equal0~2_combout\ : std_logic;
SIGNAL \u7|u4|u2|Equal0~1_combout\ : std_logic;
SIGNAL \u7|u4|u2|Equal0~4_combout\ : std_logic;
SIGNAL \u7|u4|u2|Equal0~6_combout\ : std_logic;
SIGNAL \u7|u4|u2|Equal0~10_combout\ : std_logic;
SIGNAL \u7|u4|u2|conteo~1_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~3\ : std_logic;
SIGNAL \u7|u4|u2|Add0~4_combout\ : std_logic;
SIGNAL \u7|u4|u2|Add0~5\ : std_logic;
SIGNAL \u7|u4|u2|Add0~6_combout\ : std_logic;
SIGNAL \u7|u4|u2|conteo~0_combout\ : std_logic;
SIGNAL \u7|u4|u3|WideOr5~combout\ : std_logic;
SIGNAL \u7|u4|u3|WideOr4~2_combout\ : std_logic;
SIGNAL \u7|u4|u3|WideOr3~combout\ : std_logic;
SIGNAL \u7|u4|u3|WideOr2~0_combout\ : std_logic;
SIGNAL \u7|u4|u3|WideOr1~combout\ : std_logic;
SIGNAL \u7|u4|u3|WideOr0~combout\ : std_logic;
SIGNAL \u7|u4|u2|bandera~feeder_combout\ : std_logic;
SIGNAL \u7|u4|u2|bandera~q\ : std_logic;
SIGNAL \u7|u4|u2|bandera~clkctrl_outclk\ : std_logic;
SIGNAL \u7|u5|Add0~0_combout\ : std_logic;
SIGNAL \u7|u5|Add0~1\ : std_logic;
SIGNAL \u7|u5|Add0~2_combout\ : std_logic;
SIGNAL \u7|u5|Add0~3\ : std_logic;
SIGNAL \u7|u5|Add0~4_combout\ : std_logic;
SIGNAL \u7|u5|Add0~5\ : std_logic;
SIGNAL \u7|u5|Add0~6_combout\ : std_logic;
SIGNAL \u7|u5|conteo~0_combout\ : std_logic;
SIGNAL \u7|u5|Add0~7\ : std_logic;
SIGNAL \u7|u5|Add0~8_combout\ : std_logic;
SIGNAL \u7|u5|Add0~9\ : std_logic;
SIGNAL \u7|u5|Add0~10_combout\ : std_logic;
SIGNAL \u7|u5|Add0~11\ : std_logic;
SIGNAL \u7|u5|Add0~12_combout\ : std_logic;
SIGNAL \u7|u5|Add0~13\ : std_logic;
SIGNAL \u7|u5|Add0~14_combout\ : std_logic;
SIGNAL \u7|u5|Add0~15\ : std_logic;
SIGNAL \u7|u5|Add0~16_combout\ : std_logic;
SIGNAL \u7|u5|Add0~17\ : std_logic;
SIGNAL \u7|u5|Add0~18_combout\ : std_logic;
SIGNAL \u7|u5|Add0~19\ : std_logic;
SIGNAL \u7|u5|Add0~20_combout\ : std_logic;
SIGNAL \u7|u5|Add0~21\ : std_logic;
SIGNAL \u7|u5|Add0~22_combout\ : std_logic;
SIGNAL \u7|u5|Add0~23\ : std_logic;
SIGNAL \u7|u5|Add0~24_combout\ : std_logic;
SIGNAL \u7|u5|Add0~25\ : std_logic;
SIGNAL \u7|u5|Add0~26_combout\ : std_logic;
SIGNAL \u7|u5|Add0~27\ : std_logic;
SIGNAL \u7|u5|Add0~28_combout\ : std_logic;
SIGNAL \u7|u5|Add0~29\ : std_logic;
SIGNAL \u7|u5|Add0~30_combout\ : std_logic;
SIGNAL \u7|u5|Add0~31\ : std_logic;
SIGNAL \u7|u5|Add0~32_combout\ : std_logic;
SIGNAL \u7|u5|Add0~33\ : std_logic;
SIGNAL \u7|u5|Add0~34_combout\ : std_logic;
SIGNAL \u7|u5|Add0~35\ : std_logic;
SIGNAL \u7|u5|Add0~36_combout\ : std_logic;
SIGNAL \u7|u5|Add0~37\ : std_logic;
SIGNAL \u7|u5|Add0~38_combout\ : std_logic;
SIGNAL \u7|u5|Equal0~5_combout\ : std_logic;
SIGNAL \u7|u5|Add0~39\ : std_logic;
SIGNAL \u7|u5|Add0~40_combout\ : std_logic;
SIGNAL \u7|u5|Add0~41\ : std_logic;
SIGNAL \u7|u5|Add0~42_combout\ : std_logic;
SIGNAL \u7|u5|Add0~43\ : std_logic;
SIGNAL \u7|u5|Add0~44_combout\ : std_logic;
SIGNAL \u7|u5|Add0~45\ : std_logic;
SIGNAL \u7|u5|Add0~46_combout\ : std_logic;
SIGNAL \u7|u5|Add0~47\ : std_logic;
SIGNAL \u7|u5|Add0~48_combout\ : std_logic;
SIGNAL \u7|u5|Add0~49\ : std_logic;
SIGNAL \u7|u5|Add0~50_combout\ : std_logic;
SIGNAL \u7|u5|Add0~51\ : std_logic;
SIGNAL \u7|u5|Add0~52_combout\ : std_logic;
SIGNAL \u7|u5|Add0~53\ : std_logic;
SIGNAL \u7|u5|Add0~54_combout\ : std_logic;
SIGNAL \u7|u5|Add0~55\ : std_logic;
SIGNAL \u7|u5|Add0~56_combout\ : std_logic;
SIGNAL \u7|u5|Add0~57\ : std_logic;
SIGNAL \u7|u5|Add0~58_combout\ : std_logic;
SIGNAL \u7|u5|Add0~59\ : std_logic;
SIGNAL \u7|u5|Add0~60_combout\ : std_logic;
SIGNAL \u7|u5|Add0~61\ : std_logic;
SIGNAL \u7|u5|Add0~62_combout\ : std_logic;
SIGNAL \u7|u5|Equal0~8_combout\ : std_logic;
SIGNAL \u7|u5|Equal0~7_combout\ : std_logic;
SIGNAL \u7|u5|Equal0~9_combout\ : std_logic;
SIGNAL \u7|u5|Equal0~6_combout\ : std_logic;
SIGNAL \u7|u5|Equal0~0_combout\ : std_logic;
SIGNAL \u7|u5|Equal0~3_combout\ : std_logic;
SIGNAL \u7|u5|Equal0~2_combout\ : std_logic;
SIGNAL \u7|u5|Equal0~1_combout\ : std_logic;
SIGNAL \u7|u5|Equal0~4_combout\ : std_logic;
SIGNAL \u7|u5|Equal0~10_combout\ : std_logic;
SIGNAL \u7|u5|conteo~1_combout\ : std_logic;
SIGNAL \u7|u6|WideOr5~combout\ : std_logic;
SIGNAL \u7|u6|WideOr4~2_combout\ : std_logic;
SIGNAL \u7|u6|WideOr3~combout\ : std_logic;
SIGNAL \u7|u6|WideOr2~0_combout\ : std_logic;
SIGNAL \u7|u6|WideOr1~combout\ : std_logic;
SIGNAL \u7|u6|WideOr0~combout\ : std_logic;
SIGNAL \u7|u5|bandera~feeder_combout\ : std_logic;
SIGNAL \u7|u5|bandera~q\ : std_logic;
SIGNAL \u7|u5|bandera~clkctrl_outclk\ : std_logic;
SIGNAL \u8|Add0~0_combout\ : std_logic;
SIGNAL \u8|Add0~1\ : std_logic;
SIGNAL \u8|Add0~2_combout\ : std_logic;
SIGNAL \u8|Add0~5\ : std_logic;
SIGNAL \u8|Add0~6_combout\ : std_logic;
SIGNAL \u8|conteo~0_combout\ : std_logic;
SIGNAL \u8|Add0~7\ : std_logic;
SIGNAL \u8|Add0~8_combout\ : std_logic;
SIGNAL \u8|Add0~9\ : std_logic;
SIGNAL \u8|Add0~10_combout\ : std_logic;
SIGNAL \u8|Add0~11\ : std_logic;
SIGNAL \u8|Add0~12_combout\ : std_logic;
SIGNAL \u8|Add0~13\ : std_logic;
SIGNAL \u8|Add0~14_combout\ : std_logic;
SIGNAL \u8|Add0~15\ : std_logic;
SIGNAL \u8|Add0~16_combout\ : std_logic;
SIGNAL \u8|Add0~17\ : std_logic;
SIGNAL \u8|Add0~18_combout\ : std_logic;
SIGNAL \u8|Add0~19\ : std_logic;
SIGNAL \u8|Add0~20_combout\ : std_logic;
SIGNAL \u8|Add0~21\ : std_logic;
SIGNAL \u8|Add0~22_combout\ : std_logic;
SIGNAL \u8|Add0~23\ : std_logic;
SIGNAL \u8|Add0~24_combout\ : std_logic;
SIGNAL \u8|Add0~25\ : std_logic;
SIGNAL \u8|Add0~26_combout\ : std_logic;
SIGNAL \u8|Add0~27\ : std_logic;
SIGNAL \u8|Add0~28_combout\ : std_logic;
SIGNAL \u8|Add0~29\ : std_logic;
SIGNAL \u8|Add0~30_combout\ : std_logic;
SIGNAL \u8|Add0~31\ : std_logic;
SIGNAL \u8|Add0~32_combout\ : std_logic;
SIGNAL \u8|Add0~33\ : std_logic;
SIGNAL \u8|Add0~34_combout\ : std_logic;
SIGNAL \u8|Add0~35\ : std_logic;
SIGNAL \u8|Add0~36_combout\ : std_logic;
SIGNAL \u8|Add0~37\ : std_logic;
SIGNAL \u8|Add0~38_combout\ : std_logic;
SIGNAL \u8|Add0~39\ : std_logic;
SIGNAL \u8|Add0~40_combout\ : std_logic;
SIGNAL \u8|Add0~41\ : std_logic;
SIGNAL \u8|Add0~42_combout\ : std_logic;
SIGNAL \u8|Add0~43\ : std_logic;
SIGNAL \u8|Add0~44_combout\ : std_logic;
SIGNAL \u8|Add0~45\ : std_logic;
SIGNAL \u8|Add0~46_combout\ : std_logic;
SIGNAL \u8|Add0~47\ : std_logic;
SIGNAL \u8|Add0~48_combout\ : std_logic;
SIGNAL \u8|Add0~49\ : std_logic;
SIGNAL \u8|Add0~50_combout\ : std_logic;
SIGNAL \u8|Add0~51\ : std_logic;
SIGNAL \u8|Add0~52_combout\ : std_logic;
SIGNAL \u8|Add0~53\ : std_logic;
SIGNAL \u8|Add0~54_combout\ : std_logic;
SIGNAL \u8|Equal0~8_combout\ : std_logic;
SIGNAL \u8|Equal0~6_combout\ : std_logic;
SIGNAL \u8|Equal0~5_combout\ : std_logic;
SIGNAL \u8|Equal0~7_combout\ : std_logic;
SIGNAL \u8|Add0~55\ : std_logic;
SIGNAL \u8|Add0~56_combout\ : std_logic;
SIGNAL \u8|Add0~57\ : std_logic;
SIGNAL \u8|Add0~58_combout\ : std_logic;
SIGNAL \u8|Add0~59\ : std_logic;
SIGNAL \u8|Add0~60_combout\ : std_logic;
SIGNAL \u8|Add0~61\ : std_logic;
SIGNAL \u8|Add0~62_combout\ : std_logic;
SIGNAL \u8|Equal0~9_combout\ : std_logic;
SIGNAL \u8|Equal0~3_combout\ : std_logic;
SIGNAL \u8|Equal0~2_combout\ : std_logic;
SIGNAL \u8|Equal0~0_combout\ : std_logic;
SIGNAL \u8|Equal0~1_combout\ : std_logic;
SIGNAL \u8|Equal0~4_combout\ : std_logic;
SIGNAL \u8|Equal0~10_combout\ : std_logic;
SIGNAL \u8|conteo~1_combout\ : std_logic;
SIGNAL \u8|Add0~3\ : std_logic;
SIGNAL \u8|Add0~4_combout\ : std_logic;
SIGNAL \u9|WideOr5~combout\ : std_logic;
SIGNAL \u9|WideOr4~2_combout\ : std_logic;
SIGNAL \u9|WideOr3~combout\ : std_logic;
SIGNAL \u9|WideOr2~0_combout\ : std_logic;
SIGNAL \u9|WideOr1~combout\ : std_logic;
SIGNAL \u9|WideOr0~combout\ : std_logic;
SIGNAL \u8|bandera~q\ : std_logic;
SIGNAL \u7|u4|u2|conteo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u7|u5|conteo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u8|conteo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u9|b\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u7|u6|b\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u7|u4|u3|b\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u7|u4|u1|contador\ : std_logic_vector(24 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ssg0 <= ww_ssg0;
ssg1 <= ww_ssg1;
ssg2 <= ww_ssg2;
banderaSal <= ww_banderaSal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\u7|u4|u1|clkl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u7|u4|u1|clkl~q\);

\u7|u4|u2|bandera~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u7|u4|u2|bandera~q\);

\u7|u5|bandera~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u7|u5|bandera~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
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
\ssg0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u4|u3|WideOr5~combout\,
	devoe => ww_devoe,
	o => \ssg0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\ssg0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u4|u3|WideOr4~2_combout\,
	devoe => ww_devoe,
	o => \ssg0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\ssg0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u4|u3|b\(2),
	devoe => ww_devoe,
	o => \ssg0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\ssg0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u4|u3|WideOr3~combout\,
	devoe => ww_devoe,
	o => \ssg0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\ssg0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u4|u3|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \ssg0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\ssg0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u4|u3|WideOr1~combout\,
	devoe => ww_devoe,
	o => \ssg0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\ssg0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u4|u3|WideOr0~combout\,
	devoe => ww_devoe,
	o => \ssg0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\ssg1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u6|WideOr5~combout\,
	devoe => ww_devoe,
	o => \ssg1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\ssg1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u6|WideOr4~2_combout\,
	devoe => ww_devoe,
	o => \ssg1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\ssg1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u6|b\(2),
	devoe => ww_devoe,
	o => \ssg1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\ssg1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u6|WideOr3~combout\,
	devoe => ww_devoe,
	o => \ssg1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\ssg1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u6|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \ssg1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\ssg1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u6|WideOr1~combout\,
	devoe => ww_devoe,
	o => \ssg1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\ssg1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|u6|WideOr0~combout\,
	devoe => ww_devoe,
	o => \ssg1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\ssg2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|WideOr5~combout\,
	devoe => ww_devoe,
	o => \ssg2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\ssg2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|WideOr4~2_combout\,
	devoe => ww_devoe,
	o => \ssg2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\ssg2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|b\(2),
	devoe => ww_devoe,
	o => \ssg2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\ssg2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|WideOr3~combout\,
	devoe => ww_devoe,
	o => \ssg2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\ssg2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \ssg2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\ssg2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|WideOr1~combout\,
	devoe => ww_devoe,
	o => \ssg2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\ssg2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|WideOr0~combout\,
	devoe => ww_devoe,
	o => \ssg2[6]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\banderaSal~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u8|bandera~q\,
	devoe => ww_devoe,
	o => \banderaSal~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X66_Y46_N8
\u7|u4|u1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~0_combout\ = \u7|u4|u1|contador\(0) $ (VCC)
-- \u7|u4|u1|Add0~1\ = CARRY(\u7|u4|u1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|contador\(0),
	datad => VCC,
	combout => \u7|u4|u1|Add0~0_combout\,
	cout => \u7|u4|u1|Add0~1\);

-- Location: LCCOMB_X66_Y46_N2
\u7|u4|u1|contador~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|contador~3_combout\ = (\u7|u4|u1|Add0~0_combout\ & !\u7|u4|u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|u4|u1|Add0~0_combout\,
	datad => \u7|u4|u1|Equal0~7_combout\,
	combout => \u7|u4|u1|contador~3_combout\);

-- Location: FF_X66_Y46_N3
\u7|u4|u1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(0));

-- Location: LCCOMB_X66_Y46_N10
\u7|u4|u1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~2_combout\ = (\u7|u4|u1|contador\(1) & (!\u7|u4|u1|Add0~1\)) # (!\u7|u4|u1|contador\(1) & ((\u7|u4|u1|Add0~1\) # (GND)))
-- \u7|u4|u1|Add0~3\ = CARRY((!\u7|u4|u1|Add0~1\) # (!\u7|u4|u1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(1),
	datad => VCC,
	cin => \u7|u4|u1|Add0~1\,
	combout => \u7|u4|u1|Add0~2_combout\,
	cout => \u7|u4|u1|Add0~3\);

-- Location: FF_X66_Y46_N11
\u7|u4|u1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(1));

-- Location: LCCOMB_X66_Y46_N12
\u7|u4|u1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~4_combout\ = (\u7|u4|u1|contador\(2) & (\u7|u4|u1|Add0~3\ $ (GND))) # (!\u7|u4|u1|contador\(2) & (!\u7|u4|u1|Add0~3\ & VCC))
-- \u7|u4|u1|Add0~5\ = CARRY((\u7|u4|u1|contador\(2) & !\u7|u4|u1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(2),
	datad => VCC,
	cin => \u7|u4|u1|Add0~3\,
	combout => \u7|u4|u1|Add0~4_combout\,
	cout => \u7|u4|u1|Add0~5\);

-- Location: FF_X66_Y46_N13
\u7|u4|u1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(2));

-- Location: LCCOMB_X66_Y46_N14
\u7|u4|u1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~6_combout\ = (\u7|u4|u1|contador\(3) & (!\u7|u4|u1|Add0~5\)) # (!\u7|u4|u1|contador\(3) & ((\u7|u4|u1|Add0~5\) # (GND)))
-- \u7|u4|u1|Add0~7\ = CARRY((!\u7|u4|u1|Add0~5\) # (!\u7|u4|u1|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|contador\(3),
	datad => VCC,
	cin => \u7|u4|u1|Add0~5\,
	combout => \u7|u4|u1|Add0~6_combout\,
	cout => \u7|u4|u1|Add0~7\);

-- Location: FF_X66_Y46_N15
\u7|u4|u1|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(3));

-- Location: LCCOMB_X66_Y46_N16
\u7|u4|u1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~8_combout\ = (\u7|u4|u1|contador\(4) & (\u7|u4|u1|Add0~7\ $ (GND))) # (!\u7|u4|u1|contador\(4) & (!\u7|u4|u1|Add0~7\ & VCC))
-- \u7|u4|u1|Add0~9\ = CARRY((\u7|u4|u1|contador\(4) & !\u7|u4|u1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(4),
	datad => VCC,
	cin => \u7|u4|u1|Add0~7\,
	combout => \u7|u4|u1|Add0~8_combout\,
	cout => \u7|u4|u1|Add0~9\);

-- Location: LCCOMB_X66_Y46_N6
\u7|u4|u1|contador~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|contador~1_combout\ = (\u7|u4|u1|Add0~8_combout\ & !\u7|u4|u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|Add0~8_combout\,
	datac => \u7|u4|u1|Equal0~7_combout\,
	combout => \u7|u4|u1|contador~1_combout\);

-- Location: FF_X66_Y46_N7
\u7|u4|u1|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(4));

-- Location: LCCOMB_X66_Y46_N18
\u7|u4|u1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~10_combout\ = (\u7|u4|u1|contador\(5) & (!\u7|u4|u1|Add0~9\)) # (!\u7|u4|u1|contador\(5) & ((\u7|u4|u1|Add0~9\) # (GND)))
-- \u7|u4|u1|Add0~11\ = CARRY((!\u7|u4|u1|Add0~9\) # (!\u7|u4|u1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|contador\(5),
	datad => VCC,
	cin => \u7|u4|u1|Add0~9\,
	combout => \u7|u4|u1|Add0~10_combout\,
	cout => \u7|u4|u1|Add0~11\);

-- Location: LCCOMB_X66_Y46_N4
\u7|u4|u1|contador~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|contador~0_combout\ = (\u7|u4|u1|Add0~10_combout\ & !\u7|u4|u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|Add0~10_combout\,
	datac => \u7|u4|u1|Equal0~7_combout\,
	combout => \u7|u4|u1|contador~0_combout\);

-- Location: FF_X66_Y46_N5
\u7|u4|u1|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(5));

-- Location: LCCOMB_X66_Y46_N20
\u7|u4|u1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~12_combout\ = (\u7|u4|u1|contador\(6) & (\u7|u4|u1|Add0~11\ $ (GND))) # (!\u7|u4|u1|contador\(6) & (!\u7|u4|u1|Add0~11\ & VCC))
-- \u7|u4|u1|Add0~13\ = CARRY((\u7|u4|u1|contador\(6) & !\u7|u4|u1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|contador\(6),
	datad => VCC,
	cin => \u7|u4|u1|Add0~11\,
	combout => \u7|u4|u1|Add0~12_combout\,
	cout => \u7|u4|u1|Add0~13\);

-- Location: FF_X66_Y46_N21
\u7|u4|u1|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(6));

-- Location: LCCOMB_X66_Y46_N22
\u7|u4|u1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~14_combout\ = (\u7|u4|u1|contador\(7) & (!\u7|u4|u1|Add0~13\)) # (!\u7|u4|u1|contador\(7) & ((\u7|u4|u1|Add0~13\) # (GND)))
-- \u7|u4|u1|Add0~15\ = CARRY((!\u7|u4|u1|Add0~13\) # (!\u7|u4|u1|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|contador\(7),
	datad => VCC,
	cin => \u7|u4|u1|Add0~13\,
	combout => \u7|u4|u1|Add0~14_combout\,
	cout => \u7|u4|u1|Add0~15\);

-- Location: LCCOMB_X66_Y46_N0
\u7|u4|u1|contador~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|contador~2_combout\ = (\u7|u4|u1|Add0~14_combout\ & !\u7|u4|u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|u4|u1|Add0~14_combout\,
	datad => \u7|u4|u1|Equal0~7_combout\,
	combout => \u7|u4|u1|contador~2_combout\);

-- Location: FF_X66_Y46_N1
\u7|u4|u1|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(7));

-- Location: LCCOMB_X66_Y46_N24
\u7|u4|u1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~16_combout\ = (\u7|u4|u1|contador\(8) & (\u7|u4|u1|Add0~15\ $ (GND))) # (!\u7|u4|u1|contador\(8) & (!\u7|u4|u1|Add0~15\ & VCC))
-- \u7|u4|u1|Add0~17\ = CARRY((\u7|u4|u1|contador\(8) & !\u7|u4|u1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|contador\(8),
	datad => VCC,
	cin => \u7|u4|u1|Add0~15\,
	combout => \u7|u4|u1|Add0~16_combout\,
	cout => \u7|u4|u1|Add0~17\);

-- Location: LCCOMB_X67_Y45_N16
\u7|u4|u1|contador~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|contador~4_combout\ = (!\u7|u4|u1|Equal0~7_combout\ & \u7|u4|u1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|u4|u1|Equal0~7_combout\,
	datad => \u7|u4|u1|Add0~16_combout\,
	combout => \u7|u4|u1|contador~4_combout\);

-- Location: FF_X67_Y45_N17
\u7|u4|u1|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(8));

-- Location: LCCOMB_X66_Y46_N26
\u7|u4|u1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~18_combout\ = (\u7|u4|u1|contador\(9) & (!\u7|u4|u1|Add0~17\)) # (!\u7|u4|u1|contador\(9) & ((\u7|u4|u1|Add0~17\) # (GND)))
-- \u7|u4|u1|Add0~19\ = CARRY((!\u7|u4|u1|Add0~17\) # (!\u7|u4|u1|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(9),
	datad => VCC,
	cin => \u7|u4|u1|Add0~17\,
	combout => \u7|u4|u1|Add0~18_combout\,
	cout => \u7|u4|u1|Add0~19\);

-- Location: FF_X66_Y46_N27
\u7|u4|u1|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(9));

-- Location: LCCOMB_X66_Y46_N28
\u7|u4|u1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~20_combout\ = (\u7|u4|u1|contador\(10) & (\u7|u4|u1|Add0~19\ $ (GND))) # (!\u7|u4|u1|contador\(10) & (!\u7|u4|u1|Add0~19\ & VCC))
-- \u7|u4|u1|Add0~21\ = CARRY((\u7|u4|u1|contador\(10) & !\u7|u4|u1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|contador\(10),
	datad => VCC,
	cin => \u7|u4|u1|Add0~19\,
	combout => \u7|u4|u1|Add0~20_combout\,
	cout => \u7|u4|u1|Add0~21\);

-- Location: FF_X66_Y46_N29
\u7|u4|u1|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(10));

-- Location: LCCOMB_X66_Y46_N30
\u7|u4|u1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~22_combout\ = (\u7|u4|u1|contador\(11) & (!\u7|u4|u1|Add0~21\)) # (!\u7|u4|u1|contador\(11) & ((\u7|u4|u1|Add0~21\) # (GND)))
-- \u7|u4|u1|Add0~23\ = CARRY((!\u7|u4|u1|Add0~21\) # (!\u7|u4|u1|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(11),
	datad => VCC,
	cin => \u7|u4|u1|Add0~21\,
	combout => \u7|u4|u1|Add0~22_combout\,
	cout => \u7|u4|u1|Add0~23\);

-- Location: FF_X66_Y46_N31
\u7|u4|u1|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(11));

-- Location: LCCOMB_X66_Y45_N0
\u7|u4|u1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~24_combout\ = (\u7|u4|u1|contador\(12) & (\u7|u4|u1|Add0~23\ $ (GND))) # (!\u7|u4|u1|contador\(12) & (!\u7|u4|u1|Add0~23\ & VCC))
-- \u7|u4|u1|Add0~25\ = CARRY((\u7|u4|u1|contador\(12) & !\u7|u4|u1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|contador\(12),
	datad => VCC,
	cin => \u7|u4|u1|Add0~23\,
	combout => \u7|u4|u1|Add0~24_combout\,
	cout => \u7|u4|u1|Add0~25\);

-- Location: LCCOMB_X67_Y45_N14
\u7|u4|u1|contador~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|contador~5_combout\ = (!\u7|u4|u1|Equal0~7_combout\ & \u7|u4|u1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|Equal0~7_combout\,
	datac => \u7|u4|u1|Add0~24_combout\,
	combout => \u7|u4|u1|contador~5_combout\);

-- Location: FF_X67_Y45_N15
\u7|u4|u1|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(12));

-- Location: LCCOMB_X66_Y45_N2
\u7|u4|u1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~26_combout\ = (\u7|u4|u1|contador\(13) & (!\u7|u4|u1|Add0~25\)) # (!\u7|u4|u1|contador\(13) & ((\u7|u4|u1|Add0~25\) # (GND)))
-- \u7|u4|u1|Add0~27\ = CARRY((!\u7|u4|u1|Add0~25\) # (!\u7|u4|u1|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(13),
	datad => VCC,
	cin => \u7|u4|u1|Add0~25\,
	combout => \u7|u4|u1|Add0~26_combout\,
	cout => \u7|u4|u1|Add0~27\);

-- Location: LCCOMB_X67_Y45_N20
\u7|u4|u1|contador~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|contador~6_combout\ = (!\u7|u4|u1|Equal0~7_combout\ & \u7|u4|u1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|u4|u1|Equal0~7_combout\,
	datad => \u7|u4|u1|Add0~26_combout\,
	combout => \u7|u4|u1|contador~6_combout\);

-- Location: FF_X67_Y45_N21
\u7|u4|u1|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(13));

-- Location: LCCOMB_X66_Y45_N4
\u7|u4|u1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~28_combout\ = (\u7|u4|u1|contador\(14) & (\u7|u4|u1|Add0~27\ $ (GND))) # (!\u7|u4|u1|contador\(14) & (!\u7|u4|u1|Add0~27\ & VCC))
-- \u7|u4|u1|Add0~29\ = CARRY((\u7|u4|u1|contador\(14) & !\u7|u4|u1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|contador\(14),
	datad => VCC,
	cin => \u7|u4|u1|Add0~27\,
	combout => \u7|u4|u1|Add0~28_combout\,
	cout => \u7|u4|u1|Add0~29\);

-- Location: LCCOMB_X67_Y45_N8
\u7|u4|u1|contador~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|contador~7_combout\ = (!\u7|u4|u1|Equal0~7_combout\ & \u7|u4|u1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|Equal0~7_combout\,
	datac => \u7|u4|u1|Add0~28_combout\,
	combout => \u7|u4|u1|contador~7_combout\);

-- Location: FF_X67_Y45_N9
\u7|u4|u1|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(14));

-- Location: LCCOMB_X66_Y45_N6
\u7|u4|u1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~30_combout\ = (\u7|u4|u1|contador\(15) & (!\u7|u4|u1|Add0~29\)) # (!\u7|u4|u1|contador\(15) & ((\u7|u4|u1|Add0~29\) # (GND)))
-- \u7|u4|u1|Add0~31\ = CARRY((!\u7|u4|u1|Add0~29\) # (!\u7|u4|u1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(15),
	datad => VCC,
	cin => \u7|u4|u1|Add0~29\,
	combout => \u7|u4|u1|Add0~30_combout\,
	cout => \u7|u4|u1|Add0~31\);

-- Location: FF_X66_Y45_N7
\u7|u4|u1|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(15));

-- Location: LCCOMB_X66_Y45_N8
\u7|u4|u1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~32_combout\ = (\u7|u4|u1|contador\(16) & (\u7|u4|u1|Add0~31\ $ (GND))) # (!\u7|u4|u1|contador\(16) & (!\u7|u4|u1|Add0~31\ & VCC))
-- \u7|u4|u1|Add0~33\ = CARRY((\u7|u4|u1|contador\(16) & !\u7|u4|u1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(16),
	datad => VCC,
	cin => \u7|u4|u1|Add0~31\,
	combout => \u7|u4|u1|Add0~32_combout\,
	cout => \u7|u4|u1|Add0~33\);

-- Location: LCCOMB_X66_Y45_N30
\u7|u4|u1|contador~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|contador~8_combout\ = (!\u7|u4|u1|Equal0~7_combout\ & \u7|u4|u1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|Equal0~7_combout\,
	datac => \u7|u4|u1|Add0~32_combout\,
	combout => \u7|u4|u1|contador~8_combout\);

-- Location: FF_X66_Y45_N31
\u7|u4|u1|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(16));

-- Location: LCCOMB_X66_Y45_N10
\u7|u4|u1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~34_combout\ = (\u7|u4|u1|contador\(17) & (!\u7|u4|u1|Add0~33\)) # (!\u7|u4|u1|contador\(17) & ((\u7|u4|u1|Add0~33\) # (GND)))
-- \u7|u4|u1|Add0~35\ = CARRY((!\u7|u4|u1|Add0~33\) # (!\u7|u4|u1|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|contador\(17),
	datad => VCC,
	cin => \u7|u4|u1|Add0~33\,
	combout => \u7|u4|u1|Add0~34_combout\,
	cout => \u7|u4|u1|Add0~35\);

-- Location: LCCOMB_X66_Y45_N28
\u7|u4|u1|contador~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|contador~9_combout\ = (!\u7|u4|u1|Equal0~7_combout\ & \u7|u4|u1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|u4|u1|Equal0~7_combout\,
	datad => \u7|u4|u1|Add0~34_combout\,
	combout => \u7|u4|u1|contador~9_combout\);

-- Location: FF_X66_Y45_N29
\u7|u4|u1|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|contador~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(17));

-- Location: LCCOMB_X66_Y45_N12
\u7|u4|u1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~36_combout\ = (\u7|u4|u1|contador\(18) & (\u7|u4|u1|Add0~35\ $ (GND))) # (!\u7|u4|u1|contador\(18) & (!\u7|u4|u1|Add0~35\ & VCC))
-- \u7|u4|u1|Add0~37\ = CARRY((\u7|u4|u1|contador\(18) & !\u7|u4|u1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(18),
	datad => VCC,
	cin => \u7|u4|u1|Add0~35\,
	combout => \u7|u4|u1|Add0~36_combout\,
	cout => \u7|u4|u1|Add0~37\);

-- Location: FF_X66_Y45_N13
\u7|u4|u1|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(18));

-- Location: LCCOMB_X66_Y45_N14
\u7|u4|u1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~38_combout\ = (\u7|u4|u1|contador\(19) & (!\u7|u4|u1|Add0~37\)) # (!\u7|u4|u1|contador\(19) & ((\u7|u4|u1|Add0~37\) # (GND)))
-- \u7|u4|u1|Add0~39\ = CARRY((!\u7|u4|u1|Add0~37\) # (!\u7|u4|u1|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(19),
	datad => VCC,
	cin => \u7|u4|u1|Add0~37\,
	combout => \u7|u4|u1|Add0~38_combout\,
	cout => \u7|u4|u1|Add0~39\);

-- Location: LCCOMB_X66_Y45_N26
\u7|u4|u1|contador~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|contador~10_combout\ = (!\u7|u4|u1|Equal0~7_combout\ & \u7|u4|u1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|Equal0~7_combout\,
	datac => \u7|u4|u1|Add0~38_combout\,
	combout => \u7|u4|u1|contador~10_combout\);

-- Location: FF_X66_Y45_N27
\u7|u4|u1|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(19));

-- Location: LCCOMB_X67_Y45_N6
\u7|u4|u1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Equal0~5_combout\ = (!\u7|u4|u1|contador\(18) & (\u7|u4|u1|contador\(16) & (\u7|u4|u1|contador\(17) & \u7|u4|u1|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(18),
	datab => \u7|u4|u1|contador\(16),
	datac => \u7|u4|u1|contador\(17),
	datad => \u7|u4|u1|contador\(19),
	combout => \u7|u4|u1|Equal0~5_combout\);

-- Location: LCCOMB_X66_Y45_N16
\u7|u4|u1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~40_combout\ = (\u7|u4|u1|contador\(20) & (\u7|u4|u1|Add0~39\ $ (GND))) # (!\u7|u4|u1|contador\(20) & (!\u7|u4|u1|Add0~39\ & VCC))
-- \u7|u4|u1|Add0~41\ = CARRY((\u7|u4|u1|contador\(20) & !\u7|u4|u1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|contador\(20),
	datad => VCC,
	cin => \u7|u4|u1|Add0~39\,
	combout => \u7|u4|u1|Add0~40_combout\,
	cout => \u7|u4|u1|Add0~41\);

-- Location: FF_X66_Y45_N17
\u7|u4|u1|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(20));

-- Location: LCCOMB_X66_Y45_N18
\u7|u4|u1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~42_combout\ = (\u7|u4|u1|contador\(21) & (!\u7|u4|u1|Add0~41\)) # (!\u7|u4|u1|contador\(21) & ((\u7|u4|u1|Add0~41\) # (GND)))
-- \u7|u4|u1|Add0~43\ = CARRY((!\u7|u4|u1|Add0~41\) # (!\u7|u4|u1|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|contador\(21),
	datad => VCC,
	cin => \u7|u4|u1|Add0~41\,
	combout => \u7|u4|u1|Add0~42_combout\,
	cout => \u7|u4|u1|Add0~43\);

-- Location: FF_X66_Y45_N19
\u7|u4|u1|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(21));

-- Location: LCCOMB_X66_Y45_N20
\u7|u4|u1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~44_combout\ = (\u7|u4|u1|contador\(22) & (\u7|u4|u1|Add0~43\ $ (GND))) # (!\u7|u4|u1|contador\(22) & (!\u7|u4|u1|Add0~43\ & VCC))
-- \u7|u4|u1|Add0~45\ = CARRY((\u7|u4|u1|contador\(22) & !\u7|u4|u1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|contador\(22),
	datad => VCC,
	cin => \u7|u4|u1|Add0~43\,
	combout => \u7|u4|u1|Add0~44_combout\,
	cout => \u7|u4|u1|Add0~45\);

-- Location: FF_X66_Y45_N21
\u7|u4|u1|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(22));

-- Location: LCCOMB_X66_Y45_N22
\u7|u4|u1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~46_combout\ = (\u7|u4|u1|contador\(23) & (!\u7|u4|u1|Add0~45\)) # (!\u7|u4|u1|contador\(23) & ((\u7|u4|u1|Add0~45\) # (GND)))
-- \u7|u4|u1|Add0~47\ = CARRY((!\u7|u4|u1|Add0~45\) # (!\u7|u4|u1|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(23),
	datad => VCC,
	cin => \u7|u4|u1|Add0~45\,
	combout => \u7|u4|u1|Add0~46_combout\,
	cout => \u7|u4|u1|Add0~47\);

-- Location: FF_X66_Y45_N23
\u7|u4|u1|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(23));

-- Location: LCCOMB_X66_Y45_N24
\u7|u4|u1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Add0~48_combout\ = \u7|u4|u1|Add0~47\ $ (!\u7|u4|u1|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u7|u4|u1|contador\(24),
	cin => \u7|u4|u1|Add0~47\,
	combout => \u7|u4|u1|Add0~48_combout\);

-- Location: FF_X66_Y45_N25
\u7|u4|u1|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|contador\(24));

-- Location: LCCOMB_X67_Y45_N30
\u7|u4|u1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Equal0~6_combout\ = (!\u7|u4|u1|contador\(20) & (!\u7|u4|u1|contador\(23) & (!\u7|u4|u1|contador\(22) & !\u7|u4|u1|contador\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(20),
	datab => \u7|u4|u1|contador\(23),
	datac => \u7|u4|u1|contador\(22),
	datad => \u7|u4|u1|contador\(21),
	combout => \u7|u4|u1|Equal0~6_combout\);

-- Location: LCCOMB_X67_Y45_N26
\u7|u4|u1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Equal0~3_combout\ = (\u7|u4|u1|contador\(14) & (\u7|u4|u1|contador\(13) & (\u7|u4|u1|contador\(12) & !\u7|u4|u1|contador\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(14),
	datab => \u7|u4|u1|contador\(13),
	datac => \u7|u4|u1|contador\(12),
	datad => \u7|u4|u1|contador\(15),
	combout => \u7|u4|u1|Equal0~3_combout\);

-- Location: LCCOMB_X67_Y45_N24
\u7|u4|u1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Equal0~2_combout\ = (!\u7|u4|u1|contador\(10) & (\u7|u4|u1|contador\(8) & (!\u7|u4|u1|contador\(11) & !\u7|u4|u1|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(10),
	datab => \u7|u4|u1|contador\(8),
	datac => \u7|u4|u1|contador\(11),
	datad => \u7|u4|u1|contador\(9),
	combout => \u7|u4|u1|Equal0~2_combout\);

-- Location: LCCOMB_X67_Y45_N4
\u7|u4|u1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Equal0~0_combout\ = (\u7|u4|u1|contador\(5) & (!\u7|u4|u1|contador\(2) & (\u7|u4|u1|contador\(4) & !\u7|u4|u1|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(5),
	datab => \u7|u4|u1|contador\(2),
	datac => \u7|u4|u1|contador\(4),
	datad => \u7|u4|u1|contador\(3),
	combout => \u7|u4|u1|Equal0~0_combout\);

-- Location: LCCOMB_X67_Y45_N18
\u7|u4|u1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Equal0~1_combout\ = (!\u7|u4|u1|contador\(6) & (!\u7|u4|u1|contador\(1) & (!\u7|u4|u1|contador\(0) & \u7|u4|u1|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|contador\(6),
	datab => \u7|u4|u1|contador\(1),
	datac => \u7|u4|u1|contador\(0),
	datad => \u7|u4|u1|contador\(7),
	combout => \u7|u4|u1|Equal0~1_combout\);

-- Location: LCCOMB_X67_Y45_N10
\u7|u4|u1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Equal0~4_combout\ = (\u7|u4|u1|Equal0~3_combout\ & (\u7|u4|u1|Equal0~2_combout\ & (\u7|u4|u1|Equal0~0_combout\ & \u7|u4|u1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|Equal0~3_combout\,
	datab => \u7|u4|u1|Equal0~2_combout\,
	datac => \u7|u4|u1|Equal0~0_combout\,
	datad => \u7|u4|u1|Equal0~1_combout\,
	combout => \u7|u4|u1|Equal0~4_combout\);

-- Location: LCCOMB_X67_Y45_N12
\u7|u4|u1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|Equal0~7_combout\ = (\u7|u4|u1|Equal0~5_combout\ & (!\u7|u4|u1|contador\(24) & (\u7|u4|u1|Equal0~6_combout\ & \u7|u4|u1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|Equal0~5_combout\,
	datab => \u7|u4|u1|contador\(24),
	datac => \u7|u4|u1|Equal0~6_combout\,
	datad => \u7|u4|u1|Equal0~4_combout\,
	combout => \u7|u4|u1|Equal0~7_combout\);

-- Location: LCCOMB_X67_Y45_N28
\u7|u4|u1|clkl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|clkl~0_combout\ = \u7|u4|u1|clkl~q\ $ (\u7|u4|u1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u1|clkl~q\,
	datad => \u7|u4|u1|Equal0~7_combout\,
	combout => \u7|u4|u1|clkl~0_combout\);

-- Location: LCCOMB_X67_Y45_N22
\u7|u4|u1|clkl~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u1|clkl~feeder_combout\ = \u7|u4|u1|clkl~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u1|clkl~0_combout\,
	combout => \u7|u4|u1|clkl~feeder_combout\);

-- Location: FF_X67_Y45_N23
\u7|u4|u1|clkl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|u4|u1|clkl~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u1|clkl~q\);

-- Location: CLKCTRL_G7
\u7|u4|u1|clkl~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u7|u4|u1|clkl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u7|u4|u1|clkl~clkctrl_outclk\);

-- Location: LCCOMB_X70_Y50_N0
\u7|u4|u2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~0_combout\ = \u7|u4|u2|conteo\(0) $ (VCC)
-- \u7|u4|u2|Add0~1\ = CARRY(\u7|u4|u2|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(0),
	datad => VCC,
	combout => \u7|u4|u2|Add0~0_combout\,
	cout => \u7|u4|u2|Add0~1\);

-- Location: FF_X70_Y50_N1
\u7|u4|u2|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(0));

-- Location: LCCOMB_X70_Y50_N2
\u7|u4|u2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~2_combout\ = (\u7|u4|u2|conteo\(1) & (!\u7|u4|u2|Add0~1\)) # (!\u7|u4|u2|conteo\(1) & ((\u7|u4|u2|Add0~1\) # (GND)))
-- \u7|u4|u2|Add0~3\ = CARRY((!\u7|u4|u2|Add0~1\) # (!\u7|u4|u2|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(1),
	datad => VCC,
	cin => \u7|u4|u2|Add0~1\,
	combout => \u7|u4|u2|Add0~2_combout\,
	cout => \u7|u4|u2|Add0~3\);

-- Location: LCCOMB_X70_Y50_N6
\u7|u4|u2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~6_combout\ = (\u7|u4|u2|conteo\(3) & (!\u7|u4|u2|Add0~5\)) # (!\u7|u4|u2|conteo\(3) & ((\u7|u4|u2|Add0~5\) # (GND)))
-- \u7|u4|u2|Add0~7\ = CARRY((!\u7|u4|u2|Add0~5\) # (!\u7|u4|u2|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(3),
	datad => VCC,
	cin => \u7|u4|u2|Add0~5\,
	combout => \u7|u4|u2|Add0~6_combout\,
	cout => \u7|u4|u2|Add0~7\);

-- Location: LCCOMB_X70_Y50_N8
\u7|u4|u2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~8_combout\ = (\u7|u4|u2|conteo\(4) & (\u7|u4|u2|Add0~7\ $ (GND))) # (!\u7|u4|u2|conteo\(4) & (!\u7|u4|u2|Add0~7\ & VCC))
-- \u7|u4|u2|Add0~9\ = CARRY((\u7|u4|u2|conteo\(4) & !\u7|u4|u2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(4),
	datad => VCC,
	cin => \u7|u4|u2|Add0~7\,
	combout => \u7|u4|u2|Add0~8_combout\,
	cout => \u7|u4|u2|Add0~9\);

-- Location: FF_X70_Y50_N9
\u7|u4|u2|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(4));

-- Location: LCCOMB_X70_Y50_N10
\u7|u4|u2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~10_combout\ = (\u7|u4|u2|conteo\(5) & (!\u7|u4|u2|Add0~9\)) # (!\u7|u4|u2|conteo\(5) & ((\u7|u4|u2|Add0~9\) # (GND)))
-- \u7|u4|u2|Add0~11\ = CARRY((!\u7|u4|u2|Add0~9\) # (!\u7|u4|u2|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(5),
	datad => VCC,
	cin => \u7|u4|u2|Add0~9\,
	combout => \u7|u4|u2|Add0~10_combout\,
	cout => \u7|u4|u2|Add0~11\);

-- Location: FF_X70_Y50_N11
\u7|u4|u2|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(5));

-- Location: LCCOMB_X70_Y50_N12
\u7|u4|u2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~12_combout\ = (\u7|u4|u2|conteo\(6) & (\u7|u4|u2|Add0~11\ $ (GND))) # (!\u7|u4|u2|conteo\(6) & (!\u7|u4|u2|Add0~11\ & VCC))
-- \u7|u4|u2|Add0~13\ = CARRY((\u7|u4|u2|conteo\(6) & !\u7|u4|u2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(6),
	datad => VCC,
	cin => \u7|u4|u2|Add0~11\,
	combout => \u7|u4|u2|Add0~12_combout\,
	cout => \u7|u4|u2|Add0~13\);

-- Location: FF_X70_Y50_N13
\u7|u4|u2|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(6));

-- Location: LCCOMB_X70_Y50_N14
\u7|u4|u2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~14_combout\ = (\u7|u4|u2|conteo\(7) & (!\u7|u4|u2|Add0~13\)) # (!\u7|u4|u2|conteo\(7) & ((\u7|u4|u2|Add0~13\) # (GND)))
-- \u7|u4|u2|Add0~15\ = CARRY((!\u7|u4|u2|Add0~13\) # (!\u7|u4|u2|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(7),
	datad => VCC,
	cin => \u7|u4|u2|Add0~13\,
	combout => \u7|u4|u2|Add0~14_combout\,
	cout => \u7|u4|u2|Add0~15\);

-- Location: FF_X70_Y50_N15
\u7|u4|u2|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(7));

-- Location: LCCOMB_X70_Y50_N16
\u7|u4|u2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~16_combout\ = (\u7|u4|u2|conteo\(8) & (\u7|u4|u2|Add0~15\ $ (GND))) # (!\u7|u4|u2|conteo\(8) & (!\u7|u4|u2|Add0~15\ & VCC))
-- \u7|u4|u2|Add0~17\ = CARRY((\u7|u4|u2|conteo\(8) & !\u7|u4|u2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(8),
	datad => VCC,
	cin => \u7|u4|u2|Add0~15\,
	combout => \u7|u4|u2|Add0~16_combout\,
	cout => \u7|u4|u2|Add0~17\);

-- Location: FF_X70_Y50_N17
\u7|u4|u2|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(8));

-- Location: LCCOMB_X70_Y50_N18
\u7|u4|u2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~18_combout\ = (\u7|u4|u2|conteo\(9) & (!\u7|u4|u2|Add0~17\)) # (!\u7|u4|u2|conteo\(9) & ((\u7|u4|u2|Add0~17\) # (GND)))
-- \u7|u4|u2|Add0~19\ = CARRY((!\u7|u4|u2|Add0~17\) # (!\u7|u4|u2|conteo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(9),
	datad => VCC,
	cin => \u7|u4|u2|Add0~17\,
	combout => \u7|u4|u2|Add0~18_combout\,
	cout => \u7|u4|u2|Add0~19\);

-- Location: FF_X70_Y50_N19
\u7|u4|u2|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(9));

-- Location: LCCOMB_X70_Y50_N20
\u7|u4|u2|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~20_combout\ = (\u7|u4|u2|conteo\(10) & (\u7|u4|u2|Add0~19\ $ (GND))) # (!\u7|u4|u2|conteo\(10) & (!\u7|u4|u2|Add0~19\ & VCC))
-- \u7|u4|u2|Add0~21\ = CARRY((\u7|u4|u2|conteo\(10) & !\u7|u4|u2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(10),
	datad => VCC,
	cin => \u7|u4|u2|Add0~19\,
	combout => \u7|u4|u2|Add0~20_combout\,
	cout => \u7|u4|u2|Add0~21\);

-- Location: FF_X70_Y50_N21
\u7|u4|u2|conteo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(10));

-- Location: LCCOMB_X70_Y50_N22
\u7|u4|u2|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~22_combout\ = (\u7|u4|u2|conteo\(11) & (!\u7|u4|u2|Add0~21\)) # (!\u7|u4|u2|conteo\(11) & ((\u7|u4|u2|Add0~21\) # (GND)))
-- \u7|u4|u2|Add0~23\ = CARRY((!\u7|u4|u2|Add0~21\) # (!\u7|u4|u2|conteo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(11),
	datad => VCC,
	cin => \u7|u4|u2|Add0~21\,
	combout => \u7|u4|u2|Add0~22_combout\,
	cout => \u7|u4|u2|Add0~23\);

-- Location: FF_X70_Y50_N23
\u7|u4|u2|conteo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(11));

-- Location: LCCOMB_X70_Y50_N24
\u7|u4|u2|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~24_combout\ = (\u7|u4|u2|conteo\(12) & (\u7|u4|u2|Add0~23\ $ (GND))) # (!\u7|u4|u2|conteo\(12) & (!\u7|u4|u2|Add0~23\ & VCC))
-- \u7|u4|u2|Add0~25\ = CARRY((\u7|u4|u2|conteo\(12) & !\u7|u4|u2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(12),
	datad => VCC,
	cin => \u7|u4|u2|Add0~23\,
	combout => \u7|u4|u2|Add0~24_combout\,
	cout => \u7|u4|u2|Add0~25\);

-- Location: FF_X70_Y50_N25
\u7|u4|u2|conteo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(12));

-- Location: LCCOMB_X70_Y50_N26
\u7|u4|u2|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~26_combout\ = (\u7|u4|u2|conteo\(13) & (!\u7|u4|u2|Add0~25\)) # (!\u7|u4|u2|conteo\(13) & ((\u7|u4|u2|Add0~25\) # (GND)))
-- \u7|u4|u2|Add0~27\ = CARRY((!\u7|u4|u2|Add0~25\) # (!\u7|u4|u2|conteo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(13),
	datad => VCC,
	cin => \u7|u4|u2|Add0~25\,
	combout => \u7|u4|u2|Add0~26_combout\,
	cout => \u7|u4|u2|Add0~27\);

-- Location: FF_X70_Y50_N27
\u7|u4|u2|conteo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(13));

-- Location: LCCOMB_X70_Y50_N28
\u7|u4|u2|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~28_combout\ = (\u7|u4|u2|conteo\(14) & (\u7|u4|u2|Add0~27\ $ (GND))) # (!\u7|u4|u2|conteo\(14) & (!\u7|u4|u2|Add0~27\ & VCC))
-- \u7|u4|u2|Add0~29\ = CARRY((\u7|u4|u2|conteo\(14) & !\u7|u4|u2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(14),
	datad => VCC,
	cin => \u7|u4|u2|Add0~27\,
	combout => \u7|u4|u2|Add0~28_combout\,
	cout => \u7|u4|u2|Add0~29\);

-- Location: FF_X70_Y50_N29
\u7|u4|u2|conteo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(14));

-- Location: LCCOMB_X70_Y50_N30
\u7|u4|u2|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~30_combout\ = (\u7|u4|u2|conteo\(15) & (!\u7|u4|u2|Add0~29\)) # (!\u7|u4|u2|conteo\(15) & ((\u7|u4|u2|Add0~29\) # (GND)))
-- \u7|u4|u2|Add0~31\ = CARRY((!\u7|u4|u2|Add0~29\) # (!\u7|u4|u2|conteo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(15),
	datad => VCC,
	cin => \u7|u4|u2|Add0~29\,
	combout => \u7|u4|u2|Add0~30_combout\,
	cout => \u7|u4|u2|Add0~31\);

-- Location: FF_X70_Y50_N31
\u7|u4|u2|conteo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(15));

-- Location: LCCOMB_X70_Y49_N0
\u7|u4|u2|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~32_combout\ = (\u7|u4|u2|conteo\(16) & (\u7|u4|u2|Add0~31\ $ (GND))) # (!\u7|u4|u2|conteo\(16) & (!\u7|u4|u2|Add0~31\ & VCC))
-- \u7|u4|u2|Add0~33\ = CARRY((\u7|u4|u2|conteo\(16) & !\u7|u4|u2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(16),
	datad => VCC,
	cin => \u7|u4|u2|Add0~31\,
	combout => \u7|u4|u2|Add0~32_combout\,
	cout => \u7|u4|u2|Add0~33\);

-- Location: FF_X70_Y49_N1
\u7|u4|u2|conteo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(16));

-- Location: LCCOMB_X70_Y49_N2
\u7|u4|u2|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~34_combout\ = (\u7|u4|u2|conteo\(17) & (!\u7|u4|u2|Add0~33\)) # (!\u7|u4|u2|conteo\(17) & ((\u7|u4|u2|Add0~33\) # (GND)))
-- \u7|u4|u2|Add0~35\ = CARRY((!\u7|u4|u2|Add0~33\) # (!\u7|u4|u2|conteo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(17),
	datad => VCC,
	cin => \u7|u4|u2|Add0~33\,
	combout => \u7|u4|u2|Add0~34_combout\,
	cout => \u7|u4|u2|Add0~35\);

-- Location: FF_X70_Y49_N3
\u7|u4|u2|conteo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(17));

-- Location: LCCOMB_X70_Y49_N4
\u7|u4|u2|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~36_combout\ = (\u7|u4|u2|conteo\(18) & (\u7|u4|u2|Add0~35\ $ (GND))) # (!\u7|u4|u2|conteo\(18) & (!\u7|u4|u2|Add0~35\ & VCC))
-- \u7|u4|u2|Add0~37\ = CARRY((\u7|u4|u2|conteo\(18) & !\u7|u4|u2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(18),
	datad => VCC,
	cin => \u7|u4|u2|Add0~35\,
	combout => \u7|u4|u2|Add0~36_combout\,
	cout => \u7|u4|u2|Add0~37\);

-- Location: FF_X70_Y49_N5
\u7|u4|u2|conteo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(18));

-- Location: LCCOMB_X70_Y49_N6
\u7|u4|u2|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~38_combout\ = (\u7|u4|u2|conteo\(19) & (!\u7|u4|u2|Add0~37\)) # (!\u7|u4|u2|conteo\(19) & ((\u7|u4|u2|Add0~37\) # (GND)))
-- \u7|u4|u2|Add0~39\ = CARRY((!\u7|u4|u2|Add0~37\) # (!\u7|u4|u2|conteo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(19),
	datad => VCC,
	cin => \u7|u4|u2|Add0~37\,
	combout => \u7|u4|u2|Add0~38_combout\,
	cout => \u7|u4|u2|Add0~39\);

-- Location: FF_X70_Y49_N7
\u7|u4|u2|conteo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(19));

-- Location: LCCOMB_X71_Y49_N16
\u7|u4|u2|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Equal0~5_combout\ = (!\u7|u4|u2|conteo\(16) & (!\u7|u4|u2|conteo\(19) & (!\u7|u4|u2|conteo\(18) & !\u7|u4|u2|conteo\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(16),
	datab => \u7|u4|u2|conteo\(19),
	datac => \u7|u4|u2|conteo\(18),
	datad => \u7|u4|u2|conteo\(17),
	combout => \u7|u4|u2|Equal0~5_combout\);

-- Location: LCCOMB_X70_Y49_N8
\u7|u4|u2|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~40_combout\ = (\u7|u4|u2|conteo\(20) & (\u7|u4|u2|Add0~39\ $ (GND))) # (!\u7|u4|u2|conteo\(20) & (!\u7|u4|u2|Add0~39\ & VCC))
-- \u7|u4|u2|Add0~41\ = CARRY((\u7|u4|u2|conteo\(20) & !\u7|u4|u2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(20),
	datad => VCC,
	cin => \u7|u4|u2|Add0~39\,
	combout => \u7|u4|u2|Add0~40_combout\,
	cout => \u7|u4|u2|Add0~41\);

-- Location: FF_X70_Y49_N9
\u7|u4|u2|conteo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(20));

-- Location: LCCOMB_X70_Y49_N10
\u7|u4|u2|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~42_combout\ = (\u7|u4|u2|conteo\(21) & (!\u7|u4|u2|Add0~41\)) # (!\u7|u4|u2|conteo\(21) & ((\u7|u4|u2|Add0~41\) # (GND)))
-- \u7|u4|u2|Add0~43\ = CARRY((!\u7|u4|u2|Add0~41\) # (!\u7|u4|u2|conteo\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(21),
	datad => VCC,
	cin => \u7|u4|u2|Add0~41\,
	combout => \u7|u4|u2|Add0~42_combout\,
	cout => \u7|u4|u2|Add0~43\);

-- Location: FF_X70_Y49_N11
\u7|u4|u2|conteo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(21));

-- Location: LCCOMB_X70_Y49_N12
\u7|u4|u2|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~44_combout\ = (\u7|u4|u2|conteo\(22) & (\u7|u4|u2|Add0~43\ $ (GND))) # (!\u7|u4|u2|conteo\(22) & (!\u7|u4|u2|Add0~43\ & VCC))
-- \u7|u4|u2|Add0~45\ = CARRY((\u7|u4|u2|conteo\(22) & !\u7|u4|u2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(22),
	datad => VCC,
	cin => \u7|u4|u2|Add0~43\,
	combout => \u7|u4|u2|Add0~44_combout\,
	cout => \u7|u4|u2|Add0~45\);

-- Location: FF_X70_Y49_N13
\u7|u4|u2|conteo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(22));

-- Location: LCCOMB_X70_Y49_N14
\u7|u4|u2|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~46_combout\ = (\u7|u4|u2|conteo\(23) & (!\u7|u4|u2|Add0~45\)) # (!\u7|u4|u2|conteo\(23) & ((\u7|u4|u2|Add0~45\) # (GND)))
-- \u7|u4|u2|Add0~47\ = CARRY((!\u7|u4|u2|Add0~45\) # (!\u7|u4|u2|conteo\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(23),
	datad => VCC,
	cin => \u7|u4|u2|Add0~45\,
	combout => \u7|u4|u2|Add0~46_combout\,
	cout => \u7|u4|u2|Add0~47\);

-- Location: FF_X70_Y49_N15
\u7|u4|u2|conteo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(23));

-- Location: LCCOMB_X70_Y49_N16
\u7|u4|u2|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~48_combout\ = (\u7|u4|u2|conteo\(24) & (\u7|u4|u2|Add0~47\ $ (GND))) # (!\u7|u4|u2|conteo\(24) & (!\u7|u4|u2|Add0~47\ & VCC))
-- \u7|u4|u2|Add0~49\ = CARRY((\u7|u4|u2|conteo\(24) & !\u7|u4|u2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(24),
	datad => VCC,
	cin => \u7|u4|u2|Add0~47\,
	combout => \u7|u4|u2|Add0~48_combout\,
	cout => \u7|u4|u2|Add0~49\);

-- Location: FF_X70_Y49_N17
\u7|u4|u2|conteo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(24));

-- Location: LCCOMB_X70_Y49_N18
\u7|u4|u2|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~50_combout\ = (\u7|u4|u2|conteo\(25) & (!\u7|u4|u2|Add0~49\)) # (!\u7|u4|u2|conteo\(25) & ((\u7|u4|u2|Add0~49\) # (GND)))
-- \u7|u4|u2|Add0~51\ = CARRY((!\u7|u4|u2|Add0~49\) # (!\u7|u4|u2|conteo\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(25),
	datad => VCC,
	cin => \u7|u4|u2|Add0~49\,
	combout => \u7|u4|u2|Add0~50_combout\,
	cout => \u7|u4|u2|Add0~51\);

-- Location: FF_X70_Y49_N19
\u7|u4|u2|conteo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(25));

-- Location: LCCOMB_X70_Y49_N20
\u7|u4|u2|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~52_combout\ = (\u7|u4|u2|conteo\(26) & (\u7|u4|u2|Add0~51\ $ (GND))) # (!\u7|u4|u2|conteo\(26) & (!\u7|u4|u2|Add0~51\ & VCC))
-- \u7|u4|u2|Add0~53\ = CARRY((\u7|u4|u2|conteo\(26) & !\u7|u4|u2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(26),
	datad => VCC,
	cin => \u7|u4|u2|Add0~51\,
	combout => \u7|u4|u2|Add0~52_combout\,
	cout => \u7|u4|u2|Add0~53\);

-- Location: FF_X70_Y49_N21
\u7|u4|u2|conteo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(26));

-- Location: LCCOMB_X70_Y49_N22
\u7|u4|u2|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~54_combout\ = (\u7|u4|u2|conteo\(27) & (!\u7|u4|u2|Add0~53\)) # (!\u7|u4|u2|conteo\(27) & ((\u7|u4|u2|Add0~53\) # (GND)))
-- \u7|u4|u2|Add0~55\ = CARRY((!\u7|u4|u2|Add0~53\) # (!\u7|u4|u2|conteo\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(27),
	datad => VCC,
	cin => \u7|u4|u2|Add0~53\,
	combout => \u7|u4|u2|Add0~54_combout\,
	cout => \u7|u4|u2|Add0~55\);

-- Location: FF_X70_Y49_N23
\u7|u4|u2|conteo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(27));

-- Location: LCCOMB_X70_Y49_N24
\u7|u4|u2|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~56_combout\ = (\u7|u4|u2|conteo\(28) & (\u7|u4|u2|Add0~55\ $ (GND))) # (!\u7|u4|u2|conteo\(28) & (!\u7|u4|u2|Add0~55\ & VCC))
-- \u7|u4|u2|Add0~57\ = CARRY((\u7|u4|u2|conteo\(28) & !\u7|u4|u2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(28),
	datad => VCC,
	cin => \u7|u4|u2|Add0~55\,
	combout => \u7|u4|u2|Add0~56_combout\,
	cout => \u7|u4|u2|Add0~57\);

-- Location: FF_X70_Y49_N25
\u7|u4|u2|conteo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(28));

-- Location: LCCOMB_X70_Y49_N26
\u7|u4|u2|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~58_combout\ = (\u7|u4|u2|conteo\(29) & (!\u7|u4|u2|Add0~57\)) # (!\u7|u4|u2|conteo\(29) & ((\u7|u4|u2|Add0~57\) # (GND)))
-- \u7|u4|u2|Add0~59\ = CARRY((!\u7|u4|u2|Add0~57\) # (!\u7|u4|u2|conteo\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(29),
	datad => VCC,
	cin => \u7|u4|u2|Add0~57\,
	combout => \u7|u4|u2|Add0~58_combout\,
	cout => \u7|u4|u2|Add0~59\);

-- Location: FF_X70_Y49_N27
\u7|u4|u2|conteo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(29));

-- Location: LCCOMB_X70_Y49_N28
\u7|u4|u2|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~60_combout\ = (\u7|u4|u2|conteo\(30) & (\u7|u4|u2|Add0~59\ $ (GND))) # (!\u7|u4|u2|conteo\(30) & (!\u7|u4|u2|Add0~59\ & VCC))
-- \u7|u4|u2|Add0~61\ = CARRY((\u7|u4|u2|conteo\(30) & !\u7|u4|u2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(30),
	datad => VCC,
	cin => \u7|u4|u2|Add0~59\,
	combout => \u7|u4|u2|Add0~60_combout\,
	cout => \u7|u4|u2|Add0~61\);

-- Location: FF_X70_Y49_N29
\u7|u4|u2|conteo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(30));

-- Location: LCCOMB_X70_Y49_N30
\u7|u4|u2|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~62_combout\ = \u7|u4|u2|conteo\(31) $ (\u7|u4|u2|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(31),
	cin => \u7|u4|u2|Add0~61\,
	combout => \u7|u4|u2|Add0~62_combout\);

-- Location: FF_X70_Y49_N31
\u7|u4|u2|conteo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(31));

-- Location: LCCOMB_X71_Y49_N8
\u7|u4|u2|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Equal0~7_combout\ = (!\u7|u4|u2|conteo\(24) & (!\u7|u4|u2|conteo\(25) & (!\u7|u4|u2|conteo\(27) & !\u7|u4|u2|conteo\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(24),
	datab => \u7|u4|u2|conteo\(25),
	datac => \u7|u4|u2|conteo\(27),
	datad => \u7|u4|u2|conteo\(26),
	combout => \u7|u4|u2|Equal0~7_combout\);

-- Location: LCCOMB_X71_Y49_N18
\u7|u4|u2|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Equal0~8_combout\ = (!\u7|u4|u2|conteo\(29) & !\u7|u4|u2|conteo\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|u4|u2|conteo\(29),
	datad => \u7|u4|u2|conteo\(28),
	combout => \u7|u4|u2|Equal0~8_combout\);

-- Location: LCCOMB_X71_Y49_N0
\u7|u4|u2|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Equal0~9_combout\ = (!\u7|u4|u2|conteo\(31) & (!\u7|u4|u2|conteo\(30) & (\u7|u4|u2|Equal0~7_combout\ & \u7|u4|u2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(31),
	datab => \u7|u4|u2|conteo\(30),
	datac => \u7|u4|u2|Equal0~7_combout\,
	datad => \u7|u4|u2|Equal0~8_combout\,
	combout => \u7|u4|u2|Equal0~9_combout\);

-- Location: LCCOMB_X71_Y50_N26
\u7|u4|u2|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Equal0~3_combout\ = (!\u7|u4|u2|conteo\(13) & (!\u7|u4|u2|conteo\(14) & (!\u7|u4|u2|conteo\(12) & !\u7|u4|u2|conteo\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(13),
	datab => \u7|u4|u2|conteo\(14),
	datac => \u7|u4|u2|conteo\(12),
	datad => \u7|u4|u2|conteo\(15),
	combout => \u7|u4|u2|Equal0~3_combout\);

-- Location: LCCOMB_X71_Y50_N28
\u7|u4|u2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Equal0~0_combout\ = (\u7|u4|u2|conteo\(0) & (\u7|u4|u2|conteo\(3) & (!\u7|u4|u2|conteo\(2) & !\u7|u4|u2|conteo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(0),
	datab => \u7|u4|u2|conteo\(3),
	datac => \u7|u4|u2|conteo\(2),
	datad => \u7|u4|u2|conteo\(1),
	combout => \u7|u4|u2|Equal0~0_combout\);

-- Location: LCCOMB_X71_Y50_N8
\u7|u4|u2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Equal0~2_combout\ = (!\u7|u4|u2|conteo\(8) & (!\u7|u4|u2|conteo\(11) & (!\u7|u4|u2|conteo\(10) & !\u7|u4|u2|conteo\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(8),
	datab => \u7|u4|u2|conteo\(11),
	datac => \u7|u4|u2|conteo\(10),
	datad => \u7|u4|u2|conteo\(9),
	combout => \u7|u4|u2|Equal0~2_combout\);

-- Location: LCCOMB_X71_Y50_N18
\u7|u4|u2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Equal0~1_combout\ = (!\u7|u4|u2|conteo\(6) & (!\u7|u4|u2|conteo\(5) & (!\u7|u4|u2|conteo\(7) & !\u7|u4|u2|conteo\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(6),
	datab => \u7|u4|u2|conteo\(5),
	datac => \u7|u4|u2|conteo\(7),
	datad => \u7|u4|u2|conteo\(4),
	combout => \u7|u4|u2|Equal0~1_combout\);

-- Location: LCCOMB_X71_Y50_N4
\u7|u4|u2|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Equal0~4_combout\ = (\u7|u4|u2|Equal0~3_combout\ & (\u7|u4|u2|Equal0~0_combout\ & (\u7|u4|u2|Equal0~2_combout\ & \u7|u4|u2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|Equal0~3_combout\,
	datab => \u7|u4|u2|Equal0~0_combout\,
	datac => \u7|u4|u2|Equal0~2_combout\,
	datad => \u7|u4|u2|Equal0~1_combout\,
	combout => \u7|u4|u2|Equal0~4_combout\);

-- Location: LCCOMB_X71_Y49_N22
\u7|u4|u2|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Equal0~6_combout\ = (!\u7|u4|u2|conteo\(20) & (!\u7|u4|u2|conteo\(21) & (!\u7|u4|u2|conteo\(23) & !\u7|u4|u2|conteo\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(20),
	datab => \u7|u4|u2|conteo\(21),
	datac => \u7|u4|u2|conteo\(23),
	datad => \u7|u4|u2|conteo\(22),
	combout => \u7|u4|u2|Equal0~6_combout\);

-- Location: LCCOMB_X71_Y50_N12
\u7|u4|u2|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Equal0~10_combout\ = (\u7|u4|u2|Equal0~5_combout\ & (\u7|u4|u2|Equal0~9_combout\ & (\u7|u4|u2|Equal0~4_combout\ & \u7|u4|u2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|Equal0~5_combout\,
	datab => \u7|u4|u2|Equal0~9_combout\,
	datac => \u7|u4|u2|Equal0~4_combout\,
	datad => \u7|u4|u2|Equal0~6_combout\,
	combout => \u7|u4|u2|Equal0~10_combout\);

-- Location: LCCOMB_X71_Y50_N10
\u7|u4|u2|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|conteo~1_combout\ = (\u7|u4|u2|Add0~2_combout\ & !\u7|u4|u2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|Add0~2_combout\,
	datad => \u7|u4|u2|Equal0~10_combout\,
	combout => \u7|u4|u2|conteo~1_combout\);

-- Location: FF_X70_Y50_N7
\u7|u4|u2|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	asdata => \u7|u4|u2|conteo~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(1));

-- Location: LCCOMB_X70_Y50_N4
\u7|u4|u2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|Add0~4_combout\ = (\u7|u4|u2|conteo\(2) & (\u7|u4|u2|Add0~3\ $ (GND))) # (!\u7|u4|u2|conteo\(2) & (!\u7|u4|u2|Add0~3\ & VCC))
-- \u7|u4|u2|Add0~5\ = CARRY((\u7|u4|u2|conteo\(2) & !\u7|u4|u2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u4|u2|conteo\(2),
	datad => VCC,
	cin => \u7|u4|u2|Add0~3\,
	combout => \u7|u4|u2|Add0~4_combout\,
	cout => \u7|u4|u2|Add0~5\);

-- Location: FF_X70_Y50_N5
\u7|u4|u2|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(2));

-- Location: LCCOMB_X71_Y50_N2
\u7|u4|u2|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|conteo~0_combout\ = (\u7|u4|u2|Add0~6_combout\ & !\u7|u4|u2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|u4|u2|Add0~6_combout\,
	datad => \u7|u4|u2|Equal0~10_combout\,
	combout => \u7|u4|u2|conteo~0_combout\);

-- Location: FF_X71_Y50_N3
\u7|u4|u2|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|conteo\(3));

-- Location: LCCOMB_X71_Y50_N0
\u7|u4|u3|WideOr5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u3|WideOr5~combout\ = (\u7|u4|u2|conteo\(1) & (((\u7|u4|u2|conteo\(3))))) # (!\u7|u4|u2|conteo\(1) & (\u7|u4|u2|conteo\(2) $ (((\u7|u4|u2|conteo\(0) & !\u7|u4|u2|conteo\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(0),
	datab => \u7|u4|u2|conteo\(3),
	datac => \u7|u4|u2|conteo\(2),
	datad => \u7|u4|u2|conteo\(1),
	combout => \u7|u4|u3|WideOr5~combout\);

-- Location: LCCOMB_X71_Y50_N16
\u7|u4|u3|WideOr4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u3|WideOr4~2_combout\ = (\u7|u4|u2|conteo\(3) & (((\u7|u4|u2|conteo\(2)) # (\u7|u4|u2|conteo\(1))))) # (!\u7|u4|u2|conteo\(3) & (\u7|u4|u2|conteo\(2) & (\u7|u4|u2|conteo\(0) $ (\u7|u4|u2|conteo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(0),
	datab => \u7|u4|u2|conteo\(3),
	datac => \u7|u4|u2|conteo\(2),
	datad => \u7|u4|u2|conteo\(1),
	combout => \u7|u4|u3|WideOr4~2_combout\);

-- Location: LCCOMB_X71_Y50_N20
\u7|u4|u3|b[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u3|b\(2) = (\u7|u4|u2|conteo\(2) & (((\u7|u4|u2|conteo\(3))))) # (!\u7|u4|u2|conteo\(2) & (\u7|u4|u2|conteo\(1) & ((\u7|u4|u2|conteo\(3)) # (!\u7|u4|u2|conteo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(0),
	datab => \u7|u4|u2|conteo\(3),
	datac => \u7|u4|u2|conteo\(2),
	datad => \u7|u4|u2|conteo\(1),
	combout => \u7|u4|u3|b\(2));

-- Location: LCCOMB_X71_Y50_N22
\u7|u4|u3|WideOr3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u3|WideOr3~combout\ = (\u7|u4|u2|conteo\(0) & ((\u7|u4|u2|conteo\(3)) # (\u7|u4|u2|conteo\(2) $ (!\u7|u4|u2|conteo\(1))))) # (!\u7|u4|u2|conteo\(0) & ((\u7|u4|u2|conteo\(1) & (\u7|u4|u2|conteo\(3))) # (!\u7|u4|u2|conteo\(1) & 
-- ((\u7|u4|u2|conteo\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(0),
	datab => \u7|u4|u2|conteo\(3),
	datac => \u7|u4|u2|conteo\(2),
	datad => \u7|u4|u2|conteo\(1),
	combout => \u7|u4|u3|WideOr3~combout\);

-- Location: LCCOMB_X71_Y50_N30
\u7|u4|u3|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u3|WideOr2~0_combout\ = (\u7|u4|u2|conteo\(0)) # ((\u7|u4|u2|conteo\(1) & (\u7|u4|u2|conteo\(3))) # (!\u7|u4|u2|conteo\(1) & ((\u7|u4|u2|conteo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(0),
	datab => \u7|u4|u2|conteo\(3),
	datac => \u7|u4|u2|conteo\(2),
	datad => \u7|u4|u2|conteo\(1),
	combout => \u7|u4|u3|WideOr2~0_combout\);

-- Location: LCCOMB_X71_Y50_N24
\u7|u4|u3|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u3|WideOr1~combout\ = (\u7|u4|u2|conteo\(0) & ((\u7|u4|u2|conteo\(1)) # (\u7|u4|u2|conteo\(3) $ (!\u7|u4|u2|conteo\(2))))) # (!\u7|u4|u2|conteo\(0) & ((\u7|u4|u2|conteo\(2) & (\u7|u4|u2|conteo\(3))) # (!\u7|u4|u2|conteo\(2) & 
-- ((\u7|u4|u2|conteo\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(0),
	datab => \u7|u4|u2|conteo\(3),
	datac => \u7|u4|u2|conteo\(2),
	datad => \u7|u4|u2|conteo\(1),
	combout => \u7|u4|u3|WideOr1~combout\);

-- Location: LCCOMB_X71_Y50_N14
\u7|u4|u3|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u3|WideOr0~combout\ = (\u7|u4|u2|conteo\(2) & ((\u7|u4|u2|conteo\(3)) # ((\u7|u4|u2|conteo\(0) & \u7|u4|u2|conteo\(1))))) # (!\u7|u4|u2|conteo\(2) & ((\u7|u4|u2|conteo\(3) $ (!\u7|u4|u2|conteo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u4|u2|conteo\(0),
	datab => \u7|u4|u2|conteo\(3),
	datac => \u7|u4|u2|conteo\(2),
	datad => \u7|u4|u2|conteo\(1),
	combout => \u7|u4|u3|WideOr0~combout\);

-- Location: LCCOMB_X71_Y50_N6
\u7|u4|u2|bandera~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u4|u2|bandera~feeder_combout\ = \u7|u4|u2|Equal0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u7|u4|u2|Equal0~10_combout\,
	combout => \u7|u4|u2|bandera~feeder_combout\);

-- Location: FF_X71_Y50_N7
\u7|u4|u2|bandera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u1|clkl~clkctrl_outclk\,
	d => \u7|u4|u2|bandera~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u4|u2|bandera~q\);

-- Location: CLKCTRL_G9
\u7|u4|u2|bandera~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u7|u4|u2|bandera~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u7|u4|u2|bandera~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y51_N0
\u7|u5|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~0_combout\ = \u7|u5|conteo\(0) $ (VCC)
-- \u7|u5|Add0~1\ = CARRY(\u7|u5|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(0),
	datad => VCC,
	combout => \u7|u5|Add0~0_combout\,
	cout => \u7|u5|Add0~1\);

-- Location: FF_X57_Y51_N1
\u7|u5|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(0));

-- Location: LCCOMB_X57_Y51_N2
\u7|u5|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~2_combout\ = (\u7|u5|conteo\(1) & (!\u7|u5|Add0~1\)) # (!\u7|u5|conteo\(1) & ((\u7|u5|Add0~1\) # (GND)))
-- \u7|u5|Add0~3\ = CARRY((!\u7|u5|Add0~1\) # (!\u7|u5|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(1),
	datad => VCC,
	cin => \u7|u5|Add0~1\,
	combout => \u7|u5|Add0~2_combout\,
	cout => \u7|u5|Add0~3\);

-- Location: LCCOMB_X57_Y51_N4
\u7|u5|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~4_combout\ = (\u7|u5|conteo\(2) & (\u7|u5|Add0~3\ $ (GND))) # (!\u7|u5|conteo\(2) & (!\u7|u5|Add0~3\ & VCC))
-- \u7|u5|Add0~5\ = CARRY((\u7|u5|conteo\(2) & !\u7|u5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(2),
	datad => VCC,
	cin => \u7|u5|Add0~3\,
	combout => \u7|u5|Add0~4_combout\,
	cout => \u7|u5|Add0~5\);

-- Location: FF_X57_Y51_N5
\u7|u5|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(2));

-- Location: LCCOMB_X57_Y51_N6
\u7|u5|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~6_combout\ = (\u7|u5|conteo\(3) & (!\u7|u5|Add0~5\)) # (!\u7|u5|conteo\(3) & ((\u7|u5|Add0~5\) # (GND)))
-- \u7|u5|Add0~7\ = CARRY((!\u7|u5|Add0~5\) # (!\u7|u5|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(3),
	datad => VCC,
	cin => \u7|u5|Add0~5\,
	combout => \u7|u5|Add0~6_combout\,
	cout => \u7|u5|Add0~7\);

-- Location: LCCOMB_X58_Y51_N2
\u7|u5|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|conteo~0_combout\ = (\u7|u5|Add0~6_combout\ & !\u7|u5|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|Add0~6_combout\,
	datad => \u7|u5|Equal0~10_combout\,
	combout => \u7|u5|conteo~0_combout\);

-- Location: FF_X58_Y51_N3
\u7|u5|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(3));

-- Location: LCCOMB_X57_Y51_N8
\u7|u5|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~8_combout\ = (\u7|u5|conteo\(4) & (\u7|u5|Add0~7\ $ (GND))) # (!\u7|u5|conteo\(4) & (!\u7|u5|Add0~7\ & VCC))
-- \u7|u5|Add0~9\ = CARRY((\u7|u5|conteo\(4) & !\u7|u5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(4),
	datad => VCC,
	cin => \u7|u5|Add0~7\,
	combout => \u7|u5|Add0~8_combout\,
	cout => \u7|u5|Add0~9\);

-- Location: FF_X57_Y51_N9
\u7|u5|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(4));

-- Location: LCCOMB_X57_Y51_N10
\u7|u5|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~10_combout\ = (\u7|u5|conteo\(5) & (!\u7|u5|Add0~9\)) # (!\u7|u5|conteo\(5) & ((\u7|u5|Add0~9\) # (GND)))
-- \u7|u5|Add0~11\ = CARRY((!\u7|u5|Add0~9\) # (!\u7|u5|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(5),
	datad => VCC,
	cin => \u7|u5|Add0~9\,
	combout => \u7|u5|Add0~10_combout\,
	cout => \u7|u5|Add0~11\);

-- Location: FF_X57_Y51_N11
\u7|u5|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(5));

-- Location: LCCOMB_X57_Y51_N12
\u7|u5|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~12_combout\ = (\u7|u5|conteo\(6) & (\u7|u5|Add0~11\ $ (GND))) # (!\u7|u5|conteo\(6) & (!\u7|u5|Add0~11\ & VCC))
-- \u7|u5|Add0~13\ = CARRY((\u7|u5|conteo\(6) & !\u7|u5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(6),
	datad => VCC,
	cin => \u7|u5|Add0~11\,
	combout => \u7|u5|Add0~12_combout\,
	cout => \u7|u5|Add0~13\);

-- Location: FF_X57_Y51_N13
\u7|u5|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(6));

-- Location: LCCOMB_X57_Y51_N14
\u7|u5|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~14_combout\ = (\u7|u5|conteo\(7) & (!\u7|u5|Add0~13\)) # (!\u7|u5|conteo\(7) & ((\u7|u5|Add0~13\) # (GND)))
-- \u7|u5|Add0~15\ = CARRY((!\u7|u5|Add0~13\) # (!\u7|u5|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(7),
	datad => VCC,
	cin => \u7|u5|Add0~13\,
	combout => \u7|u5|Add0~14_combout\,
	cout => \u7|u5|Add0~15\);

-- Location: FF_X57_Y51_N15
\u7|u5|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(7));

-- Location: LCCOMB_X57_Y51_N16
\u7|u5|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~16_combout\ = (\u7|u5|conteo\(8) & (\u7|u5|Add0~15\ $ (GND))) # (!\u7|u5|conteo\(8) & (!\u7|u5|Add0~15\ & VCC))
-- \u7|u5|Add0~17\ = CARRY((\u7|u5|conteo\(8) & !\u7|u5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(8),
	datad => VCC,
	cin => \u7|u5|Add0~15\,
	combout => \u7|u5|Add0~16_combout\,
	cout => \u7|u5|Add0~17\);

-- Location: FF_X57_Y51_N17
\u7|u5|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(8));

-- Location: LCCOMB_X57_Y51_N18
\u7|u5|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~18_combout\ = (\u7|u5|conteo\(9) & (!\u7|u5|Add0~17\)) # (!\u7|u5|conteo\(9) & ((\u7|u5|Add0~17\) # (GND)))
-- \u7|u5|Add0~19\ = CARRY((!\u7|u5|Add0~17\) # (!\u7|u5|conteo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(9),
	datad => VCC,
	cin => \u7|u5|Add0~17\,
	combout => \u7|u5|Add0~18_combout\,
	cout => \u7|u5|Add0~19\);

-- Location: FF_X57_Y51_N19
\u7|u5|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(9));

-- Location: LCCOMB_X57_Y51_N20
\u7|u5|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~20_combout\ = (\u7|u5|conteo\(10) & (\u7|u5|Add0~19\ $ (GND))) # (!\u7|u5|conteo\(10) & (!\u7|u5|Add0~19\ & VCC))
-- \u7|u5|Add0~21\ = CARRY((\u7|u5|conteo\(10) & !\u7|u5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(10),
	datad => VCC,
	cin => \u7|u5|Add0~19\,
	combout => \u7|u5|Add0~20_combout\,
	cout => \u7|u5|Add0~21\);

-- Location: FF_X57_Y51_N21
\u7|u5|conteo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(10));

-- Location: LCCOMB_X57_Y51_N22
\u7|u5|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~22_combout\ = (\u7|u5|conteo\(11) & (!\u7|u5|Add0~21\)) # (!\u7|u5|conteo\(11) & ((\u7|u5|Add0~21\) # (GND)))
-- \u7|u5|Add0~23\ = CARRY((!\u7|u5|Add0~21\) # (!\u7|u5|conteo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(11),
	datad => VCC,
	cin => \u7|u5|Add0~21\,
	combout => \u7|u5|Add0~22_combout\,
	cout => \u7|u5|Add0~23\);

-- Location: FF_X57_Y51_N23
\u7|u5|conteo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(11));

-- Location: LCCOMB_X57_Y51_N24
\u7|u5|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~24_combout\ = (\u7|u5|conteo\(12) & (\u7|u5|Add0~23\ $ (GND))) # (!\u7|u5|conteo\(12) & (!\u7|u5|Add0~23\ & VCC))
-- \u7|u5|Add0~25\ = CARRY((\u7|u5|conteo\(12) & !\u7|u5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(12),
	datad => VCC,
	cin => \u7|u5|Add0~23\,
	combout => \u7|u5|Add0~24_combout\,
	cout => \u7|u5|Add0~25\);

-- Location: FF_X57_Y51_N25
\u7|u5|conteo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(12));

-- Location: LCCOMB_X57_Y51_N26
\u7|u5|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~26_combout\ = (\u7|u5|conteo\(13) & (!\u7|u5|Add0~25\)) # (!\u7|u5|conteo\(13) & ((\u7|u5|Add0~25\) # (GND)))
-- \u7|u5|Add0~27\ = CARRY((!\u7|u5|Add0~25\) # (!\u7|u5|conteo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(13),
	datad => VCC,
	cin => \u7|u5|Add0~25\,
	combout => \u7|u5|Add0~26_combout\,
	cout => \u7|u5|Add0~27\);

-- Location: FF_X57_Y51_N27
\u7|u5|conteo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(13));

-- Location: LCCOMB_X57_Y51_N28
\u7|u5|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~28_combout\ = (\u7|u5|conteo\(14) & (\u7|u5|Add0~27\ $ (GND))) # (!\u7|u5|conteo\(14) & (!\u7|u5|Add0~27\ & VCC))
-- \u7|u5|Add0~29\ = CARRY((\u7|u5|conteo\(14) & !\u7|u5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(14),
	datad => VCC,
	cin => \u7|u5|Add0~27\,
	combout => \u7|u5|Add0~28_combout\,
	cout => \u7|u5|Add0~29\);

-- Location: FF_X57_Y51_N29
\u7|u5|conteo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(14));

-- Location: LCCOMB_X57_Y51_N30
\u7|u5|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~30_combout\ = (\u7|u5|conteo\(15) & (!\u7|u5|Add0~29\)) # (!\u7|u5|conteo\(15) & ((\u7|u5|Add0~29\) # (GND)))
-- \u7|u5|Add0~31\ = CARRY((!\u7|u5|Add0~29\) # (!\u7|u5|conteo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(15),
	datad => VCC,
	cin => \u7|u5|Add0~29\,
	combout => \u7|u5|Add0~30_combout\,
	cout => \u7|u5|Add0~31\);

-- Location: FF_X57_Y51_N31
\u7|u5|conteo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(15));

-- Location: LCCOMB_X57_Y50_N0
\u7|u5|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~32_combout\ = (\u7|u5|conteo\(16) & (\u7|u5|Add0~31\ $ (GND))) # (!\u7|u5|conteo\(16) & (!\u7|u5|Add0~31\ & VCC))
-- \u7|u5|Add0~33\ = CARRY((\u7|u5|conteo\(16) & !\u7|u5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(16),
	datad => VCC,
	cin => \u7|u5|Add0~31\,
	combout => \u7|u5|Add0~32_combout\,
	cout => \u7|u5|Add0~33\);

-- Location: FF_X57_Y50_N1
\u7|u5|conteo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(16));

-- Location: LCCOMB_X57_Y50_N2
\u7|u5|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~34_combout\ = (\u7|u5|conteo\(17) & (!\u7|u5|Add0~33\)) # (!\u7|u5|conteo\(17) & ((\u7|u5|Add0~33\) # (GND)))
-- \u7|u5|Add0~35\ = CARRY((!\u7|u5|Add0~33\) # (!\u7|u5|conteo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(17),
	datad => VCC,
	cin => \u7|u5|Add0~33\,
	combout => \u7|u5|Add0~34_combout\,
	cout => \u7|u5|Add0~35\);

-- Location: FF_X57_Y50_N3
\u7|u5|conteo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(17));

-- Location: LCCOMB_X57_Y50_N4
\u7|u5|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~36_combout\ = (\u7|u5|conteo\(18) & (\u7|u5|Add0~35\ $ (GND))) # (!\u7|u5|conteo\(18) & (!\u7|u5|Add0~35\ & VCC))
-- \u7|u5|Add0~37\ = CARRY((\u7|u5|conteo\(18) & !\u7|u5|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(18),
	datad => VCC,
	cin => \u7|u5|Add0~35\,
	combout => \u7|u5|Add0~36_combout\,
	cout => \u7|u5|Add0~37\);

-- Location: FF_X57_Y50_N5
\u7|u5|conteo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(18));

-- Location: LCCOMB_X57_Y50_N6
\u7|u5|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~38_combout\ = (\u7|u5|conteo\(19) & (!\u7|u5|Add0~37\)) # (!\u7|u5|conteo\(19) & ((\u7|u5|Add0~37\) # (GND)))
-- \u7|u5|Add0~39\ = CARRY((!\u7|u5|Add0~37\) # (!\u7|u5|conteo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(19),
	datad => VCC,
	cin => \u7|u5|Add0~37\,
	combout => \u7|u5|Add0~38_combout\,
	cout => \u7|u5|Add0~39\);

-- Location: FF_X57_Y50_N7
\u7|u5|conteo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(19));

-- Location: LCCOMB_X58_Y50_N4
\u7|u5|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Equal0~5_combout\ = (!\u7|u5|conteo\(17) & (!\u7|u5|conteo\(16) & (!\u7|u5|conteo\(18) & !\u7|u5|conteo\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(17),
	datab => \u7|u5|conteo\(16),
	datac => \u7|u5|conteo\(18),
	datad => \u7|u5|conteo\(19),
	combout => \u7|u5|Equal0~5_combout\);

-- Location: LCCOMB_X57_Y50_N8
\u7|u5|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~40_combout\ = (\u7|u5|conteo\(20) & (\u7|u5|Add0~39\ $ (GND))) # (!\u7|u5|conteo\(20) & (!\u7|u5|Add0~39\ & VCC))
-- \u7|u5|Add0~41\ = CARRY((\u7|u5|conteo\(20) & !\u7|u5|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(20),
	datad => VCC,
	cin => \u7|u5|Add0~39\,
	combout => \u7|u5|Add0~40_combout\,
	cout => \u7|u5|Add0~41\);

-- Location: FF_X57_Y50_N9
\u7|u5|conteo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(20));

-- Location: LCCOMB_X57_Y50_N10
\u7|u5|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~42_combout\ = (\u7|u5|conteo\(21) & (!\u7|u5|Add0~41\)) # (!\u7|u5|conteo\(21) & ((\u7|u5|Add0~41\) # (GND)))
-- \u7|u5|Add0~43\ = CARRY((!\u7|u5|Add0~41\) # (!\u7|u5|conteo\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(21),
	datad => VCC,
	cin => \u7|u5|Add0~41\,
	combout => \u7|u5|Add0~42_combout\,
	cout => \u7|u5|Add0~43\);

-- Location: FF_X57_Y50_N11
\u7|u5|conteo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(21));

-- Location: LCCOMB_X57_Y50_N12
\u7|u5|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~44_combout\ = (\u7|u5|conteo\(22) & (\u7|u5|Add0~43\ $ (GND))) # (!\u7|u5|conteo\(22) & (!\u7|u5|Add0~43\ & VCC))
-- \u7|u5|Add0~45\ = CARRY((\u7|u5|conteo\(22) & !\u7|u5|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(22),
	datad => VCC,
	cin => \u7|u5|Add0~43\,
	combout => \u7|u5|Add0~44_combout\,
	cout => \u7|u5|Add0~45\);

-- Location: FF_X57_Y50_N13
\u7|u5|conteo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(22));

-- Location: LCCOMB_X57_Y50_N14
\u7|u5|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~46_combout\ = (\u7|u5|conteo\(23) & (!\u7|u5|Add0~45\)) # (!\u7|u5|conteo\(23) & ((\u7|u5|Add0~45\) # (GND)))
-- \u7|u5|Add0~47\ = CARRY((!\u7|u5|Add0~45\) # (!\u7|u5|conteo\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(23),
	datad => VCC,
	cin => \u7|u5|Add0~45\,
	combout => \u7|u5|Add0~46_combout\,
	cout => \u7|u5|Add0~47\);

-- Location: FF_X57_Y50_N15
\u7|u5|conteo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(23));

-- Location: LCCOMB_X57_Y50_N16
\u7|u5|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~48_combout\ = (\u7|u5|conteo\(24) & (\u7|u5|Add0~47\ $ (GND))) # (!\u7|u5|conteo\(24) & (!\u7|u5|Add0~47\ & VCC))
-- \u7|u5|Add0~49\ = CARRY((\u7|u5|conteo\(24) & !\u7|u5|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(24),
	datad => VCC,
	cin => \u7|u5|Add0~47\,
	combout => \u7|u5|Add0~48_combout\,
	cout => \u7|u5|Add0~49\);

-- Location: FF_X57_Y50_N17
\u7|u5|conteo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(24));

-- Location: LCCOMB_X57_Y50_N18
\u7|u5|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~50_combout\ = (\u7|u5|conteo\(25) & (!\u7|u5|Add0~49\)) # (!\u7|u5|conteo\(25) & ((\u7|u5|Add0~49\) # (GND)))
-- \u7|u5|Add0~51\ = CARRY((!\u7|u5|Add0~49\) # (!\u7|u5|conteo\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(25),
	datad => VCC,
	cin => \u7|u5|Add0~49\,
	combout => \u7|u5|Add0~50_combout\,
	cout => \u7|u5|Add0~51\);

-- Location: FF_X57_Y50_N19
\u7|u5|conteo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(25));

-- Location: LCCOMB_X57_Y50_N20
\u7|u5|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~52_combout\ = (\u7|u5|conteo\(26) & (\u7|u5|Add0~51\ $ (GND))) # (!\u7|u5|conteo\(26) & (!\u7|u5|Add0~51\ & VCC))
-- \u7|u5|Add0~53\ = CARRY((\u7|u5|conteo\(26) & !\u7|u5|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(26),
	datad => VCC,
	cin => \u7|u5|Add0~51\,
	combout => \u7|u5|Add0~52_combout\,
	cout => \u7|u5|Add0~53\);

-- Location: FF_X57_Y50_N21
\u7|u5|conteo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(26));

-- Location: LCCOMB_X57_Y50_N22
\u7|u5|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~54_combout\ = (\u7|u5|conteo\(27) & (!\u7|u5|Add0~53\)) # (!\u7|u5|conteo\(27) & ((\u7|u5|Add0~53\) # (GND)))
-- \u7|u5|Add0~55\ = CARRY((!\u7|u5|Add0~53\) # (!\u7|u5|conteo\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(27),
	datad => VCC,
	cin => \u7|u5|Add0~53\,
	combout => \u7|u5|Add0~54_combout\,
	cout => \u7|u5|Add0~55\);

-- Location: FF_X57_Y50_N23
\u7|u5|conteo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(27));

-- Location: LCCOMB_X57_Y50_N24
\u7|u5|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~56_combout\ = (\u7|u5|conteo\(28) & (\u7|u5|Add0~55\ $ (GND))) # (!\u7|u5|conteo\(28) & (!\u7|u5|Add0~55\ & VCC))
-- \u7|u5|Add0~57\ = CARRY((\u7|u5|conteo\(28) & !\u7|u5|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(28),
	datad => VCC,
	cin => \u7|u5|Add0~55\,
	combout => \u7|u5|Add0~56_combout\,
	cout => \u7|u5|Add0~57\);

-- Location: FF_X57_Y50_N25
\u7|u5|conteo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(28));

-- Location: LCCOMB_X57_Y50_N26
\u7|u5|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~58_combout\ = (\u7|u5|conteo\(29) & (!\u7|u5|Add0~57\)) # (!\u7|u5|conteo\(29) & ((\u7|u5|Add0~57\) # (GND)))
-- \u7|u5|Add0~59\ = CARRY((!\u7|u5|Add0~57\) # (!\u7|u5|conteo\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(29),
	datad => VCC,
	cin => \u7|u5|Add0~57\,
	combout => \u7|u5|Add0~58_combout\,
	cout => \u7|u5|Add0~59\);

-- Location: FF_X57_Y50_N27
\u7|u5|conteo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(29));

-- Location: LCCOMB_X57_Y50_N28
\u7|u5|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~60_combout\ = (\u7|u5|conteo\(30) & (\u7|u5|Add0~59\ $ (GND))) # (!\u7|u5|conteo\(30) & (!\u7|u5|Add0~59\ & VCC))
-- \u7|u5|Add0~61\ = CARRY((\u7|u5|conteo\(30) & !\u7|u5|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|u5|conteo\(30),
	datad => VCC,
	cin => \u7|u5|Add0~59\,
	combout => \u7|u5|Add0~60_combout\,
	cout => \u7|u5|Add0~61\);

-- Location: FF_X57_Y50_N29
\u7|u5|conteo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(30));

-- Location: LCCOMB_X57_Y50_N30
\u7|u5|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Add0~62_combout\ = \u7|u5|conteo\(31) $ (\u7|u5|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(31),
	cin => \u7|u5|Add0~61\,
	combout => \u7|u5|Add0~62_combout\);

-- Location: FF_X57_Y50_N31
\u7|u5|conteo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(31));

-- Location: LCCOMB_X58_Y50_N30
\u7|u5|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Equal0~8_combout\ = (!\u7|u5|conteo\(29) & (!\u7|u5|conteo\(30) & (!\u7|u5|conteo\(28) & !\u7|u5|conteo\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(29),
	datab => \u7|u5|conteo\(30),
	datac => \u7|u5|conteo\(28),
	datad => \u7|u5|conteo\(31),
	combout => \u7|u5|Equal0~8_combout\);

-- Location: LCCOMB_X58_Y50_N28
\u7|u5|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Equal0~7_combout\ = (!\u7|u5|conteo\(24) & (!\u7|u5|conteo\(25) & (!\u7|u5|conteo\(26) & !\u7|u5|conteo\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(24),
	datab => \u7|u5|conteo\(25),
	datac => \u7|u5|conteo\(26),
	datad => \u7|u5|conteo\(27),
	combout => \u7|u5|Equal0~7_combout\);

-- Location: LCCOMB_X58_Y50_N0
\u7|u5|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Equal0~9_combout\ = (\u7|u5|Equal0~8_combout\ & \u7|u5|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|u5|Equal0~8_combout\,
	datad => \u7|u5|Equal0~7_combout\,
	combout => \u7|u5|Equal0~9_combout\);

-- Location: LCCOMB_X58_Y50_N2
\u7|u5|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Equal0~6_combout\ = (!\u7|u5|conteo\(22) & (!\u7|u5|conteo\(21) & (!\u7|u5|conteo\(23) & !\u7|u5|conteo\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(22),
	datab => \u7|u5|conteo\(21),
	datac => \u7|u5|conteo\(23),
	datad => \u7|u5|conteo\(20),
	combout => \u7|u5|Equal0~6_combout\);

-- Location: LCCOMB_X58_Y51_N12
\u7|u5|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Equal0~0_combout\ = (\u7|u5|conteo\(0) & (\u7|u5|conteo\(3) & (!\u7|u5|conteo\(2) & !\u7|u5|conteo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(0),
	datab => \u7|u5|conteo\(3),
	datac => \u7|u5|conteo\(2),
	datad => \u7|u5|conteo\(1),
	combout => \u7|u5|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y51_N20
\u7|u5|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Equal0~3_combout\ = (!\u7|u5|conteo\(12) & (!\u7|u5|conteo\(14) & (!\u7|u5|conteo\(15) & !\u7|u5|conteo\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(12),
	datab => \u7|u5|conteo\(14),
	datac => \u7|u5|conteo\(15),
	datad => \u7|u5|conteo\(13),
	combout => \u7|u5|Equal0~3_combout\);

-- Location: LCCOMB_X58_Y51_N26
\u7|u5|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Equal0~2_combout\ = (!\u7|u5|conteo\(8) & (!\u7|u5|conteo\(11) & (!\u7|u5|conteo\(10) & !\u7|u5|conteo\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(8),
	datab => \u7|u5|conteo\(11),
	datac => \u7|u5|conteo\(10),
	datad => \u7|u5|conteo\(9),
	combout => \u7|u5|Equal0~2_combout\);

-- Location: LCCOMB_X58_Y51_N18
\u7|u5|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Equal0~1_combout\ = (!\u7|u5|conteo\(7) & (!\u7|u5|conteo\(5) & (!\u7|u5|conteo\(6) & !\u7|u5|conteo\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(7),
	datab => \u7|u5|conteo\(5),
	datac => \u7|u5|conteo\(6),
	datad => \u7|u5|conteo\(4),
	combout => \u7|u5|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y51_N0
\u7|u5|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Equal0~4_combout\ = (\u7|u5|Equal0~0_combout\ & (\u7|u5|Equal0~3_combout\ & (\u7|u5|Equal0~2_combout\ & \u7|u5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|Equal0~0_combout\,
	datab => \u7|u5|Equal0~3_combout\,
	datac => \u7|u5|Equal0~2_combout\,
	datad => \u7|u5|Equal0~1_combout\,
	combout => \u7|u5|Equal0~4_combout\);

-- Location: LCCOMB_X58_Y51_N28
\u7|u5|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|Equal0~10_combout\ = (\u7|u5|Equal0~5_combout\ & (\u7|u5|Equal0~9_combout\ & (\u7|u5|Equal0~6_combout\ & \u7|u5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|Equal0~5_combout\,
	datab => \u7|u5|Equal0~9_combout\,
	datac => \u7|u5|Equal0~6_combout\,
	datad => \u7|u5|Equal0~4_combout\,
	combout => \u7|u5|Equal0~10_combout\);

-- Location: LCCOMB_X58_Y51_N8
\u7|u5|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|conteo~1_combout\ = (\u7|u5|Add0~2_combout\ & !\u7|u5|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|Add0~2_combout\,
	datad => \u7|u5|Equal0~10_combout\,
	combout => \u7|u5|conteo~1_combout\);

-- Location: FF_X57_Y51_N7
\u7|u5|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	asdata => \u7|u5|conteo~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|conteo\(1));

-- Location: LCCOMB_X58_Y51_N22
\u7|u6|WideOr5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u6|WideOr5~combout\ = (\u7|u5|conteo\(1) & (((\u7|u5|conteo\(3))))) # (!\u7|u5|conteo\(1) & (\u7|u5|conteo\(2) $ (((\u7|u5|conteo\(0) & !\u7|u5|conteo\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(0),
	datab => \u7|u5|conteo\(1),
	datac => \u7|u5|conteo\(2),
	datad => \u7|u5|conteo\(3),
	combout => \u7|u6|WideOr5~combout\);

-- Location: LCCOMB_X58_Y51_N6
\u7|u6|WideOr4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u6|WideOr4~2_combout\ = (\u7|u5|conteo\(2) & ((\u7|u5|conteo\(3)) # (\u7|u5|conteo\(0) $ (\u7|u5|conteo\(1))))) # (!\u7|u5|conteo\(2) & (((\u7|u5|conteo\(1) & \u7|u5|conteo\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(0),
	datab => \u7|u5|conteo\(1),
	datac => \u7|u5|conteo\(2),
	datad => \u7|u5|conteo\(3),
	combout => \u7|u6|WideOr4~2_combout\);

-- Location: LCCOMB_X58_Y51_N24
\u7|u6|b[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u6|b\(2) = (\u7|u5|conteo\(2) & (((\u7|u5|conteo\(3))))) # (!\u7|u5|conteo\(2) & (\u7|u5|conteo\(1) & ((\u7|u5|conteo\(3)) # (!\u7|u5|conteo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(0),
	datab => \u7|u5|conteo\(1),
	datac => \u7|u5|conteo\(2),
	datad => \u7|u5|conteo\(3),
	combout => \u7|u6|b\(2));

-- Location: LCCOMB_X58_Y51_N10
\u7|u6|WideOr3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u6|WideOr3~combout\ = (\u7|u5|conteo\(0) & ((\u7|u5|conteo\(3)) # (\u7|u5|conteo\(1) $ (!\u7|u5|conteo\(2))))) # (!\u7|u5|conteo\(0) & ((\u7|u5|conteo\(1) & ((\u7|u5|conteo\(3)))) # (!\u7|u5|conteo\(1) & (\u7|u5|conteo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(0),
	datab => \u7|u5|conteo\(1),
	datac => \u7|u5|conteo\(2),
	datad => \u7|u5|conteo\(3),
	combout => \u7|u6|WideOr3~combout\);

-- Location: LCCOMB_X58_Y51_N14
\u7|u6|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u6|WideOr2~0_combout\ = (\u7|u5|conteo\(0)) # ((\u7|u5|conteo\(1) & ((\u7|u5|conteo\(3)))) # (!\u7|u5|conteo\(1) & (\u7|u5|conteo\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(0),
	datab => \u7|u5|conteo\(1),
	datac => \u7|u5|conteo\(2),
	datad => \u7|u5|conteo\(3),
	combout => \u7|u6|WideOr2~0_combout\);

-- Location: LCCOMB_X58_Y51_N30
\u7|u6|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u6|WideOr1~combout\ = (\u7|u5|conteo\(0) & ((\u7|u5|conteo\(1)) # (\u7|u5|conteo\(2) $ (!\u7|u5|conteo\(3))))) # (!\u7|u5|conteo\(0) & ((\u7|u5|conteo\(2) & ((\u7|u5|conteo\(3)))) # (!\u7|u5|conteo\(2) & (\u7|u5|conteo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(0),
	datab => \u7|u5|conteo\(1),
	datac => \u7|u5|conteo\(2),
	datad => \u7|u5|conteo\(3),
	combout => \u7|u6|WideOr1~combout\);

-- Location: LCCOMB_X58_Y51_N4
\u7|u6|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u6|WideOr0~combout\ = (\u7|u5|conteo\(1) & ((\u7|u5|conteo\(3)) # ((\u7|u5|conteo\(0) & \u7|u5|conteo\(2))))) # (!\u7|u5|conteo\(1) & ((\u7|u5|conteo\(2) $ (!\u7|u5|conteo\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u5|conteo\(0),
	datab => \u7|u5|conteo\(1),
	datac => \u7|u5|conteo\(2),
	datad => \u7|u5|conteo\(3),
	combout => \u7|u6|WideOr0~combout\);

-- Location: LCCOMB_X58_Y51_N16
\u7|u5|bandera~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|u5|bandera~feeder_combout\ = \u7|u5|Equal0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u7|u5|Equal0~10_combout\,
	combout => \u7|u5|bandera~feeder_combout\);

-- Location: FF_X58_Y51_N17
\u7|u5|bandera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u4|u2|bandera~clkctrl_outclk\,
	d => \u7|u5|bandera~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|u5|bandera~q\);

-- Location: CLKCTRL_G12
\u7|u5|bandera~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u7|u5|bandera~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u7|u5|bandera~clkctrl_outclk\);

-- Location: LCCOMB_X70_Y47_N0
\u8|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~0_combout\ = \u8|conteo\(0) $ (VCC)
-- \u8|Add0~1\ = CARRY(\u8|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(0),
	datad => VCC,
	combout => \u8|Add0~0_combout\,
	cout => \u8|Add0~1\);

-- Location: FF_X70_Y47_N1
\u8|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(0));

-- Location: LCCOMB_X70_Y47_N2
\u8|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~2_combout\ = (\u8|conteo\(1) & (!\u8|Add0~1\)) # (!\u8|conteo\(1) & ((\u8|Add0~1\) # (GND)))
-- \u8|Add0~3\ = CARRY((!\u8|Add0~1\) # (!\u8|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(1),
	datad => VCC,
	cin => \u8|Add0~1\,
	combout => \u8|Add0~2_combout\,
	cout => \u8|Add0~3\);

-- Location: LCCOMB_X70_Y47_N4
\u8|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~4_combout\ = (\u8|conteo\(2) & (\u8|Add0~3\ $ (GND))) # (!\u8|conteo\(2) & (!\u8|Add0~3\ & VCC))
-- \u8|Add0~5\ = CARRY((\u8|conteo\(2) & !\u8|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(2),
	datad => VCC,
	cin => \u8|Add0~3\,
	combout => \u8|Add0~4_combout\,
	cout => \u8|Add0~5\);

-- Location: LCCOMB_X70_Y47_N6
\u8|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~6_combout\ = (\u8|conteo\(3) & (!\u8|Add0~5\)) # (!\u8|conteo\(3) & ((\u8|Add0~5\) # (GND)))
-- \u8|Add0~7\ = CARRY((!\u8|Add0~5\) # (!\u8|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(3),
	datad => VCC,
	cin => \u8|Add0~5\,
	combout => \u8|Add0~6_combout\,
	cout => \u8|Add0~7\);

-- Location: LCCOMB_X71_Y47_N30
\u8|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|conteo~0_combout\ = (\u8|Add0~6_combout\ & !\u8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u8|Add0~6_combout\,
	datad => \u8|Equal0~10_combout\,
	combout => \u8|conteo~0_combout\);

-- Location: FF_X70_Y47_N7
\u8|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	asdata => \u8|conteo~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(3));

-- Location: LCCOMB_X70_Y47_N8
\u8|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~8_combout\ = (\u8|conteo\(4) & (\u8|Add0~7\ $ (GND))) # (!\u8|conteo\(4) & (!\u8|Add0~7\ & VCC))
-- \u8|Add0~9\ = CARRY((\u8|conteo\(4) & !\u8|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(4),
	datad => VCC,
	cin => \u8|Add0~7\,
	combout => \u8|Add0~8_combout\,
	cout => \u8|Add0~9\);

-- Location: FF_X70_Y47_N9
\u8|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(4));

-- Location: LCCOMB_X70_Y47_N10
\u8|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~10_combout\ = (\u8|conteo\(5) & (!\u8|Add0~9\)) # (!\u8|conteo\(5) & ((\u8|Add0~9\) # (GND)))
-- \u8|Add0~11\ = CARRY((!\u8|Add0~9\) # (!\u8|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(5),
	datad => VCC,
	cin => \u8|Add0~9\,
	combout => \u8|Add0~10_combout\,
	cout => \u8|Add0~11\);

-- Location: FF_X70_Y47_N11
\u8|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(5));

-- Location: LCCOMB_X70_Y47_N12
\u8|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~12_combout\ = (\u8|conteo\(6) & (\u8|Add0~11\ $ (GND))) # (!\u8|conteo\(6) & (!\u8|Add0~11\ & VCC))
-- \u8|Add0~13\ = CARRY((\u8|conteo\(6) & !\u8|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(6),
	datad => VCC,
	cin => \u8|Add0~11\,
	combout => \u8|Add0~12_combout\,
	cout => \u8|Add0~13\);

-- Location: FF_X70_Y47_N13
\u8|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(6));

-- Location: LCCOMB_X70_Y47_N14
\u8|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~14_combout\ = (\u8|conteo\(7) & (!\u8|Add0~13\)) # (!\u8|conteo\(7) & ((\u8|Add0~13\) # (GND)))
-- \u8|Add0~15\ = CARRY((!\u8|Add0~13\) # (!\u8|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(7),
	datad => VCC,
	cin => \u8|Add0~13\,
	combout => \u8|Add0~14_combout\,
	cout => \u8|Add0~15\);

-- Location: FF_X70_Y47_N15
\u8|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(7));

-- Location: LCCOMB_X70_Y47_N16
\u8|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~16_combout\ = (\u8|conteo\(8) & (\u8|Add0~15\ $ (GND))) # (!\u8|conteo\(8) & (!\u8|Add0~15\ & VCC))
-- \u8|Add0~17\ = CARRY((\u8|conteo\(8) & !\u8|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(8),
	datad => VCC,
	cin => \u8|Add0~15\,
	combout => \u8|Add0~16_combout\,
	cout => \u8|Add0~17\);

-- Location: FF_X70_Y47_N17
\u8|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(8));

-- Location: LCCOMB_X70_Y47_N18
\u8|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~18_combout\ = (\u8|conteo\(9) & (!\u8|Add0~17\)) # (!\u8|conteo\(9) & ((\u8|Add0~17\) # (GND)))
-- \u8|Add0~19\ = CARRY((!\u8|Add0~17\) # (!\u8|conteo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(9),
	datad => VCC,
	cin => \u8|Add0~17\,
	combout => \u8|Add0~18_combout\,
	cout => \u8|Add0~19\);

-- Location: FF_X70_Y47_N19
\u8|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(9));

-- Location: LCCOMB_X70_Y47_N20
\u8|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~20_combout\ = (\u8|conteo\(10) & (\u8|Add0~19\ $ (GND))) # (!\u8|conteo\(10) & (!\u8|Add0~19\ & VCC))
-- \u8|Add0~21\ = CARRY((\u8|conteo\(10) & !\u8|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(10),
	datad => VCC,
	cin => \u8|Add0~19\,
	combout => \u8|Add0~20_combout\,
	cout => \u8|Add0~21\);

-- Location: FF_X70_Y47_N21
\u8|conteo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(10));

-- Location: LCCOMB_X70_Y47_N22
\u8|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~22_combout\ = (\u8|conteo\(11) & (!\u8|Add0~21\)) # (!\u8|conteo\(11) & ((\u8|Add0~21\) # (GND)))
-- \u8|Add0~23\ = CARRY((!\u8|Add0~21\) # (!\u8|conteo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(11),
	datad => VCC,
	cin => \u8|Add0~21\,
	combout => \u8|Add0~22_combout\,
	cout => \u8|Add0~23\);

-- Location: FF_X70_Y47_N23
\u8|conteo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(11));

-- Location: LCCOMB_X70_Y47_N24
\u8|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~24_combout\ = (\u8|conteo\(12) & (\u8|Add0~23\ $ (GND))) # (!\u8|conteo\(12) & (!\u8|Add0~23\ & VCC))
-- \u8|Add0~25\ = CARRY((\u8|conteo\(12) & !\u8|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(12),
	datad => VCC,
	cin => \u8|Add0~23\,
	combout => \u8|Add0~24_combout\,
	cout => \u8|Add0~25\);

-- Location: FF_X70_Y47_N25
\u8|conteo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(12));

-- Location: LCCOMB_X70_Y47_N26
\u8|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~26_combout\ = (\u8|conteo\(13) & (!\u8|Add0~25\)) # (!\u8|conteo\(13) & ((\u8|Add0~25\) # (GND)))
-- \u8|Add0~27\ = CARRY((!\u8|Add0~25\) # (!\u8|conteo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(13),
	datad => VCC,
	cin => \u8|Add0~25\,
	combout => \u8|Add0~26_combout\,
	cout => \u8|Add0~27\);

-- Location: FF_X70_Y47_N27
\u8|conteo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(13));

-- Location: LCCOMB_X70_Y47_N28
\u8|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~28_combout\ = (\u8|conteo\(14) & (\u8|Add0~27\ $ (GND))) # (!\u8|conteo\(14) & (!\u8|Add0~27\ & VCC))
-- \u8|Add0~29\ = CARRY((\u8|conteo\(14) & !\u8|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(14),
	datad => VCC,
	cin => \u8|Add0~27\,
	combout => \u8|Add0~28_combout\,
	cout => \u8|Add0~29\);

-- Location: FF_X70_Y47_N29
\u8|conteo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(14));

-- Location: LCCOMB_X70_Y47_N30
\u8|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~30_combout\ = (\u8|conteo\(15) & (!\u8|Add0~29\)) # (!\u8|conteo\(15) & ((\u8|Add0~29\) # (GND)))
-- \u8|Add0~31\ = CARRY((!\u8|Add0~29\) # (!\u8|conteo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(15),
	datad => VCC,
	cin => \u8|Add0~29\,
	combout => \u8|Add0~30_combout\,
	cout => \u8|Add0~31\);

-- Location: FF_X70_Y47_N31
\u8|conteo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(15));

-- Location: LCCOMB_X70_Y46_N0
\u8|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~32_combout\ = (\u8|conteo\(16) & (\u8|Add0~31\ $ (GND))) # (!\u8|conteo\(16) & (!\u8|Add0~31\ & VCC))
-- \u8|Add0~33\ = CARRY((\u8|conteo\(16) & !\u8|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(16),
	datad => VCC,
	cin => \u8|Add0~31\,
	combout => \u8|Add0~32_combout\,
	cout => \u8|Add0~33\);

-- Location: FF_X70_Y46_N1
\u8|conteo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(16));

-- Location: LCCOMB_X70_Y46_N2
\u8|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~34_combout\ = (\u8|conteo\(17) & (!\u8|Add0~33\)) # (!\u8|conteo\(17) & ((\u8|Add0~33\) # (GND)))
-- \u8|Add0~35\ = CARRY((!\u8|Add0~33\) # (!\u8|conteo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(17),
	datad => VCC,
	cin => \u8|Add0~33\,
	combout => \u8|Add0~34_combout\,
	cout => \u8|Add0~35\);

-- Location: FF_X70_Y46_N3
\u8|conteo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(17));

-- Location: LCCOMB_X70_Y46_N4
\u8|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~36_combout\ = (\u8|conteo\(18) & (\u8|Add0~35\ $ (GND))) # (!\u8|conteo\(18) & (!\u8|Add0~35\ & VCC))
-- \u8|Add0~37\ = CARRY((\u8|conteo\(18) & !\u8|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(18),
	datad => VCC,
	cin => \u8|Add0~35\,
	combout => \u8|Add0~36_combout\,
	cout => \u8|Add0~37\);

-- Location: FF_X70_Y46_N5
\u8|conteo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(18));

-- Location: LCCOMB_X70_Y46_N6
\u8|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~38_combout\ = (\u8|conteo\(19) & (!\u8|Add0~37\)) # (!\u8|conteo\(19) & ((\u8|Add0~37\) # (GND)))
-- \u8|Add0~39\ = CARRY((!\u8|Add0~37\) # (!\u8|conteo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(19),
	datad => VCC,
	cin => \u8|Add0~37\,
	combout => \u8|Add0~38_combout\,
	cout => \u8|Add0~39\);

-- Location: FF_X70_Y46_N7
\u8|conteo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(19));

-- Location: LCCOMB_X70_Y46_N8
\u8|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~40_combout\ = (\u8|conteo\(20) & (\u8|Add0~39\ $ (GND))) # (!\u8|conteo\(20) & (!\u8|Add0~39\ & VCC))
-- \u8|Add0~41\ = CARRY((\u8|conteo\(20) & !\u8|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(20),
	datad => VCC,
	cin => \u8|Add0~39\,
	combout => \u8|Add0~40_combout\,
	cout => \u8|Add0~41\);

-- Location: FF_X70_Y46_N9
\u8|conteo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(20));

-- Location: LCCOMB_X70_Y46_N10
\u8|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~42_combout\ = (\u8|conteo\(21) & (!\u8|Add0~41\)) # (!\u8|conteo\(21) & ((\u8|Add0~41\) # (GND)))
-- \u8|Add0~43\ = CARRY((!\u8|Add0~41\) # (!\u8|conteo\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(21),
	datad => VCC,
	cin => \u8|Add0~41\,
	combout => \u8|Add0~42_combout\,
	cout => \u8|Add0~43\);

-- Location: FF_X70_Y46_N11
\u8|conteo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(21));

-- Location: LCCOMB_X70_Y46_N12
\u8|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~44_combout\ = (\u8|conteo\(22) & (\u8|Add0~43\ $ (GND))) # (!\u8|conteo\(22) & (!\u8|Add0~43\ & VCC))
-- \u8|Add0~45\ = CARRY((\u8|conteo\(22) & !\u8|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(22),
	datad => VCC,
	cin => \u8|Add0~43\,
	combout => \u8|Add0~44_combout\,
	cout => \u8|Add0~45\);

-- Location: FF_X70_Y46_N13
\u8|conteo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(22));

-- Location: LCCOMB_X70_Y46_N14
\u8|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~46_combout\ = (\u8|conteo\(23) & (!\u8|Add0~45\)) # (!\u8|conteo\(23) & ((\u8|Add0~45\) # (GND)))
-- \u8|Add0~47\ = CARRY((!\u8|Add0~45\) # (!\u8|conteo\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(23),
	datad => VCC,
	cin => \u8|Add0~45\,
	combout => \u8|Add0~46_combout\,
	cout => \u8|Add0~47\);

-- Location: FF_X70_Y46_N15
\u8|conteo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(23));

-- Location: LCCOMB_X70_Y46_N16
\u8|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~48_combout\ = (\u8|conteo\(24) & (\u8|Add0~47\ $ (GND))) # (!\u8|conteo\(24) & (!\u8|Add0~47\ & VCC))
-- \u8|Add0~49\ = CARRY((\u8|conteo\(24) & !\u8|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(24),
	datad => VCC,
	cin => \u8|Add0~47\,
	combout => \u8|Add0~48_combout\,
	cout => \u8|Add0~49\);

-- Location: FF_X70_Y46_N17
\u8|conteo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(24));

-- Location: LCCOMB_X70_Y46_N18
\u8|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~50_combout\ = (\u8|conteo\(25) & (!\u8|Add0~49\)) # (!\u8|conteo\(25) & ((\u8|Add0~49\) # (GND)))
-- \u8|Add0~51\ = CARRY((!\u8|Add0~49\) # (!\u8|conteo\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(25),
	datad => VCC,
	cin => \u8|Add0~49\,
	combout => \u8|Add0~50_combout\,
	cout => \u8|Add0~51\);

-- Location: FF_X70_Y46_N19
\u8|conteo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(25));

-- Location: LCCOMB_X70_Y46_N20
\u8|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~52_combout\ = (\u8|conteo\(26) & (\u8|Add0~51\ $ (GND))) # (!\u8|conteo\(26) & (!\u8|Add0~51\ & VCC))
-- \u8|Add0~53\ = CARRY((\u8|conteo\(26) & !\u8|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(26),
	datad => VCC,
	cin => \u8|Add0~51\,
	combout => \u8|Add0~52_combout\,
	cout => \u8|Add0~53\);

-- Location: FF_X70_Y46_N21
\u8|conteo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(26));

-- Location: LCCOMB_X70_Y46_N22
\u8|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~54_combout\ = (\u8|conteo\(27) & (!\u8|Add0~53\)) # (!\u8|conteo\(27) & ((\u8|Add0~53\) # (GND)))
-- \u8|Add0~55\ = CARRY((!\u8|Add0~53\) # (!\u8|conteo\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(27),
	datad => VCC,
	cin => \u8|Add0~53\,
	combout => \u8|Add0~54_combout\,
	cout => \u8|Add0~55\);

-- Location: FF_X70_Y46_N23
\u8|conteo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(27));

-- Location: LCCOMB_X71_Y46_N18
\u8|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~8_combout\ = (!\u8|conteo\(24) & (!\u8|conteo\(26) & (!\u8|conteo\(25) & !\u8|conteo\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(24),
	datab => \u8|conteo\(26),
	datac => \u8|conteo\(25),
	datad => \u8|conteo\(27),
	combout => \u8|Equal0~8_combout\);

-- Location: LCCOMB_X71_Y46_N30
\u8|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~6_combout\ = (!\u8|conteo\(21) & !\u8|conteo\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(21),
	datad => \u8|conteo\(20),
	combout => \u8|Equal0~6_combout\);

-- Location: LCCOMB_X71_Y46_N28
\u8|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~5_combout\ = (!\u8|conteo\(16) & (!\u8|conteo\(19) & (!\u8|conteo\(18) & !\u8|conteo\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(16),
	datab => \u8|conteo\(19),
	datac => \u8|conteo\(18),
	datad => \u8|conteo\(17),
	combout => \u8|Equal0~5_combout\);

-- Location: LCCOMB_X71_Y46_N0
\u8|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~7_combout\ = (!\u8|conteo\(22) & (!\u8|conteo\(23) & (\u8|Equal0~6_combout\ & \u8|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(22),
	datab => \u8|conteo\(23),
	datac => \u8|Equal0~6_combout\,
	datad => \u8|Equal0~5_combout\,
	combout => \u8|Equal0~7_combout\);

-- Location: LCCOMB_X70_Y46_N24
\u8|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~56_combout\ = (\u8|conteo\(28) & (\u8|Add0~55\ $ (GND))) # (!\u8|conteo\(28) & (!\u8|Add0~55\ & VCC))
-- \u8|Add0~57\ = CARRY((\u8|conteo\(28) & !\u8|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(28),
	datad => VCC,
	cin => \u8|Add0~55\,
	combout => \u8|Add0~56_combout\,
	cout => \u8|Add0~57\);

-- Location: FF_X70_Y46_N25
\u8|conteo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(28));

-- Location: LCCOMB_X70_Y46_N26
\u8|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~58_combout\ = (\u8|conteo\(29) & (!\u8|Add0~57\)) # (!\u8|conteo\(29) & ((\u8|Add0~57\) # (GND)))
-- \u8|Add0~59\ = CARRY((!\u8|Add0~57\) # (!\u8|conteo\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(29),
	datad => VCC,
	cin => \u8|Add0~57\,
	combout => \u8|Add0~58_combout\,
	cout => \u8|Add0~59\);

-- Location: FF_X70_Y46_N27
\u8|conteo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(29));

-- Location: LCCOMB_X70_Y46_N28
\u8|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~60_combout\ = (\u8|conteo\(30) & (\u8|Add0~59\ $ (GND))) # (!\u8|conteo\(30) & (!\u8|Add0~59\ & VCC))
-- \u8|Add0~61\ = CARRY((\u8|conteo\(30) & !\u8|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|conteo\(30),
	datad => VCC,
	cin => \u8|Add0~59\,
	combout => \u8|Add0~60_combout\,
	cout => \u8|Add0~61\);

-- Location: FF_X70_Y46_N29
\u8|conteo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(30));

-- Location: LCCOMB_X70_Y46_N30
\u8|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~62_combout\ = \u8|conteo\(31) $ (\u8|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(31),
	cin => \u8|Add0~61\,
	combout => \u8|Add0~62_combout\);

-- Location: FF_X70_Y46_N31
\u8|conteo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(31));

-- Location: LCCOMB_X71_Y46_N24
\u8|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~9_combout\ = (!\u8|conteo\(29) & (!\u8|conteo\(31) & (!\u8|conteo\(28) & !\u8|conteo\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(29),
	datab => \u8|conteo\(31),
	datac => \u8|conteo\(28),
	datad => \u8|conteo\(30),
	combout => \u8|Equal0~9_combout\);

-- Location: LCCOMB_X71_Y47_N22
\u8|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~3_combout\ = (!\u8|conteo\(13) & (!\u8|conteo\(14) & (!\u8|conteo\(15) & !\u8|conteo\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(13),
	datab => \u8|conteo\(14),
	datac => \u8|conteo\(15),
	datad => \u8|conteo\(12),
	combout => \u8|Equal0~3_combout\);

-- Location: LCCOMB_X71_Y47_N4
\u8|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~2_combout\ = (!\u8|conteo\(8) & (!\u8|conteo\(10) & (!\u8|conteo\(11) & !\u8|conteo\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(8),
	datab => \u8|conteo\(10),
	datac => \u8|conteo\(11),
	datad => \u8|conteo\(9),
	combout => \u8|Equal0~2_combout\);

-- Location: LCCOMB_X71_Y47_N8
\u8|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~0_combout\ = (\u8|conteo\(0) & (!\u8|conteo\(2) & (!\u8|conteo\(1) & \u8|conteo\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(0),
	datab => \u8|conteo\(2),
	datac => \u8|conteo\(1),
	datad => \u8|conteo\(3),
	combout => \u8|Equal0~0_combout\);

-- Location: LCCOMB_X71_Y47_N6
\u8|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~1_combout\ = (!\u8|conteo\(4) & (!\u8|conteo\(7) & (!\u8|conteo\(6) & !\u8|conteo\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(4),
	datab => \u8|conteo\(7),
	datac => \u8|conteo\(6),
	datad => \u8|conteo\(5),
	combout => \u8|Equal0~1_combout\);

-- Location: LCCOMB_X71_Y47_N28
\u8|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~4_combout\ = (\u8|Equal0~3_combout\ & (\u8|Equal0~2_combout\ & (\u8|Equal0~0_combout\ & \u8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~3_combout\,
	datab => \u8|Equal0~2_combout\,
	datac => \u8|Equal0~0_combout\,
	datad => \u8|Equal0~1_combout\,
	combout => \u8|Equal0~4_combout\);

-- Location: LCCOMB_X71_Y47_N10
\u8|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~10_combout\ = (\u8|Equal0~8_combout\ & (\u8|Equal0~7_combout\ & (\u8|Equal0~9_combout\ & \u8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~8_combout\,
	datab => \u8|Equal0~7_combout\,
	datac => \u8|Equal0~9_combout\,
	datad => \u8|Equal0~4_combout\,
	combout => \u8|Equal0~10_combout\);

-- Location: LCCOMB_X71_Y47_N20
\u8|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|conteo~1_combout\ = (\u8|Add0~2_combout\ & !\u8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Add0~2_combout\,
	datad => \u8|Equal0~10_combout\,
	combout => \u8|conteo~1_combout\);

-- Location: FF_X70_Y47_N3
\u8|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	asdata => \u8|conteo~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(1));

-- Location: FF_X70_Y47_N5
\u8|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|conteo\(2));

-- Location: LCCOMB_X71_Y47_N12
\u9|WideOr5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9|WideOr5~combout\ = (\u8|conteo\(1) & (((\u8|conteo\(3))))) # (!\u8|conteo\(1) & (\u8|conteo\(2) $ (((\u8|conteo\(0) & !\u8|conteo\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(0),
	datab => \u8|conteo\(2),
	datac => \u8|conteo\(1),
	datad => \u8|conteo\(3),
	combout => \u9|WideOr5~combout\);

-- Location: LCCOMB_X71_Y47_N18
\u9|WideOr4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9|WideOr4~2_combout\ = (\u8|conteo\(2) & ((\u8|conteo\(3)) # (\u8|conteo\(0) $ (\u8|conteo\(1))))) # (!\u8|conteo\(2) & (((\u8|conteo\(1) & \u8|conteo\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(0),
	datab => \u8|conteo\(2),
	datac => \u8|conteo\(1),
	datad => \u8|conteo\(3),
	combout => \u9|WideOr4~2_combout\);

-- Location: LCCOMB_X71_Y47_N26
\u9|b[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9|b\(2) = (\u8|conteo\(2) & (((\u8|conteo\(3))))) # (!\u8|conteo\(2) & (\u8|conteo\(1) & ((\u8|conteo\(3)) # (!\u8|conteo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(0),
	datab => \u8|conteo\(2),
	datac => \u8|conteo\(1),
	datad => \u8|conteo\(3),
	combout => \u9|b\(2));

-- Location: LCCOMB_X71_Y47_N0
\u9|WideOr3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9|WideOr3~combout\ = (\u8|conteo\(0) & ((\u8|conteo\(3)) # (\u8|conteo\(2) $ (!\u8|conteo\(1))))) # (!\u8|conteo\(0) & ((\u8|conteo\(1) & ((\u8|conteo\(3)))) # (!\u8|conteo\(1) & (\u8|conteo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(0),
	datab => \u8|conteo\(2),
	datac => \u8|conteo\(1),
	datad => \u8|conteo\(3),
	combout => \u9|WideOr3~combout\);

-- Location: LCCOMB_X71_Y47_N24
\u9|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9|WideOr2~0_combout\ = (\u8|conteo\(0)) # ((\u8|conteo\(1) & ((\u8|conteo\(3)))) # (!\u8|conteo\(1) & (\u8|conteo\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(0),
	datab => \u8|conteo\(2),
	datac => \u8|conteo\(1),
	datad => \u8|conteo\(3),
	combout => \u9|WideOr2~0_combout\);

-- Location: LCCOMB_X71_Y47_N16
\u9|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9|WideOr1~combout\ = (\u8|conteo\(0) & ((\u8|conteo\(1)) # (\u8|conteo\(2) $ (!\u8|conteo\(3))))) # (!\u8|conteo\(0) & ((\u8|conteo\(2) & ((\u8|conteo\(3)))) # (!\u8|conteo\(2) & (\u8|conteo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(0),
	datab => \u8|conteo\(2),
	datac => \u8|conteo\(1),
	datad => \u8|conteo\(3),
	combout => \u9|WideOr1~combout\);

-- Location: LCCOMB_X71_Y47_N2
\u9|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9|WideOr0~combout\ = (\u8|conteo\(2) & ((\u8|conteo\(3)) # ((\u8|conteo\(0) & \u8|conteo\(1))))) # (!\u8|conteo\(2) & ((\u8|conteo\(1) $ (!\u8|conteo\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|conteo\(0),
	datab => \u8|conteo\(2),
	datac => \u8|conteo\(1),
	datad => \u8|conteo\(3),
	combout => \u9|WideOr0~combout\);

-- Location: FF_X71_Y47_N11
\u8|bandera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|u5|bandera~clkctrl_outclk\,
	d => \u8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|bandera~q\);

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

ww_ssg0(0) <= \ssg0[0]~output_o\;

ww_ssg0(1) <= \ssg0[1]~output_o\;

ww_ssg0(2) <= \ssg0[2]~output_o\;

ww_ssg0(3) <= \ssg0[3]~output_o\;

ww_ssg0(4) <= \ssg0[4]~output_o\;

ww_ssg0(5) <= \ssg0[5]~output_o\;

ww_ssg0(6) <= \ssg0[6]~output_o\;

ww_ssg1(0) <= \ssg1[0]~output_o\;

ww_ssg1(1) <= \ssg1[1]~output_o\;

ww_ssg1(2) <= \ssg1[2]~output_o\;

ww_ssg1(3) <= \ssg1[3]~output_o\;

ww_ssg1(4) <= \ssg1[4]~output_o\;

ww_ssg1(5) <= \ssg1[5]~output_o\;

ww_ssg1(6) <= \ssg1[6]~output_o\;

ww_ssg2(0) <= \ssg2[0]~output_o\;

ww_ssg2(1) <= \ssg2[1]~output_o\;

ww_ssg2(2) <= \ssg2[2]~output_o\;

ww_ssg2(3) <= \ssg2[3]~output_o\;

ww_ssg2(4) <= \ssg2[4]~output_o\;

ww_ssg2(5) <= \ssg2[5]~output_o\;

ww_ssg2(6) <= \ssg2[6]~output_o\;

ww_banderaSal <= \banderaSal~output_o\;
END structure;


