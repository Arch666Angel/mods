data:extend({
  --VEHICLES
  {
    type = "recipe",
    name = "angels-turbo-bike",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 10},
      { type = "item", name = "iron-gear-wheel", amount = 5},
      { type = "item", name = "steel-plate", amount = 3},
    },
    result = "angels-turbo-bike",
  },
  {
    type = "recipe",
    name = "angels-heavy-tank",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 50 },
      --{type="item", name="titanium-plate", amount = 20},
      { type = "item", name = "advanced-circuit", amount = 10 },
      { type = "item", name = "engine-unit", amount = 20 },
    },
    result = "angels-heavy-tank",
  },
})
