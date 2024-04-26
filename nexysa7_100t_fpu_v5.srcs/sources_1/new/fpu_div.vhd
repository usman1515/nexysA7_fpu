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
--                                  fpu_div
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

entity fpu_div is
   port ( X : in  std_logic_vector(5+10+2 downto 0);
          Y : in  std_logic_vector(5+10+2 downto 0);
          R : out  std_logic_vector(5+10+2 downto 0)   );
end entity;

architecture arch of fpu_div is
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

