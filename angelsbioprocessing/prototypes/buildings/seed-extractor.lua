data:extend(
{
  {
    type = "item",
    name = "seed-extractor",
    icon = "__angelsbioprocessing__/graphics/icons/seed-extractor.png",
    icon_size = 32,
    subgroup = "bio-processing-buildings-vegetabilis-b",
    order = "a",
    place_result = "seed-extractor",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "seed-extractor",
    icon = "__angelsbioprocessing__/graphics/icons/seed-extractor.png",
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "seed-extractor"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group= "seed-extractor",
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"seed-extractor"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "150kW",
    ingredient_count = 4,
    animation =
    {
      filename = "__angelsbioprocessing__/graphics/entity/seed-extractor/seed-extractor.png",
      width = 160,
      height = 160,
      frame_count = 25,
      line_length = 5,
      shift = {0, 0},
      animation_speed = 0.5,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
}
)