--+----------------------------------------------------------------------------
--| 
--| COPYRIGHT 2017 United States Air Force Academy All rights reserved.
--| 
--| United States Air Force Academy     __  _______ ___    _________ 
--| Dept of Electrical &               / / / / ___//   |  / ____/   |
--| Computer Engineering              / / / /\__ \/ /| | / /_  / /| |
--| 2354 Fairchild Drive Ste 2F6     / /_/ /___/ / ___ |/ __/ / ___ |
--| USAF Academy, CO 80840           \____//____/_/  |_/_/   /_/  |_|
--| 
--| ---------------------------------------------------------------------------
--| FILENAME      : halfAdder.vhd
--| AUTHOR(S)     : Gia Sanchirico
--| CREATED       : 01/21/2025
--| DESCRIPTION   : This file implements a one bit half adder.
--|
--+----------------------------------------------------------------------------
--| REQUIRED FILES :
--|
--|    Libraries : ieee
--|    Packages  : std_logic_1164, numeric_std, unisim
--|    Files     : NONE
--|
--+----------------------------------------------------------------------------
--|
--| NAMING CONVENSIONS :
--|
--|    i_<port name>            = on-chip input port
--|    o_<port name>            = on-chip output port
--|
--+----------------------------------------------------------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

-- entity name must match filename  
entity halfAdder is 
  port(
	i_A     : in  std_logic; -- 1-bit input port
	i_B     : in  std_logic; 
	o_S     : out std_logic;  -- 1-bit output port (NOTE: NO semicolon on LAST port only!)	 
	o_Cout     : out std_logic
  );
	-- TODO:  Carry port
end halfAdder;

architecture halfAdder_arch of halfAdder is 
	-- this is where you would include components declarations and signals, but we don't need them for this

    
begin
-- PORT MAPS ----------------------------------------	-- map ports for any component instances (port mapping is like wiring hardware)

  o_S    <= i_A xor i_B;
  o_Cout    <= i_A and i_B;
  -- TODO:  Carry signal assignment

end halfAdder_arch;        
  
	
