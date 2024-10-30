## Generated SDC file "pwm_led.sdc"

## Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, the Altera Quartus II License Agreement,
## the Altera MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Altera and sold by Altera or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 14.0.2 Build 209 09/17/2014 SJ Full Version"

## DATE    "Tue Nov 25 10:28:32 2014"

##
## DEVICE  "10M08DAF484C8GES"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {SYS_CLK} -period 20.000 -waveform { 0.000 10.000 } [get_ports {SYS_CLK}]


#**************************************************************
# Create Generated Clock
#**************************************************************

#create_generated_clock -name {pwm_clk} -source [get_ports {SYS_CLK}] -duty_cycle 50.000 -multiply_by 1 -divide_by 50 -master_clock {SYS_CLK} [get_registers {pwm_clk}] 
#create_generated_clock -name {duty_cycle_clk} -source [get_ports {SYS_CLK}] -duty_cycle 50.000 -multiply_by 1 -divide_by 1000 -master_clock {SYS_CLK} [get_registers {duty_cycle_clk}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************
#
#set_clock_uncertainty -rise_from [get_clocks {duty_cycle_clk}] -rise_to [get_clocks {duty_cycle_clk}]  0.030  
#set_clock_uncertainty -rise_from [get_clocks {duty_cycle_clk}] -fall_to [get_clocks {duty_cycle_clk}]  0.030  
#set_clock_uncertainty -rise_from [get_clocks {duty_cycle_clk}] -rise_to [get_clocks {pwm_clk}]  0.030  
#set_clock_uncertainty -rise_from [get_clocks {duty_cycle_clk}] -fall_to [get_clocks {pwm_clk}]  0.030  
#set_clock_uncertainty -rise_from [get_clocks {duty_cycle_clk}] -rise_to [get_clocks {SYS_CLK}]  0.020  
#set_clock_uncertainty -rise_from [get_clocks {duty_cycle_clk}] -fall_to [get_clocks {SYS_CLK}]  0.020  
#set_clock_uncertainty -fall_from [get_clocks {duty_cycle_clk}] -rise_to [get_clocks {duty_cycle_clk}]  0.030  
#set_clock_uncertainty -fall_from [get_clocks {duty_cycle_clk}] -fall_to [get_clocks {duty_cycle_clk}]  0.030  
#set_clock_uncertainty -fall_from [get_clocks {duty_cycle_clk}] -rise_to [get_clocks {pwm_clk}]  0.030  
#set_clock_uncertainty -fall_from [get_clocks {duty_cycle_clk}] -fall_to [get_clocks {pwm_clk}]  0.030  
#set_clock_uncertainty -fall_from [get_clocks {duty_cycle_clk}] -rise_to [get_clocks {SYS_CLK}]  0.020  
#set_clock_uncertainty -fall_from [get_clocks {duty_cycle_clk}] -fall_to [get_clocks {SYS_CLK}]  0.020  
#set_clock_uncertainty -rise_from [get_clocks {pwm_clk}] -rise_to [get_clocks {pwm_clk}]  0.030  
#set_clock_uncertainty -rise_from [get_clocks {pwm_clk}] -fall_to [get_clocks {pwm_clk}]  0.030  
#set_clock_uncertainty -rise_from [get_clocks {pwm_clk}] -rise_to [get_clocks {SYS_CLK}]  0.020  
#set_clock_uncertainty -rise_from [get_clocks {pwm_clk}] -fall_to [get_clocks {SYS_CLK}]  0.020  
#set_clock_uncertainty -fall_from [get_clocks {pwm_clk}] -rise_to [get_clocks {pwm_clk}]  0.030  
#set_clock_uncertainty -fall_from [get_clocks {pwm_clk}] -fall_to [get_clocks {pwm_clk}]  0.030  
#set_clock_uncertainty -fall_from [get_clocks {pwm_clk}] -rise_to [get_clocks {SYS_CLK}]  0.020  
#set_clock_uncertainty -fall_from [get_clocks {pwm_clk}] -fall_to [get_clocks {SYS_CLK}]  0.020  
#set_clock_uncertainty -rise_from [get_clocks {SYS_CLK}] -rise_to [get_clocks {duty_cycle_clk}]  0.020  
#set_clock_uncertainty -rise_from [get_clocks {SYS_CLK}] -fall_to [get_clocks {duty_cycle_clk}]  0.020  
#set_clock_uncertainty -rise_from [get_clocks {SYS_CLK}] -rise_to [get_clocks {pwm_clk}]  0.020  
#set_clock_uncertainty -rise_from [get_clocks {SYS_CLK}] -fall_to [get_clocks {pwm_clk}]  0.020  
#set_clock_uncertainty -rise_from [get_clocks {SYS_CLK}] -rise_to [get_clocks {SYS_CLK}]  0.020  
#set_clock_uncertainty -rise_from [get_clocks {SYS_CLK}] -fall_to [get_clocks {SYS_CLK}]  0.020  
#set_clock_uncertainty -fall_from [get_clocks {SYS_CLK}] -rise_to [get_clocks {duty_cycle_clk}]  0.020  
#set_clock_uncertainty -fall_from [get_clocks {SYS_CLK}] -fall_to [get_clocks {duty_cycle_clk}]  0.020  
#set_clock_uncertainty -fall_from [get_clocks {SYS_CLK}] -rise_to [get_clocks {pwm_clk}]  0.020  
#set_clock_uncertainty -fall_from [get_clocks {SYS_CLK}] -fall_to [get_clocks {pwm_clk}]  0.020  
#set_clock_uncertainty -fall_from [get_clocks {SYS_CLK}] -rise_to [get_clocks {SYS_CLK}]  0.020  
#set_clock_uncertainty -fall_from [get_clocks {SYS_CLK}] -fall_to [get_clocks {SYS_CLK}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {SYS_CLK}]  0.000 [get_ports {PB[1]}]
set_input_delay -add_delay  -clock [get_clocks {SYS_CLK}]  0.000 [get_ports {PB[2]}]
set_input_delay -add_delay  -clock [get_clocks {SYS_CLK}]  0.000 [get_ports {SYS_CLK}]

set_input_delay -add_delay  -clock [get_clocks {SYS_CLK}]  0.000 [get_ports {ADT7420_SCL}]
set_input_delay -add_delay  -clock [get_clocks {SYS_CLK}]  0.000 [get_ports {ADT7420_SDA}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  1.000 [get_ports {USER_LED_0}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  1.000 [get_ports {USER_LED_1}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  1.000 [get_ports {USER_LED_2}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  1.000 [get_ports {USER_LED_3}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  1.000 [get_ports {USER_LED_4}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  1.000 [get_ports {USER_LED_5}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  1.000 [get_ports {USER_LED_6}]
set_output_delay -add_delay  -clock [get_clocks {SYS_CLK}]  1.000 [get_ports {USER_LED_7}]




#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

