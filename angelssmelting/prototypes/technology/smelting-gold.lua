data:extend(
  {
    {
      type = "technology",
      name = "angels-gold-smelting-1",
      localised_name = {"technology-name.angels-gold-metallurgy"},
      localised_description = {"technology-description.angels-gold-metallurgy"},
      icon = "__angelssmelting__/graphics/technology/casting-gold-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        "ore-floatation",
        "angels-metallurgy-2",
        "chlorine-processing-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "gold-ore-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "molten-gold-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plate-gold"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-wire-gold"
        }
      },
      unit = {
        count = 150,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-gold-smelting-2",
      icon = "__angelssmelting__/graphics/technology/smelting-gold-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "ore-processing-2",
        "angels-gold-smelting-1",
        "angels-nitrogen-processing-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "gold-ore-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-chlorauric-acid"
        },
        {
          type = "unlock-recipe",
          recipe = "processed-gold-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "cathode-gold-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "powder-gold"
        }
      },
      unit = {
        count = 200,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-gold-casting-2",
      icon = "__angelssmelting__/graphics/technology/casting-gold-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-3",
        "strand-casting-2",
        "angels-gold-smelting-1",
        "angels-copper-casting-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-gold-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-gold-converting"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-gold-casting"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roll-gold-converting"
        }
      },
      unit = {
        count = 200,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-gold-smelting-3",
      icon = "__angelssmelting__/graphics/technology/smelting-gold-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-4",
        "ore-processing-3",
        "angels-gold-smelting-2",
        "sodium-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "gold-processed-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "pellet-gold-smelting"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-sodium-gold-cyanide-smelting"
        }
      },
      unit = {
        count = 250,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "production-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-gold-casting-3",
      icon = "__angelssmelting__/graphics/technology/casting-gold-tech.png",
      icon_size = 256, icon_mipmaps = 4,
      upgrade = true,
      prerequisites = {
        --"angels-metallurgy-4",
        "strand-casting-3",
        "angels-gold-casting-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-wire-coil-gold-casting-fast"
        },
        {
          type = "unlock-recipe",
          recipe = "roll-gold-casting-fast"
        }
      },
      unit = {
        count = 250,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "production-science-pack", amount = 1}
        },
        time = 30
      },
      order = "c-a"
    }
  }
)
