LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use std.textio.all;

-- entity declaration for your testbench. Dont declare any ports here
ENTITY mux4_1_testbench IS 
END mux4_1_testbench;

ARCHITECTURE behavioral OF mux4_1_testbench IS

 -- Component Declaration for the Unit Under Test (UUT)

	component mux4_1 is
        Port ( SEL : in  STD_LOGIC_VECTOR(1 downto 0);
                   A   : in  STD_LOGIC_VECTOR(3 downto 0);
                   X   : out STD_LOGIC
           );
   end component;

--declare inputs and initialize them
    
signal SEL : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
signal A   : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');	
--declare outputs and initialize them
signal X   :  STD_LOGIC := '0';


begin
-- Instantiate the Unit Under Test (UUT)
-- TODO

uut: mux4_1 port map(
    SEL => SEL,
    A => A,
    X => X
    );

 -- Stimulus process
  	stim_proc: process
    variable l : line;
  	 begin
        write (l, String'("Testbench for mux4_1"));
        writeline (output, l);
		wait for 10 ns;
		SEL <= "01";
        A <= x"A";
        wait for 10 ns;
		SEL <= "10";
        wait for 10 ns;
		SEL <= "11";
        wait for 10 ns;
        assert (X = '0') report "X should be 1" severity error;
        A <= x"0";
        wait for 10 ns;
		wait;
	 end process;

END behavioral;
