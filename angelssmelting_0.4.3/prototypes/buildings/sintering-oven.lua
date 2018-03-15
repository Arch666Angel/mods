data:extend(
{
  {
    type = "item",
    name = "sintering-oven",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-sintering-oven",
    order = "a[sintering-oven]",
    place_result = "sintering-oven",
    stack_size = 10,
   },
   {
    type = "assembling-machine",
    name = "sintering-oven",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "sintering-oven"},
	fast_replaceable_group = "sintering-oven",
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
    crafting_categories = {"sintering"},
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
        filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven.png",
        width = 256,
        height = 256,
		line_length = 5,
        frame_count = 25,
        shift = {0.5, -0.5},
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
      sound = { filename = "__angelssmelting__/sound/sintering-oven.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
    {
    type = "item",
    name = "sintering-oven-2",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-sintering-oven",
    order = "b[sintering-oven-2]",
    place_result = "sintering-oven-2",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "sintering-oven-2",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "sintering-oven-2"},
	fast_replaceable_group = "sintering-oven",
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
    crafting_categories = {"sintering"},
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
        filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven.png",
        width = 256,
        height = 256,
		line_length = 5,
        frame_count = 25,
        shift = {0.5, -0.5},
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
      sound = { filename = "__angelssmelting__/sound/sintering-oven.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
    {
    type = "item",
    name = "sintering-oven-3",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-sintering-oven",
    order = "c[sintering-oven-3]",
    place_result = "sintering-oven-3",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "sintering-oven-3",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "sintering-oven-3"},
	fast_replaceable_group = "sintering-oven",
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
    crafting_categories = {"sintering"},
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
        filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven.png",
        width = 256,
        height = 256,
		line_length = 5,
        frame_count = 25,
        shift = {0.5, -0.5},
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
      sound = { filename = "__angelssmelting__/sound/sintering-oven.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
	{
    type = "item",
    name = "sintering-oven-4",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_4.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-sintering-oven",
    order = "d[sintering-oven-4]",
    place_result = "sintering-oven-4",
    stack_size = 10,
    },	
	{
    type = "assembling-machine",
    name = "sintering-oven-4",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/sintering-oven.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_4.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "sintering-oven-4"},
	fast_replaceable_group = "sintering-oven",
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
    crafting_categories = {"sintering"},
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
        filename = "__angelssmelting__/graphics/entity/sintering-oven/sintering-oven.png",
        width = 256,
        height = 256,
		line_length = 5,
        frame_count = 25,
        shift = {0.5, -0.5},
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
      sound = { filename = "__angelssmelting__/sound/sintering-oven.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
}
)