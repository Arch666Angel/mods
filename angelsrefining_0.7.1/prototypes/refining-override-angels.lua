--REFINING ENTITY RECIPES
require("prototypes.recipes.refining-entity-angels")

--SPECIAL VANILLA
angelsmods.functions.OV.disable_recipe("angels-iron-nugget-smelting")
angelsmods.functions.OV.disable_recipe("angels-iron-pebbles-smelting")
angelsmods.functions.OV.disable_recipe("angels-copper-nugget-smelting")
angelsmods.functions.OV.disable_recipe("angels-copper-pebbles-smelting")
angelsmods.functions.OV.disable_recipe("angels-iron-pebbles")
angelsmods.functions.OV.disable_recipe("angels-copper-pebbles")
table.insert(data.raw["item"]["angels-iron-nugget"].flags,"hidden")
table.insert(data.raw["item"]["angels-iron-pebbles"].flags,"hidden")
table.insert(data.raw["item"]["angels-iron-slag"].flags,"hidden")
table.insert(data.raw["item"]["angels-copper-nugget"].flags,"hidden")
table.insert(data.raw["item"]["angels-copper-pebbles"].flags,"hidden")
table.insert(data.raw["item"]["angels-copper-slag"].flags,"hidden")

--SLAG PROCESSING
angelsmods.functions.OV.set_input("filter-ceramic", "solid-aluminium-oxide", "item", 1)
--1-IRON, COPPER
angelsmods.functions.OV.set_output("slag-processing-1", "copper-ore", "item", 1)
angelsmods.functions.OV.set_output("slag-processing-1", "iron-ore", "item", 1)
angelsmods.functions.OV.set_special_recipe_override("slag-processing-1", { icon = "__angelsrefining__/graphics/icons/slag-processing-angel1.png" })
--2-LEAD, TIN
angelsmods.functions.OV.set_output("slag-processing-2", "lead-ore", "item", 1)
angelsmods.functions.OV.set_output("slag-processing-2", "tin-ore", "item", 1)
angelsmods.functions.OV.set_special_recipe_override("slag-processing-2", { icon = "__angelsrefining__/graphics/icons/slag-processing-angel2.png" })
--3-SILVER, QUARTZ
angelsmods.functions.OV.set_output("slag-processing-3", "silver-ore", "item", 1)
angelsmods.functions.OV.set_output("slag-processing-3", "quartz", "item", 1)
angelsmods.functions.OV.set_special_recipe_override("slag-processing-3", { icon = "__angelsrefining__/graphics/icons/slag-processing-angel3.png" })
--4-BAUXITE, MANGANESE, ZINC
angelsmods.functions.OV.set_output("slag-processing-4", "bauxite-ore", "item", 1)
angelsmods.functions.OV.set_output("slag-processing-4", "manganese-ore", "item", 1)
angelsmods.functions.OV.set_output("slag-processing-4", "zinc-ore", "item", 1)
angelsmods.functions.OV.set_special_recipe_override("slag-processing-4", { icon = "__angelsrefining__/graphics/icons/slag-processing-angel4.png" })
--5-GOLD, NICKEL, 
angelsmods.functions.OV.set_output("slag-processing-5", "gold-ore", "item", 1)
angelsmods.functions.OV.set_output("slag-processing-5", "nickel-ore", "item", 1)
angelsmods.functions.OV.set_special_recipe_override("slag-processing-5", { icon = "__angelsrefining__/graphics/icons/slag-processing-angel5.png" })	
--6-COBALT, RUTILE, 
angelsmods.functions.OV.set_output("slag-processing-6", "cobalt-ore", "item", 1)
angelsmods.functions.OV.set_output("slag-processing-6", "rutile-ore", "item", 1)
angelsmods.functions.OV.set_special_recipe_override("slag-processing-6", { icon = "__angelsrefining__/graphics/icons/slag-processing-angel6.png" })
--7-PLATINUM, CHROME
angelsmods.functions.OV.set_output("slag-processing-7", "platinum-ore", "item", 1)
angelsmods.functions.OV.set_output("slag-processing-7", "chrome-ore", "item", 1)
angelsmods.functions.OV.set_special_recipe_override("slag-processing-7", { icon = "__angelsrefining__/graphics/icons/slag-processing-angel7.png" })
--8-PLATINUM, TUNGSTEN
angelsmods.functions.OV.set_output("slag-processing-8", "platinum-ore", "item", 1)
angelsmods.functions.OV.set_output("slag-processing-8", "tungsten-ore", "item", 1)
angelsmods.functions.OV.set_special_recipe_override("slag-processing-8", { icon = "__angelsrefining__/graphics/icons/slag-processing-angel8.png" })

--SORTING
--SAPHIRITE (IRON, COPPER, QUARTZ, MANGANESE, GOLD, TUNGSTEN)
--CRUSHED
angelsmods.functions.OV.set_output("angelsore1-crushed-processing", "iron-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore1-crushed-processing", "copper-ore", "item", 1)
--CHUNK
angelsmods.functions.OV.set_output("angelsore1-chunk-processing", "iron-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore1-chunk-processing", "copper-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore1-chunk-processing", "quartz", "item", 1)
angelsmods.functions.OV.set_output("angelsore1-chunk-processing", "manganese-ore", "item", 1)
--CRYSTAL
angelsmods.functions.OV.set_output("angelsore1-crystal-processing", "iron-ore", "item", 3)
angelsmods.functions.OV.set_output("angelsore1-crystal-processing", "copper-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore1-crystal-processing", "quartz", "item", 1)
angelsmods.functions.OV.set_output("angelsore1-crystal-processing", "manganese-ore", "item", 1)	
angelsmods.functions.OV.set_output("angelsore1-crystal-processing", "gold-ore", "item", 1)
--PURE
angelsmods.functions.OV.set_output("angelsore1-pure-processing", "iron-ore", "item", 3)
angelsmods.functions.OV.set_output("angelsore1-pure-processing", "copper-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore1-pure-processing", "quartz", "item", 1)
angelsmods.functions.OV.set_output("angelsore1-pure-processing", "manganese-ore", "item", 1)	
angelsmods.functions.OV.set_output("angelsore1-pure-processing", "gold-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore1-pure-processing", "tungsten-ore", "item", 1)

--JIVOLITE (IRON, COPPER, TIN, ZINC, RUTILE, PLATINUM)
--CRUSHED
angelsmods.functions.OV.set_output("angelsore2-crushed-processing", "iron-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore2-crushed-processing", "copper-ore", "item", 1)
--CHUNK
angelsmods.functions.OV.set_output("angelsore2-chunk-processing", "iron-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore2-chunk-processing", "copper-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore2-chunk-processing", "tin-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore2-chunk-processing", "zinc-ore", "item", 1)
--CRYSTAL
angelsmods.functions.OV.set_output("angelsore2-crystal-processing", "iron-ore", "item", 3)
angelsmods.functions.OV.set_output("angelsore2-crystal-processing", "copper-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore2-crystal-processing", "tin-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore2-crystal-processing", "zinc-ore", "item", 1)	
angelsmods.functions.OV.set_output("angelsore2-crystal-processing", "rutile-ore", "item", 1)
--PURE
angelsmods.functions.OV.set_output("angelsore2-pure-processing", "iron-ore", "item", 3)
angelsmods.functions.OV.set_output("angelsore2-pure-processing", "copper-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore2-pure-processing", "tin-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore2-pure-processing", "zinc-ore", "item", 1)	
angelsmods.functions.OV.set_output("angelsore2-pure-processing", "rutile-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore2-pure-processing", "platinum-ore", "item", 1)

--STIRATITE (COPPER, IRON, SILVER, BAUXITE, COBALT, CHROME)
--CRUSHED
angelsmods.functions.OV.set_output("angelsore3-crushed-processing", "copper-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore3-crushed-processing", "iron-ore", "item", 1)
--CHUNK
angelsmods.functions.OV.set_output("angelsore3-chunk-processing", "copper-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore3-chunk-processing", "iron-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore3-chunk-processing", "silver-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore3-chunk-processing", "bauxite-ore", "item", 1)
--CRYSTAL
angelsmods.functions.OV.set_output("angelsore3-crystal-processing", "copper-ore", "item", 3)
angelsmods.functions.OV.set_output("angelsore3-crystal-processing", "iron-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore3-crystal-processing", "silver-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore3-crystal-processing", "bauxite-ore", "item", 1)	
angelsmods.functions.OV.set_output("angelsore3-crystal-processing", "cobalt-ore", "item", 1)
--PURE
angelsmods.functions.OV.set_output("angelsore3-pure-processing", "copper-ore", "item", 3)
angelsmods.functions.OV.set_output("angelsore3-pure-processing", "iron-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore3-pure-processing", "silver-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore3-pure-processing", "bauxite-ore", "item", 1)	
angelsmods.functions.OV.set_output("angelsore3-pure-processing", "cobalt-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore3-pure-processing", "chrome-ore", "item", 1)

--CROTINIUM (COPPER, IRON, ZINC, LEAD, GOLD, TUNGSTEN)
--CRUSHED
angelsmods.functions.OV.set_output("angelsore4-crushed-processing", "copper-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore4-crushed-processing", "iron-ore", "item", 1)
--CHUNK
angelsmods.functions.OV.set_output("angelsore4-chunk-processing", "copper-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore4-chunk-processing", "iron-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore4-chunk-processing", "zinc-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore4-chunk-processing", "lead-ore", "item", 1)
--CRYSTAL
angelsmods.functions.OV.set_output("angelsore4-crystal-processing", "copper-ore", "item", 3)
angelsmods.functions.OV.set_output("angelsore4-crystal-processing", "iron-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore4-crystal-processing", "zinc-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore4-crystal-processing", "lead-ore", "item", 1)	
angelsmods.functions.OV.set_output("angelsore4-crystal-processing", "gold-ore", "item", 1)
--PURE
angelsmods.functions.OV.set_output("angelsore4-pure-processing", "copper-ore", "item", 3)
angelsmods.functions.OV.set_output("angelsore4-pure-processing", "iron-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore4-pure-processing", "zinc-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore4-pure-processing", "lead-ore", "item", 1)	
angelsmods.functions.OV.set_output("angelsore4-pure-processing", "gold-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore4-pure-processing", "tungsten-ore", "item", 1)

--RUBYTE (LEAD, MANGANESE, SILVER, QUARTZ, NICKEL, PLATINUM)
--CRUSHED
angelsmods.functions.OV.set_output("angelsore5-crushed-processing", "lead-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore5-crushed-processing", "manganese-ore", "item", 1)
--CHUNK
angelsmods.functions.OV.set_output("angelsore5-chunk-processing", "lead-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore5-chunk-processing", "manganese-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore5-chunk-processing", "silver-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore5-chunk-processing", "quartz", "item", 1)
--CRYSTAL
angelsmods.functions.OV.set_output("angelsore5-crystal-processing", "lead-ore", "item", 3)
angelsmods.functions.OV.set_output("angelsore5-crystal-processing", "manganese-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore5-crystal-processing", "silver-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore5-crystal-processing", "quartz", "item", 1)	
angelsmods.functions.OV.set_output("angelsore5-crystal-processing", "nickel-ore", "item", 1)
--PURE
angelsmods.functions.OV.set_output("angelsore5-pure-processing", "lead-ore", "item", 3)
angelsmods.functions.OV.set_output("angelsore5-pure-processing", "manganese-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore5-pure-processing", "silver-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore5-pure-processing", "quartz", "item", 1)	
angelsmods.functions.OV.set_output("angelsore5-pure-processing", "nickel-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore5-pure-processing", "platinum-ore", "item", 1)	

--BOBMONIUM (TIN, QUARTZ, BAUXITE, MANGANESE, RUTILE, CHROME)
--CRUSHED
angelsmods.functions.OV.set_output("angelsore6-crushed-processing", "tin-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore6-crushed-processing", "quartz", "item", 1)
--CHUNK
angelsmods.functions.OV.set_output("angelsore6-chunk-processing", "tin-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore6-chunk-processing", "quartz", "item", 1)
angelsmods.functions.OV.set_output("angelsore6-chunk-processing", "bauxite-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore6-chunk-processing", "manganese-ore", "item", 1)
--CRYSTAL
angelsmods.functions.OV.set_output("angelsore6-crystal-processing", "tin-ore", "item", 3)
angelsmods.functions.OV.set_output("angelsore6-crystal-processing", "quartz", "item", 1)
angelsmods.functions.OV.set_output("angelsore6-crystal-processing", "bauxite-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore6-crystal-processing", "manganese-ore", "item", 1)	
angelsmods.functions.OV.set_output("angelsore6-crystal-processing", "rutile-ore", "item", 1)
--PURE
angelsmods.functions.OV.set_output("angelsore6-pure-processing", "tin-ore", "item", 3)
angelsmods.functions.OV.set_output("angelsore6-pure-processing", "quartz", "item", 2)
angelsmods.functions.OV.set_output("angelsore6-pure-processing", "bauxite-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore6-pure-processing", "manganese-ore", "item", 1)	
angelsmods.functions.OV.set_output("angelsore6-pure-processing", "rutile-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore6-pure-processing", "chrome-ore", "item", 1)

--MIXED PROCESSING
--CRUSHED
angelsmods.functions.OV.set_output("angelsore-crushed-mix1-processing", "iron-ore", "item", 4)
angelsmods.functions.OV.set_special_recipe_override("angelsore-crushed-mix1-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-iron-sorting.png" })
angelsmods.functions.OV.set_output("angelsore-crushed-mix2-processing", "copper-ore", "item", 4)
angelsmods.functions.OV.set_special_recipe_override("angelsore-crushed-mix2-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-copper-sorting.png" })
angelsmods.functions.OV.set_output("angelsore-crushed-mix3-processing", "lead-ore", "item", 4)
angelsmods.functions.OV.set_special_recipe_override("angelsore-crushed-mix3-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-lead-sorting.png" })
angelsmods.functions.OV.set_output("angelsore-crushed-mix4-processing", "tin-ore", "item", 4)
angelsmods.functions.OV.set_special_recipe_override("angelsore-crushed-mix4-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-tin-sorting.png" })
--CHUNK
angelsmods.functions.OV.set_output("angelsore-chunk-mix1-processing", "quartz", "item", 4)
angelsmods.functions.OV.set_special_recipe_override("angelsore-chunk-mix1-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-silica-sorting.png" })
angelsmods.functions.OV.set_output("angelsore-chunk-mix2-processing", "manganese-ore", "item", 4)
angelsmods.functions.OV.set_special_recipe_override("angelsore-chunk-mix2-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-manganese-sorting.png" })
angelsmods.functions.OV.set_output("angelsore-chunk-mix3-processing", "bauxite-ore", "item", 4)
angelsmods.functions.OV.set_special_recipe_override("angelsore-chunk-mix3-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-aluminium-sorting.png" })
angelsmods.functions.OV.set_output("angelsore-chunk-mix4-processing", "zinc-ore", "item", 4)
angelsmods.functions.OV.set_special_recipe_override("angelsore-chunk-mix4-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-zinc-sorting.png" })
angelsmods.functions.OV.set_output("angelsore-chunk-mix5-processing", "silver-ore", "item", 4)
angelsmods.functions.OV.set_special_recipe_override("angelsore-chunk-mix5-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-silver-sorting.png" })
--CRYSTAL
angelsmods.functions.OV.set_output("angelsore-crystal-mix1-processing", "rutile-ore", "item", 6)
angelsmods.functions.OV.set_special_recipe_override("angelsore-crystal-mix1-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-titanium-sorting.png" })
angelsmods.functions.OV.set_output("angelsore-crystal-mix2-processing", "gold-ore", "item", 6)
angelsmods.functions.OV.set_special_recipe_override("angelsore-crystal-mix2-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-gold-sorting.png" })
angelsmods.functions.OV.set_output("angelsore-crystal-mix3-processing", "cobalt-ore", "item", 6)
angelsmods.functions.OV.set_special_recipe_override("angelsore-crystal-mix3-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-cobalt-sorting.png" })
angelsmods.functions.OV.set_output("angelsore-crystal-mix4-processing", "nickel-ore", "item", 6)
angelsmods.functions.OV.set_special_recipe_override("angelsore-crystal-mix4-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-nickel-sorting.png" })
--PURE
angelsmods.functions.OV.set_output("angelsore-pure-mix1-processing", "tungsten-ore", "item", 6)
angelsmods.functions.OV.set_special_recipe_override("angelsore-pure-mix1-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-tungsten-sorting.png" })
angelsmods.functions.OV.set_output("angelsore-pure-mix2-processing", "chrome-ore", "item", 6)
angelsmods.functions.OV.set_special_recipe_override("angelsore-pure-mix2-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-chrome-sorting.png" })
angelsmods.functions.OV.set_output("angelsore-pure-mix3-processing", "platinum-ore", "item", 6)
angelsmods.functions.OV.set_special_recipe_override("angelsore-pure-mix3-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-platinum-sorting.png" })

--GEODES
angelsmods.functions.OV.set_output("geode-blue-processing", "angels-void", "item", 1)
angelsmods.functions.OV.set_output("geode-cyan-processing", "angels-void", "item", 1)
angelsmods.functions.OV.set_output("geode-lightgreen-processing", "angels-void", "item", 1)
angelsmods.functions.OV.set_output("geode-purple-processing", "angels-void", "item", 1)
angelsmods.functions.OV.set_output("geode-red-processing", "angels-void", "item", 1)
angelsmods.functions.OV.set_output("geode-yellow-processing", "angels-void", "item", 1)

angelsmods.functions.OV.set_output("angelsore7-crystallization-1", "angels-void", "item", 1)		
angelsmods.functions.OV.set_output("angelsore7-crystallization-2", "angels-void", "item", 1)		
angelsmods.functions.OV.set_output("angelsore7-crystallization-3", "angels-void", "item", 1)		
angelsmods.functions.OV.set_output("angelsore7-crystallization-4", "angels-void", "item", 1)		
angelsmods.functions.OV.set_output("angelsore7-crystallization-5", "angels-void", "item", 1)		
angelsmods.functions.OV.set_output("angelsore7-crystallization-6", "angels-void", "item", 1)		

--SMELTING RECIPES
angelsmods.functions.OV.set_output("angelsore5-crushed-smelting", "angels-plate-lead", "item", 2)
angelsmods.functions.OV.set_special_recipe_override("angelsore5-crushed-smelting", { icon = "__angelsrefining__/graphics/icons/lead-plate-crushed.png" })
angelsmods.functions.OV.set_output("angelsore6-crushed-smelting", "angels-plate-tin", "item", 2)
angelsmods.functions.OV.set_special_recipe_override("angelsore6-crushed-smelting", { icon = "__angelsrefining__/graphics/icons/tin-plate-crushed.png" })

--LOCALIZATION STRINGS
--SLAG PROCESSING
data.raw["recipe"]["slag-processing-1"].localised_name = {"recipe-name.slag-processing-1", {"item-description.loc-iron"}, {"item-description.loc-and"}, {"item-description.loc-copper"}} 
data.raw["recipe"]["slag-processing-2"].localised_name = {"recipe-name.slag-processing-2", {"item-description.loc-lead"}, {"item-description.loc-and"}, {"item-description.loc-tin"}} 
data.raw["recipe"]["slag-processing-3"].localised_name = {"recipe-name.slag-processing-3", {"item-description.loc-nickel"}, {"item-description.loc-and"}, {"item-description.loc-quartz"}} 
data.raw["recipe"]["slag-processing-4"].localised_name = {"recipe-name.slag-processing-4", {"item-description.loc-bauxite"}, {"item-description.loc-dot"}, {"item-description.loc-cobalt"}, {"item-description.loc-and"}, {"item-description.loc-zinc"}} 
data.raw["recipe"]["slag-processing-5"].localised_name = {"recipe-name.slag-processing-5", {"item-description.loc-silver"}, {"item-description.loc-and"}, {"item-description.loc-rutile"}} 
data.raw["recipe"]["slag-processing-6"].localised_name = {"recipe-name.slag-processing-6", {"item-description.loc-gold"}, {"item-description.loc-and"}, {"item-description.loc-tungsten"}} 
--empty
--empty

--SAPHIRITE (IRON, COPPER, QUARTZ, MANGANESE, GOLD, TUNGSTEN)
data.raw["item"]["angels-ore1-crushed"].localised_description = {"item-description.angels-ore1-crushed", {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-copper"}, {"item-description.loc-and"}, {"item-description.loc-slag"}}
data.raw["item"]["angels-ore1-chunk"].localised_description = {"item-description.angels-ore1-chunk", {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-quartz"}, {"item-description.loc-dot"}, {"item-description.loc-nickel"}, {"item-description.loc-and"}, {"item-description.loc-slag"}, "", "",}
data.raw["item"]["angels-ore1-crystal"].localised_description = {"item-description.angels-ore1-crystal", {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-quartz"}, {"item-description.loc-dot"}, {"item-description.loc-nickel"}, {"item-description.loc-dot"}, {"item-description.loc-rutile"}, {"item-description.loc-and"}, {"item-description.loc-slag"}, "", "",}
data.raw["item"]["angels-ore1-pure"].localised_description = {"item-description.angels-ore1-pure", {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-quartz"}, {"item-description.loc-dot"}, {"item-description.loc-nickel"}, {"item-description.loc-dot"}, {"item-description.loc-rutile"}, {"item-description.loc-and"}, {"item-description.loc-zinc"}, "", "",}
--JIVOLITE (IRON, COPPER, TIN, ZINC, RUTILE, PLATINUM)	
data.raw["item"]["angels-ore2-crushed"].localised_description = {"item-description.angels-ore2-crushed", {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-copper"}, {"item-description.loc-and"}, {"item-description.loc-slag"}}
data.raw["item"]["angels-ore2-chunk"].localised_description = {"item-description.angels-ore2-chunk", {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-bauxite"}, {"item-description.loc-dot"}, {"item-description.loc-zinc"}, {"item-description.loc-and"}, {"item-description.loc-slag"}, "", "",}
data.raw["item"]["angels-ore2-crystal"].localised_description = {"item-description.angels-ore2-crystal", {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-bauxite"}, {"item-description.loc-dot"}, {"item-description.loc-zinc"}, {"item-description.loc-dot"}, {"item-description.loc-silver"}, {"item-description.loc-and"}, {"item-description.loc-slag"}, "", "",}
data.raw["item"]["angels-ore2-pure"].localised_description = {"item-description.angels-ore2-pure", {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-bauxite"}, {"item-description.loc-dot"}, {"item-description.loc-zinc"}, {"item-description.loc-dot"}, {"item-description.loc-silver"}, {"item-description.loc-and"}, {"item-description.loc-tungsten"}, "", "",}
--STIRATITE (COPPER, IRON, SILVER, BAUXITE, COBALT, CHROME)
data.raw["item"]["angels-ore3-crushed"].localised_description = {"item-description.angels-ore3-crushed", {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-iron"}, {"item-description.loc-and"}, {"item-description.loc-slag"}}
data.raw["item"]["angels-ore3-chunk"].localised_description = {"item-description.angels-ore3-chunk", {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-cobalt"}, {"item-description.loc-dot"}, {"item-description.loc-tin"}, {"item-description.loc-and"}, {"item-description.loc-slag"}, "", "",}
data.raw["item"]["angels-ore3-crystal"].localised_description = {"item-description.angels-ore3-crystal", {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-cobalt"}, {"item-description.loc-dot"}, {"item-description.loc-tin"}, {"item-description.loc-dot"}, {"item-description.loc-rutile"}, {"item-description.loc-and"}, {"item-description.loc-slag"}, "", "",}
data.raw["item"]["angels-ore3-pure"].localised_description = {"item-description.angels-ore3-pure", {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-cobalt"}, {"item-description.loc-dot"}, {"item-description.loc-tin"}, {"item-description.loc-dot"}, {"item-description.loc-rutile"}, {"item-description.loc-and"}, {"item-description.loc-bauxite"}, "", "",}
--CROTINIUM (COPPER, IRON, ZINC, LEAD, GOLD, TUNGSTEN)
data.raw["item"]["angels-ore4-crushed"].localised_description = {"item-description.angels-ore4-crushed", {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-iron"}, {"item-description.loc-and"}, {"item-description.loc-slag"}}
data.raw["item"]["angels-ore4-chunk"].localised_description = {"item-description.angels-ore4-chunk", {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-lead"}, {"item-description.loc-dot"}, {"item-description.loc-silver"}, {"item-description.loc-and"}, {"item-description.loc-slag"}, "", "",}
data.raw["item"]["angels-ore4-crystal"].localised_description = {"item-description.angels-ore4-crystal", {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-lead"}, {"item-description.loc-dot"}, {"item-description.loc-silver"}, {"item-description.loc-dot"}, {"item-description.loc-gold"}, {"item-description.loc-and"}, {"item-description.loc-slag"}, "", "",}
data.raw["item"]["angels-ore4-pure"].localised_description = {"item-description.angels-ore4-pure", {"item-description.loc-copper"}, {"item-description.loc-dot"}, {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-lead"}, {"item-description.loc-dot"}, {"item-description.loc-silver"}, {"item-description.loc-dot"}, {"item-description.loc-gold"}, {"item-description.loc-and"}, {"item-description.loc-rutile"}, "", "",}
--RUBYTE (LEAD, MANGANESE, SILVER, QUARTZ, NICKEL, PLATINUM)
data.raw["item"]["angels-ore5-crushed"].localised_description = {"item-description.angels-ore5-crushed", {"item-description.loc-lead"}, {"item-description.loc-dot"}, {"item-description.loc-nickel"}, {"item-description.loc-and"}, {"item-description.loc-slag"}}
data.raw["item"]["angels-ore5-chunk"].localised_description = {"item-description.angels-ore5-chunk", {"item-description.loc-lead"}, {"item-description.loc-dot"}, {"item-description.loc-nickel"}, {"item-description.loc-dot"}, {"item-description.loc-bauxite"}, {"item-description.loc-dot"}, {"item-description.loc-gold"}, {"item-description.loc-and"}, {"item-description.loc-slag"}}
data.raw["item"]["angels-ore5-crystal"].localised_description = {"item-description.angels-ore5-crystal", {"item-description.loc-lead"}, {"item-description.loc-dot"}, {"item-description.loc-nickel"}, {"item-description.loc-dot"}, {"item-description.loc-bauxite"}, {"item-description.loc-dot"}, {"item-description.loc-gold"}, {"item-description.loc-dot"}, {"item-description.loc-rutile"}, {"item-description.loc-and"}, {"item-description.loc-slag"}}
data.raw["item"]["angels-ore5-pure"].localised_description = {"item-description.angels-ore5-pure", {"item-description.loc-lead"}, {"item-description.loc-dot"}, {"item-description.loc-nickel"}, {"item-description.loc-dot"}, {"item-description.loc-bauxite"}, {"item-description.loc-dot"}, {"item-description.loc-gold"}, {"item-description.loc-dot"}, {"item-description.loc-rutile"}, {"item-description.loc-and"}, {"item-description.loc-tungsten"}}
--BOBMONIUM (TIN, QUARTZ, BAUXITE, MANGANESE, RUTILE, CHROME)
data.raw["item"]["angels-ore6-crushed"].localised_description = {"item-description.angels-ore6-crushed", {"item-description.loc-tin"}, {"item-description.loc-dot"}, {"item-description.loc-quartz"}, {"item-description.loc-and"}, {"item-description.loc-slag"}}
data.raw["item"]["angels-ore6-chunk"].localised_description = {"item-description.angels-ore6-chunk", {"item-description.loc-tin"}, {"item-description.loc-dot"}, {"item-description.loc-quartz"}, {"item-description.loc-dot"}, {"item-description.loc-cobalt"}, {"item-description.loc-dot"}, {"item-description.loc-zinc"}, {"item-description.loc-and"}, {"item-description.loc-slag"}}
data.raw["item"]["angels-ore6-crystal"].localised_description = {"item-description.angels-ore6-crystal", {"item-description.loc-tin"}, {"item-description.loc-dot"}, {"item-description.loc-quartz"}, {"item-description.loc-dot"}, {"item-description.loc-cobalt"}, {"item-description.loc-dot"}, {"item-description.loc-zinc"}, {"item-description.loc-dot"}, {"item-description.loc-bauxite"}, {"item-description.loc-and"}, {"item-description.loc-slag"}}
data.raw["item"]["angels-ore6-pure"].localised_description = {"item-description.angels-ore6-pure", {"item-description.loc-tin"}, {"item-description.loc-dot"}, {"item-description.loc-quartz"}, {"item-description.loc-dot"}, {"item-description.loc-cobalt"}, {"item-description.loc-dot"}, {"item-description.loc-zinc"}, {"item-description.loc-dot"}, {"item-description.loc-bauxite"}, {"item-description.loc-and"}, {"item-description.loc-tungsten"}}

if angelsmods.smelting then
	angelsmods.functions.OV.set_output("nodule-crystallization-1", "manganese-ore", "item", 2)
	angelsmods.functions.OV.set_output("nodule-crystallization-2", "chrome-ore", "item", 2)	
end