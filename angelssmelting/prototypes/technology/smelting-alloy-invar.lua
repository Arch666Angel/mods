if mods["bobplates"] then
  data:extend({
    --TECH
    {
      type = "technology",
      name = "angels-invar-smelting-1",
      icon = "__angelssmeltinggraphics__/graphics/technology/casting-invar-tech.png",
      icon_size = 256,
      prerequisites = {
        --"angels-metallurgy-2",
        "angels-steel-smelting-1",
        "angels-nickel-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-liquid-molten-invar",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-invar",
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
