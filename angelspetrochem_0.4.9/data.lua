--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.petrochem then angelsmods.petrochem = {} end

--TRIGGER CHECKS
if angelsmods.trigger and angelsmods.trigger.convertertrigger then
	angelsmods.petrochem.hideconverter = false
	else
	angelsmods.petrochem.hideconverter = true
end

if angelsmods.trigger and angelsmods.trigger.acidtrigger then
	angelsmods.petrochem.enableacids = false
	else
	angelsmods.petrochem.enableacids = true
end

--LOAD PROTOTYPES
if angelsmods.petrochem then	
	require("prototypes.petrochem-category")

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
	require("prototypes.buildings.fluid-splitter")
	require("prototypes.buildings.heavy-pump")

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