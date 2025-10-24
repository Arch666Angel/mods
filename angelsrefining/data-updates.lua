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
local patched_recipes = {"iron-plate, copper-plate, angels-ore-chunk-mix6-processing, angels-ore3-chunk, angels-slag-processing-9, angels-ore-crushed-mix1-processing, angels-ore-crushed-mix3-processing, angels-ore-chunk-mix1-processing, angels-ore-chunk-mix2-processing, angels-ore-crystal-mix1-processing, angels-catalysator-orange, angels-ore5-crystal, angels-ore-pure-mix1-processing, angels-catalysator-orange, angels-ore3-pure, angels-ore4-pure, iron-plate, copper-plate, angels-ore2-chunk, angels-water-greenyellow-waste, angels-ore4-chunk, angels-water-green-waste, angels-ore5-chunk, angels-water-red-waste, angels-red-waste-water-purification, angels-solid-sodium-nitrate, angels-green-waste-water-purification, angels-solid-salt, angels-greenyellow-waste-water-purification, angels-fluorite-ore, angels-salt-water-electrolysis-2, angels-water-purified, angels-water-saline, bob-water-electrolysis, bob-nitric-acid, bob-sulfuric-acid-2, bob-petroleum-gas-cracking, angels-water-purified, coal-cracking, bob-lithium-water-electrolysis, angels-water-purified, explosives, sulfur, sulfuric-acid, heavy-oil-cracking, light-oil-cracking, advanced-oil-processing, angels-water-purified, bob-area-mining-drill-2, bob-invar-alloy, bob-mining-drill-2, bob-invar-alloy, bob-small-storage-tank, bob-small-inline-storage-tank, pipe, storage-tank, bob-small-inline-storage-tank, angels-ore1-crushed-smelting, angels-ore3-crushed-smelting, angels-ore5-crushed-smelting, bob-lead-plate, angels-ore6-crushed-smelting, bob-tin-plate, bob-tin-plate, bob-lead-plate, bob-glass, bob-silver-plate, bob-ruby-3, bob-sapphire-3, bob-emerald-3, bob-amethyst-3, bob-topaz-3, bob-diamond-3, bob-burner-lab, bob-tin-plate, bob-storage-tank-all-corners, bob-small-storage-tank, pipe, bob-repair-pack-3, bob-brass-gear-wheel, bob-invar-alloy, bob-module-contact, copper-plate, bob-silver-plate, bob-module-processor-board, bob-silver-plate, bob-module-processor-board-3, angels-wire-platinum, bob-module-contact, copper-plate, bob-silver-plate, bob-module-processor-board-2, bob-silver-plate, bob-steam-engine-3, bob-brass-gear-wheel, bob-steel-bearing, bob-fluid-generator-2, bob-brass-gear-wheel, bob-steel-bearing, bob-empty-canister, barrel, bob-gas-canister, bob-empty-canister, angels-ore1-chunk-processing, angels-ore1-chunk, y-res1, angels-ore3-chunk-processing, angels-ore3-chunk, y-res2, angels-ore1-crystal-processing, angels-ore1-crystal, y-res1, angels-ore3-crystal-processing, angels-ore3-crystal, y-res2, angels-ore1-pure-processing, angels-ore1-pure, y-res1, angels-ore3-pure-processing, angels-ore3-pure, y-res2, angels-slag-processing-yi, angels-ore-chunk-mix-yi1-processing, angels-ore-chunk-mix-yi2-processing, angels-yellow-waste-water-purification-yi, angels-ore2-chunk-processing, angels-ore2-chunk, uraninite, angels-ore4-chunk-processing, angels-ore4-chunk, fluorite, angels-ore2-crystal-processing, angels-ore2-crystal, uraninite, angels-ore4-crystal-processing, angels-ore4-crystal, fluorite, angels-ore2-pure-processing, angels-ore2-pure, uraninite, angels-ore4-pure-processing, angels-ore4-pure, fluorite, angels-slag-processing-up, angels-ore-crystal-mix-up1-processing, angels-ore-crystal-mix-up2-processing"}
angelsmods.functions.patch_recycling_recipes(patched_recipes)