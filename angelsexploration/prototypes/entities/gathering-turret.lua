local sounds = require("__base__.prototypes.entity.sounds")

circuit_connector_definitions["angels-gathering-turret"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 17, main_offset = util.by_pixel(-19.875,  1.75), shadow_offset = util.by_pixel(-19.875,  1.75), show_shadow = true },
})

-- GATHERING TURRET
data:extend({
  {
    type = "item",
    name = "angels-gathering-turret",
    icon = "__angelsexplorationgraphics__/graphics/icons/gathering-turret.png",
    icon_size = 64,
    subgroup = "angels-electric-a",
    order = "ba",
    place_result = "angels-gathering-turret",
    stack_size = 50,
  },
  {
    type = "trigger-target-type",
    name = "angels_gathering_turret_start_collecting_trigger",
  },
  {
    type = "container",
    name = "angels-gathering-turret-base",

    icon = "__angelsexplorationgraphics__/graphics/icons/gathering-turret.png",
    icon_size = 64,

    flags = {
      "placeable-player",
      "not-on-map",
      "no-automated-item-insertion",
      "not-selectable-in-game",
      "not-in-kill-statistics",
      "not-flammable",
      "not-blueprintable",
      "not-deconstructable",
      "not-repairable",
    },
    minable = { mining_time = 0.1, result = "angels-gathering-turret" },
    max_health = 1000,

    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    selectable_in_game = false, -- select the gatering turret rather than the base

    fast_replaceable_group = nil,
    damaged_trigger_effect = {
      type = "create-entity",
      entity_name = "spark-explosion",
      offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      offsets = { { 0, 1 } },
      damage_type_filters = "fire",
    },
    trigger_target_mask = {
      "common",
      "ground-unit",
      "angels_gathering_turret_start_collecting_trigger",
    },

    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    impact_category = "default",

    inventory_size = 1,
    enable_inventory_bar = false,

    picture = angelsmods.functions.create_gathering_turret_base({}),

    circuit_connector_definitions["angels-gathering-turret"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
  {
    type = "electric-turret",
    name = "angels-gathering-turret",

    icon = "__angelsexplorationgraphics__/graphics/icons/gathering-turret.png",
    icon_size = 64,

    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "angels-gathering-turret" },
    max_health = 1000,

    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    drawing_box_vertical_extension = 0.5,

    damaged_trigger_effect = nil,

    corpse = "laser-turret-remnants",
    dying_explosion = "laser-turret-explosion",

    energy_source = {
      type = "electric",
      buffer_capacity = "801kJ",
      input_flow_limit = "9600kW",
      drain = "24kW",
      usage_priority = "primary-input",
    },
    attack_target_mask = {
      "angels_gathering_turret_start_collecting_trigger",
    },

    -- folded state
    folding_sound = sounds.laser_turret_deactivate,
    folding_speed = 0.05,
    folded_animation = angelsmods.functions.create_gathering_turret_extensions({
      frame_count = 1,
      line_length = 1,
      shift = { 0, -0.46 },
      scale = 0.78,
    }),

    -- preparing state
    preparing_sound = sounds.laser_turret_activate,
    preparing_speed = 0.05,
    preparing_animation = angelsmods.functions.create_gathering_turret_extensions({
      shift = { 0, -0.46 },
      scale = 0.78,
    }),

    -- ready to attack state
    rotation_speed = 0.01,
    prepared_animation = angelsmods.functions.create_gathering_turret_shootings({ shift = { 0, -0.46 }, scale = 0.78 }),

    -- attack state
    --attacking_speed = 0.1,
    energy_glow_animation = angelsmods.functions.create_gathering_turret_shooting_glow({
      shift = { 0, -0.46 },
      scale = 0.78,
    }),
    glow_light_intensity = 0.5, -- defaults to 0

    -- folding state
    folding_animation = angelsmods.functions.create_gathering_turret_extensions({
      run_mode = "backward",
      shift = { 0, -0.46 },
      scale = 0.78,
    }),
    graphics_set = {
      base_visualisation = {
        animation = angelsmods.functions.merge_layers(
          angelsmods.functions.create_gathering_turret_base({ type = "gun", apply_runtime_tint = true }),
          angelsmods.functions.create_gathering_turret_base({
            type = "laser",
            apply_runtime_tint = true,
            shift = { 0, -0.46 },
            scale = 0.78,
          })
        ),
      },
    },

    impact_category = "default",

    alert_when_attacking = false,
    --turret_base_has_direction = true,
    attack_parameters = {
      type = "beam",
      cooldown = 60, -- in ticks
      range = 60,
      --turn_range = 0.5, -- 180°
      source_direction_count = 64,
      source_offset = angelsmods.functions.create_gathering_turret_beam_source_offset({
        offset = { 0, -3.423489 / 4 },
        shift = { 0, -0.46 },
        scale = 0.78,
      }),
      damage_modifier = 1,
      ammo_category = "beam",
      ammo_type = {
        category = "gathering",
        energy_consumption = "800kJ",
        action = {
          type = "direct",
          action_delivery = {
            type = "beam",
            beam = "angels-gathering-turret-beam",
            max_length = 60,
            duration = 60,
            source_offset = angelsmods.functions.create_gathering_turret_beam_source_offset({
              offset = { 0, -1.31439 },
              shift = { 0, -0.46 },
              scale = 0.78,
            }),
          },
        },
      },
    },
    radius_visualisation_specification = {
      draw_in_cursor = false,
      draw_on_selection = false,
    },

    call_for_help_radius = 0,
    water_reflection = angelsmods.functions.create_gathering_turret_water_reflection({
      shift = { 0, -0.46 },
      scale = 0.78,
    }),
  },
  {
    type = "beam",
    name = "angels-gathering-turret-beam",
    flags = { "not-on-map" },
    width = 0.5,
    damage_interval = 20,
    random_target_offset = true,
    target_offset = { 0, -0.5 },
    action_triggered_automatically = false,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "damage",
            damage = { amount = 2, type = "gathering" },
          },
        },
      },
    },
    working_sound = {
      sound = {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7,
      },
      max_sounds_per_prototype = 4,
    },
    graphics_set = {
      beam = {
        start = angelsmods.functions.create_gathering_turret_beam_start({
          flags = { "trilinear-filtering" },
          blend_mode = "additive-soft",
        }),
        ending = angelsmods.functions.create_gathering_turret_beam_end({
          flags = { "trilinear-filtering" },
          blend_mode = "additive-soft",
        }),
        head = angelsmods.functions.create_gathering_turret_beam_head({
          flags = { "trilinear-filtering" },
          blend_mode = "additive-soft",
        }),
        tail = angelsmods.functions.create_gathering_turret_beam_tail({
          flags = { "trilinear-filtering" },
          blend_mode = "additive-soft",
        }),
        body = angelsmods.functions.create_gathering_turret_beam_body({
          flags = { "trilinear-filtering" },
          blend_mode = "additive-soft",
        }),
      },
    },
    light_animations = angelsmods.functions.create_gathering_turret_beam_light({
      flags = { "trilinear-filtering" },
      blend_mode = "additive-soft",
    }),
    ground_light_animations = angelsmods.functions.create_gathering_turret_beam_ground_light({
      tint = { 0.05, 0.5, 0.5 },
    }),
  },
})
