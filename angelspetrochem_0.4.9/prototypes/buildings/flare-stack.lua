data:extend(
{
    {
    type = "item",
    name = "angels-flare-stack",
    icon = "__angelspetrochem__/graphics/icons/flare-stack.png",
	flags = {"goes-to-quickbar"},
	subgroup = "petrochem-utility",
    order = "e[angels-flare-stack]",
    place_result = "angels-flare-stack",
    stack_size = 10,
    },
    {
    type = "furnace",
    name = "angels-flare-stack",
    icon = "__angelspetrochem__/graphics/icons/flare-stack.png",
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
        base_area = 1,
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
        -- north_position = {0, -6},
        -- east_position = {0, -6},
        -- south_position = {{0, -6},
        -- west_position = {0, -6},
        animation =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          frame_count = 29,
          width = 16,
          height = 35,
          scale = 3,
          shift = {0, -6},
          run_mode="backward"
        },
        light = {intensity = 0.8, size = 6}
      }
    },
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
}
)