-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "05/16/2020 11:11:51"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	pulso : IN std_logic;
	clock : IN std_logic;
	reset : IN std_logic;
	tempo : BUFFER std_logic_vector(24 DOWNTO 0)
	);
END top;

ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pulso : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_tempo : std_logic_vector(24 DOWNTO 0);
SIGNAL \tempo[0]~output_o\ : std_logic;
SIGNAL \tempo[1]~output_o\ : std_logic;
SIGNAL \tempo[2]~output_o\ : std_logic;
SIGNAL \tempo[3]~output_o\ : std_logic;
SIGNAL \tempo[4]~output_o\ : std_logic;
SIGNAL \tempo[5]~output_o\ : std_logic;
SIGNAL \tempo[6]~output_o\ : std_logic;
SIGNAL \tempo[7]~output_o\ : std_logic;
SIGNAL \tempo[8]~output_o\ : std_logic;
SIGNAL \tempo[9]~output_o\ : std_logic;
SIGNAL \tempo[10]~output_o\ : std_logic;
SIGNAL \tempo[11]~output_o\ : std_logic;
SIGNAL \tempo[12]~output_o\ : std_logic;
SIGNAL \tempo[13]~output_o\ : std_logic;
SIGNAL \tempo[14]~output_o\ : std_logic;
SIGNAL \tempo[15]~output_o\ : std_logic;
SIGNAL \tempo[16]~output_o\ : std_logic;
SIGNAL \tempo[17]~output_o\ : std_logic;
SIGNAL \tempo[18]~output_o\ : std_logic;
SIGNAL \tempo[19]~output_o\ : std_logic;
SIGNAL \tempo[20]~output_o\ : std_logic;
SIGNAL \tempo[21]~output_o\ : std_logic;
SIGNAL \tempo[22]~output_o\ : std_logic;
SIGNAL \tempo[23]~output_o\ : std_logic;
SIGNAL \tempo[24]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \cnt|IQ[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pulso~input_o\ : std_logic;
SIGNAL \div|pulsoAtivo~q\ : std_logic;
SIGNAL \cnt|tempo[0]~1_combout\ : std_logic;
SIGNAL \cnt|tempo[0]~3_combout\ : std_logic;
SIGNAL \cnt|tempo[0]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[0]~2_combout\ : std_logic;
SIGNAL \cnt|Add0~1_sumout\ : std_logic;
SIGNAL \cnt|tempo[1]~5_combout\ : std_logic;
SIGNAL \cnt|tempo[1]~7_combout\ : std_logic;
SIGNAL \cnt|tempo[1]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[1]~6_combout\ : std_logic;
SIGNAL \cnt|Add0~2\ : std_logic;
SIGNAL \cnt|Add0~5_sumout\ : std_logic;
SIGNAL \cnt|tempo[2]~9_combout\ : std_logic;
SIGNAL \cnt|tempo[2]~11_combout\ : std_logic;
SIGNAL \cnt|tempo[2]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[2]~10_combout\ : std_logic;
SIGNAL \cnt|Add0~6\ : std_logic;
SIGNAL \cnt|Add0~9_sumout\ : std_logic;
SIGNAL \cnt|tempo[3]~13_combout\ : std_logic;
SIGNAL \cnt|tempo[3]~15_combout\ : std_logic;
SIGNAL \cnt|tempo[3]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[3]~14_combout\ : std_logic;
SIGNAL \cnt|Add0~10\ : std_logic;
SIGNAL \cnt|Add0~13_sumout\ : std_logic;
SIGNAL \cnt|tempo[4]~17_combout\ : std_logic;
SIGNAL \cnt|tempo[4]~19_combout\ : std_logic;
SIGNAL \cnt|tempo[4]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[4]~18_combout\ : std_logic;
SIGNAL \cnt|Add0~14\ : std_logic;
SIGNAL \cnt|Add0~17_sumout\ : std_logic;
SIGNAL \cnt|tempo[5]~21_combout\ : std_logic;
SIGNAL \cnt|tempo[5]~23_combout\ : std_logic;
SIGNAL \cnt|tempo[5]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[5]~22_combout\ : std_logic;
SIGNAL \cnt|Add0~18\ : std_logic;
SIGNAL \cnt|Add0~21_sumout\ : std_logic;
SIGNAL \cnt|tempo[6]~25_combout\ : std_logic;
SIGNAL \cnt|tempo[6]~27_combout\ : std_logic;
SIGNAL \cnt|tempo[6]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[6]~26_combout\ : std_logic;
SIGNAL \cnt|Add0~22\ : std_logic;
SIGNAL \cnt|Add0~25_sumout\ : std_logic;
SIGNAL \cnt|tempo[7]~29_combout\ : std_logic;
SIGNAL \cnt|tempo[7]~31_combout\ : std_logic;
SIGNAL \cnt|tempo[7]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[7]~30_combout\ : std_logic;
SIGNAL \cnt|Add0~26\ : std_logic;
SIGNAL \cnt|Add0~29_sumout\ : std_logic;
SIGNAL \cnt|tempo[8]~33_combout\ : std_logic;
SIGNAL \cnt|tempo[8]~35_combout\ : std_logic;
SIGNAL \cnt|tempo[8]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[8]~34_combout\ : std_logic;
SIGNAL \cnt|Add0~30\ : std_logic;
SIGNAL \cnt|Add0~33_sumout\ : std_logic;
SIGNAL \cnt|tempo[9]~37_combout\ : std_logic;
SIGNAL \cnt|tempo[9]~39_combout\ : std_logic;
SIGNAL \cnt|tempo[9]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[9]~38_combout\ : std_logic;
SIGNAL \cnt|Add0~34\ : std_logic;
SIGNAL \cnt|Add0~37_sumout\ : std_logic;
SIGNAL \cnt|tempo[10]~41_combout\ : std_logic;
SIGNAL \cnt|tempo[10]~43_combout\ : std_logic;
SIGNAL \cnt|tempo[10]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[10]~42_combout\ : std_logic;
SIGNAL \cnt|Add0~38\ : std_logic;
SIGNAL \cnt|Add0~41_sumout\ : std_logic;
SIGNAL \cnt|tempo[11]~45_combout\ : std_logic;
SIGNAL \cnt|tempo[11]~47_combout\ : std_logic;
SIGNAL \cnt|tempo[11]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[11]~46_combout\ : std_logic;
SIGNAL \cnt|Add0~42\ : std_logic;
SIGNAL \cnt|Add0~45_sumout\ : std_logic;
SIGNAL \cnt|tempo[12]~49_combout\ : std_logic;
SIGNAL \cnt|tempo[12]~51_combout\ : std_logic;
SIGNAL \cnt|tempo[12]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[12]~50_combout\ : std_logic;
SIGNAL \cnt|Add0~46\ : std_logic;
SIGNAL \cnt|Add0~49_sumout\ : std_logic;
SIGNAL \cnt|tempo[13]~53_combout\ : std_logic;
SIGNAL \cnt|tempo[13]~55_combout\ : std_logic;
SIGNAL \cnt|tempo[13]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[13]~54_combout\ : std_logic;
SIGNAL \cnt|Add0~50\ : std_logic;
SIGNAL \cnt|Add0~53_sumout\ : std_logic;
SIGNAL \cnt|tempo[14]~57_combout\ : std_logic;
SIGNAL \cnt|tempo[14]~59_combout\ : std_logic;
SIGNAL \cnt|tempo[14]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[14]~58_combout\ : std_logic;
SIGNAL \cnt|Add0~54\ : std_logic;
SIGNAL \cnt|Add0~57_sumout\ : std_logic;
SIGNAL \cnt|tempo[15]~61_combout\ : std_logic;
SIGNAL \cnt|tempo[15]~63_combout\ : std_logic;
SIGNAL \cnt|tempo[15]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[15]~62_combout\ : std_logic;
SIGNAL \cnt|Add0~58\ : std_logic;
SIGNAL \cnt|Add0~61_sumout\ : std_logic;
SIGNAL \cnt|tempo[16]~65_combout\ : std_logic;
SIGNAL \cnt|tempo[16]~67_combout\ : std_logic;
SIGNAL \cnt|tempo[16]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[16]~66_combout\ : std_logic;
SIGNAL \cnt|Add0~62\ : std_logic;
SIGNAL \cnt|Add0~65_sumout\ : std_logic;
SIGNAL \cnt|tempo[17]~69_combout\ : std_logic;
SIGNAL \cnt|tempo[17]~71_combout\ : std_logic;
SIGNAL \cnt|tempo[17]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[17]~70_combout\ : std_logic;
SIGNAL \cnt|Add0~66\ : std_logic;
SIGNAL \cnt|Add0~69_sumout\ : std_logic;
SIGNAL \cnt|tempo[18]~73_combout\ : std_logic;
SIGNAL \cnt|tempo[18]~75_combout\ : std_logic;
SIGNAL \cnt|tempo[18]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[18]~74_combout\ : std_logic;
SIGNAL \cnt|Add0~70\ : std_logic;
SIGNAL \cnt|Add0~73_sumout\ : std_logic;
SIGNAL \cnt|tempo[19]~77_combout\ : std_logic;
SIGNAL \cnt|tempo[19]~79_combout\ : std_logic;
SIGNAL \cnt|tempo[19]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[19]~78_combout\ : std_logic;
SIGNAL \cnt|Add0~74\ : std_logic;
SIGNAL \cnt|Add0~77_sumout\ : std_logic;
SIGNAL \cnt|tempo[20]~81_combout\ : std_logic;
SIGNAL \cnt|tempo[20]~83_combout\ : std_logic;
SIGNAL \cnt|tempo[20]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[20]~82_combout\ : std_logic;
SIGNAL \cnt|Add0~78\ : std_logic;
SIGNAL \cnt|Add0~81_sumout\ : std_logic;
SIGNAL \cnt|tempo[21]~85_combout\ : std_logic;
SIGNAL \cnt|tempo[21]~87_combout\ : std_logic;
SIGNAL \cnt|tempo[21]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[21]~86_combout\ : std_logic;
SIGNAL \cnt|Add0~82\ : std_logic;
SIGNAL \cnt|Add0~85_sumout\ : std_logic;
SIGNAL \cnt|tempo[22]~89_combout\ : std_logic;
SIGNAL \cnt|tempo[22]~91_combout\ : std_logic;
SIGNAL \cnt|tempo[22]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[22]~90_combout\ : std_logic;
SIGNAL \cnt|Add0~86\ : std_logic;
SIGNAL \cnt|Add0~89_sumout\ : std_logic;
SIGNAL \cnt|tempo[23]~93_combout\ : std_logic;
SIGNAL \cnt|tempo[23]~95_combout\ : std_logic;
SIGNAL \cnt|tempo[23]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[23]~94_combout\ : std_logic;
SIGNAL \cnt|Add0~90\ : std_logic;
SIGNAL \cnt|Add0~93_sumout\ : std_logic;
SIGNAL \cnt|tempo[24]~97_combout\ : std_logic;
SIGNAL \cnt|tempo[24]~99_combout\ : std_logic;
SIGNAL \cnt|tempo[24]~_emulated_q\ : std_logic;
SIGNAL \cnt|tempo[24]~98_combout\ : std_logic;
SIGNAL \cnt|IQ\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \cnt|ALT_INV_IQ\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \cnt|ALT_INV_tempo[11]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[10]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[9]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[8]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[7]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[6]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[5]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[4]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[3]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[2]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[1]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[24]~97_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[23]~93_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[22]~89_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[21]~85_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[20]~81_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[19]~77_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[18]~73_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[17]~69_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[16]~65_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[15]~61_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[14]~57_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[13]~53_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[12]~49_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[11]~45_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[10]~41_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[9]~37_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[8]~33_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[7]~29_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[6]~25_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[5]~21_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[4]~17_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[3]~13_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[2]~9_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[1]~5_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[0]~1_combout\ : std_logic;
SIGNAL \div|ALT_INV_pulsoAtivo~q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[24]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[23]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[22]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[21]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[20]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[19]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[18]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[17]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[16]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[15]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[14]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[13]~_emulated_q\ : std_logic;
SIGNAL \cnt|ALT_INV_tempo[12]~_emulated_q\ : std_logic;

BEGIN

ww_pulso <= pulso;
ww_clock <= clock;
ww_reset <= reset;
tempo <= ww_tempo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\cnt|ALT_INV_IQ\(11) <= NOT \cnt|IQ\(11);
\cnt|ALT_INV_tempo[11]~_emulated_q\ <= NOT \cnt|tempo[11]~_emulated_q\;
\cnt|ALT_INV_IQ\(10) <= NOT \cnt|IQ\(10);
\cnt|ALT_INV_tempo[10]~_emulated_q\ <= NOT \cnt|tempo[10]~_emulated_q\;
\cnt|ALT_INV_IQ\(9) <= NOT \cnt|IQ\(9);
\cnt|ALT_INV_tempo[9]~_emulated_q\ <= NOT \cnt|tempo[9]~_emulated_q\;
\cnt|ALT_INV_IQ\(8) <= NOT \cnt|IQ\(8);
\cnt|ALT_INV_tempo[8]~_emulated_q\ <= NOT \cnt|tempo[8]~_emulated_q\;
\cnt|ALT_INV_IQ\(7) <= NOT \cnt|IQ\(7);
\cnt|ALT_INV_tempo[7]~_emulated_q\ <= NOT \cnt|tempo[7]~_emulated_q\;
\cnt|ALT_INV_IQ\(6) <= NOT \cnt|IQ\(6);
\cnt|ALT_INV_tempo[6]~_emulated_q\ <= NOT \cnt|tempo[6]~_emulated_q\;
\cnt|ALT_INV_IQ\(5) <= NOT \cnt|IQ\(5);
\cnt|ALT_INV_tempo[5]~_emulated_q\ <= NOT \cnt|tempo[5]~_emulated_q\;
\cnt|ALT_INV_IQ\(4) <= NOT \cnt|IQ\(4);
\cnt|ALT_INV_tempo[4]~_emulated_q\ <= NOT \cnt|tempo[4]~_emulated_q\;
\cnt|ALT_INV_IQ\(3) <= NOT \cnt|IQ\(3);
\cnt|ALT_INV_tempo[3]~_emulated_q\ <= NOT \cnt|tempo[3]~_emulated_q\;
\cnt|ALT_INV_IQ\(2) <= NOT \cnt|IQ\(2);
\cnt|ALT_INV_tempo[2]~_emulated_q\ <= NOT \cnt|tempo[2]~_emulated_q\;
\cnt|ALT_INV_IQ\(1) <= NOT \cnt|IQ\(1);
\cnt|ALT_INV_tempo[1]~_emulated_q\ <= NOT \cnt|tempo[1]~_emulated_q\;
\cnt|ALT_INV_IQ\(0) <= NOT \cnt|IQ\(0);
\cnt|ALT_INV_tempo[0]~_emulated_q\ <= NOT \cnt|tempo[0]~_emulated_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\cnt|ALT_INV_tempo[24]~97_combout\ <= NOT \cnt|tempo[24]~97_combout\;
\cnt|ALT_INV_tempo[23]~93_combout\ <= NOT \cnt|tempo[23]~93_combout\;
\cnt|ALT_INV_tempo[22]~89_combout\ <= NOT \cnt|tempo[22]~89_combout\;
\cnt|ALT_INV_tempo[21]~85_combout\ <= NOT \cnt|tempo[21]~85_combout\;
\cnt|ALT_INV_tempo[20]~81_combout\ <= NOT \cnt|tempo[20]~81_combout\;
\cnt|ALT_INV_tempo[19]~77_combout\ <= NOT \cnt|tempo[19]~77_combout\;
\cnt|ALT_INV_tempo[18]~73_combout\ <= NOT \cnt|tempo[18]~73_combout\;
\cnt|ALT_INV_tempo[17]~69_combout\ <= NOT \cnt|tempo[17]~69_combout\;
\cnt|ALT_INV_tempo[16]~65_combout\ <= NOT \cnt|tempo[16]~65_combout\;
\cnt|ALT_INV_tempo[15]~61_combout\ <= NOT \cnt|tempo[15]~61_combout\;
\cnt|ALT_INV_tempo[14]~57_combout\ <= NOT \cnt|tempo[14]~57_combout\;
\cnt|ALT_INV_tempo[13]~53_combout\ <= NOT \cnt|tempo[13]~53_combout\;
\cnt|ALT_INV_tempo[12]~49_combout\ <= NOT \cnt|tempo[12]~49_combout\;
\cnt|ALT_INV_tempo[11]~45_combout\ <= NOT \cnt|tempo[11]~45_combout\;
\cnt|ALT_INV_tempo[10]~41_combout\ <= NOT \cnt|tempo[10]~41_combout\;
\cnt|ALT_INV_tempo[9]~37_combout\ <= NOT \cnt|tempo[9]~37_combout\;
\cnt|ALT_INV_tempo[8]~33_combout\ <= NOT \cnt|tempo[8]~33_combout\;
\cnt|ALT_INV_tempo[7]~29_combout\ <= NOT \cnt|tempo[7]~29_combout\;
\cnt|ALT_INV_tempo[6]~25_combout\ <= NOT \cnt|tempo[6]~25_combout\;
\cnt|ALT_INV_tempo[5]~21_combout\ <= NOT \cnt|tempo[5]~21_combout\;
\cnt|ALT_INV_tempo[4]~17_combout\ <= NOT \cnt|tempo[4]~17_combout\;
\cnt|ALT_INV_tempo[3]~13_combout\ <= NOT \cnt|tempo[3]~13_combout\;
\cnt|ALT_INV_tempo[2]~9_combout\ <= NOT \cnt|tempo[2]~9_combout\;
\cnt|ALT_INV_tempo[1]~5_combout\ <= NOT \cnt|tempo[1]~5_combout\;
\cnt|ALT_INV_tempo[0]~1_combout\ <= NOT \cnt|tempo[0]~1_combout\;
\div|ALT_INV_pulsoAtivo~q\ <= NOT \div|pulsoAtivo~q\;
\cnt|ALT_INV_IQ\(24) <= NOT \cnt|IQ\(24);
\cnt|ALT_INV_tempo[24]~_emulated_q\ <= NOT \cnt|tempo[24]~_emulated_q\;
\cnt|ALT_INV_IQ\(23) <= NOT \cnt|IQ\(23);
\cnt|ALT_INV_tempo[23]~_emulated_q\ <= NOT \cnt|tempo[23]~_emulated_q\;
\cnt|ALT_INV_IQ\(22) <= NOT \cnt|IQ\(22);
\cnt|ALT_INV_tempo[22]~_emulated_q\ <= NOT \cnt|tempo[22]~_emulated_q\;
\cnt|ALT_INV_IQ\(21) <= NOT \cnt|IQ\(21);
\cnt|ALT_INV_tempo[21]~_emulated_q\ <= NOT \cnt|tempo[21]~_emulated_q\;
\cnt|ALT_INV_IQ\(20) <= NOT \cnt|IQ\(20);
\cnt|ALT_INV_tempo[20]~_emulated_q\ <= NOT \cnt|tempo[20]~_emulated_q\;
\cnt|ALT_INV_IQ\(19) <= NOT \cnt|IQ\(19);
\cnt|ALT_INV_tempo[19]~_emulated_q\ <= NOT \cnt|tempo[19]~_emulated_q\;
\cnt|ALT_INV_IQ\(18) <= NOT \cnt|IQ\(18);
\cnt|ALT_INV_tempo[18]~_emulated_q\ <= NOT \cnt|tempo[18]~_emulated_q\;
\cnt|ALT_INV_IQ\(17) <= NOT \cnt|IQ\(17);
\cnt|ALT_INV_tempo[17]~_emulated_q\ <= NOT \cnt|tempo[17]~_emulated_q\;
\cnt|ALT_INV_IQ\(16) <= NOT \cnt|IQ\(16);
\cnt|ALT_INV_tempo[16]~_emulated_q\ <= NOT \cnt|tempo[16]~_emulated_q\;
\cnt|ALT_INV_IQ\(15) <= NOT \cnt|IQ\(15);
\cnt|ALT_INV_tempo[15]~_emulated_q\ <= NOT \cnt|tempo[15]~_emulated_q\;
\cnt|ALT_INV_IQ\(14) <= NOT \cnt|IQ\(14);
\cnt|ALT_INV_tempo[14]~_emulated_q\ <= NOT \cnt|tempo[14]~_emulated_q\;
\cnt|ALT_INV_IQ\(13) <= NOT \cnt|IQ\(13);
\cnt|ALT_INV_tempo[13]~_emulated_q\ <= NOT \cnt|tempo[13]~_emulated_q\;
\cnt|ALT_INV_IQ\(12) <= NOT \cnt|IQ\(12);
\cnt|ALT_INV_tempo[12]~_emulated_q\ <= NOT \cnt|tempo[12]~_emulated_q\;

\tempo[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[0]~2_combout\,
	devoe => ww_devoe,
	o => \tempo[0]~output_o\);

\tempo[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[1]~6_combout\,
	devoe => ww_devoe,
	o => \tempo[1]~output_o\);

\tempo[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[2]~10_combout\,
	devoe => ww_devoe,
	o => \tempo[2]~output_o\);

\tempo[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[3]~14_combout\,
	devoe => ww_devoe,
	o => \tempo[3]~output_o\);

\tempo[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[4]~18_combout\,
	devoe => ww_devoe,
	o => \tempo[4]~output_o\);

\tempo[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[5]~22_combout\,
	devoe => ww_devoe,
	o => \tempo[5]~output_o\);

\tempo[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[6]~26_combout\,
	devoe => ww_devoe,
	o => \tempo[6]~output_o\);

\tempo[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[7]~30_combout\,
	devoe => ww_devoe,
	o => \tempo[7]~output_o\);

\tempo[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[8]~34_combout\,
	devoe => ww_devoe,
	o => \tempo[8]~output_o\);

\tempo[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[9]~38_combout\,
	devoe => ww_devoe,
	o => \tempo[9]~output_o\);

\tempo[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[10]~42_combout\,
	devoe => ww_devoe,
	o => \tempo[10]~output_o\);

\tempo[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[11]~46_combout\,
	devoe => ww_devoe,
	o => \tempo[11]~output_o\);

\tempo[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[12]~50_combout\,
	devoe => ww_devoe,
	o => \tempo[12]~output_o\);

\tempo[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[13]~54_combout\,
	devoe => ww_devoe,
	o => \tempo[13]~output_o\);

\tempo[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[14]~58_combout\,
	devoe => ww_devoe,
	o => \tempo[14]~output_o\);

\tempo[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[15]~62_combout\,
	devoe => ww_devoe,
	o => \tempo[15]~output_o\);

\tempo[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[16]~66_combout\,
	devoe => ww_devoe,
	o => \tempo[16]~output_o\);

\tempo[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[17]~70_combout\,
	devoe => ww_devoe,
	o => \tempo[17]~output_o\);

\tempo[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[18]~74_combout\,
	devoe => ww_devoe,
	o => \tempo[18]~output_o\);

\tempo[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[19]~78_combout\,
	devoe => ww_devoe,
	o => \tempo[19]~output_o\);

\tempo[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[20]~82_combout\,
	devoe => ww_devoe,
	o => \tempo[20]~output_o\);

\tempo[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[21]~86_combout\,
	devoe => ww_devoe,
	o => \tempo[21]~output_o\);

\tempo[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[22]~90_combout\,
	devoe => ww_devoe,
	o => \tempo[22]~output_o\);

\tempo[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[23]~94_combout\,
	devoe => ww_devoe,
	o => \tempo[23]~output_o\);

\tempo[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|tempo[24]~98_combout\,
	devoe => ww_devoe,
	o => \tempo[24]~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\cnt|IQ[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|IQ[0]~0_combout\ = !\cnt|IQ\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(0),
	combout => \cnt|IQ[0]~0_combout\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\pulso~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso,
	o => \pulso~input_o\);

\div|pulsoAtivo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pulso~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|pulsoAtivo~q\);

\cnt|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|IQ[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(0));

\cnt|tempo[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[0]~1_combout\ = ( \cnt|tempo[0]~1_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(0) ) ) ) # ( !\cnt|tempo[0]~1_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(0) ) ) ) # ( \cnt|tempo[0]~1_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(0),
	datae => \cnt|ALT_INV_tempo[0]~1_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[0]~1_combout\);

\cnt|tempo[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[0]~3_combout\ = !\cnt|IQ\(0) $ (!\cnt|tempo[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(0),
	datab => \cnt|ALT_INV_tempo[0]~1_combout\,
	combout => \cnt|tempo[0]~3_combout\);

\cnt|tempo[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[0]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[0]~_emulated_q\);

\cnt|tempo[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[0]~2_combout\ = (!\reset~input_o\ & (!\cnt|tempo[0]~_emulated_q\ $ ((!\cnt|tempo[0]~1_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[0]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[0]~1_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(0),
	combout => \cnt|tempo[0]~2_combout\);

\cnt|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~1_sumout\ = SUM(( \cnt|IQ\(0) ) + ( \cnt|IQ\(1) ) + ( !VCC ))
-- \cnt|Add0~2\ = CARRY(( \cnt|IQ\(0) ) + ( \cnt|IQ\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(0),
	dataf => \cnt|ALT_INV_IQ\(1),
	cin => GND,
	sumout => \cnt|Add0~1_sumout\,
	cout => \cnt|Add0~2\);

\cnt|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(1));

\cnt|tempo[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[1]~5_combout\ = ( \cnt|tempo[1]~5_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(1) ) ) ) # ( !\cnt|tempo[1]~5_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(1) ) ) ) # ( \cnt|tempo[1]~5_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(1),
	datae => \cnt|ALT_INV_tempo[1]~5_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[1]~5_combout\);

\cnt|tempo[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[1]~7_combout\ = !\cnt|IQ\(1) $ (!\cnt|tempo[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(1),
	datab => \cnt|ALT_INV_tempo[1]~5_combout\,
	combout => \cnt|tempo[1]~7_combout\);

\cnt|tempo[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[1]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[1]~_emulated_q\);

\cnt|tempo[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[1]~6_combout\ = (!\reset~input_o\ & (!\cnt|tempo[1]~_emulated_q\ $ ((!\cnt|tempo[1]~5_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[1]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[1]~5_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(1),
	combout => \cnt|tempo[1]~6_combout\);

\cnt|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~5_sumout\ = SUM(( \cnt|IQ\(2) ) + ( GND ) + ( \cnt|Add0~2\ ))
-- \cnt|Add0~6\ = CARRY(( \cnt|IQ\(2) ) + ( GND ) + ( \cnt|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(2),
	cin => \cnt|Add0~2\,
	sumout => \cnt|Add0~5_sumout\,
	cout => \cnt|Add0~6\);

\cnt|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(2));

\cnt|tempo[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[2]~9_combout\ = ( \cnt|tempo[2]~9_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(2) ) ) ) # ( !\cnt|tempo[2]~9_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(2) ) ) ) # ( \cnt|tempo[2]~9_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(2),
	datae => \cnt|ALT_INV_tempo[2]~9_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[2]~9_combout\);

\cnt|tempo[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[2]~11_combout\ = !\cnt|IQ\(2) $ (!\cnt|tempo[2]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(2),
	datab => \cnt|ALT_INV_tempo[2]~9_combout\,
	combout => \cnt|tempo[2]~11_combout\);

\cnt|tempo[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[2]~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[2]~_emulated_q\);

\cnt|tempo[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[2]~10_combout\ = (!\reset~input_o\ & (!\cnt|tempo[2]~_emulated_q\ $ ((!\cnt|tempo[2]~9_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[2]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[2]~9_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(2),
	combout => \cnt|tempo[2]~10_combout\);

\cnt|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~9_sumout\ = SUM(( \cnt|IQ\(3) ) + ( GND ) + ( \cnt|Add0~6\ ))
-- \cnt|Add0~10\ = CARRY(( \cnt|IQ\(3) ) + ( GND ) + ( \cnt|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(3),
	cin => \cnt|Add0~6\,
	sumout => \cnt|Add0~9_sumout\,
	cout => \cnt|Add0~10\);

\cnt|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(3));

\cnt|tempo[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[3]~13_combout\ = ( \cnt|tempo[3]~13_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(3) ) ) ) # ( !\cnt|tempo[3]~13_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(3) ) ) ) # ( \cnt|tempo[3]~13_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(3),
	datae => \cnt|ALT_INV_tempo[3]~13_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[3]~13_combout\);

\cnt|tempo[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[3]~15_combout\ = !\cnt|IQ\(3) $ (!\cnt|tempo[3]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(3),
	datab => \cnt|ALT_INV_tempo[3]~13_combout\,
	combout => \cnt|tempo[3]~15_combout\);

\cnt|tempo[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[3]~15_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[3]~_emulated_q\);

\cnt|tempo[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[3]~14_combout\ = (!\reset~input_o\ & (!\cnt|tempo[3]~_emulated_q\ $ ((!\cnt|tempo[3]~13_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[3]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[3]~13_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(3),
	combout => \cnt|tempo[3]~14_combout\);

\cnt|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~13_sumout\ = SUM(( \cnt|IQ\(4) ) + ( GND ) + ( \cnt|Add0~10\ ))
-- \cnt|Add0~14\ = CARRY(( \cnt|IQ\(4) ) + ( GND ) + ( \cnt|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(4),
	cin => \cnt|Add0~10\,
	sumout => \cnt|Add0~13_sumout\,
	cout => \cnt|Add0~14\);

\cnt|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(4));

\cnt|tempo[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[4]~17_combout\ = ( \cnt|tempo[4]~17_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(4) ) ) ) # ( !\cnt|tempo[4]~17_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(4) ) ) ) # ( \cnt|tempo[4]~17_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(4),
	datae => \cnt|ALT_INV_tempo[4]~17_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[4]~17_combout\);

\cnt|tempo[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[4]~19_combout\ = !\cnt|IQ\(4) $ (!\cnt|tempo[4]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(4),
	datab => \cnt|ALT_INV_tempo[4]~17_combout\,
	combout => \cnt|tempo[4]~19_combout\);

\cnt|tempo[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[4]~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[4]~_emulated_q\);

\cnt|tempo[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[4]~18_combout\ = (!\reset~input_o\ & (!\cnt|tempo[4]~_emulated_q\ $ ((!\cnt|tempo[4]~17_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[4]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[4]~17_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(4),
	combout => \cnt|tempo[4]~18_combout\);

\cnt|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~17_sumout\ = SUM(( \cnt|IQ\(5) ) + ( GND ) + ( \cnt|Add0~14\ ))
-- \cnt|Add0~18\ = CARRY(( \cnt|IQ\(5) ) + ( GND ) + ( \cnt|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(5),
	cin => \cnt|Add0~14\,
	sumout => \cnt|Add0~17_sumout\,
	cout => \cnt|Add0~18\);

\cnt|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(5));

\cnt|tempo[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[5]~21_combout\ = ( \cnt|tempo[5]~21_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(5) ) ) ) # ( !\cnt|tempo[5]~21_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(5) ) ) ) # ( \cnt|tempo[5]~21_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(5),
	datae => \cnt|ALT_INV_tempo[5]~21_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[5]~21_combout\);

\cnt|tempo[5]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[5]~23_combout\ = !\cnt|IQ\(5) $ (!\cnt|tempo[5]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(5),
	datab => \cnt|ALT_INV_tempo[5]~21_combout\,
	combout => \cnt|tempo[5]~23_combout\);

\cnt|tempo[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[5]~23_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[5]~_emulated_q\);

\cnt|tempo[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[5]~22_combout\ = (!\reset~input_o\ & (!\cnt|tempo[5]~_emulated_q\ $ ((!\cnt|tempo[5]~21_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[5]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[5]~21_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(5),
	combout => \cnt|tempo[5]~22_combout\);

\cnt|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~21_sumout\ = SUM(( \cnt|IQ\(6) ) + ( GND ) + ( \cnt|Add0~18\ ))
-- \cnt|Add0~22\ = CARRY(( \cnt|IQ\(6) ) + ( GND ) + ( \cnt|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(6),
	cin => \cnt|Add0~18\,
	sumout => \cnt|Add0~21_sumout\,
	cout => \cnt|Add0~22\);

\cnt|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(6));

\cnt|tempo[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[6]~25_combout\ = ( \cnt|tempo[6]~25_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(6) ) ) ) # ( !\cnt|tempo[6]~25_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(6) ) ) ) # ( \cnt|tempo[6]~25_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(6),
	datae => \cnt|ALT_INV_tempo[6]~25_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[6]~25_combout\);

\cnt|tempo[6]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[6]~27_combout\ = !\cnt|IQ\(6) $ (!\cnt|tempo[6]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(6),
	datab => \cnt|ALT_INV_tempo[6]~25_combout\,
	combout => \cnt|tempo[6]~27_combout\);

\cnt|tempo[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[6]~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[6]~_emulated_q\);

\cnt|tempo[6]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[6]~26_combout\ = (!\reset~input_o\ & (!\cnt|tempo[6]~_emulated_q\ $ ((!\cnt|tempo[6]~25_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[6]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[6]~25_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(6),
	combout => \cnt|tempo[6]~26_combout\);

\cnt|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~25_sumout\ = SUM(( \cnt|IQ\(7) ) + ( GND ) + ( \cnt|Add0~22\ ))
-- \cnt|Add0~26\ = CARRY(( \cnt|IQ\(7) ) + ( GND ) + ( \cnt|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(7),
	cin => \cnt|Add0~22\,
	sumout => \cnt|Add0~25_sumout\,
	cout => \cnt|Add0~26\);

\cnt|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(7));

\cnt|tempo[7]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[7]~29_combout\ = ( \cnt|tempo[7]~29_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(7) ) ) ) # ( !\cnt|tempo[7]~29_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(7) ) ) ) # ( \cnt|tempo[7]~29_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(7),
	datae => \cnt|ALT_INV_tempo[7]~29_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[7]~29_combout\);

\cnt|tempo[7]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[7]~31_combout\ = !\cnt|IQ\(7) $ (!\cnt|tempo[7]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(7),
	datab => \cnt|ALT_INV_tempo[7]~29_combout\,
	combout => \cnt|tempo[7]~31_combout\);

\cnt|tempo[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[7]~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[7]~_emulated_q\);

\cnt|tempo[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[7]~30_combout\ = (!\reset~input_o\ & (!\cnt|tempo[7]~_emulated_q\ $ ((!\cnt|tempo[7]~29_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[7]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[7]~29_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(7),
	combout => \cnt|tempo[7]~30_combout\);

\cnt|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~29_sumout\ = SUM(( \cnt|IQ\(8) ) + ( GND ) + ( \cnt|Add0~26\ ))
-- \cnt|Add0~30\ = CARRY(( \cnt|IQ\(8) ) + ( GND ) + ( \cnt|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(8),
	cin => \cnt|Add0~26\,
	sumout => \cnt|Add0~29_sumout\,
	cout => \cnt|Add0~30\);

\cnt|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(8));

\cnt|tempo[8]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[8]~33_combout\ = ( \cnt|tempo[8]~33_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(8) ) ) ) # ( !\cnt|tempo[8]~33_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(8) ) ) ) # ( \cnt|tempo[8]~33_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(8),
	datae => \cnt|ALT_INV_tempo[8]~33_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[8]~33_combout\);

\cnt|tempo[8]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[8]~35_combout\ = !\cnt|IQ\(8) $ (!\cnt|tempo[8]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(8),
	datab => \cnt|ALT_INV_tempo[8]~33_combout\,
	combout => \cnt|tempo[8]~35_combout\);

\cnt|tempo[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[8]~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[8]~_emulated_q\);

\cnt|tempo[8]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[8]~34_combout\ = (!\reset~input_o\ & (!\cnt|tempo[8]~_emulated_q\ $ ((!\cnt|tempo[8]~33_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(8)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[8]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[8]~33_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(8),
	combout => \cnt|tempo[8]~34_combout\);

\cnt|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~33_sumout\ = SUM(( \cnt|IQ\(9) ) + ( GND ) + ( \cnt|Add0~30\ ))
-- \cnt|Add0~34\ = CARRY(( \cnt|IQ\(9) ) + ( GND ) + ( \cnt|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(9),
	cin => \cnt|Add0~30\,
	sumout => \cnt|Add0~33_sumout\,
	cout => \cnt|Add0~34\);

\cnt|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(9));

\cnt|tempo[9]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[9]~37_combout\ = ( \cnt|tempo[9]~37_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(9) ) ) ) # ( !\cnt|tempo[9]~37_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(9) ) ) ) # ( \cnt|tempo[9]~37_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(9),
	datae => \cnt|ALT_INV_tempo[9]~37_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[9]~37_combout\);

\cnt|tempo[9]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[9]~39_combout\ = !\cnt|IQ\(9) $ (!\cnt|tempo[9]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(9),
	datab => \cnt|ALT_INV_tempo[9]~37_combout\,
	combout => \cnt|tempo[9]~39_combout\);

\cnt|tempo[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[9]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[9]~_emulated_q\);

\cnt|tempo[9]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[9]~38_combout\ = (!\reset~input_o\ & (!\cnt|tempo[9]~_emulated_q\ $ ((!\cnt|tempo[9]~37_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(9)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[9]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[9]~37_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(9),
	combout => \cnt|tempo[9]~38_combout\);

\cnt|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~37_sumout\ = SUM(( \cnt|IQ\(10) ) + ( GND ) + ( \cnt|Add0~34\ ))
-- \cnt|Add0~38\ = CARRY(( \cnt|IQ\(10) ) + ( GND ) + ( \cnt|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(10),
	cin => \cnt|Add0~34\,
	sumout => \cnt|Add0~37_sumout\,
	cout => \cnt|Add0~38\);

\cnt|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(10));

\cnt|tempo[10]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[10]~41_combout\ = ( \cnt|tempo[10]~41_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(10) ) ) ) # ( !\cnt|tempo[10]~41_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(10) ) ) ) # ( \cnt|tempo[10]~41_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(10),
	datae => \cnt|ALT_INV_tempo[10]~41_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[10]~41_combout\);

\cnt|tempo[10]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[10]~43_combout\ = !\cnt|IQ\(10) $ (!\cnt|tempo[10]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(10),
	datab => \cnt|ALT_INV_tempo[10]~41_combout\,
	combout => \cnt|tempo[10]~43_combout\);

\cnt|tempo[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[10]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[10]~_emulated_q\);

\cnt|tempo[10]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[10]~42_combout\ = (!\reset~input_o\ & (!\cnt|tempo[10]~_emulated_q\ $ ((!\cnt|tempo[10]~41_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(10)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[10]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[10]~41_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(10),
	combout => \cnt|tempo[10]~42_combout\);

\cnt|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~41_sumout\ = SUM(( \cnt|IQ\(11) ) + ( GND ) + ( \cnt|Add0~38\ ))
-- \cnt|Add0~42\ = CARRY(( \cnt|IQ\(11) ) + ( GND ) + ( \cnt|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(11),
	cin => \cnt|Add0~38\,
	sumout => \cnt|Add0~41_sumout\,
	cout => \cnt|Add0~42\);

\cnt|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(11));

\cnt|tempo[11]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[11]~45_combout\ = ( \cnt|tempo[11]~45_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(11) ) ) ) # ( !\cnt|tempo[11]~45_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(11) ) ) ) # ( \cnt|tempo[11]~45_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(11),
	datae => \cnt|ALT_INV_tempo[11]~45_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[11]~45_combout\);

\cnt|tempo[11]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[11]~47_combout\ = !\cnt|IQ\(11) $ (!\cnt|tempo[11]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(11),
	datab => \cnt|ALT_INV_tempo[11]~45_combout\,
	combout => \cnt|tempo[11]~47_combout\);

\cnt|tempo[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[11]~47_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[11]~_emulated_q\);

\cnt|tempo[11]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[11]~46_combout\ = (!\reset~input_o\ & (!\cnt|tempo[11]~_emulated_q\ $ ((!\cnt|tempo[11]~45_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(11)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[11]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[11]~45_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(11),
	combout => \cnt|tempo[11]~46_combout\);

\cnt|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~45_sumout\ = SUM(( \cnt|IQ\(12) ) + ( GND ) + ( \cnt|Add0~42\ ))
-- \cnt|Add0~46\ = CARRY(( \cnt|IQ\(12) ) + ( GND ) + ( \cnt|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(12),
	cin => \cnt|Add0~42\,
	sumout => \cnt|Add0~45_sumout\,
	cout => \cnt|Add0~46\);

\cnt|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(12));

\cnt|tempo[12]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[12]~49_combout\ = ( \cnt|tempo[12]~49_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(12) ) ) ) # ( !\cnt|tempo[12]~49_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(12) ) ) ) # ( \cnt|tempo[12]~49_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(12),
	datae => \cnt|ALT_INV_tempo[12]~49_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[12]~49_combout\);

\cnt|tempo[12]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[12]~51_combout\ = !\cnt|IQ\(12) $ (!\cnt|tempo[12]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(12),
	datab => \cnt|ALT_INV_tempo[12]~49_combout\,
	combout => \cnt|tempo[12]~51_combout\);

\cnt|tempo[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[12]~51_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[12]~_emulated_q\);

\cnt|tempo[12]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[12]~50_combout\ = (!\reset~input_o\ & (!\cnt|tempo[12]~_emulated_q\ $ ((!\cnt|tempo[12]~49_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(12)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[12]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[12]~49_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(12),
	combout => \cnt|tempo[12]~50_combout\);

\cnt|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~49_sumout\ = SUM(( \cnt|IQ\(13) ) + ( GND ) + ( \cnt|Add0~46\ ))
-- \cnt|Add0~50\ = CARRY(( \cnt|IQ\(13) ) + ( GND ) + ( \cnt|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(13),
	cin => \cnt|Add0~46\,
	sumout => \cnt|Add0~49_sumout\,
	cout => \cnt|Add0~50\);

\cnt|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(13));

\cnt|tempo[13]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[13]~53_combout\ = ( \cnt|tempo[13]~53_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(13) ) ) ) # ( !\cnt|tempo[13]~53_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(13) ) ) ) # ( \cnt|tempo[13]~53_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(13),
	datae => \cnt|ALT_INV_tempo[13]~53_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[13]~53_combout\);

\cnt|tempo[13]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[13]~55_combout\ = !\cnt|IQ\(13) $ (!\cnt|tempo[13]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(13),
	datab => \cnt|ALT_INV_tempo[13]~53_combout\,
	combout => \cnt|tempo[13]~55_combout\);

\cnt|tempo[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[13]~55_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[13]~_emulated_q\);

\cnt|tempo[13]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[13]~54_combout\ = (!\reset~input_o\ & (!\cnt|tempo[13]~_emulated_q\ $ ((!\cnt|tempo[13]~53_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(13)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[13]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[13]~53_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(13),
	combout => \cnt|tempo[13]~54_combout\);

\cnt|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~53_sumout\ = SUM(( \cnt|IQ\(14) ) + ( GND ) + ( \cnt|Add0~50\ ))
-- \cnt|Add0~54\ = CARRY(( \cnt|IQ\(14) ) + ( GND ) + ( \cnt|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(14),
	cin => \cnt|Add0~50\,
	sumout => \cnt|Add0~53_sumout\,
	cout => \cnt|Add0~54\);

\cnt|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(14));

\cnt|tempo[14]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[14]~57_combout\ = ( \cnt|tempo[14]~57_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(14) ) ) ) # ( !\cnt|tempo[14]~57_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(14) ) ) ) # ( \cnt|tempo[14]~57_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(14),
	datae => \cnt|ALT_INV_tempo[14]~57_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[14]~57_combout\);

\cnt|tempo[14]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[14]~59_combout\ = !\cnt|IQ\(14) $ (!\cnt|tempo[14]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(14),
	datab => \cnt|ALT_INV_tempo[14]~57_combout\,
	combout => \cnt|tempo[14]~59_combout\);

\cnt|tempo[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[14]~59_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[14]~_emulated_q\);

\cnt|tempo[14]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[14]~58_combout\ = (!\reset~input_o\ & (!\cnt|tempo[14]~_emulated_q\ $ ((!\cnt|tempo[14]~57_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(14)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[14]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[14]~57_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(14),
	combout => \cnt|tempo[14]~58_combout\);

\cnt|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~57_sumout\ = SUM(( \cnt|IQ\(15) ) + ( GND ) + ( \cnt|Add0~54\ ))
-- \cnt|Add0~58\ = CARRY(( \cnt|IQ\(15) ) + ( GND ) + ( \cnt|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(15),
	cin => \cnt|Add0~54\,
	sumout => \cnt|Add0~57_sumout\,
	cout => \cnt|Add0~58\);

\cnt|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(15));

\cnt|tempo[15]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[15]~61_combout\ = ( \cnt|tempo[15]~61_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(15) ) ) ) # ( !\cnt|tempo[15]~61_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(15) ) ) ) # ( \cnt|tempo[15]~61_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(15),
	datae => \cnt|ALT_INV_tempo[15]~61_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[15]~61_combout\);

\cnt|tempo[15]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[15]~63_combout\ = !\cnt|IQ\(15) $ (!\cnt|tempo[15]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(15),
	datab => \cnt|ALT_INV_tempo[15]~61_combout\,
	combout => \cnt|tempo[15]~63_combout\);

\cnt|tempo[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[15]~63_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[15]~_emulated_q\);

\cnt|tempo[15]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[15]~62_combout\ = (!\reset~input_o\ & (!\cnt|tempo[15]~_emulated_q\ $ ((!\cnt|tempo[15]~61_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(15)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[15]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[15]~61_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(15),
	combout => \cnt|tempo[15]~62_combout\);

\cnt|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~61_sumout\ = SUM(( \cnt|IQ\(16) ) + ( GND ) + ( \cnt|Add0~58\ ))
-- \cnt|Add0~62\ = CARRY(( \cnt|IQ\(16) ) + ( GND ) + ( \cnt|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(16),
	cin => \cnt|Add0~58\,
	sumout => \cnt|Add0~61_sumout\,
	cout => \cnt|Add0~62\);

\cnt|IQ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(16));

\cnt|tempo[16]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[16]~65_combout\ = ( \cnt|tempo[16]~65_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(16) ) ) ) # ( !\cnt|tempo[16]~65_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(16) ) ) ) # ( \cnt|tempo[16]~65_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(16),
	datae => \cnt|ALT_INV_tempo[16]~65_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[16]~65_combout\);

\cnt|tempo[16]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[16]~67_combout\ = !\cnt|IQ\(16) $ (!\cnt|tempo[16]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(16),
	datab => \cnt|ALT_INV_tempo[16]~65_combout\,
	combout => \cnt|tempo[16]~67_combout\);

\cnt|tempo[16]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[16]~67_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[16]~_emulated_q\);

\cnt|tempo[16]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[16]~66_combout\ = (!\reset~input_o\ & (!\cnt|tempo[16]~_emulated_q\ $ ((!\cnt|tempo[16]~65_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(16)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[16]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[16]~65_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(16),
	combout => \cnt|tempo[16]~66_combout\);

\cnt|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~65_sumout\ = SUM(( \cnt|IQ\(17) ) + ( GND ) + ( \cnt|Add0~62\ ))
-- \cnt|Add0~66\ = CARRY(( \cnt|IQ\(17) ) + ( GND ) + ( \cnt|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(17),
	cin => \cnt|Add0~62\,
	sumout => \cnt|Add0~65_sumout\,
	cout => \cnt|Add0~66\);

\cnt|IQ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(17));

\cnt|tempo[17]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[17]~69_combout\ = ( \cnt|tempo[17]~69_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(17) ) ) ) # ( !\cnt|tempo[17]~69_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(17) ) ) ) # ( \cnt|tempo[17]~69_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(17),
	datae => \cnt|ALT_INV_tempo[17]~69_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[17]~69_combout\);

\cnt|tempo[17]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[17]~71_combout\ = !\cnt|IQ\(17) $ (!\cnt|tempo[17]~69_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(17),
	datab => \cnt|ALT_INV_tempo[17]~69_combout\,
	combout => \cnt|tempo[17]~71_combout\);

\cnt|tempo[17]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[17]~71_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[17]~_emulated_q\);

\cnt|tempo[17]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[17]~70_combout\ = (!\reset~input_o\ & (!\cnt|tempo[17]~_emulated_q\ $ ((!\cnt|tempo[17]~69_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(17)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[17]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[17]~69_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(17),
	combout => \cnt|tempo[17]~70_combout\);

\cnt|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~69_sumout\ = SUM(( \cnt|IQ\(18) ) + ( GND ) + ( \cnt|Add0~66\ ))
-- \cnt|Add0~70\ = CARRY(( \cnt|IQ\(18) ) + ( GND ) + ( \cnt|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(18),
	cin => \cnt|Add0~66\,
	sumout => \cnt|Add0~69_sumout\,
	cout => \cnt|Add0~70\);

\cnt|IQ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(18));

\cnt|tempo[18]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[18]~73_combout\ = ( \cnt|tempo[18]~73_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(18) ) ) ) # ( !\cnt|tempo[18]~73_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(18) ) ) ) # ( \cnt|tempo[18]~73_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(18),
	datae => \cnt|ALT_INV_tempo[18]~73_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[18]~73_combout\);

\cnt|tempo[18]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[18]~75_combout\ = !\cnt|IQ\(18) $ (!\cnt|tempo[18]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(18),
	datab => \cnt|ALT_INV_tempo[18]~73_combout\,
	combout => \cnt|tempo[18]~75_combout\);

\cnt|tempo[18]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[18]~75_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[18]~_emulated_q\);

\cnt|tempo[18]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[18]~74_combout\ = (!\reset~input_o\ & (!\cnt|tempo[18]~_emulated_q\ $ ((!\cnt|tempo[18]~73_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(18)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[18]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[18]~73_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(18),
	combout => \cnt|tempo[18]~74_combout\);

\cnt|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~73_sumout\ = SUM(( \cnt|IQ\(19) ) + ( GND ) + ( \cnt|Add0~70\ ))
-- \cnt|Add0~74\ = CARRY(( \cnt|IQ\(19) ) + ( GND ) + ( \cnt|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(19),
	cin => \cnt|Add0~70\,
	sumout => \cnt|Add0~73_sumout\,
	cout => \cnt|Add0~74\);

\cnt|IQ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(19));

\cnt|tempo[19]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[19]~77_combout\ = ( \cnt|tempo[19]~77_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(19) ) ) ) # ( !\cnt|tempo[19]~77_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(19) ) ) ) # ( \cnt|tempo[19]~77_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(19),
	datae => \cnt|ALT_INV_tempo[19]~77_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[19]~77_combout\);

\cnt|tempo[19]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[19]~79_combout\ = !\cnt|IQ\(19) $ (!\cnt|tempo[19]~77_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(19),
	datab => \cnt|ALT_INV_tempo[19]~77_combout\,
	combout => \cnt|tempo[19]~79_combout\);

\cnt|tempo[19]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[19]~79_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[19]~_emulated_q\);

\cnt|tempo[19]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[19]~78_combout\ = (!\reset~input_o\ & (!\cnt|tempo[19]~_emulated_q\ $ ((!\cnt|tempo[19]~77_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(19)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[19]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[19]~77_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(19),
	combout => \cnt|tempo[19]~78_combout\);

\cnt|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~77_sumout\ = SUM(( \cnt|IQ\(20) ) + ( GND ) + ( \cnt|Add0~74\ ))
-- \cnt|Add0~78\ = CARRY(( \cnt|IQ\(20) ) + ( GND ) + ( \cnt|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(20),
	cin => \cnt|Add0~74\,
	sumout => \cnt|Add0~77_sumout\,
	cout => \cnt|Add0~78\);

\cnt|IQ[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(20));

\cnt|tempo[20]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[20]~81_combout\ = ( \cnt|tempo[20]~81_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(20) ) ) ) # ( !\cnt|tempo[20]~81_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(20) ) ) ) # ( \cnt|tempo[20]~81_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(20),
	datae => \cnt|ALT_INV_tempo[20]~81_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[20]~81_combout\);

\cnt|tempo[20]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[20]~83_combout\ = !\cnt|IQ\(20) $ (!\cnt|tempo[20]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(20),
	datab => \cnt|ALT_INV_tempo[20]~81_combout\,
	combout => \cnt|tempo[20]~83_combout\);

\cnt|tempo[20]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[20]~83_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[20]~_emulated_q\);

\cnt|tempo[20]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[20]~82_combout\ = (!\reset~input_o\ & (!\cnt|tempo[20]~_emulated_q\ $ ((!\cnt|tempo[20]~81_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(20)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[20]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[20]~81_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(20),
	combout => \cnt|tempo[20]~82_combout\);

\cnt|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~81_sumout\ = SUM(( \cnt|IQ\(21) ) + ( GND ) + ( \cnt|Add0~78\ ))
-- \cnt|Add0~82\ = CARRY(( \cnt|IQ\(21) ) + ( GND ) + ( \cnt|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(21),
	cin => \cnt|Add0~78\,
	sumout => \cnt|Add0~81_sumout\,
	cout => \cnt|Add0~82\);

\cnt|IQ[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~81_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(21));

\cnt|tempo[21]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[21]~85_combout\ = ( \cnt|tempo[21]~85_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(21) ) ) ) # ( !\cnt|tempo[21]~85_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(21) ) ) ) # ( \cnt|tempo[21]~85_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(21),
	datae => \cnt|ALT_INV_tempo[21]~85_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[21]~85_combout\);

\cnt|tempo[21]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[21]~87_combout\ = !\cnt|IQ\(21) $ (!\cnt|tempo[21]~85_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(21),
	datab => \cnt|ALT_INV_tempo[21]~85_combout\,
	combout => \cnt|tempo[21]~87_combout\);

\cnt|tempo[21]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[21]~87_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[21]~_emulated_q\);

\cnt|tempo[21]~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[21]~86_combout\ = (!\reset~input_o\ & (!\cnt|tempo[21]~_emulated_q\ $ ((!\cnt|tempo[21]~85_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(21)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[21]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[21]~85_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(21),
	combout => \cnt|tempo[21]~86_combout\);

\cnt|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~85_sumout\ = SUM(( \cnt|IQ\(22) ) + ( GND ) + ( \cnt|Add0~82\ ))
-- \cnt|Add0~86\ = CARRY(( \cnt|IQ\(22) ) + ( GND ) + ( \cnt|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(22),
	cin => \cnt|Add0~82\,
	sumout => \cnt|Add0~85_sumout\,
	cout => \cnt|Add0~86\);

\cnt|IQ[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(22));

\cnt|tempo[22]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[22]~89_combout\ = ( \cnt|tempo[22]~89_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(22) ) ) ) # ( !\cnt|tempo[22]~89_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(22) ) ) ) # ( \cnt|tempo[22]~89_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(22),
	datae => \cnt|ALT_INV_tempo[22]~89_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[22]~89_combout\);

\cnt|tempo[22]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[22]~91_combout\ = !\cnt|IQ\(22) $ (!\cnt|tempo[22]~89_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(22),
	datab => \cnt|ALT_INV_tempo[22]~89_combout\,
	combout => \cnt|tempo[22]~91_combout\);

\cnt|tempo[22]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[22]~91_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[22]~_emulated_q\);

\cnt|tempo[22]~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[22]~90_combout\ = (!\reset~input_o\ & (!\cnt|tempo[22]~_emulated_q\ $ ((!\cnt|tempo[22]~89_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(22)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[22]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[22]~89_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(22),
	combout => \cnt|tempo[22]~90_combout\);

\cnt|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~89_sumout\ = SUM(( \cnt|IQ\(23) ) + ( GND ) + ( \cnt|Add0~86\ ))
-- \cnt|Add0~90\ = CARRY(( \cnt|IQ\(23) ) + ( GND ) + ( \cnt|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(23),
	cin => \cnt|Add0~86\,
	sumout => \cnt|Add0~89_sumout\,
	cout => \cnt|Add0~90\);

\cnt|IQ[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(23));

\cnt|tempo[23]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[23]~93_combout\ = ( \cnt|tempo[23]~93_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(23) ) ) ) # ( !\cnt|tempo[23]~93_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(23) ) ) ) # ( \cnt|tempo[23]~93_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(23),
	datae => \cnt|ALT_INV_tempo[23]~93_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[23]~93_combout\);

\cnt|tempo[23]~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[23]~95_combout\ = !\cnt|IQ\(23) $ (!\cnt|tempo[23]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(23),
	datab => \cnt|ALT_INV_tempo[23]~93_combout\,
	combout => \cnt|tempo[23]~95_combout\);

\cnt|tempo[23]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[23]~95_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[23]~_emulated_q\);

\cnt|tempo[23]~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[23]~94_combout\ = (!\reset~input_o\ & (!\cnt|tempo[23]~_emulated_q\ $ ((!\cnt|tempo[23]~93_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(23)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[23]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[23]~93_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(23),
	combout => \cnt|tempo[23]~94_combout\);

\cnt|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Add0~93_sumout\ = SUM(( \cnt|IQ\(24) ) + ( GND ) + ( \cnt|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(24),
	cin => \cnt|Add0~90\,
	sumout => \cnt|Add0~93_sumout\);

\cnt|IQ[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|Add0~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|IQ\(24));

\cnt|tempo[24]~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[24]~97_combout\ = ( \cnt|tempo[24]~97_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(24) ) ) ) # ( !\cnt|tempo[24]~97_combout\ & ( \reset~input_o\ & ( \cnt|IQ\(24) ) ) ) # ( \cnt|tempo[24]~97_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cnt|ALT_INV_IQ\(24),
	datae => \cnt|ALT_INV_tempo[24]~97_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \cnt|tempo[24]~97_combout\);

\cnt|tempo[24]~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[24]~99_combout\ = !\cnt|IQ\(24) $ (!\cnt|tempo[24]~97_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_IQ\(24),
	datab => \cnt|ALT_INV_tempo[24]~97_combout\,
	combout => \cnt|tempo[24]~99_combout\);

\cnt|tempo[24]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cnt|tempo[24]~99_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \div|ALT_INV_pulsoAtivo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|tempo[24]~_emulated_q\);

\cnt|tempo[24]~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|tempo[24]~98_combout\ = (!\reset~input_o\ & (!\cnt|tempo[24]~_emulated_q\ $ ((!\cnt|tempo[24]~97_combout\)))) # (\reset~input_o\ & (((\cnt|IQ\(24)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001101111011000000110111101100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_tempo[24]~_emulated_q\,
	datab => \cnt|ALT_INV_tempo[24]~97_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cnt|ALT_INV_IQ\(24),
	combout => \cnt|tempo[24]~98_combout\);

ww_tempo(0) <= \tempo[0]~output_o\;

ww_tempo(1) <= \tempo[1]~output_o\;

ww_tempo(2) <= \tempo[2]~output_o\;

ww_tempo(3) <= \tempo[3]~output_o\;

ww_tempo(4) <= \tempo[4]~output_o\;

ww_tempo(5) <= \tempo[5]~output_o\;

ww_tempo(6) <= \tempo[6]~output_o\;

ww_tempo(7) <= \tempo[7]~output_o\;

ww_tempo(8) <= \tempo[8]~output_o\;

ww_tempo(9) <= \tempo[9]~output_o\;

ww_tempo(10) <= \tempo[10]~output_o\;

ww_tempo(11) <= \tempo[11]~output_o\;

ww_tempo(12) <= \tempo[12]~output_o\;

ww_tempo(13) <= \tempo[13]~output_o\;

ww_tempo(14) <= \tempo[14]~output_o\;

ww_tempo(15) <= \tempo[15]~output_o\;

ww_tempo(16) <= \tempo[16]~output_o\;

ww_tempo(17) <= \tempo[17]~output_o\;

ww_tempo(18) <= \tempo[18]~output_o\;

ww_tempo(19) <= \tempo[19]~output_o\;

ww_tempo(20) <= \tempo[20]~output_o\;

ww_tempo(21) <= \tempo[21]~output_o\;

ww_tempo(22) <= \tempo[22]~output_o\;

ww_tempo(23) <= \tempo[23]~output_o\;

ww_tempo(24) <= \tempo[24]~output_o\;
END structure;


