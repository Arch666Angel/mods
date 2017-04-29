data.raw["resource"]["sulfur"].stages={sheet=
		{
		filename = "__angelsinfiniteores__/graphics/entity/ores/ore-7.png",
		tint = {r = 0.8, g = 0.75, b = 0.1},
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
        }
}

if not angelsmods.ores.enablersomode then
data:extend(
{
	{
	type = "autoplace-control",
	name = "infinite-sulfur",
	richness = true,
	order = "b-e"
	},
	{
	type = "noise-layer",
	name = "infinite-sulfur",
	},
	{
	type = "resource",
	name = "infinite-sulfur",
	icon = "__base__/graphics/icons/sulfur.png",
	flags = {"placeable-neutral"},
	order="a-b-a",
	map_color = {r=0.8, g=0.75, b=0.1},
	infinite=true,
	minimum=300,
	normal=1500,
	maximum=6000,
	minable =
	{
	  hardness = 0.3,
	  mining_particle = "sulfur-particle",
	  mining_time = 1,
	  result = "sulfur"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "infinite-sulfur",
		sharpness = 1,
		richness_multiplier = 5000,
		richness_multiplier_distance_bonus = 20,
		richness_base = 2000,
		coverage = 0.01,
		peaks = {
			{
				noise_layer = "infinite-sulfur",
				noise_octaves_difference = -2.5,
				noise_persistence = 0.3,
				starting_area_weight_optimal = 0,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			},
			{
				noise_layer = "infinite-sulfur",
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
		priority = "extra-high",
		tint = {r = 0.8, g = 0.75, b = 0.1},
		width = 38,
		height = 38,
		frame_count = 8,
		variation_count = 1
	  }
	},
	},
}
)
else
data:extend(
{
	{
	type = "resource",
	name = "infinite-sulfur",
	icon = "__base__/graphics/icons/sulfur.png",
	flags = {"placeable-neutral"},
	order="a-b-a",
	map_color = {r=0.8, g=0.75, b=0.1},
	infinite=true,
	minimum=300,
	normal=1500,
	maximum=6000,
	minable =
	{
	  hardness = 0.3,
	  mining_particle = "sulfur-particle",
	  mining_time = 1,
	  result = "sulfur"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	stage_counts = {1},
	stages =
	{
	  sheet =
	  {
		filename = "__angelsinfiniteores__/graphics/entity/ores-inf/ore-7-inf.png",
		priority = "extra-high",
		tint = {r = 0.8, g = 0.75, b = 0.1},
		width = 38,
		height = 38,
		frame_count = 8,
		variation_count = 1
	  }
	},
	},
}
)
end