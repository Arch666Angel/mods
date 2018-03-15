if angelsmods.ores.enableinfiniteores and angelsmods.ores.enableinfinitedarkmatter then
	data.raw["resource"]["tenemut"].stages={sheet=
			{
			filename = "__angelsinfiniteores__/graphics/entity/ores/ore-7.png",
			tint = {r=0.76, g=0.58, b=0.69},
			priority = "extra-high",
			width = 38,
			height = 38,
			frame_count = 4,
			variation_count = 8
			}
	}

	data.raw["resource"]["tenemut"].map_color={r=0.76, g=0.58, b=0.69}

	if not angelsmods.ores.enablersomode then
	data:extend(
	{
		{
		type = "autoplace-control",
		name = "infinite-tenemut",
		richness = true,
		order = "b-e"
		},
		{
		type = "noise-layer",
		name = "infinite-tenemut"
		},
	  {
		type = "resource",
		name = "infinite-tenemut",
		icon = "__dark-matter-replicators__/graphics/icons/tenemut.png",
		flags = {"placeable-neutral"},
		order="a-b-e",
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 0.9,
		  mining_particle = "tenemut-particle",
		  mining_time = 4,
		  results = {
				{
					type = "item",
					name = "tenemut",
					amount_min = 1,
					amount_max = 1,
					probability = angelsmods.ores.loweryield
				}
			},
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace =
		{
			control = "infinite-tenemut",
			sharpness = 1,
			richness_multiplier = 5000,
			richness_multiplier_distance_bonus = 20,
			richness_base = 2000,
			coverage = 0.01,
			peaks = {
				{
					noise_layer = "infinite-tenemut",
					noise_octaves_difference = -2.5,
					noise_persistence = 0.3,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
				{
					noise_layer = "infinite-tenemut",
					noise_octaves_difference = -2,
					noise_persistence = 0.3,
					starting_area_weight_optimal = 1,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
				{
					influence = 0.15,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				}
			}
		},
		stage_counts = {1},
		stages =
		{
			sheet =
		  {
			filename = "__angelsinfiniteores__/graphics/entity/ores-inf/ore-7-inf.png",
			tint = {r=0.76, g=0.58, b=0.69},
			priority = "extra-high",
			width = 38,
			height = 38,
			frame_count = 8,
			variation_count = 1
		  }
		},
		map_color = {r=0.76, g=0.58, b=0.69},
	  },
	})
	else
	data:extend(
	{
	  {
		type = "resource",
		name = "infinite-tenemut",
		icon = "__dark-matter-replicators__/graphics/icons/tenemut.png",
		flags = {"placeable-neutral"},
		order="a-b-e",
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 0.9,
		  mining_particle = "tenemut-particle",
		  mining_time = 4,
		  results = {
				{
					type = "item",
					name = "tenemut",
					amount_min = 1,
					amount_max = 1,
					probability = angelsmods.ores.loweryield
				}
			},
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		stage_counts = {1},
		stages =
		{
			sheet =
		  {
			filename = "__angelsinfiniteores__/graphics/entity/ores-inf/ore-7-inf.png",
			tint = {r=0.76, g=0.58, b=0.69},
			priority = "extra-high",
			width = 38,
			height = 38,
			frame_count = 8,
			variation_count = 1
		  }
		},
		map_color = {r=0.76, g=0.58, b=0.69},
	  },
	})
	end
end