data:extend(
{
    {
    type = "item",
    name = "ore-leaching-plant",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/ore-leaching-plant.png",
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    subgroup = "ore-leaching",
    order = "a[ore-leaching-plant]",
    place_result = "ore-leaching-plant",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "ore-leaching-plant",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/ore-leaching-plant.png",
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
    minable = {mining_time = 1, result = "ore-leaching-plant"},
	fast_replaceable_group = "ore-leaching-plant",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"ore-sorting-t3"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 3
    },
    energy_usage = "200kW",
    ingredient_count = 4,
    animation =
	{
        filename = "__angelsrefining__/graphics/entity/ore-leaching-plant/1ore-leaching-plant.png",
		priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = {0.4, -0.14},
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
		pipe_picture = leachingpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
		pipe_picture = leachingpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      },
    },
    },
    {
    type = "item",
    name = "ore-leaching-plant-2",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/ore-leaching-plant-2.png",
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    subgroup = "ore-leaching",
    order = "b[ore-leaching-plant-2]",
    place_result = "ore-leaching-plant-2",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "ore-leaching-plant-2",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/ore-leaching-plant-2.png",
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
    minable = {mining_time = 1, result = "ore-leaching-plant-2"},
	fast_replaceable_group = "ore-leaching-plant",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"ore-sorting-t3"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.05 / 3.5
    },
    energy_usage = "250kW",
    ingredient_count = 4,
    animation ={
	layers={
	{
        filename = "__angelsrefining__/graphics/entity/ore-leaching-plant/1ore-leaching-plant.png",
		priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = {0.4, -0.14},
	},
	{
        filename = "__angelsrefining__/graphics/entity/ore-leaching-plant/2ore-leaching-plant-overlay.png",
		tint= {r=0.2, g=0.3, b=0.45},
		priority = "high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = {0.4, -0.14},
	}
	}
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
		pipe_picture = leachingpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
		pipe_picture = leachingpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      },
    },
    },
    {
    type = "item",
    name = "ore-leaching-plant-3",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/ore-leaching-plant-3.png",
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    subgroup = "ore-leaching",
    order = "c[ore-leaching-plant-3]",
    place_result = "ore-leaching-plant-3",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "ore-leaching-plant-3",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/ore-leaching-plant-3.png",
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ore-leaching-plant-3"},
	fast_replaceable_group = "ore-leaching-plant",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"ore-sorting-t3"},
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.06 / 4
    },
    energy_usage = "300kW",
    ingredient_count = 4,
    animation ={
	layers={
	{
        filename = "__angelsrefining__/graphics/entity/ore-leaching-plant/1ore-leaching-plant.png",
		priority = "extra-high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = {0.4, -0.14},
	},
	{
        filename = "__angelsrefining__/graphics/entity/ore-leaching-plant/2ore-leaching-plant-overlay.png",
		tint= {r=0.50, g=0.1, b=0.05},
		priority = "high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = {0.4, -0.14},
	}
	}
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
		pipe_picture = leachingpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
		pipe_picture = leachingpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      },
    },
  },
  }
  )