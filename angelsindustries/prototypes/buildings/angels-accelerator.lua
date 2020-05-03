--require ("util")
if angelsmods.industries.tech then
data:extend(
{
  {
    type = "item",
    name = "angels-accelerator-cyclotron",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    subgroup = "angels-assemblers-small",
    order = "a",
    place_result = "angels-accelerator-cyclotron",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-accelerator-cyclotron",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-accelerator-cyclotron"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "assembling-machine-small",
    animation =
    {
		north =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy6x6.png",
		  priority="high",
		  width = 192,
		  height = 192,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		east =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy6x6.png",
		  priority="high",
		  width = 192,
		  height = 192,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		south =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy6x6.png",
		  priority="high",
		  width = 192,
		  height = 192,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		west =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy6x6.png",
		  priority="high",
		  width = 192,
		  height = 192,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
    },
    crafting_categories = {"crafting"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.05 / 1.5
    },
    energy_usage = "90kW",
    ingredient_count = 1,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 3.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2.5, -3.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2.5, -3.5} }}
      },
    }
  },
  {
    type = "item",
    name = "angels-accelerator-oneway",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    subgroup = "angels-assemblers-small",
    order = "a",
    place_result = "angels-accelerator-oneway",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-accelerator-oneway",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-accelerator-oneway"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.4, -1.4}, {0.4, 1.4}},
    selection_box = {{-0.5, -1.5}, {0.5, 1.5}},
    fast_replaceable_group = "angels-accelerator-oneway",
    animation =
    {
		north =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy1x3.png",
		  priority="high",
		  width = 32,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		east =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x1.png",
		  priority="high",
		  width = 96,
		  height = 32,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		south =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy1x3.png",
		  priority="high",
		  width = 32,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		west =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x1.png",
		  priority="high",
		  width = 96,
		  height = 32,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
    },
    crafting_categories = {"crafting"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.05 / 1.5
    },
    energy_usage = "90kW",
    ingredient_count = 1,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -2} }}
      }
    }
  },
  {
    type = "item",
    name = "angels-accelerator-oneway-curvea",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    subgroup = "angels-assemblers-small",
    order = "a",
    place_result = "angels-accelerator-oneway-curvea",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-accelerator-oneway-curvea",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-accelerator-oneway-curvea"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "angels-accelerator-oneway",
    animation =
    {
		north =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		east =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		south =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		west =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
    },
    crafting_categories = {"crafting"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.05 / 1.5
    },
    energy_usage = "90kW",
    ingredient_count = 1,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -1} }}
      }
    }
  },
  {
    type = "item",
    name = "angels-accelerator-oneway-curveb",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    subgroup = "angels-assemblers-small",
    order = "a",
    place_result = "angels-accelerator-oneway-curveb",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-accelerator-oneway-curveb",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-accelerator-oneway-curveb"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "angels-accelerator-oneway",
    animation =
    {
		north =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		east =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		south =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		west =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
    },
    crafting_categories = {"crafting"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.05 / 1.5
    },
    energy_usage = "90kW",
    ingredient_count = 1,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
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
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -1} }}
      }
    }
  },
  {
    type = "item",
    name = "angels-accelerator-oneway-splice",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    subgroup = "angels-assemblers-small",
    order = "a",
    place_result = "angels-accelerator-oneway-splice",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-accelerator-oneway-splice",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-accelerator-oneway-splice"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "angels-accelerator-oneway",
    animation =
    {
		north =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		east =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		south =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		west =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
    },
    crafting_categories = {"crafting"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.05 / 1.5
    },
    energy_usage = "90kW",
    ingredient_count = 1,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
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
        pipe_connections = {{ type="input", position = {0, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -2} }}
      }
    }
  },
  {
    type = "item",
    name = "angels-accelerator-oneway-target",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    subgroup = "angels-assemblers-small",
    order = "a",
    place_result = "angels-accelerator-oneway-target",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-accelerator-oneway-target",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-accelerator-oneway-target"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "angels-accelerator-oneway",
    animation =
    {
		north =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		east =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		south =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		west =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy3x3.png",
		  priority="high",
		  width = 96,
		  height = 96,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
    },
    crafting_categories = {"crafting"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.05 / 1.5
    },
    energy_usage = "90kW",
    ingredient_count = 1,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 2} }}
      },
    }
  },
  {
    type = "item",
    name = "angels-accelerator-collider",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    subgroup = "angels-assemblers-small",
    order = "a",
    place_result = "angels-accelerator-collider",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-accelerator-collider",
    icon = "__angelsindustries__/graphics/entity/dummy1x1.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-accelerator-collider"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "assembling-machine-small",
    animation =
    {
		north =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy6x6.png",
		  priority="high",
		  width = 192,
		  height = 192,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		east =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy6x6.png",
		  priority="high",
		  width = 192,
		  height = 192,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		south =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy6x6.png",
		  priority="high",
		  width = 192,
		  height = 192,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
		west =
		{
		  filename = "__angelsindustries__/graphics/entity/dummy6x6.png",
		  priority="high",
		  width = 192,
		  height = 192,
		  frame_count = 1,
		  line_length = 1,
		  shift = {0, 0},
		  scale = 1,
		},
    },
    crafting_categories = {"crafting"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.05 / 1.5
    },
    energy_usage = "90kW",
    ingredient_count = 1,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 3.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0.5, -3.5} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-0.5, -3.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-0.5, 3.5} }}
      },
    }
  },
}
)
end