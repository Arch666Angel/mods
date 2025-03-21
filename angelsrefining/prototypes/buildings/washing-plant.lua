local function angels_washing_plant_fluid_boxes()
  return {
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = {
        { flow_direction = "input", position = { 0, 2 }, direction = defines.direction.south }
      },
    },
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = {
        { flow_direction = "input", position = { 2, 0 }, direction = defines.direction.east },
      },
    },
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 100,
      pipe_connections = {
        { flow_direction = "output", position = { 0, -2 }, direction = defines.direction.north },
      },
    },
  }
end

data:extend({
  {
    type = "item",
    name = "washing-plant",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/washing-plant-ico.png",
        icon_size = 32,
      },
    }, 1, angelsmods.refining.number_tint),
    subgroup = "washing-building",
    order = "b",
    place_result = "washing-plant",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "washing-plant",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/washing-plant-ico.png",
        icon_size = 32,
      },
    }, 1, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "washing-plant" },
    fast_replaceable_group = "washing-plant",
    next_upgrade = "washing-plant-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 1,
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    crafting_categories = { "washing-plant" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.8 },
    },
    energy_usage = "100kW",
    ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/washing-plant/washing-plant.png",
            width = 224,
            height = 224,
            line_length = 5,
            frame_count = 25,
            shift = { 0, 0 },
          },
          -- {
          -- filename = "__angelsrefininggraphics__/graphics/entity/7x7-overlay.png",
          -- tint = {r=1, g=0, b=0},
          -- width = 224,
          -- height = 224,
          -- frame_count = 1,
          -- shift = {0, 0},
          -- },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = angels_washing_plant_fluid_boxes(),
  },
  {
    type = "item",
    name = "washing-plant-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/washing-plant-ico.png",
        icon_size = 32,
      },
    }, 2, angelsmods.refining.number_tint),
    subgroup = "washing-building",
    order = "c",
    place_result = "washing-plant-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "washing-plant-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/washing-plant-ico.png",
        icon_size = 32,
      },
    }, 2, angelsmods.refining.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "washing-plant-2" },
    fast_replaceable_group = "washing-plant",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    crafting_categories = { "washing-plant" },
    crafting_speed = 2.25,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 2.4 },
    },
    energy_usage = "150kW",
    ingredient_count = 4,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/washing-plant/washing-plant.png",
            width = 224,
            height = 224,
            line_length = 5,
            frame_count = 25,
            shift = { 0, 0 },
          },
          -- {
          -- filename = "__angelsrefininggraphics__/graphics/entity/7x7-overlay.png",
          -- tint = {r=1, g=0, b=0},
          -- width = 224,
          -- height = 224,
          -- frame_count = 1,
          -- shift = {0, 0},
          -- },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    fluid_boxes = angels_washing_plant_fluid_boxes(),
  },
})
