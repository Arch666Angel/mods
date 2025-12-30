if mods["bobplates"] then
  data:extend({
    --TECHS
    {
      type = "technology",
      name = "angels-nitinol-smelting-1",
      icon = "__angelssmeltinggraphics__/graphics/technology/casting-nitinol-tech.png",
      icon_size = 256,
      prerequisites = {
        "angels-metallurgy-4",
        "angels-titanium-smelting-1",
        "angels-nickel-smelting-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-liquid-molten-nitinol",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-nitinol",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
      },
      order = "c-a",
    },
  })
end
