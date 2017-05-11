if angelsmods.ores.enableinfiniteangelsore6 then
	local angels_ore6_stage = 	{
		  sheet =
		  {
			filename = "__angelsinfiniteores__/graphics/entity/ores/ore-13-lr.png",
			priority = "extra-high",
			tint = {r = 0.75, g = 0.5, b = 0.25},
			width = 64,
			height = 64,
			line_length = 8,
			frame_count = 16,
			variation_count = 4,
			hr_version = {
			  filename = "__angelsinfiniteores__/graphics/entity/ores/ore-13-hr.png",
			  priority = "extra-high",
			  tint = {r = 0.75, g = 0.5, b = 0.25},
			  width = 128,
			  height = 128,
			  line_length = 8,
			  frame_count = 16,
			  variation_count = 4,
			  scale = 0.5
			}
		  }
		}
		
	local angels_ore6_stage_effect =     {
		  sheet =
		  {
			filename = "__angelsinfiniteores__/graphics/entity/ores/ore-13-lr-glow.png",
			priority = "extra-high",
			tint = {r = 0.75, g = 0.5, b = 0.25},
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
			  tint = {r = 0.75, g = 0.5, b = 0.25},
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

	local ore6_ani_per = 3.5
	local ore6_ani_dev = 0.7
	local ore6_dark_mul = 3
	local ore6_alpha_min = 0.3
	local ore6_alpha_max = 0.8

	if not angelsmods.ores.enablersomode then
	data:extend(
	{
		{
		type = "autoplace-control",
		name = "infinite-angels-ore6",
		richness = true,
		order = "b-e"
		},
		{
		type = "noise-layer",
		name = "infinite-angels-ore6"
		},
		{
		type = "resource",
		name = "infinite-angels-ore6",
		icon = "__angelsinfiniteores__/graphics/icons/angels-ore6.png",
		flags = {"placeable-neutral"},
		order="a-b-a",
		map_color = {r = 0.75, g = 0.5, b = 0.25},
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 1.75,
		  mining_particle = "angels-ore6-particle",
		  mining_time = 2.5,
		  results = {
				{
					type = "item",
					name = "angels-ore6",
					amount_min = 1,
					amount_max = 1,
					probability = angelsmods.ores.loweryield
				}
			}
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace =
		{
			control = "infinite-angels-ore6",
			sharpness = 1,
			richness_multiplier = 5000,
			richness_multiplier_distance_bonus = 20,
			richness_base = 2000,
			coverage = 0.01,
			peaks = {
				{
					noise_layer = "infinite-angels-ore6",
					noise_octaves_difference = -2.5,
					noise_persistence = 0.3,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
				{
					noise_layer = "infinite-angels-ore6",
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
		stages = angels_ore6_stage,
		stages_effect = angels_ore6_stage_effect,
		effect_animation_period = ore6_ani_per,
		effect_animation_period_deviation = ore6_ani_dev,
		effect_darkness_multiplier = ore6_dark_mul,
		min_effect_alpha = ore6_alpha_min,
		max_effect_alpha = ore6_alpha_max,
	  },
	}
	)
	else
	data:extend(
	{
	  {
		type = "resource",
		name = "infinite-angels-ore6",
		icon = "__angelsinfiniteores__/graphics/icons/angels-ore6.png",
		flags = {"placeable-neutral"},
		order="a-b-a",
		map_color = {r = 0.75, g = 0.5, b = 0.25},
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 1.75,
		  mining_particle = "angels-ore6-particle",
		  mining_time = 2.5,
		  results = {
				{
					type = "item",
					name = "angels-ore6",
					amount_min = 1,
					amount_max = 1,
					probability = angelsmods.ores.loweryield
				}
			}
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		stage_counts = {1},
		stages = angels_ore6_stage,
		stages_effect = angels_ore6_stage_effect,
		effect_animation_period = ore6_ani_per,
		effect_animation_period_deviation = ore6_ani_dev,
		effect_darkness_multiplier = ore6_dark_mul,
		min_effect_alpha = ore6_alpha_min,
		max_effect_alpha = ore6_alpha_max,
	  },
	}
	)
	end
	if angelsmods.ores.enablefluidreq then
	data.raw.resource["infinite-angels-ore6"].minable.fluid_amount = 10
	data.raw.resource["infinite-angels-ore6"].minable.required_fluid = "sulfuric-acid"
	end
end