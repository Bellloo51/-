----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2026/11/07 20:49:22
-- Design Name: 
-- Module Name: compliment_g - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity compliment_g is
    Port ( B_in : in std_logic_vector;
           B_out : out std_logic_vector);
end compliment_g;

architecture Behavioral of compliment_g is

begin
    B_out(0) <= B_in(0) xor '1';
    B_out(1) <= B_in(1) xor '1';
    B_out(2) <= B_in(2) xor '1';
    B_out(3) <= B_in(3) xor '1';
end Behavioral;
