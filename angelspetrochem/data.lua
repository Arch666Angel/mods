--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.petrochem then angelsmods.petrochem = {} end

--TRIGGER CHECKS
	if not angelsmods.trigger then angelsmods.trigger ={} end

	--CONVERTER RECIPES
	angelsmods.trigger.enableconverter = settings.startup["angels-enable-converter"].value
	angelsmods.trigger.hideconverter = settings.startup["angels-hide-converter"].value

	--ACID OVERRIDE FOR REFINING
	angelsmods.trigger.enableacids = settings.startup["angels-enable-acids"].value

--LOAD PROTOTYPES
if angelsmods.petrochem then
	require("prototypes.petrochem-category")

	require("prototypes.generation.angels-natural-gas")

	require("prototypes.buildings.pipes-overlay")
	require("prototypes.buildings.advanced-chemical-plant")
	require("prototypes.buildings.gas-refinery")
	require("prototypes.buildings.flare-stack")
	require("prototypes.buildings.steam-cracker")
	require("prototypes.buildings.separator")
	require("prototypes.buildings.electrolyser")
	require("prototypes.buildings.air-filter")
	require("prototypes.buildings.valves")
	require("prototypes.buildings.storage-tanks")
	require("prototypes.buildings.oil-refinery")
	require("prototypes.buildings.chemical-plant")
	--require("prototypes.buildings.fluid-splitter")
	require("prototypes.buildings.electric-boiler")

	require("prototypes.items.petrochem-basics")
	require("prototypes.items.petrochem-carbons")
	require("prototypes.items.petrochem-chlorine")
	require("prototypes.items.petrochem-nitrogen")
	require("prototypes.items.petrochem-raws")
	require("prototypes.items.petrochem-solids")
	require("prototypes.items.petrochem-sulfur")

	require("prototypes.recipes.petrochem-basics")
	require("prototypes.recipes.petrochem-carbons")
	require("prototypes.recipes.petrochem-nitrogen")
	require("prototypes.recipes.petrochem-solids")
	require("prototypes.recipes.petrochem-sodium")
	require("prototypes.recipes.petrochem-sulfur")
	require("prototypes.recipes.petrochem-chlorine")

	require("prototypes.recipes.petrochem-entity")

	require("prototypes.technology.petrochem-technology")
end

-- EXECUTE FUNCTIONS
angelsmods.functions.make_resource()
