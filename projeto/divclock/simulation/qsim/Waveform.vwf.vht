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
-- Generated on "05/15/2020 23:08:40"
                                                             
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
SIGNAL clock : STD_LOGIC;
SIGNAL enable0 : STD_LOGIC;
SIGNAL enable1 : STD_LOGIC;
SIGNAL pulso : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL tempo : STD_LOGIC_VECTOR(24 DOWNTO 0);
COMPONENT top
	PORT (
	clock : IN STD_LOGIC;
	enable0 : IN STD_LOGIC;
	enable1 : IN STD_LOGIC;
	pulso : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	tempo : BUFFER STD_LOGIC_VECTOR(24 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : top
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	enable0 => enable0,
	enable1 => enable1,
	pulso => pulso,
	reset => reset,
	tempo => tempo
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- enable0
t_prcs_enable0: PROCESS
BEGIN
	enable0 <= '0';
WAIT;
END PROCESS t_prcs_enable0;

-- enable1
t_prcs_enable1: PROCESS
BEGIN
	enable1 <= '0';
WAIT;
END PROCESS t_prcs_enable1;

-- pulso
t_prcs_pulso: PROCESS
BEGIN
	pulso <= '0';
	WAIT FOR 10000 ps;
	pulso <= '1';
	WAIT FOR 220000 ps;
	pulso <= '0';
WAIT;
END PROCESS t_prcs_pulso;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END top_arch;
