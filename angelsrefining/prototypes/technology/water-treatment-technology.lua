data:extend(
  {
    --{
    --  type = "technology",
    --  name = "angels-fluid-handling",
    --  localised_name = {"technology-name.fluid-handling"},
    --  localised_description = {"technology-description.fluid-handling"},
    --  icon = "__base__/graphics/technology/fluid-handling.png",
    --  icon_size = 256,
    --  icon_mipmaps = 4,
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
    --      {type = "item", name = "automation-science-pack", amount = 1},
    --      {type = "item", name = "logistic-science-pack", amount = 1}
    --    },
    --    time = 15
    --  },
    --  order = "c-a"
    --},
    {
      type = "technology",
      name = "water-treatment",
      icon = "__angelsrefining__/graphics/technology/water-treatment.png",
      icon_size = 128,
      prerequisites = {
        mods["angelspetrochem"] and "angels-fluid-control" or "electronics"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "hydro-plant"
        },
        {
          type = "unlock-recipe",
          recipe = "clarifier"
        },
        {
          type = "unlock-recipe",
          recipe = "ground-water-pump"
        },
        {
          type = "unlock-recipe",
          recipe = "water-purification"
        },
        {
          type = "unlock-recipe",
          recipe = "water-mineralized"
        }
      },
      unit = {
        count = 30,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "water-treatment-2",
      icon = "__angelsrefining__/graphics/technology/water-treatment.png",
      icon_size = 128,
      prerequisites = {
        "water-treatment",
        --"ore-crushing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "hydro-plant-2"
        },
        {
          type = "unlock-recipe",
          recipe = "yellow-waste-water-purification"
        },
        {
          type = "unlock-recipe",
          recipe = "greenyellow-waste-water-purification"
        },
        {
          type = "unlock-recipe",
          recipe = "green-waste-water-purification"
        },
        {
          type = "unlock-recipe",
          recipe = "red-waste-water-purification"
        }
      },
      unit = {
        count = 30,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "water-treatment-3",
      icon = "__angelsrefining__/graphics/technology/water-treatment.png",
      icon_size = 128,
      prerequisites = {
        "water-treatment-2",
        "advanced-electronics"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "hydro-plant-3"
        },
        {
          type = "unlock-recipe",
          recipe = "salination-plant"
        },
        {
          type = "unlock-recipe",
          recipe = "water-saline"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-salt-dissolving"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-lithium"
        }
      },
      unit = {
        count = 30,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "water-treatment-4",
      icon = "__angelsrefining__/graphics/technology/water-treatment.png",
      icon_size = 128,
      prerequisites = {
        "water-treatment-3",
        "thermal-water-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "salination-plant-2"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-salt-from-saline"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-salt"
        }
      },
      unit = {
        count = 30,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "water-washing-1",
      icon = "__angelsrefining__/graphics/technology/washing-plant-tech.png",
      icon_size = 128,
      prerequisites = {
        "water-treatment",
        "steel-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "seafloor-pump"
        },
        {
          type = "unlock-recipe",
          recipe = "washing-plant"
        },
        {
          type = "unlock-recipe",
          recipe = "water-viscous-mud"
        },
        {
          type = "unlock-recipe",
          recipe = "washing-1"
        },
        {
          type = "unlock-recipe",
          recipe = "washing-2"
        },
        {
          type = "unlock-recipe",
          recipe = "washing-3"
        },
        {
          type = "unlock-recipe",
          recipe = "washing-4"
        },
        {
          type = "unlock-recipe",
          recipe = "washing-5"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-clay"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-limestone"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sand"
        }
      },
      unit = {
        count = 30,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "water-washing-2",
      icon = "__angelsrefining__/graphics/technology/washing-plant-tech.png",
      icon_size = 128,
      prerequisites = {
        "water-washing-1",
        "water-treatment",
        "landfill"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "washing-plant-2"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-geodes"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-mud-landfill"
        },
      },
      unit = {
        count = 30,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    }
  }
)
