--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.petrochem = angelsmods.petrochem or {}
angelsmods.petrochem.number_tint = { r = 1, g = 1, b = 1, a = 1 }

--TRIGGER CHECKS
angelsmods.trigger = angelsmods.trigger or {}

--PETRO PRODUCS
angelsmods.trigger.plastic = true
angelsmods.trigger.resin = mods["bobelectronics"] and true or false
angelsmods.trigger.rubber = mods["bobelectronics"] or mods["bobplates"] and true or false
angelsmods.trigger.liquid_ferric_chloride_solution = mods["bobelectronics"] and true or false
angelsmods.trigger.liquid_cupric_chloride_solution = false
angelsmods.trigger.gas_ammonium_chloride = false
angelsmods.trigger.early_sulfuric_acid = false
angelsmods.trigger.gas_hydrogen_fluoride = settings.startup["angels-enable-acids"].value
  or (mods["angelsbioprocessing"] and true or false)
angelsmods.trigger.gas_acetone = angelsmods.trigger.resin
angelsmods.trigger.gas_urea = (mods["bobgreenhouse"] or angelsmods.trigger.resin) and true or false

--HIDE UNUSED BUILDINGS
angelsmods.trigger.disable_bobs_electrolysers = settings.startup["angels-disable-bobs-electrolysers"].value
angelsmods.trigger.disable_bobs_chemical_plants = settings.startup["angels-disable-bobs-chemical-plants"].value
angelsmods.trigger.disable_vanilla_chemical_plants = mods["bobplates"]
    and settings.startup["angels-disable-bobs-chemical-plants"].value
  or angelsmods.trigger.disable_bobs_chemical_plants

--OVERRIDE FOR REFINING
angelsmods.trigger.enableacids = settings.startup["angels-enable-acids"].value
angelsmods.trigger.ores["thorium"] = true
angelsmods.trigger.ores["uranium"] = true
angelsmods.trigger.slag = true
angelsmods.trigger.salt_production = true
angelsmods.trigger.water_greenyellow_waste = angelsmods.trigger.enableacids or mods["angelssmelting"]
angelsmods.trigger.water_green_waste = (
  angelsmods.trigger.enableacids or (mods["bobplates"] and data.raw.fluid["bob-deuterium"])
)
    and true
  or false

if mods["bobplates"] then
  angelsmods.trigger.ores["fluorite"] = true
elseif mods["angelsindustries"] then
  angelsmods.trigger.ores["fluorite"] = true
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
require("prototypes.buildings.nuclear-reactor")
require("prototypes.buildings.centrifuge")

require("prototypes.items.petrochem-basics")
require("prototypes.items.petrochem-carbons")
require("prototypes.items.petrochem-chlorine")
require("prototypes.items.petrochem-nitrogen")
require("prototypes.items.petrochem-raws")
require("prototypes.items.petrochem-solids")
require("prototypes.items.petrochem-sulfur")
require("prototypes.items.petrochem-nuclear")

require("prototypes.recipes.petrochem-basics")
require("prototypes.recipes.petrochem-carbons")
require("prototypes.recipes.petrochem-nitrogen")
require("prototypes.recipes.petrochem-solids")
require("prototypes.recipes.petrochem-sodium")
require("prototypes.recipes.petrochem-sulfur")
require("prototypes.recipes.petrochem-chlorine")
require("prototypes.recipes.petrochem-entity")
require("prototypes.recipes.petrochem-nuclear")

require("prototypes.technology.petrochem-basics")
require("prototypes.technology.petrochem-basic-chemistry")
require("prototypes.technology.petrochem-nuclear")
require("prototypes.technology.petrochem-petro-chemistry")
require("prototypes.technology.petrochem-solids")
require("prototypes.technology.petrochem-weaponary")

-- EXECUTE FUNCTIONS
angelsmods.functions.make_resource()
