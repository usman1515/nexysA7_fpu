--------------------------------------------------------------------------------
--                    RightShifter_11_by_max_13_comb_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2011)
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifter_11_by_max_13_comb_uid4 is
   port ( X : in  std_logic_vector(10 downto 0);
          S : in  std_logic_vector(3 downto 0);
          R : out  std_logic_vector(23 downto 0)   );
end entity;

architecture arch of RightShifter_11_by_max_13_comb_uid4 is
signal level0 :  std_logic_vector(10 downto 0);
signal ps :  std_logic_vector(3 downto 0);
signal level1 :  std_logic_vector(11 downto 0);
signal level2 :  std_logic_vector(13 downto 0);
signal level3 :  std_logic_vector(17 downto 0);
signal level4 :  std_logic_vector(25 downto 0);
begin
   level0<= X;
   ps<= S;
   level1<=  (0 downto 0 => '0') & level0 when ps(0) = '1' else    level0 & (0 downto 0 => '0');
   level2<=  (1 downto 0 => '0') & level1 when ps(1) = '1' else    level1 & (1 downto 0 => '0');
   level3<=  (3 downto 0 => '0') & level2 when ps(2) = '1' else    level2 & (3 downto 0 => '0');
   level4<=  (7 downto 0 => '0') & level3 when ps(3) = '1' else    level3 & (7 downto 0 => '0');
   R <= level4(25 downto 2);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_14_f400_uid8
--                     (IntAdderClassical_14_comb_uid10)
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

entity IntAdder_14_f400_uid8 is
   port ( X : in  std_logic_vector(13 downto 0);
          Y : in  std_logic_vector(13 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(13 downto 0)   );
end entity;

architecture arch of IntAdder_14_f400_uid8 is
begin
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                 LZCShifter_15_to_15_counting_16_comb_uid16
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007)
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LZCShifter_15_to_15_counting_16_comb_uid16 is
   port ( I : in  std_logic_vector(14 downto 0);
          Count : out  std_logic_vector(3 downto 0);
          O : out  std_logic_vector(14 downto 0)   );
end entity;

architecture arch of LZCShifter_15_to_15_counting_16_comb_uid16 is
signal level4 :  std_logic_vector(14 downto 0);
signal count3 :  std_logic;
signal level3 :  std_logic_vector(14 downto 0);
signal count2 :  std_logic;
signal level2 :  std_logic_vector(14 downto 0);
signal count1 :  std_logic;
signal level1 :  std_logic_vector(14 downto 0);
signal count0 :  std_logic;
signal level0 :  std_logic_vector(14 downto 0);
signal sCount :  std_logic_vector(3 downto 0);
begin
   level4 <= I ;
   count3<= '1' when level4(14 downto 7) = (14 downto 7=>'0') else '0';
   level3<= level4(14 downto 0) when count3='0' else level4(6 downto 0) & (7 downto 0 => '0');

   count2<= '1' when level3(14 downto 11) = (14 downto 11=>'0') else '0';
   level2<= level3(14 downto 0) when count2='0' else level3(10 downto 0) & (3 downto 0 => '0');

   count1<= '1' when level2(14 downto 13) = (14 downto 13=>'0') else '0';
   level1<= level2(14 downto 0) when count1='0' else level2(12 downto 0) & (1 downto 0 => '0');

   count0<= '1' when level1(14 downto 14) = (14 downto 14=>'0') else '0';
   level0<= level1(14 downto 0) when count0='0' else level1(13 downto 0) & (0 downto 0 => '0');

   O <= level0;
   sCount <= count3 & count2 & count1 & count0;
   Count <= sCount;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_18_f400_uid20
--                     (IntAdderClassical_18_comb_uid22)
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

entity IntAdder_18_f400_uid20 is
   port ( X : in  std_logic_vector(17 downto 0);
          Y : in  std_logic_vector(17 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(17 downto 0)   );
end entity;

architecture arch of IntAdder_18_f400_uid20 is
begin
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                               tb_top_fpu_add
--                           (FPAdd_5_10_comb_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2010)
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity tb_top_fpu_add is
   port ( X : in  std_logic_vector(5+10+2 downto 0);
          Y : in  std_logic_vector(5+10+2 downto 0);
          R : out  std_logic_vector(5+10+2 downto 0)   );
end entity;

architecture arch of tb_top_fpu_add is
   component RightShifter_11_by_max_13_comb_uid4 is
      port ( X : in  std_logic_vector(10 downto 0);
             S : in  std_logic_vector(3 downto 0);
             R : out  std_logic_vector(23 downto 0)   );
   end component;

   component IntAdder_14_f400_uid8 is
      port ( X : in  std_logic_vector(13 downto 0);
             Y : in  std_logic_vector(13 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(13 downto 0)   );
   end component;

   component LZCShifter_15_to_15_counting_16_comb_uid16 is
      port ( I : in  std_logic_vector(14 downto 0);
             Count : out  std_logic_vector(3 downto 0);
             O : out  std_logic_vector(14 downto 0)   );
   end component;

   component IntAdder_18_f400_uid20 is
      port ( X : in  std_logic_vector(17 downto 0);
             Y : in  std_logic_vector(17 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(17 downto 0)   );
   end component;

signal excExpFracX :  std_logic_vector(16 downto 0);
signal excExpFracY :  std_logic_vector(16 downto 0);
signal eXmeY :  std_logic_vector(5 downto 0);
signal eYmeX :  std_logic_vector(5 downto 0);
signal swap :  std_logic;
signal newX :  std_logic_vector(17 downto 0);
signal newY :  std_logic_vector(17 downto 0);
signal expX :  std_logic_vector(4 downto 0);
signal excX :  std_logic_vector(1 downto 0);
signal excY :  std_logic_vector(1 downto 0);
signal signX :  std_logic;
signal signY :  std_logic;
signal EffSub :  std_logic;
signal sXsYExnXY :  std_logic_vector(5 downto 0);
signal sdExnXY :  std_logic_vector(3 downto 0);
signal fracY :  std_logic_vector(10 downto 0);
signal excRt :  std_logic_vector(1 downto 0);
signal signR :  std_logic;
signal expDiff :  std_logic_vector(5 downto 0);
signal shiftedOut :  std_logic;
signal shiftVal :  std_logic_vector(3 downto 0);
signal shiftedFracY :  std_logic_vector(23 downto 0);
signal sticky :  std_logic;
signal fracYfar :  std_logic_vector(13 downto 0);
signal EffSubVector :  std_logic_vector(13 downto 0);
signal fracYfarXorOp :  std_logic_vector(13 downto 0);
signal fracXfar :  std_logic_vector(13 downto 0);
signal cInAddFar :  std_logic;
signal fracAddResult :  std_logic_vector(13 downto 0);
signal fracGRS :  std_logic_vector(14 downto 0);
signal extendedExpInc :  std_logic_vector(6 downto 0);
signal nZerosNew :  std_logic_vector(3 downto 0);
signal shiftedFrac :  std_logic_vector(14 downto 0);
signal updatedExp :  std_logic_vector(6 downto 0);
signal eqdiffsign :  std_logic;
signal expFrac :  std_logic_vector(17 downto 0);
signal stk :  std_logic;
signal rnd :  std_logic;
signal grd :  std_logic;
signal lsb :  std_logic;
signal addToRoundBit :  std_logic;
signal RoundedExpFrac :  std_logic_vector(17 downto 0);
signal upExc :  std_logic_vector(1 downto 0);
signal fracR :  std_logic_vector(9 downto 0);
signal expR :  std_logic_vector(4 downto 0);
signal exExpExc :  std_logic_vector(3 downto 0);
signal excRt2 :  std_logic_vector(1 downto 0);
signal excR :  std_logic_vector(1 downto 0);
signal signR2 :  std_logic;
signal computedR :  std_logic_vector(17 downto 0);
begin
-- Exponent difference and swap  --
   excExpFracX <= X(17 downto 16) & X(14 downto 0);
   excExpFracY <= Y(17 downto 16) & Y(14 downto 0);
   eXmeY <= ("0" & X(14 downto 10)) - ("0" & Y(14 downto 10));
   eYmeX <= ("0" & Y(14 downto 10)) - ("0" & X(14 downto 10));
   swap <= '0' when excExpFracX >= excExpFracY else '1';
   newX <= X when swap = '0' else Y;
   newY <= Y when swap = '0' else X;
   expX<= newX(14 downto 10);
   excX<= newX(17 downto 16);
   excY<= newY(17 downto 16);
   signX<= newX(15);
   signY<= newY(15);
   EffSub <= signX xor signY;
   sXsYExnXY <= signX & signY & excX & excY;
   sdExnXY <= excX & excY;
   fracY <= "00000000000" when excY="00" else ('1' & newY(9 downto 0));
   with sXsYExnXY select 
   excRt <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "111010"|"001010"|"001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110", 
      "11" when others;
   signR<= '0' when (sXsYExnXY="100000" or sXsYExnXY="010000") else signX;
   expDiff <= eXmeY when swap = '0' else eYmeX;
   shiftedOut <= '1' when (expDiff > 12) else '0';
   shiftVal <= expDiff(3 downto 0) when shiftedOut='0' else CONV_STD_LOGIC_VECTOR(13,4) ;
   RightShifterComponent: RightShifter_11_by_max_13_comb_uid4
      port map ( R => shiftedFracY,
                 S => shiftVal,
                 X => fracY);
   sticky <= '0' when (shiftedFracY(10 downto 0)=CONV_STD_LOGIC_VECTOR(0,11)) else '1';
   fracYfar <= "0" & shiftedFracY(23 downto 11);
   EffSubVector <= (13 downto 0 => EffSub);
   fracYfarXorOp <= fracYfar xor EffSubVector;
   fracXfar <= "01" & (newX(9 downto 0)) & "00";
   cInAddFar <= EffSub and not sticky;
   fracAdder: IntAdder_14_f400_uid8
      port map ( Cin => cInAddFar,
                 R => fracAddResult,
                 X => fracXfar,
                 Y => fracYfarXorOp);
   fracGRS<= fracAddResult & sticky; 
   extendedExpInc<= ("00" & expX) + '1';
   LZC_component: LZCShifter_15_to_15_counting_16_comb_uid16
      port map ( Count => nZerosNew,
                 I => fracGRS,
                 O => shiftedFrac);
   updatedExp <= extendedExpInc - ("000" & nZerosNew);
   eqdiffsign <= '1' when nZerosNew="1111" else '0';
   expFrac<= updatedExp & shiftedFrac(13 downto 3);
   stk<= shiftedFrac(1) or shiftedFrac(0);
   rnd<= shiftedFrac(2);
   grd<= shiftedFrac(3);
   lsb<= shiftedFrac(4);
   addToRoundBit<= '0' when (lsb='0' and grd='1' and rnd='0' and stk='0')  else '1';
   roundingAdder: IntAdder_18_f400_uid20
      port map ( Cin => addToRoundBit,
                 R => RoundedExpFrac,
                 X => expFrac,
                 Y => "000000000000000000");
   upExc <= RoundedExpFrac(17 downto 16);
   fracR <= RoundedExpFrac(10 downto 1);
   expR <= RoundedExpFrac(15 downto 11);
   exExpExc <= upExc & excRt;
   with (exExpExc) select 
   excRt2<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"1010"|"1110"|"0101",
      "11" when others;
   excR <= "00" when (eqdiffsign='1' and EffSub='1' and not(excRt="11")) else excRt2;
   signR2 <= '0' when (eqdiffsign='1' and EffSub='1') else signR;
   computedR <= excR & signR2 & expR & fracR;
   R <= computedR;
end architecture;

--------------------------------------------------------------------------------
--                    TestBench_tb_top_fpu_add_comb_uid28
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

entity TestBench_tb_top_fpu_add_comb_uid28 is
end entity;

architecture behavorial of TestBench_tb_top_fpu_add_comb_uid28 is
   component tb_top_fpu_add is
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
   test: tb_top_fpu_add
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
      X <= "010011110000000000"; 
      Y <= "011011110000000000"; 
      wait for 10 ns;
      X <= "010011110000000000"; 
      Y <= "000001111011111011"; 
      wait for 10 ns;
      X <= "010011110000000000"; 
      Y <= "001101111110110000"; 
      wait for 10 ns;
      X <= "100010010001100010"; 
      Y <= "101101110011110000"; 
      wait for 10 ns;
      X <= "100101111010111110"; 
      Y <= "100001110001111110"; 
      wait for 10 ns;
      X <= "101011000111010011"; 
      Y <= "101101011000010110"; 
      wait for 10 ns;
      X <= "011101000101111000"; 
      Y <= "010101000101111000"; 
      wait for 10 ns;
      X <= "010011110000000000"; 
      Y <= "011000111000000000"; 
      wait for 10 ns;
      X <= "010001010010000111"; 
      Y <= "011001010101010011"; 
      wait for 10 ns;
      X <= "011111111110110110"; 
      Y <= "010111101100111111"; 
      wait for 10 ns;
      X <= "011000000111110001"; 
      Y <= "010000010001101101"; 
      wait for 10 ns;
      X <= "010101000101101010"; 
      Y <= "011001010111100101"; 
      wait for 10 ns;
      X <= "011110010000001101"; 
      Y <= "010011111011011001"; 
      wait for 10 ns;
      X <= "010010011000111000"; 
      Y <= "010011000110001001"; 
      wait for 10 ns;
      X <= "010101010001011101"; 
      Y <= "010110101110100110"; 
      wait for 10 ns;
      X <= "101101110100110011"; 
      Y <= "110011011111001010"; 
      wait for 10 ns;
      X <= "011011101000010000"; 
      Y <= "010011100110110100"; 
      wait for 10 ns;
      X <= "011101111000100000"; 
      Y <= "010101101111011100"; 
      wait for 10 ns;
      X <= "011000000100000110"; 
      Y <= "011111111000001011"; 
      wait for 10 ns;
      X <= "010110001010110111"; 
      Y <= "011010100010001000"; 
      wait for 10 ns;
      X <= "100000111000010001"; 
      Y <= "010101110101010101"; 
      wait for 10 ns;
      X <= "010101010000000101"; 
      Y <= "010001111100010001"; 
      wait for 10 ns;
      X <= "010000101001101111"; 
      Y <= "010000100001011001"; 
      wait for 10 ns;
      X <= "110001000101111001"; 
      Y <= "000110101111001111"; 
      wait for 10 ns;
      X <= "011011000000001111"; 
      Y <= "010011000001100101"; 
      wait for 10 ns;
      X <= "010000000101100010"; 
      Y <= "011000010001001011"; 
      wait for 10 ns;
      X <= "010010010110111011"; 
      Y <= "011010001001011010"; 
      wait for 10 ns;
      X <= "011110000100010001"; 
      Y <= "011001110001111011"; 
      wait for 10 ns;
      wait for 100000 ns; -- allow simulation to finish
   end process;

   -- Checking the outputs
   process
   begin
      wait for 10 ns; -- wait for reset to complete
      wait for 2 ns; -- wait for pipeline to flush
      -- current time: 12
      -- input: X <= "010011110000000000"; 
      -- input: Y <= "011011110000000000"; 
      assert false or fp_equal(R,fp18'("000000000000000000")) report "Incorrect output value for R, expected 000000000000000000 | Test Number : 0  " severity ERROR; 
      wait for 10 ns;
      -- current time: 22
      -- input: X <= "010011110000000000"; 
      -- input: Y <= "000001111011111011"; 
      assert false or fp_equal(R,fp18'("010011110000000000")) report "Incorrect output value for R, expected 010011110000000000 | Test Number : 1  " severity ERROR; 
      wait for 10 ns;
      -- current time: 32
      -- input: X <= "010011110000000000"; 
      -- input: Y <= "001101111110110000"; 
      assert false or fp_equal(R,fp18'("010011110000000000")) report "Incorrect output value for R, expected 010011110000000000 | Test Number : 2  " severity ERROR; 
      wait for 10 ns;
      -- current time: 42
      -- input: X <= "100010010001100010"; 
      -- input: Y <= "101101110011110000"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 3  " severity ERROR; 
      wait for 10 ns;
      -- current time: 52
      -- input: X <= "100101111010111110"; 
      -- input: Y <= "100001110001111110"; 
      assert false or fp_equal(R,fp18'("100000000000000000")) report "Incorrect output value for R, expected 100000000000000000 | Test Number : 4  " severity ERROR; 
      wait for 10 ns;
      -- current time: 62
      -- input: X <= "101011000111010011"; 
      -- input: Y <= "101101011000010110"; 
      assert false or fp_equal(R,fp18'("101000000000000000")) report "Incorrect output value for R, expected 101000000000000000 | Test Number : 5  " severity ERROR; 
      wait for 10 ns;
      -- current time: 72
      -- input: X <= "011101000101111000"; 
      -- input: Y <= "010101000101111000"; 
      assert false or fp_equal(R,fp18'("000000000000000000")) report "Incorrect output value for R, expected 000000000000000000 | Test Number : 6  " severity ERROR; 
      wait for 10 ns;
      -- current time: 82
      -- input: X <= "010011110000000000"; 
      -- input: Y <= "011000111000000000"; 
      assert false or fp_equal(R,fp18'("010011101111111111")) report "Incorrect output value for R, expected 010011101111111111 | Test Number : 7  " severity ERROR; 
      wait for 10 ns;
      -- current time: 92
      -- input: X <= "010001010010000111"; 
      -- input: Y <= "011001010101010011"; 
      assert false or fp_equal(R,fp18'("011000101001100000")) report "Incorrect output value for R, expected 011000101001100000 | Test Number : 8  " severity ERROR; 
      wait for 10 ns;
      -- current time: 102
      -- input: X <= "011111111110110110"; 
      -- input: Y <= "010111101100111111"; 
      assert false or fp_equal(R,fp18'("011111110000010110")) report "Incorrect output value for R, expected 011111110000010110 | Test Number : 9  " severity ERROR; 
      wait for 10 ns;
      -- current time: 112
      -- input: X <= "011000000111110001"; 
      -- input: Y <= "010000010001101101"; 
      assert false or fp_equal(R,fp18'("000000000000000000")) report "Incorrect output value for R, expected 000000000000000000 | Test Number : 10  " severity ERROR; 
      wait for 10 ns;
      -- current time: 122
      -- input: X <= "010101000101101010"; 
      -- input: Y <= "011001010111100101"; 
      assert false or fp_equal(R,fp18'("010101000101101010")) report "Incorrect output value for R, expected 010101000101101010 | Test Number : 11  " severity ERROR; 
      wait for 10 ns;
      -- current time: 132
      -- input: X <= "011110010000001101"; 
      -- input: Y <= "010011111011011001"; 
      assert false or fp_equal(R,fp18'("011110010000001011")) report "Incorrect output value for R, expected 011110010000001011 | Test Number : 12  " severity ERROR; 
      wait for 10 ns;
      -- current time: 142
      -- input: X <= "010010011000111000"; 
      -- input: Y <= "010011000110001001"; 
      assert false or fp_equal(R,fp18'("010011001001010000")) report "Incorrect output value for R, expected 010011001001010000 | Test Number : 13  " severity ERROR; 
      wait for 10 ns;
      -- current time: 152
      -- input: X <= "010101010001011101"; 
      -- input: Y <= "010110101110100110"; 
      assert false or fp_equal(R,fp18'("010110101111001001")) report "Incorrect output value for R, expected 010110101111001001 | Test Number : 14  " severity ERROR; 
      wait for 10 ns;
      -- current time: 162
      -- input: X <= "101101110100110011"; 
      -- input: Y <= "110011011111001010"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 15  " severity ERROR; 
      wait for 10 ns;
      -- current time: 172
      -- input: X <= "011011101000010000"; 
      -- input: Y <= "010011100110110100"; 
      assert false or fp_equal(R,fp18'("011010100111000000")) report "Incorrect output value for R, expected 011010100111000000 | Test Number : 16  " severity ERROR; 
      wait for 10 ns;
      -- current time: 182
      -- input: X <= "011101111000100000"; 
      -- input: Y <= "010101101111011100"; 
      assert false or fp_equal(R,fp18'("011101100001100100")) report "Incorrect output value for R, expected 011101100001100100 | Test Number : 17  " severity ERROR; 
      wait for 10 ns;
      -- current time: 192
      -- input: X <= "011000000100000110"; 
      -- input: Y <= "011111111000001011"; 
      assert false or fp_equal(R,fp18'("011111111000001011")) report "Incorrect output value for R, expected 011111111000001011 | Test Number : 18  " severity ERROR; 
      wait for 10 ns;
      -- current time: 202
      -- input: X <= "010110001010110111"; 
      -- input: Y <= "011010100010001000"; 
      assert false or fp_equal(R,fp18'("010110001010110111")) report "Incorrect output value for R, expected 010110001010110111 | Test Number : 19  " severity ERROR; 
      wait for 10 ns;
      -- current time: 212
      -- input: X <= "100000111000010001"; 
      -- input: Y <= "010101110101010101"; 
      assert false or fp_equal(R,fp18'("100000000000000000")) report "Incorrect output value for R, expected 100000000000000000 | Test Number : 20  " severity ERROR; 
      wait for 10 ns;
      -- current time: 222
      -- input: X <= "010101010000000101"; 
      -- input: Y <= "010001111100010001"; 
      assert false or fp_equal(R,fp18'("010101010000000101")) report "Incorrect output value for R, expected 010101010000000101 | Test Number : 21  " severity ERROR; 
      wait for 10 ns;
      -- current time: 232
      -- input: X <= "010000101001101111"; 
      -- input: Y <= "010000100001011001"; 
      assert false or fp_equal(R,fp18'("010000110101100100")) report "Incorrect output value for R, expected 010000110101100100 | Test Number : 22  " severity ERROR; 
      wait for 10 ns;
      -- current time: 242
      -- input: X <= "110001000101111001"; 
      -- input: Y <= "000110101111001111"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 23  " severity ERROR; 
      wait for 10 ns;
      -- current time: 252
      -- input: X <= "011011000000001111"; 
      -- input: Y <= "010011000001100101"; 
      assert false or fp_equal(R,fp18'("010010000101100000")) report "Incorrect output value for R, expected 010010000101100000 | Test Number : 24  " severity ERROR; 
      wait for 10 ns;
      -- current time: 262
      -- input: X <= "010000000101100010"; 
      -- input: Y <= "011000010001001011"; 
      assert false or fp_equal(R,fp18'("001000000000000000")) report "Incorrect output value for R, expected 001000000000000000 | Test Number : 25  " severity ERROR; 
      wait for 10 ns;
      -- current time: 272
      -- input: X <= "010010010110111011"; 
      -- input: Y <= "011010001001011010"; 
      assert false or fp_equal(R,fp18'("010010000100011100")) report "Incorrect output value for R, expected 010010000100011100 | Test Number : 26  " severity ERROR; 
      wait for 10 ns;
      -- current time: 282
      -- input: X <= "011110000100010001"; 
      -- input: Y <= "011001110001111011"; 
      assert false or fp_equal(R,fp18'("011110000100010001")) report "Incorrect output value for R, expected 011110000100010001 | Test Number : 27  " severity ERROR; 
      wait for 10 ns;
      assert false report "End of simulation" severity failure;
   end process;

end architecture;

