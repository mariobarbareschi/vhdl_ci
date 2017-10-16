LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

use std.textio.all;

-- entity declaration for your testbench. Dont declare any ports here
ENTITY mux2_1_testbench IS 
END mux2_1_testbench;

ARCHITECTURE behavioral OF mux2_1_testbench IS

 -- Component Declaration for the Unit Under Test (UUT)

	component mux2_1 is
   		 Port ( SEL : in  STD_LOGIC;
          	 	A   : in  STD_LOGIC;
          		B   : in  STD_LOGIC;
          		X   : out STD_LOGIC
		);
	end component;

--declare inputs and initialize them

signal SEL :  STD_LOGIC := '0';
signal A   :  STD_LOGIC := '0';
signal B   :  STD_LOGIC := '0';

--declare outputs and initialize them
signal X   :  STD_LOGIC := '0';


begin
-- Instantiate the Unit Under Test (UUT)
	uut: mux2_1 PORT MAP (
			   A => A,
			   B => B,
			   SEL => SEL,
			   X => X
			   );

	--uut: mux2_1 port map(sel, a, b, x);

 -- Stimulus process
  	stim_proc: process
    variable l : line;
  	 begin
        write (l, String'("Testbench for mux2_1"));
        writeline (output, l);
		wait for 10 ns;
		A <= '1';
		wait for 10 ns;
		SEL <= '1';
		wait for 10 ns;
		assert (X = '1') report "X should be 1" severity error;
		A <= '0';
		wait for 10 ns;
		B <= '1';
		wait for 10 ns;
		SEL <= 'Z';
		wait for 10 ns;
		--
		A <= '1', '0' after 10 ns;
		wait;
	 end process;

END behavioral;


