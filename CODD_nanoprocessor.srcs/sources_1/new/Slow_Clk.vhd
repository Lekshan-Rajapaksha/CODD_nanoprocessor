----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2025 12:01:08
-- Design Name: 
-- Module Name: Slow_Clk - Behavioral
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY Slow_Clk IS
  PORT (
    Clk_in : IN STD_LOGIC;
    Clk_out : OUT STD_LOGIC);

END Slow_Clk;

ARCHITECTURE Behavioral OF Slow_Clk IS

  SIGNAL count : INTEGER := 1;
  SIGNAL Clk_status : STD_LOGIC := '0';

BEGIN

  PROCESS (Clk_in) BEGIN IF
    (rising_edge(Clk_in)) THEN
    count <= count + 1;
    IF (count = 5) THEN
      Clk_status <= NOT (Clk_status);
      Clk_out <= Clk_status;
      count <= 1;
    END IF;
  END IF;
END PROCESS;
END Behavioral;