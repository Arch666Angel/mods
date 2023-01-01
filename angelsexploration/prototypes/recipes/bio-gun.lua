data:extend({
  --Personal Weapons
  {
    type = "recipe",
    name = "bio-gun",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 5 },
      --{type="item", name="titanium-plate", amount = 20},
      { type = "item", name = "iron-gear-wheel", amount = 10 },
      { type = "item", name = "copper-plate", amount = 5 },
    },
    result = "bio-gun",
    --icon= "__base__/graphics/icons/flamethrower.png",
    --icon_size=64,
  },
  {
    type = "recipe",
    name = "bio-ammo",
    category = "crafting-with-fluid",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 10 },
      --{type="item", name="titanium-plate", amount = 20},
      { type = "item", name = "sulfur", amount = 5 },
      { type = "fluid", name = "crude-oil", amount = 60 },
    },
    result = "bio-ammo",
    --icon= "__base__/graphics/icons/flamethrower-ammo.png",
    --icon_size=64,
  },
})
