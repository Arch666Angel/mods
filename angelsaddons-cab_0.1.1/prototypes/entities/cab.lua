require ("util")

data:extend(
{
--CAB
  {
    type = "equipment-grid",
    name = "angels-cab",
    width = 24,
    height = 12,
    equipment_categories = {"angels-void"}        --"angels-energy", "angels-repair", "angels-heavy-defense", "angels-construction", "angels-movement"
  },
  {
    type = "item-with-entity-data",
    name = "angels-cab",
    icon = "__angelsaddons-cab__/graphics/icons/cab-icon.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "angels-cab",
    order = "a",
    place_result = "angels-cab",
    stack_size = 1
  },
  {
    type = "gun",
    name = "angels-cab-deploy",
    icon = "__angelsaddons-cab__/graphics/icons/deploy.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "angels-cab-deploy",
      cooldown = 100,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 4,
      projectile_center = {0, 0},
      range = 5,
      -- sound =
      -- {
        -- {
          -- filename = "__angelsexploration__/sound/tank-cannon.ogg",
          -- volume = 1.0
        -- }
      -- },
    },
    stack_size = 1
  },
  {
    type = "gun",
    name = "angels-cab-undeploy",
    icon = "__angelsaddons-cab__/graphics/icons/undeploy.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "angels-cab-undeploy",
      cooldown = 100,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 4,
      projectile_center = {0, 0},
      range = 5,
      -- sound =
      -- {
        -- {
          -- filename = "__angelsexploration__/sound/tank-cannon.ogg",
          -- volume = 1.0
        -- }
      -- },
    },
    stack_size = 1
  },
  {
    type = "car",
    name = "angels-cab",
    icon = "__angelsaddons-cab__/graphics/icons/cab-icon.png",
    icon_size = 32,
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "angels-cab"},
    max_health = 5000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    immune_to_tree_impacts = true,
    energy_per_hit_point = 0.1,
    rotation_speed = 0.0035,
    tank_driving = true,
    weight = 20000,
    inventory_size = 768,
    guns = {"angels-cab-deploy", "angels-cab-undeploy"},
    equipment_grid = "angels-cab",
    resistances =
    {
      {
        type = "fire",
        decrease = 10,
        percent = 30
      },
      {
        type = "physical",
        decrease = 25,
        percent = 40
      },
      {
        type = "impact",
        decrease = 40,
        percent = 40
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 30
      }
    },
    collision_box = {{-1.5, -2.25}, {1.5, 2.25}},
    selection_box = {{-1.5, -2.25}, {1.5, 2.25}},
    effectivity = 0.7,
    braking_power = "1000kW",
    burner =
    {
      effectivity = 0.75,
      fuel_inventory_size = 3,
      -- smoke =
      -- {
        -- {
          -- name = "tank-smoke",
          -- deviation = {0.25, 0.25},
          -- frequency = 50,
          -- position = {0.5, 2},
          -- starting_frame = 0,
          -- starting_frame_deviation = 60
        -- },
        -- {
          -- name = "tank-smoke",
          -- deviation = {0.25, 0.25},
          -- frequency = 50,
          -- position = {-0.5, 2},
          -- starting_frame = 0,
          -- starting_frame_deviation = 60
        -- }
      --}
    },
    consumption = "1400kW",
    terrain_friction_modifier = 0.2,
    friction = 0.01,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-1, -14},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {1, -14},
        size = 2,
        intensity = 0.6
      }
    },
    animation =
    {
      layers =
      {
        {
          width = 256,
          height = 256,
          frame_count = 2,
          direction_count = 64,
          shift = {0, 0},
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
            {
             filename = "__angelsaddons-cab__/graphics/entity/cab/base-1.png",
             width_in_frames = 2,
             height_in_frames = 8,
            },
            {
             filename = "__angelsaddons-cab__/graphics/entity/cab/base-2.png",
             width_in_frames = 2,
             height_in_frames = 8,
            },
            {
             filename = "__angelsaddons-cab__/graphics/entity/cab/base-3.png",
             width_in_frames = 2,
             height_in_frames = 8,
            },
            {
             filename = "__angelsaddons-cab__/graphics/entity/cab/base-4.png",
             width_in_frames = 2,
             height_in_frames = 8,
            },
            {
             filename = "__angelsaddons-cab__/graphics/entity/cab/base-5.png",
             width_in_frames = 2,
             height_in_frames = 8,
            },
            {
             filename = "__angelsaddons-cab__/graphics/entity/cab/base-6.png",
             width_in_frames = 2,
             height_in_frames = 8,
            },
            {
             filename = "__angelsaddons-cab__/graphics/entity/cab/base-7.png",
             width_in_frames = 2,
             height_in_frames = 8,
            },
            {
             filename = "__angelsaddons-cab__/graphics/entity/cab/base-8.png",
             width_in_frames = 2,
             height_in_frames = 8,
            }
          }
        },
        {
          width = 256,
          height = 256,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {0, 0},
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__angelsaddons-cab__/graphics/entity/cab/base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsaddons-cab__/graphics/entity/cab/base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsaddons-cab__/graphics/entity/cab/base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsaddons-cab__/graphics/entity/cab/base-mask-4.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsaddons-cab__/graphics/entity/cab/base-mask-5.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsaddons-cab__/graphics/entity/cab/base-mask-6.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsaddons-cab__/graphics/entity/cab/base-mask-7.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsaddons-cab__/graphics/entity/cab/base-mask-8.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
          })
        },
        {
          width = 256,
          height = 256,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {0, 0},
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
           {
            filename = "__angelsaddons-cab__/graphics/entity/cab/base-shadow-1.png",
            width_in_frames = 1,
            height_in_frames = 8,
           },
           {
            filename = "__angelsaddons-cab__/graphics/entity/cab/base-shadow-2.png",
            width_in_frames = 1,
            height_in_frames = 8,
           },
           {
            filename = "__angelsaddons-cab__/graphics/entity/cab/base-shadow-3.png",
            width_in_frames = 1,
            height_in_frames = 8,
           },
           {
            filename = "__angelsaddons-cab__/graphics/entity/cab/base-shadow-4.png",
            width_in_frames = 1,
            height_in_frames = 8,
           },
           {
            filename = "__angelsaddons-cab__/graphics/entity/cab/base-shadow-5.png",
            width_in_frames = 1,
            height_in_frames = 8,
           },
           {
            filename = "__angelsaddons-cab__/graphics/entity/cab/base-shadow-6.png",
            width_in_frames = 1,
            height_in_frames = 8,
           },
           {
            filename = "__angelsaddons-cab__/graphics/entity/cab/base-shadow-7.png",
            width_in_frames = 1,
            height_in_frames = 8,
           },
           {
            filename = "__angelsaddons-cab__/graphics/entity/cab/base-shadow-8.png",
            width_in_frames = 1,
            height_in_frames = 8,
           }
          })
        }
      }
    },
    stop_trigger_speed = 0.1,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.1;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__angelsaddons-cab__/sound/cab-run.ogg",
        volume = 1
      },
      activate_sound =
      {
        filename = "__angelsaddons-cab__/sound/cab-start.ogg",
        volume = 1
      },
      deactivate_sound =
      {
        filename = "__angelsaddons-cab__/sound/cab-off.ogg",
        volume = 1
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
  },
  {
    type = "ammo",
    name = "angels-cab-deploy-charge",
    icon = "__angelsaddons-cab__/graphics/icons/deploy.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "angels-cab-deploy",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "angels-cab-deploy",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 5,
          --min_range = 5,
          --[[
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          }
          ]]--
        }
      }
    },
    subgroup = "ammo",
    order = "d[cannon-shell]-a[basic]",
    stack_size = 200
  },
  {
    type = "ammo",
    name = "angels-cab-undeploy-charge",
    icon = "__angelsaddons-cab__/graphics/icons/undeploy.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "angels-cab-undeploy",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "angels-cab-undeploy",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 5,
          --min_range = 5,
          --[[
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          }
          ]]--
        }
      }
    },
    subgroup = "ammo",
    order = "d[cannon-shell]-a[basic]",
    stack_size = 200
  },
  {
    type = "projectile",
    name = "angels-cab-deploy",
    flags = {"not-on-map"},
    collision_box = {{-0.3, -1.1}, {0.3, 1.1}},
    acceleration = 0,
    direction_only = true,
    --piercing_damage = 0,
    --[[
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = {amount = 200 , type = "physical"}
          },
          {
            type = "damage",
            damage = {amount = 100 , type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "explosion"
          }
        }
      }
    },
    ]]--
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
          {
            type = "create-entity",
            entity_name = "angels-cab-deploy-trigger",
            check_buildability = true,
            trigger_created_entity = true,
          }
        }
      }
    },
    animation =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "low"
    }
  },
  {
    type = "projectile",
    name = "angels-cab-undeploy",
    flags = {"not-on-map"},
    collision_box = {{-0.3, -1.1}, {0.3, 1.1}},
    acceleration = 0,
    direction_only = true,
    --piercing_damage = 0,
    --[[
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = {amount = 200 , type = "physical"}
          },
          {
            type = "damage",
            damage = {amount = 100 , type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "explosion"
          }
        }
      }
    },
    ]]--
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
          {
            type = "create-entity",
            entity_name = "angels-cab-undeploy-trigger",
            check_buildability = true,
            trigger_created_entity = true,
          }
        }
      }
    },
    animation =
    {
      filename = "__core__/graphics/empty.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "low"
    }
  },
  {
    type = "simple-entity",
    name = "angels-cab-deploy-trigger",
    icon = "__angelsaddons-cab__/graphics/icons/cab-icon.png",
    icon_size = 32,
    flags = {"not-blueprintable", "not-deconstructable", "not-on-map", "hide-alt-info"},
    picture =
    {
      filename = "__core__/graphics/empty.png",
      priority = "low",
      width = 1,
      height = 1,
    },
  },
  {
    type = "simple-entity",
    name = "angels-cab-undeploy-trigger",
    icon = "__angelsaddons-cab__/graphics/icons/cab-icon.png",
    icon_size = 32,
    flags = {"not-blueprintable", "not-deconstructable", "not-on-map", "hide-alt-info"},
    picture =
    {
      filename = "__core__/graphics/empty.png",
      priority = "low",
      width = 1,
      height = 1,
    },
  },
  {
    type = "electric-pole",
    name = "angels-cab-electric-pole",
    icon = "__angelsaddons-cab__/graphics/icons/cab-icon.png",
    icon_size = 32,
    flags = {"not-blueprintable", "not-deconstructable", "not-on-map", "hide-alt-info"},
    --minable = {hardness = 0.2, mining_time = 0.5, result = "medium-electric-pole"},
    max_health = 200,
    corpse = "small-remnants",
    track_coverage_during_build_by_moving = false,
    --fast_replaceable_group = "electric-pole",
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    collision_mask = {},
    --selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
    maximum_wire_distance = .25,
    supply_area_distance = 5.5,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      filename = "__core__/graphics/empty.png",
      priority = "low",
      width = 1,
      height = 1,
      direction_count = 1,
      --shift = {1.4, -1.0}
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {2.55, 0.4},
          green = {2.0, 0.4},
          red = {3.05, 0.4}
        },
        wire =
        {
          copper = {-0.03125, -2.46875},
          green = {-0.34375, -2.46875},
          red = {0.25, -2.46875}
        }
      },
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    }
  },
  {
    type = "electric-energy-interface",
    name = "angels-cab-energy-interface",
    icon = "__angelsaddons-cab__/graphics/icons/cab-icon.png",
    icon_size = 32,
    flags = {"not-blueprintable", "not-deconstructable", "not-on-map", "hide-alt-info"},
    enable_gui = false,
    allow_copy_paste = false,
    --minable = {hardness = 0.2, mining_time = 1, result = energyInterfaceItem.name},
    max_health = 50,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    collision_mask = {},
    --selection_box = {{-0.35, -0.35}, {0.35, 0.35}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "100MJ",
      usage_priority = "primary-input",
      input_flow_limit = "0kW",
      output_flow_limit = "500kW",
      drain = "0kW",

      render_no_network_icon = false,
      render_no_power_icon = false,
    },
    energy_production = "0kW",
    energy_consumption = "0kW",
    picture =
    {
      filename = "__core__/graphics/empty.png",
      priority = "low",
      width = 1,
      height = 1,
    },
    working_sound = nil,
  },
}
)
