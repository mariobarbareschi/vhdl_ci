----------------------------------------------------------------------------------
-- Engineer: 		Marcello Traiola
--
-- Create Date: 9:51:44 18/10/2017
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Revision 1.0 - File Created
-- Notes - File generated using XbarGen tool by Marcello Traiola (marcellotraiola@gmail.com)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity testbench_sfc is 
-- Port ();
end testbench_sfc;

architecture Behavioral of testbench_sfc is

component scf_XBG
Port ( 
pi00 : in  STD_LOGIC;
pi01 : in  STD_LOGIC;
pi02 : in  STD_LOGIC;
pi03 : in  STD_LOGIC;
pi04 : in  STD_LOGIC;
pi05 : in  STD_LOGIC;
pi06 : in  STD_LOGIC;
pi07 : in  STD_LOGIC;
pi08 : in  STD_LOGIC;
pi09 : in  STD_LOGIC;
pi10 : in  STD_LOGIC;
pi11 : in  STD_LOGIC;
pi12 : in  STD_LOGIC;
pi13 : in  STD_LOGIC;
pi14 : in  STD_LOGIC;
pi15 : in  STD_LOGIC;
pi16 : in  STD_LOGIC;
pi17 : in  STD_LOGIC;
pi18 : in  STD_LOGIC;
pi19 : in  STD_LOGIC;
pi20 : in  STD_LOGIC;
pi21 : in  STD_LOGIC;
pi22 : in  STD_LOGIC;
pi23 : in  STD_LOGIC;
pi24 : in  STD_LOGIC;
pi25 : in  STD_LOGIC;
pi26 : in  STD_LOGIC;
lo0 : in  STD_LOGIC;
lo1 : in  STD_LOGIC;
lo2 : in  STD_LOGIC;
lo3 : in  STD_LOGIC;
lo4 : in  STD_LOGIC;
lo5 : in  STD_LOGIC;
lo6 : in  STD_LOGIC;
po00 : out  STD_LOGIC;
po01 : out  STD_LOGIC;
po02 : out  STD_LOGIC;
po03 : out  STD_LOGIC;
po04 : out  STD_LOGIC;
po05 : out  STD_LOGIC;
po06 : out  STD_LOGIC;
po07 : out  STD_LOGIC;
po08 : out  STD_LOGIC;
po09 : out  STD_LOGIC;
po10 : out  STD_LOGIC;
po11 : out  STD_LOGIC;
po12 : out  STD_LOGIC;
po13 : out  STD_LOGIC;
po14 : out  STD_LOGIC;
po15 : out  STD_LOGIC;
po16 : out  STD_LOGIC;
po17 : out  STD_LOGIC;
po18 : out  STD_LOGIC;
po19 : out  STD_LOGIC;
po20 : out  STD_LOGIC;
po21 : out  STD_LOGIC;
po22 : out  STD_LOGIC;
po23 : out  STD_LOGIC;
po24 : out  STD_LOGIC;
po25 : out  STD_LOGIC;
po26 : out  STD_LOGIC;
po27 : out  STD_LOGIC;
po28 : out  STD_LOGIC;
po29 : out  STD_LOGIC;
po30 : out  STD_LOGIC;
po31 : out  STD_LOGIC;
po32 : out  STD_LOGIC;
po33 : out  STD_LOGIC;
po34 : out  STD_LOGIC;
po35 : out  STD_LOGIC;
po36 : out  STD_LOGIC;
po37 : out  STD_LOGIC;
po38 : out  STD_LOGIC;
po39 : out  STD_LOGIC;
po40 : out  STD_LOGIC;
po41 : out  STD_LOGIC;
po42 : out  STD_LOGIC;
po43 : out  STD_LOGIC;
po44 : out  STD_LOGIC;
po45 : out  STD_LOGIC;
po46 : out  STD_LOGIC;
po47 : out  STD_LOGIC;
po48 : out  STD_LOGIC;
po49 : out  STD_LOGIC;
po50 : out  STD_LOGIC;
po51 : out  STD_LOGIC;
po52 : out  STD_LOGIC;
po53 : out  STD_LOGIC;
po54 : out  STD_LOGIC;
po55 : out  STD_LOGIC;
li0 : out  STD_LOGIC;
li1 : out  STD_LOGIC;
li2 : out  STD_LOGIC;
li3 : out  STD_LOGIC;
li4 : out  STD_LOGIC;
li5 : out  STD_LOGIC;
li6 : out  STD_LOGIC
);
 end component;

signal pi00_tmp, pi01_tmp, pi02_tmp, pi03_tmp, pi04_tmp, pi05_tmp, pi06_tmp, pi07_tmp, pi08_tmp, pi09_tmp, pi10_tmp, pi11_tmp, pi12_tmp, pi13_tmp, pi14_tmp, pi15_tmp, pi16_tmp, pi17_tmp, pi18_tmp, pi19_tmp, pi20_tmp, pi21_tmp, pi22_tmp, pi23_tmp, pi24_tmp, pi25_tmp, pi26_tmp, lo0_tmp, lo1_tmp, lo2_tmp, lo3_tmp, lo4_tmp, lo5_tmp, lo6_tmp, po00_tmp, po01_tmp, po02_tmp, po03_tmp, po04_tmp, po05_tmp, po06_tmp, po07_tmp, po08_tmp, po09_tmp, po10_tmp, po11_tmp, po12_tmp, po13_tmp, po14_tmp, po15_tmp, po16_tmp, po17_tmp, po18_tmp, po19_tmp, po20_tmp, po21_tmp, po22_tmp, po23_tmp, po24_tmp, po25_tmp, po26_tmp, po27_tmp, po28_tmp, po29_tmp, po30_tmp, po31_tmp, po32_tmp, po33_tmp, po34_tmp, po35_tmp, po36_tmp, po37_tmp, po38_tmp, po39_tmp, po40_tmp, po41_tmp, po42_tmp, po43_tmp, po44_tmp, po45_tmp, po46_tmp, po47_tmp, po48_tmp, po49_tmp, po50_tmp, po51_tmp, po52_tmp, po53_tmp, po54_tmp, po55_tmp, li0_tmp, li1_tmp, li2_tmp, li3_tmp, li4_tmp, li5_tmp, li6_tmp : std_logic := '0';

begin

UUT: scf_XBG port map(
pi00 => pi00_tmp,
pi01 => pi01_tmp,
pi02 => pi02_tmp,
pi03 => pi03_tmp,
pi04 => pi04_tmp,
pi05 => pi05_tmp,
pi06 => pi06_tmp,
pi07 => pi07_tmp,
pi08 => pi08_tmp,
pi09 => pi09_tmp,
pi10 => pi10_tmp,
pi11 => pi11_tmp,
pi12 => pi12_tmp,
pi13 => pi13_tmp,
pi14 => pi14_tmp,
pi15 => pi15_tmp,
pi16 => pi16_tmp,
pi17 => pi17_tmp,
pi18 => pi18_tmp,
pi19 => pi19_tmp,
pi20 => pi20_tmp,
pi21 => pi21_tmp,
pi22 => pi22_tmp,
pi23 => pi23_tmp,
pi24 => pi24_tmp,
pi25 => pi25_tmp,
pi26 => pi26_tmp,
lo0 => lo0_tmp,
lo1 => lo1_tmp,
lo2 => lo2_tmp,
lo3 => lo3_tmp,
lo4 => lo4_tmp,
lo5 => lo5_tmp,
lo6 => lo6_tmp,
po00 => po00_tmp,
po01 => po01_tmp,
po02 => po02_tmp,
po03 => po03_tmp,
po04 => po04_tmp,
po05 => po05_tmp,
po06 => po06_tmp,
po07 => po07_tmp,
po08 => po08_tmp,
po09 => po09_tmp,
po10 => po10_tmp,
po11 => po11_tmp,
po12 => po12_tmp,
po13 => po13_tmp,
po14 => po14_tmp,
po15 => po15_tmp,
po16 => po16_tmp,
po17 => po17_tmp,
po18 => po18_tmp,
po19 => po19_tmp,
po20 => po20_tmp,
po21 => po21_tmp,
po22 => po22_tmp,
po23 => po23_tmp,
po24 => po24_tmp,
po25 => po25_tmp,
po26 => po26_tmp,
po27 => po27_tmp,
po28 => po28_tmp,
po29 => po29_tmp,
po30 => po30_tmp,
po31 => po31_tmp,
po32 => po32_tmp,
po33 => po33_tmp,
po34 => po34_tmp,
po35 => po35_tmp,
po36 => po36_tmp,
po37 => po37_tmp,
po38 => po38_tmp,
po39 => po39_tmp,
po40 => po40_tmp,
po41 => po41_tmp,
po42 => po42_tmp,
po43 => po43_tmp,
po44 => po44_tmp,
po45 => po45_tmp,
po46 => po46_tmp,
po47 => po47_tmp,
po48 => po48_tmp,
po49 => po49_tmp,
po50 => po50_tmp,
po51 => po51_tmp,
po52 => po52_tmp,
po53 => po53_tmp,
po54 => po54_tmp,
po55 => po55_tmp,
li0 => li0_tmp,
li1 => li1_tmp,
li2 => li2_tmp,
li3 => li3_tmp,
li4 => li4_tmp,
li5 => li5_tmp,
li6 => li6_tmp);

stim_process: process
begin

-- Here the stimulus process
pi00_tmp <=  '0';
pi01_tmp <=  '0';
pi02_tmp <=  '0';
pi03_tmp <=  '0';
pi04_tmp <=  '0';
pi05_tmp <=  '0';
pi06_tmp <=  '0';
pi07_tmp <=  '0';
pi08_tmp <=  '0';
pi09_tmp <=  '0';
pi10_tmp <=  '0';
pi11_tmp <=  '0';
pi12_tmp <=  '0';
pi13_tmp <=  '0';
pi14_tmp <=  '0';
pi15_tmp <=  '0';
pi16_tmp <=  '0';
pi17_tmp <=  '0';
pi18_tmp <=  '0';
pi19_tmp <=  '0';
pi20_tmp <=  '0';
pi21_tmp <=  '0';
pi22_tmp <=  '0';
pi23_tmp <=  '0';
pi24_tmp <=  '0';
pi26_tmp <=  '0';
lo0_tmp <=  '0';
lo1_tmp <=  '1';
lo2_tmp <=  '0';
lo3_tmp <=  '1';
lo4_tmp <=  '1';
lo5_tmp <=  '0';
lo6_tmp <=  '0';
wait for 10 ns;

pi00_tmp <=  '1';
pi01_tmp <=  '0';
pi02_tmp <=  '0';
pi03_tmp <=  '0';
pi04_tmp <=  '0';
pi05_tmp <=  '0';
pi06_tmp <=  '0';
pi07_tmp <=  '0';
pi08_tmp <=  '0';
pi09_tmp <=  '0';
pi10_tmp <=  '0';
pi11_tmp <=  '0';
pi12_tmp <=  '0';
pi13_tmp <=  '0';
pi14_tmp <=  '0';
pi15_tmp <=  '0';
pi16_tmp <=  '0';
pi17_tmp <=  '0';
pi18_tmp <=  '0';
pi19_tmp <=  '0';
pi20_tmp <=  '0';
pi21_tmp <=  '0';
pi22_tmp <=  '0';
pi23_tmp <=  '0';
pi24_tmp <=  '0';
pi26_tmp <=  '0';
wait for 10 ns;

pi00_tmp <=  '1';
pi01_tmp <=  '0';
pi02_tmp <=  '0';
pi03_tmp <=  '0';
pi04_tmp <=  '0';
pi05_tmp <=  '0';
pi06_tmp <=  '0';
pi07_tmp <=  '0';
pi08_tmp <=  '0';
pi09_tmp <=  '0';
pi10_tmp <=  '0';
pi11_tmp <=  '0';
pi12_tmp <=  '0';
pi13_tmp <=  '0';
pi14_tmp <=  '0';
pi15_tmp <=  '0';
pi16_tmp <=  '0';
pi17_tmp <=  '0';
pi18_tmp <=  '0';
pi19_tmp <=  '0';
pi20_tmp <=  '0';
pi21_tmp <=  '0';
pi22_tmp <=  '0';
pi23_tmp <=  '1';
pi24_tmp <=  '1';
pi26_tmp <=  '1';
wait for 10 ns;

pi00_tmp <=  '0';
pi01_tmp <=  '1';
pi02_tmp <=  '1';
pi03_tmp <=  '0';
pi04_tmp <=  '0';
pi05_tmp <=  '0';
pi06_tmp <=  '0';
pi07_tmp <=  '0';
pi08_tmp <=  '0';
pi09_tmp <=  '0';
pi10_tmp <=  '0';
pi11_tmp <=  '0';
pi12_tmp <=  '0';
pi13_tmp <=  '0';
pi14_tmp <=  '0';
pi15_tmp <=  '0';
pi16_tmp <=  '0';
pi17_tmp <=  '0';
pi18_tmp <=  '0';
pi19_tmp <=  '0';
pi20_tmp <=  '0';
pi21_tmp <=  '0';
pi22_tmp <=  '0';
pi23_tmp <=  '0';
pi24_tmp <=  '0';
pi26_tmp <=  '0';
wait for 10 ns;

pi00_tmp <=  '0';
pi01_tmp <=  '0';
pi02_tmp <=  '0';
pi03_tmp <=  '0';
pi04_tmp <=  '0';
pi05_tmp <=  '0';
pi06_tmp <=  '0';
pi07_tmp <=  '0';
pi08_tmp <=  '0';
pi09_tmp <=  '0';
pi10_tmp <=  '0';
pi11_tmp <=  '0';
pi12_tmp <=  '0';
pi13_tmp <=  '0';
pi14_tmp <=  '0';
pi15_tmp <=  '0';
pi16_tmp <=  '0';
pi17_tmp <=  '0';
pi18_tmp <=  '0';
pi19_tmp <=  '0';
pi20_tmp <=  '0';
pi21_tmp <=  '0';
pi22_tmp <=  '0';
pi23_tmp <=  '0';
pi24_tmp <=  '0';
pi26_tmp <=  '0';
wait for 10 ns;


wait;
end process;

end Behavioral;