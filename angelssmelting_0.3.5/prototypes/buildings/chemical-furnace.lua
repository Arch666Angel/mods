  data:extend(
  {
  {
    type = "item",
    name = "angels-chemical-furnace",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    flags = {"goes-to-quickbar"},
    subgroup = "angels-chemical-furnace",
    order = "a[angels-chemical-furnace]",
    place_result = "angels-chemical-furnace",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-chemical-furnace",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "angels-chemical-furnace"},
	fast_replaceable_group = "angels-chemical-furnace",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"chemical-smelting"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "150kW",
    ingredient_count = 4,
    animation =
    {
        filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace.png",
        width = 224,
        height = 224,
		line_length = 6,
        frame_count = 36,
        shift = {0, 0},
		animation_speed = 0.75
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
	off_when_no_fluid_recipe = true,
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      }
    },
    },
    {
    type = "item",
    name = "angels-chemical-furnace-2",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    flags = {"goes-to-quickbar"},
    subgroup = "angels-chemical-furnace",
    order = "b[angels-chemical-furnace-2]",
    place_result = "angels-chemical-furnace-2",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "angels-chemical-furnace-2",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "angels-chemical-furnace-2"},
	fast_replaceable_group = "angels-chemical-furnace",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"chemical-smelting"},
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "200kW",
    ingredient_count = 4,
    animation =
    {
        filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace.png",
        width = 224,
        height = 224,
		line_length = 6,
        frame_count = 36,
        shift = {0, 0},
		animation_speed = 0.75
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
	off_when_no_fluid_recipe = true,
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      }
    },
    },
    {
    type = "item",
    name = "angels-chemical-furnace-3",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    flags = {"goes-to-quickbar"},
    subgroup = "angels-chemical-furnace",
    order = "c[angels-chemical-furnace-3]",
    place_result = "angels-chemical-furnace-3",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "angels-chemical-furnace-3",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "angels-chemical-furnace-3"},
	fast_replaceable_group = "angels-chemical-furnace",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"chemical-smelting"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "250kW",
    ingredient_count = 4,
    animation =
    {
        filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace.png",
        width = 224,
        height = 224,
		line_length = 6,
        frame_count = 36,
        shift = {0, 0},
		animation_speed = 0.75
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
	off_when_no_fluid_recipe = true,
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      }
    },
    },
    {
    type = "item",
    name = "angels-chemical-furnace-4",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_4.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    flags = {"goes-to-quickbar"},
    subgroup = "angels-chemical-furnace",
    order = "d[angels-chemical-furnace-4]",
    place_result = "angels-chemical-furnace-4",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "angels-chemical-furnace-4",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_4.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "angels-chemical-furnace-4"},
	fast_replaceable_group = "angels-chemical-furnace",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"chemical-smelting"},
    crafting_speed = 3,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "300kW",
    ingredient_count = 4,
    animation =
    {
        filename = "__angelssmelting__/graphics/entity/chemical-furnace/chemical-furnace.png",
        width = 224,
        height = 224,
		line_length = 6,
        frame_count = 36,
        shift = {0, 0},
		animation_speed = 0.75
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
	off_when_no_fluid_recipe = true,
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      }
    },
    },
  }
  )