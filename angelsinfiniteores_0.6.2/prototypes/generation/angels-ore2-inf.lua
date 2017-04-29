local angels_ore2_stage = 	{
      sheet =
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores/ore-14-lr.png",
        priority = "extra-high",
		tint = {r=0.55, g=0.51, b=0.30},
        width = 64,
        height = 64,
		line_length = 8,
        frame_count = 16,
        variation_count = 4,
        hr_version = {
          filename = "__angelsinfiniteores__/graphics/entity/ores/ore-14-hr.png",
          priority = "extra-high",
		  tint = {r=0.55, g=0.51, b=0.30},
          width = 128,
          height = 128,
		  line_length = 8,
          frame_count = 16,
          variation_count = 4,
          scale = 0.5
        }
      }
    }
	
local angels_ore2_stage_effect =     {
      sheet =
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores/ore-14-lr-glow.png",
        priority = "extra-high",
        tint = {r=0.55, g=0.51, b=0.30},
        width = 64,
        height = 64,
		line_length = 8,
        frame_count = 16,
        variation_count = 4,
        blend_mode = "additive",
        flags = {"light"},
        hr_version = {
          filename = "__angelsinfiniteores__/graphics/entity/ores/ore-14-hr-glow.png",
          priority = "extra-high",
		  tint = {r=0.55, g=0.51, b=0.30},
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

local ore2_ani_per = 5
local ore2_ani_dev = 1
local ore2_dark_mul = 3.6
local ore2_alpha_min = 0.2
local ore2_alpha_max = 0.3

if not angelsmods.ores.enablersomode then
data:extend(
{
	{
	type = "autoplace-control",
	name = "infinite-angels-ore2",
	richness = true,
	order = "b-e"
	},
	{
	type = "noise-layer",
	name = "infinite-angels-ore2"
	},
	{
	type = "resource",
	name = "infinite-angels-ore2",
	icon = "__angelsinfiniteores__/graphics/icons/angels-ore2.png",
	flags = {"placeable-neutral"},
	order="a-b-a",
	map_color = {r=0.55, g=0.51, b=0.30},
	infinite=true,
	minimum=300,
	normal=1500,
	maximum=6000,
	minable =
	{
	  hardness = 1.5,
	  mining_particle = "angels-ore2-particle",
	  mining_time = 2,
	  result = "angels-ore2"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "infinite-angels-ore2",
		sharpness = 1,
		richness_multiplier = 5000,
		richness_multiplier_distance_bonus = 20,
		richness_base = 2000,
		coverage = 0.01,
		peaks = {
			{
				noise_layer = "infinite-angels-ore2",
				noise_octaves_difference = -2.5,
				noise_persistence = 0.3,
				starting_area_weight_optimal = 0,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			},
			{
				noise_layer = "infinite-angels-ore2",
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
	stages = angels_ore2_stage,
    stages_effect = angels_ore2_stage_effect,
    effect_animation_period = ore2_ani_per,
    effect_animation_period_deviation = ore2_ani_dev,
    effect_darkness_multiplier = ore2_dark_mul,
    min_effect_alpha = ore2_alpha_min,
    max_effect_alpha = ore2_alpha_max,
  },
}
)
else
data:extend(
{
  {
	type = "resource",
	name = "infinite-angels-ore2",
	icon = "__angelsinfiniteores__/graphics/icons/angels-ore2.png",
	flags = {"placeable-neutral"},
	order="a-b-a",
	tint = {r=0.55, g=0.51, b=0.30},
	map_color = {r=0.55, g=0.51, b=0.30},
	infinite=true,
	minimum=300,
	normal=1500,
	maximum=6000,
	minable =
	{
	  hardness = 1.5,
	  mining_particle = "angels-ore2-particle",
	  mining_time = 2,
	  result = "angels-ore2"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	stage_counts = {1},
	stages = angels_ore2_stage,
    stages_effect = angels_ore2_stage_effect,
    effect_animation_period = ore2_ani_per,
    effect_animation_period_deviation = ore2_ani_dev,
    effect_darkness_multiplier = ore2_dark_mul,
    min_effect_alpha = ore2_alpha_min,
    max_effect_alpha = ore2_alpha_max,
  },
}
)
end