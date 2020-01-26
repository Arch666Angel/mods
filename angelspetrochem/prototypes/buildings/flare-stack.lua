data:extend(
{
    {
    type = "item",
    name = "angels-flare-stack",
    icon = "__angelspetrochem__/graphics/icons/flare-stack.png",
	icon_size = 32,
	subgroup = "petrochem-separator-gas-refinery",
    order = "i",
    place_result = "angels-flare-stack",
    stack_size = 10,
    },
    {
    type = "furnace",
    name = "angels-flare-stack",
    icon = "__angelspetrochem__/graphics/icons/flare-stack.png",
	icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "angels-flare-stack"},
    max_health = 100,
    fast_replaceable_group = "angels-flare-stack",
    corpse = "small-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    crafting_categories = {"angels-chemical-void"},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    result_inventory_size = 1,
    crafting_speed = 2,
    source_inventory_size = 1,
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "explosion",
        percent = 30
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 1.5} }}
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "30kW",
	animation =
    {
      north =
      {
        filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack.png",
        width = 256,
        height = 256,
        frame_count = 1,
        shift = {2, -2},
      },
      east =
      {
        filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack.png",
        x = 256,
        width = 256,
        height = 256,
        frame_count = 1,
        shift = {2, -2},
      },
      south =
      {
        filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack.png",
        x = 512,
        width = 256,
        height = 256,
        frame_count = 1,
        shift = {2, -2},
      },
      west =
      {
        filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack.png",
        x = 768,
        width = 256,
        height = 256,
        frame_count = 1,
        shift = {2, -2},
      }
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          scale = 2,
          shift = {0, -6},
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
			shift = {0, -6},
          },
        },
        light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
}
)