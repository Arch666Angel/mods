data:extend(
  {
    --AMMO
    {
      type = "ammo-category",
      name = "cannon-turret"
    },
    {
      type = "ammo-category",
      name = "heavy-cannon-shell"
    },
    {
      type = "ammo-category",
      name = "bio",
      bonus_gui_order = "m-b"
    },
    {
      type = "ammo-category",
      name = "electric"
    },
    --DAMAGE TYPE
    {
      type = "damage-type",
      name = "plasma"
    },
    {
      type = "damage-type",
      name = "bio"
    },
    --SUBGROUPS
    ---------------------------------------------------------------------------
    -- EXPLORATION ------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "item-group",
      name = "angels-exploration",
      order = "la[angels]-f[exploration]-a", -- order la[angels]-f[exploration]-b reserved for warfare
      inventory_order = "la[angels]-f[exploration]-a",
      --icon = "__angelsexploration__/graphics/technology/heavy-tank-tech.png",
      --icon_size = 128
      icons = {
        {
          icon = "__angelsexploration__/graphics/technology/heavy-tank-tech.png",
          icon_size = 128,
          scale = 0.5
        },
        {
          icon = "__angelsexploration__/graphics/icons/void.png",
          icon_size = 32,
          scale = 64 / 32 * 0.35,
          shift = {20, -20}
        }
      }
    },
    {
      type = "item-subgroup",
      name = "angels-physical-aa", -- regular gun
      group = "angels-exploration",
      order = "a-a-a"
    },
    -- order "a-a-b" taken by bobwarfare
    -- order "a-a-c" taken by bobwarfare
    -- order "a-a-d" taken by bobwarfare
    -- order "a-a-e" taken by bobwarfare
    {
      type = "item-subgroup",
      name = "angels-physical-ba", -- shotgun
      group = "angels-exploration",
      order = "a-b-a"
    },
    -- order "a-b-b" taken by bobwarfare
    {
      type = "item-subgroup",
      name = "angels-fire",
      group = "angels-exploration", -- fire stuffs
      order = "b"
    },
    {
      type = "item-subgroup",
      name = "angels-capsules-a", -- capsule stuffs
      group = "angels-exploration",
      order = "c-a"
    },
    {
      type = "item-subgroup",
      name = "angels-explosion-a", -- rocket
      group = "angels-exploration",
      order = "d-a"
    },
    -- order "d-b-a" taken by bobwarfare
    -- order "d-b-b" taken by bobwarfare
    {
      type = "item-subgroup",
      name = "angels-exploration-tank-a",
      group = "angels-exploration",
      order = "d-c-a"
    },
    {
      type = "item-subgroup",
      name = "angels-exploration-tank-b",
      group = "angels-exploration",
      order = "d-c-b"
    },
    {
      type = "item-subgroup",
      name = "angels-electric-a", -- laser
      group = "angels-exploration",
      order = "e-a"
    },
    -- order "e-b" taken by bobwarfare
    -- order "e-c" taken by bobwarfare
    {
      type = "item-subgroup",
      name = "angels-artillery-a", -- artillery
      group = "angels-exploration",
      order = "f-a"
    },
    {
      type = "item-subgroup",
      name = "angels-exploration-troups",
      group = "angels-exploration",
      order = "g"
    },
    {
      type = "item-subgroup",
      name = "angels-exploration-walls",
      group = "angels-exploration",
      order = "h"
    }
  }
)
