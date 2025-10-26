-- REFINERY PRODUCTS TRIGGERS
-- in the data stage, triggers where set for the ores,
-- depending on the ore settings, we enable the refinery products
angelsmods.trigger.refinery_products = angelsmods.trigger.refinery_products or {}
angelsmods.trigger.refinery_products["saphirite"] = true
angelsmods.trigger.refinery_products["jivolite"] = true
angelsmods.trigger.refinery_products["stiratite"] = true
angelsmods.trigger.refinery_products["crotinnium"] = true

if mods["bobplates"] then
  angelsmods.trigger.refinery_products["rubyte"] = true
  angelsmods.trigger.refinery_products["bobmonium"] = true
end

angelsmods.trigger.refinery_products["ferrous"] = angelsmods.trigger.ores["manganese"]
  or angelsmods.trigger.ores["chrome"]
  or (angelsmods.trigger.ores["thorium"] and not angelsmods.functions.is_special_vanilla())
if angelsmods.trigger.refinery_products["ferrous"] then
  angelsmods.trigger.refinery_products["saphirite"] = true
  angelsmods.trigger.refinery_products["jivolite"] = true
  angelsmods.trigger.refinery_products["rubyte"] = true
  if angelsmods.petrochem then
    angelsmods.trigger.liquid_ferric_chloride_solution = true
  end
end

angelsmods.trigger.refinery_products["cupric"] = angelsmods.trigger.ores["platinum"]
  or angelsmods.trigger.ores["tungsten"]
  or (angelsmods.trigger.ores["thorium"] and not angelsmods.functions.is_special_vanilla())
if angelsmods.trigger.refinery_products["cupric"] then
  angelsmods.trigger.refinery_products["stiratite"] = true
  angelsmods.trigger.refinery_products["crotinnium"] = true
  angelsmods.trigger.refinery_products["bobmonium"] = true
  if angelsmods.petrochem then
    angelsmods.trigger.liquid_cupric_chloride_solution = true
  end
end

if angelsmods.petrochem and angelsmods.trigger.enableacids and angelsmods.trigger.refinery_products["rubyte"] then
  angelsmods.trigger.water_red_waste = true
end

--Fallbacks for the recipe builder
require("prototypes.recipe-builder-fallbacks")
--Generic recipe generation
require("prototypes.refining-generate")
--Overrides for refining/angels internal
require("prototypes.refining-override")
--Overrides for resources
require("prototypes.generation.angels-override")

-- EXECUTE OVERRIDES
angelsmods.functions.OV.execute()
--Update resources autoplace
angelsmods.functions.update_autoplace()

--angelsmods.functions.index_check()

local patched_recipes = {
  "angels-algae-brown-burning",
  "angels-ore5-crushed-smelting",
  "angels-ore6-crushed-smelting",
  "angels-ore7-crystallization-1",
  "angels-ore7-crystallization-2",
  "angels-ore7-crystallization-3",
  "angels-ore7-crystallization-4",
  "angels-ore7-crystallization-5",
  "angels-ore7-crystallization-6",
  "angels-ore8-crushed",
  "angels-ore8-crushed-processing",
  "angels-ore9-crushed",
  "angels-ore9-crushed-processing",
  "angels-ore-crystal-mix6-processing",
  "angels-red-waste-water-purification",
  "angels-solid-lithium",
  "angels-solid-salt-dissolving",
  "angels-water-saline-from-water",
  "automation-science-pack",
  "bob-brine",
  "bob-brine-electrolysis",
  "bob-distillery",
  "bob-limestone",
  "bob-lithium-chloride",
  "bob-pure-water",
  "bob-pure-water-from-lithia",
  "bob-salt",
}
angelsmods.functions.patch_recycling_recipes(patched_recipes)