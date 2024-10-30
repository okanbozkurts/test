-- This is a VHDL template for use with the BeMicro MAX 10 development kit    
-- It is used for showing the IO pin names and directions                     
-- Ver 0.1 10.07.2014                                                         

-- The signals below are documented in the BeMicro MAX 10 Getting Started     
-- User Guide.  Please refer to that document for additional information.     

-- NOTE: A Verilog version of this template is also provided with this design
-- example for users that prefer Verilog. This BeMicro_MAX10_top.vhd file
-- would need to be removed from the project and replaced with the
-- BeMicro_MAX10_top.v file to switch to the Verilog template.

-- The signals below are documented in the "BeMicro MAX 10 Getting Started
-- User Guide."  Please refer to that document for additional signal details.

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;

entity BeMicro_MAX10_top is
port(
	-- Clock ins, SYS_CLK = 50MHz, USER_CLK = 24MHz 
	SYS_CLK : in std_logic;
	USER_CLK : in std_logic;
	
	-- DAC, 12-bit, SPI interface (AD5681) 
	AD5681R_LDACn : out std_logic;
	AD5681R_RSTn : out std_logic;
	AD5681R_SCL : out std_logic;
	AD5681R_SDA : out std_logic;
	AD5681R_SYNCn : out std_logic;
	
	-- Temperature sensor, I2C interface (ADT7420) 
	ADT7420_CT : in std_logic;
	ADT7420_INT : in std_logic;
	ADT7420_SCL : inout std_logic;
	ADT7420_SDA : inout std_logic;
	
	-- Accelerometer, 3-Axis, SPI interface (ADXL362)
	ADXL362_CS : out std_logic;
	ADXL362_INT1 : in std_logic;
	ADXL362_INT2 : in std_logic;
	ADXL362_MISO : in std_logic;
	ADXL362_MOSI : out std_logic;
	ADXL362_SCLK : out std_logic;
	
	-- 8MB SDRAM, ISSI IS42S16400J-7TL SDRAM device 
	SDRAM_A : out std_logic_vector(12 downto 0);
	SDRAM_BA : out std_logic_vector(1 downto 0);
	SDRAM_CASn : out std_logic;
	SDRAM_CKE : out std_logic;
	SDRAM_CLK : out std_logic;
	SDRAM_CSn : out std_logic;
	SDRAM_DQ : inout std_logic_vector(15 downto 0);
	SDRAM_DQMH : out std_logic;
	SDRAM_DQML : out std_logic;
	SDRAM_RASn : out std_logic;
	SDRAM_WEn : out std_logic;
	
	-- Serial SPI Flash, 16Mbit, Micron M25P16-VMN6 
	SFLASH_ASDI : in std_logic;
	SFLASH_CSn : in std_logic;
	SFLASH_DATA : inout std_logic;
	SFLASH_DCLK : inout std_logic;
	
	-- MAX10 analog ins 
	AIN : in std_logic_vector(7 downto 0);
	
	-- pushbutton switch ins 
	PB : in std_logic_vector(4 downto 1);
	
	-- LED outs 
	USER_LED_0 : out std_logic;
	USER_LED_1 : out std_logic;
	USER_LED_2 : out std_logic;
	USER_LED_3 : out std_logic;
	USER_LED_4 : out std_logic;
	USER_LED_5 : out std_logic;
	USER_LED_6 : out std_logic;
	USER_LED_7 : out std_logic;
	
	-- BeMicro 80-pin Edge Connector  
	EG_P1 : inout std_logic;
	EG_P10 : inout std_logic;
	EG_P11 : inout std_logic;
	EG_P12 : inout std_logic;
	EG_P13 : inout std_logic;
	EG_P14 : inout std_logic;
	EG_P15 : inout std_logic;
	EG_P16 : inout std_logic;
	EG_P17 : inout std_logic;
	EG_P18 : inout std_logic;
	EG_P19 : inout std_logic;
	EG_P2 : inout std_logic;
	EG_P20 : inout std_logic;
	EG_P21 : inout std_logic;
	EG_P22 : inout std_logic;
	EG_P23 : inout std_logic;
	EG_P24 : inout std_logic;
	EG_P25 : inout std_logic;
	EG_P26 : inout std_logic;
	EG_P27 : inout std_logic;
	EG_P28 : inout std_logic;
	EG_P29 : inout std_logic;
	EG_P3 : inout std_logic;
	EG_P35 : inout std_logic;
	EG_P36 : inout std_logic;
	EG_P37 : inout std_logic;
	EG_P38 : inout std_logic;
	EG_P39 : inout std_logic;
	EG_P4 : inout std_logic;
	EG_P40 : inout std_logic;
	EG_P41 : inout std_logic;
	EG_P42 : inout std_logic;
	EG_P43 : inout std_logic;
	EG_P44 : inout std_logic;
	EG_P45 : inout std_logic;
	EG_P46 : inout std_logic;
	EG_P47 : inout std_logic;
	EG_P48 : inout std_logic;
	EG_P49 : inout std_logic;
	EG_P5 : inout std_logic;
	EG_P50 : inout std_logic;
	EG_P51 : inout std_logic;
	EG_P52 : inout std_logic;
	EG_P53 : inout std_logic;
	EG_P54 : inout std_logic;
	EG_P55 : inout std_logic;
	EG_P56 : inout std_logic;
	EG_P57 : inout std_logic;
	EG_P58 : inout std_logic;
	EG_P59 : inout std_logic;
	EG_P6 : inout std_logic;
	EG_P60 : inout std_logic;
	EG_P7 : inout std_logic;
	EG_P8 : inout std_logic;
	EG_P9 : inout std_logic;
	EXP_PRESENT : in std_logic;
	RESET_EXPn : out std_logic;
	
	-- Expansion headers (pair of 40-pin headers) 
	GPIO_01 : inout std_logic;
	GPIO_02 : inout std_logic;
	GPIO_03 : inout std_logic;
	GPIO_04 : inout std_logic;
	GPIO_05 : inout std_logic;
	GPIO_06 : inout std_logic;
	GPIO_07 : inout std_logic;
	GPIO_08 : inout std_logic;
	GPIO_09 : inout std_logic;
	GPIO_10 : inout std_logic;
	GPIO_11 : inout std_logic;
	GPIO_12 : inout std_logic;
	GPIO_A : inout std_logic;
	GPIO_B : inout std_logic;
	I2C_SCL : inout std_logic;
	I2C_SDA : inout std_logic;
	--The following group of GPIO_J3_* signals can be used as differential pair 
	--receivers as defined by some of the Terasic daughter card that are compatible 
	--with the pair of 40-pin expansion headers. To use the differential pairs, 
	--there are guidelines regarding neighboring pins that must be followed.  
	--Please refer to the "Using LVDS on the BeMicro MAX 10" document for details.
	GPIO_J3_15 : inout std_logic;
	GPIO_J3_16 : inout std_logic;
	GPIO_J3_17 : inout std_logic;
	GPIO_J3_18 : inout std_logic;
	GPIO_J3_19 : inout std_logic;
	GPIO_J3_20 : inout std_logic;
	GPIO_J3_21 : inout std_logic;
	GPIO_J3_22 : inout std_logic;
	GPIO_J3_23 : inout std_logic;
	GPIO_J3_24 : inout std_logic;
	GPIO_J3_25 : inout std_logic;
	GPIO_J3_26 : inout std_logic;
	GPIO_J3_27 : inout std_logic;
	GPIO_J3_28 : inout std_logic;
	GPIO_J3_31 : inout std_logic;
	GPIO_J3_32 : inout std_logic;
	GPIO_J3_33 : inout std_logic;
	GPIO_J3_34 : inout std_logic;
	GPIO_J3_35 : inout std_logic;
	GPIO_J3_36 : inout std_logic;
	GPIO_J3_37 : inout std_logic;
	GPIO_J3_38 : inout std_logic;
	GPIO_J3_39 : inout std_logic;
	GPIO_J3_40 : inout std_logic;
	--The following group of GPIO_J4_* signals can be used as true LVDS transmitters 
	--as defined by some of the Terasic daughter card that are compatible 
	--with the pair of 40-pin expansion headers. To use the differential pairs, 
	--there are guidelines regarding neighboring pins that must be followed.  
	--Please refer to the "Using LVDS on the BeMicro MAX 10" document for details.
	GPIO_J4_11 : inout std_logic;
	GPIO_J4_12 : inout std_logic;
	GPIO_J4_13 : inout std_logic;
	GPIO_J4_14 : inout std_logic;
	GPIO_J4_15 : inout std_logic;
	GPIO_J4_16 : inout std_logic;
	GPIO_J4_19 : inout std_logic;
	GPIO_J4_20 : inout std_logic;
	GPIO_J4_21 : inout std_logic;
	GPIO_J4_22 : inout std_logic;
	GPIO_J4_23 : inout std_logic;
	GPIO_J4_24 : inout std_logic;
	GPIO_J4_27 : inout std_logic;
	GPIO_J4_28 : inout std_logic;
	GPIO_J4_29 : inout std_logic;
	GPIO_J4_30 : inout std_logic;
	GPIO_J4_31 : inout std_logic;
	GPIO_J4_32 : inout std_logic;
	GPIO_J4_35 : inout std_logic;
	GPIO_J4_36 : inout std_logic;
	GPIO_J4_37 : inout std_logic;
	GPIO_J4_38 : inout std_logic;
	GPIO_J4_39 : inout std_logic;
	GPIO_J4_40 : inout std_logic;
	
	-- PMOD connectors 
	PMOD_A : inout std_logic_vector(3 downto 0);
	PMOD_B : inout std_logic_vector(3 downto 0);
	PMOD_C : inout std_logic_vector(3 downto 0);
	PMOD_D : inout std_logic_vector(3 downto 0)

);

end entity BeMicro_MAX10_top;

architecture arch of BeMicro_MAX10_top is

COMPONENT ADT7420 IS
GENERIC (
	CLKFREQ		: INTEGER := 500_000_000;
	I2C_BUS_CLK	: INTEGER := 400_000;
	DEVICE_ADDR	: STD_LOGIC_VECTOR(6 DOWNTO 0) := "1001011"
);
PORT ( 
	CLK 		: IN STD_LOGIC;
	RST_N 		: IN STD_LOGIC;
	SCL 		: INOUT STD_LOGIC;
	SDA 		: INOUT STD_LOGIC;
	INTERRUPT 	: OUT STD_LOGIC;
	TEMP 		: OUT STD_LOGIC_VECTOR (12 DOWNTO 0)
);
END COMPONENT;

COMPONENT clk_gen2 IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
	);
END COMPONENT;


COMPONENT i2c_actvity_indicator is
    Generic( 
        SIM : boolean := FALSE
    );
    Port ( 
        CLK     : in std_logic;
        RST     : in std_logic;
        SDA     : inout std_logic;
        SCL     : inout std_logic;
        LED_1   : out std_logic;      
        LED_2   : out std_logic;      
        LED_3   : out std_logic     
    );
end COMPONENT;

COMPONENT debounce IS
  GENERIC(
    clk_freq    : INTEGER := 24_000_000;  --system clock frequency in Hz
    stable_time : INTEGER := 10);         --time button must remain stable in ms
  PORT(
    clk     : IN  STD_LOGIC;  --input clock
    reset_n : IN  STD_LOGIC;  --asynchronous active low reset
    button  : IN  STD_LOGIC;  --input signal to be debounced
    result  : OUT STD_LOGIC); --debounced signal
END COMPONENT;


signal clk_50 : std_logic;
signal locked : std_logic;

signal rst	  : std_logic;
signal rst_n	  : std_logic;

signal temp   : STD_LOGIC_VECTOR (12 DOWNTO 0);
signal counter   : STD_LOGIC_VECTOR (11 DOWNTO 0) := (others =>'0');


begin

process(SYS_CLK)
	begin
	if rising_edge(SYS_CLK) then
		if counter < x"FFF" then
			counter <= counter + '1';
				rst <= '1';
		else
				rst <= '0';
		end if;
	end if;
end process;
	
	rst_n <= not rst;

i_ADT7420 : ADT7420 
PORT MAP ( 
	CLK 		 => SYS_CLK,    
	RST_N 	 => rst_n,
	SCL 		 => ADT7420_SCL,
	SDA 		 => ADT7420_SDA,
	INTERRUPT => open,
	TEMP 		 => temp
);



i_i2c_actvity_indicator : i2c_actvity_indicator 

    Port Map ( 
        CLK     => SYS_CLK,  
        RST     => rst,
        SDA     => ADT7420_SDA,
        SCL     => ADT7420_SCL,
        LED_1   => USER_LED_0,  
        LED_2   => USER_LED_1,  
        LED_3   => USER_LED_2  
    );

--	i_debouncer :	debouncer 
--  port map (
--    clk 	=> USER_CLK,  
--    rst  => rst,
--    switch => PB(1),
--    switch_debounced => USER_LED_7
--  );

  
  i_debounce : debounce 

  PORT MAP(
    clk     => SYS_CLK,  
    reset_n => rst_n,
    button  => PB(1),
    result  => USER_LED_7
  );
  
  
  
  USER_LED_6 <= not RST;
  
  
  
  


end architecture arch;