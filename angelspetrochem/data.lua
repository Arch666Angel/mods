--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.petrochem = angelsmods.petrochem or {}
angelsmods.petrochem.number_tint = {r = 1, g = 1, b = 1, a = 1}

--TRIGGER CHECKS
angelsmods.trigger = angelsmods.trigger or {}
--keep setting to trigger in here, other things in the triggers file
--CONVERTER RECIPES
angelsmods.trigger.enableconverter = settings.startup["angels-enable-converter"].value
angelsmods.trigger.hideconverter = settings.startup["angels-hide-converter"].value
--HIDE UNUSED BUILDINGS
angelsmods.trigger.disable_bobs_electrolysers = settings.startup["angels-disable-bobs-electrolysers"].value
angelsmods.trigger.disable_bobs_chemical_plants = settings.startup["angels-disable-bobs-chemical-plants"].value
angelsmods.trigger.disable_bobs_distilleries = settings.startup["angels-disable-bobs-distilleries"].value
angelsmods.trigger.disable_vanilla_chemical_plants = mods["bobplates"] and settings.startup["angels-disable-bobs-chemical-plants"].value or angelsmods.trigger.disable_bobs_chemical_plants
--OVERRIDE FOR REFINING
angelsmods.trigger.enableacids = settings.startup["angels-enable-acids"].value
--PETRO PRODUCS
require("prototypes.petrochem-triggers")

--LOAD PROTOTYPES
require("prototypes.petrochem-category")

require("prototypes.generation.angels-natural-gas")

require("prototypes.buildings.pipes-overlay")
require("prototypes.buildings.electrolyser")
require("prototypes.buildings.air-filter")
require("prototypes.buildings.chemical-plant")
require("prototypes.buildings.advanced-chemical-plant")
require("prototypes.buildings.gas-refinery")
require("prototypes.buildings.advanced-gas-refinery")
require("prototypes.buildings.separator")
require("prototypes.buildings.oil-refinery")
require("prototypes.buildings.steam-cracker")
require("prototypes.buildings.flare-stack")
require("prototypes.buildings.electric-boiler")
require("prototypes.buildings.valves")
require("prototypes.buildings.storage-tanks")
--require("prototypes.buildings.fluid-splitter")

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

require("prototypes.technology.petrochem-basics")
require("prototypes.technology.petrochem-basic-chemistry")
require("prototypes.technology.petrochem-petro-chemistry")
require("prototypes.technology.petrochem-solids")
require("prototypes.technology.petrochem-weaponary")

-- EXECUTE FUNCTIONS
angelsmods.functions.make_resource()
