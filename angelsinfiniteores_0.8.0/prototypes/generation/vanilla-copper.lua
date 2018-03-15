if angelsmods.ores.enableinfinitecopper then
	local inf_copper_stage = 	{
		  sheet =
		  {
			filename = "__base__/graphics/entity/copper-ore/copper-ore.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			line_length = 8,
			frame_count = 16,
			variation_count = 4,
			hr_version = {
			  filename = "__base__/graphics/entity/copper-ore/hr-copper-ore.png",
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
		
	local inf_copper_stage_effect =     {
		  sheet =
		  {
			filename = "__angelsinfiniteores__/graphics/entity/ores/ore-11-lr-glow.png",
			priority = "extra-high",
			tint = {r= 0.8, g= 0.39, b= 0.22},
			width = 64,
			height = 64,
			line_length = 8,
			frame_count = 16,
			variation_count = 4,
			blend_mode = "additive",
			flags = {"light"},
			hr_version = {
			  filename = "__angelsinfiniteores__/graphics/entity/ores/ore-11-hr-glow.png",
			  priority = "extra-high",
			  tint = {r= 0.8, g= 0.39, b= 0.22},
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

	local inf_copper_ani_per = 4
	local inf_copper_ani_dev = 0.8
	local inf_copper_dark_mul = 3
	local inf_copper_alpha_min = 0.3
	local inf_copper_alpha_max = 0.7

	if not angelsmods.ores.enablersomode then
	data:extend(
	{
	  {
		type = "autoplace-control",
		name = "infinite-copper-ore",
		richness = true,
		order = "b-b",
		category = "resource",
	  },
	  {
		type = "noise-layer",
		name = "infinite-copper-ore"
	  },
	  {
		type = "resource",
		name = "infinite-copper-ore",
		icon = "__base__/graphics/icons/copper-ore.png",
		icon_size = 32,
		flags = {"placeable-neutral"},
		order="a-b-a",
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 0.9,
		  mining_particle = "copper-ore-particle",
		  mining_time = 2,
		  results = {
				{
					type = "item",
					name = "copper-ore",
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
			control = "infinite-copper-ore",
			sharpness = 1,
			richness_multiplier = 5000,
			richness_multiplier_distance_bonus = 20,
			richness_base = 2000,
			coverage = 0.01,
			peaks = {
				{
					noise_layer = "infinite-copper-ore",
					noise_octaves_difference = -2.5,
					noise_persistence = 0.3,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
				{
					noise_layer = "infinite-copper-ore",
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
		stages = inf_copper_stage,
		stages_effect = inf_copper_stage_effect,
		effect_animation_period = inf_copper_ani_per,
		effect_animation_period_deviation = inf_copper_ani_dev,
		effect_darkness_multiplier = inf_copper_dark_mul,
		min_effect_alpha = inf_copper_alpha_min,
		max_effect_alpha = inf_copper_alpha_max,
		map_color = {r=0.803, g=0.388, b=0.215}
	  },
	}
	)
	else
	data:extend(
	{
	  {
		type = "resource",
		name = "infinite-copper-ore",
		icon = "__base__/graphics/icons/copper-ore.png",
		icon_size = 32,
		flags = {"placeable-neutral"},
		order="a-b-a",
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 0.9,
		  mining_particle = "copper-ore-particle",
		  mining_time = 2,
		  results = {
				{
					type = "item",
					name = "copper-ore",
					amount_min = 1,
					amount_max = 1,
					probability = angelsmods.ores.loweryield
				}
			},
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		stage_counts = {1},
		stages = inf_copper_stage,
		stages_effect = inf_copper_stage_effect,
		effect_animation_period = inf_copper_ani_per,
		effect_animation_period_deviation = inf_copper_ani_dev,
		effect_darkness_multiplier = inf_copper_dark_mul,
		min_effect_alpha = inf_copper_alpha_min,
		max_effect_alpha = inf_copper_alpha_max,
		map_color = {r=0.803, g=0.388, b=0.215}
	  },
	}
	)
	end
end