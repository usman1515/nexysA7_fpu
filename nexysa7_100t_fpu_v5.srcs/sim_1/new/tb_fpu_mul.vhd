--------------------------------------------------------------------------------
--                     SmallMultTableP3x3r6XuYu_comb_uid9
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
library work;
entity SmallMultTableP3x3r6XuYu_comb_uid9 is
   port ( X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(5 downto 0)   );
end entity;

architecture arch of SmallMultTableP3x3r6XuYu_comb_uid9 is
signal TableOut :  std_logic_vector(5 downto 0);
begin
  with X select TableOut <= 
   "000000" when "000000",
   "000000" when "000001",
   "000000" when "000010",
   "000000" when "000011",
   "000000" when "000100",
   "000000" when "000101",
   "000000" when "000110",
   "000000" when "000111",
   "000000" when "001000",
   "000001" when "001001",
   "000010" when "001010",
   "000011" when "001011",
   "000100" when "001100",
   "000101" when "001101",
   "000110" when "001110",
   "000111" when "001111",
   "000000" when "010000",
   "000010" when "010001",
   "000100" when "010010",
   "000110" when "010011",
   "001000" when "010100",
   "001010" when "010101",
   "001100" when "010110",
   "001110" when "010111",
   "000000" when "011000",
   "000011" when "011001",
   "000110" when "011010",
   "001001" when "011011",
   "001100" when "011100",
   "001111" when "011101",
   "010010" when "011110",
   "010101" when "011111",
   "000000" when "100000",
   "000100" when "100001",
   "001000" when "100010",
   "001100" when "100011",
   "010000" when "100100",
   "010100" when "100101",
   "011000" when "100110",
   "011100" when "100111",
   "000000" when "101000",
   "000101" when "101001",
   "001010" when "101010",
   "001111" when "101011",
   "010100" when "101100",
   "011001" when "101101",
   "011110" when "101110",
   "100011" when "101111",
   "000000" when "110000",
   "000110" when "110001",
   "001100" when "110010",
   "010010" when "110011",
   "011000" when "110100",
   "011110" when "110101",
   "100100" when "110110",
   "101010" when "110111",
   "000000" when "111000",
   "000111" when "111001",
   "001110" when "111010",
   "010101" when "111011",
   "011100" when "111100",
   "100011" when "111101",
   "101010" when "111110",
   "110001" when "111111",
   "------" when others;
    Y <= TableOut;
end architecture;

--------------------------------------------------------------------------------
--                               Compressor_6_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_6_3 is
   port ( X0 : in  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_6_3 is
signal X :  std_logic_vector(5 downto 0);
begin
   X <=X0 ;
   with X select R <= 
      "000" when "000000", 
      "001" when "000001", 
      "001" when "000010", 
      "010" when "000011", 
      "001" when "000100", 
      "010" when "000101", 
      "010" when "000110", 
      "011" when "000111", 
      "001" when "001000", 
      "010" when "001001", 
      "010" when "001010", 
      "011" when "001011", 
      "010" when "001100", 
      "011" when "001101", 
      "011" when "001110", 
      "100" when "001111", 
      "001" when "010000", 
      "010" when "010001", 
      "010" when "010010", 
      "011" when "010011", 
      "010" when "010100", 
      "011" when "010101", 
      "011" when "010110", 
      "100" when "010111", 
      "010" when "011000", 
      "011" when "011001", 
      "011" when "011010", 
      "100" when "011011", 
      "011" when "011100", 
      "100" when "011101", 
      "100" when "011110", 
      "101" when "011111", 
      "001" when "100000", 
      "010" when "100001", 
      "010" when "100010", 
      "011" when "100011", 
      "010" when "100100", 
      "011" when "100101", 
      "011" when "100110", 
      "100" when "100111", 
      "010" when "101000", 
      "011" when "101001", 
      "011" when "101010", 
      "100" when "101011", 
      "011" when "101100", 
      "100" when "101101", 
      "100" when "101110", 
      "101" when "101111", 
      "010" when "110000", 
      "011" when "110001", 
      "011" when "110010", 
      "100" when "110011", 
      "011" when "110100", 
      "100" when "110101", 
      "100" when "110110", 
      "101" when "110111", 
      "011" when "111000", 
      "100" when "111001", 
      "100" when "111010", 
      "101" when "111011", 
      "100" when "111100", 
      "101" when "111101", 
      "101" when "111110", 
      "110" when "111111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                              Compressor_14_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_14_3 is
   port ( X0 : in  std_logic_vector(3 downto 0);
          X1 : in  std_logic_vector(0 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_14_3 is
signal X :  std_logic_vector(4 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "00000", 
      "001" when "00001", 
      "001" when "00010", 
      "010" when "00011", 
      "001" when "00100", 
      "010" when "00101", 
      "010" when "00110", 
      "011" when "00111", 
      "001" when "01000", 
      "010" when "01001", 
      "010" when "01010", 
      "011" when "01011", 
      "010" when "01100", 
      "011" when "01101", 
      "011" when "01110", 
      "100" when "01111", 
      "010" when "10000", 
      "011" when "10001", 
      "011" when "10010", 
      "100" when "10011", 
      "011" when "10100", 
      "100" when "10101", 
      "100" when "10110", 
      "101" when "10111", 
      "011" when "11000", 
      "100" when "11001", 
      "100" when "11010", 
      "101" when "11011", 
      "100" when "11100", 
      "101" when "11101", 
      "101" when "11110", 
      "110" when "11111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                              Compressor_23_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_23_3 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          X1 : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_23_3 is
signal X :  std_logic_vector(4 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "00000", 
      "001" when "00001", 
      "001" when "00010", 
      "010" when "00011", 
      "001" when "00100", 
      "010" when "00101", 
      "010" when "00110", 
      "011" when "00111", 
      "010" when "01000", 
      "011" when "01001", 
      "011" when "01010", 
      "100" when "01011", 
      "011" when "01100", 
      "100" when "01101", 
      "100" when "01110", 
      "101" when "01111", 
      "010" when "10000", 
      "011" when "10001", 
      "011" when "10010", 
      "100" when "10011", 
      "011" when "10100", 
      "100" when "10101", 
      "100" when "10110", 
      "101" when "10111", 
      "100" when "11000", 
      "101" when "11001", 
      "101" when "11010", 
      "110" when "11011", 
      "101" when "11100", 
      "110" when "11101", 
      "110" when "11110", 
      "111" when "11111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                              Compressor_13_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_13_3 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          X1 : in  std_logic_vector(0 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_13_3 is
signal X :  std_logic_vector(3 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "0000", 
      "001" when "0001", 
      "001" when "0010", 
      "010" when "0011", 
      "001" when "0100", 
      "010" when "0101", 
      "010" when "0110", 
      "011" when "0111", 
      "010" when "1000", 
      "011" when "1001", 
      "011" when "1010", 
      "100" when "1011", 
      "011" when "1100", 
      "100" when "1101", 
      "100" when "1110", 
      "101" when "1111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                               Compressor_3_2
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_3_2 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of Compressor_3_2 is
signal X :  std_logic_vector(2 downto 0);
begin
   X <=X0 ;
   with X select R <= 
      "00" when "000", 
      "01" when "001", 
      "01" when "010", 
      "10" when "011", 
      "01" when "100", 
      "10" when "101", 
      "10" when "110", 
      "11" when "111", 
      "--" when others;

end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_20_f400_uid106
--                     (IntAdderClassical_20_comb_uid108)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_20_f400_uid106 is
   port ( X : in  std_logic_vector(19 downto 0);
          Y : in  std_logic_vector(19 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(19 downto 0)   );
end entity;

architecture arch of IntAdder_20_f400_uid106 is
begin
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--             IntMultiplier_UsingDSP_11_11_22_unsigned_comb_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_UsingDSP_11_11_22_unsigned_comb_uid4 is
   port ( X : in  std_logic_vector(10 downto 0);
          Y : in  std_logic_vector(10 downto 0);
          R : out  std_logic_vector(21 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_11_11_22_unsigned_comb_uid4 is
   component IntAdder_20_f400_uid106 is
      port ( X : in  std_logic_vector(19 downto 0);
             Y : in  std_logic_vector(19 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(19 downto 0)   );
   end component;

   component SmallMultTableP3x3r6XuYu_comb_uid9 is
      port ( X : in  std_logic_vector(5 downto 0);
             Y : out  std_logic_vector(5 downto 0)   );
   end component;

   component Compressor_6_3 is
      port ( X0 : in  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_14_3 is
      port ( X0 : in  std_logic_vector(3 downto 0);
             X1 : in  std_logic_vector(0 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_23_3 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_13_3 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(0 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_3_2 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

signal XX_m5 :  std_logic_vector(10 downto 0);
signal YY_m5 :  std_logic_vector(10 downto 0);
signal Xp_m5b7 :  std_logic_vector(11 downto 0);
signal Yp_m5b7 :  std_logic_vector(11 downto 0);
signal x_m5b7_0 :  std_logic_vector(2 downto 0);
signal x_m5b7_1 :  std_logic_vector(2 downto 0);
signal x_m5b7_2 :  std_logic_vector(2 downto 0);
signal x_m5b7_3 :  std_logic_vector(2 downto 0);
signal y_m5b7_0 :  std_logic_vector(2 downto 0);
signal y_m5b7_1 :  std_logic_vector(2 downto 0);
signal y_m5b7_2 :  std_logic_vector(2 downto 0);
signal y_m5b7_3 :  std_logic_vector(2 downto 0);
signal Y0X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w0_0 :  std_logic;
signal heap_bh6_w1_0 :  std_logic;
signal heap_bh6_w2_0 :  std_logic;
signal heap_bh6_w3_0 :  std_logic;
signal Y0X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w2_1 :  std_logic;
signal heap_bh6_w3_1 :  std_logic;
signal heap_bh6_w4_0 :  std_logic;
signal heap_bh6_w5_0 :  std_logic;
signal heap_bh6_w6_0 :  std_logic;
signal Y0X2_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X2Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w5_1 :  std_logic;
signal heap_bh6_w6_1 :  std_logic;
signal heap_bh6_w7_0 :  std_logic;
signal heap_bh6_w8_0 :  std_logic;
signal heap_bh6_w9_0 :  std_logic;
signal Y0X3_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X3Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w8_1 :  std_logic;
signal heap_bh6_w9_1 :  std_logic;
signal heap_bh6_w10_0 :  std_logic;
signal heap_bh6_w11_0 :  std_logic;
signal heap_bh6_w12_0 :  std_logic;
signal Y1X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w2_2 :  std_logic;
signal heap_bh6_w3_2 :  std_logic;
signal heap_bh6_w4_1 :  std_logic;
signal heap_bh6_w5_2 :  std_logic;
signal heap_bh6_w6_2 :  std_logic;
signal Y1X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w4_2 :  std_logic;
signal heap_bh6_w5_3 :  std_logic;
signal heap_bh6_w6_3 :  std_logic;
signal heap_bh6_w7_1 :  std_logic;
signal heap_bh6_w8_2 :  std_logic;
signal heap_bh6_w9_2 :  std_logic;
signal Y1X2_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X2Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w7_2 :  std_logic;
signal heap_bh6_w8_3 :  std_logic;
signal heap_bh6_w9_3 :  std_logic;
signal heap_bh6_w10_1 :  std_logic;
signal heap_bh6_w11_1 :  std_logic;
signal heap_bh6_w12_1 :  std_logic;
signal Y1X3_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X3Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w10_2 :  std_logic;
signal heap_bh6_w11_2 :  std_logic;
signal heap_bh6_w12_2 :  std_logic;
signal heap_bh6_w13_0 :  std_logic;
signal heap_bh6_w14_0 :  std_logic;
signal heap_bh6_w15_0 :  std_logic;
signal Y2X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w5_4 :  std_logic;
signal heap_bh6_w6_4 :  std_logic;
signal heap_bh6_w7_3 :  std_logic;
signal heap_bh6_w8_4 :  std_logic;
signal heap_bh6_w9_4 :  std_logic;
signal Y2X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w7_4 :  std_logic;
signal heap_bh6_w8_5 :  std_logic;
signal heap_bh6_w9_5 :  std_logic;
signal heap_bh6_w10_3 :  std_logic;
signal heap_bh6_w11_3 :  std_logic;
signal heap_bh6_w12_3 :  std_logic;
signal Y2X2_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X2Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w10_4 :  std_logic;
signal heap_bh6_w11_4 :  std_logic;
signal heap_bh6_w12_4 :  std_logic;
signal heap_bh6_w13_1 :  std_logic;
signal heap_bh6_w14_1 :  std_logic;
signal heap_bh6_w15_1 :  std_logic;
signal Y2X3_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X3Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w13_2 :  std_logic;
signal heap_bh6_w14_2 :  std_logic;
signal heap_bh6_w15_2 :  std_logic;
signal heap_bh6_w16_0 :  std_logic;
signal heap_bh6_w17_0 :  std_logic;
signal heap_bh6_w18_0 :  std_logic;
signal Y3X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y3_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w8_6 :  std_logic;
signal heap_bh6_w9_6 :  std_logic;
signal heap_bh6_w10_5 :  std_logic;
signal heap_bh6_w11_5 :  std_logic;
signal heap_bh6_w12_5 :  std_logic;
signal Y3X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y3_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w10_6 :  std_logic;
signal heap_bh6_w11_6 :  std_logic;
signal heap_bh6_w12_6 :  std_logic;
signal heap_bh6_w13_3 :  std_logic;
signal heap_bh6_w14_3 :  std_logic;
signal heap_bh6_w15_3 :  std_logic;
signal Y3X2_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X2Y3_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w13_4 :  std_logic;
signal heap_bh6_w14_4 :  std_logic;
signal heap_bh6_w15_4 :  std_logic;
signal heap_bh6_w16_1 :  std_logic;
signal heap_bh6_w17_1 :  std_logic;
signal heap_bh6_w18_1 :  std_logic;
signal Y3X3_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X3Y3_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w16_2 :  std_logic;
signal heap_bh6_w17_2 :  std_logic;
signal heap_bh6_w18_2 :  std_logic;
signal heap_bh6_w19_0 :  std_logic;
signal heap_bh6_w20_0 :  std_logic;
signal heap_bh6_w21_0 :  std_logic;
signal tempR_bh6_0 :  std_logic_vector(1 downto 0);
signal CompressorIn_bh6_0_0 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_0_0 :  std_logic_vector(2 downto 0);
signal heap_bh6_w8_7 :  std_logic;
signal heap_bh6_w9_7 :  std_logic;
signal heap_bh6_w10_7 :  std_logic;
signal CompressorIn_bh6_1_1 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_1_1 :  std_logic_vector(2 downto 0);
signal heap_bh6_w9_8 :  std_logic;
signal heap_bh6_w10_8 :  std_logic;
signal heap_bh6_w11_7 :  std_logic;
signal CompressorIn_bh6_2_2 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_2_2 :  std_logic_vector(2 downto 0);
signal heap_bh6_w10_9 :  std_logic;
signal heap_bh6_w11_8 :  std_logic;
signal heap_bh6_w12_7 :  std_logic;
signal CompressorIn_bh6_3_3 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_3_3 :  std_logic_vector(2 downto 0);
signal heap_bh6_w11_9 :  std_logic;
signal heap_bh6_w12_8 :  std_logic;
signal heap_bh6_w13_5 :  std_logic;
signal CompressorIn_bh6_4_4 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_4_4 :  std_logic_vector(2 downto 0);
signal heap_bh6_w12_9 :  std_logic;
signal heap_bh6_w13_6 :  std_logic;
signal heap_bh6_w14_5 :  std_logic;
signal CompressorIn_bh6_5_5 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_5_6 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_5_5 :  std_logic_vector(2 downto 0);
signal heap_bh6_w5_5 :  std_logic;
signal heap_bh6_w6_5 :  std_logic;
signal heap_bh6_w7_5 :  std_logic;
signal CompressorIn_bh6_6_7 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_6_8 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_6_6 :  std_logic_vector(2 downto 0);
signal heap_bh6_w6_6 :  std_logic;
signal heap_bh6_w7_6 :  std_logic;
signal heap_bh6_w8_8 :  std_logic;
signal CompressorIn_bh6_7_9 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_7_10 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_7_7 :  std_logic_vector(2 downto 0);
signal heap_bh6_w7_7 :  std_logic;
signal heap_bh6_w8_9 :  std_logic;
signal heap_bh6_w9_9 :  std_logic;
signal CompressorIn_bh6_8_11 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_8_12 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_8_8 :  std_logic_vector(2 downto 0);
signal heap_bh6_w13_7 :  std_logic;
signal heap_bh6_w14_6 :  std_logic;
signal heap_bh6_w15_5 :  std_logic;
signal CompressorIn_bh6_9_13 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_9_14 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_9_9 :  std_logic_vector(2 downto 0);
signal heap_bh6_w14_7 :  std_logic;
signal heap_bh6_w15_6 :  std_logic;
signal heap_bh6_w16_3 :  std_logic;
signal CompressorIn_bh6_10_15 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_10_16 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_10_10 :  std_logic_vector(2 downto 0);
signal heap_bh6_w15_7 :  std_logic;
signal heap_bh6_w16_4 :  std_logic;
signal heap_bh6_w17_3 :  std_logic;
signal CompressorIn_bh6_11_17 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_11_18 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_11_11 :  std_logic_vector(2 downto 0);
signal heap_bh6_w2_3 :  std_logic;
signal heap_bh6_w3_3 :  std_logic;
signal heap_bh6_w4_3 :  std_logic;
signal CompressorIn_bh6_12_19 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_12_20 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_12_12 :  std_logic_vector(2 downto 0);
signal heap_bh6_w17_4 :  std_logic;
signal heap_bh6_w18_3 :  std_logic;
signal heap_bh6_w19_1 :  std_logic;
signal CompressorIn_bh6_13_21 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_13_22 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_13_13 :  std_logic_vector(2 downto 0);
signal heap_bh6_w4_4 :  std_logic;
signal heap_bh6_w5_6 :  std_logic;
signal heap_bh6_w6_7 :  std_logic;
signal tempR_bh6_1 :  std_logic;
signal CompressorIn_bh6_14_23 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_14_24 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_14_14 :  std_logic_vector(2 downto 0);
signal heap_bh6_w9_10 :  std_logic;
signal heap_bh6_w10_10 :  std_logic;
signal heap_bh6_w11_10 :  std_logic;
signal CompressorIn_bh6_15_25 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_15_26 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_15_15 :  std_logic_vector(2 downto 0);
signal heap_bh6_w11_11 :  std_logic;
signal heap_bh6_w12_10 :  std_logic;
signal heap_bh6_w13_8 :  std_logic;
signal CompressorIn_bh6_16_27 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_16_28 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_16_16 :  std_logic_vector(2 downto 0);
signal heap_bh6_w13_9 :  std_logic;
signal heap_bh6_w14_8 :  std_logic;
signal heap_bh6_w15_8 :  std_logic;
signal CompressorIn_bh6_17_29 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_17_30 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_17_17 :  std_logic_vector(2 downto 0);
signal heap_bh6_w16_5 :  std_logic;
signal heap_bh6_w17_5 :  std_logic;
signal heap_bh6_w18_4 :  std_logic;
signal CompressorIn_bh6_18_31 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_18_32 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_18_18 :  std_logic_vector(2 downto 0);
signal heap_bh6_w6_8 :  std_logic;
signal heap_bh6_w7_8 :  std_logic;
signal heap_bh6_w8_10 :  std_logic;
signal CompressorIn_bh6_19_33 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_19_19 :  std_logic_vector(1 downto 0);
signal heap_bh6_w8_11 :  std_logic;
signal heap_bh6_w9_11 :  std_logic;
signal CompressorIn_bh6_20_34 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_20_20 :  std_logic_vector(1 downto 0);
signal heap_bh6_w10_11 :  std_logic;
signal heap_bh6_w11_12 :  std_logic;
signal CompressorIn_bh6_21_35 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_21_21 :  std_logic_vector(1 downto 0);
signal heap_bh6_w12_11 :  std_logic;
signal heap_bh6_w13_10 :  std_logic;
signal CompressorIn_bh6_22_36 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_22_22 :  std_logic_vector(1 downto 0);
signal heap_bh6_w15_9 :  std_logic;
signal heap_bh6_w16_6 :  std_logic;
signal CompressorIn_bh6_23_37 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_23_38 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_23_23 :  std_logic_vector(2 downto 0);
signal heap_bh6_w11_13 :  std_logic;
signal heap_bh6_w12_12 :  std_logic;
signal heap_bh6_w13_11 :  std_logic;
signal CompressorIn_bh6_24_39 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_24_40 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_24_24 :  std_logic_vector(2 downto 0);
signal heap_bh6_w13_12 :  std_logic;
signal heap_bh6_w14_9 :  std_logic;
signal heap_bh6_w15_10 :  std_logic;
signal CompressorIn_bh6_25_41 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_25_42 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_25_25 :  std_logic_vector(2 downto 0);
signal heap_bh6_w18_5 :  std_logic;
signal heap_bh6_w19_2 :  std_logic;
signal heap_bh6_w20_1 :  std_logic;
signal CompressorIn_bh6_26_43 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_26_44 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_26_26 :  std_logic_vector(2 downto 0);
signal heap_bh6_w15_11 :  std_logic;
signal heap_bh6_w16_7 :  std_logic;
signal heap_bh6_w17_6 :  std_logic;
signal CompressorIn_bh6_27_45 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_27_46 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_27_27 :  std_logic_vector(2 downto 0);
signal heap_bh6_w17_7 :  std_logic;
signal heap_bh6_w18_6 :  std_logic;
signal heap_bh6_w19_3 :  std_logic;
signal finalAdderIn0_bh6 :  std_logic_vector(19 downto 0);
signal finalAdderIn1_bh6 :  std_logic_vector(19 downto 0);
signal finalAdderCin_bh6 :  std_logic;
signal finalAdderOut_bh6 :  std_logic_vector(19 downto 0);
signal CompressionResult6 :  std_logic_vector(22 downto 0);
attribute rom_extract: string;
attribute rom_style: string;
attribute rom_extract of SmallMultTableP3x3r6XuYu_comb_uid9: component is "yes";
attribute rom_style of SmallMultTableP3x3r6XuYu_comb_uid9: component is "distributed";
begin
   XX_m5 <= X ;
   YY_m5 <= Y ;
   -- code generated by IntMultiplier::buildHeapLogicOnly()
   -- buildheaplogiconly called for lsbX=0 lsbY=0 msbX=11 msbY=11
   Xp_m5b7 <= XX_m5(10 downto 0) & "0";
   Yp_m5b7 <= YY_m5(10 downto 0) & "0";
   x_m5b7_0 <= Xp_m5b7(2 downto 0);
   x_m5b7_1 <= Xp_m5b7(5 downto 3);
   x_m5b7_2 <= Xp_m5b7(8 downto 6);
   x_m5b7_3 <= Xp_m5b7(11 downto 9);
   y_m5b7_0 <= Yp_m5b7(2 downto 0);
   y_m5b7_1 <= Yp_m5b7(5 downto 3);
   y_m5b7_2 <= Yp_m5b7(8 downto 6);
   y_m5b7_3 <= Yp_m5b7(11 downto 9);
   -- Partial product row number 0
   Y0X0_7_m5 <= y_m5b7_0 & x_m5b7_0;
   PP_m5_7X0Y0_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y0X0_7_m5,
                 Y => PP7X0Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w0_0 <= PP7X0Y0_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w1_0 <= PP7X0Y0_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w2_0 <= PP7X0Y0_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w3_0 <= PP7X0Y0_m5(5); -- cycle= 0 cp= 5.5688e-10

   Y0X1_7_m5 <= y_m5b7_0 & x_m5b7_1;
   PP_m5_7X1Y0_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y0X1_7_m5,
                 Y => PP7X1Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w2_1 <= PP7X1Y0_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w3_1 <= PP7X1Y0_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w4_0 <= PP7X1Y0_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w5_0 <= PP7X1Y0_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w6_0 <= PP7X1Y0_m5(5); -- cycle= 0 cp= 5.5688e-10

   Y0X2_7_m5 <= y_m5b7_0 & x_m5b7_2;
   PP_m5_7X2Y0_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y0X2_7_m5,
                 Y => PP7X2Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w5_1 <= PP7X2Y0_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w6_1 <= PP7X2Y0_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w7_0 <= PP7X2Y0_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w8_0 <= PP7X2Y0_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w9_0 <= PP7X2Y0_m5(5); -- cycle= 0 cp= 5.5688e-10

   Y0X3_7_m5 <= y_m5b7_0 & x_m5b7_3;
   PP_m5_7X3Y0_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y0X3_7_m5,
                 Y => PP7X3Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w8_1 <= PP7X3Y0_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w9_1 <= PP7X3Y0_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w10_0 <= PP7X3Y0_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w11_0 <= PP7X3Y0_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w12_0 <= PP7X3Y0_m5(5); -- cycle= 0 cp= 5.5688e-10

   -- Partial product row number 1
   Y1X0_7_m5 <= y_m5b7_1 & x_m5b7_0;
   PP_m5_7X0Y1_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y1X0_7_m5,
                 Y => PP7X0Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w2_2 <= PP7X0Y1_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w3_2 <= PP7X0Y1_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w4_1 <= PP7X0Y1_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w5_2 <= PP7X0Y1_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w6_2 <= PP7X0Y1_m5(5); -- cycle= 0 cp= 5.5688e-10

   Y1X1_7_m5 <= y_m5b7_1 & x_m5b7_1;
   PP_m5_7X1Y1_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y1X1_7_m5,
                 Y => PP7X1Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w4_2 <= PP7X1Y1_m5(0); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w5_3 <= PP7X1Y1_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w6_3 <= PP7X1Y1_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w7_1 <= PP7X1Y1_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w8_2 <= PP7X1Y1_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w9_2 <= PP7X1Y1_m5(5); -- cycle= 0 cp= 5.5688e-10

   Y1X2_7_m5 <= y_m5b7_1 & x_m5b7_2;
   PP_m5_7X2Y1_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y1X2_7_m5,
                 Y => PP7X2Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w7_2 <= PP7X2Y1_m5(0); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w8_3 <= PP7X2Y1_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w9_3 <= PP7X2Y1_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w10_1 <= PP7X2Y1_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w11_1 <= PP7X2Y1_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w12_1 <= PP7X2Y1_m5(5); -- cycle= 0 cp= 5.5688e-10

   Y1X3_7_m5 <= y_m5b7_1 & x_m5b7_3;
   PP_m5_7X3Y1_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y1X3_7_m5,
                 Y => PP7X3Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w10_2 <= PP7X3Y1_m5(0); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w11_2 <= PP7X3Y1_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w12_2 <= PP7X3Y1_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w13_0 <= PP7X3Y1_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w14_0 <= PP7X3Y1_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w15_0 <= PP7X3Y1_m5(5); -- cycle= 0 cp= 5.5688e-10

   -- Partial product row number 2
   Y2X0_7_m5 <= y_m5b7_2 & x_m5b7_0;
   PP_m5_7X0Y2_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y2X0_7_m5,
                 Y => PP7X0Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w5_4 <= PP7X0Y2_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w6_4 <= PP7X0Y2_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w7_3 <= PP7X0Y2_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w8_4 <= PP7X0Y2_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w9_4 <= PP7X0Y2_m5(5); -- cycle= 0 cp= 5.5688e-10

   Y2X1_7_m5 <= y_m5b7_2 & x_m5b7_1;
   PP_m5_7X1Y2_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y2X1_7_m5,
                 Y => PP7X1Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w7_4 <= PP7X1Y2_m5(0); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w8_5 <= PP7X1Y2_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w9_5 <= PP7X1Y2_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w10_3 <= PP7X1Y2_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w11_3 <= PP7X1Y2_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w12_3 <= PP7X1Y2_m5(5); -- cycle= 0 cp= 5.5688e-10

   Y2X2_7_m5 <= y_m5b7_2 & x_m5b7_2;
   PP_m5_7X2Y2_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y2X2_7_m5,
                 Y => PP7X2Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w10_4 <= PP7X2Y2_m5(0); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w11_4 <= PP7X2Y2_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w12_4 <= PP7X2Y2_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w13_1 <= PP7X2Y2_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w14_1 <= PP7X2Y2_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w15_1 <= PP7X2Y2_m5(5); -- cycle= 0 cp= 5.5688e-10

   Y2X3_7_m5 <= y_m5b7_2 & x_m5b7_3;
   PP_m5_7X3Y2_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y2X3_7_m5,
                 Y => PP7X3Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w13_2 <= PP7X3Y2_m5(0); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w14_2 <= PP7X3Y2_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w15_2 <= PP7X3Y2_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w16_0 <= PP7X3Y2_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w17_0 <= PP7X3Y2_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w18_0 <= PP7X3Y2_m5(5); -- cycle= 0 cp= 5.5688e-10

   -- Partial product row number 3
   Y3X0_7_m5 <= y_m5b7_3 & x_m5b7_0;
   PP_m5_7X0Y3_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y3X0_7_m5,
                 Y => PP7X0Y3_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w8_6 <= PP7X0Y3_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w9_6 <= PP7X0Y3_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w10_5 <= PP7X0Y3_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w11_5 <= PP7X0Y3_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w12_5 <= PP7X0Y3_m5(5); -- cycle= 0 cp= 5.5688e-10

   Y3X1_7_m5 <= y_m5b7_3 & x_m5b7_1;
   PP_m5_7X1Y3_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y3X1_7_m5,
                 Y => PP7X1Y3_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w10_6 <= PP7X1Y3_m5(0); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w11_6 <= PP7X1Y3_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w12_6 <= PP7X1Y3_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w13_3 <= PP7X1Y3_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w14_3 <= PP7X1Y3_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w15_3 <= PP7X1Y3_m5(5); -- cycle= 0 cp= 5.5688e-10

   Y3X2_7_m5 <= y_m5b7_3 & x_m5b7_2;
   PP_m5_7X2Y3_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y3X2_7_m5,
                 Y => PP7X2Y3_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w13_4 <= PP7X2Y3_m5(0); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w14_4 <= PP7X2Y3_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w15_4 <= PP7X2Y3_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w16_1 <= PP7X2Y3_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w17_1 <= PP7X2Y3_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w18_1 <= PP7X2Y3_m5(5); -- cycle= 0 cp= 5.5688e-10

   Y3X3_7_m5 <= y_m5b7_3 & x_m5b7_3;
   PP_m5_7X3Y3_Tbl: SmallMultTableP3x3r6XuYu_comb_uid9
      port map ( X => Y3X3_7_m5,
                 Y => PP7X3Y3_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w16_2 <= PP7X3Y3_m5(0); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w17_2 <= PP7X3Y3_m5(1); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w18_2 <= PP7X3Y3_m5(2); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w19_0 <= PP7X3Y3_m5(3); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w20_0 <= PP7X3Y3_m5(4); -- cycle= 0 cp= 5.5688e-10
   heap_bh6_w21_0 <= PP7X3Y3_m5(5); -- cycle= 0 cp= 5.5688e-10

   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()

   -- Adding the constant bits
      -- All the constant bits are zero, nothing to add

   tempR_bh6_0 <= heap_bh6_w1_0 & heap_bh6_w0_0; -- already compressed

   CompressorIn_bh6_0_0 <= heap_bh6_w8_6 & heap_bh6_w8_5 & heap_bh6_w8_4 & heap_bh6_w8_3 & heap_bh6_w8_2 & heap_bh6_w8_1;
      Compressor_bh6_0: Compressor_6_3
      port map ( R => CompressorOut_bh6_0_0,
                 X0 => CompressorIn_bh6_0_0);
   heap_bh6_w8_7 <= CompressorOut_bh6_0_0(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w9_7 <= CompressorOut_bh6_0_0(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w10_7 <= CompressorOut_bh6_0_0(2); -- cycle= 0 cp= 1.0876e-09

   CompressorIn_bh6_1_1 <= heap_bh6_w9_6 & heap_bh6_w9_5 & heap_bh6_w9_4 & heap_bh6_w9_3 & heap_bh6_w9_2 & heap_bh6_w9_1;
      Compressor_bh6_1: Compressor_6_3
      port map ( R => CompressorOut_bh6_1_1,
                 X0 => CompressorIn_bh6_1_1);
   heap_bh6_w9_8 <= CompressorOut_bh6_1_1(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w10_8 <= CompressorOut_bh6_1_1(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w11_7 <= CompressorOut_bh6_1_1(2); -- cycle= 0 cp= 1.0876e-09

   CompressorIn_bh6_2_2 <= heap_bh6_w10_6 & heap_bh6_w10_5 & heap_bh6_w10_4 & heap_bh6_w10_3 & heap_bh6_w10_2 & heap_bh6_w10_1;
      Compressor_bh6_2: Compressor_6_3
      port map ( R => CompressorOut_bh6_2_2,
                 X0 => CompressorIn_bh6_2_2);
   heap_bh6_w10_9 <= CompressorOut_bh6_2_2(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w11_8 <= CompressorOut_bh6_2_2(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w12_7 <= CompressorOut_bh6_2_2(2); -- cycle= 0 cp= 1.0876e-09

   CompressorIn_bh6_3_3 <= heap_bh6_w11_6 & heap_bh6_w11_5 & heap_bh6_w11_4 & heap_bh6_w11_3 & heap_bh6_w11_2 & heap_bh6_w11_1;
      Compressor_bh6_3: Compressor_6_3
      port map ( R => CompressorOut_bh6_3_3,
                 X0 => CompressorIn_bh6_3_3);
   heap_bh6_w11_9 <= CompressorOut_bh6_3_3(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w12_8 <= CompressorOut_bh6_3_3(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w13_5 <= CompressorOut_bh6_3_3(2); -- cycle= 0 cp= 1.0876e-09

   CompressorIn_bh6_4_4 <= heap_bh6_w12_6 & heap_bh6_w12_5 & heap_bh6_w12_4 & heap_bh6_w12_3 & heap_bh6_w12_2 & heap_bh6_w12_1;
      Compressor_bh6_4: Compressor_6_3
      port map ( R => CompressorOut_bh6_4_4,
                 X0 => CompressorIn_bh6_4_4);
   heap_bh6_w12_9 <= CompressorOut_bh6_4_4(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w13_6 <= CompressorOut_bh6_4_4(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w14_5 <= CompressorOut_bh6_4_4(2); -- cycle= 0 cp= 1.0876e-09

   CompressorIn_bh6_5_5 <= heap_bh6_w5_4 & heap_bh6_w5_3 & heap_bh6_w5_2 & heap_bh6_w5_1;
   CompressorIn_bh6_5_6(0) <= heap_bh6_w6_4;
      Compressor_bh6_5: Compressor_14_3
      port map ( R => CompressorOut_bh6_5_5,
                 X0 => CompressorIn_bh6_5_5,
                 X1 => CompressorIn_bh6_5_6);
   heap_bh6_w5_5 <= CompressorOut_bh6_5_5(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w6_5 <= CompressorOut_bh6_5_5(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w7_5 <= CompressorOut_bh6_5_5(2); -- cycle= 0 cp= 1.0876e-09

   CompressorIn_bh6_6_7 <= heap_bh6_w6_3 & heap_bh6_w6_2 & heap_bh6_w6_1 & heap_bh6_w6_0;
   CompressorIn_bh6_6_8(0) <= heap_bh6_w7_4;
      Compressor_bh6_6: Compressor_14_3
      port map ( R => CompressorOut_bh6_6_6,
                 X0 => CompressorIn_bh6_6_7,
                 X1 => CompressorIn_bh6_6_8);
   heap_bh6_w6_6 <= CompressorOut_bh6_6_6(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w7_6 <= CompressorOut_bh6_6_6(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w8_8 <= CompressorOut_bh6_6_6(2); -- cycle= 0 cp= 1.0876e-09

   CompressorIn_bh6_7_9 <= heap_bh6_w7_3 & heap_bh6_w7_2 & heap_bh6_w7_1 & heap_bh6_w7_0;
   CompressorIn_bh6_7_10(0) <= heap_bh6_w8_0;
      Compressor_bh6_7: Compressor_14_3
      port map ( R => CompressorOut_bh6_7_7,
                 X0 => CompressorIn_bh6_7_9,
                 X1 => CompressorIn_bh6_7_10);
   heap_bh6_w7_7 <= CompressorOut_bh6_7_7(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w8_9 <= CompressorOut_bh6_7_7(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w9_9 <= CompressorOut_bh6_7_7(2); -- cycle= 0 cp= 1.0876e-09

   CompressorIn_bh6_8_11 <= heap_bh6_w13_4 & heap_bh6_w13_3 & heap_bh6_w13_2 & heap_bh6_w13_1;
   CompressorIn_bh6_8_12(0) <= heap_bh6_w14_4;
      Compressor_bh6_8: Compressor_14_3
      port map ( R => CompressorOut_bh6_8_8,
                 X0 => CompressorIn_bh6_8_11,
                 X1 => CompressorIn_bh6_8_12);
   heap_bh6_w13_7 <= CompressorOut_bh6_8_8(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w14_6 <= CompressorOut_bh6_8_8(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w15_5 <= CompressorOut_bh6_8_8(2); -- cycle= 0 cp= 1.0876e-09

   CompressorIn_bh6_9_13 <= heap_bh6_w14_3 & heap_bh6_w14_2 & heap_bh6_w14_1 & heap_bh6_w14_0;
   CompressorIn_bh6_9_14(0) <= heap_bh6_w15_4;
      Compressor_bh6_9: Compressor_14_3
      port map ( R => CompressorOut_bh6_9_9,
                 X0 => CompressorIn_bh6_9_13,
                 X1 => CompressorIn_bh6_9_14);
   heap_bh6_w14_7 <= CompressorOut_bh6_9_9(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w15_6 <= CompressorOut_bh6_9_9(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w16_3 <= CompressorOut_bh6_9_9(2); -- cycle= 0 cp= 1.0876e-09

   CompressorIn_bh6_10_15 <= heap_bh6_w15_3 & heap_bh6_w15_2 & heap_bh6_w15_1 & heap_bh6_w15_0;
   CompressorIn_bh6_10_16(0) <= heap_bh6_w16_2;
      Compressor_bh6_10: Compressor_14_3
      port map ( R => CompressorOut_bh6_10_10,
                 X0 => CompressorIn_bh6_10_15,
                 X1 => CompressorIn_bh6_10_16);
   heap_bh6_w15_7 <= CompressorOut_bh6_10_10(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w16_4 <= CompressorOut_bh6_10_10(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w17_3 <= CompressorOut_bh6_10_10(2); -- cycle= 0 cp= 1.0876e-09

   CompressorIn_bh6_11_17 <= heap_bh6_w2_2 & heap_bh6_w2_1 & heap_bh6_w2_0;
   CompressorIn_bh6_11_18 <= heap_bh6_w3_2 & heap_bh6_w3_1;
      Compressor_bh6_11: Compressor_23_3
      port map ( R => CompressorOut_bh6_11_11,
                 X0 => CompressorIn_bh6_11_17,
                 X1 => CompressorIn_bh6_11_18);
   heap_bh6_w2_3 <= CompressorOut_bh6_11_11(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w3_3 <= CompressorOut_bh6_11_11(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w4_3 <= CompressorOut_bh6_11_11(2); -- cycle= 0 cp= 1.0876e-09

   CompressorIn_bh6_12_19 <= heap_bh6_w17_2 & heap_bh6_w17_1 & heap_bh6_w17_0;
   CompressorIn_bh6_12_20 <= heap_bh6_w18_2 & heap_bh6_w18_1;
      Compressor_bh6_12: Compressor_23_3
      port map ( R => CompressorOut_bh6_12_12,
                 X0 => CompressorIn_bh6_12_19,
                 X1 => CompressorIn_bh6_12_20);
   heap_bh6_w17_4 <= CompressorOut_bh6_12_12(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w18_3 <= CompressorOut_bh6_12_12(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w19_1 <= CompressorOut_bh6_12_12(2); -- cycle= 0 cp= 1.0876e-09

   CompressorIn_bh6_13_21 <= heap_bh6_w4_2 & heap_bh6_w4_1 & heap_bh6_w4_0;
   CompressorIn_bh6_13_22(0) <= heap_bh6_w5_0;
      Compressor_bh6_13: Compressor_13_3
      port map ( R => CompressorOut_bh6_13_13,
                 X0 => CompressorIn_bh6_13_21,
                 X1 => CompressorIn_bh6_13_22);
   heap_bh6_w4_4 <= CompressorOut_bh6_13_13(0); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w5_6 <= CompressorOut_bh6_13_13(1); -- cycle= 0 cp= 1.0876e-09
   heap_bh6_w6_7 <= CompressorOut_bh6_13_13(2); -- cycle= 0 cp= 1.0876e-09
   tempR_bh6_1 <= heap_bh6_w2_3; -- already compressed

   CompressorIn_bh6_14_23 <= heap_bh6_w9_0 & heap_bh6_w9_9 & heap_bh6_w9_8 & heap_bh6_w9_7;
   CompressorIn_bh6_14_24(0) <= heap_bh6_w10_0;
      Compressor_bh6_14: Compressor_14_3
      port map ( R => CompressorOut_bh6_14_14,
                 X0 => CompressorIn_bh6_14_23,
                 X1 => CompressorIn_bh6_14_24);
   heap_bh6_w9_10 <= CompressorOut_bh6_14_14(0); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w10_10 <= CompressorOut_bh6_14_14(1); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w11_10 <= CompressorOut_bh6_14_14(2); -- cycle= 0 cp= 1.61832e-09

   CompressorIn_bh6_15_25 <= heap_bh6_w11_0 & heap_bh6_w11_9 & heap_bh6_w11_8 & heap_bh6_w11_7;
   CompressorIn_bh6_15_26(0) <= heap_bh6_w12_0;
      Compressor_bh6_15: Compressor_14_3
      port map ( R => CompressorOut_bh6_15_15,
                 X0 => CompressorIn_bh6_15_25,
                 X1 => CompressorIn_bh6_15_26);
   heap_bh6_w11_11 <= CompressorOut_bh6_15_15(0); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w12_10 <= CompressorOut_bh6_15_15(1); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w13_8 <= CompressorOut_bh6_15_15(2); -- cycle= 0 cp= 1.61832e-09

   CompressorIn_bh6_16_27 <= heap_bh6_w13_0 & heap_bh6_w13_7 & heap_bh6_w13_6 & heap_bh6_w13_5;
   CompressorIn_bh6_16_28(0) <= heap_bh6_w14_7;
      Compressor_bh6_16: Compressor_14_3
      port map ( R => CompressorOut_bh6_16_16,
                 X0 => CompressorIn_bh6_16_27,
                 X1 => CompressorIn_bh6_16_28);
   heap_bh6_w13_9 <= CompressorOut_bh6_16_16(0); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w14_8 <= CompressorOut_bh6_16_16(1); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w15_8 <= CompressorOut_bh6_16_16(2); -- cycle= 0 cp= 1.61832e-09

   CompressorIn_bh6_17_29 <= heap_bh6_w16_1 & heap_bh6_w16_0 & heap_bh6_w16_4 & heap_bh6_w16_3;
   CompressorIn_bh6_17_30(0) <= heap_bh6_w17_4;
      Compressor_bh6_17: Compressor_14_3
      port map ( R => CompressorOut_bh6_17_17,
                 X0 => CompressorIn_bh6_17_29,
                 X1 => CompressorIn_bh6_17_30);
   heap_bh6_w16_5 <= CompressorOut_bh6_17_17(0); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w17_5 <= CompressorOut_bh6_17_17(1); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w18_4 <= CompressorOut_bh6_17_17(2); -- cycle= 0 cp= 1.61832e-09

   CompressorIn_bh6_18_31 <= heap_bh6_w6_7 & heap_bh6_w6_6 & heap_bh6_w6_5;
   CompressorIn_bh6_18_32 <= heap_bh6_w7_7 & heap_bh6_w7_6;
      Compressor_bh6_18: Compressor_23_3
      port map ( R => CompressorOut_bh6_18_18,
                 X0 => CompressorIn_bh6_18_31,
                 X1 => CompressorIn_bh6_18_32);
   heap_bh6_w6_8 <= CompressorOut_bh6_18_18(0); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w7_8 <= CompressorOut_bh6_18_18(1); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w8_10 <= CompressorOut_bh6_18_18(2); -- cycle= 0 cp= 1.61832e-09

   CompressorIn_bh6_19_33 <= heap_bh6_w8_9 & heap_bh6_w8_8 & heap_bh6_w8_7;
      Compressor_bh6_19: Compressor_3_2
      port map ( R => CompressorOut_bh6_19_19,
                 X0 => CompressorIn_bh6_19_33);
   heap_bh6_w8_11 <= CompressorOut_bh6_19_19(0); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w9_11 <= CompressorOut_bh6_19_19(1); -- cycle= 0 cp= 1.61832e-09

   CompressorIn_bh6_20_34 <= heap_bh6_w10_9 & heap_bh6_w10_8 & heap_bh6_w10_7;
      Compressor_bh6_20: Compressor_3_2
      port map ( R => CompressorOut_bh6_20_20,
                 X0 => CompressorIn_bh6_20_34);
   heap_bh6_w10_11 <= CompressorOut_bh6_20_20(0); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w11_12 <= CompressorOut_bh6_20_20(1); -- cycle= 0 cp= 1.61832e-09

   CompressorIn_bh6_21_35 <= heap_bh6_w12_9 & heap_bh6_w12_8 & heap_bh6_w12_7;
      Compressor_bh6_21: Compressor_3_2
      port map ( R => CompressorOut_bh6_21_21,
                 X0 => CompressorIn_bh6_21_35);
   heap_bh6_w12_11 <= CompressorOut_bh6_21_21(0); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w13_10 <= CompressorOut_bh6_21_21(1); -- cycle= 0 cp= 1.61832e-09

   CompressorIn_bh6_22_36 <= heap_bh6_w15_7 & heap_bh6_w15_6 & heap_bh6_w15_5;
      Compressor_bh6_22: Compressor_3_2
      port map ( R => CompressorOut_bh6_22_22,
                 X0 => CompressorIn_bh6_22_36);
   heap_bh6_w15_9 <= CompressorOut_bh6_22_22(0); -- cycle= 0 cp= 1.61832e-09
   heap_bh6_w16_6 <= CompressorOut_bh6_22_22(1); -- cycle= 0 cp= 1.61832e-09

   CompressorIn_bh6_23_37 <= heap_bh6_w11_12 & heap_bh6_w11_11 & heap_bh6_w11_10;
   CompressorIn_bh6_23_38 <= heap_bh6_w12_11 & heap_bh6_w12_10;
      Compressor_bh6_23: Compressor_23_3
      port map ( R => CompressorOut_bh6_23_23,
                 X0 => CompressorIn_bh6_23_37,
                 X1 => CompressorIn_bh6_23_38);
   heap_bh6_w11_13 <= CompressorOut_bh6_23_23(0); -- cycle= 0 cp= 2.14904e-09
   heap_bh6_w12_12 <= CompressorOut_bh6_23_23(1); -- cycle= 0 cp= 2.14904e-09
   heap_bh6_w13_11 <= CompressorOut_bh6_23_23(2); -- cycle= 0 cp= 2.14904e-09

   CompressorIn_bh6_24_39 <= heap_bh6_w13_10 & heap_bh6_w13_9 & heap_bh6_w13_8;
   CompressorIn_bh6_24_40 <= heap_bh6_w14_6 & heap_bh6_w14_5;
      Compressor_bh6_24: Compressor_23_3
      port map ( R => CompressorOut_bh6_24_24,
                 X0 => CompressorIn_bh6_24_39,
                 X1 => CompressorIn_bh6_24_40);
   heap_bh6_w13_12 <= CompressorOut_bh6_24_24(0); -- cycle= 0 cp= 2.14904e-09
   heap_bh6_w14_9 <= CompressorOut_bh6_24_24(1); -- cycle= 0 cp= 2.14904e-09
   heap_bh6_w15_10 <= CompressorOut_bh6_24_24(2); -- cycle= 0 cp= 2.14904e-09

   CompressorIn_bh6_25_41 <= heap_bh6_w18_0 & heap_bh6_w18_3 & heap_bh6_w18_4;
   CompressorIn_bh6_25_42 <= heap_bh6_w19_0 & heap_bh6_w19_1;
      Compressor_bh6_25: Compressor_23_3
      port map ( R => CompressorOut_bh6_25_25,
                 X0 => CompressorIn_bh6_25_41,
                 X1 => CompressorIn_bh6_25_42);
   heap_bh6_w18_5 <= CompressorOut_bh6_25_25(0); -- cycle= 0 cp= 2.14904e-09
   heap_bh6_w19_2 <= CompressorOut_bh6_25_25(1); -- cycle= 0 cp= 2.14904e-09
   heap_bh6_w20_1 <= CompressorOut_bh6_25_25(2); -- cycle= 0 cp= 2.14904e-09

   CompressorIn_bh6_26_43 <= heap_bh6_w15_9 & heap_bh6_w15_8 & heap_bh6_w15_10;
   CompressorIn_bh6_26_44 <= heap_bh6_w16_6 & heap_bh6_w16_5;
      Compressor_bh6_26: Compressor_23_3
      port map ( R => CompressorOut_bh6_26_26,
                 X0 => CompressorIn_bh6_26_43,
                 X1 => CompressorIn_bh6_26_44);
   heap_bh6_w15_11 <= CompressorOut_bh6_26_26(0); -- cycle= 0 cp= 2.67976e-09
   heap_bh6_w16_7 <= CompressorOut_bh6_26_26(1); -- cycle= 0 cp= 2.67976e-09
   heap_bh6_w17_6 <= CompressorOut_bh6_26_26(2); -- cycle= 0 cp= 2.67976e-09

   CompressorIn_bh6_27_45 <= heap_bh6_w17_3 & heap_bh6_w17_5 & heap_bh6_w17_6;
   CompressorIn_bh6_27_46(0) <= heap_bh6_w18_5;
      Compressor_bh6_27: Compressor_13_3
      port map ( R => CompressorOut_bh6_27_27,
                 X0 => CompressorIn_bh6_27_45,
                 X1 => CompressorIn_bh6_27_46);
   heap_bh6_w17_7 <= CompressorOut_bh6_27_27(0); -- cycle= 0 cp= 3.21048e-09
   heap_bh6_w18_6 <= CompressorOut_bh6_27_27(1); -- cycle= 0 cp= 3.21048e-09
   heap_bh6_w19_3 <= CompressorOut_bh6_27_27(2); -- cycle= 0 cp= 3.21048e-09
   finalAdderIn0_bh6 <= "0" & heap_bh6_w21_0 & heap_bh6_w20_0 & heap_bh6_w19_2 & heap_bh6_w18_6 & heap_bh6_w17_7 & heap_bh6_w16_7 & heap_bh6_w15_11 & heap_bh6_w14_8 & heap_bh6_w13_12 & heap_bh6_w12_12 & heap_bh6_w11_13 & heap_bh6_w10_11 & heap_bh6_w9_11 & heap_bh6_w8_11 & heap_bh6_w7_5 & heap_bh6_w6_8 & heap_bh6_w5_6 & heap_bh6_w4_4 & heap_bh6_w3_0;
   finalAdderIn1_bh6 <= "0" & '0' & heap_bh6_w20_1 & heap_bh6_w19_3 & '0' & '0' & '0' & '0' & heap_bh6_w14_9 & heap_bh6_w13_11 & '0' & '0' & heap_bh6_w10_10 & heap_bh6_w9_10 & heap_bh6_w8_10 & heap_bh6_w7_8 & '0' & heap_bh6_w5_5 & heap_bh6_w4_3 & heap_bh6_w3_3;
   finalAdderCin_bh6 <= '0';
      Adder_final6_0: IntAdder_20_f400_uid106
      port map ( Cin => finalAdderCin_bh6,
                 R => finalAdderOut_bh6,
                 X => finalAdderIn0_bh6,
                 Y => finalAdderIn1_bh6);
   -- concatenate all the compressed chunks
   CompressionResult6 <= finalAdderOut_bh6 & tempR_bh6_1 & tempR_bh6_0;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult6(21 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_17_f400_uid116
--                     (IntAdderClassical_17_comb_uid118)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_17_f400_uid116 is
   port ( X : in  std_logic_vector(16 downto 0);
          Y : in  std_logic_vector(16 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(16 downto 0)   );
end entity;

architecture arch of IntAdder_17_f400_uid116 is
begin
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                               tb_top_fpu_mul
--                     (FPMult_5_10_5_10_5_10_comb_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin 2008-2011
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity tb_top_fpu_mul is
   port ( X : in  std_logic_vector(5+10+2 downto 0);
          Y : in  std_logic_vector(5+10+2 downto 0);
          R : out  std_logic_vector(5+10+2 downto 0)   );
end entity;

architecture arch of tb_top_fpu_mul is
   component IntMultiplier_UsingDSP_11_11_22_unsigned_comb_uid4 is
      port ( X : in  std_logic_vector(10 downto 0);
             Y : in  std_logic_vector(10 downto 0);
             R : out  std_logic_vector(21 downto 0)   );
   end component;

   component IntAdder_17_f400_uid116 is
      port ( X : in  std_logic_vector(16 downto 0);
             Y : in  std_logic_vector(16 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(16 downto 0)   );
   end component;

signal sign :  std_logic;
signal expX :  std_logic_vector(4 downto 0);
signal expY :  std_logic_vector(4 downto 0);
signal expSumPreSub :  std_logic_vector(6 downto 0);
signal bias :  std_logic_vector(6 downto 0);
signal expSum :  std_logic_vector(6 downto 0);
signal sigX :  std_logic_vector(10 downto 0);
signal sigY :  std_logic_vector(10 downto 0);
signal sigProd :  std_logic_vector(21 downto 0);
signal excSel :  std_logic_vector(3 downto 0);
signal exc :  std_logic_vector(1 downto 0);
signal norm :  std_logic;
signal expPostNorm :  std_logic_vector(6 downto 0);
signal sigProdExt :  std_logic_vector(21 downto 0);
signal expSig :  std_logic_vector(16 downto 0);
signal sticky :  std_logic;
signal guard :  std_logic;
signal round :  std_logic;
signal expSigPostRound :  std_logic_vector(16 downto 0);
signal excPostNorm :  std_logic_vector(1 downto 0);
signal finalExc :  std_logic_vector(1 downto 0);
begin
   sign <= X(15) xor Y(15);
   expX <= X(14 downto 10);
   expY <= Y(14 downto 10);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(15,7);
   expSum <= expSumPreSub - bias;
   sigX <= "1" & X(9 downto 0);
   sigY <= "1" & Y(9 downto 0);
   SignificandMultiplication: IntMultiplier_UsingDSP_11_11_22_unsigned_comb_uid4
      port map ( R => sigProd,
                 X => sigX,
                 Y => sigY);
   excSel <= X(17 downto 16) & Y(17 downto 16);
   with excSel select 
   exc <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   norm <= sigProd(21);
   -- exponent update
   expPostNorm <= expSum + ("000000" & norm);
   -- significand normalization shift
   sigProdExt <= sigProd(20 downto 0) & "0" when norm='1' else
                         sigProd(19 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(21 downto 12);
   sticky <= sigProdExt(11);
   guard <= '0' when sigProdExt(10 downto 0)="00000000000" else '1';
   round <= sticky and ( (guard and not(sigProdExt(12))) or (sigProdExt(12) ))  ;
      RoundingAdder: IntAdder_17_f400_uid116
      port map ( Cin => round,
                 R => expSigPostRound,
                 X => expSig,
                 Y => "00000000000000000");
   with expSigPostRound(16 downto 15) select
   excPostNorm <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc select 
   finalExc <= exc when  "11"|"10"|"00",
                       excPostNorm when others; 
   R <= finalExc & sign & expSigPostRound(14 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                    TestBench_tb_top_fpu_mul_comb_uid124
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Cristian Klein, Nicolas Brunie (2007-2010)
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity TestBench_tb_top_fpu_mul_comb_uid124 is
end entity;

architecture behavorial of TestBench_tb_top_fpu_mul_comb_uid124 is
   component tb_top_fpu_mul is
      port ( X : in  std_logic_vector(5+10+2 downto 0);
             Y : in  std_logic_vector(5+10+2 downto 0);
             R : out  std_logic_vector(5+10+2 downto 0)   );
   end component;
   signal X :  std_logic_vector(17 downto 0);
   signal Y :  std_logic_vector(17 downto 0);
   signal R :  std_logic_vector(5+10+2 downto 0);
   signal clk :  std_logic;
   signal rst :  std_logic;

   -- FP compare function (found vs. real)
   function fp_equal(a : std_logic_vector; b : std_logic_vector) return boolean is
   begin
      if b(b'high downto b'high-1) = "01" then
         return a = b;
      elsif b(b'high downto b'high-1) = "11" then
         return (a(a'high downto a'high-1)=b(b'high downto b'high-1));
      else
         return a(a'high downto a'high-2) = b(b'high downto b'high-2);
      end if;
   end;



 -- converts std_logic into a character
   function chr(sl: std_logic) return character is
      variable c: character;
   begin
      case sl is
         when 'U' => c:= 'U';
         when 'X' => c:= 'X';
         when '0' => c:= '0';
         when '1' => c:= '1';
         when 'Z' => c:= 'Z';
         when 'W' => c:= 'W';
         when 'L' => c:= 'L';
         when 'H' => c:= 'H';
         when '-' => c:= '-';
      end case;
      return c;
   end chr;
   -- converts bit to std_logic (1 to 1)
   function to_stdlogic(b : bit) return std_logic is
       variable sl : std_logic;
   begin
      case b is 
         when '0' => sl := '0';
         when '1' => sl := '1';
      end case;
      return sl;
   end to_stdlogic;
   -- converts std_logic into a string (1 to 1)
   function str(sl: std_logic) return string is
    variable s: string(1 to 1);
    begin
      s(1) := chr(sl);
      return s;
   end str;
   -- converts std_logic_vector into a string (binary base)
   -- (this also takes care of the fact that the range of
   --  a string is natural while a std_logic_vector may
   --  have an integer range)
   function str(slv: std_logic_vector) return string is
      variable result : string (1 to slv'length);
      variable r : integer;
   begin
      r := 1;
      for i in slv'range loop
         result(r) := chr(slv(i));
         r := r + 1;
      end loop;
      return result;
   end str;




   -- test isZero
   function iszero(a : std_logic_vector) return boolean is
   begin
      return  a = (a'high downto 0 => '0');
   end;


   -- FP IEEE compare function (found vs. real)
   function fp_equal_ieee(a : std_logic_vector; b : std_logic_vector; we : integer; wf : integer) return boolean is
   begin
      if a(wf+we downto wf) = b(wf+we downto wf) and b(we+wf-1 downto wf) = (we downto 1 => '1') then
         if iszero(b(wf-1 downto 0)) then return  iszero(a(wf-1 downto 0));
         else return not iszero(a(wf - 1 downto 0));
         end if;
      else
         return a(a'high downto 0) = b(b'high downto 0);
      end if;
   end;

   -- FP subtypes for casting
   subtype fp18 is std_logic_vector(17 downto 0);
begin
   test: tb_top_fpu_mul
      port map ( R => R,
                 X => X,
                 Y => Y);
   -- Ticking clock signal
   process
   begin
      clk <= '0';
      wait for 5 ns;
      clk <= '1';
      wait for 5 ns;
   end process;

   -- Setting the inputs
   process
   begin
      -- Send reset
      rst <= '1';
      wait for 10 ns;
      rst <= '0';
      X <= "010011010000100111"; 
      Y <= "010111111011111011"; 
      wait for 10 ns;
      X <= "001001100100010111"; 
      Y <= "000011101110110000"; 
      wait for 10 ns;
      X <= "111000101100101001"; 
      Y <= "101001000001100010"; 
      wait for 10 ns;
      X <= "001000010101110111"; 
      Y <= "100100110011110000"; 
      wait for 10 ns;
      X <= "110011101011010111"; 
      Y <= "100000011010111110"; 
      wait for 10 ns;
      X <= "010111111101000111"; 
      Y <= "110101010001111110"; 
      wait for 10 ns;
      X <= "001110101011001100"; 
      Y <= "101001010111010011"; 
      wait for 10 ns;
      X <= "101100011001110101"; 
      Y <= "111111001000010110"; 
      wait for 10 ns;
      X <= "110101110111000101"; 
      Y <= "101010100010000111"; 
      wait for 10 ns;
      X <= "000010000101010011"; 
      Y <= "011000111011001000"; 
      wait for 10 ns;
      X <= "100101101001011110"; 
      Y <= "101000111100111111"; 
      wait for 10 ns;
      X <= "100111111110110110"; 
      Y <= "010001100101011111"; 
      wait for 10 ns;
      X <= "010000011110000000"; 
      Y <= "100111010111110001"; 
      wait for 10 ns;
      X <= "000001100001101101"; 
      Y <= "111101100101000000"; 
      wait for 10 ns;
      X <= "010011110001100101"; 
      Y <= "010111110111100101"; 
      wait for 10 ns;
      X <= "101111100110111111"; 
      Y <= "000110110101101010"; 
      wait for 10 ns;
      X <= "101101111000011011"; 
      Y <= "001110100000001111"; 
      wait for 10 ns;
      X <= "100100111011011001"; 
      Y <= "011001001101011010"; 
      wait for 10 ns;
      X <= "111100000000001101"; 
      Y <= "100110101100000111"; 
      wait for 10 ns;
      X <= "100001001110101001"; 
      Y <= "001100101000111000"; 
      wait for 10 ns;
      wait for 100000 ns; -- allow simulation to finish
   end process;

   -- Checking the outputs
   process
   begin
      wait for 10 ns; -- wait for reset to complete
      wait for 2 ns; -- wait for pipeline to flush
      -- current time: 12
      -- input: X <= "010011010000100111"; 
      -- input: Y <= "010111111011111011"; 
      assert false or fp_equal(R,fp18'("010111011100111111")) report "Incorrect output value for R, expected 010111011100111111 | Test Number : 0  " severity ERROR; 
      wait for 10 ns;
      -- current time: 22
      -- input: X <= "001001100100010111"; 
      -- input: Y <= "000011101110110000"; 
      assert false or fp_equal(R,fp18'("001000000000000000")) report "Incorrect output value for R, expected 001000000000000000 | Test Number : 1  " severity ERROR; 
      wait for 10 ns;
      -- current time: 32
      -- input: X <= "111000101100101001"; 
      -- input: Y <= "101001000001100010"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 2  " severity ERROR; 
      wait for 10 ns;
      -- current time: 42
      -- input: X <= "001000010101110111"; 
      -- input: Y <= "100100110011110000"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 3  " severity ERROR; 
      wait for 10 ns;
      -- current time: 52
      -- input: X <= "110011101011010111"; 
      -- input: Y <= "100000011010111110"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 4  " severity ERROR; 
      wait for 10 ns;
      -- current time: 62
      -- input: X <= "010111111101000111"; 
      -- input: Y <= "110101010001111110"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 5  " severity ERROR; 
      wait for 10 ns;
      -- current time: 72
      -- input: X <= "001110101011001100"; 
      -- input: Y <= "101001010111010011"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 6  " severity ERROR; 
      wait for 10 ns;
      -- current time: 82
      -- input: X <= "101100011001110101"; 
      -- input: Y <= "111111001000010110"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 7  " severity ERROR; 
      wait for 10 ns;
      -- current time: 92
      -- input: X <= "110101110111000101"; 
      -- input: Y <= "101010100010000111"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 8  " severity ERROR; 
      wait for 10 ns;
      -- current time: 102
      -- input: X <= "000010000101010011"; 
      -- input: Y <= "011000111011001000"; 
      assert false or fp_equal(R,fp18'("001000000000000000")) report "Incorrect output value for R, expected 001000000000000000 | Test Number : 9  " severity ERROR; 
      wait for 10 ns;
      -- current time: 112
      -- input: X <= "100101101001011110"; 
      -- input: Y <= "101000111100111111"; 
      assert false or fp_equal(R,fp18'("101000000000000000")) report "Incorrect output value for R, expected 101000000000000000 | Test Number : 10  " severity ERROR; 
      wait for 10 ns;
      -- current time: 122
      -- input: X <= "100111111110110110"; 
      -- input: Y <= "010001100101011111"; 
      assert false or fp_equal(R,fp18'("100000000000000000")) report "Incorrect output value for R, expected 100000000000000000 | Test Number : 11  " severity ERROR; 
      wait for 10 ns;
      -- current time: 132
      -- input: X <= "010000011110000000"; 
      -- input: Y <= "100111010111110001"; 
      assert false or fp_equal(R,fp18'("100000000000000000")) report "Incorrect output value for R, expected 100000000000000000 | Test Number : 12  " severity ERROR; 
      wait for 10 ns;
      -- current time: 142
      -- input: X <= "000001100001101101"; 
      -- input: Y <= "111101100101000000"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 13  " severity ERROR; 
      wait for 10 ns;
      -- current time: 152
      -- input: X <= "010011110001100101"; 
      -- input: Y <= "010111110111100101"; 
      assert false or fp_equal(R,fp18'("010111111001111010")) report "Incorrect output value for R, expected 010111111001111010 | Test Number : 14  " severity ERROR; 
      wait for 10 ns;
      -- current time: 162
      -- input: X <= "101111100110111111"; 
      -- input: Y <= "000110110101101010"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 15  " severity ERROR; 
      wait for 10 ns;
      -- current time: 172
      -- input: X <= "101101111000011011"; 
      -- input: Y <= "001110100000001111"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 16  " severity ERROR; 
      wait for 10 ns;
      -- current time: 182
      -- input: X <= "100100111011011001"; 
      -- input: Y <= "011001001101011010"; 
      assert false or fp_equal(R,fp18'("101000000000000000")) report "Incorrect output value for R, expected 101000000000000000 | Test Number : 17  " severity ERROR; 
      wait for 10 ns;
      -- current time: 192
      -- input: X <= "111100000000001101"; 
      -- input: Y <= "100110101100000111"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 18  " severity ERROR; 
      wait for 10 ns;
      -- current time: 202
      -- input: X <= "100001001110101001"; 
      -- input: Y <= "001100101000111000"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 19  " severity ERROR; 
      wait for 10 ns;
      assert false report "End of simulation" severity failure;
   end process;

end architecture;

