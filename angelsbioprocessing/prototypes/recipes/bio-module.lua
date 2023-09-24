data:extend({
  {
    type = "recipe",
    name = "angels-bio-yield-module",
    enabled = false,
    ingredients = {
      { type = "item", name = "crystal-splinter-green", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "electronic-circuit", amount = 5 },
      { type = "item", name = "token-bio", amount = 1 },
    },
    energy_required = 15,
    result = "angels-bio-yield-module",
  },
  {
    type = "recipe",
    name = "angels-bio-yield-module-2",
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-bio-yield-module", amount = 4 },
      { type = "item", name = "crystal-shard-green", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "token-bio", amount = 2 },
    },
    energy_required = 30,
    result = "angels-bio-yield-module-2",
  },
  {
    type = "recipe",
    name = "angels-bio-yield-module-3",
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-bio-yield-module-2", amount = 5 },
      { type = "item", name = "crystal-full-green", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "token-bio", amount = 3 },
    },
    energy_required = 60,
    result = "angels-bio-yield-module-3",
  },
})

if mods["boblibrary"] then
  for _, module_name in pairs({
    "angels-bio-yield-module",
    "angels-bio-yield-module-2",
    "angels-bio-yield-module-3",
    "angels-bio-yield-module-4",
    "angels-bio-yield-module-5",
    "angels-bio-yield-module-6",
    "angels-bio-yield-module-7",
    "angels-bio-yield-module-8"
  }) do
    bobmods.lib.module.exclude_productivity_module(module_name)
  end
end
