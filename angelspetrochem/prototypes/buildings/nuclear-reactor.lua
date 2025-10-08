local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "item",
    name = "angels-burner-reactor",
    icon = "__angelspetrochemgraphics__/graphics/icons/fast-reactor-icon.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear",
    order = "a[reactor]-b",
    place_result = "angels-burner-reactor",
    stack_size = 10,
  },
  {
    type = "reactor",
    name = "angels-burner-reactor",
    icon = "__angelspetrochemgraphics__/graphics/icons/fast-reactor-icon.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.5, result = "angels-burner-reactor" },
    max_health = 500,
    corpse = "nuclear-reactor-remnants",
    dying_explosion = "nuclear-reactor-explosion",
    consumption = "160MW",
    neighbour_bonus = 0,
    energy_source = {
      type = "burner",
      fuel_categories = { "nuclear" },
      effectivity = 0.25,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      light_flicker = {
        color = { 0, 0, 0 },
        minimum_light_size = 0,
        light_intensity_to_size_coefficient = 0,
      },
    },
    collision_box = { { -4.2, -4.7 }, { 4.2, 4.7 } },
    selection_box = { { -4.5, -5 }, { 4.5, 5 } },
    damaged_trigger_effect = hit_effects.entity(),
    -- the collision box of a reactor is increased by this on the sides where it connects to another reactor:
    -- neighbour_collision_increase = 0.25,

    -- lower_layer_picture = util.empty_sprite()

    -- heat_lower_layer_picture = util.empty_sprite()

    picture = {
      layers = {
        {
          filename = "__angelspetrochemgraphics__/graphics/entity/fast-reactor/fast-reactor.png",
          width = 608,
          height = 638,
          shift = util.by_pixel(3, -0.5),
          scale = 0.5,
        },
        {
          filename = "__angelspetrochemgraphics__/graphics/entity/fast-reactor/fast-reactor-shadow.png",
          width = 610,
          height = 586,
          scale = 0.5,
          shift = util.by_pixel(7.5, 3.5),
          draw_as_shadow = true,
        },
      },
    },

    working_light_picture = {
      filename = "__angelspetrochemgraphics__/graphics/entity/fast-reactor/fast-reactor-lights.png",
      blend_mode = "additive",
      draw_as_glow = true,
      width = 608,
      height = 638,
      shift = util.by_pixel(3, -0.5),
      scale = 0.5,
    },

    -- light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.0, g = 1.0, b = 0.0}},
    use_fuel_glow_color = true, -- should use glow color from fuel item prototype as light color and tint for working_light_picture
    -- default_fuel_glow_color = { 0, 1, 0, 1 } -- color used as working_light_picture tint for fuels that don"t have glow color defined

    heat_buffer = {
      max_temperature = 600,
      specific_heat = "10MJ",
      max_transfer = "5GW",
      minimum_glow_temperature = 350,
      connections = {
        { position = { -4, -4.5 }, direction = defines.direction.north },
        { position = { -1, -4.5 }, direction = defines.direction.north },
        { position = { 1, -4.5 }, direction = defines.direction.north },
        { position = { 4, -4.5 }, direction = defines.direction.north },
        { position = { 4, -4.5 }, direction = defines.direction.east },
        { position = { 4, -2.5 }, direction = defines.direction.east },
        { position = { 4, 2.5 }, direction = defines.direction.east },
        { position = { 4, 4.5 }, direction = defines.direction.east },
        { position = { 4, 4.5 }, direction = defines.direction.south },
        { position = { 1, 4.5 }, direction = defines.direction.south },
        { position = { -1, 4.5 }, direction = defines.direction.south },
        { position = { -4, 4.5 }, direction = defines.direction.south },
        { position = { -4, 4.5 }, direction = defines.direction.west },
        { position = { -4, 2.5 }, direction = defines.direction.west },
        { position = { -4, -2.5 }, direction = defines.direction.west },
        { position = { -4, -4.5 }, direction = defines.direction.west },
      },

      heat_picture = apply_heat_pipe_glow({
        filename = "__angelspetrochemgraphics__/graphics/entity/fast-reactor/fast-reactor-heated.png",
        width = 608,
        height = 638,
        shift = util.by_pixel(3, -0.5),
        scale = 0.5,
      }),
    },

    connection_patches_connected = {
      sheet = {
        filename = "__angelspetrochemgraphics__/graphics/entity/fast-reactor/fast-reactor-connect-patches.png",
        width = 82,
        height = 82,
        variation_count = 16,
        scale = 0.5,
      },
    },

    connection_patches_disconnected = {
      sheet = {
        filename = "__angelspetrochemgraphics__/graphics/entity/fast-reactor/fast-reactor-connect-patches.png",
        width = 82,
        height = 82,
        variation_count = 16,
        y = 82,
        scale = 0.5,
      },
    },

    heat_connection_patches_connected = {
      sheet = apply_heat_pipe_glow({
        filename = "__angelspetrochemgraphics__/graphics/entity/fast-reactor/fast-reactor-connect-patches-heated.png",
        width = 64,
        height = 64,
        variation_count = 16,
        scale = 0.5,
      }),
    },

    heat_connection_patches_disconnected = {
      sheet = apply_heat_pipe_glow({
        filename = "__angelspetrochemgraphics__/graphics/entity/fast-reactor/fast-reactor-connect-patches-heated.png",
        width = 64,
        height = 64,
        variation_count = 16,
        y = 64,
        scale = 0.5,
      }),
    },

    impact_category = "default",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound = {
        { filename = "__base__/sound/nuclear-reactor-1.ogg", volume = 0.55 },
        { filename = "__base__/sound/nuclear-reactor-2.ogg", volume = 0.55 },
      },
      -- idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
      max_sounds_per_prototype = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },

    meltdown_action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = { { type = "create-entity", entity_name = "atomic-rocket" } },
      },
    },
  },
})
