local angels_ore3_stage = 	{
      sheet =
      {
        filename = "__angelsrefining__/graphics/entity/ores/ore-11-lr.png",
        priority = "extra-high",
		tint = {r=0.42, g=0.71, b=0.86},
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = "__angelsrefining__/graphics/entity/ores/ore-11-hr.png",
          priority = "extra-high",
		  tint = {r=0.42, g=0.71, b=0.86},
          width = 128,
          height = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    }

data:extend(
{
  {
    type = "particle",
    name = "angels-ore3-particle",
    flags = {"not-on-map"},
    life_time = 180,
    pictures =
    {
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-1.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-2.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 7,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-3.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 6,
        height = 7,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-4.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 9,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-5.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-6.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 6,
        height = 4,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-7.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 7,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-8.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 6,
        height = 5,
        frame_count = 1
      }
    },
    shadows =
    {
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-1.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-2.png",
        priority = "extra-high",
        width = 7,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-3.png",
        priority = "extra-high",
        width = 6,
        height = 7,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-4.png",
        priority = "extra-high",
        width = 9,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-5.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-6.png",
        priority = "extra-high",
        width = 6,
        height = 4,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-7.png",
        priority = "extra-high",
        width = 7,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-8.png",
        priority = "extra-high",
        width = 6,
        height = 5,
        frame_count = 1
      }
    }
  }
}
)


data:extend(
{
	{
	type = "autoplace-control",
	name = "angels-ore3",
	richness = true,
	order = "b-e",
	category = "resource",
	},
	{
	type = "noise-layer",
	name = "angels-ore3"
	},
	{
	type = "resource",
	name = "angels-ore3",
	icon = "__angelsrefining__/graphics/icons/angels-ore3.png",
	icon_size = 32,
	flags = {"placeable-neutral"},
	order="a-b-a",
	map_color = {r=0.42, g=0.71, b=0.86},
	minable =
	{
	  hardness = 1.5,
	  mining_particle = "angels-ore3-particle",
	  mining_time = 2,
	  result = "angels-ore3"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		order = "a",
		control = "angels-ore3",
		sharpness = 15/16,
		richness_multiplier = 1500,
		richness_multiplier_distance_bonus = 20,
		richness_base = 10,
		coverage = 0.002,
		peaks = {
		  {
			noise_layer = "angels-ore3",
			noise_octaves_difference = -0.85,
			noise_persistence = 0.4,
		  },
		},
		starting_area_size = 5500 * 0.002,
		starting_area_amount = 1600
	},
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
	stages = angels_ore3_stage,
  },
}
)