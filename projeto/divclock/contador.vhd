library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- declaração da entidade
entity contador is
    port (
		  reset     : in  std_logic;
		  pulsoAtivo		: in  std_logic;
		  clock		: in  std_logic;
		  tempo     : out std_logic_vector(24 downto 0)
    );
end contador;

architecture exemplo of contador is
	signal IQ	: unsigned(24 downto 0);
begin
	
	process (reset, pulsoAtivo, clock, IQ)
	begin
	
	-- Se o reset estiver ativo...
	if reset = '1' then
		-- Então vamos limpar o IQ e depois passar o valor de IQ para o tempo (assim zerando!)
		IQ   <= (others => '0');
		tempo <= std_logic_vector(IQ);
		
	
	-- Mas se tiver um evento de clock...
	elsif clock'event and clock = '1' then
			--- E o pulso estiver ativado (se estiver desativado, nada irá acontecer)
			if pulsoAtivo = '1' then
				-- A gente irá somar +1 no contador!
				IQ <= IQ + 1;
			else
				-- Se o pulso estiver desativado, iremos passar os valores de IQ para o tempo!
				tempo <= std_logic_vector(IQ);
			end if;
	end if;
	end process;
	
end exemplo;