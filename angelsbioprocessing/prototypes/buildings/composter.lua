circuit_connector_definitions["angels-composter"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  5, main_offset = util.by_pixel( 31.5,  27.75), shadow_offset = util.by_pixel( 31.5,  27.75), show_shadow = true },
  { variation =  5, main_offset = util.by_pixel( 31.5,  27.75), shadow_offset = util.by_pixel( 31.5,  27.75), show_shadow = true },
  { variation =  5, main_offset = util.by_pixel( 31.5,  27.75), shadow_offset = util.by_pixel( 31.5,  27.75), show_shadow = true },
  { variation =  5, main_offset = util.by_pixel( 31.5,  27.75), shadow_offset = util.by_pixel( 31.5,  27.75), show_shadow = true },
})

data:extend({
  {
    type = "item",
    name = "angels-composter",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/composter.png",
    icon_size = 32,
    subgroup = "angels-bio-processing-buildings-vegetabilis-b",
    order = "b",
    place_result = "angels-composter",
    stack_size = 10,
  },
  {
    type = "furnace",
    name = "angels-composter",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/composter.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "angels-composter" },
    max_health = 100,
    fast_replaceable_group = "angels-composter",
    corpse = "small-remnants",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    crafting_categories = { "angels-bio-void" },
    cant_insert_at_source_message_key = "cant_insert.angels-composter-limitation",
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "pollution" },
    result_inventory_size = 1,
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
    -- fluid_boxes =
    -- {
    -- {
    -- production_type = "input",
    -- pipe_covers = pipecoverspictures(),
    -- volume = 1000,
    -- pipe_connections = {{type = "input", position = {0, 3}}}
    -- },
    -- },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 0.01 * 60 },
    },
    energy_usage = "30kW",
    circuit_connector = circuit_connector_definitions["angels-composter"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        filename = "__angelsbioprocessinggraphics__/graphics/entity/composter/composter.png",
        width = 160,
        height = 160,
        frame_count = 1,
        line_length = 1,
        shift = { 0, 0 },
        --animation_speed = 0.5
      },
    },
    --[[working_visualisations = --looks like a pick 1... this or animation?
    {
        filename = "__angelsbioprocessinggraphics__/graphics/entity/composter/composter-animation.png",
        width = 128,
        height = 32,
        frame_count = 25,
        line_length = 5,
        shift = {0, 1},
        animation_speed = 0.5
    },]]
    impact_category = "metal",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
})
