-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/17/2020 23:30:17"

-- 
-- Device: Altera 10M08DAF484C8GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


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

ENTITY 	pipemult IS
    PORT (
	Cout : OUT std_logic;
	reset_n : IN std_logic;
	clk1 : IN std_logic;
	Cin : IN std_logic;
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	ALUout : OUT std_logic_vector(15 DOWNTO 0);
	wren : IN std_logic;
	dataa : IN std_logic_vector(7 DOWNTO 0);
	datab : IN std_logic_vector(7 DOWNTO 0);
	rdaddress : IN std_logic_vector(4 DOWNTO 0);
	wraddress : IN std_logic_vector(4 DOWNTO 0);
	Sum : OUT std_logic_vector(31 DOWNTO 0);
	IR : IN std_logic_vector(1 DOWNTO 0);
	CCout : OUT std_logic_vector(5 DOWNTO 0);
	q : OUT std_logic_vector(15 DOWNTO 0)
	);
END pipemult;

-- Design Ports Information
-- Cout	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[15]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[14]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[13]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[12]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[11]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[10]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[9]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[8]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[7]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[6]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[5]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[4]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[2]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[1]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ALUout[0]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[31]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[30]	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[29]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[28]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[27]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[26]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[25]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[24]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[23]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[22]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[21]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[20]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[19]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[18]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[17]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[16]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[15]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[14]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[13]	=>  Location: PIN_P10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[12]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[11]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[10]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[9]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[8]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[7]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[6]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[5]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[4]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[3]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[2]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[1]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sum[0]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- CCout[5]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- CCout[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- CCout[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- CCout[2]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- CCout[1]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- CCout[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[15]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[14]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[13]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[12]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[11]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[10]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[9]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[8]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[7]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[6]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[5]	=>  Location: PIN_P13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[3]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[2]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[1]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- q[0]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- clk1	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- reset_n	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[6]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[4]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[4]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[1]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[0]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Cin	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[3]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[5]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[7]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[8]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[8]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[22]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[22]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[20]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[20]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[18]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[18]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[16]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[14]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[14]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[12]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[10]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[10]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[9]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[9]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[11]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[13]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[13]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[15]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[15]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[17]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[17]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[19]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[19]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[21]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[21]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[23]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[23]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[24]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[24]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- wren	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wraddress[0]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- wraddress[1]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- wraddress[2]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- wraddress[3]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- wraddress[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[25]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[25]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[26]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[26]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[27]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[27]	=>  Location: PIN_M14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[28]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[28]	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[29]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[29]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[30]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[30]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- A[31]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- B[31]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rdaddress[0]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rdaddress[1]	=>  Location: PIN_P20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rdaddress[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rdaddress[3]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rdaddress[4]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- dataa[0]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- dataa[1]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- dataa[2]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- dataa[3]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- dataa[4]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- dataa[5]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- dataa[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- dataa[7]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- datab[0]	=>  Location: PIN_P21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- datab[1]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- datab[2]	=>  Location: PIN_P19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- datab[3]	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- datab[4]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- datab[5]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- datab[6]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- datab[7]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF pipemult IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUout : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_wren : std_logic;
SIGNAL ww_dataa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_datab : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rdaddress : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_wraddress : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Sum : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_IR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CCout : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst4|inst4|inst7|inst5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \ALUout[15]~output_o\ : std_logic;
SIGNAL \ALUout[14]~output_o\ : std_logic;
SIGNAL \ALUout[13]~output_o\ : std_logic;
SIGNAL \ALUout[12]~output_o\ : std_logic;
SIGNAL \ALUout[11]~output_o\ : std_logic;
SIGNAL \ALUout[10]~output_o\ : std_logic;
SIGNAL \ALUout[9]~output_o\ : std_logic;
SIGNAL \ALUout[8]~output_o\ : std_logic;
SIGNAL \ALUout[7]~output_o\ : std_logic;
SIGNAL \ALUout[6]~output_o\ : std_logic;
SIGNAL \ALUout[5]~output_o\ : std_logic;
SIGNAL \ALUout[4]~output_o\ : std_logic;
SIGNAL \ALUout[3]~output_o\ : std_logic;
SIGNAL \ALUout[2]~output_o\ : std_logic;
SIGNAL \ALUout[1]~output_o\ : std_logic;
SIGNAL \ALUout[0]~output_o\ : std_logic;
SIGNAL \Sum[31]~output_o\ : std_logic;
SIGNAL \Sum[30]~output_o\ : std_logic;
SIGNAL \Sum[29]~output_o\ : std_logic;
SIGNAL \Sum[28]~output_o\ : std_logic;
SIGNAL \Sum[27]~output_o\ : std_logic;
SIGNAL \Sum[26]~output_o\ : std_logic;
SIGNAL \Sum[25]~output_o\ : std_logic;
SIGNAL \Sum[24]~output_o\ : std_logic;
SIGNAL \Sum[23]~output_o\ : std_logic;
SIGNAL \Sum[22]~output_o\ : std_logic;
SIGNAL \Sum[21]~output_o\ : std_logic;
SIGNAL \Sum[20]~output_o\ : std_logic;
SIGNAL \Sum[19]~output_o\ : std_logic;
SIGNAL \Sum[18]~output_o\ : std_logic;
SIGNAL \Sum[17]~output_o\ : std_logic;
SIGNAL \Sum[16]~output_o\ : std_logic;
SIGNAL \Sum[15]~output_o\ : std_logic;
SIGNAL \Sum[14]~output_o\ : std_logic;
SIGNAL \Sum[13]~output_o\ : std_logic;
SIGNAL \Sum[12]~output_o\ : std_logic;
SIGNAL \Sum[11]~output_o\ : std_logic;
SIGNAL \Sum[10]~output_o\ : std_logic;
SIGNAL \Sum[9]~output_o\ : std_logic;
SIGNAL \Sum[8]~output_o\ : std_logic;
SIGNAL \Sum[7]~output_o\ : std_logic;
SIGNAL \Sum[6]~output_o\ : std_logic;
SIGNAL \Sum[5]~output_o\ : std_logic;
SIGNAL \Sum[4]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \CCout[5]~output_o\ : std_logic;
SIGNAL \CCout[4]~output_o\ : std_logic;
SIGNAL \CCout[3]~output_o\ : std_logic;
SIGNAL \CCout[2]~output_o\ : std_logic;
SIGNAL \CCout[1]~output_o\ : std_logic;
SIGNAL \CCout[0]~output_o\ : std_logic;
SIGNAL \q[15]~output_o\ : std_logic;
SIGNAL \q[14]~output_o\ : std_logic;
SIGNAL \q[13]~output_o\ : std_logic;
SIGNAL \q[12]~output_o\ : std_logic;
SIGNAL \q[11]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \clk1~input_o\ : std_logic;
SIGNAL \clk1~inputclkctrl_outclk\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \inst11[30]~feeder_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \inst12[30]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst4|inst6|inst5~0_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \inst12[31]~feeder_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst4|inst5~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \inst12[29]~feeder_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \inst12[26]~feeder_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \inst11[26]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst4|inst2|inst5~0_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \inst12[24]~feeder_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst|inst5~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \inst12[25]~feeder_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst6|inst5~0_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \inst11[21]~feeder_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst4|inst5~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst2|inst5~0_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \inst12[16]~feeder_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \inst11[16]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst3|inst|inst5~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \inst11[17]~feeder_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \inst11[15]~feeder_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \inst11[14]~feeder_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \inst12[14]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst2|inst6|inst5~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \inst11[13]~feeder_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \inst12[12]~feeder_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \inst11[12]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst2|inst4|inst5~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \inst11[10]~feeder_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \inst12[10]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst2|inst2|inst5~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \inst12[11]~feeder_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \inst12[9]~feeder_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \inst11[8]~feeder_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \inst12[8]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst2|inst|inst5~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \inst11[6]~feeder_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \inst12[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst|inst6|inst5~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst12[7]~feeder_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \inst12[5]~feeder_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst4|inst5~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst2|inst5~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst12[0]~feeder_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst11[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst5~0_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \inst13~q\ : std_logic;
SIGNAL \inst4|inst|inst|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst5~2_combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst4|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst|inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst6|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst|inst7|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst2|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst4|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst6|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst7|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst3|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst2|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst3|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst4|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst3|inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst6|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst3|inst7|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst4|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst2|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst4|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst4|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst4|inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst6|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst4|inst7|inst5~combout\ : std_logic;
SIGNAL \inst10~q\ : std_logic;
SIGNAL \IR[1]~input_o\ : std_logic;
SIGNAL \inst6[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst4|inst7|inst5~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|inst2|inst|inst2~combout\ : std_logic;
SIGNAL \inst9[15]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[6]|sr[0][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[8]|sr[0][8]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[10]|sr[0][10]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][14]~q\ : std_logic;
SIGNAL \IR[0]~input_o\ : std_logic;
SIGNAL \inst6[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst4|inst|inst2~combout\ : std_logic;
SIGNAL \wren~input_o\ : std_logic;
SIGNAL \dataa[0]~input_o\ : std_logic;
SIGNAL \dataa[1]~input_o\ : std_logic;
SIGNAL \dataa[2]~input_o\ : std_logic;
SIGNAL \dataa[3]~input_o\ : std_logic;
SIGNAL \dataa[4]~input_o\ : std_logic;
SIGNAL \dataa[5]~input_o\ : std_logic;
SIGNAL \dataa[6]~input_o\ : std_logic;
SIGNAL \dataa[7]~input_o\ : std_logic;
SIGNAL \datab[0]~input_o\ : std_logic;
SIGNAL \datab[1]~input_o\ : std_logic;
SIGNAL \datab[2]~input_o\ : std_logic;
SIGNAL \datab[3]~input_o\ : std_logic;
SIGNAL \datab[4]~input_o\ : std_logic;
SIGNAL \datab[5]~input_o\ : std_logic;
SIGNAL \datab[6]~input_o\ : std_logic;
SIGNAL \datab[7]~input_o\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \wraddress[0]~input_o\ : std_logic;
SIGNAL \wraddress[1]~input_o\ : std_logic;
SIGNAL \wraddress[2]~input_o\ : std_logic;
SIGNAL \wraddress[3]~input_o\ : std_logic;
SIGNAL \wraddress[4]~input_o\ : std_logic;
SIGNAL \rdaddress[0]~input_o\ : std_logic;
SIGNAL \rdaddress[1]~input_o\ : std_logic;
SIGNAL \inst1|rdaddress_reg[1]~feeder_combout\ : std_logic;
SIGNAL \rdaddress[2]~input_o\ : std_logic;
SIGNAL \inst1|rdaddress_reg[2]~feeder_combout\ : std_logic;
SIGNAL \rdaddress[3]~input_o\ : std_logic;
SIGNAL \inst1|rdaddress_reg[3]~feeder_combout\ : std_logic;
SIGNAL \rdaddress[4]~input_o\ : std_logic;
SIGNAL \inst1|rdaddress_reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|Mux0~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~44_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[0]|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~45_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[0]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][29]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][28]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][28]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[6]|sr[0][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[10]|sr[0][9]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][13]~q\ : std_logic;
SIGNAL \inst4|inst4|inst1|inst2~combout\ : std_logic;
SIGNAL \inst4|inst2|inst1|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Mux1~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst2|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~38_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~39_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][27]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][26]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[4]|sr[0][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[6]|sr[0][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[8]|sr[0][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[10]|sr[0][8]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][12]~q\ : std_logic;
SIGNAL \inst4|inst4|inst2|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~1_combout\ : std_logic;
SIGNAL \inst4|inst4|inst3|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~41_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[2]|sr[0][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~52_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[2]|sr[0][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~42_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[2]|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~43_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[2]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][25]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][25]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][24]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][24]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][24]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][11]~q\ : std_logic;
SIGNAL \inst4|inst2|inst3|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst4|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~34_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][23]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][23]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][22]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][22]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[6]|sr[0][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[8]|sr[0][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][10]~q\ : std_logic;
SIGNAL \inst4|inst4|inst4|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst8|Mux4~1_combout\ : std_logic;
SIGNAL \inst4|inst4|inst5|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]_OTERM5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]_OTERM3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]_OTERM1\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~51_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[4]|sr[0][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~36_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[4]|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~37_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[4]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][21]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][21]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][21]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][20]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][20]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][20]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~15_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[8]|sr[0][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][9]~q\ : std_logic;
SIGNAL \inst4|inst2|inst5|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst6|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~30_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~3_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][19]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][19]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][19]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][18]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][18]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][18]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~17_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][8]~q\ : std_logic;
SIGNAL \inst4|inst4|inst6|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst8|Mux6~1_combout\ : std_logic;
SIGNAL \inst4|inst4|inst7|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]_OTERM15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]_OTERM13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]_OTERM11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]_OTERM9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]_OTERM7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~50_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~32_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~33_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[6]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][17]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][17]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][17]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][17]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][16]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][16]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][16]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][16]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~19_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[10]|sr[0][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][7]~q\ : std_logic;
SIGNAL \inst4|inst2|inst7|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux7~0_combout\ : std_logic;
SIGNAL \inst8|Mux7~1_combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~26_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~3_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~5_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][15]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][15]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][15]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][15]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][15]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][14]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][14]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][14]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][14]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][14]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~21_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][6]~q\ : std_logic;
SIGNAL \inst4|inst3|inst|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux8~0_combout\ : std_logic;
SIGNAL \inst8|Mux8~1_combout\ : std_logic;
SIGNAL \inst4|inst3|inst1|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]_OTERM29\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]_OTERM27\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]_OTERM25\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]_OTERM23\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]_OTERM21\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]_OTERM19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]_OTERM17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~49_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~28_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~29_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[8]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][13]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][13]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][13]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][13]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][13]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][12]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][12]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][12]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][12]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][12]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][12]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~23_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][5]~q\ : std_logic;
SIGNAL \inst4|inst|inst1|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux9~0_combout\ : std_logic;
SIGNAL \inst8|Mux9~1_combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~22_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~3_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~5_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~7_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][11]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][11]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][11]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][11]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][11]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][11]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][11]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][11]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][10]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][10]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][10]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][10]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][10]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][10]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][10]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][10]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][10]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~25_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][4]~q\ : std_logic;
SIGNAL \inst4|inst3|inst2|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux10~0_combout\ : std_logic;
SIGNAL \inst8|Mux10~1_combout\ : std_logic;
SIGNAL \inst4|inst3|inst3|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]_OTERM47\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]_OTERM45\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]_OTERM43\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]_OTERM41\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]_OTERM39\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]_OTERM37\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]_OTERM35\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]_OTERM33\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]_OTERM31\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~48_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~24_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~25_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[10]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][9]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][9]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][9]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][9]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][9]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][9]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][9]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][9]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[5][9]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][8]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][8]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][8]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][8]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][8]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][8]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][8]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][8]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[5][8]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~27_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][3]~q\ : std_logic;
SIGNAL \inst4|inst|inst3|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux11~0_combout\ : std_logic;
SIGNAL \inst8|Mux11~1_combout\ : std_logic;
SIGNAL \inst4|inst|inst4|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~3_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~5_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~7_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~9_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][7]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][7]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][7]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][7]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][7]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][7]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][7]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[5][7]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][6]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][6]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[5][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~29_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][2]~q\ : std_logic;
SIGNAL \inst4|inst3|inst4|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux12~0_combout\ : std_logic;
SIGNAL \inst8|Mux12~1_combout\ : std_logic;
SIGNAL \inst4|inst3|inst5|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]_OTERM69\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]_OTERM67\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]_OTERM65\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]_OTERM63\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]_OTERM61\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]_OTERM59\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]_OTERM57\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]_OTERM55\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]_OTERM53\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]_OTERM51\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]_OTERM49\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~47_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~21_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[12]|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][5]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][5]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][5]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][5]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[5][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[6][5]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][4]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][4]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][4]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[5][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[6][4]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~31_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][1]~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][1]~q\ : std_logic;
SIGNAL \inst4|inst|inst5|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux13~0_combout\ : std_logic;
SIGNAL \inst8|Mux13~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]~3_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]~5_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]~7_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]~9_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]~11_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][3]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][3]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][3]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][3]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[5][3]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[5][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[6][3]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][2]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][2]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][2]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][2]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[5][2]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[5][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[6][2]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~33_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][0]~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|b_dffe[14]|sr[0][0]~q\ : std_logic;
SIGNAL \inst4|inst|inst6|inst2~combout\ : std_logic;
SIGNAL \inst9[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst3|inst6|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux14~0_combout\ : std_logic;
SIGNAL \inst8|Mux14~1_combout\ : std_logic;
SIGNAL \inst4|inst3|inst7|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]_OTERM95\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]_OTERM93\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]_OTERM91\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]_OTERM89\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]_OTERM87\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]_OTERM85\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]_OTERM83\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]_OTERM81\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]_OTERM79\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]_OTERM77\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]_OTERM75\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]_OTERM73\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]_OTERM71\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~46_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][1]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][1]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][1]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[5][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[6][1]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[0][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[1][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[2][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][0]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[3][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][0]~feeder_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[4][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[5][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|a_delay|sr[6][0]~q\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~33_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~35_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_RTM099_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_OTERM97\ : std_logic;
SIGNAL \inst4|inst|inst7|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux15~0_combout\ : std_logic;
SIGNAL \inst8|Mux15~1_combout\ : std_logic;
SIGNAL \inst5|LessThan3~1_cout\ : std_logic;
SIGNAL \inst5|LessThan3~3_cout\ : std_logic;
SIGNAL \inst5|LessThan3~5_cout\ : std_logic;
SIGNAL \inst5|LessThan3~7_cout\ : std_logic;
SIGNAL \inst5|LessThan3~9_cout\ : std_logic;
SIGNAL \inst5|LessThan3~11_cout\ : std_logic;
SIGNAL \inst5|LessThan3~13_cout\ : std_logic;
SIGNAL \inst5|LessThan3~15_cout\ : std_logic;
SIGNAL \inst5|LessThan3~17_cout\ : std_logic;
SIGNAL \inst5|LessThan3~19_cout\ : std_logic;
SIGNAL \inst5|LessThan3~21_cout\ : std_logic;
SIGNAL \inst5|LessThan3~23_cout\ : std_logic;
SIGNAL \inst5|LessThan3~25_cout\ : std_logic;
SIGNAL \inst5|LessThan3~27_cout\ : std_logic;
SIGNAL \inst5|LessThan3~29_cout\ : std_logic;
SIGNAL \inst5|LessThan3~31_cout\ : std_logic;
SIGNAL \inst5|LessThan3~33_cout\ : std_logic;
SIGNAL \inst5|LessThan3~35_cout\ : std_logic;
SIGNAL \inst5|LessThan3~37_cout\ : std_logic;
SIGNAL \inst5|LessThan3~39_cout\ : std_logic;
SIGNAL \inst5|LessThan3~41_cout\ : std_logic;
SIGNAL \inst5|LessThan3~43_cout\ : std_logic;
SIGNAL \inst5|LessThan3~45_cout\ : std_logic;
SIGNAL \inst5|LessThan3~47_cout\ : std_logic;
SIGNAL \inst5|LessThan3~49_cout\ : std_logic;
SIGNAL \inst5|LessThan3~51_cout\ : std_logic;
SIGNAL \inst5|LessThan3~53_cout\ : std_logic;
SIGNAL \inst5|LessThan3~55_cout\ : std_logic;
SIGNAL \inst5|LessThan3~57_cout\ : std_logic;
SIGNAL \inst5|LessThan3~59_cout\ : std_logic;
SIGNAL \inst5|LessThan3~61_cout\ : std_logic;
SIGNAL \inst5|LessThan3~62_combout\ : std_logic;
SIGNAL \inst5|Equal0~15_combout\ : std_logic;
SIGNAL \inst5|Equal0~16_combout\ : std_logic;
SIGNAL \inst5|Equal0~18_combout\ : std_logic;
SIGNAL \inst5|Equal0~17_combout\ : std_logic;
SIGNAL \inst5|Equal0~19_combout\ : std_logic;
SIGNAL \inst5|Equal0~11_combout\ : std_logic;
SIGNAL \inst5|Equal0~10_combout\ : std_logic;
SIGNAL \inst5|Equal0~13_combout\ : std_logic;
SIGNAL \inst5|Equal0~12_combout\ : std_logic;
SIGNAL \inst5|Equal0~14_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Equal0~8_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|Equal0~7_combout\ : std_logic;
SIGNAL \inst5|Equal0~9_combout\ : std_logic;
SIGNAL \inst5|Equal0~20_combout\ : std_logic;
SIGNAL \inst5|LessThan2~1_cout\ : std_logic;
SIGNAL \inst5|LessThan2~3_cout\ : std_logic;
SIGNAL \inst5|LessThan2~5_cout\ : std_logic;
SIGNAL \inst5|LessThan2~7_cout\ : std_logic;
SIGNAL \inst5|LessThan2~9_cout\ : std_logic;
SIGNAL \inst5|LessThan2~11_cout\ : std_logic;
SIGNAL \inst5|LessThan2~13_cout\ : std_logic;
SIGNAL \inst5|LessThan2~15_cout\ : std_logic;
SIGNAL \inst5|LessThan2~17_cout\ : std_logic;
SIGNAL \inst5|LessThan2~19_cout\ : std_logic;
SIGNAL \inst5|LessThan2~21_cout\ : std_logic;
SIGNAL \inst5|LessThan2~23_cout\ : std_logic;
SIGNAL \inst5|LessThan2~25_cout\ : std_logic;
SIGNAL \inst5|LessThan2~27_cout\ : std_logic;
SIGNAL \inst5|LessThan2~29_cout\ : std_logic;
SIGNAL \inst5|LessThan2~31_cout\ : std_logic;
SIGNAL \inst5|LessThan2~33_cout\ : std_logic;
SIGNAL \inst5|LessThan2~35_cout\ : std_logic;
SIGNAL \inst5|LessThan2~37_cout\ : std_logic;
SIGNAL \inst5|LessThan2~39_cout\ : std_logic;
SIGNAL \inst5|LessThan2~41_cout\ : std_logic;
SIGNAL \inst5|LessThan2~43_cout\ : std_logic;
SIGNAL \inst5|LessThan2~45_cout\ : std_logic;
SIGNAL \inst5|LessThan2~47_cout\ : std_logic;
SIGNAL \inst5|LessThan2~49_cout\ : std_logic;
SIGNAL \inst5|LessThan2~51_cout\ : std_logic;
SIGNAL \inst5|LessThan2~53_cout\ : std_logic;
SIGNAL \inst5|LessThan2~55_cout\ : std_logic;
SIGNAL \inst5|LessThan2~57_cout\ : std_logic;
SIGNAL \inst5|LessThan2~59_cout\ : std_logic;
SIGNAL \inst5|LessThan2~61_cout\ : std_logic;
SIGNAL \inst5|LessThan2~62_combout\ : std_logic;
SIGNAL inst2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|result\ : std_logic_vector(15 DOWNTO 0);
SIGNAL inst9 : std_logic_vector(31 DOWNTO 0);
SIGNAL inst6 : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\ : std_logic_vector(1 DOWNTO 0);
SIGNAL inst7 : std_logic_vector(5 DOWNTO 0);
SIGNAL inst12 : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|rdaddress_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL inst11 : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|ALT_INV_Equal0~20_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan2~62_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan3~62_combout\ : std_logic;
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Cout <= ww_Cout;
ww_reset_n <= reset_n;
ww_clk1 <= clk1;
ww_Cin <= Cin;
ww_A <= A;
ww_B <= B;
ALUout <= ww_ALUout;
ww_wren <= wren;
ww_dataa <= dataa;
ww_datab <= datab;
ww_rdaddress <= rdaddress;
ww_wraddress <= wraddress;
Sum <= ww_Sum;
ww_IR <= IR;
CCout <= ww_CCout;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst|lpm_mult_component|auto_generated|result\(15) & 
\inst|lpm_mult_component|auto_generated|result\(14) & \inst|lpm_mult_component|auto_generated|result\(13) & \inst|lpm_mult_component|auto_generated|result\(12) & \inst|lpm_mult_component|auto_generated|result\(11) & 
\inst|lpm_mult_component|auto_generated|result\(10) & \inst|lpm_mult_component|auto_generated|result\(9) & \inst|lpm_mult_component|auto_generated|result\(8) & \inst|lpm_mult_component|auto_generated|result\(7) & 
\inst|lpm_mult_component|auto_generated|result\(6) & \inst|lpm_mult_component|auto_generated|result\(5) & \inst|lpm_mult_component|auto_generated|result\(4) & \inst|lpm_mult_component|auto_generated|result\(3) & 
\inst|lpm_mult_component|auto_generated|result\(2) & \inst|lpm_mult_component|auto_generated|result\(1) & \inst|lpm_mult_component|auto_generated|result\(0));

\inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\wraddress[4]~input_o\ & \wraddress[3]~input_o\ & \wraddress[2]~input_o\ & \wraddress[1]~input_o\ & \wraddress[0]~input_o\);

\inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst1|rdaddress_reg\(4) & \inst1|rdaddress_reg\(3) & \inst1|rdaddress_reg\(2) & \inst1|rdaddress_reg\(1) & \inst1|rdaddress_reg\(0));

inst2(0) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
inst2(1) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
inst2(2) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
inst2(3) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
inst2(4) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
inst2(5) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
inst2(6) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
inst2(7) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
inst2(8) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
inst2(9) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
inst2(10) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
inst2(11) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
inst2(12) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
inst2(13) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
inst2(14) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
inst2(15) <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ <= (\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ & 
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ & 
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ & 
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ & 
\inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ & \inst|lpm_mult_component|auto_generated|mac_mult1~3\ & \inst|lpm_mult_component|auto_generated|mac_mult1~2\);

\inst|lpm_mult_component|auto_generated|mac_out2~0\ <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst|lpm_mult_component|auto_generated|mac_out2~1\ <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst|lpm_mult_component|auto_generated|result\(0) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst|lpm_mult_component|auto_generated|result\(1) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst|lpm_mult_component|auto_generated|result\(2) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst|lpm_mult_component|auto_generated|result\(3) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst|lpm_mult_component|auto_generated|result\(4) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst|lpm_mult_component|auto_generated|result\(5) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst|lpm_mult_component|auto_generated|result\(6) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst|lpm_mult_component|auto_generated|result\(7) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst|lpm_mult_component|auto_generated|result\(8) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst|lpm_mult_component|auto_generated|result\(9) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst|lpm_mult_component|auto_generated|result\(10) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst|lpm_mult_component|auto_generated|result\(11) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst|lpm_mult_component|auto_generated|result\(12) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst|lpm_mult_component|auto_generated|result\(13) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst|lpm_mult_component|auto_generated|result\(14) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst|lpm_mult_component|auto_generated|result\(15) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(17);

\inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ <= (\dataa[7]~input_o\ & \dataa[6]~input_o\ & \dataa[5]~input_o\ & \dataa[4]~input_o\ & \dataa[3]~input_o\ & \dataa[2]~input_o\ & \dataa[1]~input_o\ & \dataa[0]~input_o\ & gnd);

\inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ <= (\datab[7]~input_o\ & \datab[6]~input_o\ & \datab[5]~input_o\ & \datab[4]~input_o\ & \datab[3]~input_o\ & \datab[2]~input_o\ & \datab[1]~input_o\ & \datab[0]~input_o\ & gnd);

\inst|lpm_mult_component|auto_generated|mac_mult1~2\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst|lpm_mult_component|auto_generated|mac_mult1~3\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst4|inst4|inst7|inst5~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|inst4|inst7|inst5~combout\);

\clk1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1~input_o\);
\inst5|ALT_INV_Equal0~20_combout\ <= NOT \inst5|Equal0~20_combout\;
\inst5|ALT_INV_LessThan2~62_combout\ <= NOT \inst5|LessThan2~62_combout\;
\inst5|ALT_INV_LessThan3~62_combout\ <= NOT \inst5|LessThan3~62_combout\;
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y17_N20
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

-- Location: IOOBUF_X31_Y7_N9
\Cout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~q\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X29_Y25_N30
\ALUout[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[15]~output_o\);

-- Location: IOOBUF_X24_Y25_N9
\ALUout[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[14]~output_o\);

-- Location: IOOBUF_X22_Y25_N16
\ALUout[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[13]~output_o\);

-- Location: IOOBUF_X24_Y25_N16
\ALUout[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[12]~output_o\);

-- Location: IOOBUF_X29_Y25_N16
\ALUout[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[11]~output_o\);

-- Location: IOOBUF_X27_Y25_N9
\ALUout[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[10]~output_o\);

-- Location: IOOBUF_X29_Y25_N2
\ALUout[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[9]~output_o\);

-- Location: IOOBUF_X29_Y25_N23
\ALUout[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[8]~output_o\);

-- Location: IOOBUF_X22_Y25_N30
\ALUout[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[7]~output_o\);

-- Location: IOOBUF_X27_Y25_N2
\ALUout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[6]~output_o\);

-- Location: IOOBUF_X22_Y25_N2
\ALUout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[5]~output_o\);

-- Location: IOOBUF_X27_Y25_N30
\ALUout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[4]~output_o\);

-- Location: IOOBUF_X22_Y25_N9
\ALUout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[3]~output_o\);

-- Location: IOOBUF_X24_Y25_N30
\ALUout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[2]~output_o\);

-- Location: IOOBUF_X27_Y25_N23
\ALUout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[1]~output_o\);

-- Location: IOOBUF_X29_Y25_N9
\ALUout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\Sum[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(31),
	devoe => ww_devoe,
	o => \Sum[31]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\Sum[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(30),
	devoe => ww_devoe,
	o => \Sum[30]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\Sum[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(29),
	devoe => ww_devoe,
	o => \Sum[29]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\Sum[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(28),
	devoe => ww_devoe,
	o => \Sum[28]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\Sum[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(27),
	devoe => ww_devoe,
	o => \Sum[27]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\Sum[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(26),
	devoe => ww_devoe,
	o => \Sum[26]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\Sum[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(25),
	devoe => ww_devoe,
	o => \Sum[25]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\Sum[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(24),
	devoe => ww_devoe,
	o => \Sum[24]~output_o\);

-- Location: IOOBUF_X15_Y0_N30
\Sum[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(23),
	devoe => ww_devoe,
	o => \Sum[23]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\Sum[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(22),
	devoe => ww_devoe,
	o => \Sum[22]~output_o\);

-- Location: IOOBUF_X17_Y0_N30
\Sum[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(21),
	devoe => ww_devoe,
	o => \Sum[21]~output_o\);

-- Location: IOOBUF_X17_Y0_N9
\Sum[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(20),
	devoe => ww_devoe,
	o => \Sum[20]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\Sum[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(19),
	devoe => ww_devoe,
	o => \Sum[19]~output_o\);

-- Location: IOOBUF_X13_Y0_N9
\Sum[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(18),
	devoe => ww_devoe,
	o => \Sum[18]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\Sum[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(17),
	devoe => ww_devoe,
	o => \Sum[17]~output_o\);

-- Location: IOOBUF_X15_Y0_N2
\Sum[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(16),
	devoe => ww_devoe,
	o => \Sum[16]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\Sum[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(15),
	devoe => ww_devoe,
	o => \Sum[15]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\Sum[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(14),
	devoe => ww_devoe,
	o => \Sum[14]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\Sum[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(13),
	devoe => ww_devoe,
	o => \Sum[13]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\Sum[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(12),
	devoe => ww_devoe,
	o => \Sum[12]~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\Sum[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(11),
	devoe => ww_devoe,
	o => \Sum[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\Sum[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(10),
	devoe => ww_devoe,
	o => \Sum[10]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\Sum[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(9),
	devoe => ww_devoe,
	o => \Sum[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\Sum[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(8),
	devoe => ww_devoe,
	o => \Sum[8]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\Sum[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(7),
	devoe => ww_devoe,
	o => \Sum[7]~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\Sum[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(6),
	devoe => ww_devoe,
	o => \Sum[6]~output_o\);

-- Location: IOOBUF_X15_Y0_N23
\Sum[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(5),
	devoe => ww_devoe,
	o => \Sum[5]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\Sum[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(4),
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N30
\Sum[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(3),
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\Sum[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(2),
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\Sum[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(1),
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\Sum[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(0),
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOOBUF_X24_Y25_N23
\CCout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst7(5),
	devoe => ww_devoe,
	o => \CCout[5]~output_o\);

-- Location: IOOBUF_X19_Y25_N9
\CCout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst7(4),
	devoe => ww_devoe,
	o => \CCout[4]~output_o\);

-- Location: IOOBUF_X19_Y25_N2
\CCout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst7(3),
	devoe => ww_devoe,
	o => \CCout[3]~output_o\);

-- Location: IOOBUF_X19_Y25_N16
\CCout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst7(2),
	devoe => ww_devoe,
	o => \CCout[2]~output_o\);

-- Location: IOOBUF_X19_Y25_N23
\CCout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst7(1),
	devoe => ww_devoe,
	o => \CCout[1]~output_o\);

-- Location: IOOBUF_X24_Y25_N2
\CCout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst7(0),
	devoe => ww_devoe,
	o => \CCout[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\q[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(15),
	devoe => ww_devoe,
	o => \q[15]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\q[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(14),
	devoe => ww_devoe,
	o => \q[14]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\q[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(13),
	devoe => ww_devoe,
	o => \q[13]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\q[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(12),
	devoe => ww_devoe,
	o => \q[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\q[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(11),
	devoe => ww_devoe,
	o => \q[11]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\q[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(10),
	devoe => ww_devoe,
	o => \q[10]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\q[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(9),
	devoe => ww_devoe,
	o => \q[9]~output_o\);

-- Location: IOOBUF_X27_Y0_N16
\q[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(8),
	devoe => ww_devoe,
	o => \q[8]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(7),
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(6),
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(5),
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X27_Y0_N30
\q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(4),
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(3),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOIBUF_X31_Y9_N22
\clk1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk1,
	o => \clk1~input_o\);

-- Location: CLKCTRL_G9
\clk1~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y20_N15
\B[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X30_Y15_N12
\inst11[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11[30]~feeder_combout\ = \B[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[30]~input_o\,
	combout => \inst11[30]~feeder_combout\);

-- Location: IOIBUF_X15_Y25_N22
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

-- Location: FF_X30_Y15_N13
\inst11[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst11[30]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(30));

-- Location: IOIBUF_X19_Y25_N29
\A[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X30_Y15_N16
\inst12[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[30]~feeder_combout\ = \A[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[30]~input_o\,
	combout => \inst12[30]~feeder_combout\);

-- Location: FF_X30_Y15_N17
\inst12[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[30]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(30));

-- Location: LCCOMB_X30_Y15_N18
\inst4|inst4|inst6|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst6|inst5~0_combout\ = (inst11(30) & inst12(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(30),
	datad => inst12(30),
	combout => \inst4|inst4|inst6|inst5~0_combout\);

-- Location: IOIBUF_X31_Y9_N15
\B[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: FF_X30_Y15_N11
\inst11[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[31]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(31));

-- Location: IOIBUF_X31_Y9_N1
\A[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X30_Y15_N22
\inst12[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[31]~feeder_combout\ = \A[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[31]~input_o\,
	combout => \inst12[31]~feeder_combout\);

-- Location: FF_X30_Y15_N23
\inst12[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[31]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(31));

-- Location: IOIBUF_X6_Y10_N15
\A[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: FF_X30_Y15_N9
\inst12[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[28]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(28));

-- Location: IOIBUF_X31_Y13_N22
\B[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: FF_X30_Y15_N1
\inst11[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[28]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(28));

-- Location: LCCOMB_X30_Y15_N10
\inst4|inst4|inst4|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst4|inst5~0_combout\ = (inst12(28) & inst11(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst12(28),
	datad => inst11(28),
	combout => \inst4|inst4|inst4|inst5~0_combout\);

-- Location: IOIBUF_X31_Y13_N8
\B[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: FF_X30_Y15_N25
\inst11[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[29]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(29));

-- Location: IOIBUF_X11_Y25_N22
\A[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X30_Y15_N26
\inst12[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[29]~feeder_combout\ = \A[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[29]~input_o\,
	combout => \inst12[29]~feeder_combout\);

-- Location: FF_X30_Y15_N27
\inst12[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[29]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(29));

-- Location: IOIBUF_X1_Y10_N15
\A[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: FF_X29_Y15_N13
\inst12[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[27]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(27));

-- Location: IOIBUF_X31_Y13_N15
\B[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: FF_X29_Y15_N17
\inst11[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[27]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(27));

-- Location: IOIBUF_X1_Y10_N1
\A[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X29_Y15_N8
\inst12[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[26]~feeder_combout\ = \A[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[26]~input_o\,
	combout => \inst12[26]~feeder_combout\);

-- Location: FF_X29_Y15_N9
\inst12[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[26]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(26));

-- Location: IOIBUF_X31_Y17_N15
\B[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X29_Y15_N26
\inst11[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11[26]~feeder_combout\ = \B[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[26]~input_o\,
	combout => \inst11[26]~feeder_combout\);

-- Location: FF_X29_Y15_N27
\inst11[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst11[26]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(26));

-- Location: LCCOMB_X29_Y15_N22
\inst4|inst4|inst2|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst2|inst5~0_combout\ = (inst12(26) & inst11(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => inst12(26),
	datad => inst11(26),
	combout => \inst4|inst4|inst2|inst5~0_combout\);

-- Location: IOIBUF_X17_Y25_N22
\A[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X25_Y15_N24
\inst12[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[24]~feeder_combout\ = \A[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[24]~input_o\,
	combout => \inst12[24]~feeder_combout\);

-- Location: FF_X25_Y15_N25
\inst12[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[24]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(24));

-- Location: IOIBUF_X31_Y17_N8
\B[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: FF_X29_Y15_N11
\inst11[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[24]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(24));

-- Location: LCCOMB_X29_Y15_N6
\inst4|inst4|inst|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst|inst5~0_combout\ = (inst12(24) & inst11(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(24),
	datad => inst11(24),
	combout => \inst4|inst4|inst|inst5~0_combout\);

-- Location: IOIBUF_X13_Y25_N22
\A[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X29_Y15_N2
\inst12[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[25]~feeder_combout\ = \A[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[25]~input_o\,
	combout => \inst12[25]~feeder_combout\);

-- Location: FF_X29_Y15_N3
\inst12[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[25]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(25));

-- Location: IOIBUF_X31_Y14_N15
\B[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: FF_X29_Y15_N5
\inst11[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[25]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(25));

-- Location: IOIBUF_X1_Y10_N22
\A[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: FF_X24_Y13_N19
\inst12[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[23]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(23));

-- Location: IOIBUF_X13_Y25_N8
\A[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: FF_X24_Y15_N1
\inst12[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[22]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(22));

-- Location: IOIBUF_X31_Y22_N8
\B[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: FF_X24_Y15_N17
\inst11[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[22]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(22));

-- Location: LCCOMB_X24_Y15_N4
\inst4|inst3|inst6|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst6|inst5~0_combout\ = (inst12(22) & inst11(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(22),
	datab => inst11(22),
	combout => \inst4|inst3|inst6|inst5~0_combout\);

-- Location: IOIBUF_X31_Y21_N15
\B[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: FF_X24_Y15_N11
\inst11[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[23]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(23));

-- Location: IOIBUF_X31_Y14_N22
\B[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X25_Y15_N30
\inst11[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11[21]~feeder_combout\ = \B[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[21]~input_o\,
	combout => \inst11[21]~feeder_combout\);

-- Location: FF_X25_Y15_N31
\inst11[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst11[21]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(21));

-- Location: IOIBUF_X17_Y25_N1
\A[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: FF_X24_Y15_N9
\inst12[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[20]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(20));

-- Location: IOIBUF_X31_Y13_N1
\B[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: FF_X25_Y15_N17
\inst11[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[20]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(20));

-- Location: LCCOMB_X24_Y15_N22
\inst4|inst3|inst4|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst4|inst5~0_combout\ = (inst12(20) & inst11(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst12(20),
	datad => inst11(20),
	combout => \inst4|inst3|inst4|inst5~0_combout\);

-- Location: IOIBUF_X1_Y10_N29
\A[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: FF_X24_Y13_N15
\inst12[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[21]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(21));

-- Location: IOIBUF_X31_Y19_N15
\B[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: FF_X25_Y15_N5
\inst11[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[19]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(19));

-- Location: IOIBUF_X17_Y25_N8
\A[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: FF_X24_Y15_N15
\inst12[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[19]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(19));

-- Location: IOIBUF_X11_Y25_N15
\A[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: FF_X22_Y15_N23
\inst12[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[18]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(18));

-- Location: IOIBUF_X31_Y19_N22
\B[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: FF_X25_Y15_N19
\inst11[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[18]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(18));

-- Location: LCCOMB_X24_Y15_N30
\inst4|inst3|inst2|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst2|inst5~0_combout\ = (inst12(18) & inst11(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst12(18),
	datad => inst11(18),
	combout => \inst4|inst3|inst2|inst5~0_combout\);

-- Location: IOIBUF_X3_Y10_N1
\A[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X23_Y14_N14
\inst12[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[16]~feeder_combout\ = \A[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[16]~input_o\,
	combout => \inst12[16]~feeder_combout\);

-- Location: FF_X23_Y14_N15
\inst12[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[16]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(16));

-- Location: IOIBUF_X31_Y14_N1
\B[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X23_Y14_N6
\inst11[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11[16]~feeder_combout\ = \B[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[16]~input_o\,
	combout => \inst11[16]~feeder_combout\);

-- Location: FF_X23_Y14_N7
\inst11[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst11[16]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(16));

-- Location: LCCOMB_X23_Y14_N18
\inst4|inst3|inst|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst|inst5~0_combout\ = (inst12(16) & inst11(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst12(16),
	datad => inst11(16),
	combout => \inst4|inst3|inst|inst5~0_combout\);

-- Location: IOIBUF_X31_Y20_N22
\B[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X28_Y15_N30
\inst11[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11[17]~feeder_combout\ = \B[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[17]~input_o\,
	combout => \inst11[17]~feeder_combout\);

-- Location: FF_X28_Y15_N31
\inst11[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst11[17]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(17));

-- Location: IOIBUF_X17_Y25_N15
\A[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: FF_X24_Y15_N23
\inst12[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[17]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(17));

-- Location: IOIBUF_X6_Y10_N8
\A[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: FF_X24_Y13_N9
\inst12[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[15]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(15));

-- Location: IOIBUF_X31_Y19_N1
\B[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X25_Y15_N10
\inst11[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11[15]~feeder_combout\ = \B[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[15]~input_o\,
	combout => \inst11[15]~feeder_combout\);

-- Location: FF_X25_Y15_N11
\inst11[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst11[15]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(15));

-- Location: IOIBUF_X31_Y12_N22
\B[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X28_Y15_N26
\inst11[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11[14]~feeder_combout\ = \B[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[14]~input_o\,
	combout => \inst11[14]~feeder_combout\);

-- Location: FF_X28_Y15_N27
\inst11[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst11[14]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(14));

-- Location: IOIBUF_X6_Y10_N22
\A[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X28_Y15_N0
\inst12[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[14]~feeder_combout\ = \A[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[14]~input_o\,
	combout => \inst12[14]~feeder_combout\);

-- Location: FF_X28_Y15_N1
\inst12[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[14]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(14));

-- Location: LCCOMB_X28_Y15_N12
\inst4|inst2|inst6|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst6|inst5~0_combout\ = (inst11(14) & inst12(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => inst11(14),
	datad => inst12(14),
	combout => \inst4|inst2|inst6|inst5~0_combout\);

-- Location: IOIBUF_X15_Y25_N29
\A[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: FF_X23_Y15_N23
\inst12[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[13]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(13));

-- Location: IOIBUF_X31_Y11_N22
\B[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X28_Y15_N4
\inst11[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11[13]~feeder_combout\ = \B[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[13]~input_o\,
	combout => \inst11[13]~feeder_combout\);

-- Location: FF_X28_Y15_N5
\inst11[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst11[13]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(13));

-- Location: IOIBUF_X13_Y25_N29
\A[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X28_Y15_N14
\inst12[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[12]~feeder_combout\ = \A[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[12]~input_o\,
	combout => \inst12[12]~feeder_combout\);

-- Location: FF_X28_Y15_N15
\inst12[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[12]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(12));

-- Location: IOIBUF_X31_Y12_N8
\B[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X28_Y15_N28
\inst11[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11[12]~feeder_combout\ = \B[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[12]~input_o\,
	combout => \inst11[12]~feeder_combout\);

-- Location: FF_X28_Y15_N29
\inst11[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst11[12]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(12));

-- Location: LCCOMB_X28_Y15_N18
\inst4|inst2|inst4|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst4|inst5~0_combout\ = (inst12(12) & inst11(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => inst12(12),
	datad => inst11(12),
	combout => \inst4|inst2|inst4|inst5~0_combout\);

-- Location: IOIBUF_X31_Y15_N8
\B[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: FF_X22_Y15_N3
\inst11[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[11]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(11));

-- Location: IOIBUF_X31_Y15_N1
\B[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X22_Y15_N4
\inst11[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11[10]~feeder_combout\ = \B[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[10]~input_o\,
	combout => \inst11[10]~feeder_combout\);

-- Location: FF_X22_Y15_N5
\inst11[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst11[10]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(10));

-- Location: IOIBUF_X6_Y10_N29
\A[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X22_Y15_N6
\inst12[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[10]~feeder_combout\ = \A[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[10]~input_o\,
	combout => \inst12[10]~feeder_combout\);

-- Location: FF_X22_Y15_N7
\inst12[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[10]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(10));

-- Location: LCCOMB_X22_Y15_N0
\inst4|inst2|inst2|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst2|inst5~0_combout\ = (inst11(10) & inst12(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst11(10),
	datad => inst12(10),
	combout => \inst4|inst2|inst2|inst5~0_combout\);

-- Location: IOIBUF_X6_Y10_N1
\A[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X22_Y15_N26
\inst12[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[11]~feeder_combout\ = \A[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[11]~input_o\,
	combout => \inst12[11]~feeder_combout\);

-- Location: FF_X22_Y15_N27
\inst12[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[11]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(11));

-- Location: IOIBUF_X1_Y10_N8
\A[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X23_Y13_N4
\inst12[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[9]~feeder_combout\ = \A[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[9]~input_o\,
	combout => \inst12[9]~feeder_combout\);

-- Location: FF_X23_Y13_N5
\inst12[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[9]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(9));

-- Location: IOIBUF_X31_Y19_N8
\B[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: FF_X23_Y15_N25
\inst11[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[9]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(9));

-- Location: IOIBUF_X31_Y12_N15
\B[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X28_Y15_N22
\inst11[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11[8]~feeder_combout\ = \B[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[8]~input_o\,
	combout => \inst11[8]~feeder_combout\);

-- Location: FF_X28_Y15_N23
\inst11[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst11[8]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(8));

-- Location: IOIBUF_X13_Y25_N1
\A[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X28_Y15_N16
\inst12[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[8]~feeder_combout\ = \A[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[8]~input_o\,
	combout => \inst12[8]~feeder_combout\);

-- Location: FF_X28_Y15_N17
\inst12[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[8]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(8));

-- Location: LCCOMB_X28_Y15_N24
\inst4|inst2|inst|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst|inst5~0_combout\ = (inst11(8) & inst12(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => inst11(8),
	datad => inst12(8),
	combout => \inst4|inst2|inst|inst5~0_combout\);

-- Location: IOIBUF_X31_Y22_N1
\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: FF_X24_Y15_N7
\inst11[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[7]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(7));

-- Location: IOIBUF_X31_Y15_N22
\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X22_Y15_N12
\inst11[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11[6]~feeder_combout\ = \B[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[6]~input_o\,
	combout => \inst11[6]~feeder_combout\);

-- Location: FF_X22_Y15_N13
\inst11[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst11[6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(6));

-- Location: IOIBUF_X15_Y25_N15
\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X22_Y15_N16
\inst12[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[6]~feeder_combout\ = \A[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[6]~input_o\,
	combout => \inst12[6]~feeder_combout\);

-- Location: FF_X22_Y15_N17
\inst12[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(6));

-- Location: LCCOMB_X22_Y15_N24
\inst4|inst|inst6|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst6|inst5~0_combout\ = (inst11(6) & inst12(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(6),
	datad => inst12(6),
	combout => \inst4|inst|inst6|inst5~0_combout\);

-- Location: IOIBUF_X3_Y10_N8
\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X23_Y13_N18
\inst12[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[7]~feeder_combout\ = \A[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[7]~input_o\,
	combout => \inst12[7]~feeder_combout\);

-- Location: FF_X23_Y13_N19
\inst12[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(7));

-- Location: IOIBUF_X31_Y12_N1
\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: FF_X22_Y15_N1
\inst11[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[5]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(5));

-- Location: IOIBUF_X11_Y25_N29
\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X22_Y15_N28
\inst12[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[5]~feeder_combout\ = \A[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[5]~input_o\,
	combout => \inst12[5]~feeder_combout\);

-- Location: FF_X22_Y15_N29
\inst12[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(5));

-- Location: IOIBUF_X17_Y25_N29
\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: FF_X24_Y15_N31
\inst12[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[4]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(4));

-- Location: IOIBUF_X31_Y11_N1
\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: FF_X24_Y15_N5
\inst11[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[4]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(4));

-- Location: LCCOMB_X24_Y15_N14
\inst4|inst|inst4|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst4|inst5~0_combout\ = (inst12(4) & inst11(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst12(4),
	datad => inst11(4),
	combout => \inst4|inst|inst4|inst5~0_combout\);

-- Location: IOIBUF_X13_Y25_N15
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: FF_X22_Y15_N9
\inst12[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[3]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(3));

-- Location: IOIBUF_X31_Y11_N15
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: FF_X23_Y15_N5
\inst11[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[3]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(3));

-- Location: IOIBUF_X15_Y25_N8
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: FF_X23_Y15_N17
\inst12[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[2]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(2));

-- Location: IOIBUF_X31_Y11_N8
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: FF_X22_Y15_N31
\inst11[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[2]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(2));

-- Location: LCCOMB_X23_Y15_N30
\inst4|inst|inst2|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst5~0_combout\ = (inst12(2) & inst11(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => inst12(2),
	datad => inst11(2),
	combout => \inst4|inst|inst2|inst5~0_combout\);

-- Location: IOIBUF_X15_Y25_N1
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: FF_X22_Y15_N11
\inst12[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \A[1]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(1));

-- Location: IOIBUF_X31_Y15_N15
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: FF_X22_Y15_N19
\inst11[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \B[1]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(1));

-- Location: IOIBUF_X3_Y10_N29
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X23_Y14_N30
\inst12[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12[0]~feeder_combout\ = \A[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[0]~input_o\,
	combout => \inst12[0]~feeder_combout\);

-- Location: FF_X23_Y14_N31
\inst12[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst12[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst12(0));

-- Location: IOIBUF_X31_Y14_N8
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X23_Y14_N10
\inst11[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11[0]~feeder_combout\ = \B[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[0]~input_o\,
	combout => \inst11[0]~feeder_combout\);

-- Location: FF_X23_Y14_N11
\inst11[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \inst11[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst11(0));

-- Location: LCCOMB_X23_Y14_N16
\inst4|inst|inst|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst5~0_combout\ = (inst12(0) & inst11(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => inst12(0),
	datad => inst11(0),
	combout => \inst4|inst|inst|inst5~0_combout\);

-- Location: IOIBUF_X31_Y7_N22
\Cin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: FF_X23_Y14_N9
inst13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	asdata => \Cin~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13~q\);

-- Location: LCCOMB_X23_Y14_N0
\inst4|inst|inst|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst5~1_combout\ = (\inst13~q\ & ((inst12(0)) # (inst11(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(0),
	datac => \inst13~q\,
	datad => inst11(0),
	combout => \inst4|inst|inst|inst5~1_combout\);

-- Location: LCCOMB_X22_Y15_N14
\inst4|inst|inst2|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst5~1_combout\ = (inst12(1) & ((inst11(1)) # ((\inst4|inst|inst|inst5~0_combout\) # (\inst4|inst|inst|inst5~1_combout\)))) # (!inst12(1) & (inst11(1) & ((\inst4|inst|inst|inst5~0_combout\) # (\inst4|inst|inst|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(1),
	datab => inst11(1),
	datac => \inst4|inst|inst|inst5~0_combout\,
	datad => \inst4|inst|inst|inst5~1_combout\,
	combout => \inst4|inst|inst2|inst5~1_combout\);

-- Location: LCCOMB_X23_Y15_N24
\inst4|inst|inst2|inst5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst5~2_combout\ = (\inst4|inst|inst2|inst5~1_combout\ & ((inst12(2)) # (inst11(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(2),
	datab => inst11(2),
	datad => \inst4|inst|inst2|inst5~1_combout\,
	combout => \inst4|inst|inst2|inst5~2_combout\);

-- Location: LCCOMB_X23_Y15_N2
\inst4|inst|inst3|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst5~0_combout\ = (inst12(3) & ((inst11(3)) # ((\inst4|inst|inst2|inst5~0_combout\) # (\inst4|inst|inst2|inst5~2_combout\)))) # (!inst12(3) & (inst11(3) & ((\inst4|inst|inst2|inst5~0_combout\) # (\inst4|inst|inst2|inst5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(3),
	datab => inst11(3),
	datac => \inst4|inst|inst2|inst5~0_combout\,
	datad => \inst4|inst|inst2|inst5~2_combout\,
	combout => \inst4|inst|inst3|inst5~0_combout\);

-- Location: LCCOMB_X23_Y15_N12
\inst4|inst|inst4|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst4|inst5~1_combout\ = (\inst4|inst|inst3|inst5~0_combout\ & ((inst11(4)) # (inst12(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(4),
	datac => inst12(4),
	datad => \inst4|inst|inst3|inst5~0_combout\,
	combout => \inst4|inst|inst4|inst5~1_combout\);

-- Location: LCCOMB_X23_Y15_N18
\inst4|inst|inst5|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst5|inst5~0_combout\ = (inst11(5) & ((inst12(5)) # ((\inst4|inst|inst4|inst5~0_combout\) # (\inst4|inst|inst4|inst5~1_combout\)))) # (!inst11(5) & (inst12(5) & ((\inst4|inst|inst4|inst5~0_combout\) # (\inst4|inst|inst4|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(5),
	datab => inst12(5),
	datac => \inst4|inst|inst4|inst5~0_combout\,
	datad => \inst4|inst|inst4|inst5~1_combout\,
	combout => \inst4|inst|inst5|inst5~0_combout\);

-- Location: LCCOMB_X23_Y15_N28
\inst4|inst|inst6|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst6|inst5~1_combout\ = (\inst4|inst|inst5|inst5~0_combout\ & ((inst11(6)) # (inst12(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(6),
	datab => inst12(6),
	datad => \inst4|inst|inst5|inst5~0_combout\,
	combout => \inst4|inst|inst6|inst5~1_combout\);

-- Location: LCCOMB_X23_Y15_N26
\inst4|inst|inst7|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst7|inst5~0_combout\ = (inst11(7) & ((\inst4|inst|inst6|inst5~0_combout\) # ((inst12(7)) # (\inst4|inst|inst6|inst5~1_combout\)))) # (!inst11(7) & (inst12(7) & ((\inst4|inst|inst6|inst5~0_combout\) # (\inst4|inst|inst6|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(7),
	datab => \inst4|inst|inst6|inst5~0_combout\,
	datac => inst12(7),
	datad => \inst4|inst|inst6|inst5~1_combout\,
	combout => \inst4|inst|inst7|inst5~0_combout\);

-- Location: LCCOMB_X23_Y15_N0
\inst4|inst2|inst|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst|inst5~1_combout\ = (\inst4|inst|inst7|inst5~0_combout\ & ((inst12(8)) # (inst11(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst12(8),
	datac => \inst4|inst|inst7|inst5~0_combout\,
	datad => inst11(8),
	combout => \inst4|inst2|inst|inst5~1_combout\);

-- Location: LCCOMB_X23_Y15_N6
\inst4|inst2|inst1|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst1|inst5~0_combout\ = (inst12(9) & ((inst11(9)) # ((\inst4|inst2|inst|inst5~0_combout\) # (\inst4|inst2|inst|inst5~1_combout\)))) # (!inst12(9) & (inst11(9) & ((\inst4|inst2|inst|inst5~0_combout\) # (\inst4|inst2|inst|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(9),
	datab => inst11(9),
	datac => \inst4|inst2|inst|inst5~0_combout\,
	datad => \inst4|inst2|inst|inst5~1_combout\,
	combout => \inst4|inst2|inst1|inst5~0_combout\);

-- Location: LCCOMB_X23_Y15_N20
\inst4|inst2|inst2|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst2|inst5~1_combout\ = (\inst4|inst2|inst1|inst5~0_combout\ & ((inst12(10)) # (inst11(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst12(10),
	datac => inst11(10),
	datad => \inst4|inst2|inst1|inst5~0_combout\,
	combout => \inst4|inst2|inst2|inst5~1_combout\);

-- Location: LCCOMB_X23_Y15_N10
\inst4|inst2|inst3|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst3|inst5~0_combout\ = (inst11(11) & ((\inst4|inst2|inst2|inst5~0_combout\) # ((inst12(11)) # (\inst4|inst2|inst2|inst5~1_combout\)))) # (!inst11(11) & (inst12(11) & ((\inst4|inst2|inst2|inst5~0_combout\) # 
-- (\inst4|inst2|inst2|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(11),
	datab => \inst4|inst2|inst2|inst5~0_combout\,
	datac => inst12(11),
	datad => \inst4|inst2|inst2|inst5~1_combout\,
	combout => \inst4|inst2|inst3|inst5~0_combout\);

-- Location: LCCOMB_X23_Y15_N16
\inst4|inst2|inst4|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst4|inst5~1_combout\ = (\inst4|inst2|inst3|inst5~0_combout\ & ((inst11(12)) # (inst12(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(12),
	datab => inst12(12),
	datad => \inst4|inst2|inst3|inst5~0_combout\,
	combout => \inst4|inst2|inst4|inst5~1_combout\);

-- Location: LCCOMB_X23_Y15_N14
\inst4|inst2|inst5|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst5|inst5~0_combout\ = (inst12(13) & ((inst11(13)) # ((\inst4|inst2|inst4|inst5~0_combout\) # (\inst4|inst2|inst4|inst5~1_combout\)))) # (!inst12(13) & (inst11(13) & ((\inst4|inst2|inst4|inst5~0_combout\) # 
-- (\inst4|inst2|inst4|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(13),
	datab => inst11(13),
	datac => \inst4|inst2|inst4|inst5~0_combout\,
	datad => \inst4|inst2|inst4|inst5~1_combout\,
	combout => \inst4|inst2|inst5|inst5~0_combout\);

-- Location: LCCOMB_X24_Y15_N6
\inst4|inst2|inst6|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst6|inst5~1_combout\ = (\inst4|inst2|inst5|inst5~0_combout\ & ((inst11(14)) # (inst12(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(14),
	datab => inst12(14),
	datad => \inst4|inst2|inst5|inst5~0_combout\,
	combout => \inst4|inst2|inst6|inst5~1_combout\);

-- Location: LCCOMB_X24_Y15_N28
\inst4|inst2|inst7|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst7|inst5~0_combout\ = (inst12(15) & ((inst11(15)) # ((\inst4|inst2|inst6|inst5~0_combout\) # (\inst4|inst2|inst6|inst5~1_combout\)))) # (!inst12(15) & (inst11(15) & ((\inst4|inst2|inst6|inst5~0_combout\) # 
-- (\inst4|inst2|inst6|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(15),
	datab => inst11(15),
	datac => \inst4|inst2|inst6|inst5~0_combout\,
	datad => \inst4|inst2|inst6|inst5~1_combout\,
	combout => \inst4|inst2|inst7|inst5~0_combout\);

-- Location: LCCOMB_X24_Y15_N10
\inst4|inst3|inst|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst|inst5~1_combout\ = (\inst4|inst2|inst7|inst5~0_combout\ & ((inst12(16)) # (inst11(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(16),
	datab => inst11(16),
	datad => \inst4|inst2|inst7|inst5~0_combout\,
	combout => \inst4|inst3|inst|inst5~1_combout\);

-- Location: LCCOMB_X24_Y15_N12
\inst4|inst3|inst1|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst1|inst5~0_combout\ = (inst11(17) & ((\inst4|inst3|inst|inst5~0_combout\) # ((inst12(17)) # (\inst4|inst3|inst|inst5~1_combout\)))) # (!inst11(17) & (inst12(17) & ((\inst4|inst3|inst|inst5~0_combout\) # 
-- (\inst4|inst3|inst|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst|inst5~0_combout\,
	datab => inst11(17),
	datac => inst12(17),
	datad => \inst4|inst3|inst|inst5~1_combout\,
	combout => \inst4|inst3|inst1|inst5~0_combout\);

-- Location: LCCOMB_X24_Y15_N2
\inst4|inst3|inst2|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst2|inst5~1_combout\ = (\inst4|inst3|inst1|inst5~0_combout\ & ((inst11(18)) # (inst12(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst11(18),
	datac => inst12(18),
	datad => \inst4|inst3|inst1|inst5~0_combout\,
	combout => \inst4|inst3|inst2|inst5~1_combout\);

-- Location: LCCOMB_X24_Y15_N24
\inst4|inst3|inst3|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst3|inst5~0_combout\ = (inst11(19) & ((inst12(19)) # ((\inst4|inst3|inst2|inst5~0_combout\) # (\inst4|inst3|inst2|inst5~1_combout\)))) # (!inst11(19) & (inst12(19) & ((\inst4|inst3|inst2|inst5~0_combout\) # 
-- (\inst4|inst3|inst2|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(19),
	datab => inst12(19),
	datac => \inst4|inst3|inst2|inst5~0_combout\,
	datad => \inst4|inst3|inst2|inst5~1_combout\,
	combout => \inst4|inst3|inst3|inst5~0_combout\);

-- Location: LCCOMB_X24_Y15_N0
\inst4|inst3|inst4|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst4|inst5~1_combout\ = (\inst4|inst3|inst3|inst5~0_combout\ & ((inst12(20)) # (inst11(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(20),
	datab => inst11(20),
	datad => \inst4|inst3|inst3|inst5~0_combout\,
	combout => \inst4|inst3|inst4|inst5~1_combout\);

-- Location: LCCOMB_X24_Y15_N20
\inst4|inst3|inst5|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst5|inst5~0_combout\ = (inst11(21) & ((\inst4|inst3|inst4|inst5~0_combout\) # ((inst12(21)) # (\inst4|inst3|inst4|inst5~1_combout\)))) # (!inst11(21) & (inst12(21) & ((\inst4|inst3|inst4|inst5~0_combout\) # 
-- (\inst4|inst3|inst4|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(21),
	datab => \inst4|inst3|inst4|inst5~0_combout\,
	datac => inst12(21),
	datad => \inst4|inst3|inst4|inst5~1_combout\,
	combout => \inst4|inst3|inst5|inst5~0_combout\);

-- Location: LCCOMB_X24_Y15_N8
\inst4|inst3|inst6|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst6|inst5~1_combout\ = (\inst4|inst3|inst5|inst5~0_combout\ & ((inst12(22)) # (inst11(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(22),
	datab => inst11(22),
	datad => \inst4|inst3|inst5|inst5~0_combout\,
	combout => \inst4|inst3|inst6|inst5~1_combout\);

-- Location: LCCOMB_X24_Y15_N18
\inst4|inst3|inst7|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst7|inst5~0_combout\ = (inst12(23) & ((\inst4|inst3|inst6|inst5~0_combout\) # ((inst11(23)) # (\inst4|inst3|inst6|inst5~1_combout\)))) # (!inst12(23) & (inst11(23) & ((\inst4|inst3|inst6|inst5~0_combout\) # 
-- (\inst4|inst3|inst6|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(23),
	datab => \inst4|inst3|inst6|inst5~0_combout\,
	datac => inst11(23),
	datad => \inst4|inst3|inst6|inst5~1_combout\,
	combout => \inst4|inst3|inst7|inst5~0_combout\);

-- Location: LCCOMB_X24_Y15_N16
\inst4|inst4|inst|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst|inst5~1_combout\ = (\inst4|inst3|inst7|inst5~0_combout\ & ((inst11(24)) # (inst12(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(24),
	datab => inst12(24),
	datad => \inst4|inst3|inst7|inst5~0_combout\,
	combout => \inst4|inst4|inst|inst5~1_combout\);

-- Location: LCCOMB_X29_Y15_N24
\inst4|inst4|inst1|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst1|inst5~0_combout\ = (inst12(25) & ((\inst4|inst4|inst|inst5~0_combout\) # ((inst11(25)) # (\inst4|inst4|inst|inst5~1_combout\)))) # (!inst12(25) & (inst11(25) & ((\inst4|inst4|inst|inst5~0_combout\) # 
-- (\inst4|inst4|inst|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst|inst5~0_combout\,
	datab => inst12(25),
	datac => inst11(25),
	datad => \inst4|inst4|inst|inst5~1_combout\,
	combout => \inst4|inst4|inst1|inst5~0_combout\);

-- Location: LCCOMB_X29_Y15_N18
\inst4|inst4|inst2|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst2|inst5~1_combout\ = (\inst4|inst4|inst1|inst5~0_combout\ & ((inst11(26)) # (inst12(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(26),
	datac => inst12(26),
	datad => \inst4|inst4|inst1|inst5~0_combout\,
	combout => \inst4|inst4|inst2|inst5~1_combout\);

-- Location: LCCOMB_X29_Y15_N14
\inst4|inst4|inst3|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst3|inst5~0_combout\ = (inst12(27) & ((inst11(27)) # ((\inst4|inst4|inst2|inst5~0_combout\) # (\inst4|inst4|inst2|inst5~1_combout\)))) # (!inst12(27) & (inst11(27) & ((\inst4|inst4|inst2|inst5~0_combout\) # 
-- (\inst4|inst4|inst2|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(27),
	datab => inst11(27),
	datac => \inst4|inst4|inst2|inst5~0_combout\,
	datad => \inst4|inst4|inst2|inst5~1_combout\,
	combout => \inst4|inst4|inst3|inst5~0_combout\);

-- Location: LCCOMB_X30_Y15_N20
\inst4|inst4|inst4|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst4|inst5~1_combout\ = (\inst4|inst4|inst3|inst5~0_combout\ & ((inst11(28)) # (inst12(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(28),
	datac => inst12(28),
	datad => \inst4|inst4|inst3|inst5~0_combout\,
	combout => \inst4|inst4|inst4|inst5~1_combout\);

-- Location: LCCOMB_X30_Y15_N2
\inst4|inst4|inst5|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst5|inst5~0_combout\ = (inst11(29) & ((\inst4|inst4|inst4|inst5~0_combout\) # ((inst12(29)) # (\inst4|inst4|inst4|inst5~1_combout\)))) # (!inst11(29) & (inst12(29) & ((\inst4|inst4|inst4|inst5~0_combout\) # 
-- (\inst4|inst4|inst4|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst4|inst5~0_combout\,
	datab => inst11(29),
	datac => inst12(29),
	datad => \inst4|inst4|inst4|inst5~1_combout\,
	combout => \inst4|inst4|inst5|inst5~0_combout\);

-- Location: LCCOMB_X30_Y15_N0
\inst4|inst4|inst6|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst6|inst5~1_combout\ = (\inst4|inst4|inst5|inst5~0_combout\ & ((inst11(30)) # (inst12(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(30),
	datab => inst12(30),
	datad => \inst4|inst4|inst5|inst5~0_combout\,
	combout => \inst4|inst4|inst6|inst5~1_combout\);

-- Location: LCCOMB_X30_Y15_N14
\inst4|inst4|inst7|inst5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst7|inst5~combout\ = LCELL((inst11(31) & ((\inst4|inst4|inst6|inst5~0_combout\) # ((inst12(31)) # (\inst4|inst4|inst6|inst5~1_combout\)))) # (!inst11(31) & (inst12(31) & ((\inst4|inst4|inst6|inst5~0_combout\) # 
-- (\inst4|inst4|inst6|inst5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst6|inst5~0_combout\,
	datab => inst11(31),
	datac => inst12(31),
	datad => \inst4|inst4|inst6|inst5~1_combout\,
	combout => \inst4|inst4|inst7|inst5~combout\);

-- Location: DDIOOUTCELL_X31_Y7_N11
inst10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst4|inst4|inst7|inst5~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~q\);

-- Location: IOIBUF_X31_Y17_N22
\IR[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(1),
	o => \IR[1]~input_o\);

-- Location: LCCOMB_X27_Y17_N8
\inst6[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6[1]~feeder_combout\ = \IR[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IR[1]~input_o\,
	combout => \inst6[1]~feeder_combout\);

-- Location: FF_X27_Y17_N9
\inst6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst6[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst6(1));

-- Location: CLKCTRL_G6
\inst4|inst4|inst7|inst5~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|inst4|inst7|inst5~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|inst4|inst7|inst5~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y15_N22
\inst4|inst2|inst|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst|inst2~combout\ = \inst4|inst|inst7|inst5~0_combout\ $ (inst11(8) $ (inst12(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst7|inst5~0_combout\,
	datab => inst11(8),
	datad => inst12(8),
	combout => \inst4|inst2|inst|inst2~combout\);

-- Location: LCCOMB_X27_Y15_N24
\inst9[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9[15]~feeder_combout\ = \inst4|inst2|inst|inst2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst2|inst|inst2~combout\,
	combout => \inst9[15]~feeder_combout\);

-- Location: FF_X27_Y15_N25
\inst9[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst9[15]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(15));

-- Location: LCCOMB_X22_Y14_N16
\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) = (inst12(30)) # (inst12(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst12(30),
	datad => inst12(31),
	combout => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1));

-- Location: FF_X22_Y14_N17
\inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\);

-- Location: LCCOMB_X22_Y12_N10
\inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~feeder_combout\ = \inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\,
	combout => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~feeder_combout\);

-- Location: FF_X22_Y12_N11
\inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\);

-- Location: FF_X20_Y12_N25
\inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\);

-- Location: FF_X18_Y12_N21
\inst3|ALTSQRT_component|b_dffe[6]|sr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][6]~q\);

-- Location: FF_X18_Y16_N21
\inst3|ALTSQRT_component|b_dffe[8]|sr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][8]~q\);

-- Location: FF_X18_Y19_N25
\inst3|ALTSQRT_component|b_dffe[10]|sr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][8]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][10]~q\);

-- Location: FF_X22_Y18_N13
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][10]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\);

-- Location: FF_X28_Y17_N15
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][14]~q\);

-- Location: IOIBUF_X31_Y17_N1
\IR[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(0),
	o => \IR[0]~input_o\);

-- Location: LCCOMB_X27_Y17_N22
\inst6[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6[0]~feeder_combout\ = \IR[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IR[0]~input_o\,
	combout => \inst6[0]~feeder_combout\);

-- Location: FF_X27_Y17_N23
\inst6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst6[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst6(0));

-- Location: LCCOMB_X25_Y15_N8
\inst4|inst4|inst|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst|inst2~combout\ = inst12(24) $ (\inst4|inst3|inst7|inst5~0_combout\ $ (inst11(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(24),
	datab => \inst4|inst3|inst7|inst5~0_combout\,
	datac => inst11(24),
	combout => \inst4|inst4|inst|inst2~combout\);

-- Location: FF_X25_Y15_N9
\inst9[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst4|inst|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(31));

-- Location: IOIBUF_X31_Y21_N8
\wren~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren,
	o => \wren~input_o\);

-- Location: IOIBUF_X31_Y2_N8
\dataa[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(0),
	o => \dataa[0]~input_o\);

-- Location: IOIBUF_X31_Y2_N15
\dataa[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(1),
	o => \dataa[1]~input_o\);

-- Location: IOIBUF_X31_Y1_N1
\dataa[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(2),
	o => \dataa[2]~input_o\);

-- Location: IOIBUF_X31_Y6_N22
\dataa[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(3),
	o => \dataa[3]~input_o\);

-- Location: IOIBUF_X31_Y2_N1
\dataa[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(4),
	o => \dataa[4]~input_o\);

-- Location: IOIBUF_X31_Y5_N22
\dataa[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(5),
	o => \dataa[5]~input_o\);

-- Location: IOIBUF_X31_Y4_N15
\dataa[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(6),
	o => \dataa[6]~input_o\);

-- Location: IOIBUF_X31_Y4_N8
\dataa[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(7),
	o => \dataa[7]~input_o\);

-- Location: IOIBUF_X31_Y5_N8
\datab[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(0),
	o => \datab[0]~input_o\);

-- Location: IOIBUF_X31_Y6_N15
\datab[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(1),
	o => \datab[1]~input_o\);

-- Location: IOIBUF_X31_Y6_N8
\datab[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(2),
	o => \datab[2]~input_o\);

-- Location: IOIBUF_X31_Y4_N1
\datab[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(3),
	o => \datab[3]~input_o\);

-- Location: IOIBUF_X31_Y5_N15
\datab[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(4),
	o => \datab[4]~input_o\);

-- Location: IOIBUF_X31_Y4_N22
\datab[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(5),
	o => \datab[5]~input_o\);

-- Location: IOIBUF_X31_Y5_N1
\datab[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(6),
	o => \datab[6]~input_o\);

-- Location: IOIBUF_X31_Y2_N22
\datab[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(7),
	o => \datab[7]~input_o\);

-- Location: DSPMULT_X21_Y9_N0
\inst|lpm_mult_component|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk1~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X21_Y9_N2
\inst|lpm_mult_component|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: IOIBUF_X31_Y1_N22
\wraddress[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(0),
	o => \wraddress[0]~input_o\);

-- Location: IOIBUF_X31_Y3_N22
\wraddress[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(1),
	o => \wraddress[1]~input_o\);

-- Location: IOIBUF_X31_Y3_N15
\wraddress[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(2),
	o => \wraddress[2]~input_o\);

-- Location: IOIBUF_X31_Y3_N1
\wraddress[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(3),
	o => \wraddress[3]~input_o\);

-- Location: IOIBUF_X31_Y1_N15
\wraddress[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(4),
	o => \wraddress[4]~input_o\);

-- Location: IOIBUF_X31_Y1_N8
\rdaddress[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(0),
	o => \rdaddress[0]~input_o\);

-- Location: FF_X27_Y17_N27
\inst1|rdaddress_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \rdaddress[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(0));

-- Location: IOIBUF_X31_Y6_N1
\rdaddress[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(1),
	o => \rdaddress[1]~input_o\);

-- Location: LCCOMB_X27_Y13_N22
\inst1|rdaddress_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|rdaddress_reg[1]~feeder_combout\ = \rdaddress[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rdaddress[1]~input_o\,
	combout => \inst1|rdaddress_reg[1]~feeder_combout\);

-- Location: FF_X27_Y13_N23
\inst1|rdaddress_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|rdaddress_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(1));

-- Location: IOIBUF_X31_Y7_N1
\rdaddress[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(2),
	o => \rdaddress[2]~input_o\);

-- Location: LCCOMB_X30_Y13_N26
\inst1|rdaddress_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|rdaddress_reg[2]~feeder_combout\ = \rdaddress[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rdaddress[2]~input_o\,
	combout => \inst1|rdaddress_reg[2]~feeder_combout\);

-- Location: FF_X30_Y13_N27
\inst1|rdaddress_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|rdaddress_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(2));

-- Location: IOIBUF_X31_Y3_N8
\rdaddress[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(3),
	o => \rdaddress[3]~input_o\);

-- Location: LCCOMB_X30_Y17_N2
\inst1|rdaddress_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|rdaddress_reg[3]~feeder_combout\ = \rdaddress[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rdaddress[3]~input_o\,
	combout => \inst1|rdaddress_reg[3]~feeder_combout\);

-- Location: FF_X30_Y17_N3
\inst1|rdaddress_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|rdaddress_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(3));

-- Location: IOIBUF_X31_Y7_N15
\rdaddress[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(4),
	o => \rdaddress[4]~input_o\);

-- Location: LCCOMB_X27_Y13_N0
\inst1|rdaddress_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|rdaddress_reg[4]~feeder_combout\ = \rdaddress[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rdaddress[4]~input_o\,
	combout => \inst1|rdaddress_reg[4]~feeder_combout\);

-- Location: FF_X27_Y13_N1
\inst1|rdaddress_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|rdaddress_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(4));

-- Location: M9K_X26_Y17_N0
\inst1|ram_block_rtl_0|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram:inst1|altsyncram:ram_block_rtl_0|altsyncram_87g1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portbre => VCC,
	clk0 => \clk1~inputclkctrl_outclk\,
	clr0 => \ALT_INV_reset_n~input_o\,
	portadatain => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X27_Y17_N20
\inst8|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (inst6(0) & ((inst9(31)) # ((inst6(1))))) # (!inst6(0) & (((!inst6(1) & inst2(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst9(31),
	datac => inst6(1),
	datad => inst2(15),
	combout => \inst8|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y17_N14
\inst8|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux0~1_combout\ = (inst6(1) & ((\inst8|Mux0~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[14]|sr[0][14]~q\))) # (!\inst8|Mux0~0_combout\ & (inst9(15))))) # (!inst6(1) & (((\inst8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(1),
	datab => inst9(15),
	datac => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][14]~q\,
	datad => \inst8|Mux0~0_combout\,
	combout => \inst8|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y14_N22
\inst3|ALTSQRT_component|_~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~44_combout\ = (inst12(30) & inst12(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst12(30),
	datad => inst12(31),
	combout => \inst3|ALTSQRT_component|_~44_combout\);

-- Location: FF_X22_Y14_N23
\inst3|ALTSQRT_component|r_dffe[0]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[0]|sr[0][1]~q\);

-- Location: LCCOMB_X22_Y14_N4
\inst3|ALTSQRT_component|_~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~45_combout\ = (!inst12(30) & inst12(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst12(30),
	datad => inst12(31),
	combout => \inst3|ALTSQRT_component|_~45_combout\);

-- Location: FF_X22_Y14_N11
\inst3|ALTSQRT_component|r_dffe[0]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|_~45_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[0]|sr[0][0]~q\);

-- Location: FF_X22_Y14_N9
\inst3|ALTSQRT_component|a_delay|sr[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][29]~q\);

-- Location: LCCOMB_X22_Y12_N0
\inst3|ALTSQRT_component|a_delay|sr[0][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[0][28]~feeder_combout\ = inst12(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => inst12(28),
	combout => \inst3|ALTSQRT_component|a_delay|sr[0][28]~feeder_combout\);

-- Location: FF_X22_Y12_N1
\inst3|ALTSQRT_component|a_delay|sr[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[0][28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][28]~q\);

-- Location: LCCOMB_X22_Y14_N6
\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[0][28]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[0][28]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X22_Y14_N8
\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[0][29]~q\ & (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[0][29]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[0][29]~q\ & !\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[0][29]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y14_N10
\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|r_dffe[0]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|r_dffe[0]|sr[0][0]~q\ & ((!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\) # (!\inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[0]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\ & !\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[0]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y14_N12
\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~7_cout\ = CARRY((!\inst3|ALTSQRT_component|r_dffe[0]|sr[0][1]~q\ & !\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[0]|sr[0][1]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~5\,
	cout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X22_Y14_N14
\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ = \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~7_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X22_Y12_N2
\inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~0_combout\ = !\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~0_combout\);

-- Location: FF_X22_Y12_N3
\inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~q\);

-- Location: FF_X20_Y12_N23
\inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\);

-- Location: FF_X18_Y12_N19
\inst3|ALTSQRT_component|b_dffe[6]|sr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][5]~q\);

-- Location: FF_X18_Y16_N19
\inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\);

-- Location: FF_X18_Y19_N23
\inst3|ALTSQRT_component|b_dffe[10]|sr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][9]~q\);

-- Location: FF_X22_Y18_N11
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][9]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\);

-- Location: FF_X25_Y18_N31
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][13]~q\);

-- Location: LCCOMB_X29_Y15_N30
\inst4|inst4|inst1|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst1|inst2~combout\ = inst12(25) $ (inst11(25) $ (((\inst4|inst4|inst|inst5~0_combout\) # (\inst4|inst4|inst|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst|inst5~0_combout\,
	datab => inst12(25),
	datac => inst11(25),
	datad => \inst4|inst4|inst|inst5~1_combout\,
	combout => \inst4|inst4|inst1|inst2~combout\);

-- Location: FF_X29_Y15_N31
\inst9[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst4|inst1|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(30));

-- Location: LCCOMB_X25_Y15_N0
\inst4|inst2|inst1|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst1|inst2~combout\ = inst11(9) $ (inst12(9) $ (((\inst4|inst2|inst|inst5~1_combout\) # (\inst4|inst2|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(9),
	datab => \inst4|inst2|inst|inst5~1_combout\,
	datac => inst12(9),
	datad => \inst4|inst2|inst|inst5~0_combout\,
	combout => \inst4|inst2|inst1|inst2~combout\);

-- Location: FF_X25_Y15_N1
\inst9[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst2|inst1|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(14));

-- Location: LCCOMB_X25_Y21_N18
\inst8|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (inst6(0) & (((inst6(1))))) # (!inst6(0) & ((inst6(1) & (inst9(14))) # (!inst6(1) & ((inst2(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst9(14),
	datac => inst6(1),
	datad => inst2(14),
	combout => \inst8|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y21_N14
\inst8|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux1~1_combout\ = (inst6(0) & ((\inst8|Mux1~0_combout\ & (\inst3|ALTSQRT_component|b_dffe[14]|sr[0][13]~q\)) # (!\inst8|Mux1~0_combout\ & ((inst9(30)))))) # (!inst6(0) & (((\inst8|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][13]~q\,
	datab => inst9(30),
	datac => inst6(0),
	datad => \inst8|Mux1~0_combout\,
	combout => \inst8|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y15_N30
\inst4|inst2|inst2|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst2|inst2~combout\ = \inst4|inst2|inst1|inst5~0_combout\ $ (inst11(10) $ (inst12(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst1|inst5~0_combout\,
	datab => inst11(10),
	datad => inst12(10),
	combout => \inst4|inst2|inst2|inst2~combout\);

-- Location: FF_X22_Y15_N25
\inst9[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	asdata => \inst4|inst2|inst2|inst2~combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(13));

-- Location: LCCOMB_X22_Y14_N24
\inst3|ALTSQRT_component|_~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~38_combout\ = (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\inst3|ALTSQRT_component|r_dffe[0]|sr[0][0]~q\))) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~4_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[0]|sr[0][0]~q\,
	combout => \inst3|ALTSQRT_component|_~38_combout\);

-- Location: LCCOMB_X22_Y14_N26
\inst3|ALTSQRT_component|_~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~39_combout\ = (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[0][29]~q\)) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[0][29]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~2_combout\,
	combout => \inst3|ALTSQRT_component|_~39_combout\);

-- Location: FF_X22_Y12_N19
\inst3|ALTSQRT_component|a_delay|sr[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][27]~q\);

-- Location: FF_X22_Y12_N17
\inst3|ALTSQRT_component|a_delay|sr[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][26]~q\);

-- Location: LCCOMB_X22_Y12_N16
\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[0][26]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[0][26]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X22_Y12_N18
\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[0][27]~q\ & (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[0][27]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[0][27]~q\ & !\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[0][27]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y12_N20
\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~4_combout\ = \inst3|ALTSQRT_component|a_delay|sr[0][28]~q\ $ (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~3\)
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|a_delay|sr[0][28]~q\ & (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\)) # (!\inst3|ALTSQRT_component|a_delay|sr[0][28]~q\ & 
-- ((!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|a_delay|sr[0][28]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y12_N22
\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|_~39_combout\ & ((\inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\ & (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\ & VCC)))) # (!\inst3|ALTSQRT_component|_~39_combout\ & ((\inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|_~39_combout\ & (\inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\ & !\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|_~39_combout\ & ((\inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~39_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[0]|sr[0][0]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~7\);

-- Location: LCCOMB_X22_Y12_N24
\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~9_cout\ = CARRY((\inst3|ALTSQRT_component|_~38_combout\) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~38_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~7\,
	cout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X22_Y12_N26
\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ = !\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~9_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X23_Y12_N30
\inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~1_combout\ = !\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~1_combout\);

-- Location: FF_X23_Y12_N31
\inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\);

-- Location: FF_X20_Y12_N21
\inst3|ALTSQRT_component|b_dffe[4]|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][2]~q\);

-- Location: FF_X18_Y12_N17
\inst3|ALTSQRT_component|b_dffe[6]|sr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][4]~q\);

-- Location: FF_X18_Y16_N17
\inst3|ALTSQRT_component|b_dffe[8]|sr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][6]~q\);

-- Location: FF_X18_Y19_N21
\inst3|ALTSQRT_component|b_dffe[10]|sr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][8]~q\);

-- Location: FF_X22_Y18_N31
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][8]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\);

-- Location: FF_X23_Y21_N15
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][12]~q\);

-- Location: LCCOMB_X29_Y15_N4
\inst4|inst4|inst2|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst2|inst2~combout\ = inst12(26) $ (inst11(26) $ (\inst4|inst4|inst1|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(26),
	datab => inst11(26),
	datad => \inst4|inst4|inst1|inst5~0_combout\,
	combout => \inst4|inst4|inst2|inst2~combout\);

-- Location: FF_X29_Y15_N7
\inst9[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	asdata => \inst4|inst4|inst2|inst2~combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(29));

-- Location: LCCOMB_X23_Y21_N18
\inst8|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (inst6(1) & (((inst6(0))))) # (!inst6(1) & ((inst6(0) & (inst9(29))) # (!inst6(0) & ((inst2(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(29),
	datab => inst6(1),
	datac => inst2(13),
	datad => inst6(0),
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y21_N14
\inst8|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux2~1_combout\ = (inst6(1) & ((\inst8|Mux2~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[14]|sr[0][12]~q\))) # (!\inst8|Mux2~0_combout\ & (inst9(13))))) # (!inst6(1) & (((\inst8|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(13),
	datab => inst6(1),
	datac => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][12]~q\,
	datad => \inst8|Mux2~0_combout\,
	combout => \inst8|Mux2~1_combout\);

-- Location: LCCOMB_X29_Y15_N20
\inst4|inst4|inst3|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst3|inst2~combout\ = inst12(27) $ (inst11(27) $ (((\inst4|inst4|inst2|inst5~0_combout\) # (\inst4|inst4|inst2|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(27),
	datab => \inst4|inst4|inst2|inst5~0_combout\,
	datac => \inst4|inst4|inst2|inst5~1_combout\,
	datad => inst11(27),
	combout => \inst4|inst4|inst3|inst2~combout\);

-- Location: FF_X29_Y15_N21
\inst9[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst4|inst3|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(28));

-- Location: LCCOMB_X22_Y12_N12
\inst3|ALTSQRT_component|_~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~41_combout\ = (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~39_combout\))) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~6_combout\,
	datab => \inst3|ALTSQRT_component|_~39_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	combout => \inst3|ALTSQRT_component|_~41_combout\);

-- Location: FF_X22_Y12_N13
\inst3|ALTSQRT_component|r_dffe[2]|sr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[2]|sr[0][3]~q\);

-- Location: LCCOMB_X22_Y12_N6
\inst3|ALTSQRT_component|_~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~52_combout\ = (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ $ ((!\inst3|ALTSQRT_component|a_delay|sr[0][28]~q\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|a_delay|sr[0][28]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|_~52_combout\);

-- Location: FF_X22_Y12_N7
\inst3|ALTSQRT_component|r_dffe[2]|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[2]|sr[0][2]~q\);

-- Location: LCCOMB_X22_Y12_N30
\inst3|ALTSQRT_component|_~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~42_combout\ = (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[0][27]~q\)) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[0][27]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~2_combout\,
	combout => \inst3|ALTSQRT_component|_~42_combout\);

-- Location: FF_X22_Y12_N31
\inst3|ALTSQRT_component|r_dffe[2]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[2]|sr[0][1]~q\);

-- Location: LCCOMB_X22_Y12_N14
\inst3|ALTSQRT_component|_~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~43_combout\ = \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ $ (!\inst3|ALTSQRT_component|a_delay|sr[0][26]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datad => \inst3|ALTSQRT_component|a_delay|sr[0][26]~q\,
	combout => \inst3|ALTSQRT_component|_~43_combout\);

-- Location: FF_X22_Y12_N15
\inst3|ALTSQRT_component|r_dffe[2]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[2]|sr[0][0]~q\);

-- Location: FF_X23_Y12_N17
\inst3|ALTSQRT_component|a_delay|sr[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][25]~q\);

-- Location: FF_X23_Y12_N19
\inst3|ALTSQRT_component|a_delay|sr[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][25]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][25]~q\);

-- Location: LCCOMB_X24_Y12_N8
\inst3|ALTSQRT_component|a_delay|sr[0][24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[0][24]~feeder_combout\ = inst12(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => inst12(24),
	combout => \inst3|ALTSQRT_component|a_delay|sr[0][24]~feeder_combout\);

-- Location: FF_X24_Y12_N9
\inst3|ALTSQRT_component|a_delay|sr[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[0][24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][24]~q\);

-- Location: FF_X24_Y12_N7
\inst3|ALTSQRT_component|a_delay|sr[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][24]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][24]~q\);

-- Location: LCCOMB_X23_Y12_N16
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[1][24]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[1][24]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X23_Y12_N18
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[1][25]~q\ & (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[1][25]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[1][25]~q\ & !\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[1][25]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\);

-- Location: LCCOMB_X23_Y12_N20
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|r_dffe[2]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|r_dffe[2]|sr[0][0]~q\ & ((!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\) # (!\inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[2]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\ & !\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[2]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\);

-- Location: LCCOMB_X23_Y12_N22
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|r_dffe[2]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[2]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|r_dffe[2]|sr[0][1]~q\ & 
-- (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[2]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~q\ & ((!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|r_dffe[2]|sr[0][1]~q\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|r_dffe[2]|sr[0][1]~q\ & !\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[2]|sr[0][1]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\);

-- Location: LCCOMB_X23_Y12_N24
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\ $ (\inst3|ALTSQRT_component|r_dffe[2]|sr[0][2]~q\ $ (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\ & (\inst3|ALTSQRT_component|r_dffe[2]|sr[0][2]~q\ & !\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\ & ((\inst3|ALTSQRT_component|r_dffe[2]|sr[0][2]~q\) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[2]|sr[0][2]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~9\);

-- Location: LCCOMB_X23_Y12_N26
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~11_cout\ = CARRY((!\inst3|ALTSQRT_component|r_dffe[2]|sr[0][3]~q\ & !\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[2]|sr[0][3]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~9\,
	cout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X23_Y12_N28
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ = \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~11_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\);

-- Location: LCCOMB_X23_Y12_N8
\inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~0_combout\ = !\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~0_combout\);

-- Location: FF_X23_Y12_N9
\inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\);

-- Location: FF_X18_Y12_N15
\inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\);

-- Location: FF_X18_Y16_N15
\inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\);

-- Location: FF_X18_Y19_N19
\inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\);

-- Location: FF_X22_Y18_N7
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\);

-- Location: FF_X25_Y21_N5
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][11]~q\);

-- Location: LCCOMB_X20_Y15_N12
\inst4|inst2|inst3|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst3|inst2~combout\ = inst11(11) $ (inst12(11) $ (((\inst4|inst2|inst2|inst5~0_combout\) # (\inst4|inst2|inst2|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(11),
	datab => \inst4|inst2|inst2|inst5~0_combout\,
	datac => inst12(11),
	datad => \inst4|inst2|inst2|inst5~1_combout\,
	combout => \inst4|inst2|inst3|inst2~combout\);

-- Location: FF_X20_Y15_N13
\inst9[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst2|inst3|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(12));

-- Location: LCCOMB_X25_Y21_N10
\inst8|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (inst6(0) & (((inst6(1))))) # (!inst6(0) & ((inst6(1) & (inst9(12))) # (!inst6(1) & ((inst2(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst9(12),
	datac => inst6(1),
	datad => inst2(12),
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y21_N4
\inst8|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux3~1_combout\ = (inst6(0) & ((\inst8|Mux3~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[14]|sr[0][11]~q\))) # (!\inst8|Mux3~0_combout\ & (inst9(28))))) # (!inst6(0) & (((\inst8|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst9(28),
	datac => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][11]~q\,
	datad => \inst8|Mux3~0_combout\,
	combout => \inst8|Mux3~1_combout\);

-- Location: LCCOMB_X27_Y15_N16
\inst4|inst2|inst4|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst4|inst2~combout\ = \inst4|inst2|inst3|inst5~0_combout\ $ (inst11(12) $ (inst12(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst3|inst5~0_combout\,
	datac => inst11(12),
	datad => inst12(12),
	combout => \inst4|inst2|inst4|inst2~combout\);

-- Location: FF_X27_Y15_N17
\inst9[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst2|inst4|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(11));

-- Location: LCCOMB_X23_Y12_N10
\inst3|ALTSQRT_component|_~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~34_combout\ = (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|r_dffe[2]|sr[0][2]~q\))) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~8_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[2]|sr[0][2]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|_~34_combout\);

-- Location: LCCOMB_X23_Y12_N12
\inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~0_combout\ = (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (\inst3|ALTSQRT_component|r_dffe[2]|sr[0][1]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|r_dffe[2]|sr[0][1]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~6_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~0_combout\);

-- Location: LCCOMB_X23_Y12_N6
\inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~1_combout\ = (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (\inst3|ALTSQRT_component|r_dffe[2]|sr[0][0]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[2]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~4_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~1_combout\);

-- Location: LCCOMB_X23_Y12_N2
\inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~2_combout\ = (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|a_delay|sr[1][25]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~2_combout\,
	datac => \inst3|ALTSQRT_component|a_delay|sr[1][25]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~2_combout\);

-- Location: FF_X24_Y12_N17
\inst3|ALTSQRT_component|a_delay|sr[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][23]~q\);

-- Location: FF_X24_Y12_N15
\inst3|ALTSQRT_component|a_delay|sr[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][23]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][23]~q\);

-- Location: FF_X24_Y12_N19
\inst3|ALTSQRT_component|a_delay|sr[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][22]~q\);

-- Location: FF_X24_Y12_N13
\inst3|ALTSQRT_component|a_delay|sr[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][22]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][22]~q\);

-- Location: LCCOMB_X24_Y12_N12
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[1][22]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[1][22]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X24_Y12_N14
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[1][23]~q\ & (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[1][23]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[1][23]~q\ & !\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[1][23]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~3\);

-- Location: LCCOMB_X24_Y12_N16
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~4_combout\ = \inst3|ALTSQRT_component|a_delay|sr[1][24]~q\ $ (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~3\)
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|a_delay|sr[1][24]~q\ & (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\)) # (!\inst3|ALTSQRT_component|a_delay|sr[1][24]~q\ & 
-- ((!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[1][24]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\);

-- Location: LCCOMB_X24_Y12_N18
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~2_combout\ & ((\inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\ & (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~2_combout\ & ((\inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~2_combout\ & (\inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\ & !\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~2_combout\ & ((\inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~2_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][0]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\);

-- Location: LCCOMB_X24_Y12_N20
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~q\ $ (\inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~1_combout\ $ (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\)))) # 
-- (GND)
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~q\ & (\inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~1_combout\ & !\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~1_combout\) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][1]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~1_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\);

-- Location: LCCOMB_X24_Y12_N22
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\ & (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\ & (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\ & (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\))))
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~0_combout\ & (\inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\ & !\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~0_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[2]|sr[0][2]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~11\);

-- Location: LCCOMB_X24_Y12_N24
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~13_cout\ = CARRY((\inst3|ALTSQRT_component|_~34_combout\) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~34_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~11\,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X24_Y12_N26
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ = !\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~13_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\);

-- Location: LCCOMB_X23_Y12_N4
\inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~1_combout\ = !\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~1_combout\);

-- Location: FF_X23_Y12_N5
\inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~q\);

-- Location: FF_X18_Y12_N13
\inst3|ALTSQRT_component|b_dffe[6]|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][2]~q\);

-- Location: FF_X18_Y16_N13
\inst3|ALTSQRT_component|b_dffe[8]|sr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][4]~q\);

-- Location: FF_X18_Y16_N29
\inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\);

-- Location: FF_X22_Y18_N19
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\);

-- Location: FF_X27_Y15_N21
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][10]~q\);

-- Location: LCCOMB_X27_Y15_N12
\inst4|inst4|inst4|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst4|inst2~combout\ = inst12(28) $ (inst11(28) $ (\inst4|inst4|inst3|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(28),
	datac => inst11(28),
	datad => \inst4|inst4|inst3|inst5~0_combout\,
	combout => \inst4|inst4|inst4|inst2~combout\);

-- Location: FF_X27_Y15_N13
\inst9[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst4|inst4|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(27));

-- Location: LCCOMB_X27_Y15_N6
\inst8|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux4~0_combout\ = (inst6(0) & ((inst9(27)) # ((inst6(1))))) # (!inst6(0) & (((!inst6(1) & inst2(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(27),
	datab => inst6(0),
	datac => inst6(1),
	datad => inst2(11),
	combout => \inst8|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y15_N20
\inst8|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux4~1_combout\ = (inst6(1) & ((\inst8|Mux4~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[14]|sr[0][10]~q\))) # (!\inst8|Mux4~0_combout\ & (inst9(11))))) # (!inst6(1) & (((\inst8|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(1),
	datab => inst9(11),
	datac => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][10]~q\,
	datad => \inst8|Mux4~0_combout\,
	combout => \inst8|Mux4~1_combout\);

-- Location: LCCOMB_X30_Y15_N4
\inst4|inst4|inst5|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst5|inst2~combout\ = inst11(29) $ (inst12(29) $ (((\inst4|inst4|inst4|inst5~1_combout\) # (\inst4|inst4|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst4|inst5~1_combout\,
	datab => inst11(29),
	datac => inst12(29),
	datad => \inst4|inst4|inst4|inst5~0_combout\,
	combout => \inst4|inst4|inst5|inst2~combout\);

-- Location: FF_X30_Y15_N5
\inst9[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst4|inst5|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(26));

-- Location: LCCOMB_X24_Y12_N28
\inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]_NEW4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]_OTERM5\ = (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~0_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~10_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~0_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]_OTERM5\);

-- Location: FF_X24_Y12_N29
\inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]_OTERM5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~q\);

-- Location: LCCOMB_X24_Y12_N0
\inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]_NEW2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]_OTERM3\ = (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (\inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~1_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~1_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~8_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]_OTERM3\);

-- Location: FF_X24_Y12_N1
\inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]_OTERM3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~q\);

-- Location: LCCOMB_X24_Y12_N2
\inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]_NEW0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]_OTERM1\ = (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (\inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~2_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~2_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~6_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]_OTERM1\);

-- Location: FF_X24_Y12_N3
\inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]_OTERM1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~q\);

-- Location: LCCOMB_X24_Y12_N10
\inst3|ALTSQRT_component|_~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~51_combout\ = (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[1][24]~q\ $ ((!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[1][24]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|_~51_combout\);

-- Location: FF_X24_Y12_N11
\inst3|ALTSQRT_component|r_dffe[4]|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][2]~q\);

-- Location: LCCOMB_X24_Y12_N30
\inst3|ALTSQRT_component|_~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~36_combout\ = (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[1][23]~q\)) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datac => \inst3|ALTSQRT_component|a_delay|sr[1][23]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~2_combout\,
	combout => \inst3|ALTSQRT_component|_~36_combout\);

-- Location: FF_X24_Y12_N31
\inst3|ALTSQRT_component|r_dffe[4]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][1]~q\);

-- Location: LCCOMB_X24_Y12_N4
\inst3|ALTSQRT_component|_~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~37_combout\ = \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ $ (!\inst3|ALTSQRT_component|a_delay|sr[1][22]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => \inst3|ALTSQRT_component|a_delay|sr[1][22]~q\,
	combout => \inst3|ALTSQRT_component|_~37_combout\);

-- Location: FF_X24_Y12_N5
\inst3|ALTSQRT_component|r_dffe[4]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][0]~q\);

-- Location: FF_X20_Y12_N17
\inst3|ALTSQRT_component|a_delay|sr[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][21]~q\);

-- Location: FF_X20_Y12_N5
\inst3|ALTSQRT_component|a_delay|sr[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][21]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][21]~q\);

-- Location: FF_X20_Y12_N15
\inst3|ALTSQRT_component|a_delay|sr[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[1][21]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][21]~q\);

-- Location: FF_X20_Y12_N27
\inst3|ALTSQRT_component|a_delay|sr[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][20]~q\);

-- Location: FF_X20_Y12_N19
\inst3|ALTSQRT_component|a_delay|sr[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][20]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][20]~q\);

-- Location: FF_X20_Y12_N13
\inst3|ALTSQRT_component|a_delay|sr[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[1][20]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][20]~q\);

-- Location: LCCOMB_X20_Y12_N12
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[2][20]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[2][20]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X20_Y12_N14
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[2][21]~q\ & (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[2][21]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[2][21]~q\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[2][21]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\);

-- Location: LCCOMB_X20_Y12_N16
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|r_dffe[4]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|r_dffe[4]|sr[0][0]~q\ & ((!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\) # (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[4]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~q\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\);

-- Location: LCCOMB_X20_Y12_N18
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|r_dffe[4]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\ & (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[4]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|r_dffe[4]|sr[0][1]~q\ & (\inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[4]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][1]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\);

-- Location: LCCOMB_X20_Y12_N20
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][2]~q\ $ (\inst3|ALTSQRT_component|r_dffe[4]|sr[0][2]~q\ $ (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][2]~q\ & (\inst3|ALTSQRT_component|r_dffe[4]|sr[0][2]~q\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][2]~q\ & ((\inst3|ALTSQRT_component|r_dffe[4]|sr[0][2]~q\) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][2]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][2]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\);

-- Location: LCCOMB_X20_Y12_N22
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\ & (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\ & (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\ & (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\))))
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~q\ & (\inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\);

-- Location: LCCOMB_X20_Y12_N24
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~q\ $ (\inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\ $ (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~q\ & ((!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\) # (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~q\ & (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~13\);

-- Location: LCCOMB_X20_Y12_N26
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~15_cout\ = CARRY((!\inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~q\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][5]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~13\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X20_Y12_N28
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ = \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~15_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X20_Y12_N6
\inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~0_combout\ = !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~0_combout\);

-- Location: FF_X20_Y12_N7
\inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~q\);

-- Location: FF_X18_Y16_N11
\inst3|ALTSQRT_component|b_dffe[8]|sr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][3]~q\);

-- Location: FF_X18_Y19_N15
\inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\);

-- Location: FF_X22_Y18_N27
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\);

-- Location: FF_X27_Y17_N3
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][9]~q\);

-- Location: LCCOMB_X27_Y15_N14
\inst4|inst2|inst5|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst5|inst2~combout\ = inst11(13) $ (inst12(13) $ (((\inst4|inst2|inst4|inst5~0_combout\) # (\inst4|inst2|inst4|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(13),
	datab => \inst4|inst2|inst4|inst5~0_combout\,
	datac => \inst4|inst2|inst4|inst5~1_combout\,
	datad => inst12(13),
	combout => \inst4|inst2|inst5|inst2~combout\);

-- Location: FF_X27_Y15_N15
\inst9[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst2|inst5|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(10));

-- Location: LCCOMB_X27_Y17_N24
\inst8|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (inst6(1) & ((inst9(10)) # ((inst6(0))))) # (!inst6(1) & (((!inst6(0) & inst2(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(10),
	datab => inst6(1),
	datac => inst6(0),
	datad => inst2(10),
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y17_N2
\inst8|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux5~1_combout\ = (inst6(0) & ((\inst8|Mux5~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[14]|sr[0][9]~q\))) # (!\inst8|Mux5~0_combout\ & (inst9(26))))) # (!inst6(0) & (((\inst8|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst9(26),
	datac => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][9]~q\,
	datad => \inst8|Mux5~0_combout\,
	combout => \inst8|Mux5~1_combout\);

-- Location: LCCOMB_X27_Y15_N26
\inst4|inst2|inst6|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst6|inst2~combout\ = inst12(14) $ (\inst4|inst2|inst5|inst5~0_combout\ $ (inst11(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst12(14),
	datac => \inst4|inst2|inst5|inst5~0_combout\,
	datad => inst11(14),
	combout => \inst4|inst2|inst6|inst2~combout\);

-- Location: FF_X27_Y15_N27
\inst9[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst2|inst6|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(9));

-- Location: LCCOMB_X20_Y12_N4
\inst3|ALTSQRT_component|_~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~30_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (\inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~q\)) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][4]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~12_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|_~30_combout\);

-- Location: LCCOMB_X20_Y12_N30
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~0_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (\inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][3]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~10_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~0_combout\);

-- Location: LCCOMB_X20_Y12_N2
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~1_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|r_dffe[4]|sr[0][2]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~8_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][2]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~1_combout\);

-- Location: LCCOMB_X20_Y12_N0
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~2_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|r_dffe[4]|sr[0][1]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~6_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][1]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~2_combout\);

-- Location: LCCOMB_X20_Y12_N8
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~3_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (\inst3|ALTSQRT_component|r_dffe[4]|sr[0][0]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[4]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~4_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~3_combout\);

-- Location: LCCOMB_X20_Y12_N10
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~4_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[2][21]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[2][21]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~2_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~4_combout\);

-- Location: FF_X19_Y12_N19
\inst3|ALTSQRT_component|a_delay|sr[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][19]~q\);

-- Location: FF_X19_Y12_N5
\inst3|ALTSQRT_component|a_delay|sr[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][19]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][19]~q\);

-- Location: FF_X19_Y12_N3
\inst3|ALTSQRT_component|a_delay|sr[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[1][19]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][19]~q\);

-- Location: FF_X20_Y12_N9
\inst3|ALTSQRT_component|a_delay|sr[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][18]~q\);

-- Location: FF_X19_Y12_N7
\inst3|ALTSQRT_component|a_delay|sr[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][18]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][18]~q\);

-- Location: FF_X19_Y12_N1
\inst3|ALTSQRT_component|a_delay|sr[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[1][18]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][18]~q\);

-- Location: LCCOMB_X19_Y12_N0
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[2][18]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[2][18]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X19_Y12_N2
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[2][19]~q\ & (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[2][19]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[2][19]~q\ & !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[2][19]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~3\);

-- Location: LCCOMB_X19_Y12_N4
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~4_combout\ = \inst3|ALTSQRT_component|a_delay|sr[2][20]~q\ $ (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~3\)
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|a_delay|sr[2][20]~q\ & (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\)) # (!\inst3|ALTSQRT_component|a_delay|sr[2][20]~q\ & 
-- ((!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[2][20]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\);

-- Location: LCCOMB_X19_Y12_N6
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~q\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~4_combout\ & (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~4_combout\ & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~q\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~4_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~4_combout\ & (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~q\ & ((!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~4_combout\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~4_combout\ & !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~4_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\);

-- Location: LCCOMB_X19_Y12_N8
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\ $ (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~3_combout\ $ (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\)))) # 
-- (GND)
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\ & (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~3_combout\ & !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~3_combout\) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][1]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~3_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\);

-- Location: LCCOMB_X19_Y12_N10
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|b_dffe[4]|sr[0][2]~q\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~2_combout\ & (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~2_combout\ & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][2]~q\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~2_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~2_combout\ & (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\))))
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][2]~q\ & ((!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\) # (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~2_combout\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][2]~q\ & (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~2_combout\ & !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][2]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~2_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\);

-- Location: LCCOMB_X19_Y12_N12
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~1_combout\ $ (\inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\ $ (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\)))) # 
-- (GND)
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~1_combout\ & ((!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\) # (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~1_combout\ & (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\ & !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~1_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][3]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\);

-- Location: LCCOMB_X19_Y12_N14
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\ & (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\ & (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\ & (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\))))
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~0_combout\ & (\inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\ & !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~0_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[4]|sr[0][4]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~15\);

-- Location: LCCOMB_X19_Y12_N16
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~17_cout\ = CARRY((\inst3|ALTSQRT_component|_~30_combout\) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~30_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~15\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~17_cout\);

-- Location: LCCOMB_X19_Y12_N18
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ = !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~17_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\);

-- Location: LCCOMB_X17_Y12_N12
\inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~1_combout\ = !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~1_combout\);

-- Location: FF_X17_Y12_N13
\inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\);

-- Location: FF_X18_Y16_N9
\inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\);

-- Location: FF_X18_Y19_N13
\inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\);

-- Location: FF_X22_Y18_N23
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\);

-- Location: FF_X29_Y17_N17
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][8]~q\);

-- Location: LCCOMB_X28_Y15_N10
\inst4|inst4|inst6|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst6|inst2~combout\ = \inst4|inst4|inst5|inst5~0_combout\ $ (inst11(30) $ (inst12(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst4|inst5|inst5~0_combout\,
	datac => inst11(30),
	datad => inst12(30),
	combout => \inst4|inst4|inst6|inst2~combout\);

-- Location: FF_X27_Y15_N5
\inst9[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	asdata => \inst4|inst4|inst6|inst2~combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(25));

-- Location: LCCOMB_X29_Y17_N18
\inst8|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (inst6(1) & (((inst6(0))))) # (!inst6(1) & ((inst6(0) & (inst9(25))) # (!inst6(0) & ((inst2(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(25),
	datab => inst6(1),
	datac => inst6(0),
	datad => inst2(9),
	combout => \inst8|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y17_N16
\inst8|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux6~1_combout\ = (inst6(1) & ((\inst8|Mux6~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[14]|sr[0][8]~q\))) # (!\inst8|Mux6~0_combout\ & (inst9(9))))) # (!inst6(1) & (((\inst8|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(9),
	datab => inst6(1),
	datac => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][8]~q\,
	datad => \inst8|Mux6~0_combout\,
	combout => \inst8|Mux6~1_combout\);

-- Location: LCCOMB_X30_Y15_N6
\inst4|inst4|inst7|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst7|inst2~combout\ = inst11(31) $ (inst12(31) $ (((\inst4|inst4|inst6|inst5~1_combout\) # (\inst4|inst4|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(31),
	datab => \inst4|inst4|inst6|inst5~1_combout\,
	datac => inst12(31),
	datad => \inst4|inst4|inst6|inst5~0_combout\,
	combout => \inst4|inst4|inst7|inst2~combout\);

-- Location: FF_X30_Y15_N7
\inst9[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst4|inst7|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(24));

-- Location: LCCOMB_X19_Y12_N20
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]_NEW14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]_OTERM15\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~0_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~0_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~14_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]_OTERM15\);

-- Location: FF_X19_Y12_N21
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]_OTERM15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~q\);

-- Location: LCCOMB_X17_Y12_N14
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]_NEW12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]_OTERM13\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~1_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datab => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~1_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]_OTERM13\);

-- Location: FF_X17_Y12_N15
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]_OTERM13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~q\);

-- Location: LCCOMB_X19_Y12_N28
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]_NEW10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]_OTERM11\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~2_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~2_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~10_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]_OTERM11\);

-- Location: FF_X19_Y12_N29
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]_OTERM11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~q\);

-- Location: LCCOMB_X19_Y12_N22
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]_NEW8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]_OTERM9\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~3_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~8_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~3_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]_OTERM9\);

-- Location: FF_X19_Y12_N23
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]_OTERM9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~q\);

-- Location: LCCOMB_X19_Y12_N30
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]_NEW6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]_OTERM7\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~4_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~6_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~4_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]_OTERM7\);

-- Location: FF_X19_Y12_N31
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]_OTERM7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~q\);

-- Location: LCCOMB_X19_Y12_N26
\inst3|ALTSQRT_component|_~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~50_combout\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[2][20]~q\ $ (((!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\))))) # 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[2][20]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~4_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|_~50_combout\);

-- Location: FF_X19_Y12_N27
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][2]~q\);

-- Location: LCCOMB_X19_Y12_N24
\inst3|ALTSQRT_component|_~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~32_combout\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|a_delay|sr[2][19]~q\))) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~2_combout\,
	datac => \inst3|ALTSQRT_component|a_delay|sr[2][19]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|_~32_combout\);

-- Location: FF_X19_Y12_N25
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][1]~q\);

-- Location: LCCOMB_X17_Y12_N22
\inst3|ALTSQRT_component|_~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~33_combout\ = \inst3|ALTSQRT_component|a_delay|sr[2][18]~q\ $ (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[2][18]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|_~33_combout\);

-- Location: FF_X17_Y12_N23
\inst3|ALTSQRT_component|r_dffe[6]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][0]~q\);

-- Location: FF_X18_Y12_N3
\inst3|ALTSQRT_component|a_delay|sr[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][17]~q\);

-- Location: FF_X18_Y12_N25
\inst3|ALTSQRT_component|a_delay|sr[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][17]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][17]~q\);

-- Location: FF_X18_Y12_N23
\inst3|ALTSQRT_component|a_delay|sr[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[1][17]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][17]~q\);

-- Location: FF_X18_Y12_N7
\inst3|ALTSQRT_component|a_delay|sr[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[2][17]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][17]~q\);

-- Location: FF_X22_Y12_N5
\inst3|ALTSQRT_component|a_delay|sr[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][16]~q\);

-- Location: FF_X18_Y12_N27
\inst3|ALTSQRT_component|a_delay|sr[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][16]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][16]~q\);

-- Location: FF_X18_Y12_N31
\inst3|ALTSQRT_component|a_delay|sr[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[1][16]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][16]~q\);

-- Location: FF_X18_Y12_N5
\inst3|ALTSQRT_component|a_delay|sr[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[2][16]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][16]~q\);

-- Location: LCCOMB_X18_Y12_N4
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[3][16]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X18_Y12_N6
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[3][17]~q\ & (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[3][17]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[3][17]~q\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[3][17]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\);

-- Location: LCCOMB_X18_Y12_N8
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\ & (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][0]~q\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][0]~q\) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][0]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\);

-- Location: LCCOMB_X18_Y12_N10
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][1]~q\ & 
-- (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~q\ & ((!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][1]~q\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][1]~q\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][1]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\);

-- Location: LCCOMB_X18_Y12_N12
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][2]~q\ $ (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][2]~q\ $ (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][2]~q\ & (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][2]~q\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][2]~q\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][2]~q\) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][2]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][2]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\);

-- Location: LCCOMB_X18_Y12_N14
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\ & (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\ & (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\ & (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\))))
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~q\ & (\inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\);

-- Location: LCCOMB_X18_Y12_N16
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~q\ $ (\inst3|ALTSQRT_component|b_dffe[6]|sr[0][4]~q\ $ (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~q\ & ((!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\) # (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][4]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~q\ & (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][4]~q\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][4]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\);

-- Location: LCCOMB_X18_Y12_N18
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|b_dffe[6]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~q\ & (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~q\ & 
-- (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~q\ & (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\))))
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][5]~q\ & ((!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\) # (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~q\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][5]~q\ & (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~q\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][5]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\);

-- Location: LCCOMB_X18_Y12_N20
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~q\ $ (\inst3|ALTSQRT_component|b_dffe[6]|sr[0][6]~q\ $ (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~q\ & ((!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\) # (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][6]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~q\ & (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][6]~q\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][6]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~17\);

-- Location: LCCOMB_X18_Y12_N22
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~19_cout\ = CARRY((!\inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~q\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][7]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~17\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~19_cout\);

-- Location: LCCOMB_X18_Y12_N24
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ = \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~19_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\);

-- Location: LCCOMB_X17_Y12_N18
\inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~0_combout\ = !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~0_combout\);

-- Location: FF_X17_Y12_N19
\inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\);

-- Location: FF_X18_Y19_N11
\inst3|ALTSQRT_component|b_dffe[10]|sr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][3]~q\);

-- Location: FF_X22_Y19_N7
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\);

-- Location: FF_X28_Y17_N5
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][7]~q\);

-- Location: LCCOMB_X27_Y15_N28
\inst4|inst2|inst7|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst7|inst2~combout\ = inst11(15) $ (inst12(15) $ (((\inst4|inst2|inst6|inst5~1_combout\) # (\inst4|inst2|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst6|inst5~1_combout\,
	datab => inst11(15),
	datac => \inst4|inst2|inst6|inst5~0_combout\,
	datad => inst12(15),
	combout => \inst4|inst2|inst7|inst2~combout\);

-- Location: FF_X27_Y15_N29
\inst9[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst2|inst7|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(8));

-- Location: LCCOMB_X27_Y17_N14
\inst8|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux7~0_combout\ = (inst6(0) & (((inst6(1))))) # (!inst6(0) & ((inst6(1) & (inst9(8))) # (!inst6(1) & ((inst2(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst9(8),
	datac => inst6(1),
	datad => inst2(8),
	combout => \inst8|Mux7~0_combout\);

-- Location: LCCOMB_X28_Y17_N4
\inst8|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux7~1_combout\ = (inst6(0) & ((\inst8|Mux7~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[14]|sr[0][7]~q\))) # (!\inst8|Mux7~0_combout\ & (inst9(24))))) # (!inst6(0) & (((\inst8|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(24),
	datab => inst6(0),
	datac => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][7]~q\,
	datad => \inst8|Mux7~0_combout\,
	combout => \inst8|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y14_N12
\inst4|inst|inst|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst2~combout\ = inst11(0) $ (inst12(0) $ (\inst13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(0),
	datab => inst12(0),
	datad => \inst13~q\,
	combout => \inst4|inst|inst|inst2~combout\);

-- Location: FF_X23_Y14_N13
\inst9[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst|inst|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(7));

-- Location: LCCOMB_X17_Y12_N16
\inst3|ALTSQRT_component|_~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~26_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~q\)) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datab => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][6]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|_~26_combout\);

-- Location: LCCOMB_X18_Y12_N2
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~0_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~14_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][5]~q\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~0_combout\);

-- Location: LCCOMB_X18_Y12_N30
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~1_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][4]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~1_combout\);

-- Location: LCCOMB_X18_Y12_N26
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~2_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][3]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~10_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~2_combout\);

-- Location: LCCOMB_X18_Y12_N0
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~3_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][2]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][2]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~8_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~3_combout\);

-- Location: LCCOMB_X18_Y12_N28
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~4_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|r_dffe[6]|sr[0][1]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~6_combout\,
	datab => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][1]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~4_combout\);

-- Location: LCCOMB_X17_Y12_N0
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~5_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\inst3|ALTSQRT_component|r_dffe[6]|sr[0][0]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[6]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~4_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~5_combout\);

-- Location: LCCOMB_X17_Y12_N10
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~6_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|a_delay|sr[3][17]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~2_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datad => \inst3|ALTSQRT_component|a_delay|sr[3][17]~q\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~6_combout\);

-- Location: FF_X23_Y13_N27
\inst3|ALTSQRT_component|a_delay|sr[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][15]~q\);

-- Location: LCCOMB_X22_Y13_N2
\inst3|ALTSQRT_component|a_delay|sr[1][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[1][15]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[0][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[0][15]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[1][15]~feeder_combout\);

-- Location: FF_X22_Y13_N3
\inst3|ALTSQRT_component|a_delay|sr[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[1][15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][15]~q\);

-- Location: FF_X18_Y13_N11
\inst3|ALTSQRT_component|a_delay|sr[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[1][15]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][15]~q\);

-- Location: FF_X18_Y13_N5
\inst3|ALTSQRT_component|a_delay|sr[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[2][15]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][15]~q\);

-- Location: LCCOMB_X22_Y13_N26
\inst3|ALTSQRT_component|a_delay|sr[0][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[0][14]~feeder_combout\ = inst12(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => inst12(14),
	combout => \inst3|ALTSQRT_component|a_delay|sr[0][14]~feeder_combout\);

-- Location: FF_X22_Y13_N27
\inst3|ALTSQRT_component|a_delay|sr[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[0][14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][14]~q\);

-- Location: FF_X18_Y13_N9
\inst3|ALTSQRT_component|a_delay|sr[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][14]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][14]~q\);

-- Location: FF_X18_Y13_N7
\inst3|ALTSQRT_component|a_delay|sr[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[1][14]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][14]~q\);

-- Location: FF_X18_Y13_N3
\inst3|ALTSQRT_component|a_delay|sr[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[2][14]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][14]~q\);

-- Location: LCCOMB_X18_Y13_N2
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[3][14]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[3][14]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X18_Y13_N4
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[3][15]~q\ & (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[3][15]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[3][15]~q\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[3][15]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~3\);

-- Location: LCCOMB_X18_Y13_N6
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~4_combout\ = \inst3|ALTSQRT_component|a_delay|sr[3][16]~q\ $ (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~3\)
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|a_delay|sr[3][16]~q\ & (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\)) # (!\inst3|ALTSQRT_component|a_delay|sr[3][16]~q\ & 
-- ((!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[3][16]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\);

-- Location: LCCOMB_X18_Y13_N8
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~6_combout\ & ((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\ & (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~6_combout\ & ((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~6_combout\ & (\inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~6_combout\ & ((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~6_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][0]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\);

-- Location: LCCOMB_X18_Y13_N10
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~5_combout\ $ (\inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~q\ $ (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\)))) # 
-- (GND)
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~5_combout\ & ((!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\) # (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~5_combout\ & (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~q\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~5_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][1]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\);

-- Location: LCCOMB_X18_Y13_N12
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|b_dffe[6]|sr[0][2]~q\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~4_combout\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~4_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][2]~q\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~4_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~4_combout\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\))))
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][2]~q\ & ((!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\) # (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~4_combout\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][2]~q\ & (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~4_combout\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][2]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~4_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\);

-- Location: LCCOMB_X18_Y13_N14
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\ $ (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~3_combout\ $ (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\)))) # 
-- (GND)
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~3_combout\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~3_combout\) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][3]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~3_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\);

-- Location: LCCOMB_X18_Y13_N16
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|b_dffe[6]|sr[0][4]~q\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~2_combout\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~2_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][4]~q\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~2_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~2_combout\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\))))
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][4]~q\ & ((!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\) # (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~2_combout\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][4]~q\ & (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~2_combout\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][4]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~2_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\);

-- Location: LCCOMB_X18_Y13_N18
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~1_combout\ $ (\inst3|ALTSQRT_component|b_dffe[6]|sr[0][5]~q\ $ (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\)))) # 
-- (GND)
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~1_combout\ & ((!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\) # (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][5]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~1_combout\ & (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][5]~q\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~1_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][5]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\);

-- Location: LCCOMB_X18_Y13_N20
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|b_dffe[6]|sr[0][6]~q\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~0_combout\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~0_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][6]~q\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~0_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~0_combout\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\))))
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|b_dffe[6]|sr[0][6]~q\ & ((!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\) # (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~0_combout\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[6]|sr[0][6]~q\ & (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~0_combout\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[6]|sr[0][6]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~0_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~19\);

-- Location: LCCOMB_X18_Y13_N22
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~21_cout\ = CARRY((\inst3|ALTSQRT_component|_~26_combout\) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~26_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~19\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~21_cout\);

-- Location: LCCOMB_X18_Y13_N24
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ = !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~21_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~21_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\);

-- Location: LCCOMB_X17_Y16_N12
\inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~1_combout\ = !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~1_combout\);

-- Location: FF_X17_Y16_N13
\inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~q\);

-- Location: FF_X18_Y19_N9
\inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\);

-- Location: FF_X22_Y19_N1
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\);

-- Location: FF_X23_Y17_N17
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][6]~q\);

-- Location: LCCOMB_X23_Y14_N24
\inst4|inst3|inst|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst|inst2~combout\ = inst11(16) $ (inst12(16) $ (\inst4|inst2|inst7|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(16),
	datab => inst12(16),
	datac => \inst4|inst2|inst7|inst5~0_combout\,
	combout => \inst4|inst3|inst|inst2~combout\);

-- Location: FF_X23_Y14_N25
\inst9[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst3|inst|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(23));

-- Location: LCCOMB_X23_Y17_N24
\inst8|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux8~0_combout\ = (inst6(0) & ((inst9(23)) # ((inst6(1))))) # (!inst6(0) & (((!inst6(1) & inst2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(23),
	datab => inst6(0),
	datac => inst6(1),
	datad => inst2(7),
	combout => \inst8|Mux8~0_combout\);

-- Location: LCCOMB_X23_Y17_N16
\inst8|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux8~1_combout\ = (inst6(1) & ((\inst8|Mux8~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[14]|sr[0][6]~q\))) # (!\inst8|Mux8~0_combout\ & (inst9(7))))) # (!inst6(1) & (((\inst8|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(7),
	datab => inst6(1),
	datac => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][6]~q\,
	datad => \inst8|Mux8~0_combout\,
	combout => \inst8|Mux8~1_combout\);

-- Location: LCCOMB_X23_Y17_N26
\inst4|inst3|inst1|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst1|inst2~combout\ = inst11(17) $ (inst12(17) $ (((\inst4|inst3|inst|inst5~1_combout\) # (\inst4|inst3|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst|inst5~1_combout\,
	datab => inst11(17),
	datac => inst12(17),
	datad => \inst4|inst3|inst|inst5~0_combout\,
	combout => \inst4|inst3|inst1|inst2~combout\);

-- Location: FF_X23_Y17_N27
\inst9[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst3|inst1|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(22));

-- Location: LCCOMB_X18_Y13_N30
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]_NEW28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]_OTERM29\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~0_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~18_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~0_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]_OTERM29\);

-- Location: FF_X18_Y13_N31
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]_OTERM29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~q\);

-- Location: LCCOMB_X17_Y16_N30
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]_NEW26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]_OTERM27\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~1_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~16_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~1_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]_OTERM27\);

-- Location: FF_X17_Y16_N31
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]_OTERM27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~q\);

-- Location: LCCOMB_X17_Y16_N8
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]_NEW24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]_OTERM25\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~2_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datab => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~2_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~14_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]_OTERM25\);

-- Location: FF_X17_Y16_N9
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]_OTERM25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~q\);

-- Location: LCCOMB_X17_Y16_N0
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]_NEW22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]_OTERM23\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~3_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datab => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~3_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]_OTERM23\);

-- Location: FF_X17_Y16_N1
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]_OTERM23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~q\);

-- Location: LCCOMB_X18_Y13_N0
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]_NEW20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]_OTERM21\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~4_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~10_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~4_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]_OTERM21\);

-- Location: FF_X18_Y13_N1
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]_OTERM21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~q\);

-- Location: LCCOMB_X17_Y13_N28
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]_NEW18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]_OTERM19\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~5_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~5_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~8_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]_OTERM19\);

-- Location: FF_X17_Y13_N29
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]_OTERM19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~q\);

-- Location: LCCOMB_X18_Y13_N26
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]_NEW16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]_OTERM17\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~6_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~6_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~6_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]_OTERM17\);

-- Location: FF_X18_Y13_N27
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]_OTERM17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~q\);

-- Location: LCCOMB_X18_Y13_N28
\inst3|ALTSQRT_component|_~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~49_combout\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[3][16]~q\ $ ((!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[3][16]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|_~49_combout\);

-- Location: FF_X18_Y13_N29
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][2]~q\);

-- Location: LCCOMB_X17_Y13_N10
\inst3|ALTSQRT_component|_~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~28_combout\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[3][15]~q\)) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[3][15]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~2_combout\,
	combout => \inst3|ALTSQRT_component|_~28_combout\);

-- Location: FF_X17_Y13_N11
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][1]~q\);

-- Location: LCCOMB_X17_Y16_N22
\inst3|ALTSQRT_component|_~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~29_combout\ = \inst3|ALTSQRT_component|a_delay|sr[3][14]~q\ $ (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[3][14]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	combout => \inst3|ALTSQRT_component|_~29_combout\);

-- Location: FF_X17_Y16_N23
\inst3|ALTSQRT_component|r_dffe[8]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][0]~q\);

-- Location: FF_X19_Y16_N31
\inst3|ALTSQRT_component|a_delay|sr[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][13]~q\);

-- Location: FF_X18_Y16_N7
\inst3|ALTSQRT_component|a_delay|sr[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][13]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][13]~q\);

-- Location: FF_X18_Y16_N31
\inst3|ALTSQRT_component|a_delay|sr[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[1][13]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][13]~q\);

-- Location: FF_X18_Y16_N27
\inst3|ALTSQRT_component|a_delay|sr[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[2][13]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][13]~q\);

-- Location: FF_X18_Y16_N3
\inst3|ALTSQRT_component|a_delay|sr[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[3][13]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][13]~q\);

-- Location: LCCOMB_X22_Y16_N26
\inst3|ALTSQRT_component|a_delay|sr[0][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[0][12]~feeder_combout\ = inst12(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => inst12(12),
	combout => \inst3|ALTSQRT_component|a_delay|sr[0][12]~feeder_combout\);

-- Location: FF_X22_Y16_N27
\inst3|ALTSQRT_component|a_delay|sr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[0][12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][12]~q\);

-- Location: FF_X18_Y16_N5
\inst3|ALTSQRT_component|a_delay|sr[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][12]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][12]~q\);

-- Location: FF_X18_Y16_N23
\inst3|ALTSQRT_component|a_delay|sr[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[1][12]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][12]~q\);

-- Location: FF_X18_Y16_N25
\inst3|ALTSQRT_component|a_delay|sr[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[2][12]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][12]~q\);

-- Location: FF_X18_Y16_N1
\inst3|ALTSQRT_component|a_delay|sr[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[3][12]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][12]~q\);

-- Location: LCCOMB_X18_Y16_N0
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[4][12]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[4][12]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X18_Y16_N2
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[4][13]~q\ & (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[4][13]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[4][13]~q\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[4][13]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\);

-- Location: LCCOMB_X18_Y16_N4
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~q\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][0]~q\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~q\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][0]~q\) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][0]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\);

-- Location: LCCOMB_X18_Y16_N6
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\ & (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][1]~q\ & (\inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][1]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\);

-- Location: LCCOMB_X18_Y16_N8
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][2]~q\ $ (\inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\ $ (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][2]~q\ & ((!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\) # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][2]~q\ & (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][2]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\);

-- Location: LCCOMB_X18_Y16_N10
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|b_dffe[8]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~q\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~q\ & 
-- (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~q\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\))))
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][3]~q\ & ((!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\) # (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~q\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][3]~q\ & (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~q\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][3]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\);

-- Location: LCCOMB_X18_Y16_N12
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][4]~q\ $ (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~q\ $ (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][4]~q\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~q\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][4]~q\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~q\) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][4]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\);

-- Location: LCCOMB_X18_Y16_N14
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\ & (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\))))
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~q\ & (\inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\);

-- Location: LCCOMB_X18_Y16_N16
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~q\ $ (\inst3|ALTSQRT_component|b_dffe[8]|sr[0][6]~q\ $ (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~q\ & ((!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\) # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][6]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~q\ & (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][6]~q\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][6]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\);

-- Location: LCCOMB_X18_Y16_N18
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~q\ & ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\ & (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~q\ & ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\))))
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~q\ & (\inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~q\ & ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\);

-- Location: LCCOMB_X18_Y16_N20
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~20_combout\ = ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][8]~q\ $ (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~q\ $ (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~21\ = CARRY((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][8]~q\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~q\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][8]~q\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~q\) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][8]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~20_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~21\);

-- Location: LCCOMB_X18_Y16_N22
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~23_cout\ = CARRY((!\inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~q\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][9]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~21\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~23_cout\);

-- Location: LCCOMB_X18_Y16_N24
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ = \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~23_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~23_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\);

-- Location: LCCOMB_X17_Y19_N10
\inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~0_combout\ = !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~0_combout\);

-- Location: FF_X17_Y19_N11
\inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~q\);

-- Location: FF_X22_Y19_N11
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\);

-- Location: FF_X27_Y17_N31
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][5]~q\);

-- Location: LCCOMB_X23_Y17_N30
\inst4|inst|inst1|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst2~combout\ = inst11(1) $ (inst12(1) $ (((\inst4|inst|inst|inst5~0_combout\) # (\inst4|inst|inst|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst|inst5~0_combout\,
	datab => inst11(1),
	datac => \inst4|inst|inst|inst5~1_combout\,
	datad => inst12(1),
	combout => \inst4|inst|inst1|inst2~combout\);

-- Location: FF_X23_Y17_N31
\inst9[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst|inst1|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(6));

-- Location: LCCOMB_X27_Y17_N16
\inst8|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux9~0_combout\ = (inst6(1) & ((inst9(6)) # ((inst6(0))))) # (!inst6(1) & (((!inst6(0) & inst2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(6),
	datab => inst6(1),
	datac => inst6(0),
	datad => inst2(6),
	combout => \inst8|Mux9~0_combout\);

-- Location: LCCOMB_X27_Y17_N30
\inst8|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux9~1_combout\ = (inst6(0) & ((\inst8|Mux9~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[14]|sr[0][5]~q\))) # (!\inst8|Mux9~0_combout\ & (inst9(22))))) # (!inst6(0) & (((\inst8|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst9(22),
	datac => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][5]~q\,
	datad => \inst8|Mux9~0_combout\,
	combout => \inst8|Mux9~1_combout\);

-- Location: LCCOMB_X23_Y17_N18
\inst4|inst|inst1|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst5~0_combout\ = (inst11(1) & ((\inst4|inst|inst|inst5~0_combout\) # ((\inst4|inst|inst|inst5~1_combout\) # (inst12(1))))) # (!inst11(1) & (inst12(1) & ((\inst4|inst|inst|inst5~0_combout\) # (\inst4|inst|inst|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst|inst5~0_combout\,
	datab => inst11(1),
	datac => \inst4|inst|inst|inst5~1_combout\,
	datad => inst12(1),
	combout => \inst4|inst|inst1|inst5~0_combout\);

-- Location: LCCOMB_X23_Y17_N10
\inst4|inst|inst2|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst2~combout\ = inst11(2) $ (\inst4|inst|inst1|inst5~0_combout\ $ (inst12(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(2),
	datab => \inst4|inst|inst1|inst5~0_combout\,
	datad => inst12(2),
	combout => \inst4|inst|inst2|inst2~combout\);

-- Location: FF_X23_Y17_N11
\inst9[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst|inst2|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(5));

-- Location: LCCOMB_X17_Y16_N6
\inst3|ALTSQRT_component|_~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~22_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~q\)) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][8]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~20_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	combout => \inst3|ALTSQRT_component|_~22_combout\);

-- Location: LCCOMB_X17_Y16_N14
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~0_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][7]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~0_combout\);

-- Location: LCCOMB_X17_Y16_N2
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~1_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][6]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~1_combout\);

-- Location: LCCOMB_X18_Y16_N26
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~2_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~14_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][5]~q\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~2_combout\);

-- Location: LCCOMB_X15_Y16_N6
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~3_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][4]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~12_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~3_combout\);

-- Location: LCCOMB_X17_Y15_N0
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~4_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][3]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~10_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~4_combout\);

-- Location: LCCOMB_X18_Y16_N28
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~5_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][2]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][2]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~8_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~5_combout\);

-- Location: LCCOMB_X18_Y16_N30
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~6_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|r_dffe[8]|sr[0][1]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~6_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][1]~q\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~6_combout\);

-- Location: LCCOMB_X17_Y16_N20
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~7_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|r_dffe[8]|sr[0][0]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[8]|sr[0][0]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~7_combout\);

-- Location: LCCOMB_X17_Y16_N10
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~8_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[4][13]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datac => \inst3|ALTSQRT_component|a_delay|sr[4][13]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~2_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~8_combout\);

-- Location: LCCOMB_X20_Y16_N12
\inst3|ALTSQRT_component|a_delay|sr[0][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[0][11]~feeder_combout\ = inst12(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => inst12(11),
	combout => \inst3|ALTSQRT_component|a_delay|sr[0][11]~feeder_combout\);

-- Location: FF_X20_Y16_N13
\inst3|ALTSQRT_component|a_delay|sr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[0][11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][11]~q\);

-- Location: LCCOMB_X20_Y16_N22
\inst3|ALTSQRT_component|a_delay|sr[1][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[1][11]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[0][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[0][11]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[1][11]~feeder_combout\);

-- Location: FF_X20_Y16_N23
\inst3|ALTSQRT_component|a_delay|sr[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[1][11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][11]~q\);

-- Location: FF_X20_Y16_N19
\inst3|ALTSQRT_component|a_delay|sr[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[1][11]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][11]~q\);

-- Location: LCCOMB_X20_Y16_N26
\inst3|ALTSQRT_component|a_delay|sr[3][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[3][11]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[2][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[2][11]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[3][11]~feeder_combout\);

-- Location: FF_X20_Y16_N27
\inst3|ALTSQRT_component|a_delay|sr[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[3][11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][11]~q\);

-- Location: FF_X16_Y16_N5
\inst3|ALTSQRT_component|a_delay|sr[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[3][11]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][11]~q\);

-- Location: LCCOMB_X20_Y16_N20
\inst3|ALTSQRT_component|a_delay|sr[0][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[0][10]~feeder_combout\ = inst12(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => inst12(10),
	combout => \inst3|ALTSQRT_component|a_delay|sr[0][10]~feeder_combout\);

-- Location: FF_X20_Y16_N21
\inst3|ALTSQRT_component|a_delay|sr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[0][10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][10]~q\);

-- Location: LCCOMB_X20_Y16_N24
\inst3|ALTSQRT_component|a_delay|sr[1][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[1][10]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[0][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[0][10]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[1][10]~feeder_combout\);

-- Location: FF_X20_Y16_N25
\inst3|ALTSQRT_component|a_delay|sr[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[1][10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][10]~q\);

-- Location: LCCOMB_X20_Y16_N28
\inst3|ALTSQRT_component|a_delay|sr[2][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[2][10]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[1][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[1][10]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[2][10]~feeder_combout\);

-- Location: FF_X20_Y16_N29
\inst3|ALTSQRT_component|a_delay|sr[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[2][10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][10]~q\);

-- Location: LCCOMB_X20_Y16_N4
\inst3|ALTSQRT_component|a_delay|sr[3][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[3][10]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[2][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[2][10]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[3][10]~feeder_combout\);

-- Location: FF_X20_Y16_N5
\inst3|ALTSQRT_component|a_delay|sr[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[3][10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][10]~q\);

-- Location: FF_X16_Y16_N3
\inst3|ALTSQRT_component|a_delay|sr[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[3][10]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][10]~q\);

-- Location: LCCOMB_X16_Y16_N2
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[4][10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[4][10]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X16_Y16_N4
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[4][11]~q\ & (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[4][11]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[4][11]~q\ & !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[4][11]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~3\);

-- Location: LCCOMB_X16_Y16_N6
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~4_combout\ = \inst3|ALTSQRT_component|a_delay|sr[4][12]~q\ $ (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~3\)
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|a_delay|sr[4][12]~q\ & (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\)) # (!\inst3|ALTSQRT_component|a_delay|sr[4][12]~q\ & 
-- ((!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[4][12]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\);

-- Location: LCCOMB_X16_Y16_N8
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~8_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~8_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~8_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~8_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~q\ & ((!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~8_combout\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~8_combout\ & !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~8_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\);

-- Location: LCCOMB_X16_Y16_N10
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~7_combout\ $ (\inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\ $ (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\)))) # 
-- (GND)
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~7_combout\ & ((!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\) # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~7_combout\ & (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\ & !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~7_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][1]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\);

-- Location: LCCOMB_X16_Y16_N12
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~6_combout\ & ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\ & (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~6_combout\ & ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\))))
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~6_combout\ & (\inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\ & !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~6_combout\ & ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~6_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][2]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\);

-- Location: LCCOMB_X16_Y16_N14
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][3]~q\ $ (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~5_combout\ $ (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\)))) 
-- # (GND)
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][3]~q\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~5_combout\ & !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~5_combout\) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][3]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~5_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\);

-- Location: LCCOMB_X16_Y16_N16
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|b_dffe[8]|sr[0][4]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~4_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~4_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][4]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~4_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~4_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\))))
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][4]~q\ & ((!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~4_combout\))) 
-- # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][4]~q\ & (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~4_combout\ & !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][4]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~4_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\);

-- Location: LCCOMB_X16_Y16_N18
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\ $ (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~3_combout\ $ (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\)))) 
-- # (GND)
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~3_combout\ & !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~3_combout\) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][5]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~3_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\);

-- Location: LCCOMB_X16_Y16_N20
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|b_dffe[8]|sr[0][6]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~2_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~2_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][6]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~2_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~2_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\))))
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][6]~q\ & ((!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~2_combout\))) 
-- # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][6]~q\ & (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~2_combout\ & !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][6]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~2_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\);

-- Location: LCCOMB_X16_Y16_N22
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~20_combout\ = ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~1_combout\ $ (\inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\ $ (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\)))) 
-- # (GND)
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\ = CARRY((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~1_combout\ & ((!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\) # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\))) 
-- # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~1_combout\ & (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\ & !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~1_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][7]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~20_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\);

-- Location: LCCOMB_X16_Y16_N24
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~22_combout\ = (\inst3|ALTSQRT_component|b_dffe[8]|sr[0][8]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~0_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\)) 
-- # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~0_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][8]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~0_combout\ 
-- & (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~0_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\))))
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~23\ = CARRY((\inst3|ALTSQRT_component|b_dffe[8]|sr[0][8]~q\ & ((!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~0_combout\))) 
-- # (!\inst3|ALTSQRT_component|b_dffe[8]|sr[0][8]~q\ & (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~0_combout\ & !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[8]|sr[0][8]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~0_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~22_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~23\);

-- Location: LCCOMB_X16_Y16_N26
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~25_cout\ = CARRY((\inst3|ALTSQRT_component|_~22_combout\) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~22_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~23\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~25_cout\);

-- Location: LCCOMB_X16_Y16_N28
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ = !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~25_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\);

-- Location: LCCOMB_X16_Y19_N2
\inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~1_combout\ = !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~1_combout\);

-- Location: FF_X16_Y19_N3
\inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\);

-- Location: FF_X22_Y19_N5
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\);

-- Location: FF_X23_Y17_N29
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][4]~q\);

-- Location: LCCOMB_X22_Y15_N18
\inst4|inst3|inst2|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst2|inst2~combout\ = \inst4|inst3|inst1|inst5~0_combout\ $ (inst12(18) $ (inst11(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst1|inst5~0_combout\,
	datab => inst12(18),
	datad => inst11(18),
	combout => \inst4|inst3|inst2|inst2~combout\);

-- Location: FF_X25_Y15_N21
\inst9[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	asdata => \inst4|inst3|inst2|inst2~combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(21));

-- Location: LCCOMB_X23_Y17_N12
\inst8|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux10~0_combout\ = (inst6(1) & (((inst6(0))))) # (!inst6(1) & ((inst6(0) & (inst9(21))) # (!inst6(0) & ((inst2(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(21),
	datab => inst6(1),
	datac => inst2(5),
	datad => inst6(0),
	combout => \inst8|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y17_N28
\inst8|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux10~1_combout\ = (inst6(1) & ((\inst8|Mux10~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[14]|sr[0][4]~q\))) # (!\inst8|Mux10~0_combout\ & (inst9(5))))) # (!inst6(1) & (((\inst8|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(5),
	datab => inst6(1),
	datac => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][4]~q\,
	datad => \inst8|Mux10~0_combout\,
	combout => \inst8|Mux10~1_combout\);

-- Location: LCCOMB_X23_Y14_N26
\inst4|inst3|inst3|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst3|inst2~combout\ = inst12(19) $ (inst11(19) $ (((\inst4|inst3|inst2|inst5~1_combout\) # (\inst4|inst3|inst2|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(19),
	datab => inst11(19),
	datac => \inst4|inst3|inst2|inst5~1_combout\,
	datad => \inst4|inst3|inst2|inst5~0_combout\,
	combout => \inst4|inst3|inst3|inst2~combout\);

-- Location: FF_X23_Y14_N27
\inst9[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst3|inst3|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(20));

-- Location: LCCOMB_X17_Y16_N26
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]_NEW46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]_OTERM47\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~0_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~0_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~22_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]_OTERM47\);

-- Location: FF_X17_Y16_N27
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]_OTERM47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~q\);

-- Location: LCCOMB_X16_Y16_N30
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]_NEW44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]_OTERM45\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~1_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~1_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~20_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]_OTERM45\);

-- Location: FF_X16_Y16_N31
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]_OTERM45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~q\);

-- Location: LCCOMB_X17_Y16_N18
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]_NEW42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]_OTERM43\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~2_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~18_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~2_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]_OTERM43\);

-- Location: FF_X17_Y16_N19
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]_OTERM43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~q\);

-- Location: LCCOMB_X16_Y19_N0
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]_NEW40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]_OTERM41\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~3_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~3_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~16_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]_OTERM41\);

-- Location: FF_X16_Y19_N1
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]_OTERM41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~q\);

-- Location: LCCOMB_X17_Y19_N14
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]_NEW38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]_OTERM39\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~4_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~4_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~14_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]_OTERM39\);

-- Location: FF_X17_Y19_N15
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]_OTERM39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~q\);

-- Location: LCCOMB_X17_Y19_N12
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]_NEW36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]_OTERM37\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~5_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~5_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~12_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]_OTERM37\);

-- Location: FF_X17_Y19_N13
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]_OTERM37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~q\);

-- Location: LCCOMB_X17_Y16_N16
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]_NEW34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]_OTERM35\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~6_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~10_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~6_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]_OTERM35\);

-- Location: FF_X17_Y16_N17
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]_OTERM35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~q\);

-- Location: LCCOMB_X17_Y16_N24
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]_NEW32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]_OTERM33\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~7_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~7_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]_OTERM33\);

-- Location: FF_X17_Y16_N25
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]_OTERM33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~q\);

-- Location: LCCOMB_X17_Y16_N28
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]_NEW30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]_OTERM31\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~8_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~6_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~8_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]_OTERM31\);

-- Location: FF_X17_Y16_N29
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]_OTERM31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~q\);

-- Location: LCCOMB_X17_Y16_N4
\inst3|ALTSQRT_component|_~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~48_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[4][12]~q\ $ ((!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[4][12]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~4_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|_~48_combout\);

-- Location: FF_X17_Y16_N5
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][2]~q\);

-- Location: LCCOMB_X16_Y16_N0
\inst3|ALTSQRT_component|_~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~24_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|a_delay|sr[4][11]~q\))) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~2_combout\,
	datac => \inst3|ALTSQRT_component|a_delay|sr[4][11]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|_~24_combout\);

-- Location: FF_X16_Y16_N1
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][1]~q\);

-- Location: LCCOMB_X17_Y19_N6
\inst3|ALTSQRT_component|_~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~25_combout\ = \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ $ (!\inst3|ALTSQRT_component|a_delay|sr[4][10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datad => \inst3|ALTSQRT_component|a_delay|sr[4][10]~q\,
	combout => \inst3|ALTSQRT_component|_~25_combout\);

-- Location: FF_X18_Y19_N17
\inst3|ALTSQRT_component|r_dffe[10]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|_~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][0]~q\);

-- Location: LCCOMB_X23_Y16_N20
\inst3|ALTSQRT_component|a_delay|sr[0][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[0][9]~feeder_combout\ = inst12(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => inst12(9),
	combout => \inst3|ALTSQRT_component|a_delay|sr[0][9]~feeder_combout\);

-- Location: FF_X23_Y16_N21
\inst3|ALTSQRT_component|a_delay|sr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[0][9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][9]~q\);

-- Location: LCCOMB_X23_Y16_N12
\inst3|ALTSQRT_component|a_delay|sr[1][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[1][9]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[0][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[0][9]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[1][9]~feeder_combout\);

-- Location: FF_X23_Y16_N13
\inst3|ALTSQRT_component|a_delay|sr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[1][9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][9]~q\);

-- Location: LCCOMB_X23_Y16_N4
\inst3|ALTSQRT_component|a_delay|sr[2][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[2][9]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[1][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[1][9]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[2][9]~feeder_combout\);

-- Location: FF_X23_Y16_N5
\inst3|ALTSQRT_component|a_delay|sr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[2][9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][9]~q\);

-- Location: FF_X23_Y16_N31
\inst3|ALTSQRT_component|a_delay|sr[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[2][9]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][9]~q\);

-- Location: FF_X18_Y19_N31
\inst3|ALTSQRT_component|a_delay|sr[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[3][9]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][9]~q\);

-- Location: FF_X18_Y19_N3
\inst3|ALTSQRT_component|a_delay|sr[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[4][9]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[5][9]~q\);

-- Location: FF_X23_Y16_N9
\inst3|ALTSQRT_component|a_delay|sr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][8]~q\);

-- Location: FF_X23_Y16_N11
\inst3|ALTSQRT_component|a_delay|sr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][8]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][8]~q\);

-- Location: LCCOMB_X23_Y16_N18
\inst3|ALTSQRT_component|a_delay|sr[2][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[2][8]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[1][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[1][8]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[2][8]~feeder_combout\);

-- Location: FF_X23_Y16_N19
\inst3|ALTSQRT_component|a_delay|sr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[2][8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][8]~q\);

-- Location: LCCOMB_X23_Y16_N28
\inst3|ALTSQRT_component|a_delay|sr[3][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[3][8]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[2][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[2][8]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[3][8]~feeder_combout\);

-- Location: FF_X23_Y16_N29
\inst3|ALTSQRT_component|a_delay|sr[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[3][8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][8]~q\);

-- Location: LCCOMB_X22_Y16_N2
\inst3|ALTSQRT_component|a_delay|sr[4][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[4][8]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[3][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[3][8]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[4][8]~feeder_combout\);

-- Location: FF_X22_Y16_N3
\inst3|ALTSQRT_component|a_delay|sr[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[4][8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][8]~q\);

-- Location: FF_X18_Y19_N1
\inst3|ALTSQRT_component|a_delay|sr[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[4][8]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[5][8]~q\);

-- Location: LCCOMB_X18_Y19_N0
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[5][8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[5][8]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X18_Y19_N2
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[5][9]~q\ & (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[5][9]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[5][9]~q\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[5][9]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\);

-- Location: LCCOMB_X18_Y19_N4
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][0]~q\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][0]~q\) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][0]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\);

-- Location: LCCOMB_X18_Y19_N6
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][1]~q\ & 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~q\ & ((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][1]~q\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][1]~q\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][1]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\);

-- Location: LCCOMB_X18_Y19_N8
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][2]~q\ $ (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\ $ (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][2]~q\ & ((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][2]~q\ & (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][2]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\);

-- Location: LCCOMB_X18_Y19_N10
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~q\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~q\ & 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~q\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\))))
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][3]~q\ & ((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~q\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][3]~q\ & (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~q\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][3]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\);

-- Location: LCCOMB_X18_Y19_N12
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\ $ (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~q\ $ (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~q\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~q\) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\);

-- Location: LCCOMB_X18_Y19_N14
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\ & (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\))))
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~q\ & (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\);

-- Location: LCCOMB_X18_Y19_N16
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~q\ $ (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\ $ (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~q\ & ((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~q\ & (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\);

-- Location: LCCOMB_X18_Y19_N18
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~q\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\ & (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~q\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\))))
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~q\ & (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~q\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\);

-- Location: LCCOMB_X18_Y19_N20
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~20_combout\ = ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~q\ $ (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][8]~q\ $ (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\ = CARRY((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~q\ & ((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][8]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~q\ & (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][8]~q\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][8]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~20_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\);

-- Location: LCCOMB_X18_Y19_N22
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~22_combout\ = (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][9]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~q\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~q\ & ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][9]~q\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~q\ & 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~q\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\))))
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\ = CARRY((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][9]~q\ & ((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\) # (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~q\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][9]~q\ & (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~q\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][9]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~22_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\);

-- Location: LCCOMB_X18_Y19_N24
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~24_combout\ = ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~q\ $ (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][10]~q\ $ (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\)))) # 
-- (GND)
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~25\ = CARRY((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~q\ & ((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][10]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~q\ & (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][10]~q\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][10]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~24_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~25\);

-- Location: LCCOMB_X18_Y19_N26
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~27_cout\ = CARRY((!\inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~q\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][11]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~25\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~27_cout\);

-- Location: LCCOMB_X18_Y19_N28
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ = \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~27_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~27_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\);

-- Location: LCCOMB_X23_Y19_N4
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~0_combout\ = !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~0_combout\);

-- Location: FF_X23_Y19_N5
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\);

-- Location: FF_X27_Y17_N5
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][3]~q\);

-- Location: LCCOMB_X22_Y15_N20
\inst4|inst|inst3|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst2~combout\ = inst11(3) $ (inst12(3) $ (((\inst4|inst|inst2|inst5~0_combout\) # (\inst4|inst|inst2|inst5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst5~0_combout\,
	datab => inst11(3),
	datac => \inst4|inst|inst2|inst5~2_combout\,
	datad => inst12(3),
	combout => \inst4|inst|inst3|inst2~combout\);

-- Location: FF_X22_Y15_N21
\inst9[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst|inst3|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(4));

-- Location: LCCOMB_X27_Y17_N0
\inst8|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux11~0_combout\ = (inst6(1) & ((inst9(4)) # ((inst6(0))))) # (!inst6(1) & (((!inst6(0) & inst2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(4),
	datab => inst6(1),
	datac => inst6(0),
	datad => inst2(4),
	combout => \inst8|Mux11~0_combout\);

-- Location: LCCOMB_X27_Y17_N4
\inst8|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux11~1_combout\ = (inst6(0) & ((\inst8|Mux11~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[14]|sr[0][3]~q\))) # (!\inst8|Mux11~0_combout\ & (inst9(20))))) # (!inst6(0) & (((\inst8|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst9(20),
	datac => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][3]~q\,
	datad => \inst8|Mux11~0_combout\,
	combout => \inst8|Mux11~1_combout\);

-- Location: LCCOMB_X23_Y14_N8
\inst4|inst|inst4|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst4|inst2~combout\ = inst11(4) $ (\inst4|inst|inst3|inst5~0_combout\ $ (inst12(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(4),
	datab => \inst4|inst|inst3|inst5~0_combout\,
	datad => inst12(4),
	combout => \inst4|inst|inst4|inst2~combout\);

-- Location: FF_X23_Y14_N19
\inst9[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	asdata => \inst4|inst|inst4|inst2~combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(3));

-- Location: LCCOMB_X19_Y19_N28
\inst3|ALTSQRT_component|_~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~18_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~q\)) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][10]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~24_combout\,
	combout => \inst3|ALTSQRT_component|_~18_combout\);

-- Location: LCCOMB_X17_Y19_N28
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~0_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~22_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][9]~q\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~0_combout\);

-- Location: LCCOMB_X17_Y19_N2
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~1_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][8]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~20_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~1_combout\);

-- Location: LCCOMB_X17_Y19_N22
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~2_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][7]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~2_combout\);

-- Location: LCCOMB_X17_Y19_N26
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~3_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][6]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~3_combout\);

-- Location: LCCOMB_X17_Y19_N24
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~4_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][5]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~14_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~4_combout\);

-- Location: LCCOMB_X19_Y19_N0
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~5_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~12_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][4]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~5_combout\);

-- Location: LCCOMB_X19_Y19_N16
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~6_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~10_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][3]~q\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~6_combout\);

-- Location: LCCOMB_X18_Y19_N30
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~7_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][2]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][2]~q\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~7_combout\);

-- Location: LCCOMB_X19_Y19_N2
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~8_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|r_dffe[10]|sr[0][1]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][1]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~6_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~8_combout\);

-- Location: LCCOMB_X19_Y19_N8
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~9_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|r_dffe[10]|sr[0][0]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~4_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[10]|sr[0][0]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~9_combout\);

-- Location: LCCOMB_X17_Y19_N20
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~10_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[5][9]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datac => \inst3|ALTSQRT_component|a_delay|sr[5][9]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~2_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~10_combout\);

-- Location: LCCOMB_X23_Y13_N22
\inst3|ALTSQRT_component|a_delay|sr[0][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[0][7]~feeder_combout\ = inst12(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => inst12(7),
	combout => \inst3|ALTSQRT_component|a_delay|sr[0][7]~feeder_combout\);

-- Location: FF_X23_Y13_N23
\inst3|ALTSQRT_component|a_delay|sr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[0][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][7]~q\);

-- Location: FF_X20_Y16_N11
\inst3|ALTSQRT_component|a_delay|sr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][7]~q\);

-- Location: LCCOMB_X20_Y16_N8
\inst3|ALTSQRT_component|a_delay|sr[2][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[2][7]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[1][7]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[2][7]~feeder_combout\);

-- Location: FF_X20_Y16_N9
\inst3|ALTSQRT_component|a_delay|sr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[2][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][7]~q\);

-- Location: FF_X20_Y16_N17
\inst3|ALTSQRT_component|a_delay|sr[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[2][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][7]~q\);

-- Location: FF_X20_Y19_N5
\inst3|ALTSQRT_component|a_delay|sr[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[3][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][7]~q\);

-- Location: FF_X20_Y19_N3
\inst3|ALTSQRT_component|a_delay|sr[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[4][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[5][7]~q\);

-- Location: FF_X23_Y13_N11
\inst3|ALTSQRT_component|a_delay|sr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][6]~q\);

-- Location: LCCOMB_X23_Y13_N20
\inst3|ALTSQRT_component|a_delay|sr[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[1][6]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[0][6]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[1][6]~feeder_combout\);

-- Location: FF_X23_Y13_N21
\inst3|ALTSQRT_component|a_delay|sr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[1][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][6]~q\);

-- Location: LCCOMB_X23_Y13_N24
\inst3|ALTSQRT_component|a_delay|sr[2][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[2][6]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[1][6]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[2][6]~feeder_combout\);

-- Location: FF_X23_Y13_N25
\inst3|ALTSQRT_component|a_delay|sr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[2][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][6]~q\);

-- Location: FF_X23_Y13_N31
\inst3|ALTSQRT_component|a_delay|sr[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[2][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][6]~q\);

-- Location: FF_X23_Y13_N29
\inst3|ALTSQRT_component|a_delay|sr[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[3][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][6]~q\);

-- Location: FF_X20_Y19_N1
\inst3|ALTSQRT_component|a_delay|sr[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[4][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[5][6]~q\);

-- Location: LCCOMB_X20_Y19_N0
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[5][6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[5][6]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X20_Y19_N2
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[5][7]~q\ & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[5][7]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[5][7]~q\ & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[5][7]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~3\);

-- Location: LCCOMB_X20_Y19_N4
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~4_combout\ = \inst3|ALTSQRT_component|a_delay|sr[5][8]~q\ $ (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~3\)
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|a_delay|sr[5][8]~q\ & (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\)) # (!\inst3|ALTSQRT_component|a_delay|sr[5][8]~q\ & 
-- ((!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[5][8]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\);

-- Location: LCCOMB_X20_Y19_N6
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~10_combout\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\ & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~10_combout\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~10_combout\ & (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\ & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~10_combout\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~10_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][0]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\);

-- Location: LCCOMB_X20_Y19_N8
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~q\ $ (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~9_combout\ $ (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\)))) # 
-- (GND)
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~q\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~9_combout\ & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~9_combout\) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][1]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~9_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\);

-- Location: LCCOMB_X20_Y19_N10
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~8_combout\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\ & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~8_combout\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\))))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~8_combout\ & (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\ & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~8_combout\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~8_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][2]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\);

-- Location: LCCOMB_X20_Y19_N12
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][3]~q\ $ (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~7_combout\ $ (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\)))) 
-- # (GND)
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][3]~q\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~7_combout\ & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~7_combout\) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][3]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~7_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\);

-- Location: LCCOMB_X20_Y19_N14
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~6_combout\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\)) 
-- # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\ & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~6_combout\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\))))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~6_combout\ & (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\ & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~6_combout\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~6_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][4]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\);

-- Location: LCCOMB_X20_Y19_N16
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~5_combout\ $ (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\ $ (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\)))) 
-- # (GND)
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~5_combout\ & ((!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\))) 
-- # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~5_combout\ & (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\ & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~5_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][5]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\);

-- Location: LCCOMB_X20_Y19_N18
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~4_combout\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\)) 
-- # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\ & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~4_combout\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\))))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~4_combout\ & (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\ & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~4_combout\ & ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~4_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][6]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\);

-- Location: LCCOMB_X20_Y19_N20
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~20_combout\ = ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\ $ (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~3_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\ = CARRY((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~3_combout\ & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~3_combout\) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][7]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~3_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~20_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\);

-- Location: LCCOMB_X20_Y19_N22
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~22_combout\ = (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][8]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~2_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\)) 
-- # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~2_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][8]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~2_combout\ 
-- & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~2_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\))))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\ = CARRY((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][8]~q\ & ((!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~2_combout\))) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][8]~q\ & (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~2_combout\ & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][8]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~2_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~22_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\);

-- Location: LCCOMB_X20_Y19_N24
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~24_combout\ = ((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][9]~q\ $ (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~1_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\ = CARRY((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][9]~q\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~1_combout\ & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][9]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~1_combout\) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][9]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~1_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~24_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\);

-- Location: LCCOMB_X20_Y19_N26
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~26_combout\ = (\inst3|ALTSQRT_component|b_dffe[10]|sr[0][10]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~0_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\)) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~0_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\) # (GND))))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][10]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~0_combout\ & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~0_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\))))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~27\ = CARRY((\inst3|ALTSQRT_component|b_dffe[10]|sr[0][10]~q\ & ((!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~0_combout\))) # (!\inst3|ALTSQRT_component|b_dffe[10]|sr[0][10]~q\ & (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~0_combout\ & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[10]|sr[0][10]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~0_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~26_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~27\);

-- Location: LCCOMB_X20_Y19_N28
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~29_cout\ = CARRY((\inst3|ALTSQRT_component|_~18_combout\) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~18_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~27\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~29_cout\);

-- Location: LCCOMB_X20_Y19_N30
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ = !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~29_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~29_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\);

-- Location: LCCOMB_X22_Y18_N28
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~1_combout\ = !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~1_combout\);

-- Location: FF_X22_Y18_N29
\inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\);

-- Location: FF_X24_Y17_N7
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][2]~q\);

-- Location: LCCOMB_X25_Y15_N12
\inst4|inst3|inst4|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst4|inst2~combout\ = inst12(20) $ (inst11(20) $ (\inst4|inst3|inst3|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(20),
	datab => inst11(20),
	datad => \inst4|inst3|inst3|inst5~0_combout\,
	combout => \inst4|inst3|inst4|inst2~combout\);

-- Location: FF_X25_Y15_N13
\inst9[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst3|inst4|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(19));

-- Location: LCCOMB_X25_Y17_N26
\inst8|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux12~0_combout\ = (inst6(0) & ((inst9(19)) # ((inst6(1))))) # (!inst6(0) & (((!inst6(1) & inst2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst9(19),
	datac => inst6(1),
	datad => inst2(3),
	combout => \inst8|Mux12~0_combout\);

-- Location: LCCOMB_X24_Y17_N6
\inst8|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux12~1_combout\ = (inst6(1) & ((\inst8|Mux12~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[14]|sr[0][2]~q\))) # (!\inst8|Mux12~0_combout\ & (inst9(3))))) # (!inst6(1) & (((\inst8|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(3),
	datab => inst6(1),
	datac => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][2]~q\,
	datad => \inst8|Mux12~0_combout\,
	combout => \inst8|Mux12~1_combout\);

-- Location: LCCOMB_X25_Y15_N28
\inst4|inst3|inst5|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst5|inst2~combout\ = inst11(21) $ (inst12(21) $ (((\inst4|inst3|inst4|inst5~1_combout\) # (\inst4|inst3|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst4|inst5~1_combout\,
	datab => \inst4|inst3|inst4|inst5~0_combout\,
	datac => inst11(21),
	datad => inst12(21),
	combout => \inst4|inst3|inst5|inst2~combout\);

-- Location: FF_X25_Y15_N29
\inst9[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst3|inst5|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(18));

-- Location: LCCOMB_X19_Y19_N24
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]_NEW68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]_OTERM69\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~0_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~0_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]_OTERM69\);

-- Location: FF_X19_Y19_N25
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]_OTERM69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~q\);

-- Location: LCCOMB_X22_Y19_N8
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]_NEW66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]_OTERM67\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~1_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~1_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~24_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]_OTERM67\);

-- Location: FF_X22_Y19_N9
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]_OTERM67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~q\);

-- Location: LCCOMB_X17_Y19_N30
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]_NEW64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]_OTERM65\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~2_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~2_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~22_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]_OTERM65\);

-- Location: FF_X17_Y19_N31
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]_OTERM65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~q\);

-- Location: LCCOMB_X19_Y19_N6
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]_NEW62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]_OTERM63\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~3_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~20_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~3_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]_OTERM63\);

-- Location: FF_X19_Y19_N7
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]_OTERM63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~q\);

-- Location: LCCOMB_X19_Y19_N30
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]_NEW60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]_OTERM61\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~4_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~4_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]_OTERM61\);

-- Location: FF_X19_Y19_N31
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]_OTERM61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~q\);

-- Location: LCCOMB_X19_Y19_N18
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]_NEW58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]_OTERM59\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~5_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~5_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]_OTERM59\);

-- Location: FF_X19_Y19_N19
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]_OTERM59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~q\);

-- Location: LCCOMB_X19_Y19_N4
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]_NEW56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]_OTERM57\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~6_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~14_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~6_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]_OTERM57\);

-- Location: FF_X19_Y19_N5
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]_OTERM57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~q\);

-- Location: LCCOMB_X22_Y19_N2
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]_NEW54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]_OTERM55\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~7_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~7_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]_OTERM55\);

-- Location: FF_X22_Y19_N3
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]_OTERM55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~q\);

-- Location: LCCOMB_X19_Y19_N10
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]_NEW52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]_OTERM53\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~8_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~10_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~8_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]_OTERM53\);

-- Location: FF_X19_Y19_N11
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]_OTERM53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~q\);

-- Location: LCCOMB_X19_Y19_N12
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]_NEW50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]_OTERM51\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~9_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~8_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~9_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]_OTERM51\);

-- Location: FF_X19_Y19_N13
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]_OTERM51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~q\);

-- Location: LCCOMB_X19_Y19_N26
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]_NEW48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]_OTERM49\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~10_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~10_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~6_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]_OTERM49\);

-- Location: FF_X19_Y19_N27
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]_OTERM49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~q\);

-- Location: LCCOMB_X19_Y19_N14
\inst3|ALTSQRT_component|_~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~47_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[5][8]~q\ $ ((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[5][8]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|_~47_combout\);

-- Location: FF_X19_Y19_N15
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][2]~q\);

-- Location: LCCOMB_X19_Y19_N20
\inst3|ALTSQRT_component|_~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~20_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|a_delay|sr[5][7]~q\))) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~2_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => \inst3|ALTSQRT_component|a_delay|sr[5][7]~q\,
	combout => \inst3|ALTSQRT_component|_~20_combout\);

-- Location: FF_X19_Y19_N21
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][1]~q\);

-- Location: LCCOMB_X19_Y19_N22
\inst3|ALTSQRT_component|_~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~21_combout\ = \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ $ (!\inst3|ALTSQRT_component|a_delay|sr[5][6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datac => \inst3|ALTSQRT_component|a_delay|sr[5][6]~q\,
	combout => \inst3|ALTSQRT_component|_~21_combout\);

-- Location: FF_X19_Y19_N23
\inst3|ALTSQRT_component|r_dffe[12]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|_~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][0]~q\);

-- Location: LCCOMB_X23_Y19_N12
\inst3|ALTSQRT_component|a_delay|sr[0][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[0][5]~feeder_combout\ = inst12(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => inst12(5),
	combout => \inst3|ALTSQRT_component|a_delay|sr[0][5]~feeder_combout\);

-- Location: FF_X23_Y19_N13
\inst3|ALTSQRT_component|a_delay|sr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[0][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][5]~q\);

-- Location: LCCOMB_X23_Y19_N20
\inst3|ALTSQRT_component|a_delay|sr[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[1][5]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[0][5]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[1][5]~feeder_combout\);

-- Location: FF_X23_Y19_N21
\inst3|ALTSQRT_component|a_delay|sr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[1][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][5]~q\);

-- Location: LCCOMB_X23_Y19_N18
\inst3|ALTSQRT_component|a_delay|sr[2][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[2][5]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[1][5]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[2][5]~feeder_combout\);

-- Location: FF_X23_Y19_N19
\inst3|ALTSQRT_component|a_delay|sr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[2][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][5]~q\);

-- Location: LCCOMB_X23_Y19_N0
\inst3|ALTSQRT_component|a_delay|sr[3][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[3][5]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[2][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[2][5]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[3][5]~feeder_combout\);

-- Location: FF_X23_Y19_N1
\inst3|ALTSQRT_component|a_delay|sr[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[3][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][5]~q\);

-- Location: FF_X22_Y19_N25
\inst3|ALTSQRT_component|a_delay|sr[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[3][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][5]~q\);

-- Location: FF_X22_Y19_N19
\inst3|ALTSQRT_component|a_delay|sr[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[4][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[5][5]~q\);

-- Location: FF_X22_Y19_N13
\inst3|ALTSQRT_component|a_delay|sr[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[5][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[6][5]~q\);

-- Location: FF_X22_Y17_N13
\inst3|ALTSQRT_component|a_delay|sr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][4]~q\);

-- Location: LCCOMB_X22_Y17_N4
\inst3|ALTSQRT_component|a_delay|sr[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[1][4]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[0][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[0][4]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[1][4]~feeder_combout\);

-- Location: FF_X22_Y17_N5
\inst3|ALTSQRT_component|a_delay|sr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[1][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][4]~q\);

-- Location: FF_X22_Y17_N11
\inst3|ALTSQRT_component|a_delay|sr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[1][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][4]~q\);

-- Location: LCCOMB_X22_Y17_N18
\inst3|ALTSQRT_component|a_delay|sr[3][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[3][4]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[2][4]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[3][4]~feeder_combout\);

-- Location: FF_X22_Y17_N19
\inst3|ALTSQRT_component|a_delay|sr[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[3][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][4]~q\);

-- Location: LCCOMB_X22_Y17_N28
\inst3|ALTSQRT_component|a_delay|sr[4][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[4][4]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[3][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[3][4]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[4][4]~feeder_combout\);

-- Location: FF_X22_Y17_N29
\inst3|ALTSQRT_component|a_delay|sr[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[4][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][4]~q\);

-- Location: FF_X22_Y19_N17
\inst3|ALTSQRT_component|a_delay|sr[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[4][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[5][4]~q\);

-- Location: FF_X22_Y19_N15
\inst3|ALTSQRT_component|a_delay|sr[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[5][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[6][4]~q\);

-- Location: LCCOMB_X22_Y19_N16
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[6][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[6][4]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X22_Y19_N18
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[6][5]~q\ & (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[6][5]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[6][5]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[6][5]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y19_N20
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][0]~q\ $ (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][0]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][0]~q\) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][0]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y19_N22
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][1]~q\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][1]~q\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\ & (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][1]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][1]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\);

-- Location: LCCOMB_X22_Y19_N24
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][2]~q\ $ (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\ $ (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][2]~q\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][2]~q\ & (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][2]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\);

-- Location: LCCOMB_X22_Y19_N26
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\ & (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\ & VCC)))) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\))))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~q\ & (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~q\ & ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\);

-- Location: LCCOMB_X22_Y19_N28
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~q\ $ (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\ $ (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~q\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~q\ & (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\);

-- Location: LCCOMB_X22_Y19_N30
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~q\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~q\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~q\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\))))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~q\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\ & (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\);

-- Location: LCCOMB_X22_Y18_N0
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~q\ $ (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\ $ (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~q\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~q\ & (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~q\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\);

-- Location: LCCOMB_X22_Y18_N2
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~q\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~q\ & ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~q\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~q\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\))))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~q\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\ & (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\);

-- Location: LCCOMB_X22_Y18_N4
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~20_combout\ = ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\ $ (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~q\ $ (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~q\) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~20_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\);

-- Location: LCCOMB_X22_Y18_N6
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~22_combout\ = (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~q\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~q\ & ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~q\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~q\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\))))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~q\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\ & (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~22_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\);

-- Location: LCCOMB_X22_Y18_N8
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~24_combout\ = ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\ $ (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~q\ $ (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\)))) # 
-- (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~q\) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~24_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\);

-- Location: LCCOMB_X22_Y18_N10
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~26_combout\ = (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~q\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~q\ & ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~q\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~q\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\))))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\) # (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~q\))) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\ & (!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~26_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\);

-- Location: LCCOMB_X22_Y18_N12
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~28_combout\ = ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\ $ (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~q\ $ (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\)))) # 
-- (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~29\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~q\) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~28_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~29\);

-- Location: LCCOMB_X22_Y18_N14
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~31_cout\ = CARRY((!\inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~q\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][13]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~29\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~31_cout\);

-- Location: LCCOMB_X22_Y18_N16
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ = \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~31_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~31_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\);

-- Location: LCCOMB_X25_Y17_N2
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[14]|sr[0][1]~0_combout\ = !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][1]~0_combout\);

-- Location: FF_X25_Y17_N3
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][1]~q\);

-- Location: LCCOMB_X23_Y15_N8
\inst4|inst|inst5|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst5|inst2~combout\ = inst11(5) $ (inst12(5) $ (((\inst4|inst|inst4|inst5~1_combout\) # (\inst4|inst|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(5),
	datab => \inst4|inst|inst4|inst5~1_combout\,
	datac => \inst4|inst|inst4|inst5~0_combout\,
	datad => inst12(5),
	combout => \inst4|inst|inst5|inst2~combout\);

-- Location: FF_X23_Y15_N9
\inst9[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst|inst5|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(2));

-- Location: LCCOMB_X25_Y17_N20
\inst8|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux13~0_combout\ = (inst6(0) & (((inst6(1))))) # (!inst6(0) & ((inst6(1) & (inst9(2))) # (!inst6(1) & ((inst2(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst9(2),
	datac => inst6(1),
	datad => inst2(2),
	combout => \inst8|Mux13~0_combout\);

-- Location: LCCOMB_X25_Y17_N28
\inst8|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux13~1_combout\ = (inst6(0) & ((\inst8|Mux13~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[14]|sr[0][1]~q\))) # (!\inst8|Mux13~0_combout\ & (inst9(18))))) # (!inst6(0) & (((\inst8|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst9(18),
	datab => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][1]~q\,
	datac => inst6(0),
	datad => \inst8|Mux13~0_combout\,
	combout => \inst8|Mux13~1_combout\);

-- Location: LCCOMB_X22_Y18_N30
\inst3|ALTSQRT_component|_~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~14_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~q\))) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~28_combout\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][12]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	combout => \inst3|ALTSQRT_component|_~14_combout\);

-- Location: LCCOMB_X22_Y18_N22
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]~0_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][11]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~26_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]~0_combout\);

-- Location: LCCOMB_X22_Y18_N18
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]~1_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~24_combout\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][10]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]~1_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]~2_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~22_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][9]~q\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]~2_combout\);

-- Location: LCCOMB_X22_Y18_N26
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]~3_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~20_combout\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][8]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]~3_combout\);

-- Location: LCCOMB_X22_Y18_N20
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]~4_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~18_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][7]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]~4_combout\);

-- Location: LCCOMB_X22_Y18_N24
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]~5_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~16_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][6]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]~5_combout\);

-- Location: LCCOMB_X22_Y19_N14
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]~6_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~14_combout\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][5]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]~6_combout\);

-- Location: LCCOMB_X22_Y19_N12
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]~7_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][4]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]~7_combout\);

-- Location: LCCOMB_X22_Y19_N4
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]~8_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][3]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~10_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]~8_combout\);

-- Location: LCCOMB_X22_Y19_N0
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]~9_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][2]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][2]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~8_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]~9_combout\);

-- Location: LCCOMB_X22_Y19_N10
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]~10_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|r_dffe[12]|sr[0][1]~q\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~6_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datad => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][1]~q\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]~10_combout\);

-- Location: LCCOMB_X22_Y19_N6
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]~11_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|r_dffe[12]|sr[0][0]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datab => \inst3|ALTSQRT_component|r_dffe[12]|sr[0][0]~q\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]~11_combout\);

-- Location: LCCOMB_X23_Y19_N16
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]~12_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[6][5]~q\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[6][5]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~2_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]~12_combout\);

-- Location: LCCOMB_X27_Y16_N16
\inst3|ALTSQRT_component|a_delay|sr[0][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[0][3]~feeder_combout\ = inst12(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => inst12(3),
	combout => \inst3|ALTSQRT_component|a_delay|sr[0][3]~feeder_combout\);

-- Location: FF_X27_Y16_N17
\inst3|ALTSQRT_component|a_delay|sr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[0][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][3]~q\);

-- Location: LCCOMB_X27_Y19_N10
\inst3|ALTSQRT_component|a_delay|sr[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[1][3]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[0][3]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[1][3]~feeder_combout\);

-- Location: FF_X27_Y19_N11
\inst3|ALTSQRT_component|a_delay|sr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[1][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][3]~q\);

-- Location: LCCOMB_X27_Y19_N12
\inst3|ALTSQRT_component|a_delay|sr[2][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[2][3]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[1][3]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[2][3]~feeder_combout\);

-- Location: FF_X27_Y19_N13
\inst3|ALTSQRT_component|a_delay|sr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[2][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][3]~q\);

-- Location: LCCOMB_X27_Y19_N4
\inst3|ALTSQRT_component|a_delay|sr[3][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[3][3]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[2][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[2][3]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[3][3]~feeder_combout\);

-- Location: FF_X27_Y19_N5
\inst3|ALTSQRT_component|a_delay|sr[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[3][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][3]~q\);

-- Location: FF_X27_Y19_N19
\inst3|ALTSQRT_component|a_delay|sr[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[3][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][3]~q\);

-- Location: LCCOMB_X27_Y19_N0
\inst3|ALTSQRT_component|a_delay|sr[5][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[5][3]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[4][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[4][3]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[5][3]~feeder_combout\);

-- Location: FF_X27_Y19_N1
\inst3|ALTSQRT_component|a_delay|sr[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[5][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[5][3]~q\);

-- Location: FF_X25_Y19_N17
\inst3|ALTSQRT_component|a_delay|sr[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[5][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[6][3]~q\);

-- Location: LCCOMB_X25_Y17_N10
\inst3|ALTSQRT_component|a_delay|sr[0][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[0][2]~feeder_combout\ = inst12(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => inst12(2),
	combout => \inst3|ALTSQRT_component|a_delay|sr[0][2]~feeder_combout\);

-- Location: FF_X25_Y17_N11
\inst3|ALTSQRT_component|a_delay|sr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[0][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][2]~q\);

-- Location: LCCOMB_X25_Y17_N12
\inst3|ALTSQRT_component|a_delay|sr[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[1][2]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[0][2]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[1][2]~feeder_combout\);

-- Location: FF_X25_Y17_N13
\inst3|ALTSQRT_component|a_delay|sr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[1][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][2]~q\);

-- Location: LCCOMB_X25_Y17_N24
\inst3|ALTSQRT_component|a_delay|sr[2][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[2][2]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[1][2]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[2][2]~feeder_combout\);

-- Location: FF_X25_Y17_N25
\inst3|ALTSQRT_component|a_delay|sr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[2][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][2]~q\);

-- Location: LCCOMB_X25_Y17_N4
\inst3|ALTSQRT_component|a_delay|sr[3][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[3][2]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[2][2]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[3][2]~feeder_combout\);

-- Location: FF_X25_Y17_N5
\inst3|ALTSQRT_component|a_delay|sr[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[3][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][2]~q\);

-- Location: FF_X25_Y17_N19
\inst3|ALTSQRT_component|a_delay|sr[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[3][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][2]~q\);

-- Location: LCCOMB_X25_Y17_N14
\inst3|ALTSQRT_component|a_delay|sr[5][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[5][2]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[4][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[4][2]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[5][2]~feeder_combout\);

-- Location: FF_X25_Y17_N15
\inst3|ALTSQRT_component|a_delay|sr[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[5][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[5][2]~q\);

-- Location: FF_X25_Y19_N15
\inst3|ALTSQRT_component|a_delay|sr[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[5][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[6][2]~q\);

-- Location: LCCOMB_X25_Y19_N14
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[6][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[6][2]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X25_Y19_N16
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~2_combout\ = (\inst3|ALTSQRT_component|a_delay|sr[6][3]~q\ & (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\ & VCC)) # (!\inst3|ALTSQRT_component|a_delay|sr[6][3]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~3\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[6][3]~q\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[6][3]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~3\);

-- Location: LCCOMB_X25_Y19_N18
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~4_combout\ = \inst3|ALTSQRT_component|a_delay|sr[6][4]~q\ $ (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~3\)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|a_delay|sr[6][4]~q\ & (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\)) # (!\inst3|ALTSQRT_component|a_delay|sr[6][4]~q\ & 
-- ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[6][4]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\);

-- Location: LCCOMB_X25_Y19_N20
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]~12_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]~12_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]~12_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]~12_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]~12_combout\))) 
-- # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\ & (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]~12_combout\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]~12_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\);

-- Location: LCCOMB_X25_Y19_N22
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]~11_combout\ $ (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\ $ (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\)))) 
-- # (GND)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]~11_combout\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\))) 
-- # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]~11_combout\ & (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]~11_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\);

-- Location: LCCOMB_X25_Y19_N24
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]~10_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\)) 
-- # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]~10_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]~10_combout\ 
-- & (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]~10_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]~10_combout\))) 
-- # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\ & (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]~10_combout\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]~10_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\);

-- Location: LCCOMB_X25_Y19_N26
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]~9_combout\ $ (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\ $ (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\)))) 
-- # (GND)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]~9_combout\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\))) 
-- # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]~9_combout\ & (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]~9_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\);

-- Location: LCCOMB_X25_Y19_N28
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]~8_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\)) 
-- # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]~8_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]~8_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]~8_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]~8_combout\))) 
-- # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\ & (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]~8_combout\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]~8_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\);

-- Location: LCCOMB_X25_Y19_N30
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\ $ (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]~7_combout\ $ (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\)))) 
-- # (GND)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]~7_combout\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]~7_combout\) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]~7_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\);

-- Location: LCCOMB_X25_Y18_N0
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]~6_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\)) 
-- # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]~6_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]~6_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]~6_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]~6_combout\))) 
-- # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\ & (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]~6_combout\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]~6_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\);

-- Location: LCCOMB_X25_Y18_N2
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~20_combout\ = ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]~5_combout\ $ (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\ $ 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\ = CARRY((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]~5_combout\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\))) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]~5_combout\ & (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]~5_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~20_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\);

-- Location: LCCOMB_X25_Y18_N4
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~22_combout\ = (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]~4_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\)) 
-- # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]~4_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\) # (GND))))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]~4_combout\ 
-- & (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\ & VCC)) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]~4_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\) # 
-- (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]~4_combout\))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\ & (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]~4_combout\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]~4_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~22_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\);

-- Location: LCCOMB_X25_Y18_N6
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~24_combout\ = ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]~3_combout\ $ (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\ $ 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\ = CARRY((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]~3_combout\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\))) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]~3_combout\ & (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]~3_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~24_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\);

-- Location: LCCOMB_X25_Y18_N8
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~26_combout\ = (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]~2_combout\ & ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\)) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\ & (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\ & VCC)))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]~2_combout\ & ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\ = CARRY((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]~2_combout\ & (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]~2_combout\ & ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]~2_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~26_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\);

-- Location: LCCOMB_X25_Y18_N10
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~28_combout\ = ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]~1_combout\ $ (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\ $ 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\ = CARRY((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]~1_combout\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\))) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]~1_combout\ & (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]~1_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~28_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\);

-- Location: LCCOMB_X25_Y18_N12
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~30_combout\ = (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\)) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\ & (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\ & VCC)))) # 
-- (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\) # (GND))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\ & 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~31\ = CARRY((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]~0_combout\ & (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\)) # 
-- (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]~0_combout\ & ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]~0_combout\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~30_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~31\);

-- Location: LCCOMB_X25_Y18_N14
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~33_cout\ = CARRY((\inst3|ALTSQRT_component|_~14_combout\) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~14_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~31\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~33_cout\);

-- Location: LCCOMB_X25_Y18_N16
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ = !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~33_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\);

-- Location: LCCOMB_X27_Y17_N12
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|b_dffe[14]|sr[0][0]~1_combout\ = !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	combout => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][0]~1_combout\);

-- Location: FF_X27_Y17_N13
\inst3|ALTSQRT_component|b_dffe[14]|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][0]~q\);

-- Location: LCCOMB_X25_Y15_N16
\inst4|inst|inst6|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst6|inst2~combout\ = inst12(6) $ (\inst4|inst|inst5|inst5~0_combout\ $ (inst11(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(6),
	datab => \inst4|inst|inst5|inst5~0_combout\,
	datad => inst11(6),
	combout => \inst4|inst|inst6|inst2~combout\);

-- Location: LCCOMB_X27_Y15_N22
\inst9[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9[1]~feeder_combout\ = \inst4|inst|inst6|inst2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst|inst6|inst2~combout\,
	combout => \inst9[1]~feeder_combout\);

-- Location: FF_X27_Y15_N23
\inst9[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst9[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(1));

-- Location: LCCOMB_X27_Y15_N30
\inst4|inst3|inst6|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst6|inst2~combout\ = inst11(22) $ (\inst4|inst3|inst5|inst5~0_combout\ $ (inst12(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(22),
	datac => \inst4|inst3|inst5|inst5~0_combout\,
	datad => inst12(22),
	combout => \inst4|inst3|inst6|inst2~combout\);

-- Location: FF_X27_Y15_N31
\inst9[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst3|inst6|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(17));

-- Location: LCCOMB_X27_Y17_N28
\inst8|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux14~0_combout\ = (inst6(0) & ((inst9(17)) # ((inst6(1))))) # (!inst6(0) & (((inst2(1) & !inst6(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst9(17),
	datac => inst2(1),
	datad => inst6(1),
	combout => \inst8|Mux14~0_combout\);

-- Location: LCCOMB_X27_Y17_N10
\inst8|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux14~1_combout\ = (inst6(1) & ((\inst8|Mux14~0_combout\ & (\inst3|ALTSQRT_component|b_dffe[14]|sr[0][0]~q\)) # (!\inst8|Mux14~0_combout\ & ((inst9(1)))))) # (!inst6(1) & (((\inst8|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[14]|sr[0][0]~q\,
	datab => inst9(1),
	datac => inst6(1),
	datad => \inst8|Mux14~0_combout\,
	combout => \inst8|Mux14~1_combout\);

-- Location: LCCOMB_X24_Y15_N26
\inst4|inst3|inst7|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst7|inst2~combout\ = inst11(23) $ (inst12(23) $ (((\inst4|inst3|inst6|inst5~1_combout\) # (\inst4|inst3|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst6|inst5~1_combout\,
	datab => inst11(23),
	datac => \inst4|inst3|inst6|inst5~0_combout\,
	datad => inst12(23),
	combout => \inst4|inst3|inst7|inst2~combout\);

-- Location: FF_X24_Y15_N27
\inst9[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst3|inst7|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(16));

-- Location: LCCOMB_X25_Y18_N20
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]_NEW94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]_OTERM95\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]~0_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]~0_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~30_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]_OTERM95\);

-- Location: LCCOMB_X25_Y18_N26
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]_NEW92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]_OTERM93\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]~1_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]~1_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~28_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]_OTERM93\);

-- Location: LCCOMB_X25_Y18_N28
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]_NEW90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]_OTERM91\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]~2_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]~2_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~26_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]_OTERM91\);

-- Location: LCCOMB_X24_Y18_N22
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]_NEW88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]_OTERM89\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]~3_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~24_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]~3_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]_OTERM89\);

-- Location: LCCOMB_X25_Y18_N22
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]_NEW86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]_OTERM87\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]~4_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]~4_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~22_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]_OTERM87\);

-- Location: LCCOMB_X24_Y18_N20
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]_NEW84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]_OTERM85\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]~5_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~20_combout\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]~5_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]_OTERM85\);

-- Location: LCCOMB_X25_Y18_N18
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]_NEW82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]_OTERM83\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]~6_combout\))) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~18_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]~6_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]_OTERM83\);

-- Location: LCCOMB_X25_Y19_N6
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]_NEW80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]_OTERM81\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]~7_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]~7_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~16_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]_OTERM81\);

-- Location: LCCOMB_X25_Y19_N8
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]_NEW78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]_OTERM79\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]~8_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datac => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]~8_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~14_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]_OTERM79\);

-- Location: LCCOMB_X25_Y19_N12
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]_NEW76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]_OTERM77\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]~9_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]~9_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~12_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]_OTERM77\);

-- Location: LCCOMB_X24_Y19_N0
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]_NEW74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]_OTERM75\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]~10_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]~10_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~10_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]_OTERM75\);

-- Location: LCCOMB_X25_Y19_N10
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]_NEW72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]_OTERM73\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]~11_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]~11_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~8_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]_OTERM73\);

-- Location: LCCOMB_X25_Y19_N2
\inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]_NEW70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]_OTERM71\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]~12_combout\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]~12_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~6_combout\,
	combout => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]_OTERM71\);

-- Location: LCCOMB_X25_Y19_N0
\inst3|ALTSQRT_component|_~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~46_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[6][4]~q\ $ ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[6][4]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~4_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	combout => \inst3|ALTSQRT_component|_~46_combout\);

-- Location: LCCOMB_X25_Y19_N4
\inst3|ALTSQRT_component|_~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~16_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|a_delay|sr[6][3]~q\)) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[6][3]~q\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~2_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	combout => \inst3|ALTSQRT_component|_~16_combout\);

-- Location: FF_X24_Y17_N5
\inst3|ALTSQRT_component|a_delay|sr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][1]~q\);

-- Location: FF_X24_Y19_N3
\inst3|ALTSQRT_component|a_delay|sr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][1]~q\);

-- Location: LCCOMB_X24_Y19_N10
\inst3|ALTSQRT_component|a_delay|sr[2][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[2][1]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[1][1]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[2][1]~feeder_combout\);

-- Location: FF_X24_Y19_N11
\inst3|ALTSQRT_component|a_delay|sr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[2][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][1]~q\);

-- Location: LCCOMB_X24_Y19_N12
\inst3|ALTSQRT_component|a_delay|sr[3][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[3][1]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[2][1]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[3][1]~feeder_combout\);

-- Location: FF_X24_Y19_N13
\inst3|ALTSQRT_component|a_delay|sr[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[3][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][1]~q\);

-- Location: LCCOMB_X24_Y19_N4
\inst3|ALTSQRT_component|a_delay|sr[4][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[4][1]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[3][1]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[4][1]~feeder_combout\);

-- Location: FF_X24_Y19_N5
\inst3|ALTSQRT_component|a_delay|sr[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[4][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][1]~q\);

-- Location: FF_X24_Y19_N9
\inst3|ALTSQRT_component|a_delay|sr[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[4][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[5][1]~q\);

-- Location: FF_X24_Y19_N17
\inst3|ALTSQRT_component|a_delay|sr[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[5][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[6][1]~q\);

-- Location: FF_X24_Y14_N13
\inst3|ALTSQRT_component|a_delay|sr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => inst12(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[0][0]~q\);

-- Location: FF_X24_Y16_N23
\inst3|ALTSQRT_component|a_delay|sr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[0][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[1][0]~q\);

-- Location: FF_X24_Y16_N13
\inst3|ALTSQRT_component|a_delay|sr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[1][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[2][0]~q\);

-- Location: LCCOMB_X24_Y16_N18
\inst3|ALTSQRT_component|a_delay|sr[3][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[3][0]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[2][0]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[3][0]~feeder_combout\);

-- Location: FF_X24_Y16_N19
\inst3|ALTSQRT_component|a_delay|sr[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[3][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[3][0]~q\);

-- Location: LCCOMB_X24_Y16_N4
\inst3|ALTSQRT_component|a_delay|sr[4][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|a_delay|sr[4][0]~feeder_combout\ = \inst3|ALTSQRT_component|a_delay|sr[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|a_delay|sr[3][0]~q\,
	combout => \inst3|ALTSQRT_component|a_delay|sr[4][0]~feeder_combout\);

-- Location: FF_X24_Y16_N5
\inst3|ALTSQRT_component|a_delay|sr[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|a_delay|sr[4][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[4][0]~q\);

-- Location: FF_X24_Y16_N29
\inst3|ALTSQRT_component|a_delay|sr[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[4][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[5][0]~q\);

-- Location: FF_X24_Y19_N15
\inst3|ALTSQRT_component|a_delay|sr[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst3|ALTSQRT_component|a_delay|sr[5][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|a_delay|sr[6][0]~q\);

-- Location: LCCOMB_X24_Y19_N14
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~1_cout\ = CARRY(\inst3|ALTSQRT_component|a_delay|sr[6][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[6][0]~q\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X24_Y19_N16
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~3_cout\ = CARRY((!\inst3|ALTSQRT_component|a_delay|sr[6][1]~q\ & !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|a_delay|sr[6][1]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~1_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X24_Y19_N18
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5_cout\ = CARRY((\inst3|ALTSQRT_component|a_delay|sr[6][2]~q\ & (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\)) # (!\inst3|ALTSQRT_component|a_delay|sr[6][2]~q\ & 
-- ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|a_delay|sr[6][2]~q\,
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~3_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X24_Y19_N20
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7_cout\ = CARRY((\inst3|ALTSQRT_component|_~16_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5_cout\)) # (!\inst3|ALTSQRT_component|_~16_combout\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5_cout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~16_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X24_Y19_N22
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9_cout\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\ & (\inst3|ALTSQRT_component|_~46_combout\ & !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7_cout\)) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\ & ((\inst3|ALTSQRT_component|_~46_combout\) # (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][0]~q\,
	datab => \inst3|ALTSQRT_component|_~46_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X24_Y19_N24
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11_cout\ = CARRY((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]_OTERM71\ & (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9_cout\)) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]_OTERM71\ & ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\) # 
-- (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][3]_OTERM71\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][1]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X24_Y19_N26
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13_cout\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]_OTERM73\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11_cout\)) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]_OTERM73\) # 
-- (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][2]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][4]_OTERM73\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X24_Y19_N28
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15_cout\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13_cout\) # 
-- (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]_OTERM75\))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\ & (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]_OTERM75\ & !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][3]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][5]_OTERM75\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X24_Y19_N30
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17_cout\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]_OTERM77\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15_cout\)) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]_OTERM77\) # 
-- (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][4]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][6]_OTERM77\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17_cout\);

-- Location: LCCOMB_X24_Y18_N0
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19_cout\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17_cout\) # 
-- (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]_OTERM79\))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\ & (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]_OTERM79\ & !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][5]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][7]_OTERM79\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19_cout\);

-- Location: LCCOMB_X24_Y18_N2
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21_cout\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]_OTERM81\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19_cout\)) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]_OTERM81\) # 
-- (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][6]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][8]_OTERM81\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21_cout\);

-- Location: LCCOMB_X24_Y18_N4
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23_cout\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21_cout\) # 
-- (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]_OTERM83\))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\ & (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]_OTERM83\ & !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][7]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][9]_OTERM83\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23_cout\);

-- Location: LCCOMB_X24_Y18_N6
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25_cout\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]_OTERM85\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23_cout\)) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]_OTERM85\) # 
-- (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][8]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][10]_OTERM85\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25_cout\);

-- Location: LCCOMB_X24_Y18_N8
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27_cout\ = CARRY((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]_OTERM87\ & (\inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25_cout\)) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]_OTERM87\ & ((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\) # 
-- (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][11]_OTERM87\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][9]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27_cout\);

-- Location: LCCOMB_X24_Y18_N10
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29_cout\ = CARRY((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]_OTERM89\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27_cout\) # 
-- (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\))) # (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]_OTERM89\ & (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\ & !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][12]_OTERM89\,
	datab => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][10]~q\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29_cout\);

-- Location: LCCOMB_X24_Y18_N12
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31_cout\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29_cout\) # 
-- (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]_OTERM91\))) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\ & (!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]_OTERM91\ & !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][11]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][13]_OTERM91\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31_cout\);

-- Location: LCCOMB_X24_Y18_N14
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~33_cout\ = CARRY((\inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\ & (\inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]_OTERM93\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31_cout\)) # (!\inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\ & ((\inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]_OTERM93\) # 
-- (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|b_dffe[12]|sr[0][12]~q\,
	datab => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][14]_OTERM93\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~33_cout\);

-- Location: LCCOMB_X24_Y18_N16
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~35_cout\ = CARRY((!\inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]_OTERM95\ & !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~33_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|r_dffe[14]|sr[0][15]_OTERM95\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~33_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~35_cout\);

-- Location: LCCOMB_X24_Y18_N18
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_combout\ = \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~35_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~35_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_combout\);

-- Location: LCCOMB_X24_Y18_N30
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_RTM099\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_RTM099_combout\ = !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_combout\,
	combout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_RTM099_combout\);

-- Location: FF_X24_Y18_N31
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_NEW_REG96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_RTM099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_OTERM97\);

-- Location: LCCOMB_X25_Y15_N26
\inst4|inst|inst7|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst7|inst2~combout\ = inst11(7) $ (inst12(7) $ (((\inst4|inst|inst6|inst5~1_combout\) # (\inst4|inst|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(7),
	datab => inst12(7),
	datac => \inst4|inst|inst6|inst5~1_combout\,
	datad => \inst4|inst|inst6|inst5~0_combout\,
	combout => \inst4|inst|inst7|inst2~combout\);

-- Location: FF_X25_Y15_N27
\inst9[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst4|inst7|inst5~clkctrl_outclk\,
	d => \inst4|inst|inst7|inst2~combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst9(0));

-- Location: LCCOMB_X27_Y17_N18
\inst8|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux15~0_combout\ = (inst6(0) & (((inst6(1))))) # (!inst6(0) & ((inst6(1) & (inst9(0))) # (!inst6(1) & ((inst2(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst9(0),
	datac => inst6(1),
	datad => inst2(0),
	combout => \inst8|Mux15~0_combout\);

-- Location: LCCOMB_X27_Y17_N6
\inst8|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux15~1_combout\ = (inst6(0) & ((\inst8|Mux15~0_combout\ & ((\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_OTERM97\))) # (!\inst8|Mux15~0_combout\ & (inst9(16))))) # (!inst6(0) & (((\inst8|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst9(16),
	datac => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_OTERM97\,
	datad => \inst8|Mux15~0_combout\,
	combout => \inst8|Mux15~1_combout\);

-- Location: LCCOMB_X25_Y14_N0
\inst5|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~1_cout\ = CARRY((inst12(0) & !inst11(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(0),
	datab => inst11(0),
	datad => VCC,
	cout => \inst5|LessThan3~1_cout\);

-- Location: LCCOMB_X25_Y14_N2
\inst5|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~3_cout\ = CARRY((inst12(1) & (inst11(1) & !\inst5|LessThan3~1_cout\)) # (!inst12(1) & ((inst11(1)) # (!\inst5|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(1),
	datab => inst11(1),
	datad => VCC,
	cin => \inst5|LessThan3~1_cout\,
	cout => \inst5|LessThan3~3_cout\);

-- Location: LCCOMB_X25_Y14_N4
\inst5|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~5_cout\ = CARRY((inst12(2) & ((!\inst5|LessThan3~3_cout\) # (!inst11(2)))) # (!inst12(2) & (!inst11(2) & !\inst5|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(2),
	datab => inst11(2),
	datad => VCC,
	cin => \inst5|LessThan3~3_cout\,
	cout => \inst5|LessThan3~5_cout\);

-- Location: LCCOMB_X25_Y14_N6
\inst5|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~7_cout\ = CARRY((inst12(3) & (inst11(3) & !\inst5|LessThan3~5_cout\)) # (!inst12(3) & ((inst11(3)) # (!\inst5|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(3),
	datab => inst11(3),
	datad => VCC,
	cin => \inst5|LessThan3~5_cout\,
	cout => \inst5|LessThan3~7_cout\);

-- Location: LCCOMB_X25_Y14_N8
\inst5|LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~9_cout\ = CARRY((inst11(4) & (inst12(4) & !\inst5|LessThan3~7_cout\)) # (!inst11(4) & ((inst12(4)) # (!\inst5|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(4),
	datab => inst12(4),
	datad => VCC,
	cin => \inst5|LessThan3~7_cout\,
	cout => \inst5|LessThan3~9_cout\);

-- Location: LCCOMB_X25_Y14_N10
\inst5|LessThan3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~11_cout\ = CARRY((inst11(5) & ((!\inst5|LessThan3~9_cout\) # (!inst12(5)))) # (!inst11(5) & (!inst12(5) & !\inst5|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(5),
	datab => inst12(5),
	datad => VCC,
	cin => \inst5|LessThan3~9_cout\,
	cout => \inst5|LessThan3~11_cout\);

-- Location: LCCOMB_X25_Y14_N12
\inst5|LessThan3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~13_cout\ = CARRY((inst11(6) & (inst12(6) & !\inst5|LessThan3~11_cout\)) # (!inst11(6) & ((inst12(6)) # (!\inst5|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(6),
	datab => inst12(6),
	datad => VCC,
	cin => \inst5|LessThan3~11_cout\,
	cout => \inst5|LessThan3~13_cout\);

-- Location: LCCOMB_X25_Y14_N14
\inst5|LessThan3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~15_cout\ = CARRY((inst11(7) & ((!\inst5|LessThan3~13_cout\) # (!inst12(7)))) # (!inst11(7) & (!inst12(7) & !\inst5|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(7),
	datab => inst12(7),
	datad => VCC,
	cin => \inst5|LessThan3~13_cout\,
	cout => \inst5|LessThan3~15_cout\);

-- Location: LCCOMB_X25_Y14_N16
\inst5|LessThan3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~17_cout\ = CARRY((inst11(8) & (inst12(8) & !\inst5|LessThan3~15_cout\)) # (!inst11(8) & ((inst12(8)) # (!\inst5|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(8),
	datab => inst12(8),
	datad => VCC,
	cin => \inst5|LessThan3~15_cout\,
	cout => \inst5|LessThan3~17_cout\);

-- Location: LCCOMB_X25_Y14_N18
\inst5|LessThan3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~19_cout\ = CARRY((inst11(9) & ((!\inst5|LessThan3~17_cout\) # (!inst12(9)))) # (!inst11(9) & (!inst12(9) & !\inst5|LessThan3~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(9),
	datab => inst12(9),
	datad => VCC,
	cin => \inst5|LessThan3~17_cout\,
	cout => \inst5|LessThan3~19_cout\);

-- Location: LCCOMB_X25_Y14_N20
\inst5|LessThan3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~21_cout\ = CARRY((inst11(10) & (inst12(10) & !\inst5|LessThan3~19_cout\)) # (!inst11(10) & ((inst12(10)) # (!\inst5|LessThan3~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(10),
	datab => inst12(10),
	datad => VCC,
	cin => \inst5|LessThan3~19_cout\,
	cout => \inst5|LessThan3~21_cout\);

-- Location: LCCOMB_X25_Y14_N22
\inst5|LessThan3~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~23_cout\ = CARRY((inst12(11) & (inst11(11) & !\inst5|LessThan3~21_cout\)) # (!inst12(11) & ((inst11(11)) # (!\inst5|LessThan3~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(11),
	datab => inst11(11),
	datad => VCC,
	cin => \inst5|LessThan3~21_cout\,
	cout => \inst5|LessThan3~23_cout\);

-- Location: LCCOMB_X25_Y14_N24
\inst5|LessThan3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~25_cout\ = CARRY((inst12(12) & ((!\inst5|LessThan3~23_cout\) # (!inst11(12)))) # (!inst12(12) & (!inst11(12) & !\inst5|LessThan3~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(12),
	datab => inst11(12),
	datad => VCC,
	cin => \inst5|LessThan3~23_cout\,
	cout => \inst5|LessThan3~25_cout\);

-- Location: LCCOMB_X25_Y14_N26
\inst5|LessThan3~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~27_cout\ = CARRY((inst11(13) & ((!\inst5|LessThan3~25_cout\) # (!inst12(13)))) # (!inst11(13) & (!inst12(13) & !\inst5|LessThan3~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(13),
	datab => inst12(13),
	datad => VCC,
	cin => \inst5|LessThan3~25_cout\,
	cout => \inst5|LessThan3~27_cout\);

-- Location: LCCOMB_X25_Y14_N28
\inst5|LessThan3~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~29_cout\ = CARRY((inst12(14) & ((!\inst5|LessThan3~27_cout\) # (!inst11(14)))) # (!inst12(14) & (!inst11(14) & !\inst5|LessThan3~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(14),
	datab => inst11(14),
	datad => VCC,
	cin => \inst5|LessThan3~27_cout\,
	cout => \inst5|LessThan3~29_cout\);

-- Location: LCCOMB_X25_Y14_N30
\inst5|LessThan3~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~31_cout\ = CARRY((inst12(15) & (inst11(15) & !\inst5|LessThan3~29_cout\)) # (!inst12(15) & ((inst11(15)) # (!\inst5|LessThan3~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(15),
	datab => inst11(15),
	datad => VCC,
	cin => \inst5|LessThan3~29_cout\,
	cout => \inst5|LessThan3~31_cout\);

-- Location: LCCOMB_X25_Y13_N0
\inst5|LessThan3~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~33_cout\ = CARRY((inst11(16) & (inst12(16) & !\inst5|LessThan3~31_cout\)) # (!inst11(16) & ((inst12(16)) # (!\inst5|LessThan3~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(16),
	datab => inst12(16),
	datad => VCC,
	cin => \inst5|LessThan3~31_cout\,
	cout => \inst5|LessThan3~33_cout\);

-- Location: LCCOMB_X25_Y13_N2
\inst5|LessThan3~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~35_cout\ = CARRY((inst11(17) & ((!\inst5|LessThan3~33_cout\) # (!inst12(17)))) # (!inst11(17) & (!inst12(17) & !\inst5|LessThan3~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(17),
	datab => inst12(17),
	datad => VCC,
	cin => \inst5|LessThan3~33_cout\,
	cout => \inst5|LessThan3~35_cout\);

-- Location: LCCOMB_X25_Y13_N4
\inst5|LessThan3~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~37_cout\ = CARRY((inst12(18) & ((!\inst5|LessThan3~35_cout\) # (!inst11(18)))) # (!inst12(18) & (!inst11(18) & !\inst5|LessThan3~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(18),
	datab => inst11(18),
	datad => VCC,
	cin => \inst5|LessThan3~35_cout\,
	cout => \inst5|LessThan3~37_cout\);

-- Location: LCCOMB_X25_Y13_N6
\inst5|LessThan3~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~39_cout\ = CARRY((inst11(19) & ((!\inst5|LessThan3~37_cout\) # (!inst12(19)))) # (!inst11(19) & (!inst12(19) & !\inst5|LessThan3~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(19),
	datab => inst12(19),
	datad => VCC,
	cin => \inst5|LessThan3~37_cout\,
	cout => \inst5|LessThan3~39_cout\);

-- Location: LCCOMB_X25_Y13_N8
\inst5|LessThan3~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~41_cout\ = CARRY((inst11(20) & (inst12(20) & !\inst5|LessThan3~39_cout\)) # (!inst11(20) & ((inst12(20)) # (!\inst5|LessThan3~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(20),
	datab => inst12(20),
	datad => VCC,
	cin => \inst5|LessThan3~39_cout\,
	cout => \inst5|LessThan3~41_cout\);

-- Location: LCCOMB_X25_Y13_N10
\inst5|LessThan3~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~43_cout\ = CARRY((inst12(21) & (inst11(21) & !\inst5|LessThan3~41_cout\)) # (!inst12(21) & ((inst11(21)) # (!\inst5|LessThan3~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(21),
	datab => inst11(21),
	datad => VCC,
	cin => \inst5|LessThan3~41_cout\,
	cout => \inst5|LessThan3~43_cout\);

-- Location: LCCOMB_X25_Y13_N12
\inst5|LessThan3~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~45_cout\ = CARRY((inst12(22) & ((!\inst5|LessThan3~43_cout\) # (!inst11(22)))) # (!inst12(22) & (!inst11(22) & !\inst5|LessThan3~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(22),
	datab => inst11(22),
	datad => VCC,
	cin => \inst5|LessThan3~43_cout\,
	cout => \inst5|LessThan3~45_cout\);

-- Location: LCCOMB_X25_Y13_N14
\inst5|LessThan3~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~47_cout\ = CARRY((inst12(23) & (inst11(23) & !\inst5|LessThan3~45_cout\)) # (!inst12(23) & ((inst11(23)) # (!\inst5|LessThan3~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(23),
	datab => inst11(23),
	datad => VCC,
	cin => \inst5|LessThan3~45_cout\,
	cout => \inst5|LessThan3~47_cout\);

-- Location: LCCOMB_X25_Y13_N16
\inst5|LessThan3~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~49_cout\ = CARRY((inst12(24) & ((!\inst5|LessThan3~47_cout\) # (!inst11(24)))) # (!inst12(24) & (!inst11(24) & !\inst5|LessThan3~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(24),
	datab => inst11(24),
	datad => VCC,
	cin => \inst5|LessThan3~47_cout\,
	cout => \inst5|LessThan3~49_cout\);

-- Location: LCCOMB_X25_Y13_N18
\inst5|LessThan3~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~51_cout\ = CARRY((inst11(25) & ((!\inst5|LessThan3~49_cout\) # (!inst12(25)))) # (!inst11(25) & (!inst12(25) & !\inst5|LessThan3~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(25),
	datab => inst12(25),
	datad => VCC,
	cin => \inst5|LessThan3~49_cout\,
	cout => \inst5|LessThan3~51_cout\);

-- Location: LCCOMB_X25_Y13_N20
\inst5|LessThan3~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~53_cout\ = CARRY((inst12(26) & ((!\inst5|LessThan3~51_cout\) # (!inst11(26)))) # (!inst12(26) & (!inst11(26) & !\inst5|LessThan3~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(26),
	datab => inst11(26),
	datad => VCC,
	cin => \inst5|LessThan3~51_cout\,
	cout => \inst5|LessThan3~53_cout\);

-- Location: LCCOMB_X25_Y13_N22
\inst5|LessThan3~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~55_cout\ = CARRY((inst12(27) & (inst11(27) & !\inst5|LessThan3~53_cout\)) # (!inst12(27) & ((inst11(27)) # (!\inst5|LessThan3~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(27),
	datab => inst11(27),
	datad => VCC,
	cin => \inst5|LessThan3~53_cout\,
	cout => \inst5|LessThan3~55_cout\);

-- Location: LCCOMB_X25_Y13_N24
\inst5|LessThan3~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~57_cout\ = CARRY((inst11(28) & (inst12(28) & !\inst5|LessThan3~55_cout\)) # (!inst11(28) & ((inst12(28)) # (!\inst5|LessThan3~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(28),
	datab => inst12(28),
	datad => VCC,
	cin => \inst5|LessThan3~55_cout\,
	cout => \inst5|LessThan3~57_cout\);

-- Location: LCCOMB_X25_Y13_N26
\inst5|LessThan3~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~59_cout\ = CARRY((inst11(29) & ((!\inst5|LessThan3~57_cout\) # (!inst12(29)))) # (!inst11(29) & (!inst12(29) & !\inst5|LessThan3~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(29),
	datab => inst12(29),
	datad => VCC,
	cin => \inst5|LessThan3~57_cout\,
	cout => \inst5|LessThan3~59_cout\);

-- Location: LCCOMB_X25_Y13_N28
\inst5|LessThan3~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~61_cout\ = CARRY((inst11(30) & (inst12(30) & !\inst5|LessThan3~59_cout\)) # (!inst11(30) & ((inst12(30)) # (!\inst5|LessThan3~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(30),
	datab => inst12(30),
	datad => VCC,
	cin => \inst5|LessThan3~59_cout\,
	cout => \inst5|LessThan3~61_cout\);

-- Location: LCCOMB_X25_Y13_N30
\inst5|LessThan3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~62_combout\ = (inst11(31) & (inst12(31) & \inst5|LessThan3~61_cout\)) # (!inst11(31) & ((inst12(31)) # (\inst5|LessThan3~61_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(31),
	datab => inst12(31),
	cin => \inst5|LessThan3~61_cout\,
	combout => \inst5|LessThan3~62_combout\);

-- Location: DDIOOUTCELL_X24_Y25_N25
\inst7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst5|ALT_INV_LessThan3~62_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst7(5));

-- Location: LCCOMB_X23_Y14_N4
\inst5|Equal0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~15_combout\ = (inst11(4) & (inst12(4) & (inst12(20) $ (!inst11(20))))) # (!inst11(4) & (!inst12(4) & (inst12(20) $ (!inst11(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(4),
	datab => inst12(20),
	datac => inst11(20),
	datad => inst12(4),
	combout => \inst5|Equal0~15_combout\);

-- Location: LCCOMB_X25_Y15_N2
\inst5|Equal0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~16_combout\ = (inst12(21) & (inst11(21) & (inst12(5) $ (!inst11(5))))) # (!inst12(21) & (!inst11(21) & (inst12(5) $ (!inst11(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(21),
	datab => inst12(5),
	datac => inst11(21),
	datad => inst11(5),
	combout => \inst5|Equal0~16_combout\);

-- Location: LCCOMB_X25_Y15_N22
\inst5|Equal0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~18_combout\ = (inst11(7) & (inst12(7) & (inst12(23) $ (!inst11(23))))) # (!inst11(7) & (!inst12(7) & (inst12(23) $ (!inst11(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(7),
	datab => inst12(23),
	datac => inst12(7),
	datad => inst11(23),
	combout => \inst5|Equal0~18_combout\);

-- Location: LCCOMB_X25_Y15_N6
\inst5|Equal0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~17_combout\ = (inst11(22) & (inst12(22) & (inst12(6) $ (!inst11(6))))) # (!inst11(22) & (!inst12(22) & (inst12(6) $ (!inst11(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(22),
	datab => inst12(22),
	datac => inst12(6),
	datad => inst11(6),
	combout => \inst5|Equal0~17_combout\);

-- Location: LCCOMB_X25_Y15_N14
\inst5|Equal0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~19_combout\ = (\inst5|Equal0~15_combout\ & (\inst5|Equal0~16_combout\ & (\inst5|Equal0~18_combout\ & \inst5|Equal0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~15_combout\,
	datab => \inst5|Equal0~16_combout\,
	datac => \inst5|Equal0~18_combout\,
	datad => \inst5|Equal0~17_combout\,
	combout => \inst5|Equal0~19_combout\);

-- Location: LCCOMB_X23_Y14_N22
\inst5|Equal0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~11_combout\ = (inst12(1) & (inst11(1) & (inst12(17) $ (!inst11(17))))) # (!inst12(1) & (!inst11(1) & (inst12(17) $ (!inst11(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(1),
	datab => inst12(17),
	datac => inst11(1),
	datad => inst11(17),
	combout => \inst5|Equal0~11_combout\);

-- Location: LCCOMB_X23_Y14_N20
\inst5|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~10_combout\ = (inst11(0) & (inst12(0) & (inst11(16) $ (!inst12(16))))) # (!inst11(0) & (!inst12(0) & (inst11(16) $ (!inst12(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(0),
	datab => inst11(16),
	datac => inst12(16),
	datad => inst12(0),
	combout => \inst5|Equal0~10_combout\);

-- Location: LCCOMB_X23_Y15_N4
\inst5|Equal0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~13_combout\ = (inst11(19) & (inst12(19) & (inst11(3) $ (!inst12(3))))) # (!inst11(19) & (!inst12(19) & (inst11(3) $ (!inst12(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(19),
	datab => inst12(19),
	datac => inst11(3),
	datad => inst12(3),
	combout => \inst5|Equal0~13_combout\);

-- Location: LCCOMB_X23_Y14_N28
\inst5|Equal0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~12_combout\ = (inst12(2) & (inst11(2) & (inst11(18) $ (!inst12(18))))) # (!inst12(2) & (!inst11(2) & (inst11(18) $ (!inst12(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(2),
	datab => inst11(18),
	datac => inst11(2),
	datad => inst12(18),
	combout => \inst5|Equal0~12_combout\);

-- Location: LCCOMB_X23_Y14_N2
\inst5|Equal0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~14_combout\ = (\inst5|Equal0~11_combout\ & (\inst5|Equal0~10_combout\ & (\inst5|Equal0~13_combout\ & \inst5|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~11_combout\,
	datab => \inst5|Equal0~10_combout\,
	datac => \inst5|Equal0~13_combout\,
	datad => \inst5|Equal0~12_combout\,
	combout => \inst5|Equal0~14_combout\);

-- Location: LCCOMB_X27_Y15_N8
\inst5|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (inst11(9) & (inst12(9) & (inst12(25) $ (!inst11(25))))) # (!inst11(9) & (!inst12(9) & (inst12(25) $ (!inst11(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(9),
	datab => inst12(25),
	datac => inst12(9),
	datad => inst11(25),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y15_N28
\inst5|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (inst12(26) & (inst11(26) & (inst12(10) $ (!inst11(10))))) # (!inst12(26) & (!inst11(26) & (inst12(10) $ (!inst11(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(26),
	datab => inst12(10),
	datac => inst11(10),
	datad => inst11(26),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y15_N16
\inst5|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (inst12(27) & (inst11(27) & (inst12(11) $ (!inst11(11))))) # (!inst12(27) & (!inst11(27) & (inst12(11) $ (!inst11(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(27),
	datab => inst12(11),
	datac => inst11(27),
	datad => inst11(11),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y15_N10
\inst5|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (inst12(8) & (inst11(8) & (inst11(24) $ (!inst12(24))))) # (!inst12(8) & (!inst11(8) & (inst11(24) $ (!inst12(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(8),
	datab => inst11(8),
	datac => inst11(24),
	datad => inst12(24),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y15_N0
\inst5|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~1_combout\ & (\inst5|Equal0~2_combout\ & (\inst5|Equal0~3_combout\ & \inst5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~1_combout\,
	datab => \inst5|Equal0~2_combout\,
	datac => \inst5|Equal0~3_combout\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y15_N10
\inst5|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~8_combout\ = (inst12(31) & (inst11(31) & (inst11(15) $ (!inst12(15))))) # (!inst12(31) & (!inst11(31) & (inst11(15) $ (!inst12(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(31),
	datab => inst11(15),
	datac => inst12(15),
	datad => inst11(31),
	combout => \inst5|Equal0~8_combout\);

-- Location: LCCOMB_X27_Y15_N18
\inst5|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (inst12(28) & (inst11(28) & (inst11(12) $ (!inst12(12))))) # (!inst12(28) & (!inst11(28) & (inst11(12) $ (!inst12(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(28),
	datab => inst11(28),
	datac => inst11(12),
	datad => inst12(12),
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y15_N24
\inst5|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = (inst12(29) & (inst11(29) & (inst11(13) $ (!inst12(13))))) # (!inst12(29) & (!inst11(29) & (inst11(13) $ (!inst12(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst12(29),
	datab => inst11(13),
	datac => inst11(29),
	datad => inst12(13),
	combout => \inst5|Equal0~6_combout\);

-- Location: LCCOMB_X28_Y15_N20
\inst5|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~7_combout\ = (inst11(14) & (inst12(14) & (inst11(30) $ (!inst12(30))))) # (!inst11(14) & (!inst12(14) & (inst11(30) $ (!inst12(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst11(14),
	datab => inst12(14),
	datac => inst11(30),
	datad => inst12(30),
	combout => \inst5|Equal0~7_combout\);

-- Location: LCCOMB_X30_Y15_N28
\inst5|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~9_combout\ = (\inst5|Equal0~8_combout\ & (\inst5|Equal0~5_combout\ & (\inst5|Equal0~6_combout\ & \inst5|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~8_combout\,
	datab => \inst5|Equal0~5_combout\,
	datac => \inst5|Equal0~6_combout\,
	datad => \inst5|Equal0~7_combout\,
	combout => \inst5|Equal0~9_combout\);

-- Location: LCCOMB_X30_Y15_N30
\inst5|Equal0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~20_combout\ = (\inst5|Equal0~19_combout\ & (\inst5|Equal0~14_combout\ & (\inst5|Equal0~4_combout\ & \inst5|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~19_combout\,
	datab => \inst5|Equal0~14_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|Equal0~20_combout\);

-- Location: DDIOOUTCELL_X19_Y25_N11
\inst7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst5|ALT_INV_Equal0~20_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst7(4));

-- Location: LCCOMB_X24_Y14_N0
\inst5|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~1_cout\ = CARRY((!inst12(0) & inst11(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(0),
	datab => inst11(0),
	datad => VCC,
	cout => \inst5|LessThan2~1_cout\);

-- Location: LCCOMB_X24_Y14_N2
\inst5|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~3_cout\ = CARRY((inst11(1) & (inst12(1) & !\inst5|LessThan2~1_cout\)) # (!inst11(1) & ((inst12(1)) # (!\inst5|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(1),
	datab => inst12(1),
	datad => VCC,
	cin => \inst5|LessThan2~1_cout\,
	cout => \inst5|LessThan2~3_cout\);

-- Location: LCCOMB_X24_Y14_N4
\inst5|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~5_cout\ = CARRY((inst12(2) & (inst11(2) & !\inst5|LessThan2~3_cout\)) # (!inst12(2) & ((inst11(2)) # (!\inst5|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(2),
	datab => inst11(2),
	datad => VCC,
	cin => \inst5|LessThan2~3_cout\,
	cout => \inst5|LessThan2~5_cout\);

-- Location: LCCOMB_X24_Y14_N6
\inst5|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~7_cout\ = CARRY((inst11(3) & (inst12(3) & !\inst5|LessThan2~5_cout\)) # (!inst11(3) & ((inst12(3)) # (!\inst5|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(3),
	datab => inst12(3),
	datad => VCC,
	cin => \inst5|LessThan2~5_cout\,
	cout => \inst5|LessThan2~7_cout\);

-- Location: LCCOMB_X24_Y14_N8
\inst5|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~9_cout\ = CARRY((inst11(4) & ((!\inst5|LessThan2~7_cout\) # (!inst12(4)))) # (!inst11(4) & (!inst12(4) & !\inst5|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(4),
	datab => inst12(4),
	datad => VCC,
	cin => \inst5|LessThan2~7_cout\,
	cout => \inst5|LessThan2~9_cout\);

-- Location: LCCOMB_X24_Y14_N10
\inst5|LessThan2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~11_cout\ = CARRY((inst12(5) & ((!\inst5|LessThan2~9_cout\) # (!inst11(5)))) # (!inst12(5) & (!inst11(5) & !\inst5|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(5),
	datab => inst11(5),
	datad => VCC,
	cin => \inst5|LessThan2~9_cout\,
	cout => \inst5|LessThan2~11_cout\);

-- Location: LCCOMB_X24_Y14_N12
\inst5|LessThan2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~13_cout\ = CARRY((inst12(6) & (inst11(6) & !\inst5|LessThan2~11_cout\)) # (!inst12(6) & ((inst11(6)) # (!\inst5|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(6),
	datab => inst11(6),
	datad => VCC,
	cin => \inst5|LessThan2~11_cout\,
	cout => \inst5|LessThan2~13_cout\);

-- Location: LCCOMB_X24_Y14_N14
\inst5|LessThan2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~15_cout\ = CARRY((inst11(7) & (inst12(7) & !\inst5|LessThan2~13_cout\)) # (!inst11(7) & ((inst12(7)) # (!\inst5|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(7),
	datab => inst12(7),
	datad => VCC,
	cin => \inst5|LessThan2~13_cout\,
	cout => \inst5|LessThan2~15_cout\);

-- Location: LCCOMB_X24_Y14_N16
\inst5|LessThan2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~17_cout\ = CARRY((inst11(8) & ((!\inst5|LessThan2~15_cout\) # (!inst12(8)))) # (!inst11(8) & (!inst12(8) & !\inst5|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(8),
	datab => inst12(8),
	datad => VCC,
	cin => \inst5|LessThan2~15_cout\,
	cout => \inst5|LessThan2~17_cout\);

-- Location: LCCOMB_X24_Y14_N18
\inst5|LessThan2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~19_cout\ = CARRY((inst11(9) & (inst12(9) & !\inst5|LessThan2~17_cout\)) # (!inst11(9) & ((inst12(9)) # (!\inst5|LessThan2~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(9),
	datab => inst12(9),
	datad => VCC,
	cin => \inst5|LessThan2~17_cout\,
	cout => \inst5|LessThan2~19_cout\);

-- Location: LCCOMB_X24_Y14_N20
\inst5|LessThan2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~21_cout\ = CARRY((inst11(10) & ((!\inst5|LessThan2~19_cout\) # (!inst12(10)))) # (!inst11(10) & (!inst12(10) & !\inst5|LessThan2~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(10),
	datab => inst12(10),
	datad => VCC,
	cin => \inst5|LessThan2~19_cout\,
	cout => \inst5|LessThan2~21_cout\);

-- Location: LCCOMB_X24_Y14_N22
\inst5|LessThan2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~23_cout\ = CARRY((inst11(11) & (inst12(11) & !\inst5|LessThan2~21_cout\)) # (!inst11(11) & ((inst12(11)) # (!\inst5|LessThan2~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(11),
	datab => inst12(11),
	datad => VCC,
	cin => \inst5|LessThan2~21_cout\,
	cout => \inst5|LessThan2~23_cout\);

-- Location: LCCOMB_X24_Y14_N24
\inst5|LessThan2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~25_cout\ = CARRY((inst12(12) & (inst11(12) & !\inst5|LessThan2~23_cout\)) # (!inst12(12) & ((inst11(12)) # (!\inst5|LessThan2~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(12),
	datab => inst11(12),
	datad => VCC,
	cin => \inst5|LessThan2~23_cout\,
	cout => \inst5|LessThan2~25_cout\);

-- Location: LCCOMB_X24_Y14_N26
\inst5|LessThan2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~27_cout\ = CARRY((inst12(13) & ((!\inst5|LessThan2~25_cout\) # (!inst11(13)))) # (!inst12(13) & (!inst11(13) & !\inst5|LessThan2~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(13),
	datab => inst11(13),
	datad => VCC,
	cin => \inst5|LessThan2~25_cout\,
	cout => \inst5|LessThan2~27_cout\);

-- Location: LCCOMB_X24_Y14_N28
\inst5|LessThan2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~29_cout\ = CARRY((inst11(14) & ((!\inst5|LessThan2~27_cout\) # (!inst12(14)))) # (!inst11(14) & (!inst12(14) & !\inst5|LessThan2~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(14),
	datab => inst12(14),
	datad => VCC,
	cin => \inst5|LessThan2~27_cout\,
	cout => \inst5|LessThan2~29_cout\);

-- Location: LCCOMB_X24_Y14_N30
\inst5|LessThan2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~31_cout\ = CARRY((inst12(15) & ((!\inst5|LessThan2~29_cout\) # (!inst11(15)))) # (!inst12(15) & (!inst11(15) & !\inst5|LessThan2~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(15),
	datab => inst11(15),
	datad => VCC,
	cin => \inst5|LessThan2~29_cout\,
	cout => \inst5|LessThan2~31_cout\);

-- Location: LCCOMB_X24_Y13_N0
\inst5|LessThan2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~33_cout\ = CARRY((inst12(16) & (inst11(16) & !\inst5|LessThan2~31_cout\)) # (!inst12(16) & ((inst11(16)) # (!\inst5|LessThan2~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(16),
	datab => inst11(16),
	datad => VCC,
	cin => \inst5|LessThan2~31_cout\,
	cout => \inst5|LessThan2~33_cout\);

-- Location: LCCOMB_X24_Y13_N2
\inst5|LessThan2~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~35_cout\ = CARRY((inst12(17) & ((!\inst5|LessThan2~33_cout\) # (!inst11(17)))) # (!inst12(17) & (!inst11(17) & !\inst5|LessThan2~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(17),
	datab => inst11(17),
	datad => VCC,
	cin => \inst5|LessThan2~33_cout\,
	cout => \inst5|LessThan2~35_cout\);

-- Location: LCCOMB_X24_Y13_N4
\inst5|LessThan2~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~37_cout\ = CARRY((inst12(18) & (inst11(18) & !\inst5|LessThan2~35_cout\)) # (!inst12(18) & ((inst11(18)) # (!\inst5|LessThan2~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(18),
	datab => inst11(18),
	datad => VCC,
	cin => \inst5|LessThan2~35_cout\,
	cout => \inst5|LessThan2~37_cout\);

-- Location: LCCOMB_X24_Y13_N6
\inst5|LessThan2~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~39_cout\ = CARRY((inst12(19) & ((!\inst5|LessThan2~37_cout\) # (!inst11(19)))) # (!inst12(19) & (!inst11(19) & !\inst5|LessThan2~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(19),
	datab => inst11(19),
	datad => VCC,
	cin => \inst5|LessThan2~37_cout\,
	cout => \inst5|LessThan2~39_cout\);

-- Location: LCCOMB_X24_Y13_N8
\inst5|LessThan2~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~41_cout\ = CARRY((inst11(20) & ((!\inst5|LessThan2~39_cout\) # (!inst12(20)))) # (!inst11(20) & (!inst12(20) & !\inst5|LessThan2~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(20),
	datab => inst12(20),
	datad => VCC,
	cin => \inst5|LessThan2~39_cout\,
	cout => \inst5|LessThan2~41_cout\);

-- Location: LCCOMB_X24_Y13_N10
\inst5|LessThan2~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~43_cout\ = CARRY((inst11(21) & (inst12(21) & !\inst5|LessThan2~41_cout\)) # (!inst11(21) & ((inst12(21)) # (!\inst5|LessThan2~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(21),
	datab => inst12(21),
	datad => VCC,
	cin => \inst5|LessThan2~41_cout\,
	cout => \inst5|LessThan2~43_cout\);

-- Location: LCCOMB_X24_Y13_N12
\inst5|LessThan2~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~45_cout\ = CARRY((inst11(22) & ((!\inst5|LessThan2~43_cout\) # (!inst12(22)))) # (!inst11(22) & (!inst12(22) & !\inst5|LessThan2~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(22),
	datab => inst12(22),
	datad => VCC,
	cin => \inst5|LessThan2~43_cout\,
	cout => \inst5|LessThan2~45_cout\);

-- Location: LCCOMB_X24_Y13_N14
\inst5|LessThan2~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~47_cout\ = CARRY((inst11(23) & (inst12(23) & !\inst5|LessThan2~45_cout\)) # (!inst11(23) & ((inst12(23)) # (!\inst5|LessThan2~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(23),
	datab => inst12(23),
	datad => VCC,
	cin => \inst5|LessThan2~45_cout\,
	cout => \inst5|LessThan2~47_cout\);

-- Location: LCCOMB_X24_Y13_N16
\inst5|LessThan2~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~49_cout\ = CARRY((inst11(24) & ((!\inst5|LessThan2~47_cout\) # (!inst12(24)))) # (!inst11(24) & (!inst12(24) & !\inst5|LessThan2~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(24),
	datab => inst12(24),
	datad => VCC,
	cin => \inst5|LessThan2~47_cout\,
	cout => \inst5|LessThan2~49_cout\);

-- Location: LCCOMB_X24_Y13_N18
\inst5|LessThan2~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~51_cout\ = CARRY((inst12(25) & ((!\inst5|LessThan2~49_cout\) # (!inst11(25)))) # (!inst12(25) & (!inst11(25) & !\inst5|LessThan2~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(25),
	datab => inst11(25),
	datad => VCC,
	cin => \inst5|LessThan2~49_cout\,
	cout => \inst5|LessThan2~51_cout\);

-- Location: LCCOMB_X24_Y13_N20
\inst5|LessThan2~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~53_cout\ = CARRY((inst12(26) & (inst11(26) & !\inst5|LessThan2~51_cout\)) # (!inst12(26) & ((inst11(26)) # (!\inst5|LessThan2~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(26),
	datab => inst11(26),
	datad => VCC,
	cin => \inst5|LessThan2~51_cout\,
	cout => \inst5|LessThan2~53_cout\);

-- Location: LCCOMB_X24_Y13_N22
\inst5|LessThan2~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~55_cout\ = CARRY((inst12(27) & ((!\inst5|LessThan2~53_cout\) # (!inst11(27)))) # (!inst12(27) & (!inst11(27) & !\inst5|LessThan2~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(27),
	datab => inst11(27),
	datad => VCC,
	cin => \inst5|LessThan2~53_cout\,
	cout => \inst5|LessThan2~55_cout\);

-- Location: LCCOMB_X24_Y13_N24
\inst5|LessThan2~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~57_cout\ = CARRY((inst12(28) & (inst11(28) & !\inst5|LessThan2~55_cout\)) # (!inst12(28) & ((inst11(28)) # (!\inst5|LessThan2~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst12(28),
	datab => inst11(28),
	datad => VCC,
	cin => \inst5|LessThan2~55_cout\,
	cout => \inst5|LessThan2~57_cout\);

-- Location: LCCOMB_X24_Y13_N26
\inst5|LessThan2~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~59_cout\ = CARRY((inst11(29) & (inst12(29) & !\inst5|LessThan2~57_cout\)) # (!inst11(29) & ((inst12(29)) # (!\inst5|LessThan2~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(29),
	datab => inst12(29),
	datad => VCC,
	cin => \inst5|LessThan2~57_cout\,
	cout => \inst5|LessThan2~59_cout\);

-- Location: LCCOMB_X24_Y13_N28
\inst5|LessThan2~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~61_cout\ = CARRY((inst11(30) & ((!\inst5|LessThan2~59_cout\) # (!inst12(30)))) # (!inst11(30) & (!inst12(30) & !\inst5|LessThan2~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inst11(30),
	datab => inst12(30),
	datad => VCC,
	cin => \inst5|LessThan2~59_cout\,
	cout => \inst5|LessThan2~61_cout\);

-- Location: LCCOMB_X24_Y13_N30
\inst5|LessThan2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~62_combout\ = (inst11(31) & ((\inst5|LessThan2~61_cout\) # (!inst12(31)))) # (!inst11(31) & (\inst5|LessThan2~61_cout\ & !inst12(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => inst11(31),
	datad => inst12(31),
	cin => \inst5|LessThan2~61_cout\,
	combout => \inst5|LessThan2~62_combout\);

-- Location: DDIOOUTCELL_X19_Y25_N4
\inst7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst5|ALT_INV_LessThan2~62_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst7(3));

-- Location: DDIOOUTCELL_X19_Y25_N18
\inst7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst5|LessThan2~62_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst7(2));

-- Location: DDIOOUTCELL_X19_Y25_N25
\inst7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst5|Equal0~20_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst7(1));

-- Location: DDIOOUTCELL_X24_Y25_N4
\inst7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst5|LessThan3~62_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst7(0));

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
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

-- Location: ADCBLOCK_X10_Y24_N0
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

ww_Cout <= \Cout~output_o\;

ww_ALUout(15) <= \ALUout[15]~output_o\;

ww_ALUout(14) <= \ALUout[14]~output_o\;

ww_ALUout(13) <= \ALUout[13]~output_o\;

ww_ALUout(12) <= \ALUout[12]~output_o\;

ww_ALUout(11) <= \ALUout[11]~output_o\;

ww_ALUout(10) <= \ALUout[10]~output_o\;

ww_ALUout(9) <= \ALUout[9]~output_o\;

ww_ALUout(8) <= \ALUout[8]~output_o\;

ww_ALUout(7) <= \ALUout[7]~output_o\;

ww_ALUout(6) <= \ALUout[6]~output_o\;

ww_ALUout(5) <= \ALUout[5]~output_o\;

ww_ALUout(4) <= \ALUout[4]~output_o\;

ww_ALUout(3) <= \ALUout[3]~output_o\;

ww_ALUout(2) <= \ALUout[2]~output_o\;

ww_ALUout(1) <= \ALUout[1]~output_o\;

ww_ALUout(0) <= \ALUout[0]~output_o\;

ww_Sum(31) <= \Sum[31]~output_o\;

ww_Sum(30) <= \Sum[30]~output_o\;

ww_Sum(29) <= \Sum[29]~output_o\;

ww_Sum(28) <= \Sum[28]~output_o\;

ww_Sum(27) <= \Sum[27]~output_o\;

ww_Sum(26) <= \Sum[26]~output_o\;

ww_Sum(25) <= \Sum[25]~output_o\;

ww_Sum(24) <= \Sum[24]~output_o\;

ww_Sum(23) <= \Sum[23]~output_o\;

ww_Sum(22) <= \Sum[22]~output_o\;

ww_Sum(21) <= \Sum[21]~output_o\;

ww_Sum(20) <= \Sum[20]~output_o\;

ww_Sum(19) <= \Sum[19]~output_o\;

ww_Sum(18) <= \Sum[18]~output_o\;

ww_Sum(17) <= \Sum[17]~output_o\;

ww_Sum(16) <= \Sum[16]~output_o\;

ww_Sum(15) <= \Sum[15]~output_o\;

ww_Sum(14) <= \Sum[14]~output_o\;

ww_Sum(13) <= \Sum[13]~output_o\;

ww_Sum(12) <= \Sum[12]~output_o\;

ww_Sum(11) <= \Sum[11]~output_o\;

ww_Sum(10) <= \Sum[10]~output_o\;

ww_Sum(9) <= \Sum[9]~output_o\;

ww_Sum(8) <= \Sum[8]~output_o\;

ww_Sum(7) <= \Sum[7]~output_o\;

ww_Sum(6) <= \Sum[6]~output_o\;

ww_Sum(5) <= \Sum[5]~output_o\;

ww_Sum(4) <= \Sum[4]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(0) <= \Sum[0]~output_o\;

ww_CCout(5) <= \CCout[5]~output_o\;

ww_CCout(4) <= \CCout[4]~output_o\;

ww_CCout(3) <= \CCout[3]~output_o\;

ww_CCout(2) <= \CCout[2]~output_o\;

ww_CCout(1) <= \CCout[1]~output_o\;

ww_CCout(0) <= \CCout[0]~output_o\;

ww_q(15) <= \q[15]~output_o\;

ww_q(14) <= \q[14]~output_o\;

ww_q(13) <= \q[13]~output_o\;

ww_q(12) <= \q[12]~output_o\;

ww_q(11) <= \q[11]~output_o\;

ww_q(10) <= \q[10]~output_o\;

ww_q(9) <= \q[9]~output_o\;

ww_q(8) <= \q[8]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;
END structure;


