require("util")

data:extend({
  -- TURBO BIKE
  {
    type = "item-with-entity-data",
    name = "angels-turbo-bike",
    icon = "__angelsexplorationgraphics__/graphics/icons/turbo-bike.png",
    icon_size = 64,
    flags = {},
    subgroup = "angels-vehicle-car",
    order = "a[bike]-a[turbo-bike]",
    place_result = "angels-turbo-bike",
    stack_size = 1,
  },
  {
    type = "car",
    name = "angels-turbo-bike",
    icon = "__angelsexplorationgraphics__/graphics/icons/turbo-bike.png",
    icon_size = 64,
    flags = {
      "placeable-neutral",
      "player-creation",
      "placeable-off-grid",
      "not-flammable",
    },
    minable = { mining_time = 1, result = "angels-turbo-bike" },
    max_health = 250,
    corpse = "medium-remnants",
    dying_explosion = "car-explosion",
    energy_per_hit_point = 1,
    resistances = {
      {
        type = "fire",
        percent = 50,
      },
      {
        type = "physical",
        percent = 40,
      },
      --{
      --  type = "impact",
      --  decrease = 10,
      --  percent = 20,
      --},
      {
        type = "explosion",
        percent = 20,
      },
      {
        type = "acid",
        percent = 40,
      },
    },
    collision_box = { { -0.5, -1 }, { 0.5, 1 } },
    selection_box = { { -0.5, -1 }, { 0.5, 1 } },
    effectivity = 0.06,
    braking_power = "100W",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 1,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {0.25, 0.25},
          frequency = 200,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "10kW",
    terrain_friction_modifier = 0.2,
    friction = 0.0046, -- 50 km/h top speed on grass
    light = {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture = {
          filename = "__core__/graphics/light-cone.png",
          flags = {
            "light",
          },
          priority = "extra-high",
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = {
          0,
          -13,
        },
        size = 2,
        intensity = 0.6,
        color = {
          b = 0.3,
          g = 0.77000000000000002,
          r = 0.92000000000000011,
        },
      },
    },
    animation = {
      layers = {
        {
          width = 120,
          height = 96,
          frame_count = 1,
          direction_count = 64,
          shift = { 0, 0 },
          animation_speed = 8,
          max_advance = 0.2,
          stripes = {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/bike/turbo-bike.png",
              height_in_frames = 8,
              width_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/bike/turbo-bike.png",
              height_in_frames = 8,
              width_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/bike/turbo-bike.png",
              height_in_frames = 8,
              width_in_frames = 8,
            },
          },
        },
      },
    },
    --sound_no_fuel = {
    --  {
    --    filename = "__base__/sound/fight/car-no-fuel-1.ogg",
    --    volume = 0.6
    --  }
    --},
    stop_trigger_speed = 0.15,
    --stop_trigger = {
    --  {
    --    type = "play-sound",
    --    sound = {
    --      {
    --        filename = "__base__/sound/car-breaks.ogg",
    --        volume = 0.2
    --      }
    --    },
    --  }
    --},
    impact_category = "metal",
    working_sound = {
      --activate_sound = {
      --  filename = "__base__/sound/car-engine-start.ogg",
      --  volume = 0.8
      --},
      --deactivate_sound = {
      --  filename = "__base__/sound/car-engine-stop.ogg",
      --  volume = 0.8
      --},
      match_speed_to_activity = true,
      use_doppler_shift = false,
      sound = {
        filename = "__angelsexplorationgraphics__/sound/bicycle-squeaky.ogg",
        volume = 0.15,
      },
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume = 0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.015,
    weight = 10,
    inventory_size = 10,
    alert_icon_shift = { 0, -0.40625 },
    damaged_trigger_effect = {
      {
        type = "create-entity",
        entity_name = "spark-explosion",
        damage_type_filters = "fire",
        offset_deviation = {
          { -0.5, -0.5 },
          { 0.5, 0.5 },
        },
        offsets = {
          { 0, 1 },
        },
      },
    },
    mined_sound = {
      filename = "__core__/sound/deconstruct-medium.ogg",
      volume = 0.8,
    },
  },
  --HEAVY TANK
  --{
  --  type = "equipment-grid",
  --  name = "angels-heavy-tank",
  --  width = 10,
  --  height = 10,
  --  equipment_categories = {}
  --},
  {
    type = "item-with-entity-data",
    name = "angels-heavy-tank",
    icon = "__angelsexplorationgraphics__/graphics/icons/heavy-tank-icon.png",
    icon_size = 64,
    flags = {},
    subgroup = "angels-exploration-tank-b",
    order = "a[tank]-a[vanilla]",
    place_result = "angels-heavy-tank",
    stack_size = 1,
  },
  {
    type = "gun",
    name = "angels-heavy-tank-machine-gun",
    icon = "__angelsexplorationgraphics__/graphics/icons/heavy-tank-gun-icon.png",
    icon_size = 64,
    hidden = true,
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters = {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 4,
      movement_slow_down_factor = 0.7,
      shell_particle = {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = { 0, 0 },
        creation_distance = -0.6875,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1,
      },
      projectile_center = { -0.15625, -0.07812 },
      projectile_creation_distance = 1,
      range = 20,
      sound = {
        {
          filename = "__base__/sound/fight/heavy-gunshot-1.ogg",
          volume = 0.4,
        },
        {
          filename = "__base__/sound/fight/heavy-gunshot-2.ogg",
          volume = 0.4,
        },
        {
          filename = "__base__/sound/fight/heavy-gunshot-3.ogg",
          volume = 0.4,
        },
        {
          filename = "__base__/sound/fight/heavy-gunshot-4.ogg",
          volume = 0.4,
        },
      },
    },
    stack_size = 1,
  },
  {
    type = "gun",
    name = "angels-heavy-tank-cannon",
    icon = "__angelsexplorationgraphics__/graphics/icons/heavy-tank-cannon-icon.png",
    icon_size = 64,
    hidden = true,
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters = {
      type = "projectile",
      ammo_categories = { "cannon-shell", "angels-heavy-cannon-shell" },
      cooldown = 120,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 4,
      projectile_center = { 0, 0 },
      range = 40,
      sound = {
        {
          filename = "__angelsexplorationgraphics__/sound/tank-cannon.ogg",
          volume = 1.0,
        },
      },
    },
    stack_size = 5,
  },
  {
    type = "gun",
    name = "angels-heavy-tank-rocket-launcher",
    icon = "__angelsexplorationgraphics__/graphics/icons/heavy-tank-rocket-launcher-icon.png",
    icon_size = 64,
    hidden = true,
    subgroup = "gun",
    order = "d[heavy-tank-rocket-launcher]",
    attack_parameters = {
      type = "projectile",
      ammo_category = "rocket",
      movement_slow_down_factor = 0.8,
      cooldown = 60,
      projectile_creation_distance = 0.6,
      range = 30,
      projectile_center = { 1, 0 },
      sound = {
        {
          filename = "__base__/sound/fight/rocket-launcher.ogg",
          volume = 0.7,
        },
      },
    },
    stack_size = 5,
  },
  {
    type = "car",
    name = "angels-heavy-tank",
    icon = "__angelsexplorationgraphics__/graphics/icons/heavy-tank-icon.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
    minable = { mining_time = 1, result = "angels-heavy-tank" },
    max_health = 5000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 0.5,
    immune_to_tree_impacts = true,
    immune_to_rock_impacts = true,
    resistances = {
      {
        type = "fire",
        decrease = 25,
        percent = 60,
      },
      {
        type = "physical",
        decrease = 25,
        percent = 40,
      },
      {
        type = "impact",
        decrease = 60,
        percent = 70,
      },
      {
        type = "explosion",
        decrease = 25,
        percent = 40,
      },
      {
        type = "acid",
        decrease = 15,
        percent = 30,
      },
    },
    collision_box = { { -1.55, -1.5 }, { 1.55, 3 } },
    selection_box = { { -1.55, -1.5 }, { 1.55, 3 } },
    drawing_box_vertical_extension = 1.5,
    effectivity = 0.7,
    braking_power = "1000kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.75,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "1200kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light = {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture = {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = { -1, -14 },
        size = 2,
        intensity = 0.6,
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture = {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = { 1, -14 },
        size = 2,
        intensity = 0.6,
      },
    },
    animation = {
      layers = {
        {
          width = 256,
          height = 256,
          frame_count = 2,
          direction_count = 64,
          shift = { 0, 0.5 },
          animation_speed = 8,
          max_advance = 1,
          stripes = {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-1.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-2.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-3.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-4.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-5.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-6.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-7.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-8.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
          },
        },
        {
          width = 256,
          height = 256,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = { 0, 0.5 },
          max_advance = 1,
          --line_length = 2,
          stripes = util.multiplystripes(2, {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-mask-4.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-mask-5.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-mask-6.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-mask-7.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-mask-8.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
          }),
        },
        {
          width = 256,
          height = 256,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = { 0, 0.5 },
          max_advance = 1,
          stripes = util.multiplystripes(2, {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-shadow-1.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-shadow-2.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-shadow-3.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-shadow-4.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-shadow-5.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-shadow-6.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-shadow-7.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/base-shadow-8.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
          }),
        },
      },
    },
    turret_animation = {
      layers = {
        {
          width = 288,
          height = 256,
          frame_count = 1,
          direction_count = 64,
          shift = { 0, 0 },
          animation_speed = 8,
          max_advance = 1,
          stripes = {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-1.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-2.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-3.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-4.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-5.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-6.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-7.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-8.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
          },
        },
        {
          width = 256,
          height = 224,
          apply_runtime_tint = true,
          frame_count = 1,
          direction_count = 64,
          shift = { 0, 0 },
          animation_speed = 8,
          max_advance = 1,
          stripes = {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-mask-4.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-mask-5.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-mask-6.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-mask-7.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/tank/turret-mask-8.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
          },
        },
        -- {
        -- filename = "__base__/graphics/entity/tank/turret-shadow.png",
        -- line_length = 8,
        -- width = 95,
        -- height = 67,
        -- frame_count = 1,
        -- draw_as_shadow = true,
        -- direction_count = 64,
        -- shift = {1.70312, 0.640625},
        -- }
      },
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    stop_trigger_speed = 0.2,
    sound_no_fuel = {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6,
      },
    },
    stop_trigger = {
      {
        type = "play-sound",
        sound = {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6,
          },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = {
        filename = "__angelsexplorationgraphics__/sound/heavy-tank-run.ogg",
        volume = 1,
      },
      activate_sound = {
        filename = "__angelsexplorationgraphics__/sound/heavy-tank-start.ogg",
        volume = 1,
      },
      deactivate_sound = {
        filename = "__angelsexplorationgraphics__/sound/heavy-tank-off.ogg",
        volume = 1,
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/fight/tank-door-open.ogg", volume = 0.5 },
    close_sound = { filename = "__base__/sound/fight/tank-door-close.ogg", volume = 0.4 },
    rotation_speed = 0.0035,
    tank_driving = true,
    weight = 30000,
    inventory_size = 100,
    guns = { "angels-heavy-tank-cannon", "angels-heavy-tank-machine-gun", "angels-heavy-tank-rocket-launcher" },
    --equipment_grid = "angels-heavy-tank",
  },
})
