data:extend(
  {
    --AMMO
    {
      type = "ammo-category",
      name = "cannon-turret"
    },
    {
      type = "ammo-category",
      name = "bio"
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
          icon = "__angelsrefining__/graphics/icons/void.png",
          icon_size = 32,
          scale = 64 / 32 * 0.35,
          shift = {20, -20}
        }
      }
    },
    {
      type = "item-subgroup",
      name = "angels-exploration",
      group = "angels-exploration",
      order = "a"
    },
    {
      type = "item-subgroup",
      name = "angels-exploration-vehicles",
      group = "angels-exploration",
      order = "b"
    },
    {
      type = "item-subgroup",
      name = "angels-physical",
      group = "angels-exploration",
      order = "c"
    },
    {
      type = "item-subgroup",
      name = "angels-fire",
      group = "angels-exploration",
      order = "d"
    },
    {
      type = "item-subgroup",
      name = "angels-explosion",
      group = "angels-exploration",
      order = "e"
    },
    {
      type = "item-subgroup",
      name = "angels-bio",
      group = "angels-exploration",
      order = "f"
    },
    {
      type = "item-subgroup",
      name = "angels-plasma",
      group = "angels-exploration",
      order = "g"
    },
    {
      type = "item-subgroup",
      name = "angels-turrets",
      group = "angels-exploration",
      order = "z"
    }
  }
)
