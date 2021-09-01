data:extend(
  {
    -- FISH
    {
      type = "technology",
      name = "bio-refugium-fish-1",
      icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-fish-tech.png",
      icon_size = 128,
      upgrade = true,
      order = "c-a",
      prerequisites = {
        "bio-nutrient-paste",
        "water-treatment-3",
        --"angels-advanced-chemistry-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bio-refugium-fish"
        },
        {
          type = "unlock-recipe",
          recipe = "liquid-fish-atmosphere"
        },
        {
          type = "unlock-recipe",
          recipe = "fish-keeping-0"
        },
        {
          type = "unlock-recipe",
          recipe = "fish-keeping-1"
        },
        {
          type = "unlock-recipe",
          recipe = "fish-keeping-2"
        },
        {
          type = "unlock-recipe",
          recipe = "fish-keeping-3"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "bio-refugium-fish-2",
      icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-fish-tech.png",
      icon_size = 128,
      upgrade = true,
      order = "c-a",
      prerequisites = {
        "bio-refugium-fish-1",
        "bio-refugium-butchery-1",
        "bio-processing-green"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "fish-breeding-0"
        },
        {
          type = "unlock-recipe",
          recipe = "fish-breeding-1"
        },
        {
          type = "unlock-recipe",
          recipe = "fish-breeding-2"
        },
        {
          type = "unlock-recipe",
          recipe = "fish-breeding-3"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 30
      }
    },
    -- PUFFER
    {
      type = "technology",
      name = "bio-refugium-hatchery",
      icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-puffer-hatchery-tech.png",
      icon_size = 160,
      order = "c-a",
      prerequisites = {
        "gardens",
        "optics",
        "logistic-science-pack"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bio-hatchery"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-egg-1"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-egg-2"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-egg-3"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-egg-4"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-egg-5"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "token-bio", amount = 1}
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "bio-refugium-puffer-1",
      icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-puffer-breeding-tech.png",
      icon_size = 128,
      upgrade = true,
      order = "c-a",
      prerequisites = {
        "bio-refugium-hatchery",
        --"bio-refugium-fish-1"
        "bio-nutrient-paste",
        "angels-sulfur-processing-2",
        "angels-nitrogen-processing-1",
        "advanced-electronics",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bio-refugium-puffer"
        },
        {
          type = "unlock-recipe",
          recipe = "gas-puffer-atmosphere"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-puffing-1"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-puffing-2"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-puffing-3"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-puffing-4"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-puffing-5"
        }
      },
      unit = {
        count = 100,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          --{type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "bio-refugium-puffer-2",
      icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-puffer-breeding-tech.png",
      icon_size = 128,
      upgrade = true,
      order = "c-a",
      prerequisites = {
        "bio-refugium-puffer-1",
        "angels-advanced-chemistry-3"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "puffer-breeding-1"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-breeding-2"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-breeding-3"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-breeding-4"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-breeding-5"
        }
      },
      unit = {
        count = 100,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "bio-refugium-puffer-3",
      icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-puffer-breeding-tech.png",
      icon_size = 128,
      upgrade = true,
      order = "c-a",
      prerequisites = {
        "bio-refugium-puffer-2",
        --"water-treatment-2"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "puffer-puffing-23"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-puffing-12"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-puffing-13"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-puffing-14"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-puffing-15"
        }
      },
      unit = {
        count = 100,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "bio-refugium-puffer-4",
      icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-puffer-breeding-tech.png",
      icon_size = 128,
      upgrade = true,
      order = "c-a",
      prerequisites = {
        "bio-refugium-puffer-3",
        "production-science-pack"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "puffer-breeding-23"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-breeding-12"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-breeding-13"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-breeding-14"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-breeding-15"
        }
      },
      unit = {
        count = 100,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "production-science-pack", amount = 1}
        },
        time = 30
      }
    },
    -- BITER
    {
      type = "technology",
      name = "bio-refugium-biter-1",
      icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-biter-tech.png",
      icon_size = 128,
      upgrade = true,
      order = "c-a",
      prerequisites = {
        "bio-farm-alien",
        --"bio-refugium-butchery-2",
        "bio-refugium-puffer-2",
        "bio-processing-crystal-splinter-2",
        "stone-wall"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bio-refugium-biter"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-small-eggsperiment"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-small"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-small-breeding"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-small-keeping"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-small-butchering"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-queen-small-butchering"
        },
        {
          type = "unlock-recipe",
          recipe = "alien-processed-meat"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "bio-refugium-biter-2",
      icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-biter-tech.png",
      icon_size = 128,
      upgrade = true,
      order = "c-a",
      prerequisites = {
        "bio-refugium-biter-1",
        "bio-processing-crystal-shard-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "biter-medium-eggsperiment"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-medium"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-medium-breeding"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-medium-keeping"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-medium-butchering"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-queen-medium-butchering"
        }
      },
      unit = {
        count = 100,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "bio-refugium-biter-3",
      icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-biter-tech.png",
      icon_size = 128,
      upgrade = true,
      order = "c-a",
      prerequisites = {
        "bio-refugium-biter-2",
        "bio-refugium-puffer-4"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "biter-big-eggsperiment"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-big"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-big-breeding"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-big-keeping"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-big-butchering"
        },
        {
          type = "unlock-recipe",
          recipe = "biter-queen-big-butchering"
        }
      },
      unit = {
        count = 150,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "production-science-pack", amount = 1}
        },
        time = 30
      }
    },
    -- HOGGER
    {
      type = "technology",
      name = "bio-refugium-hogger",
      icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-puffer-breeding-tech.png",
      icon_size = 128,
      hidden = true,
      enabled = false,
      order = "c-a",
      prerequisites = {
        "bio-nutrient-paste"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "hogger-hogging-1"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-breeding-1"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-butchery-1"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-hogging-2"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-breeding-2"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-butchery-2"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-hogging-3"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-breeding-3"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-butchery-3"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-hogging-4"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-breeding-4"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-butchery-4"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-hogging-5"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-breeding-5"
        },
        {
          type = "unlock-recipe",
          recipe = "hogger-butchery-5"
        },
        {
          type = "unlock-recipe",
          recipe = "bio-refugium-hogger"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 30
      }
    },
    -- BUTCHERY
    {
      type = "technology",
      name = "bio-refugium-butchery-1",
      icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-butchery-tech.png",
      icon_size = 160,
      upgrade = true,
      order = "c-a",
      prerequisites = {
        "bio-refugium-fish-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bio-butchery"
        },
        {
          type = "unlock-recipe",
          recipe = "fish-butchery-0"
        },
        {
          type = "unlock-recipe",
          recipe = "fish-butchery-1"
        },
        {
          type = "unlock-recipe",
          recipe = "fish-butchery-2"
        },
        {
          type = "unlock-recipe",
          recipe = "fish-butchery-3"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 30
      }
    },
    {
      type = "technology",
      name = "bio-refugium-butchery-2",
      icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-butchery-tech.png",
      icon_size = 160,
      upgrade = true,
      order = "c-a",
      prerequisites = {
        "bio-refugium-butchery-1",
        "bio-refugium-hatchery"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "puffer-butchery-1"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-butchery-2"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-butchery-3"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-butchery-4"
        },
        {
          type = "unlock-recipe",
          recipe = "puffer-butchery-5"
        }
      },
      unit = {
        count = 100,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 30
      }
    }
  }
)
