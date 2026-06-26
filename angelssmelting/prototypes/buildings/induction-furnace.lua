local function angels_induction_furnace_fluid_boxes()
  return {
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 1000,
      pipe_connections = {
        { flow_direction = "output", position = { 2, -2 }, direction = defines.direction.north },
      },
    },
  }
end

---@param direction "north" | "east" | "south" | "west"
---@param variant "capped" | "connected"
---@param is_flipped boolean?
---@return data.Animation
local function get_pipe_picture(direction, variant, is_flipped)
  local flipped = is_flipped == true and "-flipped" or ""

  ---@type data.Animation
  local animation = {
    layers = {
      util.sprite_load(
        "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-pipe-"
          .. variant
          .. "-"
          .. direction
          .. flipped,
        {
          priority = "high",
          scale = 0.5,
        }
      ),
      util.sprite_load(
        "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-pipe-"
          .. variant
          .. "-"
          .. direction
          .. "-shadow"
          .. flipped,
        {
          priority = "high",
          draw_as_shadow = true,
          scale = 0.5,
        }
      ),
    },
  }

  return animation
end

---@param is_flipped boolean?
---@return data.Animation
local function get_base_animation(is_flipped)
  local flipped = is_flipped == true and "-flipped" or ""

  ---@type data.Animation
  local animation = {
    layers = {
      util.sprite_load(
        "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-base" .. flipped,
        {
          priority = "high",
          scale = 0.5,
        }
      ),
      util.sprite_load(
        "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-base-shadow" .. flipped,
        {
          priority = "high",
          draw_as_shadow = true,
          scale = 0.5,
        }
      ),
    },
  }

  return animation
end

---@param is_flipped boolean?
---@return data.WorkingVisualisation
local function get_integration_patch_working_vis(is_flipped)
  local flipped = is_flipped == true and "-flipped" or ""

  local working_vis = {
    always_draw = true,
    render_layer = "floor",
    animation = util.sprite_load(
      "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-integration-patch" .. flipped,
      {
        priority = "high",
        scale = 0.5,
      }
    ),
  }

  return working_vis
end

---@param is_flipped boolean?
---@return data.WorkingVisualisation
local function get_idle_animation_working_vis(is_flipped)
  local flipped = is_flipped == true and "-flipped" or ""

  ---@type data.WorkingVisualisation
  local working_vis = {
    always_draw = true,
    animation = {
      layers = {
        util.sprite_load(
          "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-idle-animation" .. flipped,
          {
            priority = "high",
            frame_count = 36,
            animation_speed = 0.5,
            scale = 0.5,
          }
        ),
        util.sprite_load(
          "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-animation-shadow" .. flipped,
          {
            priority = "high",
            frame_count = 36,
            animation_speed = 0.5,
            draw_as_shadow = true,
            scale = 0.5,
          }
        ),
      },
    },
  }

  return working_vis
end

---@param is_flipped boolean?
---@return data.WorkingVisualisation
local function get_animation_working_vis(is_flipped)
  local flipped = is_flipped == true and "-flipped" or ""

  ---@type data.WorkingVisualisation
  local working_vis = {
    fadeout = true,
    animation = {
      layers = {
        util.sprite_load(
          "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-animation" .. flipped,
          {
            priority = "high",
            frame_count = 36,
            animation_speed = 0.5,
            scale = 0.5,
          }
        ),
      },
    },
  }

  return working_vis
end

---@param is_flipped boolean?
---@return data.WorkingVisualisation
local function get_recipe_mask_working_vis(is_flipped)
  local flipped = is_flipped == true and "-flipped" or ""

  ---@type data.WorkingVisualisation
  local working_vis = {
    always_draw = true,
    apply_recipe_tint = "primary",
    animation = {
      layers = {
        util.sprite_load(
          "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-lower-recipe-mask" .. flipped,
          {
            priority = "high",
            frame_count = 36,
            animation_speed = 0.5,
            scale = 0.5,
          }
        ),
        util.sprite_load(
          "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-upper-recipe-mask" .. flipped,
          {
            priority = "high",
            frame_count = 36,
            animation_speed = 0.5,
            scale = 0.5,
          }
        ),
      },
    },
  }

  return working_vis
end

---@param is_flipped boolean?
---@return data.WorkingVisualisation
local function get_lights_working_vis(is_flipped)
  local flipped = is_flipped == true and "-flipped" or ""

  ---@type data.WorkingVisualisation
  local working_vis = {
    always_draw = true,
    animation = {
      layers = {
        util.sprite_load(
          "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-lights" .. flipped,
          {
            priority = "high",
            frame_count = 36,
            animation_speed = 0.5,
            draw_as_light = true,
            scale = 0.5,
          }
        ),
      },
    },
  }

  return working_vis
end

---@param is_flipped boolean?
---@return data.WorkingVisualisation
local function get_working_lights_working_vis(is_flipped)
  local flipped = is_flipped == true and "-flipped" or ""

  ---@type data.WorkingVisualisation
  local working_vis = {
    fadeout = true,
    animation = {
      layers = {
        util.sprite_load(
          "__angelssmeltinggraphics__/graphics/entity/induction-furnace/induction-furnace-working-lights" .. flipped,
          {
            priority = "high",
            frame_count = 36,
            animation_speed = 0.5,
            draw_as_light = true,
            scale = 0.5,
          }
        ),
      },
    },
  }

  return working_vis
end

---@return data.CraftingMachineGraphicsSet
local function get_graphics_set()
  ---@type data.CraftingMachineGraphicsSet
  local graphics_set = {
    animation = get_base_animation(),
    working_visualisations = {
      -- Pipe Pictures
      {
        always_draw = true,
        north_animation = {
          layers = {
            get_pipe_picture("north", "connected"),
            get_pipe_picture("west", "capped"),
          },
        },
        east_animation = {
          layers = {
            get_pipe_picture("north", "capped"),
            get_pipe_picture("west", "capped"),
          },
        },
        south_animation = {
          layers = {
            get_pipe_picture("north", "capped"),
            get_pipe_picture("west", "capped"),
          },
        },
        west_animation = {
          layers = {
            get_pipe_picture("north", "capped"),
            get_pipe_picture("west", "connected"),
          },
        },
        secondary_draw_order = -1,
      },
      {
        always_draw = true,
        north_animation = {
          layers = {
            get_pipe_picture("east", "capped"),
            get_pipe_picture("south", "capped"),
            angelsmods.functions.get_vertical_pipe_shadow({ 2, -2 }),
          },
        },
        east_animation = {
          layers = {
            get_pipe_picture("east", "connected"),
            get_pipe_picture("south", "capped"),
          },
        },
        south_animation = {
          layers = {
            get_pipe_picture("east", "capped"),
            get_pipe_picture("south", "connected"),
          },
        },
        west_animation = {
          layers = {
            get_pipe_picture("east", "capped"),
            get_pipe_picture("south", "capped"),
            angelsmods.functions.get_horizontal_pipe_shadow({ -2, -2 }),
          },
        },
      },
      get_integration_patch_working_vis(),
      get_idle_animation_working_vis(),
      get_animation_working_vis(),
      get_recipe_mask_working_vis(),
      get_lights_working_vis(),
      get_working_lights_working_vis(),
    },
  }

  return graphics_set
end

---@return data.CraftingMachineGraphicsSet
local function get_graphics_set_flipped()
  local flipped = true

  ---@type data.CraftingMachineGraphicsSet
  local graphics_set = {
    animation = get_base_animation(flipped),
    working_visualisations = {
      -- Pipe Pictures
      {
        always_draw = true,
        north_animation = {
          layers = {
            get_pipe_picture("north", "connected", flipped),
            get_pipe_picture("east", "capped", flipped),
          },
        },
        east_animation = {
          layers = {
            get_pipe_picture("north", "capped", flipped),
            get_pipe_picture("east", "connected", flipped),
          },
        },
        south_animation = {
          layers = {
            get_pipe_picture("north", "capped", flipped),
            get_pipe_picture("east", "capped", flipped),
          },
        },
        west_animation = {
          layers = {
            get_pipe_picture("north", "capped", flipped),
            get_pipe_picture("east", "capped", flipped),
          },
        },
        secondary_draw_order = -1,
      },
      {
        always_draw = true,
        north_animation = {
          layers = {
            get_pipe_picture("south", "capped", flipped),
            get_pipe_picture("west", "capped", flipped),
          },
        },
        east_animation = {
          layers = {
            get_pipe_picture("south", "capped", flipped),
            get_pipe_picture("west", "capped", flipped),
          },
        },
        south_animation = {
          layers = {
            get_pipe_picture("south", "connected", flipped),
            get_pipe_picture("west", "capped", flipped),
          },
        },
        west_animation = {
          layers = {
            get_pipe_picture("south", "capped", flipped),
            get_pipe_picture("west", "connected", flipped),
            angelsmods.functions.get_horizontal_pipe_shadow({ -2, 2 }),
          },
        },
      },
      get_integration_patch_working_vis(flipped),
      get_idle_animation_working_vis(flipped),
      get_animation_working_vis(flipped),
      get_recipe_mask_working_vis(flipped),
      get_lights_working_vis(flipped),
      get_working_lights_working_vis(flipped),
    },
  }

  return graphics_set
end

circuit_connector_definitions["angels-induction-furnace"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    {
      variation = 5,
      main_offset = util.by_pixel(-32.75, -14.5),
      shadow_offset = util.by_pixel(-32.75, -14.5),
      show_shadow = true,
    },
    {
      variation = 5,
      main_offset = util.by_pixel(-32.75, -14.5),
      shadow_offset = util.by_pixel(-32.75, -14.5),
      show_shadow = true,
    },
    {
      variation = 5,
      main_offset = util.by_pixel(-32.75, -14.5),
      shadow_offset = util.by_pixel(-32.75, -14.5),
      show_shadow = true,
    },
    {
      variation = 5,
      main_offset = util.by_pixel(-32.75, -14.5),
      shadow_offset = util.by_pixel(-32.75, -14.5),
      show_shadow = true,
    },
  })

data:extend({
  {
    type = "item",
    name = "angels-induction-furnace",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 1, angelsmods.smelting.number_tint),
    subgroup = "angels-induction-furnace",
    order = "a[induction-furnace]",
    place_result = "angels-induction-furnace",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-induction-furnace",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 1, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-induction-furnace" },
    fast_replaceable_group = "angels-induction-furnace",
    next_upgrade = "angels-induction-furnace-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.5,
    module_slots = 0,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-induction-smelting" },
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.8 },
    },
    energy_usage = "150kW",
    circuit_connector = circuit_connector_definitions["angels-induction-furnace"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = get_graphics_set(),
    graphics_set_flipped = get_graphics_set_flipped(),
    forced_symmetry = "horizontal",
    fluid_boxes = angels_induction_furnace_fluid_boxes(),
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelssmeltinggraphics__/sound/induction-furnace.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
  {
    type = "item",
    name = "angels-induction-furnace-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 2, angelsmods.smelting.number_tint),
    subgroup = "angels-induction-furnace",
    order = "b[induction-furnace-2]",
    place_result = "angels-induction-furnace-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-induction-furnace-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 2, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-induction-furnace-2" },
    fast_replaceable_group = "angels-induction-furnace",
    next_upgrade = "angels-induction-furnace-3",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.5,
    module_slots = 1,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-induction-smelting", "angels-induction-smelting-2" },
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 2.4 },
    },
    energy_usage = "200kW",
    circuit_connector = circuit_connector_definitions["angels-induction-furnace"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = get_graphics_set(),
    graphics_set_flipped = get_graphics_set_flipped(),
    forced_symmetry = "horizontal",
    fluid_boxes = angels_induction_furnace_fluid_boxes(),
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelssmeltinggraphics__/sound/induction-furnace.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
  {
    type = "item",
    name = "angels-induction-furnace-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 3, angelsmods.smelting.number_tint),
    subgroup = "angels-induction-furnace",
    order = "c[induction-furnace-3]",
    place_result = "angels-induction-furnace-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-induction-furnace-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 3, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-induction-furnace-3" },
    fast_replaceable_group = "angels-induction-furnace",
    next_upgrade = "angels-induction-furnace-4",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.5,
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "angels-induction-smelting", "angels-induction-smelting-2", "angels-induction-smelting-3" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3 },
    },
    energy_usage = "250kW",
    circuit_connector = circuit_connector_definitions["angels-induction-furnace"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = get_graphics_set(),
    graphics_set_flipped = get_graphics_set_flipped(),
    forced_symmetry = "horizontal",
    fluid_boxes = angels_induction_furnace_fluid_boxes(),
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelssmeltinggraphics__/sound/induction-furnace.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
  {
    type = "item",
    name = "angels-induction-furnace-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 4, angelsmods.smelting.number_tint),
    subgroup = "angels-induction-furnace",
    order = "d[induction-furnace-4]",
    place_result = "angels-induction-furnace-4",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-induction-furnace-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/induction-furnace.png",
        icon_size = 64,
        scale = 0.5,
      },
    }, 4, angelsmods.smelting.number_tint),
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask("asm", { "elevated_rail" }),
    minable = { mining_time = 1, result = "angels-induction-furnace-4" },
    fast_replaceable_group = "angels-induction-furnace",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.5,
    module_slots = 3,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = {
      "angels-induction-smelting",
      "angels-induction-smelting-2",
      "angels-induction-smelting-3",
      "angels-induction-smelting-4",
    },
    crafting_speed = 3,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3.6 },
    },
    energy_usage = "250kW",
    circuit_connector = circuit_connector_definitions["angels-induction-furnace"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = get_graphics_set(),
    graphics_set_flipped = get_graphics_set_flipped(),
    forced_symmetry = "horizontal",
    fluid_boxes = angels_induction_furnace_fluid_boxes(),
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelssmeltinggraphics__/sound/induction-furnace.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
  },
})
