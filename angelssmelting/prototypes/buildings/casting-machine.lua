local function angels_casting_machine_fluid_boxes()
  return {
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = {
        { flow_direction = "input", position = { -1, -1 }, direction = defines.direction.north },
      },
    },
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = { { flow_direction = "output", position = { 1, -1 }, direction = defines.direction.east } },
    },
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = { { flow_direction = "input", position = { 1, 1 }, direction = defines.direction.south } },
    },
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = { { flow_direction = "input", position = { -1, 1 }, direction = defines.direction.west } },
    },
  }
end

---@param is_flipped boolean?
---@return data.CraftingMachineGraphicsSet
local function get_graphics_set(is_flipped, pipes)
	local flipped = is_flipped == true and "-flipped" or ""

  ---@type data.CraftingMachineGraphicsSet
  local graphics_set = {
    animation = {
      layers = {
        util.sprite_load("__angelssmeltinggraphics__/graphics/entity/casting-machine/casting-machine-animation" .. flipped, {
          priority = "high",
          frame_count = 49,
          animation_speed = 0.5,
          scale = 0.5,
        }),
        util.sprite_load("__angelssmeltinggraphics__/graphics/entity/casting-machine/casting-machine-animation-shadow" .. flipped, {
          priority = "high",
          frame_count = 49,
          animation_speed = 0.5,
          draw_as_shadow = true,
          scale = 0.5,
        }),
        util.sprite_load("__angelssmeltinggraphics__/graphics/entity/casting-machine/casting-machine-lights" .. flipped, {
          priority = "high",
          frame_count = 49,
          animation_speed = 0.5,
          draw_as_light = true,
          scale = 0.5,
        }),
      },
    },
    working_visualisations = {
      -- Integration patch.
      {
        always_draw = true,
        render_layer = "floor",
        animation = util.sprite_load("__angelssmeltinggraphics__/graphics/entity/casting-machine/casting-machine-integration-patch" .. flipped, {
          priority = "high",
          scale = 0.5,
        }),
      },
    }
  }

  return graphics_set
end

circuit_connector_definitions["angels-casting-machine"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  4, main_offset = util.by_pixel(-41.125,  35.125), shadow_offset = util.by_pixel(-41.125,  35.125), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-41.125,  35.125), shadow_offset = util.by_pixel(-41.125,  35.125), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-41.125,  35.125), shadow_offset = util.by_pixel(-41.125,  35.125), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-41.125,  35.125), shadow_offset = util.by_pixel(-41.125,  35.125), show_shadow = true },
})

data:extend({
  {
    type = "item",
    name = "angels-casting-machine",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/casting-machine.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 1, angelsmods.smelting.number_tint),
    subgroup = "angels-casting-machine",
    order = "a[casting-machine]",
    place_result = "angels-casting-machine",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-casting-machine",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/casting-machine.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 1, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-casting-machine" },
    fast_replaceable_group = "angels-casting-machine",
    next_upgrade = "angels-casting-machine-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    drawing_box_vertical_extension = 0.3,
    module_slots = 0,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-casting" },
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.8 },
    },
    energy_usage = "150kW",
    circuit_connector = circuit_connector_definitions["angels-casting-machine"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = get_graphics_set(),
    graphics_set_flipped = get_graphics_set(true),
    forced_symmetry = "horizontal",
    fluid_boxes = angels_casting_machine_fluid_boxes(),
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelssmeltinggraphics__/sound/casting-machine.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
  {
    type = "item",
    name = "angels-casting-machine-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/casting-machine.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 2, angelsmods.smelting.number_tint),
    subgroup = "angels-casting-machine",
    order = "b[casting-machine-2]",
    place_result = "angels-casting-machine-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-casting-machine-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/casting-machine.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 2, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-casting-machine-2" },
    fast_replaceable_group = "angels-casting-machine",
    next_upgrade = "angels-casting-machine-3",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    drawing_box_vertical_extension = 0.3,
    module_slots = 1,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-casting", "angels-casting-2" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 2.4 },
    },
    energy_usage = "200kW",
    circuit_connector = circuit_connector_definitions["angels-casting-machine"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = get_graphics_set(),
    graphics_set_flipped = get_graphics_set(true),
    forced_symmetry = "horizontal",
    fluid_boxes = angels_casting_machine_fluid_boxes(),
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelssmeltinggraphics__/sound/casting-machine.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
  {
    type = "item",
    name = "angels-casting-machine-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/casting-machine.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 3, angelsmods.smelting.number_tint),
    subgroup = "angels-casting-machine",
    order = "c[casting-machine-3]",
    place_result = "angels-casting-machine-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-casting-machine-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/casting-machine.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 3, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-casting-machine-3" },
    fast_replaceable_group = "angels-casting-machine",
    next_upgrade = "angels-casting-machine-4",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    drawing_box_vertical_extension = 0.3,
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-casting", "angels-casting-2", "angels-casting-3" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3 },
    },
    energy_usage = "250kW",
    circuit_connector = circuit_connector_definitions["angels-casting-machine"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = get_graphics_set(),
    graphics_set_flipped = get_graphics_set(true),
    forced_symmetry = "horizontal",
    fluid_boxes = angels_casting_machine_fluid_boxes(),
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelssmeltinggraphics__/sound/casting-machine.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
  {
    type = "item",
    name = "angels-casting-machine-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/casting-machine.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 4, angelsmods.smelting.number_tint),
    subgroup = "angels-casting-machine",
    order = "d[casting-machine-4]",
    place_result = "angels-casting-machine-4",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-casting-machine-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/casting-machine.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 4, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "angels-casting-machine-4" },
    fast_replaceable_group = "angels-casting-machine",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    drawing_box_vertical_extension = 0.3,
    module_slots = 3,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-casting", "angels-casting-2", "angels-casting-3", "angels-casting-4" },
    crafting_speed = 3,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3.6 },
    },
    energy_usage = "250kW",
    circuit_connector = circuit_connector_definitions["angels-casting-machine"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = get_graphics_set(),
    graphics_set_flipped = get_graphics_set(true),
    forced_symmetry = "horizontal",
    fluid_boxes = angels_casting_machine_fluid_boxes(),
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelssmeltinggraphics__/sound/casting-machine.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
})
