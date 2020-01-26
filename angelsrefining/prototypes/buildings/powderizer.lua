data:extend(
{
    {
    type = "item",
    name = "ore-powderizer",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/powderizer-ico.png",
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
    order = "a",
    place_result = "ore-powderizer",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "ore-powderizer",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/powderizer-ico.png",
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
    minable = {mining_time = 1, result = "ore-powderizer"},
	fast_replaceable_group = "ore-powderizer",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    module_specification =
    {
      module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"ore-sorting-t1-5"},
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 3.5
    },
    energy_usage = "100kW",
    ingredient_count = 4,
    animation =
	{
        filename = "__angelsrefining__/graphics/entity/ore-powderizer/powderizer-lr.png",
		priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5,
		hr_version =
		{
			filename = "__angelsrefining__/graphics/entity/ore-powderizer/powderizer-hr.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			frame_count = 36,
			line_length = 6,
			shift = {0, 0},
			animation_speed = 0.5,
			scale = 0.5,
		},
	},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsrefining__/sound/ore-powderizer.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2,
    },
    },
    {
    type = "item",
    name = "ore-powderizer-2",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/powderizer-ico.png",
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
    order = "b",
    place_result = "ore-powderizer-2",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "ore-powderizer-2",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/powderizer-ico.png",
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
    minable = {mining_time = 1, result = "ore-powderizer-2"},
	fast_replaceable_group = "ore-powderizer",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"ore-sorting-t1-5"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 3.5
    },
    energy_usage = "125kW",
    ingredient_count = 4,
    animation =
	{
        filename = "__angelsrefining__/graphics/entity/ore-powderizer/powderizer-lr.png",
		priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5,
		hr_version =
		{
			filename = "__angelsrefining__/graphics/entity/ore-powderizer/powderizer-hr.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			frame_count = 36,
			line_length = 6,
			shift = {0, 0},
			animation_speed = 0.5,
			scale = 0.5,
		},
	},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsrefining__/sound/ore-powderizer.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2,
    },
    },
    {
    type = "item",
    name = "ore-powderizer-3",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/powderizer-ico.png",
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
    order = "c",
    place_result = "ore-powderizer-3",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "ore-powderizer-3",
    icons = {
		{
			icon = "__angelsrefining__/graphics/icons/powderizer-ico.png",
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
    minable = {mining_time = 1, result = "ore-powderizer-3"},
	fast_replaceable_group = "ore-powderizer",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    module_specification =
    {
      module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"ore-sorting-t1-5"},
    crafting_speed = 3,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 3.5
    },
    energy_usage = "150kW",
    ingredient_count = 4,
    animation =
	{
        filename = "__angelsrefining__/graphics/entity/ore-powderizer/powderizer-lr.png",
		priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 36,
		line_length = 6,
        shift = {0, 0},
		animation_speed = 0.5,
		hr_version =
		{
			filename = "__angelsrefining__/graphics/entity/ore-powderizer/powderizer-hr.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			frame_count = 36,
			line_length = 6,
			shift = {0, 0},
			animation_speed = 0.5,
			scale = 0.5,
		},
	},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsrefining__/sound/ore-powderizer.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2,
    },
  },
  }
  )