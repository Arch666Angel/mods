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
      order = "n",
      inventory_order = "n",
      icon = "__angelsexploration__/graphics/technology/heavy-tank-tech.png",
      icon_size = 128
    },
    {
      type = "item-subgroup",
      name = "angels-physical",
      group = "angels-exploration",
      order = "a"
    },
    {
      type = "item-subgroup",
      name = "angels-fire",
      group = "angels-exploration",
      order = "b"
    },
    {
      type = "item-subgroup",
      name = "angels-explosion",
      group = "angels-exploration",
      order = "c"
    },
    {
      type = "item-subgroup",
      name = "angels-bio",
      group = "angels-exploration",
      order = "d"
    },
    {
      type = "item-subgroup",
      name = "angels-plasma",
      group = "angels-exploration",
      order = "e"
    },
    {
      type = "item-subgroup",
      name = "angels-exploration",
      group = "angels-exploration",
      order = "z"
    },
    {
      type = "item-subgroup",
      name = "angels-turrets",
      group = "angels-exploration",
      order = "z"
    }
  }
)
