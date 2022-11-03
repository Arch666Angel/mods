data:extend({
  {
    type = "technology",
    name = "angels-fluid-control",
    icon = "__angelspetrochem__/graphics/technology/fluid-splitter-tech.png",
    icon_size = 128,
    prerequisites = {
      "basic-chemistry",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "valve-inspector",
      },
      {
        type = "unlock-recipe",
        recipe = "valve-overflow",
      },
      {
        type = "unlock-recipe",
        recipe = "valve-return",
      },
      {
        type = "unlock-recipe",
        recipe = "valve-underflow",
      },
      {
        type = "unlock-recipe",
        recipe = "valve-converter",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-storage-tank-3",
      },
      -- {
      -- type = "unlock-recipe",
      -- recipe = "fluid-splitter-2-way"
      -- },
      -- {
      -- type = "unlock-recipe",
      -- recipe = "fluid-splitter-3-way"
      -- },
    },
    unit = {
      count = 50,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
})
