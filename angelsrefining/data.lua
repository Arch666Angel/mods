--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.refining = angelsmods.refining or {}
angelsmods.refining.disable_ore_override = false
angelsmods.refining.productivity_exception = {}
angelsmods.refining.number_tint = { r = 0.3, g = 1.0, b = 1.0, a = 1 }
angelsmods.refining.ore_tints = {
  --taken from the crystal pos 16,19
  ore1 = { r = 69 / 255, g = 91 / 255, b = 125 / 255, a = 1 },
  ore2 = { r = 166 / 255, g = 165 / 255, b = 46 / 255, a = 1 },
  ore3 = { r = 98 / 255, g = 144 / 255, b = 180 / 255, a = 1 },
  ore4 = { r = 171 / 255, g = 171 / 255, b = 171 / 255, a = 1 },
  ore5 = { r = 120 / 255, g = 39 / 255, b = 37 / 255, a = 1 },
  ore6 = { r = 117 / 255, g = 76 / 255, b = 37 / 255, a = 1 },
}

--LOAD FUNCTIONS
angelsmods.functions = angelsmods.functions or {}
angelsmods.functions.store = angelsmods.functions.store or {}
angelsmods.functions.store.update = angelsmods.functions.store.update or {}
angelsmods.functions.store.make = angelsmods.functions.store.make or {}

-- Helper functions
require("prototypes.angels-functions")
--Function set for overrides (items, recipes, techs)
angelsmods.functions.OV = require("prototypes.override-functions")
--Function set to build recipes and normalize them
angelsmods.functions.RB = require("prototypes.recipe-builder")
--Function set to build resources
require("prototypes.generation.noise-expressions")
require("prototypes.generation.resource-builder")
--Functions for tips and tricks
angelsmods.functions.TNT = require("prototypes.tips-and-tricks-functions")

--TRIGGER CHECKS
angelsmods.trigger = angelsmods.trigger or {}
angelsmods.trigger.refinery_products = {}
local aeab = settings.startup["angels-enable-auto-barreling"].value
angelsmods.trigger.enable_auto_barreling = (aeab == "Enabled+Hidden" or aeab == "Enabled+Shown") and true or false
angelsmods.trigger.enable_hide_barreling = (aeab == "Enabled+Hidden") and true or false
angelsmods.trigger.enable_hide_void = settings.startup["angels-enable-hide-void"].value
angelsmods.trigger.starting_resource_base = settings.startup["angels-starting-resource-base"].value -- Unused so far
angelsmods.trigger.pavement_stack_size = settings.startup["angels-pavement-stack-size"].value -- Stack size for items you can use to pave the world
angelsmods.trigger.washing_tech = angelsmods.trigger.washing_tech or false
angelsmods.trigger.slag = angelsmods.trigger.slag or false
angelsmods.trigger.geode_red = angelsmods.trigger.geode_red or false
angelsmods.trigger.geode_cyan = angelsmods.trigger.geode_cyan or false
angelsmods.trigger.salt_production = angelsmods.trigger.salt_production or false
angelsmods.trigger.salt_consumption = angelsmods.trigger.salt_consumption or false
angelsmods.trigger.water_red_waste = angelsmods.trigger.water_red_waste or false
angelsmods.trigger.water_green_waste = angelsmods.trigger.water_green_waste or false
angelsmods.trigger.water_greenyellow_waste = angelsmods.trigger.water_greenyellow_waste or false
angelsmods.trigger.water_saline = angelsmods.trigger.water_saline
  or (mods["bobplates"] and mods["bobrevamp"] and settings.startup["bobmods-revamp-rtg"].value == true and settings.startup["bobmods-revamp-hardmode"].value == true)
  or false
angelsmods.trigger.smelting_products = angelsmods.trigger.smelting_products or {}

--REFINERY SORTING TRIGGERS
angelsmods.trigger.ores = angelsmods.trigger.ores or {}
-- angels refining default mode is to be special-vanilla, aka iron and copper only
angelsmods.trigger.ores["iron"] = true
angelsmods.trigger.ores["copper"] = true
angelsmods.trigger.ores["uranium"] = true
-- other (angel)mods have time during the data stage to update the angelsmods.trigger.ore
if mods["bobplates"] then
  local ore_exists = angelsmods.functions.ore_exists
  angelsmods.trigger.ores["tin"] = ore_exists("bob-tin-ore")
  angelsmods.trigger.ores["lead"] = ore_exists("bob-lead-ore")
  angelsmods.trigger.ores["nickel"] = ore_exists("bob-nickel-ore")
  angelsmods.trigger.ores["silicon"] = ore_exists("bob-quartz")
  angelsmods.trigger.ores["aluminium"] = ore_exists("bob-bauxite-ore")
  angelsmods.trigger.ores["cobalt"] = ore_exists("bob-cobalt-ore")
  angelsmods.trigger.ores["zinc"] = ore_exists("bob-zinc-ore")
  angelsmods.trigger.ores["silver"] = ore_exists("bob-silver-ore")
  angelsmods.trigger.ores["titanium"] = ore_exists("bob-rutile-ore")
  angelsmods.trigger.ores["gold"] = ore_exists("bob-gold-ore")
  angelsmods.trigger.ores["tungsten"] = ore_exists("bob-tungsten-ore")
  angelsmods.trigger.ores["thorium"] = angelsmods.trigger.ores["thorium"] or ore_exists("bob-thorium-ore")
  --angelsmods.trigger.ores["gem-ore"] = ore_exists("gem-ore")
  --angelsmods.trigger.ores["gem-ruby"] = ore_exists("ruby-ore")
  --angelsmods.trigger.ores["gem-sapphire"] = ore_exists("sapphire-ore")
  --angelsmods.trigger.ores["gem-emerald"] = ore_exists("emerald-ore")
  --angelsmods.trigger.ores["gem-amethyst"] = ore_exists("amethyst-ore")
  --angelsmods.trigger.ores["gem-topaz"] = ore_exists("topaz-ore")
  --angelsmods.trigger.ores["gem-diamond"] = ore_exists("diamond-ore")
  angelsmods.trigger.slag = true
  bobmods.ores.cobalt.enabled = ore_exists("bob-cobalt-ore")
end
angelsmods.trigger.ores["fluorite"] = angelsmods.trigger.ores["fluorite"] or false -- angels petrochem enables this
angelsmods.trigger.ores["manganese"] = angelsmods.trigger.ores["manganese"] or false -- angels smelting enables this
angelsmods.trigger.ores["chrome"] = angelsmods.trigger.ores["chrome"] or false -- angels smelting enables this
angelsmods.trigger.ores["platinum"] = angelsmods.trigger.ores["platinum"] or false -- angels industries enables this
angelsmods.trigger.ores["thorium"] = angelsmods.trigger.ores["thorium"] or false --angels industries enables this

-- SMELTING TRIGGERS
-- lithium
angelsmods.trigger.smelting_products["lithium"] = angelsmods.trigger.smelting_products["lithium"] or {}
angelsmods.trigger.smelting_products["lithium"].plate = mods["bobplates"] and true or false

--LOAD PROTOTYPES
require("prototypes.refining-category")

require("prototypes.generation.angels-ore")
require("prototypes.generation.bob-ore-update")
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
require("prototypes.buildings.ground-water-pump")
require("prototypes.buildings.salination-plant")
require("prototypes.buildings.seafloor-pump")
require("prototypes.buildings.sea-pump")
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

require("prototypes.generation.map-gen-presets")

-- EXECUTE FUNCTIONS
angelsmods.functions.make_resource()
