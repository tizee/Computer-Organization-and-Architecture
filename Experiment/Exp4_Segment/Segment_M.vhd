----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:34 05/25/2018 
-- Design Name: 
-- Module Name:    Segment_M - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Segment_M is
    Port ( R_Addr_A : in  STD_LOGIC;
           R_Addr_B : in  STD_LOGIC;
           Write_Reg : in  STD_LOGIC;
           W_Addr : in  STD_LOGIC;
           W_Data : in  STD_LOGIC;
           R_Data_A : out  STD_LOGIC;
           R_Data_B : out  STD_LOGIC);
end Segment_M;

architecture Behavioral of Segment_M is

begin


end Behavioral;

