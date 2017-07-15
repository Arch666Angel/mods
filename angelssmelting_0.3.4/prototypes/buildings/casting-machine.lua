data:extend(
{
  {
    type = "item",
    name = "casting-machine",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/casting-machine.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	flags = {"goes-to-quickbar"},
    subgroup = "angels-casting-machine",
    order = "a[casting-machine]",
    place_result = "casting-machine",
    stack_size = 10,
   },
   {
    type = "assembling-machine",
    name = "casting-machine",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/casting-machine.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "casting-machine"},
	fast_replaceable_group = "casting-machine",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"casting"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "150kW",
    ingredient_count = 2,
    animation ={
	layers={
	{
        filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine2.png",
        width = 224,
        height = 224,
		line_length = 7,
        frame_count = 49,
        shift = {0, 0},
		animation_speed = 0.5,
    },
	-- {
        -- filename = "__angelssmelting__/graphics/entity/3x3-overlay.png",
		-- tint = {r=1, g=0, b=0},
        -- width = 224,
        -- height = 224,
        -- frame_count = 1,
        -- shift = {0, 0},
    -- },
	}
	},
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 1} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -1} }}
      },
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelssmelting__/sound/casting-machine.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
    {
    type = "item",
    name = "casting-machine-2",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/casting-machine.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	flags = {"goes-to-quickbar"},
    subgroup = "angels-casting-machine",
    order = "b[casting-machine-2]",
    place_result = "casting-machine-2",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "casting-machine-2",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/casting-machine.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "casting-machine-2"},
	fast_replaceable_group = "casting-machine",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"casting"},
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "200kW",
    ingredient_count = 4,
     animation ={
	layers={
	{
        filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine2.png",
        width = 224,
        height = 224,
		line_length = 7,
        frame_count = 49,
        shift = {0, 0},
		animation_speed = 0.5,
    },
	-- {
        -- filename = "__angelssmelting__/graphics/entity/3x3-overlay.png",
		-- tint = {r=1, g=0, b=0},
        -- width = 224,
        -- height = 224,
        -- frame_count = 1,
        -- shift = {0, 0},
    -- },
	}
	},
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 1} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelssmelting__/sound/casting-machine.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
    {
    type = "item",
    name = "casting-machine-3",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/casting-machine.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	flags = {"goes-to-quickbar"},
    subgroup = "angels-casting-machine",
    order = "c[casting-machine-3]",
    place_result = "casting-machine-3",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "casting-machine-3",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/casting-machine.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "casting-machine-3"},
	fast_replaceable_group = "casting-machine",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"casting"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "250kW",
    ingredient_count = 6,
    animation ={
	layers={
	{
        filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine2.png",
        width = 224,
        height = 224,
		line_length = 7,
        frame_count = 49,
        shift = {0, 0},
		animation_speed = 0.5,
    },
	-- {
        -- filename = "__angelssmelting__/graphics/entity/3x3-overlay.png",
		-- tint = {r=1, g=0, b=0},
        -- width = 224,
        -- height = 224,
        -- frame_count = 1,
        -- shift = {0, 0},
    -- },
	}
	},
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 1} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelssmelting__/sound/casting-machine.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
	{
    type = "item",
    name = "casting-machine-4",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/casting-machine.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_4.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	flags = {"goes-to-quickbar"},
    subgroup = "angels-casting-machine",
    order = "d[casting-machine-4]",
    place_result = "casting-machine-4",
    stack_size = 10,
    },	
	{
    type = "assembling-machine",
    name = "casting-machine-4",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/casting-machine.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_4.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "casting-machine-4"},
	fast_replaceable_group = "casting-machine",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"casting"},
    crafting_speed = 3,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "250kW",
    ingredient_count = 6,
    animation ={
	layers={
	{
        filename = "__angelssmelting__/graphics/entity/casting-machine/casting-machine2.png",
        width = 224,
        height = 224,
		line_length = 7,
        frame_count = 49,
        shift = {0, 0},
		animation_speed = 0.5,
    },
	-- {
        -- filename = "__angelssmelting__/graphics/entity/3x3-overlay.png",
		-- tint = {r=1, g=0, b=0},
        -- width = 224,
        -- height = 224,
        -- frame_count = 1,
        -- shift = {0, 0},
    -- },
	}
	},
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 1} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelssmelting__/sound/casting-machine.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
}
)