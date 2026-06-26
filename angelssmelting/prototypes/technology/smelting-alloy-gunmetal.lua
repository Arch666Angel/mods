if mods["bobplates"] then
  data:extend({
    --TECHS
    {
      type = "technology",
      name = "angels-gunmetal-smelting-1",
      icon = "__angelssmeltinggraphics__/graphics/technology/casting-gunmetal-tech.png",
      icon_size = 256,
      prerequisites = {
        "angels-tin-smelting-1",
        "angels-zinc-smelting-1",
        "angels-copper-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-liquid-molten-gunmetal",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-gunmetal",
        },
      },
      unit = {
        count = 150,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "c-a",
    },
  })
end
