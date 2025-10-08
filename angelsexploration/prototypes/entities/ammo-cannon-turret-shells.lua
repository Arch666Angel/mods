data:extend({
  --CANNON TURRET SHELL 1
  {
    type = "projectile",
    name = "cannon-turret-projectile-1",
    flags = { "not-on-map" },
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
            damage = { amount = 40, type = "physical" },
          },
          {
            type = "damage",
            damage = { amount = 10, type = "explosion" },
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
    name = "cannon-turret-shell-1",
    icon = "__angelsexplorationgraphics__/graphics/icons/turret-shell-1.png",
    icon_size = 64,
    flags = {},
    ammo_category = "cannon-shell",
    ammo_type = {
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
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    subgroup = "angels-physical-ba",
    order = "c[ammo]-d[regular-cannon-shells]",
    magazine_size = 4,
    stack_size = 200,
  },
  --CANNON TURRET SHELL 2
  {
    type = "projectile",
    name = "cannon-turret-projectile-2",
    flags = { "not-on-map" },
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
            damage = { amount = 80, type = "physical" },
          },
          {
            type = "damage",
            damage = { amount = 20, type = "explosion" },
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
    name = "cannon-turret-shell-2",
    icon = "__angelsexplorationgraphics__/graphics/icons/turret-shell-2.png",
    icon_size = 64,
    flags = {},
    ammo_category = "cannon-shell",
    ammo_type = {
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
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    subgroup = "angels-physical-ba",
    order = "c[ammo]-e[piercing-cannon-shells]",
    magazine_size = 4,
    stack_size = 200,
  },
  --CANNON TURRET SHELL 3
  {
    type = "projectile",
    name = "cannon-turret-projectile-3",
    flags = { "not-on-map" },
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
            damage = { amount = 200, type = "physical" },
          },
          {
            type = "damage",
            damage = { amount = 50, type = "explosion" },
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
    name = "cannon-turret-shell-3",
    icon = "__angelsexplorationgraphics__/graphics/icons/turret-shell-3.png",
    icon_size = 64,
    flags = {},
    ammo_category = "cannon-shell",
    ammo_type = {
      action = {
        type = "direct",
        action_delivery = {
          type = "projectile",
          projectile = "cannon-turret-projectile-3",
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
    subgroup = "angels-physical-ba",
    order = "c[ammo]-f[uranium-cannon-shells]",
    magazine_size = 4,
    stack_size = 200,
  },
})
