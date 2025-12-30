local sounds = require("__base__.prototypes.entity.sounds")

local function modify_shift(original, scale, shift)
  return {
    (original[1] or 0) * (scale or 1) + (shift and shift[1] or 0),
    (original[2] or 0) * (scale or 1) + (shift and shift[2] or 0),
  }
end

local function modify_scale(original, scale)
  return original * (scale or 1)
end

function angelsmods.functions.merge_layers(first, second)
  local result = {}

  if first.layers then
    result.layers = util.table.deepcopy(first.layers)
  else
    result.layers = { util.table.deepcopy(first) }
  end

  if second.layers then
    for _, layer in pairs(second.layers) do
      table.insert(result.layers, util.table.deepcopy(layer))
    end
  else
    table.insert(result.layers, util.table.deepcopy(second))
  end

  return result
end

function angelsmods.functions.create_gathering_turret_base(inputs)
  inputs = inputs or {}
  if inputs.type and type(inputs.type) == "table" then
    local picture = { layers = {} }
    for _, type in pairs(inputs.type) do
      local table_inputs = utils.table.deepcopy(inputs)
      table_inputs.type = type
      local table_picture = angelsmods.functions.create_gathering_turret_base(table_inputs)
      if table_picture.layers then
        for _, table_picture_layer in pairs(table_picture.layers) do
          table.insert(picture.layers, table_picture_layer)
        end
      else
        table.insert(picture.layers, table_picture)
      end
    end
    return picture
  end

  if inputs.type == "gun" then
    return {
      layers = {
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
          priority = "high",
          width = 150,
          height = 118,
          frame_count = 1,
          shift = modify_shift(util.by_pixel(0.5, -1), inputs.scale, inputs.shift),
          scale = modify_scale(0.5, inputs.scale),
        },
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
          flags = { "mask", "low-object" },
          line_length = 1,
          width = 122,
          height = 102,
          frame_count = 1,
          shift = modify_shift(util.by_pixel(0, -4.5), inputs.scale, inputs.shift),
          apply_runtime_tint = inputs.apply_runtime_tint or false,
          tint = inputs.fixed_tint
            or (not inputs.apply_runtime_tint and { r = 0.87, g = 0.5, b = 0.13, a = 0.5 })
            or nil,
          scale = modify_scale(0.5, inputs.scale),
        },
      },
    }
  end

  if inputs.type == "laser" then
    return {
      layers = {
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
          priority = "high",
          width = 138,
          height = 104,
          frame_count = 1,
          shift = modify_shift(util.by_pixel(-0.5, 2), inputs.scale, inputs.shift),
          scale = modify_scale(0.5, inputs.scale),
        },
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-base-shadow.png",
          line_length = 1,
          width = 132,
          height = 82,
          draw_as_shadow = true,
          frame_count = 1,
          shift = modify_shift(util.by_pixel(6, 3), inputs.scale, inputs.shift),
          scale = modify_scale(0.5, inputs.scale),
        },
      },
    }
  end

  return {
    filename = "__core__/graphics/empty.png",
    priority = "very-low",
    width = 1,
    height = 1,
  }
end

local function create_gathering_turret_extension(inputs)
  inputs = inputs or {}
  return {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-raising.png",
    priority = "medium",
    width = 130,
    height = 126,
    frame_count = inputs.frame_count or 15,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    direction_count = 4,
    shift = modify_shift(util.by_pixel(0, -32.5), inputs.scale, inputs.shift),
    scale = modify_scale(0.5, inputs.scale),
  }
end

local function create_gathering_turret_extension_shadow(inputs)
  inputs = inputs or {}
  return {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-raising-shadow.png",
    width = 182,
    height = 96,
    frame_count = inputs.frame_count or 15,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    direction_count = 4,
    draw_as_shadow = true,
    shift = modify_shift(util.by_pixel(47, 2.5), inputs.scale, inputs.shift),
    scale = modify_scale(0.5, inputs.scale),
  }
end

local function create_gathering_turret_extension_mask(inputs)
  inputs = inputs or {}
  return {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-raising-mask.png",
    flags = { "mask" },
    width = 86,
    height = 80,
    frame_count = inputs.frame_count or 15,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    apply_runtime_tint = true,
    direction_count = 4,
    shift = modify_shift(util.by_pixel(0, -43), inputs.scale, inputs.shift),
    scale = modify_scale(0.5, inputs.scale),
  }
end

function angelsmods.functions.create_gathering_turret_extensions(inputs)
  return {
    layers = {
      create_gathering_turret_extension(inputs),
      create_gathering_turret_extension_shadow(inputs),
      create_gathering_turret_extension_mask(inputs),
    },
  }
end

local function create_gathering_turret_shooting(inputs)
  inputs = inputs or {}
  return {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting.png",
    line_length = 8,
    width = 126,
    height = 120,
    frame_count = 1,
    direction_count = 64,
    shift = modify_shift(util.by_pixel(0, -35), inputs.scale, inputs.shift),
    scale = modify_scale(0.5, inputs.scale),
  }
end

local function create_gathering_turret_shooting_shadow(inputs)
  inputs = inputs or {}
  return {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-shadow.png",
    line_length = 8,
    width = 170,
    height = 92,
    frame_count = 1,
    direction_count = 64,
    draw_as_shadow = true,
    shift = modify_shift(util.by_pixel(50.5, 2.5), inputs.scale, inputs.shift),
    scale = modify_scale(0.5, inputs.scale),
  }
end

local function create_gathering_turret_shooting_mask(inputs)
  inputs = inputs or {}
  return {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-mask.png",
    flags = { "mask" },
    line_length = 8,
    width = 92,
    height = 80,
    frame_count = 1,
    apply_runtime_tint = true,
    direction_count = 64,
    shift = modify_shift(util.by_pixel(0, -43.5), inputs.scale, inputs.shift),
    scale = modify_scale(0.5, inputs.scale),
  }
end

function angelsmods.functions.create_gathering_turret_shootings(inputs)
  return {
    layers = {
      create_gathering_turret_shooting(inputs),
      create_gathering_turret_shooting_shadow(inputs),
      create_gathering_turret_shooting_mask(inputs),
    },
  }
end

function angelsmods.functions.create_gathering_turret_shooting_glow(inputs)
  inputs = inputs or {}
  return {
    filename = "__angelsexplorationgraphics__/graphics/entity/gathering-turret/gathering-turret-shooting-light.png",
    line_length = 8,
    width = 122,
    height = 116,
    frame_count = 1,
    direction_count = 64,
    blend_mode = "additive",
    shift = modify_shift(util.by_pixel(-0.5, -35), inputs.scale, inputs.shift),
    scale = modify_scale(0.5, inputs.scale),
  }
end

function angelsmods.functions.create_gathering_turret_water_reflection(inputs)
  inputs = inputs or {}
  return {
    pictures = {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-reflection.png",
      priority = "extra-high",
      width = 20,
      height = 32,
      shift = modify_shift(util.by_pixel(0, 40), inputs.scale, inputs.shift),
      variation_count = 1,
      scale = modify_scale(5, inputs.scale),
    },
    rotate = false,
    orientation_to_variation = false,
  }
end

function angelsmods.functions.create_gathering_turret_beam_start(inputs)
  return {
    filename = "__base__/graphics/entity/beam/tileable-beam-START.png",
    flags = inputs.flags,
    line_length = 4,
    width = 94,
    height = 66,
    frame_count = 16,
    shift = { 0.53125, 0 },
    tint = inputs.tint,
    scale = 0.5,
  }
end

function angelsmods.functions.create_gathering_turret_beam_end(inputs)
  return {
    filename = "__base__/graphics/entity/beam/tileable-beam-END.png",
    flags = inputs.flags,
    line_length = 4,
    width = 91,
    height = 93,
    frame_count = 16,
    shift = { -0.078125, -0.046875 },
    tint = inputs.tint,
    scale = 0.5,
  }
end

function angelsmods.functions.create_gathering_turret_beam_head(inputs)
  return {
    filename = "__base__/graphics/entity/beam/beam-head.png",
    flags = inputs.flags,
    line_length = 16,
    width = 45 - 7,
    height = 39,
    frame_count = 16,
    shift = util.by_pixel(-7 / 2, 0),
    tint = inputs.tint,
    blend_mode = inputs.blend_mode,
  }
end

function angelsmods.functions.create_gathering_turret_beam_tail(inputs)
  return {
    filename = "__base__/graphics/entity/beam/beam-tail.png",
    flags = inputs.flags,
    line_length = 16,
    width = 45 - 6,
    height = 39,
    frame_count = 16,
    shift = util.by_pixel(6 / 2, 0),
    tint = inputs.tint,
    blend_mode = inputs.blend_mode,
  }
end

function angelsmods.functions.create_gathering_turret_beam_body(inputs)
  return {
    {
      filename = "__base__/graphics/entity/beam/beam-body-1.png",
      flags = inputs.flags,
      line_length = 16,
      width = 32,
      height = 39,
      frame_count = 16,
      blend_mode = inputs.blend_mode,
    },
    {
      filename = "__base__/graphics/entity/beam/beam-body-2.png",
      flags = inputs.flags,
      line_length = 16,
      width = 32,
      height = 39,
      frame_count = 16,
      blend_mode = inputs.blend_mode,
    },
    {
      filename = "__base__/graphics/entity/beam/beam-body-3.png",
      flags = inputs.flags,
      line_length = 16,
      width = 32,
      height = 39,
      frame_count = 16,
      blend_mode = inputs.blend_mode,
    },
    {
      filename = "__base__/graphics/entity/beam/beam-body-4.png",
      flags = inputs.flags,
      line_length = 16,
      width = 32,
      height = 39,
      frame_count = 16,
      blend_mode = inputs.blend_mode,
    },
    {
      filename = "__base__/graphics/entity/beam/beam-body-5.png",
      flags = inputs.flags,
      line_length = 16,
      width = 32,
      height = 39,
      frame_count = 16,
      blend_mode = inputs.blend_mode,
    },
    {
      filename = "__base__/graphics/entity/beam/beam-body-6.png",
      flags = inputs.flags,
      line_length = 16,
      width = 32,
      height = 39,
      frame_count = 16,
      blend_mode = inputs.blend_mode,
    },
  }
end

-- TODO: Remove this? Currently unused
function angelsmods.functions.create_gathering_turret_beam_light(inputs)
  return {
    start = angelsmods.functions.create_gathering_turret_beam_start(inputs),
    ending = angelsmods.functions.create_gathering_turret_beam_end(inputs),
    head = angelsmods.functions.create_gathering_turret_beam_head(inputs),
    body = angelsmods.functions.create_gathering_turret_beam_body(inputs),
    tail = angelsmods.functions.create_gathering_turret_beam_tail(inputs),
  }
end

-- TODO: Remove this? Currently unused
function angelsmods.functions.create_gathering_turret_beam_ground_light(inputs)
  return {
    head = {
      filename = "__base__/graphics/entity/laser-turret/laser-ground-light-head.png",
      line_length = 1,
      width = 256,
      height = 256,
      repeat_count = 16,
      scale = 0.5,
      shift = util.by_pixel(-32, 0),
      animation_speed = 0.5,
      tint = inputs.tint,
    },
    tail = {
      filename = "__base__/graphics/entity/laser-turret/laser-ground-light-tail.png",
      line_length = 1,
      width = 256,
      height = 256,
      repeat_count = 16,
      scale = 0.5,
      shift = util.by_pixel(32, 0),
      animation_speed = 0.5,
      tint = inputs.tint,
    },
    body = {
      filename = "__base__/graphics/entity/laser-turret/laser-ground-light-body.png",
      line_length = 1,
      width = 64,
      height = 256,
      repeat_count = 16,
      scale = 0.5,
      animation_speed = 0.5,
      tint = inputs.tint,
    },
  }
end

function angelsmods.functions.create_gathering_turret_beam_source_offset(inputs)
  return modify_shift(inputs.offset, inputs.scale, inputs.shift)
end

function angelsmods.functions.create_gathering_turret_start_trigger(inputs)
  return {
    type = "nested-result",
    action = {
      type = "area",
      radius = inputs.range,
      show_in_tooltip = false,
      trigger_target_mask = { "angels_gathering_turret_start_collecting_trigger" },
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "script",
          effect_id = "angels_gathering_turret_start_collecting_trigger",
        },
      },
    },
  }
end

function angelsmods.functions.add_gathering_turret_start_trigger(inputs)
  if not data.raw[inputs.type or "unit"] then
    return
  end
  local unit = data.raw[inputs.type or "unit"][inputs.name]
  if not unit then
    return
  end

  if unit.dying_trigger_effect then
    if unit.dying_trigger_effect.type then -- single existing effect
      unit.dying_trigger_effect = {
        util.table.deepcopy(unit.dying_trigger_effect),
        angelsmods.functions.create_gathering_turret_start_trigger(inputs),
      }
    else -- table of existing effects
      table.insert(unit.dying_trigger_effect, angelsmods.functions.create_gathering_turret_start_trigger(inputs))
    end
  else -- no existing effects
    unit.dying_trigger_effect = angelsmods.functions.create_gathering_turret_start_trigger(inputs)
  end
end

local function create_sprite_layer_from_icon_layer(icon_layer, layer_scale)
  return {
    filename = icon_layer.icon,
    size = icon_layer.icon_size,
    scale = (icon_layer.scale or 1) * layer_scale,
    shift = icon_layer.shift,
    tint = icon_layer.tint,
  }
end

local function create_sprite_from_icon_layers(icon_layers, icon_scale)
  local sprite = { layers = {} }
  for _, icon_layer in pairs(icon_layers) do
    table.insert(sprite.layers, create_sprite_layer_from_icon_layer(icon_layer, icon_scale))
  end
  return sprite
end

local function create_gathering_turret_target_tech(inputs)
  if type(inputs.require_tech_unlock) == "boolean" then
    inputs.require_tech_unlock = "angels-gathering-turret-target_" .. inputs.name .. "_"
    return create_gathering_turret_target_tech(inputs)
  end

  local item_data = data.raw.item[inputs.name]
  if not item_data then
    return
  end

  -- create tech if it doesn't exist yet
  local tech_data = data.raw.technology[inputs.require_tech_unlock]
  if not tech_data then
    data:extend({
      {
        type = "technology",
        name = inputs.require_tech_unlock,
        localised_name = { "technology-name.angels-gathering-turret-target", "__ITEM__" .. inputs.name .. "__" },
        icon = "__angelsexplorationgraphics__/graphics/technology/gathering-turret-target.png",
        icon_size = 256,
        prerequisites = inputs.additional_tech_prerequisites
            and (type(inputs.additional_tech_prerequisites) == "string" and { inputs.additional_tech_prerequisites } or type(
              inputs.additional_tech_prerequisites
            ) == "table" and inputs.additional_tech_prerequisites)
          or nil,
        effects = {},
        unit = {
          count = 150,
          ingredients = {
            { "automation-science-pack", 2 },
            { "logistic-science-pack", 1 },
            { "military-science-pack", 2 },
          },
          time = 30,
        },
        order = "c-a",
      },
    })
    tech_data = data.raw.technology[inputs.require_tech_unlock]
  end

  -- add effect to the tech
  table.insert(tech_data.effects, {
    type = "nothing",
    icons = angelsmods.functions.get_object_icons(inputs.name),
    effect_description = { "effect-description.angels-gathering-turret-target", "__ITEM__" .. inputs.name .. "__" },
  })
end

function angelsmods.functions.create_gathering_turret_target(inputs)
  local item_data = data.raw.item[inputs.name]
  if not item_data then
    return
  end

  local resistances = {
    -- base game
    { type = "acid", percent = 100 },
    { type = "electric", percent = 100 },
    { type = "explosion", percent = 100 },
    { type = "fire", percent = 100 },
    { type = "impact", percent = 100 },
    { type = "laser", percent = 100 },
    { type = "physical", percent = 100 },
    { type = "poison", percent = 100 },
    -- angels
    { type = "angels-bio", percent = 100 },
    { type = "angels-gathering", percent = 100 },
  }
  if mods["bobwarfare"] then
    -- bobs
    table.insert(resistances, { type = "bob-pierce", percent = 100 })
    table.insert(resistances, { type = "plasma", percent = 100 })
  end

  data:extend({
    {
      type = "land-mine",
      name = "angels-gathering-turret-target_" .. inputs.name .. "_",

      icons = angelsmods.functions.get_object_icons(inputs.name),

      order = item_data.order or "zzz",
      subgroup = item_data.subgroup or "unknown",

      flags = {
        "placeable-player",
        "placeable-enemy",
        "player-creation",
        "placeable-off-grid",
        "not-on-map",
      },

      minable = { mining_time = 0.025, result = inputs.name },
      max_health = 1,

      --corpse = "land-mine-remnants",
      --dying_explosion = "land-mine-explosion",
      create_ghost_on_death = false,

      collision_box = { { -0.14, -0.14 }, { 0.14, 0.14 } },
      selection_box = { { -0.17, -0.17 }, { 0.17, 0.17 } },
      hit_visualization_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },

      damaged_trigger_effect = nil,

      open_sound = sounds.machine_open,
      close_sound = sounds.machine_close,

      picture_safe = create_sprite_from_icon_layers(angelsmods.functions.get_object_icons(inputs.name), 0.5),
      picture_set = create_sprite_from_icon_layers(angelsmods.functions.get_object_icons(inputs.name), 0.5),
      picture_set_enemy = create_sprite_from_icon_layers(angelsmods.functions.get_object_icons(inputs.name), 0.5),

      timeout = 0, -- time between placing and the landmine being armed (in ticks)
      trigger_radius = 1.5,

      trigger_target_mask = {
        "angels_gathering_turret_start_collecting_trigger",
      },

      ammo_category = "landmine",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "insert-item",
              item = inputs.name,
              count = 1,
            },
          },
        },
      },

      hide_resistances = true,
      resistances = resistances,
    },
  })

  if inputs.require_tech_unlock then
    -- create technology to unlock the gathering of this target
    create_gathering_turret_target_tech(inputs)
  end
end

function angelsmods.functions.generate_gathering_turret_speed_upgrade_technology(inputs)
  inputs.level = inputs.level and inputs.level > 0 and inputs.level or 1
  return {
    type = "technology",
    name = "angels-gathering-speed-" .. inputs.level,
    icon_size = 256,
    icons = util.technology_icon_constant_damage(
      "__angelsexplorationgraphics__/graphics/technology/gathering-turret-speed.png"
    ),
    prerequisites = {
      inputs.level == 1 and "angels-gathering-turret" or ("angels-gathering-speed-" .. (inputs.level - 1)),
    },
    effects = {
      inputs.modifier and (inputs.modifier > 0) and {
        type = "ammo-damage",
        ammo_category = "angels-gathering",
        modifier = inputs.modifier,
      },
    },
    unit = {
      count = inputs.cost or 50,
      ingredients = {
        inputs.level > 0 and { "automation-science-pack", 1 } or nil,
        inputs.level > 0 and { "logistic-science-pack", 2 } or nil,
        inputs.level > 0 and { "military-science-pack", 2 } or nil,
        inputs.level > 3 and { "chemical-science-pack", 1 } or nil,
        inputs.level > 5 and { "utility-science-pack", 1 } or nil,
      },
      time = 30,
    },
    upgrade = true,
    order = "c-a",
  }
end
