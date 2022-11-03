local enemy_autoplace = require("__base__/prototypes/entity/enemy-autoplace-utils")

data:extend({
  {
    type = "simple-entity-with-force",
    name = "puffer-egg",
    render_layer = "object",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-1-egg.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    order = "s-e-w-f",
    minable = { mining_time = 1, result = "bio-puffer-egg-1" },
    max_health = 100,
    corpse = "small-remnants",
    collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    picture = {
      filename = "__angelsbioprocessing__/graphics/icons/puffer-1-egg.png",
      priority = "extra-high",
      width = 32,
      height = 32,
      shift = { 0, 0 },
    },
  },
  {
    type = "unit-spawner",
    name = "biter-spawner",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-nest.png",
    icon_size = 32,
    flags = { "placeable-player", "placeable-enemy", "not-repairable" },
    max_health = 350,
    order = "b-b-g",
    subgroup = "enemies",
    resistances = {
      {
        type = "physical",
        decrease = 2,
        percent = 15,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 15,
      },
      {
        type = "fire",
        decrease = 3,
        percent = 60,
      },
    },
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0,
        },
      },
      apparent_volume = 2,
    },
    dying_sound = {
      {
        filename = "__base__/sound/creatures/spawner-death-1.ogg",
        volume = 1.0,
      },
      {
        filename = "__base__/sound/creatures/spawner-death-2.ogg",
        volume = 1.0,
      },
    },
    healing_per_tick = 0.02,
    collision_box = { { -3.2, -2.2 }, { 2.2, 2.2 } },
    selection_box = { { -3.5, -2.5 }, { 2.5, 2.5 } },
    pollution_absorbtion_absolute = 20,
    pollution_absorbtion_proportional = 0.01,
    corpse = "biter-spawner-corpse",
    dying_explosion = "blood-explosion-huge",
    max_count_of_owned_units = 7,
    max_friends_around_to_spawn = 5,
    animations = {
      {
        layers = {
          {
            filename = "__angelsbioprocessing__/graphics/entity/bio-refugium/puffer-nest-1-shadow.png",
            width = 192,
            height = 192,
            line_length = 1,
            frame_count = 1,
            shift = def_shift,
          },
          {
            filename = "__angelsbioprocessing__/graphics/entity/bio-refugium/puffer-nest-1.png",
            width = 192,
            height = 192,
            line_length = 1,
            frame_count = 1,
            shift = def_shift,
          },
        },
      },
      {
        layers = {
          {
            filename = "__angelsbioprocessing__/graphics/entity/bio-refugium/puffer-nest-2-shadow.png",
            width = 192,
            height = 192,
            line_length = 1,
            frame_count = 1,
            shift = def_shift,
          },
          {
            filename = "__angelsbioprocessing__/graphics/entity/bio-refugium/puffer-nest-2.png",
            width = 192,
            height = 192,
            line_length = 1,
            frame_count = 1,
            shift = def_shift,
          },
        },
      },
    },
    result_units = {
      { "puffer-egg", { { 0, 0 }, { 1, 1 } } },
    },
    spawning_cooldown = { 360, 150 },
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace = enemy_autoplace.enemy_spawner_autoplace(0),
    call_for_help_radius = 50,
  },
})
