library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- declaração da entidade
entity pulsobotao is
    port (
		  pulso	     : in  std_logic;
		  clock      : in  std_logic;
		  reset      :in std_logic;
		  pulsoAtivo : out std_logic
    );
end pulsobotao;

architecture pulsobotao of pulsobotao is
begin
	process (pulso, clock)
	begin		
	if reset ='1' then 
		pulsoAtivo<='0';
	-- Mas se tiver um evento de clock...
	elsif clock'event and clock = '1' then
			--- E o pulso estiver ativado (se estiver desativado, nada irá acontecer)
			if pulso = '1' then
				pulsoAtivo <= '1';
			else
				pulsoAtivo <= '0';
			end if;
	end if;
	end process;	
end pulsobotao;
