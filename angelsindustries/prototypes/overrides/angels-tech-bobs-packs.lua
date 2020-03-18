local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")
-------------------------------------------------------------------------------
-- BASE BOBS (MCI) ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods['bobplates'] then
	--Adds bobplates cores
	OV.set_science_pack("electrolysis-1", "datacore-processing-1", 2)
	OV.set_science_pack("grinding", "datacore-processing-1", 2)
	OV.set_science_pack("polishing", "datacore-processing-1", 2)
	OV.set_science_pack("mixing-steel-furnace", "datacore-processing-1", 2)
	OV.set_science_pack("gas-canisters", "datacore-processing-1", 2)
	OV.set_science_pack("electrolysis-2", "datacore-processing-1", 2)
	OV.set_science_pack("ceramics", "datacore-processing-2", 2)
	pack_replace("battery-2","blue","orange")
	pack_replace("gem-processing-2","blue","orange")
	OV.remove_science_pack("lubricant", "angels-science-pack-green")
	if not mods["bobtech"] then
		--alien resources
		pack_replace("alien-blue-research","yellow","blue")
		pack_replace("alien-orange-research","yellow","blue")
		pack_replace("alien-purple-research","yellow","blue")
		pack_replace("alien-yellow-research","yellow","blue")
		pack_replace("alien-green-research","yellow","blue")
		pack_replace("alien-red-research","yellow","blue")
	end
end
-------------------------------------------------------------------------------
-- BOB ASSMBLY ----------------------------------------------------------------
-------------------------------------------------------------------------------
if mods['bobassembly'] then
	--adds bobassembly stuffs
	--higher assembly
	pack_replace("automation-4","blue","orange")
	--chemplants
	if settings.startup["bobmods-assembly-chemicalplants"].value == true then
		OV.set_science_pack("chemical-plant-2", "datacore-processing-2", 2)
		OV.set_science_pack("chemical-plant-3", "datacore-processing-2", 2)
	end
	--oil-furnaces (and metal-mixing)
	if settings.startup["bobmods-assembly-oilfurnaces"] then
		OV.set_science_pack("oil-steel-furnace", "datacore-processing-1", 2)
		OV.set_science_pack("oil-mixing-steel-furnace", "datacore-processing-1", 2)
		OV.set_science_pack("oil-chemical-steel-furnace", "datacore-processing-1", 2)
	end
	if settings.startup["bobmods-assembly-multipurposefurnaces"] then
		OV.set_science_pack("multi-purpose-furnace-1", "datacore-processing-2", 2)
	end
	--electrolysers
	if settings.startup["bobmods-assembly-electrolysers"] then
		OV.set_science_pack("electrolyser-2", "datacore-processing-1", 2)
		OV.set_science_pack("electrolyser-3", "datacore-processing-2", 2)
	end
	--distillery
	if settings.startup["bobmods-assembly-distilleries"] then
		OV.set_science_pack("bob-distillery-2", "datacore-processing-1", 2)
		pack_replace("bob-distillery-3","blue","orange")
		OV.set_science_pack("bob-distillery-3", "datacore-processing-1", 2)
	end
	-----------------------------------------------------------------------------
	-- ADD ELECTRONIC RECIPES TO ELECTRONIC ASSMBLY -----------------------------
	-----------------------------------------------------------------------------
	if settings.startup["bobmods-assembly-electronicmachines"].value == true then
		--create list of recipes to add to the electronicmachines
		for _, elec in pairs({
			"copper-cable",
			"angels-wire-coil-copper-converting",
			"angels-wire-gold",
			"angels-wire-coil-gold-converting",
			"basic-platinated-copper-wire",
			"angels-wire-coil-platinum-converting",
			"basic-silvered-copper-wire",
			"angels-wire-coil-silver-converting",
			"basic-tinned-copper-wire",
			"angels-wire-coil-tin-converting",
			"angels-roll-solder-converting",
			"circuit-red-board",
			"circuit-green-board",
			"circuit-orange-board",
			"circuit-blue-board",
			--"circuit-yellow-board"
			"circuit-grey-board",
			"circuit-grey-board-alternative",
			"circuit-red",
			"circuit-green",
			"circuit-orange",
			"circuit-blue",
			"circuit-yellow",
			"circuit-grey",
			"circuit-red-loaded",
			"circuit-green-loaded",
			"circuit-orange-loaded",
			"circuit-blue-loaded",
			"circuit-yellow-loaded",
			"circuit-resistor",
			"circuit-transistor",
			"circuit-microchip",
			"circuit-transformer",
			"circuit-cpu"
		}) do
			data.raw.recipe[elec].category="electronics"
		end
	end
end
-------------------------------------------------------------------------------
-- BOBS GREENHOUSE ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods['bobgreenhouse'] then
	--adds bob greenhouse stuffs
	OV.set_science_pack("bob-greenhouse", "datacore-processing-1", 2)
	OV.set_science_pack("bob-fertiliser", "datacore-processing-1", 2)
end
--bob adjustable inserters automatically gets grabbed :D
-------------------------------------------------------------------------------
-- BOBS CLASSES ---------------------------------------------------------------
-------------------------------------------------------------------------------
if mods['bobclasses'] then
	--adds bob classes stuffs
	OV.set_science_pack("bodies", "datacore-enhance-2", 2)
end
-------------------------------------------------------------------------------
-- BOBS MINING ----------------------------------------------------------------
-------------------------------------------------------------------------------
if mods['bobmining'] then
	--adds bob classes stuffs
	--regular drills
	if settings.startup["bobmods-mining-miningdrills"].value == true then
		OV.set_science_pack("bob-drills-1", "datacore-processing-1", 2)
		OV.set_science_pack("bob-drills-2", "datacore-processing-1", 2)
		OV.set_science_pack("bob-drills-3", "datacore-processing-2", 2)
	end
	--area drills
	if settings.startup["bobmods-mining-areadrills"].value == true then
		OV.set_science_pack("bob-area-drills-1", "datacore-processing-1", 2)
		OV.set_science_pack("bob-area-drills-2", "datacore-processing-1", 2)
		OV.set_science_pack("bob-area-drills-3", "datacore-processing-2", 2)
	end
	--pumpjacks
	if settings.startup["bobmods-mining-pumpjacks"].value == true then
		OV.set_science_pack("bob-pumpjacks-1", "datacore-processing-1", 2)
		OV.set_science_pack("bob-pumpjacks-2", "datacore-processing-1", 2)
		OV.set_science_pack("bob-pumpjacks-3", "datacore-processing-1", 2)
	end
	--axe(s)
	if settings.startup["bobmods-mining-miningaxes"].value == true then
		pack_replace("steel-axe-4","blue","orange")
	end
end
if mods['bobmodules'] then
	core_replace("effect-transmission-2", "processing", "enhance")
	core_replace("effect-transmission-3", "processing", "enhance")
end
if mods['boblogistics'] then
	--adds bob logistics stuffs
	--basic-logistics
	pack_replace("logistics-0","red","grey")
	--repair packs
	OV.set_science_pack("bob-repair-pack-2", "datacore-enhance-1", 2)
	OV.set_science_pack("bob-repair-pack-3", "datacore-enhance-1", 2)
	OV.set_science_pack("bob-repair-pack-4", "datacore-enhance-1", 2)
	pack_replace("bob-repair-pack-4","green","blue")
	OV.set_science_pack("bob-repair-pack-5", "datacore-enhance-1", 2)
	pack_replace("bob-repair-pack-5","green","yellow")
	--toolbelts
	pack_replace("toolbelt-2","blue","orange")
	OV.set_science_pack("toolbelt-2", "datacore-enhance-1", 2)
	core_replace("toolbelt-3","processing","enhance")
	--modular roboports
  OV.set_science_pack("bob-robo-modular-1", "datacore-logistic-1", 2)
	pack_replace("bob-robo-modular-1","green","orange")
	pack_replace("bob-robo-modular-2","blue","orange")
	OV.set_science_pack("bob-robo-modular-2", "datacore-logistic-1", 2)
end
--bob ores stuffs automatically gets grabbed :D (may want to swap the nuclear stuff to power?)
--bob enemies recipes automatically gets grabbed :D
--bob electronics recipes automatically gets grabbed :D
if mods['bobwarfare'] then
	--adds bob warfare stuffs
  --turrets
	pack_replace("bob-plasma-turrets-3","blue","orange")
	pack_replace("bob-turrets-3","green","orange")
	pack_replace("bob-turrets-5","blue","yellow")
	pack_replace("bob-laser-turrets-2","green","orange")
	pack_replace("bob-plasma-turrets-2","green","orange")
	pack_replace("bob-sniper-turrets-2","blue","orange")
	if mods["angelsexploration"] then
		pack_replace("angels-rocket-turret","green","orange")
	end
  --laser rifles
	pack_replace("bob-laser-rifle","green","blue")
	pack_replace("bob-laser-rifle-ammo-1","green","blue")
	pack_replace("bob-laser-rifle-ammo-4","blue","yellow")
	pack_replace("bob-laser-rifle-ammo-5","blue","yellow")
	pack_replace("bob-laser-rifle-ammo-6","blue","yellow")
	--Drones/CombatBots
	pack_replace("bob-robot-gun-1","green","orange")
	pack_replace("bob-robot-gun-drones","green","orange")
	pack_replace("bob-robot-plasma-drones","green","orange")
	pack_replace("bob-robot-laser-drones","green","orange")
	pack_replace("bob-robot-flamethrower-drones","green","orange")
  --Rockets
	pack_replace("rocketry","green","orange")
	pack_replace("bob-rocket","green","orange")
  --radars
	OV.set_science_pack("radars", "datacore-exploration-1", 2)
	OV.set_science_pack("radars-2", "datacore-exploration-1", 2)
	OV.set_science_pack("radars-3", "datacore-exploration-1", 2)
	pack_replace("radars-4","blue","yellow")
	--mines
	OV.set_science_pack("poison-mine", "datacore-war-2", 2)
	OV.set_science_pack("slowdown-mine", "datacore-war-2", 2)
	OV.set_science_pack("distractor-mine", "datacore-war-2", 2)
	--small fixes
	pack_replace("follower-robot-count-1","green","orange")
	pack_replace("follower-robot-count-2","green","orange")
end
if mods['bobvehicleequipment'] then
	--adds bob vehicle equipment stuffs
	pack_replace("vehicle-roboport-equipment","green","orange")
	pack_replace("vehicle-roboport-modular-equipment-1","green","orange")
	pack_replace("vehicle-roboport-equipment","green","orange")
	pack_replace("vehicle-roboport-modular-equipment-1","green","orange")
	OV.set_science_pack("vehicle-roboport-modular-equipment-1", "datacore-enhance-1", 2)
	OV.set_science_pack("vehicle-roboport-modular-equipment-2", "datacore-enhance-2", 2)
	OV.set_science_pack("vehicle-roboport-modular-equipment-3", "datacore-enhance-2", 2)
	end
if mods['bobequipment'] then
	--adds bob personal equipment stuffs
	pack_replace("personal-roboport-equipment","green","orange")
	pack_replace("personal-roboport-modular-equipment-1","green","orange")
	pack_replace("exoskeleton-equipment","green","orange")
	pack_replace("solar-panel-equipment-2","green","orange")
	pack_replace("solar-panel-equipment-4","blue","yellow")
	OV.set_science_pack("personal-roboport-modular-equipment-1", "datacore-enhance-1", 2)
	OV.set_science_pack("personal-roboport-modular-equipment-2", "datacore-enhance-2", 2)
	OV.set_science_pack("personal-roboport-modular-equipment-3", "datacore-enhance-2", 2)
end
if mods['bobpower'] then
	--adds bob power stuffs
	if settings.startup["bobmods-power-solar"].value == true then
		pack_replace("bob-solar-energy-2","green","orange")
	end
	if settings.startup["bobmods-power-accumulators"].value == true then
		pack_replace("bob-electric-energy-accumulators-2","green","orange")
	end
	if settings.startup["bobmods-power-fluidgenerator"].value == true then
		pack_replace("fluid-generator-1","green","orange")
	end
	if settings.startup["bobmods-power-steam"].value == true then
		OV.set_science_pack("bob-steam-engine-2", "datacore-energy-1", 2)
		OV.set_science_pack("bob-steam-engine-3", "datacore-energy-1", 2)
		OV.set_science_pack("bob-steam-engine-4", "datacore-energy-2", 2)
		OV.set_science_pack("bob-steam-engine-5", "datacore-energy-2", 2)
		pack_replace("bob-steam-engine-3","green","orange")
		pack_replace("bob-steam-turbine-1","green","orange")
	end

end
if mods['bobrevamp'] then
	--adds bob revamp stuffs
	OV.set_science_pack("chemical-plant", "datacore-processing-1", 2)
	OV.set_science_pack("solid-fuel", "datacore-processing-1", 2)
	OV.set_science_pack("pumpjack", "datacore-processing-1", 2)
	if mods['bobpower'] then
		OV.set_science_pack("hydrazine-generator", "datacore-energy-2", 2)
	end
	pre_req_replace("turrets", "military", "angels-components-weapons-basic")
end
if mods['bobtech'] then
	data.raw.recipe["science-pack-gold"].ingredients=
	{
		{"angels-science-pack-blue",1},
		{"datacore-processing-2",1},
		{"datacore-enhance-2",1}
	}
	--adds bob revamp stuffs
	for rec_4tech in pairs(data.raw.technology) do
		--remove all advanced-logistics packs
		OV.remove_science_pack(rec_4tech, "advanced-logistic-science-pack")
		data.raw.recipe["advanced-logistic-science-pack"].hidden = true
		data.raw.tool["advanced-logistic-science-pack"].hidden = true
	end
end
OV.execute() ------------------------------------------------------------------
-- GLOBAL UPDATE TECHNOLOGY RESEARCH AMOUNT AND TIMES
tech_unlock_reset() -----------------------------------------------------------
OV.execute() ------------------------------------------------------------------
