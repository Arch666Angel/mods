local OV = angelsmods.functions.OV

--MODIFICATION TO REFINING
	--PREPARATIONS
	OV.disable_recipe("solid-lithium")

--INSERT GEODES AS MINABLE RESULT TO STONE ROCKS	
-- if angelsmods.industries or bobmods and bobmods.plates then	
	-- data.raw["simple-entity"]["stone-rock"].minable={mining_particle = "stone-particle",mining_time = 8,
	-- results=
		-- {
		  -- {type="item", name="stone", amount=10, probability=1},
		  -- {type="item", name="geode-blue", amount=3, probability=0.7},
  		  -- {type="item", name="geode-cyan", amount=1, probability=0.3},
		  -- {type="item", name="geode-lightgreen", amount=1, probability=0.4},
		  -- {type="item", name="geode-purple", amount=2, probability=0.5},
		  -- {type="item", name="geode-red", amount=3, probability=0.8},
		  -- {type="item", name="geode-yellow", amount=2, probability=0.6},
		-- },
    -- }
-- end	

--SORTING OVERRIDES
require("prototypes.recipes.refining-entity-angels")
if angelsmods.industries or (bobmods and bobmods.plates) then
	if angelsmods.industries and angelsmods.industries.overhaul then
		require("prototypes.refining-override-angels")
	else
		require("prototypes.refining-override-bob")
	end
	--SPECIAL VANILLA
	OV.disable_recipe({ "angels-iron-nugget-smelting", "angels-iron-pebbles-smelting", "angels-copper-nugget-smelting", "angels-copper-pebbles-smelting", "angels-iron-pebbles", "angels-copper-pebbles" })
	angelsmods.functions.add_flag("angels-iron-nugget", "hidden")
	angelsmods.functions.add_flag("angels-iron-pebbles", "hidden")
	angelsmods.functions.add_flag("angels-iron-slag", "hidden")
	angelsmods.functions.add_flag("angels-copper-nugget", "hidden")
	angelsmods.functions.add_flag("angels-copper-pebbles", "hidden")
	angelsmods.functions.add_flag("angels-copper-slag", "hidden")
else
	require("prototypes.refining-override-vanilla")
end

--OVERRIDE FOR WATER TREATMENT
if not angelsmods.petrochem then
	OV.disable_recipe({ "red-waste-water-purification", "green-waste-water-purification", "greenyellow-waste-water-purification", "solid-salt-from-saline", "solid-salt" })
else if angelsmods.trigger.enableacids then
	--INSERT ADDITIONAL WATER RESOURCES INTO REFINING RECIPES
   OV.patch_recipes({
      { name = "angelsore2-chunk", results = {{ name = "water-greenyellow-waste", type = "fluid", amount = "water-yellow-waste" }} },
      { name = "angelsore4-chunk", results = {{ name = "water-green-waste", type = "fluid", amount = "water-yellow-waste" }} },
      { name = "angelsore5-chunk", results = {{ name = "water-red-waste", type = "fluid", amount = "water-yellow-waste" }} },
      { name = "greenyellow-waste-water-purification", results = {{ "fluorite-ore" }} },
   })
	else
	OV.disable_recipe({ "red-waste-water-purification", "green-waste-water-purification", "greenyellow-waste-water-purification" })
	end
end

if not angelsmods.smelting then
	OV.disable_technology({ "water-washing-1", "water-washing-2" })
end

--OVERRIDE FOR BOBs
if bobmods and bobmods.plates then
	OV.patch_recipes({
   --SINGLE GEM CRYSTALLIZATION
      { name = "angelsore7-crystallization-1", results = {
         {"!!"},
         { "sapphire-ore", 1 }
      }, icon = "__angelsrefining__/graphics/icons/gem-crystallization-sapphire.png" },
      { name = "angelsore7-crystallization-2", results = {
         {"!!"},
         { "topaz-ore", 1 }
      }, icon = "__angelsrefining__/graphics/icons/gem-crystallization-topaz.png" },
      { name = "angelsore7-crystallization-3", results = {
         {"!!"},
         { "ruby-ore", 1 }
      }, icon = "__angelsrefining__/graphics/icons/gem-crystallization-ruby.png" },
      { name = "angelsore7-crystallization-4", results = {
         {"!!"},
         { "emerald-ore", 1 }
      }, icon = "__angelsrefining__/graphics/icons/gem-crystallization-emerald.png" },
      { name = "angelsore7-crystallization-5", results = {
         {"!!"},
         { "amethyst-ore", 1 }
      }, icon = "__angelsrefining__/graphics/icons/gem-crystallization-amethyst.png" },
      { name = "angelsore7-crystallization-6", results = {
         {"!!"},
         { "diamond-ore", 1 }
      }, icon = "__angelsrefining__/graphics/icons/gem-crystallization-diamond.png" },
   --INSERT WATER RESOURCES TO BOB RECIPES
      { name = "water-electrolysis", ingredients = { { name = "water-purified", type = "fluid", amount = "water" } } },
      { name = "nitric-acid", ingredients = { { name = "water-purified", type = "fluid", amount = "water" } } },
      { name = "sulfuric-acid-2", ingredients = { { name = "water-purified", type = "fluid", amount = "water" } } },
      { name = "petroleum-gas-cracking", ingredients = { { name = "water-purified", type = "fluid", amount = "water" } } },
      { name = "coal-cracking", ingredients = { { name = "water-purified", type = "fluid", amount = "water" } } },
      { name = "lithium-water-electrolysis", ingredients = { { name = "water-purified", type = "fluid", amount = "water" } } },
      { name = "explosives", ingredients = { { name = "water-purified", type = "fluid", amount = "water" } } },
      { name = "sulfur", ingredients = { { name = "water-purified", type = "fluid", amount = "water" } } },
      { name = "sulfuric-acid", ingredients = { { name = "water-purified", type = "fluid", amount = "water" } } },
      { name = "heavy-oil-cracking", ingredients = { { name = "water-purified", type = "fluid", amount = "water" } } },
      { name = "light-oil-cracking", ingredients = { { name = "water-purified", type = "fluid", amount = "water" } } },
      { name = "advanced-oil-processing", ingredients = { { name = "water-purified", type = "fluid", amount = "water" } } }
	})
	
	if bobmods.gems then
	--TEMP FIX
	if data.raw.recipe["sort-gem-ore"] then
	data.raw.recipe["sort-gem-ore"].icon_size = 32
	end
	data:extend(
	{
	  {
		type = "recipe",
		name = "sort-gem-ore",
		energy_required = 1,
		ingredients =
		{
		  {"crystal-dust", 5},
		},
		results =
		{
		  {type="item", name="ruby-ore", amount=1, probability = bobmods.gems.RubyRatio},
		  {type="item", name="sapphire-ore", amount=1, probability = bobmods.gems.SapphireRatio},
		  {type="item", name="emerald-ore", amount=1, probability = bobmods.gems.EmeraldRatio},
		  {type="item", name="amethyst-ore", amount=1, probability = bobmods.gems.AmethystRatio},
		  {type="item", name="topaz-ore", amount=1, probability = bobmods.gems.TopazRatio},
		  {type="item", name="diamond-ore", amount=1, probability = bobmods.gems.DiamondRatio},
		},
		subgroup = "bob-gems-ore",
		icon = "__bobores__/graphics/icons/gem-ore.png",
		icon_size = 32,
		order = "a-0",
	  },
	}
	)
	end

	--WATER TREATMENT
	data.raw["fluid"]["lithia-water"].icon = "__angelsrefining__/graphics/icons/water-lithia.png"
	
	--SPECIAL RECIPES
	data:extend(
	{
	  {
		type = "recipe",
		name = "salt-water-electrolysis-2",
		category = "electrolysis",
		enabled = "false",
		energy_required = 1,
		ingredients =
		{
		  {type="fluid", name="water-saline", amount=40}
		},
		results=
		{
		  {type="item", name="sodium-hydroxide", amount=1},
		  {type="fluid", name="chlorine", amount=20},
		  {type="fluid", name="hydrogen", amount=20},
		},
		icon = "__angelsrefining__/graphics/icons/electrolysis-salt-water.png",
		icon_size = 32,
		subgroup = "bob-fluid-electrolysis",
		order = "b[fluid-chemistry]-b[salt-water-electrolysis]"
	  },
	  {
		type = "recipe",
		name = "water-thermal-lithia",
		category = "water-treatment",
		subgroup = "water-treatment",
		enabled = "false",
		energy_required = 1,
		ingredients =
		{
		  {type="fluid", name="thermal-water", amount=100}
		},
		results=
		{
		  {type="fluid", name="lithia-water", amount=40},
		  {type="fluid", name="water-purified", amount=60},
		},
		icon = "__angelsrefining__/graphics/icons/water-thermal-lithia.png",
		icon_size = 32,
		order = "g[water-thermal-lithia]"
	  },
	}
	)
	if not angelsmods.petrochem then
		OV.add_unlock("water-treatment", "salt-water-electrolysis-2")
	end
	
	OV.add_unlock("thermal-water-extraction", "water-thermal-lithia")
	
	data.raw["recipe"]["bob-ruby-3"].result_count = 1	
	data.raw["recipe"]["bob-sapphire-3"].result_count = 1	
	data.raw["recipe"]["bob-emerald-3"].result_count = 1	
	data.raw["recipe"]["bob-amethyst-3"].result_count = 1	
	data.raw["recipe"]["bob-topaz-3"].result_count = 1	
	data.raw["recipe"]["bob-diamond-3"].result_count = 1	
	
	--ADD LIQUIFYING RECIPES TO CHEMICAL PLANTS
	if bobmods.assembly then
		if data.raw["assembling-machine"]["chemical-plant"] then table.insert(data.raw["assembling-machine"]["chemical-plant"].crafting_categories,"liquifying") end
		if data.raw["assembling-machine"]["chemical-plant-2"] then table.insert(data.raw["assembling-machine"]["chemical-plant-2"].crafting_categories,"liquifying") end
		if data.raw["assembling-machine"]["chemical-plant-3"] then table.insert(data.raw["assembling-machine"]["chemical-plant-3"].crafting_categories,"liquifying") end
		if data.raw["assembling-machine"]["chemical-plant-4"] then table.insert(data.raw["assembling-machine"]["chemical-plant-4"].crafting_categories,"liquifying") end
	end
	
	--DISABLE WATER-MINERS
	if data.raw["technology"]["water-miner-1"] then
		data.raw["technology"]["water-miner-1"] = nil
		data.raw["technology"]["water-miner-2"] = nil
		data.raw["technology"]["water-miner-3"] = nil
		data.raw["technology"]["water-miner-4"] = nil
		data.raw["technology"]["water-miner-5"] = nil
	end
	
	--OVERRIDE BOB PURE WATER
	if data.raw["fluid"]["pure-water"] then
		OV.global_replace_item("pure-water", "water-purified")
		OV.disable_recipe({ "pure-water", "pure-water-from-lithia" })
	end
	
	--LOCALIZATION
	--SINGLE GEM CRYSTALLIZATION
	data.raw["recipe"]["angelsore7-crystallization-1"].localised_name = {"recipe-name.angelsore7-crystallization-1", "Sapphire-Ore"}
	data.raw["recipe"]["angelsore7-crystallization-2"].localised_name = {"recipe-name.angelsore7-crystallization-2", "Topaz-Ore"}
	data.raw["recipe"]["angelsore7-crystallization-3"].localised_name = {"recipe-name.angelsore7-crystallization-3", "Ruby-Ore"}
	data.raw["recipe"]["angelsore7-crystallization-4"].localised_name = {"recipe-name.angelsore7-crystallization-4", "Emerald-Ore"}
	data.raw["recipe"]["angelsore7-crystallization-5"].localised_name = {"recipe-name.angelsore7-crystallization-5", "Amethyst-Ore"}
	data.raw["recipe"]["angelsore7-crystallization-6"].localised_name = {"recipe-name.angelsore7-crystallization-6", "Diamond-Ore"}
else
	OV.disable_recipe({ "angelsore7-crystallization-1", "angelsore7-crystallization-2", "angelsore7-crystallization-3", "angelsore7-crystallization-4", "angelsore7-crystallization-5", "angelsore7-crystallization-6"})	
end
	  
	  
--OVERRIDE FOR YUOKI
if data.raw.item["y-res1"] then
	--TIER 2
	OV.patch_recipes({
	{ name = "angelsore1-chunk-processing", ingredients = { {type = "item", name = "angels-ore1-chunk", amount= "+1"} }, results = { {type = "item", name = "y-res1", amount=1} } },
	{ name = "angelsore3-chunk-processing", ingredients = { {type = "item", name = "angels-ore3-chunk", amount= "+1"} }, results = { {type = "item", name = "y-res2", amount=1} } },
	--TIER 3
	{ name = "angelsore1-crystal-processing", ingredients = { {type = "item", name = "angels-ore1-crystal", amount= "+1"} }, results = { {type = "item", name = "y-res1", amount=1} } },
	{ name = "angelsore3-crystal-processing", ingredients = { {type = "item", name = "angels-ore3-crystal", amount= "+1"} }, results = { {type = "item", name = "y-res2", amount=1} } },
	--TIER 4
	{ name = "angelsore1-pure-processing", ingredients = { {type = "item", name = "angels-ore1-pure", amount= "+1"} }, results = { {type = "item", name = "y-res1", amount=1} } },
	{ name = "angelsore3-pure-processing", ingredients = { {type = "item", name = "angels-ore3-pure", amount= "+1"} }, results = { {type = "item", name = "y-res2", amount=1} } },
	})

	--RECIPES
	data:extend({
		{
		type = "recipe",
		name = "slag-processing-yi",
		category = "crystallizing",
		subgroup = "slag-processing-1",
		energy_required = 8,
		enabled = "false",
		ingredients ={
		{type="fluid", name="mineral-sludge", amount=50},
		},
		results=
		{
		  {type="item", name="y-res1", amount=1, probability=0.5},
		  {type="item", name="y-res2", amount=1, probability=0.5},
		},
		icon = "__angelsrefining__/graphics/icons/slag-processing-yi.png",
		icon_size = 32,
		order = "a-a [slag-processing-yi]",
		},
		{
		type = "recipe",
		name = "angelsore-chunk-mix-yi1-processing",
		category = "ore-sorting",
		subgroup = "ore-sorting-advanced",
		energy_required = 1.5,
		enabled = "false",
		ingredients ={
		{type="item", name="angels-ore1-chunk", amount=2},
		{type="item", name="angels-ore3-chunk", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
		results=
		{
		  {type="item", name="y-res1", amount=6},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore-mix-yi1-sorting.png",
		icon_size = 32,
		order = "c-i-g[angelsore-chunk-mix-yi1-processing]",
		},
		{
		type = "recipe",
		name = "angelsore-chunk-mix-yi2-processing",
		category = "ore-sorting",
		subgroup = "ore-sorting-advanced",
		energy_required = 1.5,
		enabled = "false",
		ingredients ={
		{type="item", name="angels-ore2-chunk", amount=2},
		{type="item", name="angels-ore4-chunk", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
		results=
		{
		  {type="item", name="y-res2", amount=6},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore-mix-yi2-sorting.png",
		icon_size = 32,
		order = "c-i-g[angelsore-chunk-mix-yi2-processing]",
		},
		{
		type = "recipe",
		name = "yellow-waste-water-purification-yi",
		category = "water-treatment",
		subgroup = "water-treatment",
		energy_required = 1,
		enabled = "false",
		ingredients ={
		{type="fluid", name="water-yellow-waste", amount=100}
		},
		results=
		{
		  {type="fluid", name="y-con_water", amount=20},
		  {type="fluid", name="water-purified", amount=70},
		  {type="item", name="sulfur", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/water-yellow-waste-purification-yi.png",
		icon_size = 32,
		order = "a[yellow-waste-water-purification-yi]",
		},
	})
	
	--INSERT RECIPES TO TECHNOLOGY
	OV.add_unlock("water-treatment", "yellow-waste-water-purification-yi")
	OV.add_unlock("slag-processing-1", "slag-processing-yi")
	OV.add_unlock("advanced-ore-refining-2", "angelsore-chunk-mix-yi1-processing")
	OV.add_unlock("advanced-ore-refining-2", "angelsore-chunk-mix-yi2-processing")
end

--OVERRIDE FOR URANIUM POWER
if data.raw.item["uraninite"] then
	OV.patch_recipes({
	{ name = "angelsore2-chunk-processing", ingredients = { {type = "item", name = "angels-ore2-chunk", amount= "+1"} }, results = { {type = "item", name = "uraninite", amount=1} } },
	{ name = "angelsore4-chunk-processing", ingredients = { {type = "item", name = "angels-ore4-chunk", amount= "+1"} }, results = { {type = "item", name = "fluorite", amount=1} } },
	--TIER 3
	{ name = "angelsore2-crystal-processing", ingredients = { {type = "item", name = "angels-ore2-crystal", amount= "+1"} }, results = { {type = "item", name = "uraninite", amount=1} } },
	{ name = "angelsore4-crystal-processing", ingredients = { {type = "item", name = "angels-ore4-crystal", amount= "+1"} }, results = { {type = "item", name = "fluorite", amount=1} } },
	--TIER 4
	{ name = "angelsore2-pure-processing", ingredients = { {type = "item", name = "angels-ore2-pure", amount= "+1"} }, results = { {type = "item", name = "uraninite", amount=1} } },
	{ name = "angelsore4-pure-processing", ingredients = { {type = "item", name = "angels-ore4-pure", amount= "+1"} }, results = { {type = "item", name = "fluorite", amount=1} } },
	})

	data:extend({
		{
		type = "recipe",
		name = "slag-processing-up",
		category = "crystallizing",
		subgroup = "slag-processing-1",
		energy_required = 8,
		enabled = "false",
		ingredients ={
		{type="fluid", name="mineral-sludge", amount=50},
		},
		results=
		{
		{type = "item", name = "uraninite", amount_min = 1, amount_max = 5, probability = 0.05},
		{type = "item", name = "fluorite", amount_min = 1, amount_max = 1, probability = 0.05},
		},
		icon = "__angelsrefining__/graphics/icons/slag-processing-up.png",
		icon_size = 32,
		order = "a-a [slag-processing-up]",
		},
		{
		type = "recipe",
		name = "angelsore-crystal-mix-up1-processing",
		category = "ore-sorting",
		subgroup = "ore-sorting-advanced",
		energy_required = 1.5,
		enabled = "false",
		ingredients ={
		{type="item", name="angels-ore1-crystal", amount=2},
		{type="item", name="angels-ore5-crystal", amount=2},
		{type="item", name="angels-ore6-crystal", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
		results=
		{
		  {type = "item", name = "uraninite", amount_min = 1, amount_max = 1, probability = 0.46},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore-mix-up1-sorting.png",
		icon_size = 32,
		order = "c-i-g[angelsore-crystal-mix-up1-processing]",
		},
		{
		type = "recipe",
		name = "angelsore-crystal-mix-up2-processing",
		category = "ore-sorting",
		subgroup = "ore-sorting-advanced",
		energy_required = 1.5,
		enabled = "false",
		ingredients ={
		{type="item", name="angels-ore2-crystal", amount=2},
		{type="item", name="angels-ore3-crystal", amount=2},
		{type="item", name="angels-ore4-crystal", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
		results=
		{
		  {type = "item", name = "fluorite", amount_min = 1, amount_max = 1, probability = 0.1},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore-mix-up2-sorting.png",
		icon_size = 32,
		order = "c-i-g[angelsore-crystal-mix-up2-processing]",
		},
	})
	table.insert(data.raw["technology"]["slag-processing-1"].effects,{type = "unlock-recipe", recipe = "slag-processing-up"})
	table.insert(data.raw["technology"]["advanced-ore-refining-3"].effects,{type = "unlock-recipe", recipe = "angelsore-crystal-mix-up1-processing"})
	table.insert(data.raw["technology"]["advanced-ore-refining-3"].effects,{type = "unlock-recipe", recipe = "angelsore-crystal-mix-up2-processing"})
end

--OVERRIDE FOR NUCULAR
-- if data.raw.item["uranium-ore"] then
	--TIER 2
	-- data.raw["recipe"]["angelsore5-chunk-processing"].ingredients[1]={"angels-ore5-chunk", 7}

	-- table.insert(data.raw["recipe"]["angelsore5-chunk-processing"].results,{type = "item", name = "uranium-ore", amount=1})

	--TIER 3
	-- data.raw["recipe"]["angelsore5-crystal-processing"].ingredients[1]={"angels-ore5-crystal", 9}

	-- table.insert(data.raw["recipe"]["angelsore5-crystal-processing"].results,{type = "item", name = "uranium-ore", amount=1})

	--TIER 4
	-- data.raw["recipe"]["angelsore5-pure-processing"].ingredients[1]={"angels-ore5-pure", 10}

	-- table.insert(data.raw["recipe"]["angelsore5-pure-processing"].results,{type = "item", name = "uranium-ore", amount=1})

	-- data:extend({
		-- {
		-- type = "recipe",
		-- name = "slag-processing-nuc",
		-- category = "crystallizing",
		-- subgroup = "slag-processing-1",
		-- energy_required = 8,
		-- enabled = "false",
		-- ingredients ={
		-- {type="fluid", name="mineral-sludge", amount=50},
		-- },
		-- results=
		-- {
		  -- {type="item", name="uranium-ore", amount=1, probability=0.8},
		-- },
		-- icon = "__angelsrefining__/graphics/icons/slag-processing-nuc.png",
		-- order = "a-a [slag-processing-nuc]",
		-- },
		-- {
		-- type = "recipe",
		-- name = "angelsore-crystal-mix-nuc-processing",
		-- category = "ore-sorting",
		-- subgroup = "ore-sorting-advanced",
		-- energy_required = 1.5,
		-- enabled = "false",
		-- ingredients ={
		-- {type="item", name="angels-ore3-crystal", amount=2},
		-- {type="item", name="angels-ore4-crystal", amount=2},
		-- {type="item", name="angels-ore5-crystal", amount=2},
		-- {type="item", name="catalysator-brown", amount=1},
		-- },
		-- results=
		-- {
		  -- {type="item", name="uranium-ore", amount=6},
		-- },
		-- icon = "__angelsrefining__/graphics/icons/angels-ore-mix-nuc-sorting.png",
		-- order = "c-i-g[angelsore-crystal-mix-nuc-processing]",
		-- },
	-- })
	-- table.insert(data.raw["technology"]["slag-processing-1"].effects,{type = "unlock-recipe", recipe = "slag-processing-nuc"})
	-- table.insert(data.raw["technology"]["advanced-ore-refining-3"].effects,{type = "unlock-recipe", recipe = "angelsore-crystal-mix-nuc-processing"})
-- end

--ENABLE PRODUCTIVITY
	angelsmods.functions.allow_productivity("slag-processing-1")
	angelsmods.functions.allow_productivity("slag-processing-2")
	angelsmods.functions.allow_productivity("slag-processing-3")
	angelsmods.functions.allow_productivity("slag-processing-4")
	angelsmods.functions.allow_productivity("slag-processing-5")
	angelsmods.functions.allow_productivity("slag-processing-6")
	angelsmods.functions.allow_productivity("slag-processing-7")
	angelsmods.functions.allow_productivity("slag-processing-8")
	angelsmods.functions.allow_productivity("slag-processing-9")
	angelsmods.functions.allow_productivity("catalysator-brown")
	
	angelsmods.functions.allow_productivity("angelsore1-crushed-processing")
	angelsmods.functions.allow_productivity("angelsore2-crushed-processing")
	angelsmods.functions.allow_productivity("angelsore3-crushed-processing")
	angelsmods.functions.allow_productivity("angelsore4-crushed-processing")
	angelsmods.functions.allow_productivity("angelsore5-crushed-processing")
	angelsmods.functions.allow_productivity("angelsore6-crushed-processing")
	
	angelsmods.functions.allow_productivity("angelsore1-chunk-processing")
	angelsmods.functions.allow_productivity("angelsore2-chunk-processing")
	angelsmods.functions.allow_productivity("angelsore3-chunk-processing")
	angelsmods.functions.allow_productivity("angelsore4-chunk-processing")
	angelsmods.functions.allow_productivity("angelsore5-chunk-processing")
	angelsmods.functions.allow_productivity("angelsore6-chunk-processing")

	angelsmods.functions.allow_productivity("angelsore1-crystal-processing")
	angelsmods.functions.allow_productivity("angelsore2-crystal-processing")
	angelsmods.functions.allow_productivity("angelsore3-crystal-processing")
	angelsmods.functions.allow_productivity("angelsore4-crystal-processing")
	angelsmods.functions.allow_productivity("angelsore5-crystal-processing")
	angelsmods.functions.allow_productivity("angelsore6-crystal-processing")
	
	angelsmods.functions.allow_productivity("angelsore1-pure-processing")
	angelsmods.functions.allow_productivity("angelsore2-pure-processing")
	angelsmods.functions.allow_productivity("angelsore3-pure-processing")
	angelsmods.functions.allow_productivity("angelsore4-pure-processing")
	angelsmods.functions.allow_productivity("angelsore5-pure-processing")
	angelsmods.functions.allow_productivity("angelsore6-pure-processing")
	
	angelsmods.functions.allow_productivity("angelsore8-crushed-processing")
	angelsmods.functions.allow_productivity("angelsore8-powder-processing")
	angelsmods.functions.allow_productivity("angelsore8-dust-processing")
	angelsmods.functions.allow_productivity("angelsore8-crystal-processing")

	angelsmods.functions.allow_productivity("angelsore9-crushed-processing")
	angelsmods.functions.allow_productivity("angelsore9-powder-processing")
	angelsmods.functions.allow_productivity("angelsore9-dust-processing")
	angelsmods.functions.allow_productivity("angelsore9-crystal-processing")
	
	angelsmods.functions.allow_productivity("angelsore-crushed-mix1-processing")
	angelsmods.functions.allow_productivity("angelsore-crushed-mix2-processing")
	angelsmods.functions.allow_productivity("angelsore-crushed-mix3-processing")
	angelsmods.functions.allow_productivity("angelsore-crushed-mix4-processing")
	
	angelsmods.functions.allow_productivity("angelsore-chunk-mix1-processing")
	angelsmods.functions.allow_productivity("angelsore-chunk-mix2-processing")
	angelsmods.functions.allow_productivity("angelsore-chunk-mix3-processing")
	angelsmods.functions.allow_productivity("angelsore-chunk-mix4-processing")
	angelsmods.functions.allow_productivity("angelsore-chunk-mix5-processing")
	
	angelsmods.functions.allow_productivity("angelsore-crystal-mix1-processing")
	angelsmods.functions.allow_productivity("angelsore-crystal-mix2-processing")
	angelsmods.functions.allow_productivity("angelsore-crystal-mix3-processing")
	angelsmods.functions.allow_productivity("angelsore-crystal-mix4-processing")
	
	angelsmods.functions.allow_productivity("angelsore-pure-mix1-processing")
	angelsmods.functions.allow_productivity("angelsore-pure-mix2-processing")
	angelsmods.functions.allow_productivity("angelsore-pure-mix3-processing")
	
	angelsmods.functions.allow_productivity("angelsore7-crystallization-1")
	angelsmods.functions.allow_productivity("angelsore7-crystallization-2")
	angelsmods.functions.allow_productivity("angelsore7-crystallization-3")
	angelsmods.functions.allow_productivity("angelsore7-crystallization-4")
	angelsmods.functions.allow_productivity("angelsore7-crystallization-5")
	angelsmods.functions.allow_productivity("angelsore7-crystallization-6")
	angelsmods.functions.allow_productivity("catalysator-green")
	angelsmods.functions.allow_productivity("catalysator-orange")
