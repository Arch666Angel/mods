data:extend({
  {
    type = "item",
    name = "bio-hatchery",
    icon = "__angelsbioprocessing__/graphics/icons/bio-hatchery.png",
    icon_size = 32,
    subgroup = "bio-processing-buildings-alien-a",
    order = "c",
    place_result = "bio-hatchery",
    stack_size = 10,
  },
  {
    type = "furnace",
    name = "bio-hatchery",
    icon = "__angelsbioprocessing__/graphics/icons/bio-hatchery.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "bio-hatchery" },
    max_health = 100,
    fast_replaceable_group = "bio-hatchery",
    corpse = "small-remnants",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    drawing_box = { { -1.5, -1.75 }, { 1.5, 1.5 } },
    crafting_categories = { "bio-hatchery" },
    module_specification = {
      module_slots = 2,
    },
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
      emissions_per_minute = 0.01 * 60,
    },
    energy_usage = "150kW",
    animation = {
      layers = {
        {
          filename = "__angelsbioprocessing__/graphics/entity/bio-hatchery/bio-hatchery-shadow.png",
          width = 160,
          height = 160,
          frame_count = 1,
          line_length = 1,
          shift = { 0, 0 },
          --animation_speed = 0.5
        },
        {
          filename = "__angelsbioprocessing__/graphics/entity/bio-hatchery/bio-hatchery-off.png",
          width = 160,
          height = 160,
          frame_count = 1,
          line_length = 1,
          shift = { 0, 0 },
          --animation_speed = 0.5
        },
      },
    },
    working_visualisations = {
      {
        animation = {
          filename = "__angelsbioprocessing__/graphics/entity/bio-hatchery/bio-hatchery-animation.png",
          width = 160,
          height = 160,
          line_length = 5,
          frame_count = 25,
          shift = { 0, 0 },
          animation_speed = 0.35,
        },
      },
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
})
