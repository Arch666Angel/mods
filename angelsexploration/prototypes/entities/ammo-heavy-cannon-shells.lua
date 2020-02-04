local cannon_icon_shift = { x = -5.0, y = 2.5 }
data:extend(
{
  --TANK CANNON SHELLS
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
    icons = {
      {
        icon = "__base__/graphics/icons/cannon-shell.png",
        shift = {-cannon_icon_shift.x, -cannon_icon_shift.y}
      },
      {
        icon = "__base__/graphics/icons/cannon-shell.png",
        shift = {0, 0}
      },
      {
        icon = "__base__/graphics/icons/cannon-shell.png",
        shift = {cannon_icon_shift.x, cannon_icon_shift.y}
      },
    },
    icon_size = 64,
    icon_mipmaps = 4,
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
    subgroup = "angels-explosion-b",
    order = "c[basic-ammo]-b[heavy]-a[basic-rounds]",
    stack_size = 200
  },
}
)