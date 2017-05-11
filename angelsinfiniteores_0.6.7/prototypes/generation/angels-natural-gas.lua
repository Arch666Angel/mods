if angelsmods.petrochem then
	data:extend(
	{
	  {
		type = "noise-layer",
		name = "angels-natural-gas"
	  },
	  {
		type = "autoplace-control",
		name = "angels-natural-gas",
		richness = true,
		order = "b-e"
	  },
	  {
		type = "resource",
		name = "angels-natural-gas",
		icon = "__base__/graphics/icons/crude-oil.png",
		flags = {"placeable-neutral"},
		category = "basic-fluid",
		order="a-b-a",
		infinite = true,
		highlight = true,
		minimum = angelsmods.ores.oilyield,
		normal =100000,
		infinite_depletion_amount = 10,
		resource_patch_search_radius = 12,
		minable =
		{
		  hardness = 1,
		  mining_time = 1,
		  results =
		  {
			{
			  type = "fluid",
			  name = "gas-natural-1",
			  amount_min = 20,
			  amount_max = 20,
			  probability = 1
			},
		  }
		},
		collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace =
		{
		  control = "angels-natural-gas",
		  sharpness = 0.99,
		  max_probability = 0.03,
		  richness_base = 150000,
		  richness_multiplier = 200000,
		  richness_multiplier_distance_bonus = 2000,
		  coverage = 0.015,
		  peaks =
		  {
			{
			  noise_layer = "angels-natural-gas",
			  noise_octaves_difference = -1.8,
			  noise_persistence = 0.4,
			}
		  }
		},
		stage_counts = {0},
		stages =
		{
		  sheet =
		  {
			filename = "__angelsinfiniteores__/graphics/entity/patches/gas.png",
			tint = {r = 0.70, g = 0.90, b = 0.60},
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 4,
			variation_count = 1
		  }
		},
		map_color = {r = 0.70, g = 0.90, b = 0.60},
		map_grid = false
	  }
	})
end