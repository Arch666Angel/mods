if angelsmods.ores.enableinfiniteangelsore5 then
	local angels_ore5_stage = 	{
		  sheet =
		  {
			filename = "__angelsinfiniteores__/graphics/entity/ores/ore-11-lr.png",
			priority = "extra-high",
			tint = {r=0.68, g=0.18, b=0.16},
			width = 64,
			height = 64,
			line_length = 8,
			frame_count = 16,
			variation_count = 4,
			hr_version = {
			  filename = "__angelsinfiniteores__/graphics/entity/ores/ore-11-hr.png",
			  priority = "extra-high",
			  tint = {r=0.68, g=0.18, b=0.16},
			  width = 128,
			  height = 128,
			  line_length = 8,
			  frame_count = 16,
			  variation_count = 4,
			  scale = 0.5
			}
		  }
		}
		
	local angels_ore5_stage_effect =     {
		  sheet =
		  {
			filename = "__angelsinfiniteores__/graphics/entity/ores/ore-11-lr-glow.png",
			priority = "extra-high",
			tint = {r=0.58, g=0.18, b=0.16},
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
			  tint = {r=0.58, g=0.18, b=0.16},
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

	local ore5_ani_per = 3.5
	local ore5_ani_dev = 0.7
	local ore5_dark_mul = 3
	local ore5_alpha_min = 0.3
	local ore5_alpha_max = 0.8

	if not angelsmods.ores.enablersomode then
	data:extend(
	{
		{
		type = "autoplace-control",
		name = "infinite-angels-ore5",
		richness = true,
		order = "b-e"
		},
		{
		type = "noise-layer",
		name = "infinite-angels-ore5"
		},
		{
		type = "resource",
		name = "infinite-angels-ore5",
		icon = "__angelsinfiniteores__/graphics/icons/angels-ore5.png",
		flags = {"placeable-neutral"},
		order="a-b-a",
		map_color = {r=0.68, g=0.18, b=0.16},
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 1.75,
		  mining_particle = "angels-ore5-particle",
		  mining_time = 2.5,
		  results = {
				{
					type = "item",
					name = "angels-ore5",
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
			control = "infinite-angels-ore5",
			sharpness = 1,
			richness_multiplier = 1000,
			richness_multiplier_distance_bonus = 20,
			richness_base = 1000,
			coverage = 0.01,
			peaks = {
				{
					noise_layer = "infinite-angels-ore5",
					noise_octaves_difference = -2.5,
					noise_persistence = 0.3,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
			}
		},
		stage_counts = {1},
		stages = angels_ore5_stage,
		stages_effect = angels_ore5_stage_effect,
		effect_animation_period = ore5_ani_per,
		effect_animation_period_deviation = ore5_ani_dev,
		effect_darkness_multiplier = ore5_dark_mul,
		min_effect_alpha = ore5_alpha_min,
		max_effect_alpha = ore5_alpha_max,
	  },
	}
	)
	else
	data:extend(
	{
	  {
		type = "resource",
		name = "infinite-angels-ore5",
		icon = "__angelsinfiniteores__/graphics/icons/angels-ore5.png",
		flags = {"placeable-neutral"},
		order="a-b-a",
		map_color = {r=0.68, g=0.18, b=0.16},
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 1.75,
		  mining_particle = "angels-ore5-particle",
		  mining_time = 2.5,
		  results = {
				{
					type = "item",
					name = "angels-ore5",
					amount_min = 1,
					amount_max = 1,
					probability = angelsmods.ores.loweryield
				}
			}
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		stage_counts = {1},
		stages = angels_ore5_stage,
		stages_effect = angels_ore5_stage_effect,
		effect_animation_period = ore5_ani_per,
		effect_animation_period_deviation = ore5_ani_dev,
		effect_darkness_multiplier = ore5_dark_mul,
		min_effect_alpha = ore5_alpha_min,
		max_effect_alpha = ore5_alpha_max,
	  },
	}
	)
	end
	if angelsmods.ores.enablefluidreq then
		data.raw.resource["infinite-angels-ore5"].minable.fluid_amount = 10
		if angelsmods.petrochem then
			if angelsmods.trigger.enableacids then
				data.raw.resource["infinite-angels-ore5"].minable.required_fluid = "liquid-nitric-acid"
			else
				data.raw.resource["infinite-angels-ore5"].minable.required_fluid = "liquid-sulfuric-acid"
			end
		else
			data.raw.resource["infinite-angels-ore5"].minable.required_fluid = "sulfuric-acid"
		end
	end
end