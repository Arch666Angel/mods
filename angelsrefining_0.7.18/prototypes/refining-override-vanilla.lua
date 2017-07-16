--REFINING ENTITY RECIPES
--require("prototypes.recipes.refining-entity-vanilla")

--SLAG PROCESSING
angelsmods.functions.OV.disable_recipe("filter-ceramic")
angelsmods.functions.OV.disable_recipe("filter-ceramic-refurbish")
angelsmods.functions.OV.disable_recipe("slag-processing-filtering-2")
angelsmods.functions.OV.disable_recipe("thermal-water-filtering-2")
--1-IRON
table.insert(data.raw["recipe"]["slag-processing-1"].results,{type="item", name="iron-ore", amount=1, probability=0.8})
angelsmods.functions.OV.set_special_recipe_override("slag-processing-1", { icon = "__angelsrefining__/graphics/icons/slag-processing-vanilla1.png" })
--2-COPPER
table.insert(data.raw["recipe"]["slag-processing-2"].results,{type="item", name="copper-ore", amount=1, probability=0.8})
angelsmods.functions.OV.set_special_recipe_override("slag-processing-2", { icon = "__angelsrefining__/graphics/icons/slag-processing-vanilla2.png" })
--3-EMPTY,
angelsmods.functions.OV.disable_recipe("slag-processing-3")
--4-EMPTY,
table.insert(data.raw["recipe"]["slag-processing-4"].results,{type="item", name="angels-iron-pebbles", amount=3, probability=0.8})
angelsmods.functions.OV.set_special_recipe_override("slag-processing-4", { icon = "__angelsrefining__/graphics/icons/slag-processing-vanilla3.png" })
--5-EMPTY,
table.insert(data.raw["recipe"]["slag-processing-5"].results,{type="item", name="angels-copper-pebbles", amount=3, probability=0.8})
angelsmods.functions.OV.set_special_recipe_override("slag-processing-5", { icon = "__angelsrefining__/graphics/icons/slag-processing-vanilla4.png" })
--6-EMPTY,
angelsmods.functions.OV.disable_recipe("slag-processing-6")
--7-EMPTY,
angelsmods.functions.OV.disable_recipe("slag-processing-7")
--8-EMPTY,
angelsmods.functions.OV.disable_recipe("slag-processing-8")	

--SORTING
--SAPHIRITE (IRON)
--CRUSHED (4/3,5)
angelsmods.functions.OV.set_output("angelsore1-crushed-processing", "iron-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore1-crushed-processing", "angels-iron-nugget", "item", 1)
angelsmods.functions.OV.set_output("angelsore1-crushed-processing", "angels-iron-pebbles", "item", 2)
--CHUNK (6/5,5)
angelsmods.functions.OV.set_output("angelsore1-chunk-processing", "iron-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore1-chunk-processing", "angels-iron-nugget", "item", 1)
angelsmods.functions.OV.set_output("angelsore1-chunk-processing", "angels-iron-pebbles", "item", 4)
--CRYSTAL (8/7,5)
angelsmods.functions.OV.set_output("angelsore1-crystal-processing", "iron-ore", "item", 4)
angelsmods.functions.OV.set_output("angelsore1-crystal-processing", "angels-iron-nugget", "item", 1)
angelsmods.functions.OV.set_output("angelsore1-crystal-processing", "angels-iron-pebbles", "item", 4)
--PURE (9/8,75)
angelsmods.functions.OV.set_output("angelsore1-pure-processing", "iron-ore", "item", 4)
angelsmods.functions.OV.set_output("angelsore1-pure-processing", "angels-iron-nugget", "item", 2)
angelsmods.functions.OV.set_output("angelsore1-pure-processing", "angels-iron-pebbles", "item", 1)
angelsmods.functions.OV.set_output("angelsore1-pure-processing", "angels-iron-slag", "item", 1)

--JIVOLITE (IRON)
--CRUSHED (4/4,5)
angelsmods.functions.OV.set_output("angelsore2-crushed-processing", "iron-ore", "item", 1)
angelsmods.functions.OV.set_output("angelsore2-crushed-processing", "angels-iron-nugget", "item", 2)
angelsmods.functions.OV.set_output("angelsore2-crushed-processing", "angels-iron-pebbles", "item", 1)
--CHUNK (6/6)
angelsmods.functions.OV.set_output("angelsore2-chunk-processing", "iron-ore", "item", 5)
angelsmods.functions.OV.set_output("angelsore2-chunk-processing", "angels-iron-nugget", "item", 2)
angelsmods.functions.OV.set_output("angelsore2-chunk-processing", "angels-iron-pebbles", "item", 2)
--CRYSTAL (8/8)
angelsmods.functions.OV.set_output("angelsore2-crystal-processing", "iron-ore", "item", 4)
angelsmods.functions.OV.set_output("angelsore2-crystal-processing", "angels-iron-nugget", "item", 2)
angelsmods.functions.OV.set_output("angelsore2-crystal-processing", "angels-iron-pebbles", "item", 2)
--PURE (9/9)
angelsmods.functions.OV.set_output("angelsore2-pure-processing", "iron-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore2-pure-processing", "angels-iron-nugget", "item", 3)
angelsmods.functions.OV.set_output("angelsore2-pure-processing", "angels-iron-pebbles", "item", 2)
angelsmods.functions.OV.set_output("angelsore2-pure-processing", "angels-iron-slag", "item", 2)

--STIRATITE (COPPER)
--CRUSHED (4/3,5)
angelsmods.functions.OV.set_output("angelsore3-crushed-processing", "copper-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore3-crushed-processing", "angels-copper-nugget", "item", 0)
angelsmods.functions.OV.set_output("angelsore3-crushed-processing", "angels-copper-pebbles", "item", 3)
--CHUNK (6/5,5)
angelsmods.functions.OV.set_output("angelsore3-chunk-processing", "copper-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore3-chunk-processing", "angels-copper-nugget", "item", 1)
angelsmods.functions.OV.set_output("angelsore3-chunk-processing", "angels-copper-pebbles", "item", 4)
--CRYSTAL (8/7,5)
angelsmods.functions.OV.set_output("angelsore3-crystal-processing", "copper-ore", "item", 3)
angelsmods.functions.OV.set_output("angelsore3-crystal-processing", "angels-copper-nugget", "item", 1)
angelsmods.functions.OV.set_output("angelsore3-crystal-processing", "angels-copper-pebbles", "item", 6)
--PURE (9/8,75)
angelsmods.functions.OV.set_output("angelsore3-pure-processing", "copper-ore", "item", 5)
angelsmods.functions.OV.set_output("angelsore3-pure-processing", "angels-copper-nugget", "item", 1)
angelsmods.functions.OV.set_output("angelsore3-pure-processing", "angels-copper-pebbles", "item", 3)
angelsmods.functions.OV.set_output("angelsore3-pure-processing", "angels-copper-slag", "item", 1)

--CROTINIUM (COPPER)
--CRUSHED (4/4)
angelsmods.functions.OV.set_output("angelsore4-crushed-processing", "copper-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore4-crushed-processing", "angels-copper-nugget", "item", 1)
angelsmods.functions.OV.set_output("angelsore4-crushed-processing", "angels-copper-pebbles", "item", 1)
--CHUNK (6/6)
angelsmods.functions.OV.set_output("angelsore4-chunk-processing", "copper-ore", "item", 4)
angelsmods.functions.OV.set_output("angelsore4-chunk-processing", "angels-copper-nugget", "item", 1)
angelsmods.functions.OV.set_output("angelsore4-chunk-processing", "angels-copper-pebbles", "item", 1)
--CRYSTAL (8/8)
angelsmods.functions.OV.set_output("angelsore4-crystal-processing", "copper-ore", "item", 4)
angelsmods.functions.OV.set_output("angelsore4-crystal-processing", "angels-copper-nugget", "item", 2)
angelsmods.functions.OV.set_output("angelsore4-crystal-processing", "angels-copper-pebbles", "item", 2)
--PURE (9/9)
angelsmods.functions.OV.set_output("angelsore4-pure-processing", "copper-ore", "item", 2)
angelsmods.functions.OV.set_output("angelsore4-pure-processing", "angels-copper-nugget", "item", 3)
angelsmods.functions.OV.set_output("angelsore4-pure-processing", "angels-copper-pebbles", "item", 2)
angelsmods.functions.OV.set_output("angelsore4-pure-processing", "angels-copper-slag", "item", 2)

--RUBYTE (EMPTY)
--CRUSHED
angelsmods.functions.OV.disable_recipe("angelsore5-crushed")
angelsmods.functions.OV.disable_recipe("angelsore5-crushed-processing")
--CHUNK
angelsmods.functions.OV.disable_recipe("angelsore5-chunk")
angelsmods.functions.OV.disable_recipe("angelsore5-chunk-processing")
--CRYSTAL
angelsmods.functions.OV.disable_recipe("angelsore5-crystal")
angelsmods.functions.OV.disable_recipe("angelsore5-crystal-processing")
--PURE
angelsmods.functions.OV.disable_recipe("angelsore5-pure")
angelsmods.functions.OV.disable_recipe("angelsore5-pure-processing")

--BOBMONIUM (EMPTY)
--CRUSHED
angelsmods.functions.OV.disable_recipe("angelsore6-crushed")
angelsmods.functions.OV.disable_recipe("angelsore6-crushed-processing")
--CHUNK
angelsmods.functions.OV.disable_recipe("angelsore6-chunk")
angelsmods.functions.OV.disable_recipe("angelsore6-chunk-processing")
--CRYSTAL
angelsmods.functions.OV.disable_recipe("angelsore6-crystal")
angelsmods.functions.OV.disable_recipe("angelsore6-crystal-processing")
--PURE
angelsmods.functions.OV.disable_recipe("angelsore6-pure")
angelsmods.functions.OV.disable_recipe("angelsore6-pure-processing")

--MIXED PROCESSING
--CRUSHED
angelsmods.functions.OV.remove_input("angelsore-crushed-mix1-processing", "angels-ore1-crushed")	
angelsmods.functions.OV.remove_input("angelsore-crushed-mix1-processing", "angels-ore2-crushed")	
angelsmods.functions.OV.set_input("angelsore-crushed-mix1-processing", "angels-iron-pebbles", "item", 4)
angelsmods.functions.OV.set_input("angelsore-crushed-mix1-processing", "angels-iron-nugget", "item", 1)
angelsmods.functions.OV.set_output("angelsore-crushed-mix1-processing", "iron-ore", "item", 4)
angelsmods.functions.OV.set_special_recipe_override("angelsore-crushed-mix1-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-iron-sorting.png" })
angelsmods.functions.OV.disable_recipe("angelsore-crushed-mix2-processing")
angelsmods.functions.OV.remove_input("angelsore-crushed-mix3-processing", "angels-ore4-crushed")	
angelsmods.functions.OV.remove_input("angelsore-crushed-mix3-processing", "angels-ore5-crushed")	
angelsmods.functions.OV.set_input("angelsore-crushed-mix3-processing", "angels-copper-pebbles", "item", 4)
angelsmods.functions.OV.set_input("angelsore-crushed-mix3-processing", "angels-copper-nugget", "item", 1)
angelsmods.functions.OV.set_output("angelsore-crushed-mix3-processing", "copper-ore", "item", 4)
angelsmods.functions.OV.set_special_recipe_override("angelsore-crushed-mix3-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-copper-sorting.png" })
angelsmods.functions.OV.disable_recipe("angelsore-crushed-mix4-processing")
--CHUNK
angelsmods.functions.OV.remove_input("angelsore-chunk-mix1-processing", "angels-ore1-chunk")
angelsmods.functions.OV.remove_input("angelsore-chunk-mix1-processing", "angels-ore6-chunk")	
angelsmods.functions.OV.set_input("angelsore-chunk-mix1-processing", "angels-iron-pebbles", "item", 3)
angelsmods.functions.OV.set_input("angelsore-chunk-mix1-processing", "angels-iron-slag", "item", 1)
angelsmods.functions.OV.set_output("angelsore-chunk-mix1-processing", "iron-ore", "item", 3)
angelsmods.functions.OV.set_special_recipe_override("angelsore-chunk-mix1-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-iron-sorting.png" })
angelsmods.functions.OV.remove_input("angelsore-chunk-mix2-processing", "angels-ore1-chunk")
angelsmods.functions.OV.remove_input("angelsore-chunk-mix2-processing", "angels-ore5-chunk")	
angelsmods.functions.OV.set_input("angelsore-chunk-mix2-processing", "angels-copper-pebbles", "item", 3)
angelsmods.functions.OV.set_input("angelsore-chunk-mix2-processing", "angels-copper-slag", "item", 1)
angelsmods.functions.OV.set_output("angelsore-chunk-mix2-processing", "copper-ore", "item", 3)
angelsmods.functions.OV.set_special_recipe_override("angelsore-chunk-mix2-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-copper-sorting.png" })
angelsmods.functions.OV.disable_recipe("angelsore-chunk-mix3-processing")
angelsmods.functions.OV.disable_recipe("angelsore-chunk-mix4-processing")
angelsmods.functions.OV.disable_recipe("angelsore-chunk-mix5-processing")
--CRYSTAL
angelsmods.functions.OV.disable_recipe("angelsore-crystal-mix1-processing")
angelsmods.functions.OV.disable_recipe("angelsore-crystal-mix2-processing")
angelsmods.functions.OV.disable_recipe("angelsore-crystal-mix3-processing")
angelsmods.functions.OV.disable_recipe("angelsore-crystal-mix4-processing")
angelsmods.functions.OV.disable_recipe("angelsore-crystal-mix5-processing")
--PURE
angelsmods.functions.OV.disable_recipe("angelsore-pure-mix1-processing")
angelsmods.functions.OV.disable_recipe("angelsore-pure-mix2-processing")
angelsmods.functions.OV.disable_recipe("angelsore-pure-mix3-processing")

--GEODES
--REMOVE GEODES FROM HYDRO REFINING
angelsmods.functions.OV.remove_output("angelsore1-chunk", "geode-blue")
angelsmods.functions.OV.remove_output("angelsore2-chunk", "geode-purple")
angelsmods.functions.OV.remove_output("angelsore3-chunk", "geode-yellow")	
angelsmods.functions.OV.remove_output("angelsore4-chunk", "geode-lightgreen")	

--GEODES SORTING
angelsmods.functions.OV.disable_recipe("geode-blue-processing")
angelsmods.functions.OV.disable_recipe("geode-cyan-processing")
angelsmods.functions.OV.disable_recipe("geode-lightgreen-processing")
angelsmods.functions.OV.disable_recipe("geode-purple-processing")
angelsmods.functions.OV.disable_recipe("geode-red-processing")
angelsmods.functions.OV.disable_recipe("geode-yellow-processing")

--SINGLE GEM CRYSTALLIZATION
angelsmods.functions.OV.disable_recipe("angelsore7-crystallization-1")
angelsmods.functions.OV.disable_recipe("angelsore7-crystallization-2")
angelsmods.functions.OV.disable_recipe("angelsore7-crystallization-3")
angelsmods.functions.OV.disable_recipe("angelsore7-crystallization-4")
angelsmods.functions.OV.disable_recipe("angelsore7-crystallization-5")
angelsmods.functions.OV.disable_recipe("angelsore7-crystallization-6")

--CRYSTAL SLURRY FILETRING
angelsmods.functions.OV.disable_recipe("crystal-slurry-filtering-2")
angelsmods.functions.OV.disable_recipe("crystal-slurry-filtering-conversion-2")

--GEODES TECHNOLOGY
angelsmods.functions.OV.disable_technology("geode-processing-1")
angelsmods.functions.OV.disable_technology("geode-processing-2")
angelsmods.functions.OV.disable_technology("geode-crystallization")

--SMELTING RECIPES
angelsmods.functions.OV.disable_recipe("angelsore5-crushed-smelting")
angelsmods.functions.OV.disable_recipe("angelsore6-crushed-smelting")

--WATER TREATMENT
if not angelsmods.petrochem then
	angelsmods.functions.OV.disable_recipe("water-mineralized")	
	angelsmods.functions.OV.disable_recipe("water-saline")
	angelsmods.functions.OV.remove_output("yellow-waste-water-purification", "water-mineralized")	
	angelsmods.functions.OV.remove_output("water-purification", "water-saline")	

	angelsmods.functions.OV.disable_recipe("salination-plant")
	angelsmods.functions.OV.disable_recipe("salination-plant-2")
	angelsmods.functions.OV.disable_technology("water-treatment-3")
end

--LOCALIZATION STRINGS
--data.raw["recipe"]["slag-processing-1"].localised_name = {"recipe-name.slag-processing-1", {"item-description.loc-iron"}, {"item-description.loc-dot"}, {"item-description.loc-copper"}} 
--empty
--empty
--empty
--empty
--empty
--empty
--empty
--empty

data.raw["item"]["angels-ore1-crushed"].localised_description = {"item-description.angels-ore1-crushed", {"item-description.loc-iron"}, "", "", "", ""}
data.raw["item"]["angels-ore1-chunk"].localised_description = {"item-description.angels-ore1-chunk", {"item-description.loc-iron"}, "", "", "", "", "", "", "", "", "", "",}	
data.raw["item"]["angels-ore1-crystal"].localised_description = {"item-description.angels-ore1-crystal", {"item-description.loc-iron"}, "", "", "", "", "", "", "", "", "", "", "", "",}	
data.raw["item"]["angels-ore1-pure"].localised_description = {"item-description.angels-ore1-pure", {"item-description.loc-iron"}, "", "", "", "", "", "", "", "", "", "", "", "",}	

data.raw["item"]["angels-ore2-crushed"].localised_description = {"item-description.angels-ore2-crushed", {"item-description.loc-iron"}, "", "", "", ""}
data.raw["item"]["angels-ore2-chunk"].localised_description = {"item-description.angels-ore2-chunk", {"item-description.loc-iron"}, "", "", "", "", "", "", "", "", "", "",}	
data.raw["item"]["angels-ore2-crystal"].localised_description = {"item-description.angels-ore2-crystal", {"item-description.loc-iron"}, "", "", "", "", "", "", "", "", "", "", "", "",}		
data.raw["item"]["angels-ore2-pure"].localised_description = {"item-description.angels-ore2-pure", {"item-description.loc-iron"}, "", "", "", "", "", "", "", "", "", "", "", "",}	

data.raw["item"]["angels-ore3-crushed"].localised_description = {"item-description.angels-ore3-pure", {"item-description.loc-copper"}, "", "", "", ""}
data.raw["item"]["angels-ore3-chunk"].localised_description = {"item-description.angels-ore3-pure", {"item-description.loc-copper"}, "", "", "", "", "", "", "", "", "", "",}	
data.raw["item"]["angels-ore3-crystal"].localised_description = {"item-description.angels-ore3-pure", {"item-description.loc-copper"}, "", "", "", "", "", "", "", "", "", "", "", "",}	
data.raw["item"]["angels-ore3-pure"].localised_description = {"item-description.angels-ore3-pure", {"item-description.loc-copper"}, "", "", "", "", "", "", "", "", "", "", "", "",}	

data.raw["item"]["angels-ore4-crushed"].localised_description = {"item-description.angels-ore4-pure", {"item-description.loc-copper"}, "", "", "", ""}
data.raw["item"]["angels-ore4-chunk"].localised_description = {"item-description.angels-ore4-pure", {"item-description.loc-copper"}, "", "", "", "", "", "", "", "", "", "",}	
data.raw["item"]["angels-ore4-crystal"].localised_description = {"item-description.angels-ore4-pure", {"item-description.loc-copper"}, "", "", "", "", "", "", "", "", "", "", "", "",}	
data.raw["item"]["angels-ore4-pure"].localised_description = {"item-description.angels-ore4-pure", {"item-description.loc-copper"}, "", "", "", "", "", "", "", "", "", "", "", "",}	

data.raw["item"]["angels-ore5-crushed"].localised_description = {"item-description.angels-ore5-pure", "", "", "", "", ""}
data.raw["item"]["angels-ore5-chunk"].localised_description = {"item-description.angels-ore5-pure", "", "", "", "", "", "", "", "", ""}	
data.raw["item"]["angels-ore5-crystal"].localised_description = {"item-description.angels-ore5-pure", "", "", "", "", "", "", "", "", "", "", "", "", "",}	
data.raw["item"]["angels-ore5-pure"].localised_description = {"item-description.angels-ore5-pure", "", "", "", "", "", "", "", "", "", "", "", "", "",}	

data.raw["item"]["angels-ore6-crushed"].localised_description = {"item-description.angels-ore6-pure", "", "", "", "", ""}
data.raw["item"]["angels-ore6-chunk"].localised_description = {"item-description.angels-ore6-pure", "", "", "", "", "", "", "", "", ""}	
data.raw["item"]["angels-ore6-crystal"].localised_description = {"item-description.angels-ore6-pure", "", "", "", "", "", "", "", "", "", "", "", "", "",}	
data.raw["item"]["angels-ore6-pure"].localised_description = {"item-description.angels-ore6-pure", "", "", "", "", "", "", "", "", "", "", "", "", "",}	