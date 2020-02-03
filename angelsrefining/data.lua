--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.refining = angelsmods.refining or {}
angelsmods.refining.disable_ore_override = false

--TRIGGER CHECKS
angelsmods.trigger = angelsmods.trigger or {}
angelsmods.trigger.enable_auto_barreling = settings.startup["angels-enable-auto-barreling"].value
angelsmods.trigger.enable_hide_void = settings.startup["angels-enable-hide-void"].value
angelsmods.trigger.starting_resource_base = settings.startup["angels-starting-resource-base"].value -- Unused so far

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
