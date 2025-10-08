data:extend({
  --Personal Weapons
  {
    type = "recipe",
    name = "angels-bio-gun",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 5 },
      --{type="item", name="titanium-plate", amount = 20},
      { type = "item", name = "iron-gear-wheel", amount = 10 },
      { type = "item", name = "copper-plate", amount = 5 },
    },
    results = { { type = "item", name = "angels-bio-gun", amount = 1 } },
  },
  {
    type = "recipe",
    name = "angels-bio-ammo",
    category = "crafting-with-fluid",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 10 },
      --{type="item", name="titanium-plate", amount = 20},
      { type = "item", name = "sulfur", amount = 5 },
      { type = "fluid", name = "crude-oil", amount = 60 },
    },
    results = { { type = "item", name = "angels-bio-ammo", amount = 1 } },
  },
})
