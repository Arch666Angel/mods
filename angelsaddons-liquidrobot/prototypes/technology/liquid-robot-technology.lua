local prerequisites = { "construction-robotics", "logistic-robotics" }
local ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
}

if angelsmods and angelsmods.industries then
  prerequisites = { "cargo-robots" }
  ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
  }
end

data:extend({
  {
    type = "technology",
    name = "liquid-robots",
    icon = "__angelsaddons-liquidrobot__/graphics/technology/bot-tech.png",
    icon_size = 128,
    prerequisites = prerequisites,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "empty-liquid-bot",
      },
      {
        type = "unlock-recipe",
        recipe = "create-dummy-a",
      },
      {
        type = "unlock-recipe",
        recipe = "delete-dummy-a",
      },
      {
        type = "unlock-recipe",
        recipe = "create-dummy-b",
      },
      {
        type = "unlock-recipe",
        recipe = "delete-dummy-b",
      },
      {
        type = "unlock-recipe",
        recipe = "create-dummy-c",
      },
      {
        type = "unlock-recipe",
        recipe = "delete-dummy-c",
      },
      {
        type = "unlock-recipe",
        recipe = "create-dummy-d",
      },
      {
        type = "unlock-recipe",
        recipe = "delete-dummy-d",
      },
    },
    unit = {
      count = 50,
      ingredients = ingredients,
      time = 15,
    },
    order = "c-a",
  },
})
