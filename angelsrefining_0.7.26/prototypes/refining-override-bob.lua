local OV = angelsmods.functions.OV

if bobmods.plates then
	--REFINING ENTITY RECIPES
	--require("prototypes.recipes.refining-entity-bob")
	
	--SPECIAL VANILLA
	OV.disable_recipe({ "angels-iron-nugget-smelting", "angels-iron-pebbles-smelting", "angels-copper-nugget-smelting", "angels-copper-pebbles-smelting", "angels-iron-pebbles", "angels-copper-pebbles" })
	table.insert(data.raw["item"]["angels-iron-nugget"].flags,"hidden")
	table.insert(data.raw["item"]["angels-iron-pebbles"].flags,"hidden")
	table.insert(data.raw["item"]["angels-iron-slag"].flags,"hidden")
	table.insert(data.raw["item"]["angels-copper-nugget"].flags,"hidden")
	table.insert(data.raw["item"]["angels-copper-pebbles"].flags,"hidden")
	table.insert(data.raw["item"]["angels-copper-slag"].flags,"hidden")
	
   OV.patch_recipes({
      { name = "filter-ceramic", ingredients = {{ "alumina", 1}} },
      --SLAG PROCESSING
	  --1-IRON, COPPER
      { name = "slag-processing-1", results = { 
         {"!!"},
         { name = "copper-ore", type = "item", amount = 1, probability = 0.4 },
         { name = "iron-ore", type = "item", amount = 1, probability = 0.4 }
      }, icon = "__angelsrefining__/graphics/icons/slag-processing-bob1.png" },
	  --2-LEAD, TIN
      { name = "slag-processing-2", results = { 
         {"!!"},
         { name = "lead-ore", type = "item", amount = 1, probability = 0.4 },
         { name = "tin-ore", type = "item", amount = 1, probability = 0.4 }
      }, icon = "__angelsrefining__/graphics/icons/slag-processing-bob2.png" },
	  --3-NICKEL, QUARTZ
      { name = "slag-processing-3", results = { 
         {"!!"},
         { name = "nickel-ore", type = "item", amount = 1, probability = 0.4 },
         { name = "quartz", type = "item", amount = 1, probability = 0.4 }
      }, icon = "__angelsrefining__/graphics/icons/slag-processing-bob3.png" },
	  --4-BAUXITE, COBALT, ZINC
      { name = "slag-processing-4", results = { 
         {"!!"},
         { name = "bauxite-ore", type = "item", amount = 1, probability = 0.4 },
         { name = "cobalt-ore", type = "item", amount = 1, probability = 0.2 },
         { name = "zinc-ore", type = "item", amount = 1, probability = 0.2 }
      }, icon = "__angelsrefining__/graphics/icons/slag-processing-bob4.png" },
	  --5-SILVER, RUTILE
      { name = "slag-processing-5", results = { 
         {"!!"},
         { name = "silver-ore", type = "item", amount = 1, probability = 0.4 },
         { name = "rutile-ore", type = "item", amount = 1, probability = 0.4 }
      }, icon = "__angelsrefining__/graphics/icons/slag-processing-bob5.png" },
	  --6-GOLD, TUNGSTEN
      { name = "slag-processing-6", results = { 
         {"!!"},
         { name = "gold-ore", type = "item", amount = 1, probability = 0.4 },
         { name = "tungsten-ore", type = "item", amount = 1, probability = 0.4 }
      }, icon = "__angelsrefining__/graphics/icons/slag-processing-bob6.png" },
	  --7-URANIUM, FLUORITE
      { name = "slag-processing-7", results = { 
         {"!!"},
         { name = "uranium-ore", type = "item", amount = 1, probability = 0.05 }
      }, icons = {{ icon = "__angelsrefining__/graphics/icons/slag-processing-blank.png" },{ icon = "__base__/graphics/icons/uranium-ore.png", scale = 0.32, shift = { -12, 12}}} }
   })
	if angelsmods.petrochem then
      OV.patch_recipes({
         { name = "slag-processing-7", results = {
            { name = "fluorite-ore", type = "item", amount = 1, probability = 0.1 }
         }, icons = {{ icon = "__angelsrefining__/graphics/icons/slag-processing-blank.png" },{ icon = "__base__/graphics/icons/uranium-ore.png", scale = 0.32, shift = { -12, 12}}, { icon = "__angelspetrochem__/graphics/icons/ore-fluorite.png", scale = 0.32, shift = { 12, 12}}} }
      })
	end
	--8-EMPTY,
	angelsmods.functions.OV.disable_recipe("slag-processing-8")	

	--SORTING
	OV.patch_recipes({
   --SAPHIRITE (IRON, COPPER, QUARTZ, NICKEL, RUTILE, ZINC)
	--CRUSHED
      { name = "angelsore1-crushed-processing", results = {
         { "iron-ore", 2 },
         { "copper-ore", 1 }
      } },
   --CHUNK
      { name = "angelsore1-chunk-processing", results = {
         { "iron-ore", 2 },
         { "copper-ore", 1 },
         { "quartz", 1 },
         { "nickel-ore", 1 }
      } },
   --CRYSTAL
      { name = "angelsore1-crystal-processing", results = {
         { "iron-ore", 3 },
         { "copper-ore", 1 },
         { "quartz", 1 },
         { "nickel-ore", 1 },
         { "rutile-ore", 1 }
      } },
   --PURE
      { name = "angelsore1-pure-processing", results = {
         {"!!"},
         { "iron-ore", 3 },
         { "copper-ore", 2 },
         { "quartz", 1 },
         { "nickel-ore", 1 },
         { "rutile-ore", 1 },
         { "zinc-ore", 1 }
      } },
   --JIVOLITE (IRON, COPPER, BAUXITE, ZINC, SILVER, TUNGSTEN)
	--CRUSHED
      { name = "angelsore2-crushed-processing", results = {
         { "iron-ore", 2 },
         { "copper-ore", 1 }
      } },
   --CHUNK
      { name = "angelsore2-chunk-processing", results = {
         { "iron-ore", 2 },
         { "copper-ore", 1 },
         { "bauxite-ore", 1 },
         { "zinc-ore", 1 }
      } },
   --CRYSTAL
      { name = "angelsore2-crystal-processing", results = {
         { "iron-ore", 3 },
         { "copper-ore", 1 },
         { "bauxite-ore", 1 },
         { "zinc-ore", 1 },
         { "silver-ore", 1 }
      } },
   --PURE
      { name = "angelsore2-pure-processing", results = {
         {"!!"},
         { "iron-ore", 3 },
         { "copper-ore", 2 },
         { "bauxite-ore", 1 },
         { "zinc-ore", 1 },
         { "silver-ore", 1 },
         { "tungsten-ore", 1 }
      } },
   --STIRATITE (COPPER, IRON, COBALT, TIN, URANIUM, BAUXITE)
   --CRUSHED
      { name = "angelsore3-crushed-processing", results = {
         { "copper-ore", 2 },
         { "iron-ore", 1 }
      } },
   --CHUNK
      { name = "angelsore3-chunk-processing", results = {
         { "copper-ore", 2 },
         { "iron-ore", 1 },
         { "cobalt-ore", 1 },
         { "tin-ore", 1 }
      } },
   --CRYSTAL
      { name = "angelsore3-crystal-processing", results = {
         { "copper-ore", 3 },
         { "iron-ore", 1 },
         { "cobalt-ore", 1 },
         { "tin-ore", 1 },
         { "uranium-ore", 1 }
      } },
   --PURE
      { name = "angelsore3-pure-processing", results = {
         {"!!"},
         { "copper-ore", 3 },
         { "iron-ore", 2 },
         { "cobalt-ore", 1 },
         { "tin-ore", 1 },
         { "uranium-ore", 1 },
         { "bauxite-ore", 1 }
      } },
   --CROTINIUM (COPPER, IRON, LEAD, SILVER, GOLD, RUTILE)
	--CRUSHED
      { name = "angelsore4-crushed-processing", results = {
         { "copper-ore", 2 },
         { "iron-ore", 1 }
      } },
   --CHUNK
      { name = "angelsore4-chunk-processing", results = {
         { "copper-ore", 2 },
         { "iron-ore", 1 },
         { "lead-ore", 1 },
         { "silver-ore", 1 }
      } },
   --CRYSTAL
      { name = "angelsore4-crystal-processing", results = {
         { "copper-ore", 3 },
         { "iron-ore", 1 },
         { "lead-ore", 1 },
         { "silver-ore", 1 },
         { "gold-ore", 1 }
      } },
   --PURE
      { name = "angelsore4-pure-processing", results = {
         {"!!"},
         { "copper-ore", 3 },
         { "iron-ore", 2 },
         { "lead-ore", 1 },
         { "silver-ore", 1 },
         { "gold-ore", 1 },
         { "rutile-ore", 1 }
      } },
   --RUBYTE (LEAD, NICKEL, BAUXITE, GOLD, RUTILE, TUNGSTEN)
	--CRUSHED
      { name = "angelsore5-crushed-processing", results = {
         { "lead-ore", 2 },
         { "nickel-ore", 1 }
      } },
   --CHUNK
      { name = "angelsore5-chunk-processing", results = {
         { "lead-ore", 2 },
         { "nickel-ore", 1 },
         { "bauxite-ore", 1 },
         { "gold-ore", 1 }
      } },
   --CRYSTAL
      { name = "angelsore5-crystal-processing", results = {
         { "lead-ore", 3 },
         { "nickel-ore", 1 },
         { "bauxite-ore", 1 },
         { "gold-ore", 1 },
         { "rutile-ore", 1 }
      } },
   --PURE
      { name = "angelsore5-pure-processing", results = {
         {"!!"},
         { "lead-ore", 3 },
         { "nickel-ore", 2 },
         { "bauxite-ore", 1 },
         { "gold-ore", 1 },
         { "rutile-ore", 1 },
         { "tungsten-ore", 1 }
      } },
   --BOBMONIUM (TIN, QUARTZ, COBALT, ZINC, BAUXITE, URANIUM)
   --CRUSHED
      { name = "angelsore6-crushed-processing", results = {
         { "tin-ore", 2 },
         { "quartz", 1 }
      } },
   --CHUNK
      { name = "angelsore6-chunk-processing", results = {
         { "tin-ore", 2 },
         { "quartz", 1 },
         { "cobalt-ore", 1 },
         { "zinc-ore", 1 }
      } },
   --CRYSTAL
      { name = "angelsore6-crystal-processing", results = {
         { "tin-ore", 3 },
         { "quartz", 1 },
         { "cobalt-ore", 1 },
         { "zinc-ore", 1 },
         { "bauxite-ore", 1 }
      } },
   --PURE
      { name = "angelsore6-pure-processing", results = {
         {"!!"},
         { "tin-ore", 3 },
         { "quartz", 2 },
         { "cobalt-ore", 1 },
         { "zinc-ore", 1 },
         { "bauxite-ore", 1 },
         { "uranium-ore", 1 }
      } },
   --MIXED PROCESSING
	--CRUSHED
      { name = "angelsore-crushed-mix1-processing", results = {
         {"!!"},
         { "iron-ore", 4 }
      }, icon = "__angelsrefining__/graphics/icons/angels-ore-mix-iron-sorting.png" },
      { name = "angelsore-crushed-mix2-processing", results = {
         {"!!"},
         { "copper-ore", 4 }
      }, icon = "__angelsrefining__/graphics/icons/angels-ore-mix-copper-sorting.png" },
      { name = "angelsore-crushed-mix3-processing", results = {
         {"!!"},
         { "lead-ore", 4 }
      }, icon = "__angelsrefining__/graphics/icons/angels-ore-mix-lead-sorting.png" },
      { name = "angelsore-crushed-mix4-processing", results = {
         {"!!"},
         { "tin-ore", 4 }
      }, icon = "__angelsrefining__/graphics/icons/angels-ore-mix-tin-sorting.png" },
   --CHUNK
      { name = "angelsore-chunk-mix1-processing", results = {
         {"!!"},
         { "quartz", 4 }
      }, icon = "__angelsrefining__/graphics/icons/angels-ore-mix-silica-sorting.png" },
      { name = "angelsore-chunk-mix2-processing", results = {
         {"!!"},
         { "nickel-ore", 4 }
      }, icon = "__angelsrefining__/graphics/icons/angels-ore-mix-nickel-sorting.png" },
      { name = "angelsore-chunk-mix3-processing", results = {
         {"!!"},
         { "bauxite-ore", 4 }
      }, icon = "__angelsrefining__/graphics/icons/angels-ore-mix-aluminium-sorting.png" },
      { name = "angelsore-chunk-mix4-processing", results = {
         {"!!"},
         { "zinc-ore", 4 }
      }, icon = "__angelsrefining__/graphics/icons/angels-ore-mix-zinc-sorting.png" },
   --CRYSTAL
      { name = "angelsore-crystal-mix1-processing", results = {
         {"!!"},
         { "rutile-ore", 6 }
      }, icon = "__angelsrefining__/graphics/icons/angels-ore-mix-titanium-sorting.png" },
      { name = "angelsore-crystal-mix2-processing", results = {
         {"!!"},
         { "gold-ore", 6 }
      }, icon = "__angelsrefining__/graphics/icons/angels-ore-mix-gold-sorting.png" },
      { name = "angelsore-crystal-mix3-processing", results = {
         {"!!"},
         { "cobalt-ore", 6 }
      }, icon = "__angelsrefining__/graphics/icons/angels-ore-mix-cobalt-sorting.png" },
      { name = "angelsore-crystal-mix4-processing", results = {
         {"!!"},
         { "silver-ore", 6 }
      }, icon = "__angelsrefining__/graphics/icons/angels-ore-mix-silver-sorting.png" },
      { name = "angelsore-crystal-mix5-processing", results = {
         {"!!"},
         { "uranium-ore", 3 }
      }, icons = {
         { icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
         { icon = "__base__/graphics/icons/uranium-ore.png", scale = 0.5, shift = { 10, 10}}
      } },
   --PURE
      { name = "angelsore-pure-mix1-processing", results = {
         {"!!"},
         { "tungsten-ore", 6 }
      }, icon = "__angelsrefining__/graphics/icons/angels-ore-mix-tungsten-sorting.png" },
   --GEODES
   --GEODES SORTING
      { name = "geode-blue-processing", results = {
         { name = "sapphire-ore", type = "item", amount = 1, probability = 0.8 },
         { name = "topaz-ore", type = "item", amount = 1, probability = 0.6 }
      } },
      { name = "geode-cyan-processing", results = {
         { name = "sapphire-ore", type = "item", amount = 1, probability = 0.8 },
         { name = "diamond-ore", type = "item", amount = 1, probability = 0.2 }
      } },
      { name = "geode-lightgreen-processing", results = {
         { name = "emerald-ore", type = "item", amount = 1, probability = 0.6 },
         { name = "diamond-ore", type = "item", amount = 1, probability = 0.2 }
      } },
      { name = "geode-purple-processing", results = {
         { name = "amethyst-ore", type = "item", amount = 1, probability = 0.7 },
         { name = "emerald-ore", type = "item", amount = 1, probability = 0.6 }
      } },
      { name = "geode-red-processing", results = {
         { name = "ruby-ore", type = "item", amount = 1, probability = 0.9 },
         { name = "amethyst-ore", type = "item", amount = 1, probability = 0.7 }
      } },
      { name = "geode-yellow-processing", results = {
         { name = "topaz-ore", type = "item", amount = 1, probability = 0.7 },
         { name = "ruby-ore", type = "item", amount = 1, probability = 0.9 }
      } },
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
   --SMELTING RECIPES
      { name = "angelsore5-crushed-smelting", results = {
         {"!!"},
         { "lead-plate", 1 }
      }, icon = "__angelsrefining__/graphics/icons/lead-plate-crushed.png" },
      { name = "angelsore6-crushed-smelting", results = {
         {"!!"},
         { "tin-plate", 1 }
      }, icon = "__angelsrefining__/graphics/icons/tin-plate-crushed.png" },
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
   --DISABLE UNUSED RECIPES
   OV.disable_recipe("slag-processing-8")	
   OV.disable_recipe("angelsore-chunk-mix5-processing")
	OV.disable_recipe("angelsore-pure-mix2-processing")
	OV.disable_recipe("angelsore-pure-mix3-processing")

	--LOCALIZATION STRINGS
	--SLAG PROCESSING
	data.raw["recipe"]["slag-processing-1"].localised_name = {"recipe-name.slag-processing-1", {"item-description.loc-iron"}, {"item-description.loc-and"}, {"item-description.loc-copper"}} 
	data.raw["recipe"]["slag-processing-2"].localised_name = {"recipe-name.slag-processing-2", {"item-description.loc-lead"}, {"item-description.loc-and"}, {"item-description.loc-tin"}} 
	data.raw["recipe"]["slag-processing-3"].localised_name = {"recipe-name.slag-processing-3", {"item-description.loc-nickel"}, {"item-description.loc-and"}, {"item-description.loc-quartz"}} 
	data.raw["recipe"]["slag-processing-4"].localised_name = {"recipe-name.slag-processing-4", {"item-description.loc-bauxite"}, {"item-description.loc-dot"}, {"item-description.loc-cobalt"}, {"item-description.loc-and"}, {"item-description.loc-zinc"}} 
	data.raw["recipe"]["slag-processing-5"].localised_name = {"recipe-name.slag-processing-5", {"item-description.loc-silver"}, {"item-description.loc-and"}, {"item-description.loc-rutile"}} 
	data.raw["recipe"]["slag-processing-6"].localised_name = {"recipe-name.slag-processing-6", {"item-description.loc-gold"}, {"item-description.loc-and"}, {"item-description.loc-tungsten"}} 
	data.raw["recipe"]["slag-processing-7"].localised_name = {"recipe-name.slag-processing-7", {"item-description.loc-uranium"}, {"item-description.loc-and"}, {"item-description.loc-fluorite"}} 
	--empty
	
	--SAPHIRITE (IRON, COPPER, QUARTZ, NICKEL, RUTILE, ZINC)
	angelsmods.functions.add_localization("angels-ore1", "iron", "copper", "quartz", "nickel", "rutile", "zinc")
	
	--JIVOLITE (IRON, COPPER, BAUXITE, ZINC, SILVER, TUNGSTEN)
	angelsmods.functions.add_localization("angels-ore2", "iron", "copper", "bauxite", "zinc", "silver", "tungsten")
	
	--STIRATITE (COPPER, IRON, COBALT, TIN, URANIUM, BAUXITE)
	angelsmods.functions.add_localization("angels-ore3", "copper", "iron", "cobalt", "tin", "uranium", "bauxite")
	
	--CROTINIUM (COPPER, IRON, LEAD, SILVER, GOLD, RUTILE)
	angelsmods.functions.add_localization("angels-ore4", "copper", "iron", "lead", "silver", "gold", "rutile")
	
	--RUBYTE (LEAD, NICKEL, BAUXITE, GOLD, RUTILE, TUNGSTEN)
	angelsmods.functions.add_localization("angels-ore5", "lead", "nickel", "bauxite", "gold", "rutile", "tungsten")
	
	--BOBMONIUM (TIN, QUARTZ, COBALT, ZINC, BAUXITE, URANIUM)
	angelsmods.functions.add_localization("angels-ore6", "tin", "quartz", "cobalt", "zinc", "bauxite", "uranium")

   --SINGLE GEM CRYSTALLIZATION
	data.raw["recipe"]["angelsore7-crystallization-1"].localised_name = {"recipe-name.angelsore7-crystallization-1", "Sapphire-Ore"}
	data.raw["recipe"]["angelsore7-crystallization-2"].localised_name = {"recipe-name.angelsore7-crystallization-2", "Topaz-Ore"}
	data.raw["recipe"]["angelsore7-crystallization-3"].localised_name = {"recipe-name.angelsore7-crystallization-3", "Ruby-Ore"}
	data.raw["recipe"]["angelsore7-crystallization-4"].localised_name = {"recipe-name.angelsore7-crystallization-4", "Emerald-Ore"}
	data.raw["recipe"]["angelsore7-crystallization-5"].localised_name = {"recipe-name.angelsore7-crystallization-5", "Amethyst-Ore"}
	data.raw["recipe"]["angelsore7-crystallization-6"].localised_name = {"recipe-name.angelsore7-crystallization-6", "Diamond-Ore"}
	
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
		order = "g[water-thermal-lithia]"
	  },
	}
	)
	if not angelsmods.petrochem then
		OV.add_unlock("water-treatment", "salt-water-electrolysis-2")
	end
	
	OV.add_unlock("thermal-water-extraction", "water-thermal-lithia")
	
	if angelsmods.smelting then
      OV.patch_recipes({
         { name = "nodule-crystallization-1", results = {
            {"!!"},
            { "manganese-ore", 5 }
         }, icon = "__angelssmelting__/graphics/icons/ore-manganese.png" },
         { name = "nodule-crystallization-2", results = {
            {"!!"},
            { "chrome-ore", 5 }
         }, icon = "__angelssmelting__/graphics/icons/ore-chrome.png" }
      })
	end
	
	data.raw["recipe"]["bob-ruby-3"].result_count = 1	
	data.raw["recipe"]["bob-sapphire-3"].result_count = 1	
	data.raw["recipe"]["bob-emerald-3"].result_count = 1	
	data.raw["recipe"]["bob-amethyst-3"].result_count = 1	
	data.raw["recipe"]["bob-topaz-3"].result_count = 1	
	data.raw["recipe"]["bob-diamond-3"].result_count = 1	
	
	--ADD LIQUIFYING RECIPES TO CHEMICAL PLANTS
	if bobmods.assembly then
		table.insert(data.raw["assembling-machine"]["chemical-plant"].crafting_categories,"liquifying")
		table.insert(data.raw["assembling-machine"]["chemical-plant-2"].crafting_categories,"liquifying")
		table.insert(data.raw["assembling-machine"]["chemical-plant-3"].crafting_categories,"liquifying")
		table.insert(data.raw["assembling-machine"]["chemical-plant-4"].crafting_categories,"liquifying")
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
end