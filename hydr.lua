-- OpenTX Lua script
-- MIXES
-- Place this file in the SD Card folder on your computer and Tx
-- SD Card /SCRIPTS/MIXES/


-- Author: MisterCreator74	
-- Web: http://mistercreator.de

-- Version: 1.6
-- Date: 2022 December 09

-- Description

-- Simulates Hydraulic with a Servo motor.
-- E.g. Move the boom of an excavator with an servo.



-- Configuration

-- Custom Scripts Screen
-- Select this script and configure inputs.

-- Mixer Screen
-- Create a mix using one of Hyd1, Hyd2, Hyd3 or Hyd4 as input.
-- Change as desired



-- Variables -> Change 0 to the desired start Value
local HydroVar = 0				
local HydroVar2 = 0
local HydroVar3 = 0
local HydroVar4 = 0
local HydroVar5 = 0
local HydroVar6 = 0
local HydroVar7 = 0
local HydroVar8 = 0


-- Multiplier -> set lower for faster, more reactive Hydraulic; lower for slower, finer Hydraulic
local TheStickMultiplier = 0.05	


-- AVOID EDITING BELOW HERE
-- ----------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------

-- input Variables
local input = {
    {"Source 1", SOURCE}, 
	{"Source 2", SOURCE},
	{"Source 3", SOURCE},
	{"Source 4", SOURCE},
	{"Source 5", SOURCE}, 
	{"Source 6", SOURCE},
	{"Source 7", SOURCE},
	{"Source 8", SOURCE}
}



--output Variables
local output = { "Hyd1", "Hyd2", "Hyd3", "Hyd4", "Hyd5", "Hyd6", "Hyd7", "Hyd8"} 



-- drift comprehension
local function compare(x)
    return x >= (-5) and x <= (5)
end

local function run (Ip1, Ip2, Ip3, Ip4, Ip5, Ip6, Ip7, Ip8)

	if compare (Ip1) then
    Ip1 = 0 
  end
  
	if compare (Ip2) then
	Ip2 = 0 
  end
  
	if compare (Ip3) then
	Ip3 = 0 
  end
	
	if compare (Ip4) then
	Ip4 = 0 
  end
  
  	if compare (Ip5) then
    Ip1 = 0 
  end
  
	if compare (Ip6) then
	Ip2 = 0 
  end
  
	if compare (Ip7) then
	Ip3 = 0 
  end
	
	if compare (Ip8) then
	Ip4 = 0 
  end



-- Hydraulic computing	
	HydroVar = HydroVar + (Ip1 * TheStickMultiplier)
	HydroVar2 = HydroVar2 + (Ip2 * TheStickMultiplier)
	HydroVar3 = HydroVar3 + (Ip3 * TheStickMultiplier)
	HydroVar4 = HydroVar4 + (Ip4 * TheStickMultiplier)
	HydroVar5 = HydroVar5 + (Ip5 * TheStickMultiplier)
	HydroVar6 = HydroVar6 + (Ip6 * TheStickMultiplier)
	HydroVar7 = HydroVar7 + (Ip7 * TheStickMultiplier)
	HydroVar8 = HydroVar8 + (Ip8 * TheStickMultiplier)



-- 	check to don´t get out of range
    if HydroVar < -1024 then
    HydroVar = -1024
  end
	if HydroVar > 1024 then
    HydroVar = 1024
  end
  
  if HydroVar2 < -1024 then
    HydroVar2 = -1024
  end
	if HydroVar2 > 1024 then
    HydroVar2 = 1024
  end
  
  if HydroVar3 < -1024 then
    HydroVar3 = -1024
  end
	if HydroVar3 > 1024 then
    HydroVar3 = 1024
  end
  
  if HydroVar4 < -1024 then
    HydroVar4 = -1024
  end
	if HydroVar4 > 1024 then
    HydroVar4 = 1024
  end
  
    if HydroVar5 < -1024 then
    HydroVar5 = -1024
  end
	if HydroVar5 > 1024 then
    HydroVar5 = 1024
  end
  
    if HydroVar6 < -1024 then
    HydroVar6 = -1024
  end
	if HydroVar6 > 1024 then
    HydroVar6 = 1024
  end
  
    if HydroVar7 < -1024 then
    HydroVar7 = -1024
  end
	if HydroVar7 > 1024 then
    HydroVar7 = 1024
  end
  
    if HydroVar8 < -1024 then
    HydroVar8 = -1024
  end
	if HydroVar8 > 1024 then
    HydroVar8 = 1024
  end

  
    return HydroVar , HydroVar2, HydroVar3, HydroVar4, HydroVar5, HydroVar6, HydroVar7, HydroVar8
end

return { input=input, output=output, run=run }
