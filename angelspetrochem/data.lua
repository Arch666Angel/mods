--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.petrochem = angelsmods.petrochem or {}
angelsmods.petrochem.number_tint = {r = 1, g = 1, b = 1, a = 1}

--TRIGGER CHECKS
angelsmods.trigger = angelsmods.trigger or {}

--CONVERTER RECIPES
angelsmods.trigger.enableconverter = settings.startup["angels-enable-converter"].value
angelsmods.trigger.hideconverter = settings.startup["angels-hide-converter"].value
--PETRO PRODUCS
angelsmods.trigger.plastic = true
angelsmods.trigger.resin = not (angelsmods.functions.is_special_vanilla() or (not mods["bobelectronics"]))
angelsmods.trigger.rubber = not (angelsmods.functions.is_special_vanilla() or (not mods["bobelectronics"]))
angelsmods.trigger.liquid_ferric_chloride_solution = not angelsmods.functions.is_special_vanilla()
angelsmods.trigger.liquid_cupric_chloride_solution = not angelsmods.functions.is_special_vanilla()
--HIDE UNUSED BUILDINGS
angelsmods.trigger.disable_bobs_electrolysers = settings.startup["angels-disable-bobs-electrolysers"].value
angelsmods.trigger.disable_bobs_chemical_plants = settings.startup["angels-disable-bobs-chemical-plants"].value
angelsmods.trigger.disable_vanilla_chemical_plants = mods["bobplates"] and settings.startup["angels-disable-bobs-chemical-plants"].value or angelsmods.trigger.disable_bobs_chemical_plants

--OVERRIDE FOR REFINING
angelsmods.trigger.enableacids = settings.startup["angels-enable-acids"].value
if mods["bobplates"] then
  angelsmods.trigger.ores["fluorite"] = true
elseif mods["angelsindustries"] then
  if -- overhaul enabled
    settings.startup["angels-enable-industries"].value or
    settings.startup["angels-enable-components"].value or
    settings.startup["angels-enable-tech"].value
  then
    angelsmods.trigger.ores["fluorite"] = true
  end
end

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
