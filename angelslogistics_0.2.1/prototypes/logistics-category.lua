data:extend(
{
  {
    type = "recipe-category",
    name = "bob-logistics",
  },
  {
    type = "item-group",
    name = "angels-logistics",
    order = "q",
    inventory_order = "q",
    icon = "__angelslogistics__/graphics/item-group/cargo-roboport-group.png",
	icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "angels-loader",
	group = "angels-logistics",
	order = "a",
  },
  {
    type = "item-subgroup",
    name = "angels-cargo-bots",
	group = "angels-logistics",
	order = "b",
  },
  {
    type = "item-subgroup",
    name = "angels-vehicles",
	group = "angels-logistics",
	order = "c",
  },
  {
    type = "item-subgroup",
    name = "angels-crawler-train",
	group = "angels-logistics",
	order = "d",
  },
  }
  )
