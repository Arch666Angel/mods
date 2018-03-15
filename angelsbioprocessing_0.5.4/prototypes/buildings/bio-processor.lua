  data:extend(
  {
  {
    type = "item",
    name = "bio-processor",
    icon = "__angelsbioprocessing__/graphics/icons/bio-processor.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "bio-processing-buildings-b",
    order = "a",
    place_result = "bio-processor",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "bio-processor",
    icon = "__angelsbioprocessing__/graphics/icons/bio-processor.png",
	icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "bio-processor"},
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
	fast_replaceable_group= "bio-processor",
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"bio-processor"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "150kW",
    ingredient_count = 4,
    animation={
		filename = "__angelsbioprocessing__/graphics/entity/bio-processor/bio-processor.png",
		width = 224,
		height = 224,
		line_length = 5,
		frame_count = 25,
		shift = {0, 0},
		animation_speed = 0.5,
	},
	working_visualisations =
    {
      {
		--apply_recipe_tint = "primary",
        animation =
		{
          filename = "__angelsbioprocessing__/graphics/entity/bio-processor/bio-processor-ani.png",
          line_length = 5,
		  frame_count = 25,
          width = 224,
          height = 224,
          shift = {0, 0},
		  animation_speed = 0.5,
        },
	  },
	 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
  },
  }
  )