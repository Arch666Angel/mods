data:extend(
{
--AMMO
  {
    type = "ammo-category",
    name = "cannon-turret"
  },
--DAMAGE TYPE
  {
    type = "damage-type",
    name = "plasma"
  },
  {
    type = "item-group",
    name = "angels-exploration",
    order = "n",
    inventory_order = "n",
    icon = "__angelsexploration__/graphics/technology/heavy-tank-tech.png",
	icon_size = 128,
  },
  {
    type = "item-subgroup",
    name = "angels-exploration",
	group = "angels-exploration",
	order = "z",
  },
  {
    type = "item-subgroup",
    name = "angels-turrets",
	group = "angels-exploration",
	order = "z",
  },
}
)