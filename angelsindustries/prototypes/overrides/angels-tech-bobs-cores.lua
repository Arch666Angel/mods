local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")

if mods['bobplates'] then
	if not mods["bobtech"] then
		core_replace("alien-blue-research","processing","war",2)
		core_replace("alien-orange-research","processing","war",2)
		core_replace("alien-purple-research","processing","war",2)
		core_replace("alien-yellow-research","processing","war",2)
		core_replace("alien-green-research","processing","war",2)
		core_replace("alien-red-research","processing","war",2)
	end
end
if mods['bobassembly'] then
end
if mods['bobgreenhouse'] then
end
if mods['bobclasses'] then
end
if mods['bobmining'] then
end
if mods['bobmodules'] then
	OV.remove_science_pack("effect-transmission-2", "datacore-processing-1")
	OV.remove_science_pack("effect-transmission-3", "datacore-processing-1")
	OV.remove_science_pack("speed-module", "angels-science-pack-orange")
	OV.remove_science_pack("effectivity-module", "angels-science-pack-orange")
	OV.remove_science_pack("productivity-module", "angels-science-pack-orange")
end
if mods['boblogistics'] then
	core_replace("logistics-0","logistic","basic",2)
	core_replace("toolbelt-3","processing","enhance",2)
	core_replace("toolbelt-4","processing","enhance",2)
	OV.remove_science_pack("toolbelt-4", "datacore-basic") --not sure what happened here...
	core_replace("toolbelt-5","processing","enhance",2)
	OV.remove_science_pack("toolbelt-5", "datacore-basic") --not sure what happened here...
	core_replace("bob-robo-modular-3","processing","logistic",2)
	core_replace("bob-robo-modular-4","processing","logistic",2)
end
if mods['bobwarfare'] then
	core_replace("bob-robot-gun-1","logistic","war")
	core_replace("radars-4","war","exploration")
end
if mods['bobvehicleequipment'] then
	core_replace("vehicle-roboport-modular-equipment-4","processing","enhance",2)
end
if mods['bobequipment'] then
	core_replace("personal-roboport-modular-equipment-4","processing","enhance",2)
end
if mods['bobpower'] then
	if settings.startup["bobmods-power-fluidgenerator"].value == true then
		core_replace("fluid-generator-1","logistic","energy")
		core_replace("fluid-generator-2","logistic","energy",2)
		core_replace("fluid-generator-3","logistic","energy",2)
		core_replace("fluid-reactor-1","logistic","energy")
		core_replace("fluid-reactor-2","logistic","energy",2)
		core_replace("fluid-reactor-3","logistic","energy",2)
	end
	if settings.startup["bobmods-power-steam"].value == true then
		OV.remove_science_pack("bob-steam-engine-5", "datacore-processing-1")
	end
end
if mods['bobrevamp'] then
	OV.remove_science_pack("hydrazine-generator", "datacore-processing-1")
end
if mods['bobtech'] then
	--Remove cores associated with advanced alien technologies
	--blue tier
	OV.remove_science_pack("bob-battery-equipment-4", "datacore-enhance-1")
	OV.remove_science_pack("bob-battery-equipment-5", "datacore-enhance-1")
	OV.remove_science_pack("bob-battery-equipment-6", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-battery-equipment-4", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-battery-equipment-5", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-battery-equipment-6", "datacore-enhance-1")
	OV.remove_science_pack("bob-energy-shield-equipment-4", "datacore-enhance-1")
	OV.remove_science_pack("bob-energy-shield-equipment-5", "datacore-enhance-1")
	OV.remove_science_pack("bob-energy-shield-equipment-6", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-energy-shield-equipment-4", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-energy-shield-equipment-5", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-energy-shield-equipment-6", "datacore-enhance-1")
  --yellow tier
	OV.remove_science_pack("bob-power-armor-3", "datacore-enhance-1")
	OV.remove_science_pack("bob-power-armor-4", "datacore-enhance-1")
	OV.remove_science_pack("bob-power-armor-5", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-fusion-cell-equipment-4", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-fusion-cell-equipment-5", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-fusion-cell-equipment-6", "datacore-enhance-1")
	OV.remove_science_pack("fusion-reactor-equipment-2", "datacore-enhance-1")
	OV.remove_science_pack("fusion-reactor-equipment-3", "datacore-enhance-1")
	OV.remove_science_pack("fusion-reactor-equipment-4", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-big-turret-equipment-4", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-big-turret-equipment-5", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-big-turret-equipment-6", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-fusion-reactor-equipment-4", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-fusion-reactor-equipment-5", "datacore-enhance-1")
	OV.remove_science_pack("vehicle-fusion-reactor-equipment-6", "datacore-enhance-1")
end
OV.execute()
-- now upgrade the cores to tier 2 and let them depend on the correct technology
core_tier_upgrade()
OV.execute()
-- GLOBAL UPDATE TECHNOLOGY RESEARCH AMOUNT AND TIMES
tech_unlock_reset()
OV.execute()
