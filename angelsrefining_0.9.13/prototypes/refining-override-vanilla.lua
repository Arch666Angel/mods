local OV = angelsmods.functions.OV

--REFINING ENTITY RECIPES
--require("prototypes.recipes.refining-entity-vanilla")

--SLAG PROCESSING
angelsmods.functions.OV.disable_recipe("filter-ceramic")
angelsmods.functions.OV.disable_recipe("filter-ceramic-refurbish")
angelsmods.functions.OV.disable_recipe("slag-processing-filtering-2")
angelsmods.functions.OV.disable_recipe("thermal-water-filtering-2")

OV.patch_recipes({
--1-IRON
{ name = "slag-processing-1", results = {{"!!"}, { name = "iron-ore", type = "item", amount = 1, probability = 0.8 }}, icon = "__angelsrefining__/graphics/icons/slag-processing-vanilla1.png" },
--2-COPPER
{ name = "slag-processing-2", results = {{"!!"}, { name = "copper-ore", type = "item", amount = 1, probability = 0.8 }}, icon = "__angelsrefining__/graphics/icons/slag-processing-vanilla2.png" },
--4-IRON-PEBBLES,
{ name = "slag-processing-4", results = {{"!!"}, { name = "angels-iron-pebbles", type = "item", amount = 3, probability = 0.8 }}, icon = "__angelsrefining__/graphics/icons/slag-processing-vanilla3.png" },
--5-COPPER-PEBBLES,
{ name = "slag-processing-5", results = {{"!!"}, { name = "angels-copper-pebbles", type = "item", amount = 3, probability = 0.8 }}, icon = "__angelsrefining__/graphics/icons/slag-processing-vanilla4.png" }
})
--3-EMPTY,
angelsmods.functions.OV.disable_recipe("slag-processing-3")
--6-EMPTY,
angelsmods.functions.OV.disable_recipe("slag-processing-6")
--7-EMPTY,
angelsmods.functions.OV.disable_recipe("slag-processing-7")
--8-EMPTY,
angelsmods.functions.OV.disable_recipe("slag-processing-8")
--9-EMPTY,
angelsmods.functions.OV.disable_recipe("slag-processing-9")


--SORTING
OV.patch_recipes({
--SAPHIRITE (IRON)
--CRUSHED (4/3,5)
{ name = "angelsore1-crushed-processing", results = {{"!!"}, { name = "iron-ore", type = "item", amount = 1}, { name = "angels-iron-nugget", type = "item", amount = 1}, { name = "angels-iron-pebbles", type = "item", amount = 2}}},
--CHUNK (6/5,5)
{ name = "angelsore1-chunk-processing", results = {{"!!"}, { name = "iron-ore", type = "item", amount = 2}, { name = "angels-iron-nugget", type = "item", amount = 1}, { name = "angels-iron-pebbles", type = "item", amount = 4}}},
--CRYSTAL (8/7,5)
{ name = "angelsore1-crystal-processing", results = {{"!!"}, { name = "iron-ore", type = "item", amount = 4}, { name = "angels-iron-nugget", type = "item", amount = 1}, { name = "angels-iron-pebbles", type = "item", amount = 4}}},
--PURE (9/8,75)
{ name = "angelsore1-pure-processing", results = {{"!!"}, { name = "iron-ore", type = "item", amount = 4}, { name = "angels-iron-nugget", type = "item", amount = 2}, { name = "angels-iron-pebbles", type = "item", amount = 1}, { name = "angels-iron-slag", type = "item", amount = 1}}},

--JIVOLITE (IRON)
--CRUSHED (4/4,5)
{ name = "angelsore2-crushed-processing", results = {{"!!"}, { name = "iron-ore", type = "item", amount = 1}, { name = "angels-iron-nugget", type = "item", amount = 2}, { name = "angels-iron-pebbles", type = "item", amount = 1}}},
--CHUNK (6/6)
{ name = "angelsore2-chunk-processing", results = {{"!!"}, { name = "iron-ore", type = "item", amount = 2}, { name = "angels-iron-nugget", type = "item", amount = 2}, { name = "angels-iron-pebbles", type = "item", amount = 2}}},
--CRYSTAL (8/8)
{ name = "angelsore2-crystal-processing", results = {{"!!"}, { name = "iron-ore", type = "item", amount = 4}, { name = "angels-iron-nugget", type = "item", amount = 2}, { name = "angels-iron-pebbles", type = "item", amount = 2}}},
--PURE (9/9)
{ name = "angelsore2-pure-processing", results = {{"!!"}, { name = "iron-ore", type = "item", amount = 2}, { name = "angels-iron-nugget", type = "item", amount = 3}, { name = "angels-iron-pebbles", type = "item", amount = 2}, { name = "angels-iron-slag", type = "item", amount = 2}}},

--STIRATITE (COPPER)
--CRUSHED (4/3,5)
{ name = "angelsore3-crushed-processing", results = {{"!!"}, { name = "copper-ore", type = "item", amount = 2}, { name = "angels-copper-nugget", type = "item", amount = 0}, { name = "angels-copper-pebbles", type = "item", amount = 3}}},
--CHUNK (6/5,5)
{ name = "angelsore3-chunk-processing", results = {{"!!"}, { name = "copper-ore", type = "item", amount = 2}, { name = "angels-copper-nugget", type = "item", amount = 1}, { name = "angels-copper-pebbles", type = "item", amount = 4}}},
--CRYSTAL (8/7,5)
{ name = "angelsore3-crystal-processing", results = {{"!!"}, { name = "copper-ore", type = "item", amount = 3}, { name = "angels-copper-nugget", type = "item", amount = 1}, { name = "angels-copper-pebbles", type = "item", amount = 6}}},
--PURE (9/8,75)
{ name = "angelsore3-pure-processing", results = {{"!!"}, { name = "copper-ore", type = "item", amount = 5}, { name = "angels-copper-nugget", type = "item", amount = 1}, { name = "angels-copper-pebbles", type = "item", amount = 3}, { name = "angels-copper-slag", type = "item", amount = 1}}},

--CROTINIUM (COPPER)
--CRUSHED (4/4)
{ name = "angelsore4-crushed-processing", results = {{"!!"}, { name = "copper-ore", type = "item", amount = 2}, { name = "angels-copper-nugget", type = "item", amount = 1}, { name = "angels-copper-pebbles", type = "item", amount = 1}}},
--CHUNK (6/6)
{ name = "angelsore4-chunk-processing", results = {{"!!"}, { name = "copper-ore", type = "item", amount = 4}, { name = "angels-copper-nugget", type = "item", amount = 1}, { name = "angels-copper-pebbles", type = "item", amount = 1}}},
--CRYSTAL (8/8)
{ name = "angelsore4-crystal-processing", results = {{"!!"}, { name = "copper-ore", type = "item", amount = 4}, { name = "angels-copper-nugget", type = "item", amount = 2}, { name = "angels-copper-pebbles", type = "item", amount = 2}}},
--PURE (9/9)
{ name = "angelsore4-pure-processing", results = {{"!!"}, { name = "copper-ore", type = "item", amount = 2}, { name = "angels-copper-nugget", type = "item", amount = 3}, { name = "angels-copper-pebbles", type = "item", amount = 2}, { name = "angels-copper-slag", type = "item", amount = 2}}}
})

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

--ORE 8
angelsmods.functions.OV.disable_recipe("angelsore8-crushed")
angelsmods.functions.OV.disable_recipe("angelsore8-powder")

angelsmods.functions.OV.disable_recipe("angelsore8-sludge")
angelsmods.functions.OV.disable_recipe("angelsore8-dust")

angelsmods.functions.OV.disable_recipe("angelsore8-solution")
angelsmods.functions.OV.disable_recipe("angelsore8-anode-sludge-filtering")
angelsmods.functions.OV.disable_recipe("angelsore8-anode-sludge")
angelsmods.functions.OV.disable_recipe("angelsore8-crystal")

angelsmods.functions.OV.disable_recipe("angelsore8-crushed-processing")
angelsmods.functions.OV.disable_recipe("angelsore8-powder-processing")
angelsmods.functions.OV.disable_recipe("angelsore8-dust-processing")
angelsmods.functions.OV.disable_recipe("angelsore8-crystal-processing")

--ORE 9
angelsmods.functions.OV.disable_recipe("angelsore9-crushed")
angelsmods.functions.OV.disable_recipe("angelsore9-powder")

angelsmods.functions.OV.disable_recipe("angelsore9-sludge")
angelsmods.functions.OV.disable_recipe("angelsore9-dust")

angelsmods.functions.OV.disable_recipe("angelsore9-solution")
angelsmods.functions.OV.disable_recipe("angelsore9-anode-sludge-filtering")
angelsmods.functions.OV.disable_recipe("angelsore9-anode-sludge")
angelsmods.functions.OV.disable_recipe("angelsore9-crystal")

angelsmods.functions.OV.disable_recipe("angelsore9-crushed-processing")
angelsmods.functions.OV.disable_recipe("angelsore9-powder-processing")
angelsmods.functions.OV.disable_recipe("angelsore9-dust-processing")
angelsmods.functions.OV.disable_recipe("angelsore9-crystal-processing")

angelsmods.functions.OV.disable_technology( {"ore-advanced-crushing", "ore-powderizer", "ore-advanced-floatation", "ore-electro-whinning-cell"})

--MIXED PROCESSING
--CRUSHED
OV.patch_recipes({
{ name = "angelsore-crushed-mix1-processing", ingredients = {{"!!"}, { name = "angels-ore1-crushed", type = "item", amount = 0}, { name = "angels-ore1-crushed", type = "item", amount = 0}, { name = "angels-iron-pebbles", type = "item", amount = 4}, { name = "angels-iron-nugget", type = "item", amount = 1}},
											  results = {{"!!"}, { name = "iron-ore", type = "item", amount = 4}},
											  icon = "__angelsrefining__/graphics/icons/angels-ore-mix-iron-sorting.png"
											  },
{ name = "angelsore-crushed-mix3-processing", ingredients = {{"!!"}, { name = "angels-ore4-crushed", type = "item", amount = 0}, { name = "angels-ore5-crushed", type = "item", amount = 0}, { name = "angels-copper-pebbles", type = "item", amount = 4}, { name = "angels-copper-nugget", type = "item", amount = 1}},
											  results = {{"!!"}, { name = "copper-ore", type = "item", amount = 4}},
											  icon = "__angelsrefining__/graphics/icons/angels-ore-mix-copper-sorting.png"
											  }
})
angelsmods.functions.OV.disable_recipe("angelsore-crushed-mix2-processing")
angelsmods.functions.OV.disable_recipe("angelsore-crushed-mix4-processing")

--CHUNK
OV.patch_recipes({
{ name = "angelsore-chunk-mix1-processing", ingredients = {{"!!"}, { name = "angels-ore1-chunk", type = "item", amount = 0}, { name = "angels-ore6-chunk", type = "item", amount = 0}, { name = "angels-iron-pebbles", type = "item", amount = 3}, { name = "angels-iron-slag", type = "item", amount = 1}},
											results = {{"!!"}, { name = "iron-ore", type = "item", amount = 3}},
											icon = "__angelsrefining__/graphics/icons/angels-ore-mix-iron-sorting.png"
											},
{ name = "angelsore-chunk-mix2-processing", ingredients = {{"!!"}, { name = "angels-ore1-chunk", type = "item", amount = 0}, { name = "angels-ore5-chunk", type = "item", amount = 0}, { name = "angels-copper-pebbles", type = "item", amount = 3}, { name = "angels-copper-slag", type = "item", amount = 1}},
											results = {{"!!"}, { name = "copper-ore", type = "item", amount = 3}},
											icon = "__angelsrefining__/graphics/icons/angels-ore-mix-copper-sorting.png"
											}
})
angelsmods.functions.OV.disable_recipe("angelsore-chunk-mix3-processing")
angelsmods.functions.OV.disable_recipe("angelsore-chunk-mix4-processing")
angelsmods.functions.OV.disable_recipe("angelsore-chunk-mix5-processing")
angelsmods.functions.OV.disable_recipe("angelsore-chunk-mix6-processing")
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
OV.patch_recipes({
--REMOVE GEODES FROM HYDRO REFINING
{ name = "angelsore1-chunk", results = {{ name = "geode-blue", type = "item", amount = 0}}},
{ name = "angelsore2-chunk", results = {{ name = "geode-purple", type = "item", amount = 0}}},
{ name = "angelsore3-chunk", results = {{ name = "geode-yellow", type = "item", amount = 0}}},
{ name = "angelsore4-chunk", results = {{ name = "geode-lightgreen", type = "item", amount = 0}}},
})
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
	OV.patch_recipes({
	{ name = "yellow-waste-water-purification", results = {{ name = "water-mineralized", type = "fluid", amount = 0}}},
	{ name = "water-purification", results = {{ name = "water-saline", type = "fluid", amount = 0}}},
	})
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
