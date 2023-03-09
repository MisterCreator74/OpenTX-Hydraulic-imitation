# OpenTX-Hydraulic-imitation
OpenTX main site: https://www.open-tx.org
This script is an expansion for opentx. It could maybe also work for edgetx but I cannot guarantee.

### What is this script for?
It is used for micromodeling, where you want to imitate hydraulics by servos in wheel loaders, excavators or other models without additional hardware.
When you move the joystick the output value in- or decreases, but when the joystick is in center position it keeps the current output value - so the servo always keeps the last position.


### How to install?
1. download the hydr.lua
2. turn your OpenTX radio on and connect it to your PC
3. select "USB Memory (SD)" on your radio
4. copy the hydr.lua to "yourRadioDirectory(G:)\SCRIPTS\MIXES"
5. have fun using it


### How to use?
1. press the Model Button on your remote
2. navigate to the Custom Scripts tab
3. select the "hydr" lua script
4. set at least one Input and check the corresponding output on the right site of the screen (Hyd1 - Hyd4)
5. navigate to the Mix tab
6. edit the channel mix and set the Hyd1 as channel source

### What can it do?
1. the script is able to simulate up to six individual hydraulic channels
2. it also supports a custom multiplier wich can be set with the global variable 8 on the remote itself

Default multiplier value: 0.05 -> set higher for faster, more reactive Hydraulic; lower for slower, finer Hydraulic. Applies to all six channels.


### How does it work?
the Script needs at least one input value (Joystick) and can handle up to four joystick axles at the same time. It takes the input value of that specific axle and uses a multiplier to reduce the input value, then adds that input value to a variable which is the output.

