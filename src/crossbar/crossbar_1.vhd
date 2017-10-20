----------------------------------------------------------------------------------
-- Engineer: 		Marcello Traiola
--
-- Create Date: 9:59:52 20/10/2017
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Revision 1.0 - File Created
-- Notes - File generated using XbarGen tool by Marcello Traiola (marcellotraiola@gmail.com)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

library memristor_lib;
use memristor_lib.types.all;

use work.crossbar_structure_1.all;

entity crossbar_1 is
Port (
Vpos : in  voltage_vector (0 to cb_width-1);
Vneg : in  voltage_vector (0 to cb_height-1);
output : out STD_LOGIC_VECTOR(0 to 60) --here we have 61 outputs
);
end crossbar_1;

architecture Behavioral of crossbar_1 is

COMPONENT Memristor_behavioral_Snider_internal_clock
PORT(
Vpos : INOUT voltage;
Vneg : INOUT voltage;
Rout : OUT std_logic
);
END COMPONENT;

COMPONENT Memristor_behavioral_Snider_internal_clock_noOutput
PORT(
Vpos : INOUT voltage;
Vneg : INOUT voltage
);
END COMPONENT;

signal verticalWires : voltage_vector (0 to cb_width-1);
signal horizontalWires : voltage_vector (0 to cb_height-1);

begin

verticalWires <= Vpos;
horizontalWires <= Vneg;
righe : for i in cb_height-1 downto 0 generate

colonne : for j in cb_width-1 downto 0 generate

check: if (cb_structure(i)(j)=1) generate
memristor_riga : Memristor_behavioral_Snider_internal_clock_noOutput PORT MAP(
Vpos => verticalWires(j),
Vneg => horizontalWires(i)
);
end generate check;

check_output: if (cb_structure(i)(j)>1) generate
memristor_riga : Memristor_behavioral_Snider_internal_clock PORT MAP(
Vpos => verticalWires(j),
Vneg => horizontalWires(i),
Rout => output(cb_structure(i)(j)-2)
);
end generate check_output;

end generate colonne;

end generate righe;

end Behavioral;
