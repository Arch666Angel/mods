data:extend({
  {
    type = "recipe",
    name = "angels-cab",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "engine-unit", amount = 20 },
      { type = "item", name = "steel-plate", amount = 75 },
      { type = "item", name = "electronic-circuit", amount = 20 },
      { type = "item", name = "iron-gear-wheel", amount = 25 },
    },
    results = {{ type = "item", name = "angels-cab", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-cab-deploy-charge",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 1 },
    },
    results = {{ type = "item", name = "angels-cab-deploy-charge", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-cab-undeploy-charge",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 1 },
    },
    results = {{ type = "item", name = "angels-cab-undeploy-charge", amount = 1 }},
  },
})
