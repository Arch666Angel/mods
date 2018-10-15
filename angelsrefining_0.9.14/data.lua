--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.refining then angelsmods.refining = {} end

--TRIGGER CHECKS
if not angelsmods.trigger then angelsmods.trigger ={} end
angelsmods.refining.disable_ore_override = false
angelsmods.trigger.enable_auto_barreling = settings.startup["angels-enable-auto-barreling"].value
angelsmods.trigger.enable_hide_void = settings.startup["angels-enable-hide-void"].value

if not angelsmods.marathon then angelsmods.marathon = {} end
angelsmods.marathon.buildingmulti = settings.startup["angels-marathon-buildingmulti"].value
angelsmods.marathon.buildingtime = settings.startup["angels-marathon-buildingtime"].value
angelsmods.marathon.rawmulti = settings.startup["angels-marathon-rawmulti"].value
angelsmods.marathon.intermediatemulti = settings.startup["angels-marathon-intermediatemulti"].value

--LOAD FUNCTIONS
if not angelsmods.functions then angelsmods.functions = {} end
if angelsmods.functions then
	require("prototypes.angels-functions")
	angelsmods.functions.OV = require("prototypes.override-functions")
	angelsmods.functions.RB = require("prototypes.recipe-builder")
end

--LOAD PROTOTYPES	
if angelsmods.refining then
	require("prototypes.refining-category")
	
	require("prototypes.generation.angels-ore1")
	require("prototypes.generation.angels-ore2")
	require("prototypes.generation.angels-ore3")
	require("prototypes.generation.angels-ore4")
	require("prototypes.generation.angels-ore5")
	require("prototypes.generation.angels-ore6")
	require("prototypes.generation.angels-fissure")
	require("prototypes.generation.angels-crystal-rock")
		
	require("prototypes.buildings.pipes-overlay")
	require("prototypes.buildings.ore-crusher")
	require("prototypes.buildings.ore-sorting-facility")
	require("prototypes.buildings.ore-floatation-cell")
	require("prototypes.buildings.ore-leaching-plant")
	require("prototypes.buildings.ore-refinery")
	require("prototypes.buildings.powderizer")
	require("prototypes.buildings.electro-whinning-cell")	
	require("prototypes.buildings.crystallizer")
	require("prototypes.buildings.filtration-unit")
	require("prototypes.buildings.liquifier")
	require("prototypes.buildings.thermal-extractor")

	require("prototypes.buildings.hydro-plant")
	require("prototypes.buildings.salination-plant")
	require("prototypes.buildings.seafloor-pump")
	require("prototypes.buildings.washing-plant")
	require("prototypes.buildings.clarifier")
	require("prototypes.buildings.barreling-pump")
	
	require("prototypes.items.refining-ores")
	require("prototypes.items.refining-items")
	require("prototypes.items.water-treatment-items")
	
	require("prototypes.recipes.refining-static")
	require("prototypes.recipes.refining-dynamic")
	require("prototypes.recipes.refining-entity")
	
	require("prototypes.recipes.water-treatment-recipes")
	
	require("prototypes.technology.refining-technology")
	
	require("prototypes.technology.water-treatment-technology")
end

