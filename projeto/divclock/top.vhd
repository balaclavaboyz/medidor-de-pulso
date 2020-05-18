library ieee;
use ieee.std_logic_1164.all;

entity top is
    port (
		
	pulso   : in  std_logic;		
        clock   : in  std_logic;
	reset   : in  std_logic;
	tempo   : out std_logic_vector(24 downto 0)  
    );
end top;

architecture exemplo of top is

	component pulsobotao is
		port (
		 		
			pulso	   : in  std_logic;
			clock	   : in  std_logic;
			reset      :in std_logic;
			pulsoAtivo : out std_logic
		);
	end component;

	component contador is
		 port (
		 	reset      : in  std_logic;
			pulsoAtivo : in  std_logic;
			clock		 : in  std_logic;
			tempo      : out std_logic_vector(24 downto 0)						
		 );
	end component;
	
	signal pulsoAtivo: std_logic;
begin
	div: pulsobotao port map( pulso, clock,reset, pulsoAtivo);
	cnt: contador port map( reset, pulsoAtivo, clock, tempo);
end exemplo;
