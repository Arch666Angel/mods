--MODIFICATION TO REFINING
	--PREPARATIONS
	angelsmods.functions.OV.disable_recipe("solid-lithium")
			
	angelsmods.functions.OV.remove_output("slag-processing-1", "angels-void")	
	angelsmods.functions.OV.remove_output("slag-processing-2", "angels-void")	
	angelsmods.functions.OV.remove_output("slag-processing-3", "angels-void")	
	angelsmods.functions.OV.remove_output("slag-processing-4", "angels-void")	
	angelsmods.functions.OV.remove_output("slag-processing-5", "angels-void")	
	angelsmods.functions.OV.remove_output("slag-processing-6", "angels-void")	
	angelsmods.functions.OV.remove_output("slag-processing-7", "angels-void")	
	angelsmods.functions.OV.remove_output("slag-processing-8", "angels-void")

	angelsmods.functions.OV.remove_output("angelsore-crushed-mix1-processing", "angels-void")
	angelsmods.functions.OV.remove_output("angelsore-crushed-mix2-processing", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore-crushed-mix3-processing", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore-crushed-mix4-processing", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore-chunk-mix1-processing", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore-chunk-mix2-processing", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore-chunk-mix3-processing", "angels-void")
	angelsmods.functions.OV.remove_output("angelsore-chunk-mix4-processing", "angels-void")		
	angelsmods.functions.OV.remove_output("angelsore-chunk-mix5-processing", "angels-void")		
	angelsmods.functions.OV.remove_output("angelsore-crystal-mix1-processing", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore-crystal-mix2-processing", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore-crystal-mix3-processing", "angels-void")
	angelsmods.functions.OV.remove_output("angelsore-crystal-mix4-processing", "angels-void")
	angelsmods.functions.OV.remove_output("angelsore-pure-mix1-processing", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore-pure-mix2-processing", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore-pure-mix3-processing", "angels-void")

	angelsmods.functions.OV.remove_output("angelsore1-pure-processing", "angels-void")
	angelsmods.functions.OV.remove_output("angelsore2-pure-processing", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore3-pure-processing", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore4-pure-processing", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore5-pure-processing", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore6-pure-processing", "angels-void")	

	angelsmods.functions.OV.remove_output("angelsore5-crushed-smelting", "angels-void")		
	angelsmods.functions.OV.remove_output("angelsore6-crushed-smelting", "angels-void")	
	
	angelsmods.functions.OV.remove_output("angelsore7-crystallization-1", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore7-crystallization-2", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore7-crystallization-3", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore7-crystallization-4", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore7-crystallization-5", "angels-void")	
	angelsmods.functions.OV.remove_output("angelsore7-crystallization-6", "angels-void")
	
	angelsmods.functions.OV.remove_output("nodule-crystallization-1", "angels-void")	
	angelsmods.functions.OV.remove_output("nodule-crystallization-2", "angels-void")	

--INSERT GEODES AS MINABLE RESULT TO STONE ROCKS	
if angelsmods.components or bobmods and bobmods.plates then	
	data.raw["simple-entity"]["stone-rock"].minable={mining_particle = "stone-particle",mining_time = 8,
	results=
		{
		  {type="item", name="stone", amount=10, probability=1},
		  {type="item", name="geode-blue", amount=3, probability=0.7},
  		  {type="item", name="geode-cyan", amount=1, probability=0.3},
		  {type="item", name="geode-lightgreen", amount=1, probability=0.4},
		  {type="item", name="geode-purple", amount=2, probability=0.5},
		  {type="item", name="geode-red", amount=3, probability=0.8},
		  {type="item", name="geode-yellow", amount=2, probability=0.6},
		},
    }
end	


--INDIVIDUAL OVERRIDES
if angelsmods.components then
		require("prototypes.refining-override-angels")
	else
	if bobmods and bobmods.plates then
		require("prototypes.refining-override-bob")
	else
		require("prototypes.refining-override-vanilla")
	end
end

--OVERRIDE FOR WATER TREATMENT
if not angelsmods.petrochem then
	angelsmods.functions.OV.disable_recipe("red-waste-water-purification")
	angelsmods.functions.OV.disable_recipe("green-waste-water-purification")
	angelsmods.functions.OV.disable_recipe("greenyellow-waste-water-purification")
	angelsmods.functions.OV.disable_recipe("solid-salt-from-saline")
	angelsmods.functions.OV.disable_recipe("solid-salt")
else if angelsmods.petrochem.enableacids then
	--INSERT ADDITIONAL WATER RESOURCES INTO REFINING RECIPES
	angelsmods.functions.OV.remove_output("angelsore2-chunk", "water-yellow-waste")	
	angelsmods.functions.OV.set_output("angelsore2-chunk", "water-greenyellow-waste", "fluid", 5)	
	angelsmods.functions.OV.remove_output("angelsore4-chunk", "water-yellow-waste")	
	angelsmods.functions.OV.set_output("angelsore4-chunk", "water-green-waste", "fluid", 5)	
	angelsmods.functions.OV.remove_output("angelsore5-chunk", "water-yellow-waste")	
	angelsmods.functions.OV.set_output("angelsore5-chunk", "water-red-waste", "fluid", 5)	
	
	angelsmods.functions.OV.set_output("greenyellow-waste-water-purification", "fluorite-ore", "item", 1)
	else
	angelsmods.functions.OV.disable_recipe("red-waste-water-purification")
	angelsmods.functions.OV.disable_recipe("green-waste-water-purification")
	angelsmods.functions.OV.disable_recipe("greenyellow-waste-water-purification")
	end
end

if not angelsmods.smelting then
	angelsmods.functions.OV.disable_technology({ "water-washing", "nodule-processing" })
	angelsmods.functions.OV.disable_recipe("nodule-dissolution")
	angelsmods.functions.OV.disable_recipe("nodule-crystallization-1")	
	angelsmods.functions.OV.disable_recipe("nodule-crystallization-2")	
end

--BARRELING
if angelsmods.petrochem then
	angelsmods.functions.OV.set_special_recipe_override("empty-barrel", { subgroup = "petrochem-well-head", order = "1[empty-barrel]"  })
	else
	angelsmods.functions.OV.set_special_recipe_override("empty-barrel", { subgroup = "angels-barrels", order = "1[empty-barrel]"  })	
end

--OVERRIDE FOR YUOKI
if data.raw.item["y-res1"] then
	--TIER 2
	data.raw["recipe"]["angelsore1-chunk-processing"].ingredients[1]={"angels-ore1-chunk", 7}
	data.raw["recipe"]["angelsore3-chunk-processing"].ingredients[1]={"angels-ore3-chunk", 7}

	table.insert(data.raw["recipe"]["angelsore1-chunk-processing"].results,{type = "item", name = "y-res1", amount=1})
	table.insert(data.raw["recipe"]["angelsore3-chunk-processing"].results,{type = "item", name = "y-res2", amount=1})

	--TIER 3
	data.raw["recipe"]["angelsore1-crystal-processing"].ingredients[1]={"angels-ore1-crystal", 9}
	data.raw["recipe"]["angelsore3-crystal-processing"].ingredients[1]={"angels-ore3-crystal", 9}

	table.insert(data.raw["recipe"]["angelsore1-crystal-processing"].results,{type = "item", name = "y-res1", amount=1})
	table.insert(data.raw["recipe"]["angelsore3-crystal-processing"].results,{type = "item", name = "y-res2", amount=1})

	--TIER 4
	data.raw["recipe"]["angelsore1-pure-processing"].ingredients[1]={"angels-ore1-pure", 10}
	data.raw["recipe"]["angelsore3-pure-processing"].ingredients[1]={"angels-ore3-pure", 10}

	table.insert(data.raw["recipe"]["angelsore1-pure-processing"].results,{type = "item", name = "y-res1", amount=1})
	table.insert(data.raw["recipe"]["angelsore3-pure-processing"].results,{type = "item", name = "y-res2", amount=1})

	--RECIPES
	data:extend({
		{
		type = "recipe",
		name = "slag-processing-yi",
		category = "crystallizing",
		subgroup = "slag-processing",
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
		order = "a[yellow-waste-water-purification-yi]",
		},
	})
	
	--INSERT RECIPES TO TECHNOLOGY
	angelsmods.functions.OV.add_unlock("water-treatment", "yellow-waste-water-purification-yi")
	angelsmods.functions.OV.add_unlock("slag-processing-1", "slag-processing-yi")
	angelsmods.functions.OV.add_unlock("advanced-ore-refining-2", "angelsore-chunk-mix-yi1-processing")
	angelsmods.functions.OV.add_unlock("advanced-ore-refining-2", "angelsore-chunk-mix-yi2-processing")
end

--OVERRIDE FOR URANIUM POWER
if data.raw.item["uraninite"] then
	--TIER 2
	data.raw["recipe"]["angelsore2-chunk-processing"].ingredients[1]={"angels-ore2-chunk", 7}
	data.raw["recipe"]["angelsore4-chunk-processing"].ingredients[1]={"angels-ore4-chunk", 7}

	table.insert(data.raw["recipe"]["angelsore2-chunk-processing"].results,{type = "item", name = "uraninite", amount=1})
	table.insert(data.raw["recipe"]["angelsore4-chunk-processing"].results,{type = "item", name = "fluorite", amount=1})

	--TIER 3
	data.raw["recipe"]["angelsore2-crystal-processing"].ingredients[1]={"angels-ore2-crystal", 9}
	data.raw["recipe"]["angelsore4-crystal-processing"].ingredients[1]={"angels-ore4-crystal", 9}

	table.insert(data.raw["recipe"]["angelsore2-crystal-processing"].results,{type = "item", name = "uraninite", amount=1})
	table.insert(data.raw["recipe"]["angelsore4-crystal-processing"].results,{type = "item", name = "fluorite", amount=1})

	--TIER 4
	data.raw["recipe"]["angelsore2-pure-processing"].ingredients[1]={"angels-ore2-pure", 10}
	data.raw["recipe"]["angelsore4-pure-processing"].ingredients[1]={"angels-ore4-pure", 10}

	table.insert(data.raw["recipe"]["angelsore2-pure-processing"].results,{type = "item", name = "uraninite", amount=1})
	table.insert(data.raw["recipe"]["angelsore4-pure-processing"].results,{type = "item", name = "fluorite", amount=1})

	data:extend({
		{
		type = "recipe",
		name = "slag-processing-up",
		category = "crystallizing",
		subgroup = "slag-processing",
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
		order = "c-i-g[angelsore-crystal-mix-up2-processing]",
		},
	})
	table.insert(data.raw["technology"]["slag-processing-1"].effects,{type = "unlock-recipe", recipe = "slag-processing-up"})
	table.insert(data.raw["technology"]["advanced-ore-refining-3"].effects,{type = "unlock-recipe", recipe = "angelsore-crystal-mix-up1-processing"})
	table.insert(data.raw["technology"]["advanced-ore-refining-3"].effects,{type = "unlock-recipe", recipe = "angelsore-crystal-mix-up2-processing"})
end

--OVERRIDE FOR NUCULAR
if data.raw.item["uranium-ore"] then
	--TIER 2
	data.raw["recipe"]["angelsore5-chunk-processing"].ingredients[1]={"angels-ore5-chunk", 7}

	table.insert(data.raw["recipe"]["angelsore5-chunk-processing"].results,{type = "item", name = "uranium-ore", amount=1})

	--TIER 3
	data.raw["recipe"]["angelsore5-crystal-processing"].ingredients[1]={"angels-ore5-crystal", 9}

	table.insert(data.raw["recipe"]["angelsore5-crystal-processing"].results,{type = "item", name = "uranium-ore", amount=1})

	--TIER 4
	data.raw["recipe"]["angelsore5-pure-processing"].ingredients[1]={"angels-ore5-pure", 10}

	table.insert(data.raw["recipe"]["angelsore5-pure-processing"].results,{type = "item", name = "uranium-ore", amount=1})

	data:extend({
		{
		type = "recipe",
		name = "slag-processing-nuc",
		category = "crystallizing",
		subgroup = "slag-processing",
		energy_required = 8,
		enabled = "false",
		ingredients ={
		{type="fluid", name="mineral-sludge", amount=50},
		},
		results=
		{
		  {type="item", name="uranium-ore", amount=1, probability=0.8},
		},
		icon = "__angelsrefining__/graphics/icons/slag-processing-nuc.png",
		order = "a-a [slag-processing-nuc]",
		},
		{
		type = "recipe",
		name = "angelsore-crystal-mix-nuc-processing",
		category = "ore-sorting",
		subgroup = "ore-sorting-advanced",
		energy_required = 1.5,
		enabled = "false",
		ingredients ={
		{type="item", name="angels-ore3-crystal", amount=2},
		{type="item", name="angels-ore4-crystal", amount=2},
		{type="item", name="angels-ore5-crystal", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
		results=
		{
		  {type="item", name="uranium-ore", amount=6},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore-mix-nuc-sorting.png",
		order = "c-i-g[angelsore-crystal-mix-nuc-processing]",
		},
	})
	table.insert(data.raw["technology"]["slag-processing-1"].effects,{type = "unlock-recipe", recipe = "slag-processing-nuc"})
	table.insert(data.raw["technology"]["advanced-ore-refining-3"].effects,{type = "unlock-recipe", recipe = "angelsore-crystal-mix-nuc-processing"})
end

--ENABLE PRODUCTIVITY
	angelsmods.functions.allow_productivity("slag-processing-1")
	angelsmods.functions.allow_productivity("slag-processing-2")
	angelsmods.functions.allow_productivity("slag-processing-3")
	angelsmods.functions.allow_productivity("slag-processing-4")
	angelsmods.functions.allow_productivity("slag-processing-5")
	angelsmods.functions.allow_productivity("slag-processing-6")
	angelsmods.functions.allow_productivity("slag-processing-7")
	angelsmods.functions.allow_productivity("slag-processing-8")
	
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
