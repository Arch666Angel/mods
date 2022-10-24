if angelsmods.industries and angelsmods.industries.components then
  angelsmods.functions.RB.build({
    {
      type = "recipe",
      name = "angels-cab",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "motor-3", amount = 5 },
        { type = "item", name = "mechanical-parts", amount = 10 },
        { type = "item", name = "construction-frame-3", amount = 5 },
        { type = "item", name = "construction-components", amount = 20 },
        { type = "item", name = "circuit-orange-loaded", amount = 2 },
        { type = "item", name = "angels-crawler", amount = 1 },
      },
      result = "angels-cab",
    },
  })
end
