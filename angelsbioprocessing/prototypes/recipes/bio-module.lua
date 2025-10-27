data:extend({
  {
    type = "recipe",
    name = "angels-bio-yield-module",
    localised_name = { "item-name.angels-bio-yield-module" },
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-crystal-splinter-green", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "electronic-circuit", amount = 5 },
      { type = "item", name = "angels-token-bio", amount = 1 },
    },
    energy_required = 15,
    results = { { type = "item", name = "angels-bio-yield-module", amount = 1 } },
  },
  {
    type = "recipe",
    name = "angels-bio-yield-module-2",
    localised_name = { "item-name.angels-bio-yield-module-2" },
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-bio-yield-module", amount = 4 },
      { type = "item", name = "angels-crystal-shard-green", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "angels-token-bio", amount = 2 },
    },
    energy_required = 30,
    results = { { type = "item", name = "angels-bio-yield-module-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "angels-bio-yield-module-3",
    localised_name = { "item-name.angels-bio-yield-module-3" },
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-bio-yield-module-2", amount = 5 },
      { type = "item", name = "angels-crystal-full-green", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "angels-token-bio", amount = 3 },
    },
    energy_required = 60,
    results = { { type = "item", name = "angels-bio-yield-module-3", amount = 1 } },
  },
})

if mods["bobmodules"] then
  data:extend({
    {
      type = "recipe",
      name = "angels-bio-yield-module-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-bio-yield-module-3", amount = 1 },
        { type = "item", name = "bob-productivity-module-4", amount = 1 },
        { type = "item", name = "bob-pollution-create-module-4", amount = 1 },
        { type = "item", name = "angels-token-bio", amount = 1 },
      },
      energy_required = 15,
      results = {{ type = "item", name = "angels-bio-yield-module-4", amount = 1 }},
    },
    {
      type = "recipe",
      name = "angels-bio-yield-module-5",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-bio-yield-module-4", amount = 1 },
        { type = "item", name = "bob-productivity-module-5", amount = 1 },
        { type = "item", name = "bob-pollution-create-module-5", amount = 1 },
        { type = "item", name = "angels-token-bio", amount = 1 },
      },
      energy_required = 15,
      results = {{ type = "item", name = "angels-bio-yield-module-5", amount = 1 }},
    },
  })
end
