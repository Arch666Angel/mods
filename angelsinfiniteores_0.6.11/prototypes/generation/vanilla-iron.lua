if angelsmods.ores.enableinfiniteiron then
	local inf_iron_stage = 	{
		  sheet =
		  {
			filename = "__base__/graphics/entity/iron-ore/iron-ore.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			line_length = 8,
			frame_count = 16,
			variation_count = 4,
			hr_version = {
			  filename = "__base__/graphics/entity/iron-ore/hr-iron-ore.png",
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
		
	local inf_iron_stage_effect =     {
		  sheet =
		  {
			filename = "__angelsinfiniteores__/graphics/entity/ores/ore-13-lr-glow.png",
			priority = "extra-high",
			tint = {r= 0.34, g= 0.42, b= 0.43},
			width = 64,
			height = 64,
			line_length = 8,
			frame_count = 16,
			variation_count = 4,
			blend_mode = "additive",
			flags = {"light"},
			hr_version = {
			  filename = "__angelsinfiniteores__/graphics/entity/ores/ore-13-hr-glow.png",
			  priority = "extra-high",
			  tint = {r= 0.34, g= 0.42, b= 0.43},
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

	local inf_iron_ani_per = 3.5
	local inf_iron_ani_dev = 0.7
	local inf_iron_dark_mul = 3
	local inf_iron_alpha_min = 0.3
	local inf_iron_alpha_max = 0.8

	if not angelsmods.ores.enablersomode then
	data:extend(
	{
	  {
		type = "autoplace-control",
		name = "infinite-iron-ore",
		richness = true,
		order = "b-b"
	  },
	  {
		type = "noise-layer",
		name = "infinite-iron-ore"
	  },
	  {
		type = "resource",
		name = "infinite-iron-ore",
		icon = "__base__/graphics/icons/iron-ore.png",
		flags = {"placeable-neutral"},
		order="a-b-a",
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 0.9,
		  mining_particle = "iron-ore-particle",
		  mining_time = 2,
		  results = {
				{
					type = "item",
					name = "iron-ore",
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
			control = "infinite-iron-ore",
			sharpness = 1,
			richness_multiplier = 5000,
			richness_multiplier_distance_bonus = 20,
			richness_base = 2000,
			coverage = 0.01,
			peaks = {
				{
					noise_layer = "infinite-iron-ore",
					noise_octaves_difference = -2.5,
					noise_persistence = 0.3,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
				{
					noise_layer = "infinite-iron-ore",
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
		stages = inf_iron_stage,
		stages_effect = inf_iron_stage_effect,
		effect_animation_period = inf_iron_ani_per,
		effect_animation_period_deviation = inf_iron_ani_dev,
		effect_darkness_multiplier = inf_iron_dark_mul,
		min_effect_alpha = inf_iron_alpha_min,
		max_effect_alpha = inf_iron_alpha_max,
		map_color = {r=0.337, g=0.419, b=0.427}
	  },
	}
	)
	else
	data:extend(
	{
	  {
		type = "resource",
		name = "infinite-iron-ore",
		icon = "__base__/graphics/icons/iron-ore.png",
		flags = {"placeable-neutral"},
		order="a-b-a",
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 0.9,
		  mining_particle = "iron-ore-particle",
		  mining_time = 2,
		  results = {
				{
					type = "item",
					name = "iron-ore",
					amount_min = 1,
					amount_max = 1,
					probability = angelsmods.ores.loweryield
				}
			},
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		stage_counts = {1},
		stages = inf_iron_stage,
		stages_effect = inf_iron_stage_effect,
		effect_animation_period = inf_iron_ani_per,
		effect_animation_period_deviation = inf_iron_ani_dev,
		effect_darkness_multiplier = inf_iron_dark_mul,
		min_effect_alpha = inf_iron_alpha_min,
		max_effect_alpha = inf_iron_alpha_max,
		map_color = {r=0.337, g=0.419, b=0.427}
	  },
	}
	)
	end
end