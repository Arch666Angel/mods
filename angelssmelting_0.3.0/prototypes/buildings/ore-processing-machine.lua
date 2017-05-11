data:extend(
{
  {
    type = "item",
    name = "ore-processing-machine",
    icon = "__angelssmelting__/graphics/icons/ore-processing-machine.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-processing-machine",
    order = "a[ore-processing-machine]",
    place_result = "ore-processing-machine",
    stack_size = 10,
   },
   {
    type = "assembling-machine",
    name = "ore-processing-machine",
    icon = "__angelssmelting__/graphics/icons/ore-processing-machine.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ore-processing-machine"},
	fast_replaceable_group = "ore-processing-machine",
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
    crafting_categories = {"ore-processing"},
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
        filename = "__angelssmelting__/graphics/entity/ore-processing-machine/ore-processing-machine.png",
        width = 160,
        height = 160,
        frame_count = 25,
		line_length = 5,
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
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelssmelting__/sound/ore-processing-machine.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
    {
    type = "item",
    name = "ore-processing-machine-2",
    icon = "__angelssmelting__/graphics/icons/ore-processing-machine.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-processing-machine",
    order = "b[ore-processing-machine-2]",
    place_result = "ore-processing-machine-2",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "ore-processing-machine-2",
    icon = "__angelssmelting__/graphics/icons/ore-processing-machine.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ore-processing-machine-2"},
	fast_replaceable_group = "ore-processing-machine",
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
    crafting_categories = {"ore-processing"},
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
        filename = "__angelssmelting__/graphics/entity/ore-processing-machine/ore-processing-machine.png",
        width = 160,
        height = 160,
        frame_count = 25,
		line_length = 5,
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
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelssmelting__/sound/ore-processing-machine.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
    {
    type = "item",
    name = "ore-processing-machine-3",
    icon = "__angelssmelting__/graphics/icons/ore-processing-machine.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-processing-machine",
    order = "c[ore-processing-machine-3]",
    place_result = "ore-processing-machine-3",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "ore-processing-machine-3",
    icon = "__angelssmelting__/graphics/icons/ore-processing-machine.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ore-processing-machine-3"},
	fast_replaceable_group = "ore-processing-machine",
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
    crafting_categories = {"ore-processing"},
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
        filename = "__angelssmelting__/graphics/entity/ore-processing-machine/ore-processing-machine.png",
        width = 160,
        height = 160,
        frame_count = 25,
		line_length = 5,
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
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelssmelting__/sound/ore-processing-machine.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
	{
    type = "item",
    name = "ore-processing-machine-4",
    icon = "__angelssmelting__/graphics/icons/ore-processing-machine.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-processing-machine",
    order = "d[ore-processing-machine-4]",
    place_result = "ore-processing-machine-4",
    stack_size = 10,
    },	
	{
    type = "assembling-machine",
    name = "ore-processing-machine-4",
    icon = "__angelssmelting__/graphics/icons/ore-processing-machine.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ore-processing-machine-4"},
	fast_replaceable_group = "ore-processing-machine",
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
    crafting_categories = {"ore-processing"},
    crafting_speed = 3,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "300kW",
    ingredient_count = 6,
    animation ={
	layers={
	{
        filename = "__angelssmelting__/graphics/entity/ore-processing-machine/ore-processing-machine.png",
        width = 160,
        height = 160,
        frame_count = 25,
		line_length = 5,
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
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelssmelting__/sound/ore-processing-machine.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
}
)