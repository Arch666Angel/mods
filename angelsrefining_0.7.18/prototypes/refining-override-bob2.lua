if bobmods.plates then
	--REFINING ENTITY RECIPES
	--require("prototypes.recipes.refining-entity-bob")
	
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
	angelsmods.functions.OV.set_input("filter-ceramic", "alumina", "item", 1)
	--1-IRON, COPPER
	angelsmods.functions.OV.set_output("slag-processing-1", "copper-ore", "item", {amount=1, probability=0.4})
	angelsmods.functions.OV.set_output("slag-processing-1", "iron-ore", "item", {amount=1, probability=0.4})
	angelsmods.functions.OV.set_special_recipe_override("slag-processing-1", { icon = "__angelsrefining__/graphics/icons/slag-processing-bob1.png" })
	--2-LEAD, TIN
	angelsmods.functions.OV.set_output("slag-processing-2", "lead-ore", "item", {amount=1, probability=0.4})
	angelsmods.functions.OV.set_output("slag-processing-2", "tin-ore", "item", {amount=1, probability=0.4})
	angelsmods.functions.OV.set_special_recipe_override("slag-processing-2", { icon = "__angelsrefining__/graphics/icons/slag-processing-bob2.png" })
	--3-NICKEL, QUARTZ
	angelsmods.functions.OV.set_output("slag-processing-3", "nickel-ore", "item", {amount=1, probability=0.4})
	angelsmods.functions.OV.set_output("slag-processing-3", "quartz", "item", {amount=1, probability=0.4})
	angelsmods.functions.OV.set_special_recipe_override("slag-processing-3", { icon = "__angelsrefining__/graphics/icons/slag-processing-bob3.png" })
	--4-BAUXITE, COBALT, ZINC
	angelsmods.functions.OV.set_output("slag-processing-4", "bauxite-ore", "item", {amount=1, probability=0.4})
	angelsmods.functions.OV.set_output("slag-processing-4", "cobalt-ore", "item", {amount=1, probability=0.2})
	angelsmods.functions.OV.set_output("slag-processing-4", "zinc-ore", "item", {amount=1, probability=0.2})
	angelsmods.functions.OV.set_special_recipe_override("slag-processing-4", { icon = "__angelsrefining__/graphics/icons/slag-processing-bob4.png" })
	--5-SILVER, RUTILE, 
	angelsmods.functions.OV.set_output("slag-processing-5", "silver-ore", "item", {amount=1, probability=0.4})
	angelsmods.functions.OV.set_output("slag-processing-5", "rutile-ore", "item", {amount=1, probability=0.4})
	angelsmods.functions.OV.set_special_recipe_override("slag-processing-5", { icon = "__angelsrefining__/graphics/icons/slag-processing-bob5.png" })	
	--6-GOLD, TUNGSTEN, 
	angelsmods.functions.OV.set_output("slag-processing-6", "gold-ore", "item", {amount=1, probability=0.4})
	angelsmods.functions.OV.set_output("slag-processing-6", "tungsten-ore", "item", {amount=1, probability=0.4})
	angelsmods.functions.OV.set_special_recipe_override("slag-processing-6", { icon = "__angelsrefining__/graphics/icons/slag-processing-bob6.png" })
	--7-URANIUM, FLUORITE,
	angelsmods.functions.OV.set_output("slag-processing-7", "uranium-ore", "item", {amount=1, probability=0.05})
	angelsmods.functions.OV.set_special_recipe_override("slag-processing-7", { icons = {{ icon = "__angelsrefining__/graphics/icons/slag-processing-blank.png" },{ icon = "__base__/graphics/icons/uranium-ore.png", scale = 0.32, shift = { -12, 12}}}})
	if angelsmods.petrochem then
	angelsmods.functions.OV.set_output("slag-processing-7", "fluorite-ore", "item", {amount=1, probability=0.1})
	angelsmods.functions.OV.set_special_recipe_override("slag-processing-7", { icons = {{ icon = "__angelsrefining__/graphics/icons/slag-processing-blank.png" },{ icon = "__base__/graphics/icons/uranium-ore.png", scale = 0.32, shift = { -12, 12}}, { icon = "__angelspetrochem__/graphics/icons/ore-fluorite.png", scale = 0.32, shift = { 12, 12}}}})
	end
	--8-EMPTY,
	angelsmods.functions.OV.disable_recipe("slag-processing-8")	
	
	--SORTING
	--SAPHIRITE (IRON, COPPER, QUARTZ, NICKEL, RUTILE, ZINC)
	--CRUSHED
	angelsmods.functions.OV.set_output("angelsore1-crushed-processing", "iron-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore1-crushed-processing", "copper-ore", "item", 1)
	--CHUNK
	angelsmods.functions.OV.set_output("angelsore1-chunk-processing", "iron-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore1-chunk-processing", "copper-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore1-chunk-processing", "quartz", "item", 1)
	angelsmods.functions.OV.set_output("angelsore1-chunk-processing", "nickel-ore", "item", 1)
	--CRYSTAL
	angelsmods.functions.OV.set_output("angelsore1-crystal-processing", "iron-ore", "item", 3)
	angelsmods.functions.OV.set_output("angelsore1-crystal-processing", "copper-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore1-crystal-processing", "quartz", "item", 1)
	angelsmods.functions.OV.set_output("angelsore1-crystal-processing", "nickel-ore", "item", 1)	
	angelsmods.functions.OV.set_output("angelsore1-crystal-processing", "rutile-ore", "item", 1)
	--PURE
	angelsmods.functions.OV.set_output("angelsore1-pure-processing", "iron-ore", "item", 3)
	angelsmods.functions.OV.set_output("angelsore1-pure-processing", "copper-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore1-pure-processing", "quartz", "item", 1)
	angelsmods.functions.OV.set_output("angelsore1-pure-processing", "nickel-ore", "item", 1)	
	angelsmods.functions.OV.set_output("angelsore1-pure-processing", "rutile-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore1-pure-processing", "zinc-ore", "item", 1)

	--JIVOLITE (IRON, COPPER, BAUXITE, ZINC, SILVER, TUNGSTEN)
	--CRUSHED
	angelsmods.functions.OV.set_output("angelsore2-crushed-processing", "iron-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore2-crushed-processing", "copper-ore", "item", 1)
	--CHUNK
	angelsmods.functions.OV.set_output("angelsore2-chunk-processing", "iron-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore2-chunk-processing", "copper-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore2-chunk-processing", "bauxite-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore2-chunk-processing", "zinc-ore", "item", 1)
	--CRYSTAL
	angelsmods.functions.OV.set_output("angelsore2-crystal-processing", "iron-ore", "item", 3)
	angelsmods.functions.OV.set_output("angelsore2-crystal-processing", "copper-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore2-crystal-processing", "bauxite-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore2-crystal-processing", "zinc-ore", "item", 1)	
	angelsmods.functions.OV.set_output("angelsore2-crystal-processing", "silver-ore", "item", 1)
	--PURE
	angelsmods.functions.OV.set_output("angelsore2-pure-processing", "iron-ore", "item", 3)
	angelsmods.functions.OV.set_output("angelsore2-pure-processing", "copper-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore2-pure-processing", "bauxite-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore2-pure-processing", "zinc-ore", "item", 1)	
	angelsmods.functions.OV.set_output("angelsore2-pure-processing", "silver-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore2-pure-processing", "tungsten-ore", "item", 1)

	--STIRATITE (COPPER, IRON, COBALT, TIN, URANIUM, BAUXITE)
	--CRUSHED
	angelsmods.functions.OV.set_output("angelsore3-crushed-processing", "copper-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore3-crushed-processing", "iron-ore", "item", 1)
	--CHUNK
	angelsmods.functions.OV.set_output("angelsore3-chunk-processing", "copper-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore3-chunk-processing", "iron-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore3-chunk-processing", "cobalt-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore3-chunk-processing", "tin-ore", "item", 1)
	--CRYSTAL
	angelsmods.functions.OV.set_output("angelsore3-crystal-processing", "copper-ore", "item", 3)
	angelsmods.functions.OV.set_output("angelsore3-crystal-processing", "iron-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore3-crystal-processing", "cobalt-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore3-crystal-processing", "tin-ore", "item", 1)	
	angelsmods.functions.OV.set_output("angelsore3-crystal-processing", "uranium-ore", "item", 1)
	--PURE
	angelsmods.functions.OV.set_output("angelsore3-pure-processing", "copper-ore", "item", 3)
	angelsmods.functions.OV.set_output("angelsore3-pure-processing", "iron-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore3-pure-processing", "cobalt-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore3-pure-processing", "tin-ore", "item", 1)	
	angelsmods.functions.OV.set_output("angelsore3-pure-processing", "uranium-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore3-pure-processing", "bauxite-ore", "item", 1)

	--CROTINIUM (COPPER, IRON, LEAD, SILVER, GOLD, RUTILE)
	--CRUSHED
	angelsmods.functions.OV.set_output("angelsore4-crushed-processing", "copper-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore4-crushed-processing", "iron-ore", "item", 1)
	--CHUNK
	angelsmods.functions.OV.set_output("angelsore4-chunk-processing", "copper-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore4-chunk-processing", "iron-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore4-chunk-processing", "lead-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore4-chunk-processing", "silver-ore", "item", 1)
	--CRYSTAL
	angelsmods.functions.OV.set_output("angelsore4-crystal-processing", "copper-ore", "item", 3)
	angelsmods.functions.OV.set_output("angelsore4-crystal-processing", "iron-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore4-crystal-processing", "lead-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore4-crystal-processing", "silver-ore", "item", 1)	
	angelsmods.functions.OV.set_output("angelsore4-crystal-processing", "gold-ore", "item", 1)
	--PURE
	angelsmods.functions.OV.set_output("angelsore4-pure-processing", "copper-ore", "item", 3)
	angelsmods.functions.OV.set_output("angelsore4-pure-processing", "iron-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore4-pure-processing", "lead-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore4-pure-processing", "silver-ore", "item", 1)	
	angelsmods.functions.OV.set_output("angelsore4-pure-processing", "gold-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore4-pure-processing", "rutile-ore", "item", 1)

	--RUBYTE (LEAD, NICKEL, BAUXITE, GOLD, RUTILE, TUNGSTEN)
	--CRUSHED
	angelsmods.functions.OV.set_output("angelsore5-crushed-processing", "lead-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore5-crushed-processing", "nickel-ore", "item", 1)
	--CHUNK
	angelsmods.functions.OV.set_output("angelsore5-chunk-processing", "lead-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore5-chunk-processing", "nickel-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore5-chunk-processing", "bauxite-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore5-chunk-processing", "gold-ore", "item", 1)
	--CRYSTAL
	angelsmods.functions.OV.set_output("angelsore5-crystal-processing", "lead-ore", "item", 3)
	angelsmods.functions.OV.set_output("angelsore5-crystal-processing", "nickel-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore5-crystal-processing", "bauxite-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore5-crystal-processing", "gold-ore", "item", 1)	
	angelsmods.functions.OV.set_output("angelsore5-crystal-processing", "rutile-ore", "item", 1)
	--PURE
	angelsmods.functions.OV.set_output("angelsore5-pure-processing", "lead-ore", "item", 3)
	angelsmods.functions.OV.set_output("angelsore5-pure-processing", "nickel-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore5-pure-processing", "bauxite-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore5-pure-processing", "gold-ore", "item", 1)	
	angelsmods.functions.OV.set_output("angelsore5-pure-processing", "rutile-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore5-pure-processing", "tungsten-ore", "item", 1)	

	--BOBMONIUM (TIN, QUARTZ, COBALT, ZINC, BAUXITE, URANIUM)
	--CRUSHED
	angelsmods.functions.OV.set_output("angelsore6-crushed-processing", "tin-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore6-crushed-processing", "quartz", "item", 1)
	--CHUNK
	angelsmods.functions.OV.set_output("angelsore6-chunk-processing", "tin-ore", "item", 2)
	angelsmods.functions.OV.set_output("angelsore6-chunk-processing", "quartz", "item", 1)
	angelsmods.functions.OV.set_output("angelsore6-chunk-processing", "cobalt-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore6-chunk-processing", "zinc-ore", "item", 1)
	--CRYSTAL
	angelsmods.functions.OV.set_output("angelsore6-crystal-processing", "tin-ore", "item", 3)
	angelsmods.functions.OV.set_output("angelsore6-crystal-processing", "quartz", "item", 1)
	angelsmods.functions.OV.set_output("angelsore6-crystal-processing", "cobalt-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore6-crystal-processing", "zinc-ore", "item", 1)	
	angelsmods.functions.OV.set_output("angelsore6-crystal-processing", "bauxite-ore", "item", 1)
	--PURE
	angelsmods.functions.OV.set_output("angelsore6-pure-processing", "tin-ore", "item", 3)
	angelsmods.functions.OV.set_output("angelsore6-pure-processing", "quartz", "item", 2)
	angelsmods.functions.OV.set_output("angelsore6-pure-processing", "cobalt-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore6-pure-processing", "zinc-ore", "item", 1)	
	angelsmods.functions.OV.set_output("angelsore6-pure-processing", "bauxite-ore", "item", 1)
	angelsmods.functions.OV.set_output("angelsore6-pure-processing", "uranium-ore", "item", 1)

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
	angelsmods.functions.OV.set_output("angelsore-chunk-mix2-processing", "nickel-ore", "item", 4)
	angelsmods.functions.OV.set_special_recipe_override("angelsore-chunk-mix2-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-nickel-sorting.png" })
	angelsmods.functions.OV.set_output("angelsore-chunk-mix3-processing", "bauxite-ore", "item", 4)
	angelsmods.functions.OV.set_special_recipe_override("angelsore-chunk-mix3-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-aluminium-sorting.png" })
	angelsmods.functions.OV.set_output("angelsore-chunk-mix4-processing", "zinc-ore", "item", 4)
	angelsmods.functions.OV.set_special_recipe_override("angelsore-chunk-mix4-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-zinc-sorting.png" })
    angelsmods.functions.OV.disable_recipe("angelsore-chunk-mix5-processing")
	--CRYSTAL
	angelsmods.functions.OV.set_output("angelsore-crystal-mix1-processing", "rutile-ore", "item", 6)
	angelsmods.functions.OV.set_special_recipe_override("angelsore-crystal-mix1-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-titanium-sorting.png" })
	angelsmods.functions.OV.set_output("angelsore-crystal-mix2-processing", "gold-ore", "item", 6)
	angelsmods.functions.OV.set_special_recipe_override("angelsore-crystal-mix2-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-gold-sorting.png" })
	angelsmods.functions.OV.set_output("angelsore-crystal-mix3-processing", "cobalt-ore", "item", 6)
	angelsmods.functions.OV.set_special_recipe_override("angelsore-crystal-mix3-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-cobalt-sorting.png" })
	angelsmods.functions.OV.set_output("angelsore-crystal-mix4-processing", "silver-ore", "item", 6)
	angelsmods.functions.OV.set_special_recipe_override("angelsore-crystal-mix4-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-silver-sorting.png" })
	angelsmods.functions.OV.set_output("angelsore-crystal-mix5-processing", "uranium-ore", "item", 3)
	angelsmods.functions.OV.set_special_recipe_override("angelsore-crystal-mix5-processing", { icons = {{ icon = "__angelsrefining__/graphics/icons/sort-icon.png"},{ icon = "__base__/graphics/icons/uranium-ore.png", scale = 0.5, shift = { 10, 10}}}})
	--PURE
	angelsmods.functions.OV.set_output("angelsore-pure-mix1-processing", "tungsten-ore", "item", 6)
	angelsmods.functions.OV.set_special_recipe_override("angelsore-pure-mix1-processing", { icon = "__angelsrefining__/graphics/icons/angels-ore-mix-tungsten-sorting.png" })
	angelsmods.functions.OV.disable_recipe("angelsore-pure-mix2-processing")
	angelsmods.functions.OV.disable_recipe("angelsore-pure-mix3-processing")
	
	--GEODES
	--GEODES SORTING
	angelsmods.functions.OV.set_output("geode-blue-processing", "sapphire-ore", "item", {amount=1, probability=0.8})
	angelsmods.functions.OV.set_output("geode-blue-processing", "topaz-ore", "item", {amount=1, probability=0.6})
	angelsmods.functions.OV.set_output("geode-cyan-processing", "sapphire-ore", "item", {amount=1, probability=0.8})
	angelsmods.functions.OV.set_output("geode-cyan-processing", "diamond-ore", "item", {amount=1, probability=0.2})
	angelsmods.functions.OV.set_output("geode-lightgreen-processing", "emerald-ore", "item", {amount=1, probability=0.6})
	angelsmods.functions.OV.set_output("geode-lightgreen-processing", "diamond-ore", "item", {amount=1, probability=0.2})	
	angelsmods.functions.OV.set_output("geode-purple-processing", "amethyst-ore", "item", {amount=1, probability=0.7})
	angelsmods.functions.OV.set_output("geode-purple-processing", "emerald-ore", "item", {amount=1, probability=0.6})
	angelsmods.functions.OV.set_output("geode-red-processing", "ruby-ore", "item", {amount=1, probability=0.9})
	angelsmods.functions.OV.set_output("geode-red-processing", "amethyst-ore", "item", {amount=1, probability=0.7})	
	angelsmods.functions.OV.set_output("geode-yellow-processing", "topaz-ore", "item", {amount=1, probability=0.7})
	angelsmods.functions.OV.set_output("geode-yellow-processing", "ruby-ore", "item", {amount=1, probability=0.9})
	
	--SINGLE GEM CRYSTALLIZATION
	angelsmods.functions.OV.set_output("angelsore7-crystallization-1", "sapphire-ore", "item", 1)
	angelsmods.functions.OV.set_special_recipe_override("angelsore7-crystallization-1", { icon = "__angelsrefining__/graphics/icons/gem-crystallization-sapphire.png" })	
	data.raw["recipe"]["angelsore7-crystallization-1"].localised_name = {"recipe-name.angelsore7-crystallization-1", "Sapphire-Ore"}
	
	angelsmods.functions.OV.set_output("angelsore7-crystallization-2", "topaz-ore", "item", 1)	
	angelsmods.functions.OV.set_special_recipe_override("angelsore7-crystallization-2", { icon = "__angelsrefining__/graphics/icons/gem-crystallization-topaz.png" })	
	data.raw["recipe"]["angelsore7-crystallization-2"].localised_name = {"recipe-name.angelsore7-crystallization-2", "Topaz-Ore"}
	
	angelsmods.functions.OV.set_output("angelsore7-crystallization-3", "ruby-ore", "item", 1)	
	angelsmods.functions.OV.set_special_recipe_override("angelsore7-crystallization-3", { icon = "__angelsrefining__/graphics/icons/gem-crystallization-ruby.png" })	
	data.raw["recipe"]["angelsore7-crystallization-3"].localised_name = {"recipe-name.angelsore7-crystallization-3", "Ruby-Ore"}
	
	angelsmods.functions.OV.set_output("angelsore7-crystallization-4", "emerald-ore", "item", 1)
	angelsmods.functions.OV.set_special_recipe_override("angelsore7-crystallization-4", { icon = "__angelsrefining__/graphics/icons/gem-crystallization-emerald.png" })	
	data.raw["recipe"]["angelsore7-crystallization-4"].localised_name = {"recipe-name.angelsore7-crystallization-4", "Emerald-Ore"}
	
	angelsmods.functions.OV.set_output("angelsore7-crystallization-5", "amethyst-ore", "item", 1)	
	angelsmods.functions.OV.set_special_recipe_override("angelsore7-crystallization-5", { icon = "__angelsrefining__/graphics/icons/gem-crystallization-amethyst.png" })	
	data.raw["recipe"]["angelsore7-crystallization-5"].localised_name = {"recipe-name.angelsore7-crystallization-5", "Amethyst-Ore"}
	
	angelsmods.functions.OV.set_output("angelsore7-crystallization-6", "diamond-ore", "item", 1)	
	angelsmods.functions.OV.set_special_recipe_override("angelsore7-crystallization-6", { icon = "__angelsrefining__/graphics/icons/gem-crystallization-diamond.png" })	
	data.raw["recipe"]["angelsore7-crystallization-6"].localised_name = {"recipe-name.angelsore7-crystallization-6", "Diamond-Ore"}	
	
	--SMELTING RECIPES
	angelsmods.functions.OV.set_output("angelsore5-crushed-smelting", "lead-plate", "item", 2)
	angelsmods.functions.OV.set_special_recipe_override("angelsore5-crushed-smelting", { icon = "__angelsrefining__/graphics/icons/lead-plate-crushed.png" })
	angelsmods.functions.OV.set_output("angelsore6-crushed-smelting", "tin-plate", "item", 2)
	angelsmods.functions.OV.set_special_recipe_override("angelsore6-crushed-smelting", { icon = "__angelsrefining__/graphics/icons/tin-plate-crushed.png" })
	
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
		angelsmods.functions.OV.add_unlock("water-treatment", "salt-water-electrolysis-2")
	end
	
	angelsmods.functions.OV.add_unlock("thermal-water-extraction", "water-thermal-lithia")
	
	if angelsmods.smelting then
		angelsmods.functions.OV.set_output("nodule-crystallization-1", "manganese-ore", "item", 5)
		angelsmods.functions.OV.set_output("nodule-crystallization-2", "chrome-ore", "item", 5)
	end
	
	--INSERT WATER RESOURCES TO BOB RECIPES
	angelsmods.functions.OV.remove_input("water-electrolysis", "water")
	angelsmods.functions.OV.set_input("water-electrolysis", "water-purified", "fluid", 10)
	angelsmods.functions.OV.remove_input("nitric-acid", "water")
	angelsmods.functions.OV.set_input("nitric-acid", "water-purified", "fluid", 20)		
	angelsmods.functions.OV.remove_input("sulfuric-acid-2", "water")
	angelsmods.functions.OV.set_input("sulfuric-acid-2", "water-purified", "fluid", 50)	
	angelsmods.functions.OV.remove_input("petroleum-gas-cracking", "water")
	angelsmods.functions.OV.set_input("petroleum-gas-cracking", "water-purified", "fluid", 10)
	angelsmods.functions.OV.remove_input("coal-cracking", "water")
	angelsmods.functions.OV.set_input("coal-cracking", "water-purified", "fluid", 15)	
	angelsmods.functions.OV.remove_input("lithium-water-electrolysis", "water")
	angelsmods.functions.OV.set_input("lithium-water-electrolysis", "water-purified", "fluid", 20)	
	angelsmods.functions.OV.remove_input("explosives", "water")
	angelsmods.functions.OV.set_input("explosives", "water-purified", "fluid", 10)
	angelsmods.functions.OV.remove_input("sulfur", "water")
	angelsmods.functions.OV.set_input("sulfur", "water-purified", "fluid", 30)
	angelsmods.functions.OV.remove_input("sulfuric-acid", "water")
	angelsmods.functions.OV.set_input("sulfuric-acid", "water-purified", "fluid", 100)
	angelsmods.functions.OV.remove_input("heavy-oil-cracking", "water")
	angelsmods.functions.OV.set_input("heavy-oil-cracking", "water-purified", "fluid", 30)
	angelsmods.functions.OV.remove_input("light-oil-cracking", "water")
	angelsmods.functions.OV.set_input("light-oil-cracking", "water-purified", "fluid", 30)
	angelsmods.functions.OV.remove_input("advanced-oil-processing", "water")
	angelsmods.functions.OV.set_input("advanced-oil-processing", "water-purified", "fluid", 50)	
	
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
end