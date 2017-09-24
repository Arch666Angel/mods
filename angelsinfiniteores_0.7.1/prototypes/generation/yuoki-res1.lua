if angelsmods.ores.enableinfiniteyuoki then
	if not angelsmods.ores.enablersomode then
	data:extend(
	{
		-- unicomp
		{
		type = "autoplace-control",
		name = "infinite-y-res1",
		richness = true,
		order = "y-ore",
		},
		{
		type = "noise-layer",
		name = "infinite-y-res1",
		},
		{
		type = "resource",
		name = "infinite-y-res1",
		icon = "__Yuoki__/graphics/icons/uni-com-pur.png",
		flags = {"placeable-neutral"},
		order="a-b-d",
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
			hardness = 0.8,
			mining_particle = "stone-particle",
			mining_time = 3,
			results = {
				{
					type = "item",
					name = "y-res1",
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
			control = "infinite-y-res1",
			sharpness = 1,
			richness_multiplier = 5000,
			richness_multiplier_distance_bonus = 20,
			richness_base = 2000,
			coverage = 0.01,
			peaks = {
				{
					noise_layer = "infinite-y-res1",
					noise_octaves_difference = -2.5,
					noise_persistence = 0.3,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
				{
					noise_layer = "infinite-y-res1",
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
			filename = "__angelsinfiniteores__/graphics/entity/ores-inf/yi-res-1e-inf.png",
			priority = "extra-high",
			width = 38,
			height = 38,
			frame_count = 8,
			variation_count = 1
		  }
		},
			map_color = {r=0.000, g=0.00, b=0.65}
		}
	})
	else
	data:extend(
	{
		{
		type = "resource",
		name = "infinite-y-res1",
		icon = "__Yuoki__/graphics/icons/uni-com-pur.png",
		flags = {"placeable-neutral"},
		order="a-b-d",
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
			hardness = 0.8,
			mining_particle = "stone-particle",
			mining_time = 3,
			results = {
				{
					type = "item",
					name = "y-res1",
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
			filename = "__angelsinfiniteores__/graphics/entity/ores-inf/yi-res-1e-inf.png",
			priority = "extra-high",
			width = 38,
			height = 38,
			frame_count = 8,
			variation_count = 1
		  }
		},
			map_color = {r=0.000, g=0.00, b=0.65}
		}
	}
	)
	end
end