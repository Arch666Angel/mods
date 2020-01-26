data:extend(
{
    {
    type = "item",
    name = "salination-plant",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/salination-plant.png",
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    subgroup = "water-treatment-building",
    order = "d[salination-plant]",
    place_result = "salination-plant",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "salination-plant",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/salination-plant.png",
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "salination-plant"},
	fast_replaceable_group = "salination-plant",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"salination-plant"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "200kW",
    ingredient_count = 4,
	animation ={
        filename = "__angelsrefining__/graphics/entity/salination-plant/salination-plant.png",
		priority = "extra-high",
        width = 288,
        height = 320,
        frame_count = 36,
		line_length = 6,
        shift = {0, -0.5},
		animation_speed = 0.5
	},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsrefining__/sound/ore-leaching-plant.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	fluid_boxes =
    {
      {
        production_type = "input",
		--pipe_picture = salinationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -4} }}
      },
	  {
        production_type = "output",
		--pipe_picture = salinationpipepictures2(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, 4} }}
      },
    },
	pipe_covers = pipecoverspictures(),
    },
    {
    type = "item",
    name = "salination-plant-2",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/salination-plant.png",
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    subgroup = "water-treatment-building",
    order = "e[salination-plant2-]",
    place_result = "salination-plant-2",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "salination-plant-2",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/salination-plant.png",
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "salination-plant-2"},
	fast_replaceable_group = "salination-plant",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"salination-plant"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "250kW",
    ingredient_count = 4,
	animation ={
        filename = "__angelsrefining__/graphics/entity/salination-plant/salination-plant.png",
		priority = "extra-high",
        width = 288,
        height = 320,
        frame_count = 36,
		line_length = 6,
        shift = {0, -0.5},
		animation_speed = 0.5
	},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsrefining__/sound/ore-leaching-plant.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	fluid_boxes =
    {
      {
        production_type = "input",
		--pipe_picture = salinationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -4} }}
      },
	  {
        production_type = "output",
		--pipe_picture = salinationpipepictures2(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, 4} }}
      },
    },
	pipe_covers = pipecoverspictures(),
    },
  }
  )