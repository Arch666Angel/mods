--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.smelting = angelsmods.smelting or {}
angelsmods.smelting.number_tint = { r = 1, g = 0.8, b = 0.0, a = 1 }

--TRIGGER CHECKS
angelsmods.trigger = angelsmods.trigger or {}

-- set refining triggers
angelsmods.trigger.ores["aluminium"] = true
angelsmods.trigger.ores["chrome"] = true
angelsmods.trigger.ores["cobalt"] = true
angelsmods.trigger.ores["manganese"] = true
angelsmods.trigger.ores["nickel"] = true
angelsmods.trigger.ores["silver"] = true
angelsmods.trigger.ores["titanium"] = true
angelsmods.trigger.ores["tungsten"] = true
angelsmods.trigger.washing_tech = true

angelsmods.trigger.early_sintering_oven = false

--create all the tables for smelting triggers ---------------------------------
angelsmods.trigger.smelting_molds = false
angelsmods.trigger.smelting_products = angelsmods.trigger.smelting_products or {}
angelsmods.trigger.smelting_products["enable-all"] = false -- setting to override and enable everything (debug mode)
angelsmods.trigger.smelting_products["brass"] = angelsmods.trigger.smelting_products["brass"] or {}
angelsmods.trigger.smelting_products["bronze"] = angelsmods.trigger.smelting_products["bronze"] or {}
angelsmods.trigger.smelting_products["cobalt-steel"] = angelsmods.trigger.smelting_products["cobalt-steel"] or {}
angelsmods.trigger.smelting_products["gunmetal"] = angelsmods.trigger.smelting_products["gunmetal"] or {}
angelsmods.trigger.smelting_products["invar"] = angelsmods.trigger.smelting_products["invar"] or {}
angelsmods.trigger.smelting_products["nitinol"] = angelsmods.trigger.smelting_products["nitinol"] or {}
angelsmods.trigger.smelting_products["solder"] = angelsmods.trigger.smelting_products["solder"] or {}
angelsmods.trigger.smelting_products["steel"] = angelsmods.trigger.smelting_products["steel"] or {}
angelsmods.trigger.smelting_products["aluminium"] = angelsmods.trigger.smelting_products["aluminium"] or {}
angelsmods.trigger.smelting_products["chrome"] = angelsmods.trigger.smelting_products["chrome"] or {}
angelsmods.trigger.smelting_products["cobalt"] = angelsmods.trigger.smelting_products["cobalt"] or {}
angelsmods.trigger.smelting_products["copper"] = angelsmods.trigger.smelting_products["copper"] or {}
angelsmods.trigger.smelting_products["glass"] = angelsmods.trigger.smelting_products["glass"] or {}
angelsmods.trigger.smelting_products["gold"] = angelsmods.trigger.smelting_products["gold"] or {}
angelsmods.trigger.smelting_products["iron"] = angelsmods.trigger.smelting_products["iron"] or {}
angelsmods.trigger.smelting_products["lead"] = angelsmods.trigger.smelting_products["lead"] or {}
angelsmods.trigger.smelting_products["manganese"] = angelsmods.trigger.smelting_products["manganese"] or {}
angelsmods.trigger.smelting_products["nickel"] = angelsmods.trigger.smelting_products["nickel"] or {}
angelsmods.trigger.smelting_products["platinum"] = angelsmods.trigger.smelting_products["platinum"] or {}
angelsmods.trigger.smelting_products["silicon"] = angelsmods.trigger.smelting_products["silicon"] or {}
angelsmods.trigger.smelting_products["silver"] = angelsmods.trigger.smelting_products["silver"] or {}
angelsmods.trigger.smelting_products["stone"] = angelsmods.trigger.smelting_products["stone"] or {}
angelsmods.trigger.smelting_products["tin"] = angelsmods.trigger.smelting_products["tin"] or {}
angelsmods.trigger.smelting_products["titanium"] = angelsmods.trigger.smelting_products["titanium"] or {}
angelsmods.trigger.smelting_products["tungsten"] = angelsmods.trigger.smelting_products["tungsten"] or {}
angelsmods.trigger.smelting_products["zinc"] = angelsmods.trigger.smelting_products["zinc"] or {}

--create casting products -----------------------------------------------------
--alloy-brass
angelsmods.trigger.smelting_products["brass"].plate = mods["bobplates"] and true or false
--alloy-bronze
angelsmods.trigger.smelting_products["bronze"].plate = mods["bobplates"] and true or false
--alloy-cobalt-steel
angelsmods.trigger.smelting_products["cobalt-steel"].plate = mods["bobplates"] and true or false
--alloy-gunmetal
angelsmods.trigger.smelting_products["gunmetal"].plate = mods["bobplates"] and true or false
--alloy-invar
angelsmods.trigger.smelting_products["invar"].plate = mods["bobplates"] and true or false
--alloy-nitinol
angelsmods.trigger.smelting_products["nitinol"].plate = mods["bobplates"] and true or false
--alloy-solder
angelsmods.trigger.smelting_products["solder"].wire = mods["bobplates"] and true or false
--alloy-steel
angelsmods.trigger.smelting_products["steel"].plate = true
angelsmods.trigger.smelting_products["steel"].rod = angelsmods.trigger.smelting_products["steel"].rod or false
--aluminium
angelsmods.trigger.smelting_products["aluminium"].plate = true
--cobalt
angelsmods.trigger.smelting_products["cobalt"].plate = --[[mods["bobplates"] and true or]]
  false
--copper
angelsmods.trigger.smelting_products["copper"].plate = true
angelsmods.trigger.smelting_products["copper"].wire = true
--glass
angelsmods.trigger.smelting_products["glass"].plate = mods["bobplates"] and true or false
angelsmods.trigger.smelting_products["glass"].fibre = false
angelsmods.trigger.smelting_products["glass"].board = mods["bobplates"] and mods["bobelectronics"] and true or false
--gold
angelsmods.trigger.smelting_products["gold"].plate = mods["bobplates"] and true or false
angelsmods.trigger.smelting_products["gold"].wire = angelsmods.trigger.smelting_products["gold"].plate
  or (mods["bobelectronics"] and data.raw.item["bob-gold-plate"] and true)
  or false
--iron
angelsmods.trigger.smelting_products["iron"].plate = true
--lead
angelsmods.trigger.smelting_products["lead"].plate = mods["bobplates"] and true or false
--nickel
angelsmods.trigger.smelting_products["nickel"].plate = mods["bobplates"] and true or false
--platinum
--silicon
angelsmods.trigger.smelting_products["silicon"].mono = mods["bobplates"] and true or false
angelsmods.trigger.smelting_products["silicon"].powder = mods["bobplates"] and true or false
angelsmods.trigger.smelting_products["silicon"].wafer = mods["bobplates"] and true or false
--silver
angelsmods.trigger.smelting_products["silver"].plate = mods["bobplates"] and true or false
angelsmods.trigger.smelting_products["silver"].wire = angelsmods.trigger.smelting_products["silver"].wire
  or angelsmods.trigger.smelting_products["silver"].plate
  or false
--stone
--tin
angelsmods.trigger.smelting_products["tin"].plate = mods["bobplates"] and true or false
angelsmods.trigger.smelting_products["tin"].wire = mods["bobelectronics"] and data.raw.item["bob-tin-plate"] and true
  or false
--titanium
angelsmods.trigger.smelting_products["titanium"].plate = true
--tungsten
angelsmods.trigger.smelting_products["tungsten"].plate = true
--zinc
angelsmods.trigger.smelting_products["zinc"].plate = mods["bobplates"] and true or false

--create building triggers -----------------------------------------------------
angelsmods.trigger.sintering_tech = true

require("prototypes.angels-smelting-category")

require("prototypes.buildings.induction-furnace")
require("prototypes.buildings.blast-furnace")
require("prototypes.buildings.chemical-furnace")
require("prototypes.buildings.casting-machine")
require("prototypes.buildings.powder-mixer")
require("prototypes.buildings.ore-processing-machine")
require("prototypes.buildings.pellet-press")
require("prototypes.buildings.sintering-oven")
require("prototypes.buildings.strand-casting-machine")
require("prototypes.buildings.cooling-tower")

require("prototypes.buildings.clay-bricks")
require("prototypes.buildings.concrete-bricks")

require("prototypes.items.angels-alloy-solder")
require("prototypes.items.angels-alloy-steel")
require("prototypes.items.angels-aluminium")
require("prototypes.items.angels-chrome")
require("prototypes.items.angels-cobalt")
require("prototypes.items.angels-copper")
require("prototypes.items.angels-glass")
require("prototypes.items.angels-gold")
require("prototypes.items.angels-iron")
require("prototypes.items.angels-lead")
require("prototypes.items.angels-manganese")
require("prototypes.items.angels-nickel")
require("prototypes.items.angels-platinum")
require("prototypes.items.angels-silicon")
require("prototypes.items.angels-silver")
require("prototypes.items.angels-stone")
require("prototypes.items.angels-support")
require("prototypes.items.angels-tin")
require("prototypes.items.angels-titanium")
require("prototypes.items.angels-tungsten")
require("prototypes.items.angels-zinc")

require("prototypes.recipes.smelting-alloy-solder")
require("prototypes.recipes.smelting-alloy-steel")
require("prototypes.recipes.smelting-aluminium")
require("prototypes.recipes.smelting-chrome")
require("prototypes.recipes.smelting-cobalt")
require("prototypes.recipes.smelting-copper")
require("prototypes.recipes.smelting-glass")
require("prototypes.recipes.smelting-gold")
require("prototypes.recipes.smelting-iron")
require("prototypes.recipes.smelting-lead")
require("prototypes.recipes.smelting-manganese")
require("prototypes.recipes.smelting-nickel")
require("prototypes.recipes.smelting-platinum")
require("prototypes.recipes.smelting-silicon")
require("prototypes.recipes.smelting-silver")
require("prototypes.recipes.smelting-stone")
require("prototypes.recipes.smelting-support")
require("prototypes.recipes.smelting-tin")
require("prototypes.recipes.smelting-titanium")
require("prototypes.recipes.smelting-tungsten")
require("prototypes.recipes.smelting-zinc")

require("prototypes.recipes.smelting-entity")

require("prototypes.technology.smelting-alloy-solder")
require("prototypes.technology.smelting-alloy-steel")
require("prototypes.technology.smelting-aluminium")
require("prototypes.technology.smelting-chrome")
require("prototypes.technology.smelting-cobalt")
require("prototypes.technology.smelting-copper")
require("prototypes.technology.smelting-glass")
require("prototypes.technology.smelting-gold")
require("prototypes.technology.smelting-iron")
require("prototypes.technology.smelting-lead")
require("prototypes.technology.smelting-manganese")
require("prototypes.technology.smelting-nickel")
require("prototypes.technology.smelting-platinum")
require("prototypes.technology.smelting-silicon")
require("prototypes.technology.smelting-silver")
require("prototypes.technology.smelting-stone")
require("prototypes.technology.smelting-support")
require("prototypes.technology.smelting-tin")
require("prototypes.technology.smelting-titanium")
require("prototypes.technology.smelting-tungsten")
require("prototypes.technology.smelting-zinc")
