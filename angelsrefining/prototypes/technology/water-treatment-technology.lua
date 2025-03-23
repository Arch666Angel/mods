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
  --      recipe = "ground-water-pump"
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
    name = "water-treatment",
    icon = "__angelsrefininggraphics__/graphics/technology/water-treatment.png",
    icon_size = 256,
    prerequisites = {
      mods["angelspetrochem"] and "angels-fluid-control" or "automation-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "ground-water-pump",
      },
      {
        type = "unlock-recipe",
        recipe = "hydro-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "liquifier",
      },
      {
        type = "unlock-recipe",
        recipe = "water-purification",
      },
      {
        type = "unlock-recipe",
        recipe = "water-mineralized",
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
    name = "water-treatment-2",
    icon = "__angelsrefininggraphics__/graphics/technology/water-treatment.png",
    icon_size = 256,
    prerequisites = {
      "slag-processing-1",
      "water-treatment",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "hydro-plant-2",
      },
      {
        type = "unlock-recipe",
        recipe = "yellow-waste-water-purification",
      },
      {
        type = "unlock-recipe",
        recipe = "greenyellow-waste-water-purification",
      },
      {
        type = "unlock-recipe",
        recipe = "green-waste-water-purification",
      },
      {
        type = "unlock-recipe",
        recipe = "red-waste-water-purification",
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
    name = "water-treatment-3",
    icon = "__angelsrefininggraphics__/graphics/technology/water-treatment.png",
    icon_size = 256,
    prerequisites = {
      "water-treatment-2",
      "advanced-circuit",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sea-pump",
      },
      {
        type = "unlock-recipe",
        recipe = "hydro-plant-3",
      },
      {
        type = "unlock-recipe",
        recipe = "salination-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "water-saline",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-salt-dissolving",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-lithium",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-salt",
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
    name = "water-treatment-4",
    icon = "__angelsrefininggraphics__/graphics/technology/water-treatment.png",
    icon_size = 256,
    prerequisites = {
      "water-treatment-3",
      "thermal-water-processing",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "salination-plant-2",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-salt-from-saline",
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
    name = "water-washing-1",
    icon = "__angelsrefininggraphics__/graphics/technology/washing-plant-tech.png",
    icon_size = 128,
    prerequisites = {
      "automation",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "seafloor-pump",
      },
      {
        type = "unlock-recipe",
        recipe = "washing-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "clarifier",
      },
      {
        type = "unlock-recipe",
        recipe = "washing-1",
      },
      {
        type = "unlock-recipe",
        recipe = "washing-2",
      },
      {
        type = "unlock-recipe",
        recipe = "washing-3",
      },
      {
        type = "unlock-recipe",
        recipe = "washing-4",
      },
      {
        type = "unlock-recipe",
        recipe = "washing-5",
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
    name = "water-washing-2",
    icon = "__angelsrefininggraphics__/graphics/technology/washing-plant-tech.png",
    icon_size = 128,
    prerequisites = {
      "water-washing-1",
      "water-treatment",
      "landfill",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "washing-plant-2",
      },
      {
        type = "unlock-recipe",
        recipe = "water-viscous-mud",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-geodes",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-mud-landfill",
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
