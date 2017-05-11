if angelsmods.ores.enableinfiniteuranium then
	local inf_uranium_stage = 	{
		  sheet =
		  {
			filename = "__base__/graphics/entity/uranium-ore/uranium-ore.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			line_length = 8,
			frame_count = 16,
			variation_count = 4,
			hr_version = {
			  filename = "__base__/graphics/entity/uranium-ore/hr-uranium-ore.png",
			  priority = "extra-high",
			  width = 128,
			  height = 128,
			  line_length = 8,
			  frame_count = 16,
			  variation_count = 4,
			  scale = 0.5
			}
		  }
		}
		
	local inf_uranium_stage_effect =     {
		  sheet =
		  {
			filename = "__base__/graphics/entity/uranium-ore/uranium-ore-glow.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			line_length = 8,
			frame_count = 16,
			variation_count = 4,
			blend_mode = "additive",
			flags = {"light"},
			hr_version = {
			  filename = "__base__/graphics/entity/uranium-ore/hr-uranium-ore-glow.png",
			  priority = "extra-high",
			  width = 128,
			  height = 128,
			  line_length = 8,
			  frame_count = 16,
			  variation_count = 4,
			  scale = 0.5,
			  blend_mode = "additive",
			  flags = {"light"},
			}
		  }
		}

	local inf_uranium_ani_per = 3.5
	local inf_uranium_ani_dev = 1
	local inf_uranium_dark_mul = 4
	local inf_uranium_alpha_min = 0.3
	local inf_uranium_alpha_max = 0.8

	if not angelsmods.ores.enablersomode then
	data:extend(
	{
		{
		type = "autoplace-control",
		name = "infinite-uranium-ore",
		richness = true,
		order = "b-e"
		},
		{
		type = "noise-layer",
		name = "infinite-uranium-ore"
		},
	  {
		type = "resource",
		name = "infinite-uranium-ore",
		icon = "__angelsinfiniteores__/graphics/icons/nuc-uranium-ore.png",
		flags = {"placeable-neutral"},
		order="a-b-e",
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 0.9,
		  mining_particle = "stone-particle",
		  mining_time = 4,
		  results = {
				{
					type = "item",
					name = "uranium-ore",
					amount_min = 1,
					amount_max = 1,
					probability = angelsmods.ores.loweryield
				}
			},
		  fluid_amount = 10,
		  required_fluid = "sulfuric-acid"
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace =
		{
			control = "infinite-uranium-ore",
			sharpness = 1,
			richness_multiplier = 5000,
			richness_multiplier_distance_bonus = 20,
			richness_base = 2000,
			coverage = 0.01,
			peaks = {
				{
					noise_layer = "infinite-uranium-ore",
					noise_octaves_difference = -2.5,
					noise_persistence = 0.3,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
				{
					noise_layer = "infinite-uranium-ore",
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
		stages = inf_uranium_stage,
		stages_effect = inf_uranium_stage_effect,
		effect_animation_period = inf_uranium_ani_per,
		effect_animation_period_deviation = inf_uranium_ani_dev,
		effect_darkness_multiplier = inf_uranium_dark_mul,
		min_effect_alpha = inf_uranium_alpha_min,
		max_effect_alpha = inf_uranium_alpha_max,
		map_color = {r=0, g=0.7, b=0}
	  },
	})
	else
	data:extend(
	{
	  {
		type = "resource",
		name = "infinite-uranium-ore",
		icon = "__angelsinfiniteores__/graphics/icons/nuc-uranium-ore.png",
		flags = {"placeable-neutral"},
		order="a-b-e",
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 0.9,
		  mining_particle = "stone-particle",
		  mining_time = 4,
		  results = {
				{
					type = "item",
					name = "uranium-ore",
					amount_min = 1,
					amount_max = 1,
					probability = angelsmods.ores.loweryield
				}
			},
		  fluid_amount = 10,
		  required_fluid = "sulfuric-acid"
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		stage_counts = {1},
		stages = inf_uranium_stage,
		stages_effect = inf_uranium_stage_effect,
		effect_animation_period = inf_uranium_ani_per,
		effect_animation_period_deviation = inf_uranium_ani_dev,
		effect_darkness_multiplier = inf_uranium_dark_mul,
		min_effect_alpha = inf_uranium_alpha_min,
		max_effect_alpha = inf_uranium_alpha_max,
		map_color = {r=0, g=0.7, b=0}
	  },
	})
	end
end