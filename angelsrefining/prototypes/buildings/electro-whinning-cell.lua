data:extend(
{
    {
    type = "item",
    name = "electro-whinning-cell",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/electro-whinning-cell-ico.png",
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    subgroup = "ore-floatation",
    order = "d",
    place_result = "electro-whinning-cell",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "electro-whinning-cell",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/electro-whinning-cell-ico.png",
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
    minable = {mining_time = 1, result = "electro-whinning-cell"},
	fast_replaceable_group = "electro-whinning-cell",
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
    crafting_categories = {"ore-sorting-t3-5"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2
    },
    energy_usage = "200kW",
    ingredient_count = 3,
    animation ={
        filename = "__angelsrefining__/graphics/entity/electro-whinning-cell/electro-whinning-cell.png",
		priority = "extra-high",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5,
		-- hr_version =
		-- {
			-- filename = "__angelsrefining__/graphics/entity/electro-whinning-cell/1electro-whinning-cell.png",
			-- priority = "extra-high",
			-- width = 192,
			-- height = 192,
			-- frame_count = 16,
			-- line_length = 4,
			-- shift = {0.45, 0.7},
			-- animation_speed = 0.5,
			-- scale = 0.5
		-- },
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
		pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "input",
		pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
		pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      },
      {
        production_type = "output",
		pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
    },
    {
    type = "item",
    name = "electro-whinning-cell-2",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/electro-whinning-cell-ico.png",
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    subgroup = "ore-floatation",
    order = "e",
    place_result = "electro-whinning-cell-2",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "electro-whinning-cell-2",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/electro-whinning-cell-ico.png",
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
    minable = {mining_time = 1, result = "electro-whinning-cell-2"},
	fast_replaceable_group = "electro-whinning-cell",
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
    crafting_categories = {"ore-sorting-t3-5"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 2.5
    },
    energy_usage = "250kW",
    ingredient_count = 3,
    animation ={
        filename = "__angelsrefining__/graphics/entity/electro-whinning-cell/electro-whinning-cell.png",
		priority = "extra-high",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5,
		-- hr_version =
		-- {
			-- filename = "__angelsrefining__/graphics/entity/electro-whinning-cell/1electro-whinning-cell.png",
			-- priority = "extra-high",
			-- width = 192,
			-- height = 192,
			-- frame_count = 16,
			-- line_length = 4,
			-- shift = {0.45, 0.7},
			-- animation_speed = 0.5,
			-- scale = 0.5
		-- },
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
		pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "input",
		pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
		pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      },
      {
        production_type = "output",
		pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
    },
    {
    type = "item",
    name = "electro-whinning-cell-3",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/electro-whinning-cell-ico.png",
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    subgroup = "ore-floatation",
    order = "f",
    place_result = "electro-whinning-cell-3",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "electro-whinning-cell-3",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/electro-whinning-cell-ico.png",
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
    minable = {mining_time = 1, result = "electro-whinning-cell-3"},
	fast_replaceable_group = "electro-whinning-cell",
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
    crafting_categories = {"ore-sorting-t3-5"},
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 3
    },
    energy_usage = "300kW",
    ingredient_count = 3,
    animation ={
        filename = "__angelsrefining__/graphics/entity/electro-whinning-cell/electro-whinning-cell.png",
		priority = "extra-high",
        width = 224,
        height = 224,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5,
		-- hr_version =
		-- {
			-- filename = "__angelsrefining__/graphics/entity/electro-whinning-cell/1electro-whinning-cell.png",
			-- priority = "extra-high",
			-- width = 192,
			-- height = 192,
			-- frame_count = 16,
			-- line_length = 4,
			-- shift = {0.45, 0.7},
			-- animation_speed = 0.5,
			-- scale = 0.5
		-- },
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
		pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "input",
		pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
		pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      },
      {
        production_type = "output",
		pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
  },
  }
  )