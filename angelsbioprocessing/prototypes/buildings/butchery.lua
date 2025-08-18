circuit_connector_definitions["angels-bio-butchery"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  0, main_offset = util.by_pixel( 5.5, -40), shadow_offset = util.by_pixel( 5.5, -40), show_shadow = true },
  { variation =  0, main_offset = util.by_pixel( 5.5, -40), shadow_offset = util.by_pixel( 5.5, -40), show_shadow = true },
  { variation =  0, main_offset = util.by_pixel( 5.5, -40), shadow_offset = util.by_pixel( 5.5, -40), show_shadow = true },
  { variation =  0, main_offset = util.by_pixel( 5.5, -40), shadow_offset = util.by_pixel( 5.5, -40), show_shadow = true },
})

data:extend({
  {
    type = "item",
    name = "angels-bio-butchery",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-butchery.png",
    icon_size = 32,
    subgroup = "angels-bio-processing-buildings-alien-a",
    order = "b",
    place_result = "angels-bio-butchery",
    stack_size = 10,
  },
  {
    type = "furnace",
    name = "angels-bio-butchery",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-butchery.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "angels-bio-butchery" },
    max_health = 100,
    fast_replaceable_group = "angels-bio-butchery",
    corpse = "small-remnants",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    drawing_box_vertical_extension = 0.25,
    crafting_categories = { "angels-bio-butchery" },
    cant_insert_at_source_message_key = "cant_insert.angels-butchery-limitation",
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "pollution" },
    result_inventory_size = 3,
    crafting_speed = 2,
    source_inventory_size = 1,
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
      {
        type = "explosion",
        percent = 30,
      },
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 0.01 * 60 },
    },
    energy_usage = "150kW",
    circuit_connector = circuit_connector_definitions["angels-bio-butchery"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-butchery/bio-butchery.png",
            width = 160,
            height = 160,
            frame_count = 36,
            line_length = 6,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
      },
    },
    impact_category = "metal",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
})
