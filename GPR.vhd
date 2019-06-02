library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GPR is
    Port ( HGNC21481 : in  STD_LOGIC;    
           HGNC6544 : in  STD_LOGIC;   
			  HGNC30866 : in  STD_LOGIC;    
           HGNC6541 : in  STD_LOGIC;   
			  HGNC6535 : in  STD_LOGIC;   
			  HGNC28335 : in  STD_LOGIC;  
			  HGNC19708 : in std_lOGIC; 
			  
           LDH_L : out STD_LOGIC; 
			  LDH_Lm : out STD_LOGIC;
			  HBO : out STD_LOGIC;
			  GLXO1: out STD_lOGIC;
			  HPYRR2x : out STD_lOGIC;
			  MCLOR : out STD_LOGIC;
			  r0173 : out STD_LOGIC);
			  
end GPR;

architecture Behavioral of GPR is
begin
    LDH_L <= (HGNC6541 and HGNC6535) or (HGNC28335) or (HGNC6544) or (HGNC6535) or (HGNC30866) or (HGNC6541) or (HGNC21481);  
	 LDH_Lm <= HGNC6541 or HGNC6535 or HGNC19708;
	 HBO <= (HGNC21481) or (HGNC6544) or (HGNC30866) or (HGNC6541 and HGNC6535) or (HGNC28335) or (HGNC6541) or (HGNC6544);
	 GLXO1<= (HGNC6535) or (HGNC30866) or (HGNC6541 and HGNC6535) or (HGNC19708) or (HGNC21481) or (HGNC6541) or (HGNC28335) or (HGNC6544);
	 HPYRR2x <= (HGNC6544) or (HGNC19708) or (HGNC6541) or (HGNC28335) or (HGNC6541 and HGNC6535) or (HGNC21481) or (HGNC6535);
	 MCLOR <= (HGNC21481) or (HGNC6541 and HGNC6535) or (HGNC30866) or (HGNC6544) or (HGNC6541) or (HGNC28335) or (HGNC6535);
	 r0173 <= (HGNC6541) or (HGNC6535) or (HGNC6544);
end Behavioral;
