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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/15/2020 15:44:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          top
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY top_vhd_vec_tst IS
END top_vhd_vec_tst;
ARCHITECTURE top_arch OF top_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clear : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL cont : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL pulso : STD_LOGIC;
SIGNAL rco : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL tempo : STD_LOGIC_VECTOR(24 DOWNTO 0);
COMPONENT top
	PORT (
	clear : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	cont : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	enable : IN STD_LOGIC;
	pulso : IN STD_LOGIC;
	rco : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	tempo : BUFFER STD_LOGIC_VECTOR(24 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : top
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	clock => clock,
	cont => cont,
	enable => enable,
	pulso => pulso,
	rco => rco,
	reset => reset,
	tempo => tempo
	);

-- clear
t_prcs_clear: PROCESS
BEGIN
	clear <= '0';
WAIT;
END PROCESS t_prcs_clear;

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 89
	LOOP
		clock <= '0';
		WAIT FOR 5000 ps;
		clock <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;

-- pulso
t_prcs_pulso: PROCESS
BEGIN
	pulso <= '0';
	WAIT FOR 50000 ps;
	pulso <= '1';
	WAIT FOR 160000 ps;
	pulso <= '0';
WAIT;
END PROCESS t_prcs_pulso;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END top_arch;
