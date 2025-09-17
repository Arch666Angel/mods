circuit_connector_definitions["angels-barreling-pump"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  6, main_offset = util.by_pixel( 0.125,  32.125), shadow_offset = util.by_pixel( 0.125,  32.125), show_shadow = true },
  { variation =  0, main_offset = util.by_pixel( 41.25, -5.5), shadow_offset = util.by_pixel( 41.25, -5.5), show_shadow = true },
  { variation =  10, main_offset = util.by_pixel( 0.5, -46.875), shadow_offset = util.by_pixel( 0.5, -46.875), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-38.75, -6.875), shadow_offset = util.by_pixel(-38.75, -6.875), show_shadow = true },
})

data:extend({
  {
    type = "item",
    name = "angels-barreling-pump",
    icon = "__angelsrefininggraphics__/graphics/icons/barreling-pump.png",
    icon_size = 32,
    subgroup = "angels-fluid-control",
    order = "c[barreling-pump]",
    place_result = "angels-barreling-pump",
    stack_size = 10,
  },
})

local barreling_pump = {
  type = "assembling-machine",
  name = "angels-barreling-pump",
  icon = "__angelsrefininggraphics__/graphics/icons/barreling-pump.png",
  icon_size = 32,
  flags = { "placeable-neutral", "player-creation" },
  minable = { mining_time = 1, result = "angels-barreling-pump" },
  fast_replaceable_group = "angels-barreling-pump",
  max_health = 300,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
  selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
  module_slots = 2,
  allowed_effects = { "consumption", "speed", "pollution" },
  crafting_categories = { "angels-barreling-pump" },
  crafting_speed = 2,
  energy_source = {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = { pollution = 1.8 },
  },
  energy_usage = "60kW",
  circuit_connector = circuit_connector_definitions["angels-barreling-pump"],
  circuit_wire_max_distance = default_circuit_wire_max_distance,
  ingredient_count = 2,
  graphics_set = {
    animation = {
      north = {
        filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump.png",
        width = 160,
        height = 160,
        frame_count = 1,
        shift = { 0, 0 },
      },
      east = {
        filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump.png",
        x = 480,
        width = 160,
        height = 160,
        frame_count = 1,
        shift = { 0, 0 },
      },
      south = {
        filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump.png",
        x = 320,
        width = 160,
        height = 160,
        frame_count = 1,
        shift = { 0, 0 },
      },
      west = {
        filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump.png",
        x = 160,
        width = 160,
        height = 160,
        frame_count = 1,
        shift = { 0, 0 },
      },
    },
    working_visualisations = {
      {
        north_position = { 0, 0 },
        east_position = { 0, -0.1 },
        south_position = { 0, -0.25 },
        west_position = { 0, -0.15 },
        animation = {
          filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump-animation.png",
          frame_count = 36,
          line_length = 6,
          width = 64,
          height = 64,
          shift = { 0, 0 },
          animation_speed = 0.25,
          run_mode = "forward",
        },
        light = { intensity = 0.4, size = 6 },
      },
    },
  },
  impact_category = "metal",
  working_sound = {
    sound = { filename = "__base__/sound/oil-refinery.ogg" },
    idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
  },
  fluid_boxes = {
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = { { flow_direction = "input", position = { 0, 1 }, direction = defines.direction.south } },
    },
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 100,
      pipe_connections = { { flow_direction = "output", position = { 0, -1 }, direction = defines.direction.north } },
    },
  },
}

if angelsmods.trigger.enable_auto_barreling then
  barreling_pump.type = "furnace"
  barreling_pump.result_inventory_size = 1
  barreling_pump.source_inventory_size = 1
  barreling_pump.ingredient_count = nil
  barreling_pump.cant_insert_at_source_message_key = "cant_insert.angels-barreling-pump-limitation"
end

data:extend({ barreling_pump })
