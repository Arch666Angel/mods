local cannon_icon_shift = { x = -5.5, y = 2.25 }
data:extend({
  --HEAVY CANNON SHELL
  {
    type = "projectile",
    name = "angels-heavy-cannon-projectile",
    flags = { "not-on-map" },
    collision_box = { { -0.1, -1.1 }, { 0.1, 1.1 } },
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
            damage = { amount = 150, type = "physical" },
          },
          {
            type = "damage",
            damage = { amount = 50, type = "explosion" },
          },
          {
            type = "create-entity",
            entity_name = "explosion",
          },
        },
      },
    },
    final_action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true,
          },
        },
      },
    },
    animation = {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
      shift = { 0.0, 0.0 },
    },
  },
  {
    type = "ammo",
    name = "angels-heavy-cannon-shell",
    icons = {
      {
        icon = "__base__/graphics/icons/cannon-shell.png",
        shift = { -cannon_icon_shift.x, -cannon_icon_shift.y },
      },
      {
        icon = "__base__/graphics/icons/cannon-shell.png",
        shift = { 0, 0 },
      },
      {
        icon = "__base__/graphics/icons/cannon-shell.png",
        shift = { cannon_icon_shift.x, cannon_icon_shift.y },
      },
    },
    icon_size = 64,
    flags = {},
    ammo_category = "cannon-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 2,
        action_delivery = {
          type = "projectile",
          projectile = "angels-heavy-cannon-projectile",
          starting_speed = 1,
          direction_deviation = 0.2,
          range_deviation = 0.1,
          max_range = 40,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    subgroup = "angels-exploration-tank-b",
    order = "c[ammo]-a[basic-shell]",
    stack_size = 200,
  },
  --HEAVY EXPLOSIVE CANNON SHELL
  {
    type = "projectile",
    name = "angels-heavy-explosive-cannon-projectile",
    flags = { "not-on-map" },
    collision_box = { { -0.1, -1.1 }, { 0.1, 1.1 } },
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
            damage = { amount = 135, type = "physical" },
          },
          {
            type = "create-entity",
            entity_name = "explosion",
          },
        },
      },
    },
    final_action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "big-explosion",
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 4,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 150, type = "explosion" },
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion",
                  },
                },
              },
            },
          },
        },
      },
    },
    animation = {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
      shift = { 0.0, 0.0 },
    },
  },
  {
    type = "ammo",
    name = "angels-heavy-explosive-cannon-shell",
    icons = {
      {
        icon = "__base__/graphics/icons/explosive-cannon-shell.png",
        shift = { -cannon_icon_shift.x, -cannon_icon_shift.y },
      },
      {
        icon = "__base__/graphics/icons/explosive-cannon-shell.png",
        shift = { 0, 0 },
      },
      {
        icon = "__base__/graphics/icons/explosive-cannon-shell.png",
        shift = { cannon_icon_shift.x, cannon_icon_shift.y },
      },
    },
    icon_size = 64,
    flags = {},
    ammo_category = "cannon-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 2,
        action_delivery = {
          type = "projectile",
          projectile = "angels-heavy-explosive-cannon-projectile",
          starting_speed = 1,
          direction_deviation = 0.2,
          range_deviation = 0.1,
          max_range = 40,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    subgroup = "angels-exploration-tank-b",
    order = "c[ammo]-b[explosive-shell]",
    stack_size = 200,
  },
  --HEAVY URANIUM CANNON SHELL
  {
    type = "projectile",
    name = "angels-heavy-uranium-cannon-projectile",
    flags = { "not-on-map" },
    collision_box = { { -0.1, -1.1 }, { 0.1, 1.1 } },
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
            damage = { amount = 300, type = "physical" },
          },
          {
            type = "damage",
            damage = { amount = 100, type = "explosion" },
          },
          {
            type = "create-entity",
            entity_name = "uranium-cannon-explosion",
          },
        },
      },
    },
    final_action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true,
          },
        },
      },
    },
    animation = {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
      shift = { 0.0, 0.0 },
    },
  },
  {
    type = "ammo",
    name = "angels-heavy-uranium-cannon-shell",
    icons = {
      {
        icon = "__base__/graphics/icons/uranium-cannon-shell.png",
        shift = { -cannon_icon_shift.x, -cannon_icon_shift.y },
      },
      {
        icon = "__base__/graphics/icons/uranium-cannon-shell.png",
        shift = { 0, 0 },
      },
      {
        icon = "__base__/graphics/icons/uranium-cannon-shell.png",
        shift = { cannon_icon_shift.x, cannon_icon_shift.y },
      },
    },
    icon_size = 64,
    flags = {},
    ammo_category = "cannon-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 2,
        action_delivery = {
          type = "projectile",
          projectile = "angels-heavy-uranium-cannon-projectile",
          starting_speed = 1,
          direction_deviation = 0.2,
          range_deviation = 0.1,
          max_range = 40,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    subgroup = "angels-exploration-tank-b",
    order = "c[ammo]-c[uranium-shell]",
    stack_size = 200,
  },
  --HEAVY EXPLOSIVE URANIUM CANNON SHELL
  {
    type = "projectile",
    name = "angels-heavy-explosive-uranium-cannon-projectile",
    flags = { "not-on-map" },
    collision_box = { { -0.1, -1.1 }, { 0.1, 1.1 } },
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
            damage = { amount = 265, type = "physical" },
          },
          {
            type = "create-entity",
            entity_name = "uranium-cannon-explosion",
          },
        },
      },
    },
    final_action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "uranium-cannon-shell-explosion",
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 4.25,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 160, type = "explosion" },
                  },
                  {
                    type = "create-entity",
                    entity_name = "uranium-cannon-explosion",
                  },
                },
              },
            },
          },
        },
      },
    },
    animation = {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
      shift = { 0.0, 0.0 },
    },
  },
  {
    type = "ammo",
    name = "angels-heavy-explosive-uranium-cannon-shell",
    icons = {
      {
        icon = "__base__/graphics/icons/explosive-uranium-cannon-shell.png",
        shift = { -cannon_icon_shift.x, -cannon_icon_shift.y },
      },
      {
        icon = "__base__/graphics/icons/explosive-uranium-cannon-shell.png",
        shift = { 0, 0 },
      },
      {
        icon = "__base__/graphics/icons/explosive-uranium-cannon-shell.png",
        shift = { cannon_icon_shift.x, cannon_icon_shift.y },
      },
    },
    icon_size = 64,
    flags = {},
    ammo_category = "cannon-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 2,
        action_delivery = {
          type = "projectile",
          projectile = "angels-heavy-explosive-uranium-cannon-projectile",
          starting_speed = 1,
          direction_deviation = 0.2,
          range_deviation = 0.1,
          max_range = 40,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    subgroup = "angels-exploration-tank-b",
    order = "c[ammo]-d[explosive-uranium-shell]",
    stack_size = 200,
  },
})
