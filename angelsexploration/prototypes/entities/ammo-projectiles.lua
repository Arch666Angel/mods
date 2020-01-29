data:extend(
  {
    --CANNON SHELLS
    --TURRET
    {
      type = "projectile",
      name = "cannon-turret-projectile-1",
      flags = {"not-on-map"},
      --collision_box = {{-0.1, -1.1}, {0.1, 1.1}},
      acceleration = 0,
      piercing_damage = 10,
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = {amount = 40, type = "physical"}
            },
            {
              type = "damage",
              damage = {amount = 10, type = "explosion"}
            }
          }
        }
      },
      final_action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "create-entity",
              entity_name = "small-scorchmark",
              check_buildability = true
            }
          }
        }
      },
      animation = {
        filename = "__base__/graphics/entity/bullet/bullet.png",
        frame_count = 1,
        width = 3,
        height = 50,
        priority = "high",
        shift = {0.0, 0.0}
      }
    },
    {
      type = "ammo",
      name = "cannon-turret-shell-1",
      icon = "__angelsexploration__/graphics/icons/turret-shell-1.png",
      icon_size = 32,
      flags = {},
      ammo_type = {
        category = "cannon-turret",
        action = {
          type = "direct",
          action_delivery = {
            type = "projectile",
            projectile = "cannon-turret-projectile-1",
            starting_speed = 1,
            direction_deviation = 0.2,
            range_deviation = 0.1,
            max_range = 40,
            source_effects = {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
            }
          }
        }
      },
      subgroup = "angels-turrets",
      order = "d",
      magazine_size = 4,
      stack_size = 200
    },
    {
      type = "projectile",
      name = "cannon-turret-projectile-2",
      flags = {"not-on-map"},
      --collision_box = {{-0.1, -1.1}, {0.1, 1.1}},
      acceleration = 0,
      piercing_damage = 10,
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = {amount = 80, type = "physical"}
            },
            {
              type = "damage",
              damage = {amount = 20, type = "explosion"}
            }
          }
        }
      },
      final_action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "create-entity",
              entity_name = "small-scorchmark",
              check_buildability = true
            }
          }
        }
      },
      animation = {
        filename = "__base__/graphics/entity/bullet/bullet.png",
        frame_count = 1,
        width = 3,
        height = 50,
        priority = "high",
        shift = {0.0, 0.0}
      }
    },
    {
      type = "ammo",
      name = "cannon-turret-shell-2",
      icon = "__angelsexploration__/graphics/icons/turret-shell-2.png",
      icon_size = 32,
      flags = {},
      ammo_type = {
        category = "cannon-turret",
        action = {
          type = "direct",
          action_delivery = {
            type = "projectile",
            projectile = "cannon-turret-projectile-2",
            starting_speed = 1,
            direction_deviation = 0.2,
            range_deviation = 0.1,
            max_range = 40,
            source_effects = {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
            }
          }
        }
      },
      subgroup = "angels-turrets",
      order = "d",
      magazine_size = 4,
      stack_size = 200
    },
    --TANK
    {
      type = "projectile",
      name = "heavy-cannon-projectile",
      flags = {"not-on-map"},
      collision_box = {{-0.1, -1.1}, {0.1, 1.1}},
      acceleration = 0,
      direction_only = true,
      piercing_damage = 300,
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = {amount = 150, type = "physical"}
            },
            {
              type = "damage",
              damage = {amount = 50, type = "explosion"}
            }
          }
        }
      },
      final_action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "create-entity",
              entity_name = "small-scorchmark",
              check_buildability = true
            }
          }
        }
      },
      animation = {
        filename = "__base__/graphics/entity/bullet/bullet.png",
        frame_count = 1,
        width = 3,
        height = 50,
        priority = "high",
        shift = {0.0, 0.0}
      }
    },
    {
      type = "ammo",
      name = "heavy-cannon-shell",
      icon = "__base__/graphics/icons/cannon-shell.png",
      icon_size = 32,
      flags = {},
      ammo_type = {
        category = "cannon-shell",
        target_type = "direction",
        action = {
          type = "direct",
          repeat_count = 2,
          action_delivery = {
            type = "projectile",
            projectile = "heavy-cannon-projectile",
            starting_speed = 1,
            direction_deviation = 0.2,
            range_deviation = 0.1,
            max_range = 40,
            source_effects = {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
            }
          }
        }
      },
      subgroup = "angels-exploration",
      order = "d[heavy-cannon-shell]",
      stack_size = 200
    },
    --BIO WEAPONS
    {
      type = "sticker",
      name = "bio-slowdown-sticker",
      --icon = "__base__/graphics/icons/slowdown-sticker.png",
      icon_size = 32,
      flags = {},
      animation = {
        filename = "__base__/graphics/entity/slowdown-sticker/slowdown-sticker.png",
        priority = "extra-high",
        width = 11,
        height = 11,
        frame_count = 13,
        animation_speed = 0.4
      },
      duration_in_ticks = 30 * 60,
      target_movement_modifier = 0.5
    },
    {
      type = "corpse",
      name = "bio-splash",
      flags = {"not-on-map"},
      time_before_removed = 60 * 30,
      final_render_layer = "corpse",
      splash = {
        {
          filename = "__angelsexploration__/graphics/entity/bio-projectile/splash-1.png",
          line_length = 5,
          width = 199,
          height = 159,
          frame_count = 20,
          shift = {0.484375, -0.171875}
        },
        {
          filename = "__angelsexploration__/graphics/entity/bio-projectile/splash-2.png",
          line_length = 5,
          width = 238,
          height = 157,
          frame_count = 20,
          shift = {0.8125, -0.15625}
        },
        {
          filename = "__angelsexploration__/graphics/entity/bio-projectile/splash-3.png",
          line_length = 5,
          width = 240,
          height = 162,
          frame_count = 20,
          shift = {0.71875, -0.09375}
        },
        {
          filename = "__angelsexploration__/graphics/entity/bio-projectile/splash-4.png",
          line_length = 5,
          width = 241,
          height = 146,
          frame_count = 20,
          shift = {0.703125, -0.375}
        }
      },
      splash_speed = 0.03
    },
    {
      type = "stream",
      name = "bio-weapon-stream",
      flags = {"not-on-map"},
      stream_light = {intensity = 1, size = 4},
      ground_light = {intensity = 0.8, size = 4},
      smoke_sources = {
        {
          name = "soft-fire-smoke",
          frequency = 0.05, --0.25,
          position = {0.0, 0}, -- -0.8},
          starting_frame_deviation = 60
        }
      },
      particle_buffer_size = 90,
      particle_spawn_interval = 6,
      particle_spawn_timeout = 24,
      particle_vertical_acceleration = 0.005 * 0.60,
      particle_horizontal_speed = 0.2 * 0.75 * 1.5,
      particle_horizontal_speed_deviation = 0.005 * 0.70,
      particle_start_alpha = 0.5,
      particle_end_alpha = 1,
      particle_start_scale = 0.2,
      particle_loop_frame_count = 3,
      particle_fade_out_threshold = 0.9,
      particle_loop_exit_threshold = 0.25,
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "play-sound",
                sound = {
                  {
                    filename = "__base__/sound/creatures/projectile-acid-burn-1.ogg",
                    volume = 0.8
                  },
                  {
                    filename = "__base__/sound/creatures/projectile-acid-burn-2.ogg",
                    volume = 0.8
                  },
                  {
                    filename = "__base__/sound/creatures/projectile-acid-burn-long-1.ogg",
                    volume = 0.8
                  },
                  {
                    filename = "__base__/sound/creatures/projectile-acid-burn-long-2.ogg",
                    volume = 0.8
                  }
                }
              },
              {
                type = "create-entity",
                entity_name = "bio-splash"
              },
              {
                type = "damage",
                damage = {amount = 5, type = "bio"}
              }
            }
          }
        },
        {
          type = "area",
          radius = 2.5,
          --repeat_count = 2,
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "create-sticker",
                sticker = "bio-slowdown-sticker"
              },
              {
                type = "damage",
                damage = {amount = 10, type = "bio"},
                apply_damage_to_trees = false
              }
            }
          }
        }
      },
      spine_animation = {
        filename = "__angelsexploration__/graphics/entity/bio-projectile/bio-projectile.png",
        line_length = 5,
        width = 16,
        height = 18,
        frame_count = 33,
        priority = "high",
        blend_mode = "additive",
        axially_symmetrical = false,
        direction_count = 1,
        animation_speed = 2,
        shift = {0, 0}
      },
      shadow = {
        filename = "__base__/graphics/entity/acid-projectile/acid-projectile-shadow.png",
        line_length = 15,
        width = 22,
        height = 84,
        frame_count = 15,
        priority = "high",
        shift = {-0.09, 0.395}
      },
      particle = {
        filename = "__angelsexploration__/graphics/entity/blank.png",
        priority = "extra-high",
        width = 1,
        height = 1,
        frame_count = 1,
        line_length = 1
      }
    },
    {
      type = "ammo",
      name = "bio-ammo",
      icon = "__base__/graphics/icons/flamethrower-ammo.png",
      icon_size = 32,
      flags = {},
      ammo_type = {
        {
          source_type = "default",
          category = "bio",
          target_type = "position",
          clamp_position = true,
          action = {
            type = "direct",
            action_delivery = {
              type = "stream",
              stream = "bio-weapon-stream",
              max_length = 15,
              duration = 160
            }
          }
        }
        -- {
        -- source_type = "vehicle",
        -- consumption_modifier = 1.125,
        -- category = "flamethrower",
        -- target_type = "position",
        -- clamp_position = true,

        -- action =
        -- {
        -- type = "direct",
        -- action_delivery =
        -- {
        -- type = "stream",
        -- stream = "tank-flamethrower-fire-stream",
        -- max_length = 9,
        -- duration = 160,
        -- }
        -- }
        -- }
      },
      magazine_size = 100,
      subgroup = "ammo",
      order = "e[flamethrower]",
      stack_size = 100
    }
    --ROCKETS
    -- {
    -- type = "projectile",
    -- name = "tac-nuc-rocket",
    -- flags = {"not-on-map"},
    -- acceleration = 0.005,
    -- action =
    -- {
    -- type = "direct",
    -- action_delivery =
    -- {
    -- type = "instant",
    -- target_effects =
    -- {
    -- {
    -- type = "create-entity",
    -- entity_name = "explosion"
    -- },
    -- {
    -- type = "nested-result",
    -- action =
    -- {
    -- type = "area",
    -- perimeter = 20,
    -- action_delivery =
    -- {
    -- type = "instant",
    -- target_effects =
    -- {
    -- {
    -- type = "damage",
    -- damage = {amount = 200, type = "explosion"}
    -- },
    -- {
    -- type = "create-entity",
    -- entity_name = "explosion"
    -- }
    -- }
    -- }
    -- },
    -- }
    -- }
    -- }
    -- },
    -- light = {intensity = 0.5, size = 4},
    -- animation =
    -- {
    -- filename = "__base__/graphics/entity/rocket/rocket.png",
    -- frame_count = 8,
    -- line_length = 8,
    -- width = 9,
    -- height = 35,
    -- shift = {0, 0},
    -- priority = "high"
    -- },
    -- shadow =
    -- {
    -- filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
    -- frame_count = 1,
    -- width = 7,
    -- height = 24,
    -- priority = "high",
    -- shift = {0, 0}
    -- },
    -- smoke =
    -- {
    -- {
    -- name = "smoke-fast",
    -- deviation = {0.15, 0.15},
    -- frequency = 1,
    -- position = {0, -1},
    -- slow_down_factor = 1,
    -- starting_frame = 3,
    -- starting_frame_deviation = 5,
    -- starting_frame_speed = 0,
    -- starting_frame_speed_deviation = 5
    -- }
    -- }
    -- },
    -- {
    -- type = "ammo",
    -- name = "tac-nuc-rocket",
    -- icon = "__base__/graphics/icons/explosive-rocket.png",
    -- flags = {"goes-to-main-inventory"},
    -- ammo_type =
    -- {
    -- category = "rocket",
    -- action =
    -- {
    -- type = "direct",
    -- action_delivery =
    -- {
    -- type = "projectile",
    -- projectile = "tac-nuc-rocket",
    -- starting_speed = 0.1,
    -- source_effects =
    -- {
    -- type = "create-entity",
    -- entity_name = "explosion-hit"
    -- }
    -- }
    -- }
    -- },
    -- subgroup = "ammo",
    -- order = "d[rocket-launcher]-b[explosive]",
    -- stack_size = 200
    -- },
  }
)
