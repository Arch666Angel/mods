data:extend({
  --{
  --  type = "technology",
  --  name = "angels-fluid-handling",
  --  localised_name = {"technology-name.fluid-handling"},
  --  localised_description = {"technology-description.fluid-handling"},
  --  icon = "__base__/graphics/technology/fluid-handling.png",
  --  icon_size = 256,
  --  prerequisites = {
  --    "automation-2"
  --  },
  --  effects = {
  --    {
  --      type = "unlock-recipe",
  --      recipe = "angels-ground-water-pump"
  --    }
  --  },
  --  unit = {
  --    count = 50,
  --    ingredients = {
  --      { "automation-science-pack", 1 },
  --      { "logistic-science-pack", 1 }
  --    },
  --    time = 15
  --  },
  --  order = "c-a"
  --},
  {
    type = "technology",
    name = "angels-water-treatment",
    icon = "__angelsrefininggraphics__/graphics/technology/water-treatment.png",
    icon_size = 256,
    prerequisites = {
      mods["angelspetrochem"] and "angels-fluid-control" or "automation-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ground-water-pump",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-hydro-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquifier",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-purified",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-mineralized",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-water-treatment-2",
    icon = "__angelsrefininggraphics__/graphics/technology/water-treatment.png",
    icon_size = 256,
    prerequisites = {
      "angels-slag-processing-1",
      "angels-water-treatment",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-hydro-plant-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-yellow-waste-water-purification",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-greenyellow-waste-water-purification",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-green-waste-water-purification",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-red-waste-water-purification",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-water-treatment-3",
    icon = "__angelsrefininggraphics__/graphics/technology/water-treatment.png",
    icon_size = 256,
    prerequisites = {
      "angels-water-treatment-2",
      "advanced-circuit",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-sea-pump",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-hydro-plant-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-salination-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-saline-from-water",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-salt-dissolving",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-lithium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-salt",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-water-treatment-4",
    icon = "__angelsrefininggraphics__/graphics/technology/water-treatment.png",
    icon_size = 256,
    prerequisites = {
      "angels-water-treatment-3",
      "angels-thermal-water-processing",
      "processing-unit",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-salination-plant-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-salt-from-saline",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-water-washing-1",
    icon = "__angelsrefininggraphics__/graphics/technology/washing-plant-tech.png",
    icon_size = 128,
    prerequisites = {
      "automation",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-seafloor-pump",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-washing-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-clarifier",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-heavy-mud",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-concentrated-mud",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-light-mud",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-thin-mud",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-saline",
      },
    },
    unit = {
      count = 10,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    ignore_tech_cost_multiplier = true,
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-water-washing-2",
    icon = "__angelsrefininggraphics__/graphics/technology/washing-plant-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-water-washing-1",
      "angels-water-treatment",
      "landfill",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-washing-plant-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-viscous-mud",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-geodes",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-mud-landfill",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
})
