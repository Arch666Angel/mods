if mods["bobplates"] then
  data:extend({
    --TECHS
    {
      type = "technology",
      name = "angels-cobalt-steel-smelting-1",
      icon = "__angelssmeltinggraphics__/graphics/technology/casting-cobalt-steel-tech.png",
      icon_size = 256,
      prerequisites = {
        "angels-steel-smelting-1",
        "angels-cobalt-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-liquid-molten-cobalt-steel",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-cobalt-steel",
        },
      },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "c-a",
    },
  })
end
