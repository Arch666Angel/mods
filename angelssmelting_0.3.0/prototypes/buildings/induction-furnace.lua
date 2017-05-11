data:extend(
{
  {
    type = "item",
    name = "induction-furnace",
    icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-induction-furnace",
    order = "a[induction-furnace]",
    place_result = "induction-furnace",
    stack_size = 10,
   },
   {
    type = "assembling-machine",
    name = "induction-furnace",
    icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "induction-furnace"},
	fast_replaceable_group = "induction-furnace",
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
    crafting_categories = {"induction-smelting"},
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
        filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace.png",
        width = 224,
        height = 256,
		line_length = 6,
        frame_count = 36,
        shift = {0, -0.5},
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
      -- {
        -- production_type = "input",
        -- pipe_picture = assembler3pipepictures(),
        -- pipe_covers = pipecoverspictures(),
        -- base_area = 10,
        -- base_level = -1,
        -- pipe_connections = {{ type="input", position = {0, 2} }}
      -- },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    off_when_no_fluid_recipe = true,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelssmelting__/sound/induction-furnace.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
    {
    type = "item",
    name = "induction-furnace-2",
    icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-induction-furnace",
    order = "b[induction-furnace-2]",
    place_result = "induction-furnace-2",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "induction-furnace-2",
    icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "induction-furnace-2"},
	fast_replaceable_group = "induction-furnace",
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
    crafting_categories = {"induction-smelting"},
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
        filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace.png",
        width = 224,
        height = 256,
		line_length = 6,
        frame_count = 36,
        shift = {0, -0.5},
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
      -- {
        -- production_type = "input",
        -- pipe_picture = assembler3pipepictures(),
        -- pipe_covers = pipecoverspictures(),
        -- base_area = 10,
        -- base_level = -1,
        -- pipe_connections = {{ type="input", position = {0, 2} }}
      -- },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    off_when_no_fluid_recipe = true,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelssmelting__/sound/induction-furnace.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
    {
    type = "item",
    name = "induction-furnace-3",
    icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-induction-furnace",
    order = "c[induction-furnace-3]",
    place_result = "induction-furnace-3",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "induction-furnace-3",
    icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "induction-furnace-3"},
	fast_replaceable_group = "induction-furnace",
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
    crafting_categories = {"induction-smelting"},
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
        filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace.png",
        width = 224,
        height = 256,
		line_length = 6,
        frame_count = 36,
        shift = {0, -0.5},
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
      -- {
        -- production_type = "input",
        -- pipe_picture = assembler3pipepictures(),
        -- pipe_covers = pipecoverspictures(),
        -- base_area = 10,
        -- base_level = -1,
        -- pipe_connections = {{ type="input", position = {0, 2} }}
      -- },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    off_when_no_fluid_recipe = true,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelssmelting__/sound/induction-furnace.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
	{
    type = "item",
    name = "induction-furnace-4",
    icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-induction-furnace",
    order = "d[induction-furnace-4]",
    place_result = "induction-furnace-4",
    stack_size = 10,
    },	
	{
    type = "assembling-machine",
    name = "induction-furnace-4",
    icon = "__angelssmelting__/graphics/icons/induction-furnace.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "induction-furnace-4"},
	fast_replaceable_group = "induction-furnace",
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
    crafting_categories = {"induction-smelting"},
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
        filename = "__angelssmelting__/graphics/entity/induction-furnace/induction-furnace.png",
        width = 224,
        height = 256,
		line_length = 6,
        frame_count = 36,
        shift = {0, -0.5},
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
      -- {
        -- production_type = "input",
        -- pipe_picture = assembler3pipepictures(),
        -- pipe_covers = pipecoverspictures(),
        -- base_area = 10,
        -- base_level = -1,
        -- pipe_connections = {{ type="input", position = {0, 2} }}
      -- },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    off_when_no_fluid_recipe = true,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelssmelting__/sound/induction-furnace.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
}
)