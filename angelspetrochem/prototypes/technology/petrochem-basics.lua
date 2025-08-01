data:extend({
  {
    type = "technology",
    name = "angels-fluid-control",
    icon = "__angelspetrochemgraphics__/graphics/technology/fluid-splitter-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-basic-chemistry",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "valve-converter",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-storage-tank-3",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
})
