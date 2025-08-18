require("util")

data:extend({
  --CRAWLER
  {
    type = "equipment-grid",
    name = "angels-crawler",
    width = 12,
    height = 12,
    equipment_categories = {
      "angels-energy",
      "angels-repair",
      "angels-heavy-defense",
      "angels-construction",
      "angels-movement",
    },
  },
  {
    type = "item-with-entity-data",
    name = "angels-crawler",
    icon = "__angelsindustriesgraphics__/graphics/icons/crawler-icon.png",
    icon_size = 32,
    subgroup = "angels-vehicle-car",
    order = "b[crawlers]-a",
    place_result = "angels-crawler",
    stack_size = 1,
  },
  {
    type = "car",
    name = "angels-crawler",
    icon = "__angelsindustriesgraphics__/graphics/icons/crawler-icon.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
    minable = { mining_time = 1, result = "angels-crawler" },
    max_health = 3500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 0.03,
    immune_to_tree_impacts = true,
    trash_inventory_size = 20,
    resistances = {
      {
        type = "fire",
        decrease = 10,
        percent = 30,
      },
      {
        type = "physical",
        decrease = 25,
        percent = 40,
      },
      {
        type = "impact",
        decrease = 40,
        percent = 40,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 30,
      },
      {
        type = "acid",
        decrease = 10,
        percent = 30,
      },
    },
    collision_box = { { -1.5, -2.25 }, { 1.5, 2.25 } },
    selection_box = { { -1.5, -2.25 }, { 1.5, 2.25 } },
    effectivity = 0.7,
    braking_power = "800kW",
    energy_source = {
      type = "burner",
      effectivity = 0.75,
      fuel_inventory_size = 3,
      smoke = {
        {
          name = "tank-smoke",
          deviation = { 0.25, 0.25 },
          frequency = 50,
          position = { 0.5, 2 },
          starting_frame = 0,
          starting_frame_deviation = 60,
        },
        {
          name = "tank-smoke",
          deviation = { 0.25, 0.25 },
          frequency = 50,
          position = { -0.5, 2 },
          starting_frame = 0,
          starting_frame_deviation = 60,
        },
      },
    },
    consumption = "1000kW",
    terrain_friction_modifier = 0.2,
    friction = 0.0045,
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
          shift = { 0, 0 },
          animation_speed = 8,
          max_advance = 1,
          stripes = {
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-1.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-2.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-3.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-4.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-5.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-6.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-7.png",
              width_in_frames = 2,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-8.png",
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
          shift = { 0, 0 },
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2, {
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-mask-4.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-mask-5.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-mask-6.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-mask-7.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-mask-8.png",
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
          shift = { 0, 0 },
          max_advance = 1,
          stripes = util.multiplystripes(2, {
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-shadow-1.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-shadow-2.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-shadow-3.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-shadow-4.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-shadow-5.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-shadow-6.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-shadow-7.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsindustriesgraphics__/graphics/entity/crawler/base-shadow-8.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
          }),
        },
      },
    },
    stop_trigger_speed = 0.1,
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
    impact_speed_to_volume_ratio = 4.0,
    working_sound = {
      sound = {
        filename = "__angelsindustriesgraphics__/sound/crawler-run.ogg",
        volume = 1,
      },
      activate_sound = {
        filename = "__angelsindustriesgraphics__/sound/crawler-start.ogg",
        volume = 1,
      },
      deactivate_sound = {
        filename = "__angelsindustriesgraphics__/sound/crawler-off.ogg",
        volume = 1,
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume = 0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0075,
    tank_driving = false,
    weight = 20000,
    inventory_size = 768,
    equipment_grid = "angels-crawler",
  },
})
