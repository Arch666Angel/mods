data:extend(
{
    {
    type = "item",
    name = "angels-air-filter",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/air-filter.png",
          icon_size = 32, icon_mipmaps = 1,
        }
      },
      1, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-electrolyser",
    order = "b[angels-air-filter]-a",
    place_result = "angels-air-filter",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-air-filter",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/air-filter.png",
          icon_size = 32, icon_mipmaps = 1,
        }
      },
      1, angelsmods.petrochem.number_tint),
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "angels-air-filter"},
    fast_replaceable_group = "angels-air-filter",
    next_upgrade = "angels-air-filter-2",
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
    crafting_categories = {"petrochem-air-filtering"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = -0.1 * 60
    },
    energy_usage = "150kW",
    ingredient_count = 3,
    animation =
    {
      filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
      width = 256,
      height = 256,
      frame_count = 36,
      line_length = 6,
      shift = {0.5, -0.5},
      animation_speed = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/idle1.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = angelsmods.petrochem.electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {0, -3}}}
      },
      {
        production_type = "output",
        pipe_picture = angelsmods.petrochem.electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{type = "output", position = {0, 3}}}
      },
    },
  },
  {
    type = "item",
    name = "angels-air-filter-2",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/air-filter.png",
          icon_size = 32, icon_mipmaps = 1,
        }
      },
      2, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-electrolyser",
    order = "b[angels-air-filter]-b",
    place_result = "angels-air-filter-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-air-filter-2",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/air-filter.png",
          icon_size = 32, icon_mipmaps = 1,
        }
      },
      2, angelsmods.petrochem.number_tint),
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "angels-air-filter-2"},
    fast_replaceable_group = "angels-air-filter",
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
    crafting_categories = {"petrochem-air-filtering"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = -0.12 * 60
    },
    energy_usage = "200kW",
    ingredient_count = 3,
    animation =
    {
      filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
      width = 256,
      height = 256,
      frame_count = 36,
      line_length = 6,
      shift = {0.5, -0.5},
      animation_speed = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/idle1.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = angelsmods.petrochem.electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {0, -3}}}
      },
      {
        production_type = "output",
        pipe_picture = angelsmods.petrochem.electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{type = "output", position = {0, 3}}}
      },
    },
  },
}
)
