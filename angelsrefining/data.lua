--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.refining = angelsmods.refining or {}
angelsmods.refining.disable_ore_override = false
angelsmods.refining.number_tint = {r = 0.3, g = 1.0, b = 1.0, a = 0.5}

--TRIGGER CHECKS
angelsmods.trigger = angelsmods.trigger or {}
angelsmods.trigger.enable_auto_barreling = settings.startup["angels-enable-auto-barreling"].value
angelsmods.trigger.enable_hide_void = settings.startup["angels-enable-hide-void"].value
angelsmods.trigger.starting_resource_base = settings.startup["angels-starting-resource-base"].value -- Unused so far

--REFINERY SORTING TRIGGERS
angelsmods.trigger.ores = angelsmods.trigger.ores or {}
local ore_exist = function (ore_name) return data.raw.item[ore_name] and true or false end
-- angels refining default mode is to be special-vanilla, aka iron and copper only
angelsmods.trigger.ores["iron"] = true
angelsmods.trigger.ores["copper"] = true
angelsmods.trigger.ores["uranium"] = mods.bobplates and true or false
-- other (angel)mods have time during the data stage to update the angelsmods.trigger.ore
if mods.bobplates then
  angelsmods.trigger.ores["tin"] = ore_exist("tin-ore")
  angelsmods.trigger.ores["lead"] = ore_exist("lead-ore")
  angelsmods.trigger.ores["nickel"] = ore_exist("nickel-ore")
  angelsmods.trigger.ores["silicon"] = ore_exist("quartz")
  angelsmods.trigger.ores["aluminium"] = ore_exist("bauxite-ore")
  angelsmods.trigger.ores["cobalt"] = ore_exist("cobalt-ore")
  angelsmods.trigger.ores["zinc"] = ore_exist("zinc-ore")
  angelsmods.trigger.ores["silver"] = ore_exist("silver-ore")
  angelsmods.trigger.ores["titanium"] = ore_exist("rutile-ore")
  angelsmods.trigger.ores["gold"] = ore_exist("gold-ore")
  angelsmods.trigger.ores["tungsten"] = ore_exist("tungsten-ore")
  angelsmods.trigger.ores["thorium"] = ore_exist("thorium-ore")

  --angelsmods.trigger.ores["gem-ore"] = ore_exist("gem-ore")
  --angelsmods.trigger.ores["gem-ruby"] = ore_exist("ruby-ore")
  --angelsmods.trigger.ores["gem-sapphire"] = ore_exist("sapphire-ore")
  --angelsmods.trigger.ores["gem-emerald"] = ore_exist("emerald-ore")
  --angelsmods.trigger.ores["gem-amethyst"] = ore_exist("amethyst-ore")
  --angelsmods.trigger.ores["gem-topaz"] = ore_exist("topaz-ore")
  --angelsmods.trigger.ores["gem-diamond"] = ore_exist("diamond-ore")
end
angelsmods.trigger.ores["fluorite"] = false -- angels petrochem enables this
angelsmods.trigger.ores["platinum"] = false -- angels petrochem enables this
angelsmods.trigger.ores["manganese"] = false -- angels smelting enables this
angelsmods.trigger.ores["chrome"] = false -- angels smelting enables this

-- MARATHON MODE
angelsmods.marathon = angelsmods.marathon or {}
angelsmods.marathon.buildingmulti = settings.startup["angels-marathon-buildingmulti"].value
angelsmods.marathon.buildingtime = settings.startup["angels-marathon-buildingtime"].value
angelsmods.marathon.rawmulti = settings.startup["angels-marathon-rawmulti"].value
angelsmods.marathon.intermediatemulti = settings.startup["angels-marathon-intermediatemulti"].value

--LOAD FUNCTIONS
angelsmods.functions = angelsmods.functions or {}
angelsmods.functions.store = angelsmods.functions.store or {}
angelsmods.functions.store.update = angelsmods.functions.store.update or {}
angelsmods.functions.store.make = angelsmods.functions.store.make or {}

if angelsmods.functions then
  --Helper Functions
  require("prototypes.angels-functions")
  --Function set for overrides (items, recipes, techs)
  angelsmods.functions.OV = require("prototypes.override-functions")
  --Function set to build recipes and normalize them
  angelsmods.functions.RB = require("prototypes.recipe-builder")
  --Function set to build resources
  require("prototypes.generation.resource-builder")
end

--LOAD PROTOTYPES
if angelsmods.refining then
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

-- EXECUTE FUNCTIONS
angelsmods.functions.make_resource()
