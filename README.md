# OpenTX-Hydraulic-immitation

How to install?
download the hydr.lua
turn your OpenTX radio on and connect it to your PC
select "USB Memory (SD)" on your radio
copy the hydr.lua to "yourRadioDirectory(G:)\SCRIPTS\MIXES"
have fun using it
How to use?
press the Model Button on your remote
navigate to the Custom Scripts tab
select the "hydr" lua script
set at least one Input and check the corresponding output on the right site of the screen (Hyd1 - Hyd4)
navigate to the Mix tab
edit the channel mix and set the Hyd1 as channel source
What is this script for?
It is used to immitate Hydraulics with an Servo motor on Opentx without additional hardware. Therefore it basicly turns your joystick input into an slider. When you move the joystick the output value in- or decreases, but when the joystick is in center position it keeps the current value.

How does it work?
the Script needs at least one input value (Joystick) and can handle up to four joystick axles at the same time. It takes the input value of that specific axle and uses a multiplier to reduce the input value, then adds that input value to a variable which is the output.

