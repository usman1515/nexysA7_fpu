--------------------------------------------------------------------------------
--                       SelFunctionTable_r4_comb_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Maxime Christ, Florent de Dinechin (2015)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
library work;
entity SelFunctionTable_r4_comb_uid4 is
   port ( X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of SelFunctionTable_r4_comb_uid4 is
signal TableOut :  std_logic_vector(2 downto 0);
begin
  with X select TableOut <= 
   "000" when "00000",
   "000" when "00001",
   "001" when "00010",
   "001" when "00011",
   "010" when "00100",
   "001" when "00101",
   "011" when "00110",
   "010" when "00111",
   "011" when "01000",
   "011" when "01001",
   "011" when "01010",
   "011" when "01011",
   "011" when "01100",
   "011" when "01101",
   "011" when "01110",
   "011" when "01111",
   "101" when "10000",
   "101" when "10001",
   "101" when "10010",
   "101" when "10011",
   "101" when "10100",
   "101" when "10101",
   "101" when "10110",
   "101" when "10111",
   "101" when "11000",
   "110" when "11001",
   "110" when "11010",
   "110" when "11011",
   "111" when "11100",
   "111" when "11101",
   "111" when "11110",
   "111" when "11111",
   "---" when others;
    Y <= TableOut;
end architecture;

--------------------------------------------------------------------------------
--                               tb_top_fpu_div
--                           (FPDiv_5_10_comb_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Maxime Christ, Florent de Dinechin (2015)
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity tb_top_fpu_div is
   port ( X : in  std_logic_vector(5+10+2 downto 0);
          Y : in  std_logic_vector(5+10+2 downto 0);
          R : out  std_logic_vector(5+10+2 downto 0)   );
end entity;

architecture arch of tb_top_fpu_div is
   component SelFunctionTable_r4_comb_uid4 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(2 downto 0)   );
   end component;

signal fX :  std_logic_vector(10 downto 0);
signal fY :  std_logic_vector(10 downto 0);
signal expR0 :  std_logic_vector(6 downto 0);
signal sR :  std_logic;
signal exnXY :  std_logic_vector(3 downto 0);
signal exnR0 :  std_logic_vector(1 downto 0);
signal fYTimes3 :  std_logic_vector(12 downto 0);
signal w7 :  std_logic_vector(12 downto 0);
signal sel7 :  std_logic_vector(4 downto 0);
signal q7 :  std_logic_vector(2 downto 0);
signal q7D :  std_logic_vector(13 downto 0);
signal w7pad :  std_logic_vector(13 downto 0);
signal w6full :  std_logic_vector(13 downto 0);
signal w6 :  std_logic_vector(12 downto 0);
signal sel6 :  std_logic_vector(4 downto 0);
signal q6 :  std_logic_vector(2 downto 0);
signal q6D :  std_logic_vector(13 downto 0);
signal w6pad :  std_logic_vector(13 downto 0);
signal w5full :  std_logic_vector(13 downto 0);
signal w5 :  std_logic_vector(12 downto 0);
signal sel5 :  std_logic_vector(4 downto 0);
signal q5 :  std_logic_vector(2 downto 0);
signal q5D :  std_logic_vector(13 downto 0);
signal w5pad :  std_logic_vector(13 downto 0);
signal w4full :  std_logic_vector(13 downto 0);
signal w4 :  std_logic_vector(12 downto 0);
signal sel4 :  std_logic_vector(4 downto 0);
signal q4 :  std_logic_vector(2 downto 0);
signal q4D :  std_logic_vector(13 downto 0);
signal w4pad :  std_logic_vector(13 downto 0);
signal w3full :  std_logic_vector(13 downto 0);
signal w3 :  std_logic_vector(12 downto 0);
signal sel3 :  std_logic_vector(4 downto 0);
signal q3 :  std_logic_vector(2 downto 0);
signal q3D :  std_logic_vector(13 downto 0);
signal w3pad :  std_logic_vector(13 downto 0);
signal w2full :  std_logic_vector(13 downto 0);
signal w2 :  std_logic_vector(12 downto 0);
signal sel2 :  std_logic_vector(4 downto 0);
signal q2 :  std_logic_vector(2 downto 0);
signal q2D :  std_logic_vector(13 downto 0);
signal w2pad :  std_logic_vector(13 downto 0);
signal w1full :  std_logic_vector(13 downto 0);
signal w1 :  std_logic_vector(12 downto 0);
signal sel1 :  std_logic_vector(4 downto 0);
signal q1 :  std_logic_vector(2 downto 0);
signal q1D :  std_logic_vector(13 downto 0);
signal w1pad :  std_logic_vector(13 downto 0);
signal w0full :  std_logic_vector(13 downto 0);
signal w0 :  std_logic_vector(12 downto 0);
signal q0 :  std_logic_vector(2 downto 0);
signal qP7 :  std_logic_vector(1 downto 0);
signal qM7 :  std_logic_vector(1 downto 0);
signal qP6 :  std_logic_vector(1 downto 0);
signal qM6 :  std_logic_vector(1 downto 0);
signal qP5 :  std_logic_vector(1 downto 0);
signal qM5 :  std_logic_vector(1 downto 0);
signal qP4 :  std_logic_vector(1 downto 0);
signal qM4 :  std_logic_vector(1 downto 0);
signal qP3 :  std_logic_vector(1 downto 0);
signal qM3 :  std_logic_vector(1 downto 0);
signal qP2 :  std_logic_vector(1 downto 0);
signal qM2 :  std_logic_vector(1 downto 0);
signal qP1 :  std_logic_vector(1 downto 0);
signal qM1 :  std_logic_vector(1 downto 0);
signal qP0 :  std_logic_vector(1 downto 0);
signal qM0 :  std_logic_vector(1 downto 0);
signal qP :  std_logic_vector(15 downto 0);
signal qM :  std_logic_vector(15 downto 0);
signal fR0 :  std_logic_vector(15 downto 0);
signal fR :  std_logic_vector(13 downto 0);
signal fRn1 :  std_logic_vector(11 downto 0);
signal expR1 :  std_logic_vector(6 downto 0);
signal round :  std_logic;
signal expfrac :  std_logic_vector(16 downto 0);
signal expfracR :  std_logic_vector(16 downto 0);
signal exnR :  std_logic_vector(1 downto 0);
signal exnRfinal :  std_logic_vector(1 downto 0);
begin
   fX <= "1" & X(9 downto 0);
   fY <= "1" & Y(9 downto 0);
   -- exponent difference, sign and exception combination computed early, to have less bits to pipeline
   expR0 <= ("00" & X(14 downto 10)) - ("00" & Y(14 downto 10));
   sR <= X(15) xor Y(15);
   -- early exception handling 
   exnXY <= X(17 downto 16) & Y(17 downto 16);
   with exnXY select
      exnR0 <= 
         "01"  when "0101",                   -- normal
         "00"  when "0001" | "0010" | "0110", -- zero
         "10"  when "0100" | "1000" | "1001", -- overflow
         "11"  when others;                   -- NaN
    -- compute 3Y
   fYTimes3 <= ("00" & fY) + ("0" & fY & "0");
   w7 <=  "00" & fX;
   sel7 <= w7(12 downto 9) & fY(9);
   SelFunctionTable7: SelFunctionTable_r4_comb_uid4
      port map ( X => sel7,
                 Y => q7);

   with q7 select
      q7D <= 
         "000" & fY            when "001" | "111",
         "00" & fY & "0"       when "010" | "110",
         "0" & fYTimes3        when "011" | "101",
         (13 downto 0 => '0')  when others;

   w7pad <= w7 & "0";
   with q7(2) select
   w6full<= w7pad - q7D when '0',
         w7pad + q7D when others;

   w6 <= w6full(11 downto 0) & "0";
   sel6 <= w6(12 downto 9) & fY(9);
   SelFunctionTable6: SelFunctionTable_r4_comb_uid4
      port map ( X => sel6,
                 Y => q6);

   with q6 select
      q6D <= 
         "000" & fY            when "001" | "111",
         "00" & fY & "0"       when "010" | "110",
         "0" & fYTimes3        when "011" | "101",
         (13 downto 0 => '0')  when others;

   w6pad <= w6 & "0";
   with q6(2) select
   w5full<= w6pad - q6D when '0',
         w6pad + q6D when others;

   w5 <= w5full(11 downto 0) & "0";
   sel5 <= w5(12 downto 9) & fY(9);
   SelFunctionTable5: SelFunctionTable_r4_comb_uid4
      port map ( X => sel5,
                 Y => q5);

   with q5 select
      q5D <= 
         "000" & fY            when "001" | "111",
         "00" & fY & "0"       when "010" | "110",
         "0" & fYTimes3        when "011" | "101",
         (13 downto 0 => '0')  when others;

   w5pad <= w5 & "0";
   with q5(2) select
   w4full<= w5pad - q5D when '0',
         w5pad + q5D when others;

   w4 <= w4full(11 downto 0) & "0";
   sel4 <= w4(12 downto 9) & fY(9);
   SelFunctionTable4: SelFunctionTable_r4_comb_uid4
      port map ( X => sel4,
                 Y => q4);

   with q4 select
      q4D <= 
         "000" & fY            when "001" | "111",
         "00" & fY & "0"       when "010" | "110",
         "0" & fYTimes3        when "011" | "101",
         (13 downto 0 => '0')  when others;

   w4pad <= w4 & "0";
   with q4(2) select
   w3full<= w4pad - q4D when '0',
         w4pad + q4D when others;

   w3 <= w3full(11 downto 0) & "0";
   sel3 <= w3(12 downto 9) & fY(9);
   SelFunctionTable3: SelFunctionTable_r4_comb_uid4
      port map ( X => sel3,
                 Y => q3);

   with q3 select
      q3D <= 
         "000" & fY            when "001" | "111",
         "00" & fY & "0"       when "010" | "110",
         "0" & fYTimes3        when "011" | "101",
         (13 downto 0 => '0')  when others;

   w3pad <= w3 & "0";
   with q3(2) select
   w2full<= w3pad - q3D when '0',
         w3pad + q3D when others;

   w2 <= w2full(11 downto 0) & "0";
   sel2 <= w2(12 downto 9) & fY(9);
   SelFunctionTable2: SelFunctionTable_r4_comb_uid4
      port map ( X => sel2,
                 Y => q2);

   with q2 select
      q2D <= 
         "000" & fY            when "001" | "111",
         "00" & fY & "0"       when "010" | "110",
         "0" & fYTimes3        when "011" | "101",
         (13 downto 0 => '0')  when others;

   w2pad <= w2 & "0";
   with q2(2) select
   w1full<= w2pad - q2D when '0',
         w2pad + q2D when others;

   w1 <= w1full(11 downto 0) & "0";
   sel1 <= w1(12 downto 9) & fY(9);
   SelFunctionTable1: SelFunctionTable_r4_comb_uid4
      port map ( X => sel1,
                 Y => q1);

   with q1 select
      q1D <= 
         "000" & fY            when "001" | "111",
         "00" & fY & "0"       when "010" | "110",
         "0" & fYTimes3        when "011" | "101",
         (13 downto 0 => '0')  when others;

   w1pad <= w1 & "0";
   with q1(2) select
   w0full<= w1pad - q1D when '0',
         w1pad + q1D when others;

   w0 <= w0full(11 downto 0) & "0";
   q0(2 downto 0) <= "000" when  w0 = (12 downto 0 => '0')
                else w0(12) & "10";
   qP7 <=      q7(1 downto 0);
   qM7 <=      q7(2) & "0";
   qP6 <=      q6(1 downto 0);
   qM6 <=      q6(2) & "0";
   qP5 <=      q5(1 downto 0);
   qM5 <=      q5(2) & "0";
   qP4 <=      q4(1 downto 0);
   qM4 <=      q4(2) & "0";
   qP3 <=      q3(1 downto 0);
   qM3 <=      q3(2) & "0";
   qP2 <=      q2(1 downto 0);
   qM2 <=      q2(2) & "0";
   qP1 <=      q1(1 downto 0);
   qM1 <=      q1(2) & "0";
   qP0 <= q0(1 downto 0);
   qM0 <= q0(2)  & "0";
   qP <= qP7 & qP6 & qP5 & qP4 & qP3 & qP2 & qP1 & qP0;
   qM <= qM7(0) & qM6 & qM5 & qM4 & qM3 & qM2 & qM1 & qM0 & "0";
   fR0 <= qP - qM;
   fR <= fR0(15 downto 3)  & (fR0(2) or fR0(1));  -- even wF, fixing the round bit
   -- normalisation
   with fR(13) select
      fRn1 <= fR(12 downto 2) & (fR(1) or fR(0)) when '1',
              fR(11 downto 0)                    when others;
   expR1 <= expR0 + ("000" & (3 downto 1 => '1') & fR(13)); -- add back bias
   round <= fRn1(1) and (fRn1(2) or fRn1(0)); -- fRn1(0) is the sticky bit
   -- final rounding
   expfrac <= expR1 & fRn1(11 downto 2) ;
   expfracR <= expfrac + ((16 downto 1 => '0') & round);
   exnR <=      "00"  when expfracR(16) = '1'   -- underflow
           else "10"  when  expfracR(16 downto 15) =  "01" -- overflow
           else "01";      -- 00, normal case
   with exnR0 select
      exnRfinal <= 
         exnR   when "01", -- normal
         exnR0  when others;
   R <= exnRfinal & sR & expfracR(14 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                    TestBench_tb_top_fpu_div_comb_uid20
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

entity TestBench_tb_top_fpu_div_comb_uid20 is
end entity;

architecture behavorial of TestBench_tb_top_fpu_div_comb_uid20 is
   component tb_top_fpu_div is
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
   test: tb_top_fpu_div
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
      Y <= "000001111011111011"; 
      wait for 10 ns;
      X <= "001101111110110000"; 
      Y <= "100010010001100010"; 
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
      X <= "000100101001110011"; 
      Y <= "101101110110001001"; 
      wait for 10 ns;
      X <= "001110111101100010"; 
      Y <= "100000000101010101"; 
      wait for 10 ns;
      X <= "000100100001011101"; 
      Y <= "100110101110100101"; 
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
      -- input: Y <= "000001111011111011"; 
      assert false or fp_equal(R,fp18'("100000000000000000")) report "Incorrect output value for R, expected 100000000000000000 | Test Number : 0  " severity ERROR; 
      wait for 10 ns;
      -- current time: 22
      -- input: X <= "001101111110110000"; 
      -- input: Y <= "100010010001100010"; 
      assert false or fp_equal(R,fp18'("001000000000000000")) report "Incorrect output value for R, expected 001000000000000000 | Test Number : 1  " severity ERROR; 
      wait for 10 ns;
      -- current time: 32
      -- input: X <= "001000010101110111"; 
      -- input: Y <= "100100110011110000"; 
      assert false or fp_equal(R,fp18'("001000000000000000")) report "Incorrect output value for R, expected 001000000000000000 | Test Number : 2  " severity ERROR; 
      wait for 10 ns;
      -- current time: 42
      -- input: X <= "110011101011010111"; 
      -- input: Y <= "100000011010111110"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 3  " severity ERROR; 
      wait for 10 ns;
      -- current time: 52
      -- input: X <= "010111111101000111"; 
      -- input: Y <= "110101010001111110"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 4  " severity ERROR; 
      wait for 10 ns;
      -- current time: 62
      -- input: X <= "001110101011001100"; 
      -- input: Y <= "101001010111010011"; 
      assert false or fp_equal(R,fp18'("000000000000000000")) report "Incorrect output value for R, expected 000000000000000000 | Test Number : 5  " severity ERROR; 
      wait for 10 ns;
      -- current time: 72
      -- input: X <= "101100011001110101"; 
      -- input: Y <= "111111001000010110"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 6  " severity ERROR; 
      wait for 10 ns;
      -- current time: 82
      -- input: X <= "110101110111000101"; 
      -- input: Y <= "101010100010000111"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 7  " severity ERROR; 
      wait for 10 ns;
      -- current time: 92
      -- input: X <= "000010000101010011"; 
      -- input: Y <= "011000111011001000"; 
      assert false or fp_equal(R,fp18'("001000000000000000")) report "Incorrect output value for R, expected 001000000000000000 | Test Number : 8  " severity ERROR; 
      wait for 10 ns;
      -- current time: 102
      -- input: X <= "100101101001011110"; 
      -- input: Y <= "101000111100111111"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 9  " severity ERROR; 
      wait for 10 ns;
      -- current time: 112
      -- input: X <= "100111111110110110"; 
      -- input: Y <= "010001100101011111"; 
      assert false or fp_equal(R,fp18'("100000000000000000")) report "Incorrect output value for R, expected 100000000000000000 | Test Number : 10  " severity ERROR; 
      wait for 10 ns;
      -- current time: 122
      -- input: X <= "010000011110000000"; 
      -- input: Y <= "100111010111110001"; 
      assert false or fp_equal(R,fp18'("000000000000000000")) report "Incorrect output value for R, expected 000000000000000000 | Test Number : 11  " severity ERROR; 
      wait for 10 ns;
      -- current time: 132
      -- input: X <= "000001100001101101"; 
      -- input: Y <= "111101100101000000"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 12  " severity ERROR; 
      wait for 10 ns;
      -- current time: 142
      -- input: X <= "010011110001100101"; 
      -- input: Y <= "010111110111100101"; 
      assert false or fp_equal(R,fp18'("000000000000000000")) report "Incorrect output value for R, expected 000000000000000000 | Test Number : 13  " severity ERROR; 
      wait for 10 ns;
      -- current time: 152
      -- input: X <= "101111100110111111"; 
      -- input: Y <= "000110110101101010"; 
      assert false or fp_equal(R,fp18'("101000000000000000")) report "Incorrect output value for R, expected 101000000000000000 | Test Number : 14  " severity ERROR; 
      wait for 10 ns;
      -- current time: 162
      -- input: X <= "101101111000011011"; 
      -- input: Y <= "001110100000001111"; 
      assert false or fp_equal(R,fp18'("100000000000000000")) report "Incorrect output value for R, expected 100000000000000000 | Test Number : 15  " severity ERROR; 
      wait for 10 ns;
      -- current time: 172
      -- input: X <= "100100111011011001"; 
      -- input: Y <= "011001001101011010"; 
      assert false or fp_equal(R,fp18'("101000000000000000")) report "Incorrect output value for R, expected 101000000000000000 | Test Number : 16  " severity ERROR; 
      wait for 10 ns;
      -- current time: 182
      -- input: X <= "111100000000001101"; 
      -- input: Y <= "100110101100000111"; 
      assert false or fp_equal(R,fp18'("110000000000000000")) report "Incorrect output value for R, expected 110000000000000000 | Test Number : 17  " severity ERROR; 
      wait for 10 ns;
      -- current time: 192
      -- input: X <= "100001001110101001"; 
      -- input: Y <= "001100101000111000"; 
      assert false or fp_equal(R,fp18'("101000000000000000")) report "Incorrect output value for R, expected 101000000000000000 | Test Number : 18  " severity ERROR; 
      wait for 10 ns;
      -- current time: 202
      -- input: X <= "000100101001110011"; 
      -- input: Y <= "101101110110001001"; 
      assert false or fp_equal(R,fp18'("001000000000000000")) report "Incorrect output value for R, expected 001000000000000000 | Test Number : 19  " severity ERROR; 
      wait for 10 ns;
      -- current time: 212
      -- input: X <= "001110111101100010"; 
      -- input: Y <= "100000000101010101"; 
      assert false or fp_equal(R,fp18'("001000000000000000")) report "Incorrect output value for R, expected 001000000000000000 | Test Number : 20  " severity ERROR; 
      wait for 10 ns;
      -- current time: 222
      -- input: X <= "000100100001011101"; 
      -- input: Y <= "100110101110100101"; 
      assert false or fp_equal(R,fp18'("000000000000000000")) report "Incorrect output value for R, expected 000000000000000000 | Test Number : 21  " severity ERROR; 
      wait for 10 ns;
      assert false report "End of simulation" severity failure;
   end process;

end architecture;

