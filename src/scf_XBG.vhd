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

library memristor_lib;
use memristor_lib.types.all;

entity scf_XBG is
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
end scf_XBG;

architecture Behavioral of scf_XBG is

COMPONENT crossbar_controller_1
PORT(
pi26 : in  STD_LOGIC;
pi15 : in  STD_LOGIC;
lo6 : in  STD_LOGIC;
lo5 : in  STD_LOGIC;
lo4 : in  STD_LOGIC;
lo3 : in  STD_LOGIC;
lo2 : in  STD_LOGIC;
lo1 : in  STD_LOGIC;
lo0 : in  STD_LOGIC;
pi00 : in  STD_LOGIC;
pi06 : in  STD_LOGIC;
pi03 : in  STD_LOGIC;
pi07 : in  STD_LOGIC;
pi08 : in  STD_LOGIC;
pi09 : in  STD_LOGIC;
pi10 : in  STD_LOGIC;
pi02 : in  STD_LOGIC;
pi17 : in  STD_LOGIC;
pi01 : in  STD_LOGIC;
pi11 : in  STD_LOGIC;
pi12 : in  STD_LOGIC;
pi13 : in  STD_LOGIC;
pi14 : in  STD_LOGIC;
pi04 : in  STD_LOGIC;
pi16 : in  STD_LOGIC;
pi05 : in  STD_LOGIC;
pi18 : in  STD_LOGIC;
pi19 : in  STD_LOGIC;
pi20 : in  STD_LOGIC;
pi21 : in  STD_LOGIC;
pi22 : in  STD_LOGIC;
pi23 : in  STD_LOGIC;
pi24 : in  STD_LOGIC;
pi25 : in  STD_LOGIC;
en : in STD_LOGIC;
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
po15 : out  STD_LOGIC;
po16 : out  STD_LOGIC;
po17 : out  STD_LOGIC;
po18 : out  STD_LOGIC;
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
li6 : out  STD_LOGIC;
done : out STD_LOGIC
);
END COMPONENT;

signal pi00_temp : STD_LOGIC;
signal pi01_temp : STD_LOGIC;
signal pi02_temp : STD_LOGIC;
signal pi03_temp : STD_LOGIC;
signal pi04_temp : STD_LOGIC;
signal pi05_temp : STD_LOGIC;
signal pi06_temp : STD_LOGIC;
signal pi07_temp : STD_LOGIC;
signal pi08_temp : STD_LOGIC;
signal pi09_temp : STD_LOGIC;
signal pi10_temp : STD_LOGIC;
signal pi11_temp : STD_LOGIC;
signal pi12_temp : STD_LOGIC;
signal pi13_temp : STD_LOGIC;
signal pi14_temp : STD_LOGIC;
signal pi15_temp : STD_LOGIC;
signal pi16_temp : STD_LOGIC;
signal pi17_temp : STD_LOGIC;
signal pi18_temp : STD_LOGIC;
signal pi19_temp : STD_LOGIC;
signal pi20_temp : STD_LOGIC;
signal pi21_temp : STD_LOGIC;
signal pi22_temp : STD_LOGIC;
signal pi23_temp : STD_LOGIC;
signal pi24_temp : STD_LOGIC;
signal pi25_temp : STD_LOGIC;
signal pi26_temp : STD_LOGIC;
signal lo0_temp : STD_LOGIC;
signal lo1_temp : STD_LOGIC;
signal lo2_temp : STD_LOGIC;
signal lo3_temp : STD_LOGIC;
signal lo4_temp : STD_LOGIC;
signal lo5_temp : STD_LOGIC;
signal lo6_temp : STD_LOGIC;
signal po00_temp : STD_LOGIC;
signal po01_temp : STD_LOGIC;
signal po02_temp : STD_LOGIC;
signal po03_temp : STD_LOGIC;
signal po04_temp : STD_LOGIC;
signal po05_temp : STD_LOGIC;
signal po06_temp : STD_LOGIC;
signal po07_temp : STD_LOGIC;
signal po08_temp : STD_LOGIC;
signal po09_temp : STD_LOGIC;
signal po10_temp : STD_LOGIC;
signal po11_temp : STD_LOGIC;
signal po12_temp : STD_LOGIC;
signal po13_temp : STD_LOGIC;
signal po15_temp : STD_LOGIC;
signal po16_temp : STD_LOGIC;
signal po17_temp : STD_LOGIC;
signal po18_temp : STD_LOGIC;
signal po20_temp : STD_LOGIC;
signal po21_temp : STD_LOGIC;
signal po22_temp : STD_LOGIC;
signal po23_temp : STD_LOGIC;
signal po24_temp : STD_LOGIC;
signal po25_temp : STD_LOGIC;
signal po26_temp : STD_LOGIC;
signal po27_temp : STD_LOGIC;
signal po28_temp : STD_LOGIC;
signal po29_temp : STD_LOGIC;
signal po30_temp : STD_LOGIC;
signal po31_temp : STD_LOGIC;
signal po32_temp : STD_LOGIC;
signal po33_temp : STD_LOGIC;
signal po34_temp : STD_LOGIC;
signal po35_temp : STD_LOGIC;
signal po36_temp : STD_LOGIC;
signal po37_temp : STD_LOGIC;
signal po38_temp : STD_LOGIC;
signal po39_temp : STD_LOGIC;
signal po40_temp : STD_LOGIC;
signal po41_temp : STD_LOGIC;
signal po42_temp : STD_LOGIC;
signal po43_temp : STD_LOGIC;
signal po44_temp : STD_LOGIC;
signal po45_temp : STD_LOGIC;
signal po46_temp : STD_LOGIC;
signal po47_temp : STD_LOGIC;
signal po48_temp : STD_LOGIC;
signal po49_temp : STD_LOGIC;
signal po50_temp : STD_LOGIC;
signal po51_temp : STD_LOGIC;
signal po52_temp : STD_LOGIC;
signal po53_temp : STD_LOGIC;
signal po54_temp : STD_LOGIC;
signal po55_temp : STD_LOGIC;
signal li0_temp : STD_LOGIC;
signal li1_temp : STD_LOGIC;
signal li2_temp : STD_LOGIC;
signal li3_temp : STD_LOGIC;
signal li4_temp : STD_LOGIC;
signal li5_temp : STD_LOGIC;
signal li6_temp : STD_LOGIC;
signal done_temp_0 : STD_LOGIC;
signal done_temp_1 : STD_LOGIC;

begin

Inst_Crossbar_1 : crossbar_controller_1 PORT MAP(
pi26 => pi26_temp,
pi15 => pi15_temp,
lo6 => lo6_temp,
lo5 => lo5_temp,
lo4 => lo4_temp,
lo3 => lo3_temp,
lo2 => lo2_temp,
lo1 => lo1_temp,
lo0 => lo0_temp,
pi00 => pi00_temp,
pi06 => pi06_temp,
pi03 => pi03_temp,
pi07 => pi07_temp,
pi08 => pi08_temp,
pi09 => pi09_temp,
pi10 => pi10_temp,
pi02 => pi02_temp,
pi17 => pi17_temp,
pi01 => pi01_temp,
pi11 => pi11_temp,
pi12 => pi12_temp,
pi13 => pi13_temp,
pi14 => pi14_temp,
pi04 => pi04_temp,
pi16 => pi16_temp,
pi05 => pi05_temp,
pi18 => pi18_temp,
pi19 => pi19_temp,
pi20 => pi20_temp,
pi21 => pi21_temp,
pi22 => pi22_temp,
pi23 => pi23_temp,
pi24 => pi24_temp,
pi25 => pi25_temp,
en => done_temp_0,
po00 => po00_temp,
po01 => po01_temp,
po02 => po02_temp,
po03 => po03_temp,
po04 => po04_temp,
po05 => po05_temp,
po06 => po06_temp,
po07 => po07_temp,
po08 => po08_temp,
po09 => po09_temp,
po10 => po10_temp,
po11 => po11_temp,
po12 => po12_temp,
po13 => po13_temp,
po15 => po15_temp,
po16 => po16_temp,
po17 => po17_temp,
po18 => po18_temp,
po20 => po20_temp,
po21 => po21_temp,
po22 => po22_temp,
po23 => po23_temp,
po24 => po24_temp,
po25 => po25_temp,
po26 => po26_temp,
po27 => po27_temp,
po28 => po28_temp,
po29 => po29_temp,
po30 => po30_temp,
po31 => po31_temp,
po32 => po32_temp,
po33 => po33_temp,
po34 => po34_temp,
po35 => po35_temp,
po36 => po36_temp,
po37 => po37_temp,
po38 => po38_temp,
po39 => po39_temp,
po40 => po40_temp,
po41 => po41_temp,
po42 => po42_temp,
po43 => po43_temp,
po44 => po44_temp,
po45 => po45_temp,
po46 => po46_temp,
po47 => po47_temp,
po48 => po48_temp,
po49 => po49_temp,
po50 => po50_temp,
po51 => po51_temp,
po52 => po52_temp,
po53 => po53_temp,
po54 => po54_temp,
po55 => po55_temp,
li0 => li0_temp,
li1 => li1_temp,
li2 => li2_temp,
li3 => li3_temp,
li4 => li4_temp,
li5 => li5_temp,
li6 => li6_temp,
done => done_temp_1
);

pi00_temp <= pi00;
pi01_temp <= pi01;
pi02_temp <= pi02;
pi03_temp <= pi03;
pi04_temp <= pi04;
pi05_temp <= pi05;
pi06_temp <= pi06;
pi07_temp <= pi07;
pi08_temp <= pi08;
pi09_temp <= pi09;
pi10_temp <= pi10;
pi11_temp <= pi11;
pi12_temp <= pi12;
pi13_temp <= pi13;
pi14_temp <= pi14;
pi15_temp <= pi15;
pi16_temp <= pi16;
pi17_temp <= pi17;
pi18_temp <= pi18;
pi19_temp <= pi19;
pi20_temp <= pi20;
pi21_temp <= pi21;
pi22_temp <= pi22;
pi23_temp <= pi23;
pi24_temp <= pi24;
pi25_temp <= pi25;
pi26_temp <= pi26;
lo0_temp <= lo0;
lo1_temp <= lo1;
lo2_temp <= lo2;
lo3_temp <= lo3;
lo4_temp <= lo4;
lo5_temp <= lo5;
lo6_temp <= lo6;
po00 <= po00_temp;
po01 <= po01_temp;
po02 <= po02_temp;
po03 <= po03_temp;
po04 <= po04_temp;
po05 <= po05_temp;
po06 <= po06_temp;
po07 <= po07_temp;
po08 <= po08_temp;
po09 <= po09_temp;
po10 <= po10_temp;
po11 <= po11_temp;
po12 <= po12_temp;
po13 <= po13_temp;
po14 <= '0';
po15 <= po15_temp;
po16 <= po16_temp;
po17 <= po17_temp;
po18 <= po18_temp;
po19 <= '0';
po20 <= po20_temp;
po21 <= po21_temp;
po22 <= po22_temp;
po23 <= po23_temp;
po24 <= po24_temp;
po25 <= po25_temp;
po26 <= po26_temp;
po27 <= po27_temp;
po28 <= po28_temp;
po29 <= po29_temp;
po30 <= po30_temp;
po31 <= po31_temp;
po32 <= po32_temp;
po33 <= po33_temp;
po34 <= po34_temp;
po35 <= po35_temp;
po36 <= po36_temp;
po37 <= po37_temp;
po38 <= po38_temp;
po39 <= po39_temp;
po40 <= po40_temp;
po41 <= po41_temp;
po42 <= po42_temp;
po43 <= po43_temp;
po44 <= po44_temp;
po45 <= po45_temp;
po46 <= po46_temp;
po47 <= po47_temp;
po48 <= po48_temp;
po49 <= po49_temp;
po50 <= po50_temp;
po51 <= po51_temp;
po52 <= po52_temp;
po53 <= po53_temp;
po54 <= po54_temp;
po55 <= po55_temp;
li0 <= li0_temp;
li1 <= li1_temp;
li2 <= li2_temp;
li3 <= li3_temp;
li4 <= li4_temp;
li5 <= li5_temp;
li6 <= li6_temp;

process(pi00,pi01,pi02,pi03,pi04,pi05,pi06,pi07,pi08,pi09,pi10,pi11,pi12,pi13,pi14,pi15,pi16,pi17,pi18,pi19,pi20,pi21,pi22,pi23,pi24,pi25,pi26,lo0,lo1,lo2,lo3,lo4,lo5,lo6)
begin
done_temp_0<='1', '0' after 4 ns;
end process;

end Behavioral;
