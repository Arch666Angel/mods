data:extend(
  {
    -- SPLINTER
    {
      type = "recipe",
      name = "crystal-splinter-cutting",
      category = "crafting",
      subgroup = "bio-biter-small",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-splinter-raw", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-splinter-blue-cut", amount = 1},
        {type = "item", name = "crystal-splinter-red-cut", amount = 1},
        {type = "item", name = "crystal-splinter-green-cut", amount = 1},
        {type = "item", name = "crystal-dust", amount = 1}
      },
      icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-harmonic.png",
      icon_size = 32,
      order = "d[crystal]-a[cutting]"
    },
    {
      type = "recipe",
      name = "crystal-splinter-blue",
      category = "crafting-with-fluid",
      subgroup = "bio-biter-processing-cutting",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-splinter-blue-cut", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1},
        {type = "fluid", name = "crystal-slurry", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-splinter-blue", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1, catalyst_amount = 1, probability = 2 / 3}
      },
      main_product = "crystal-splinter-blue",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "a[blue]-a[splinter]"
    },
    {
      type = "recipe",
      name = "crystal-splinter-red",
      category = "crafting-with-fluid",
      subgroup = "bio-biter-processing-cutting",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-splinter-red-cut", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1},
        {type = "fluid", name = "crystal-slurry", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-splinter-red", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1, catalyst_amount = 1, probability = 2 / 3}
      },
      main_product = "crystal-splinter-red",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "b[red]-a[splinter]"
    },
    {
      type = "recipe",
      name = "crystal-splinter-green",
      category = "crafting-with-fluid",
      subgroup = "bio-biter-processing-cutting",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-splinter-green-cut", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1},
        {type = "fluid", name = "crystal-slurry", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-splinter-green", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1, catalyst_amount = 1, probability = 2 / 3}
      },
      main_product = "crystal-splinter-green",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "c[green]-a[splinter]"
    },
    {
      type = "recipe",
      name = "crystal-splinter-harmonic",
      localised_name = {"recipe-name.crystal-splinter-harmonic"},
      category = "crafting",
      subgroup = "bio-biter-small",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-splinter-blue", amount = 1},
        {type = "item", name = "crystal-splinter-red", amount = 1},
        {type = "item", name = "crystal-splinter-green", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-splinter-harmonic", amount = 1}
      },
      always_show_products = true,
      main_product = "crystal-splinter-harmonic",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "d[crystal]-b[harmonic]"
    },
    {
      type = "recipe",
      name = "crystal-powder-splinter-blue",
      category = "liquifying",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-splinter-blue-cut", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 1}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-blue.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "a[blue]-a[splinter]"
    },
    {
      type = "recipe",
      name = "crystal-powder-splinter-red",
      category = "liquifying",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-splinter-red-cut", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 1}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-red.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "b[red]-a[splinter]"
    },
    {
      type = "recipe",
      name = "crystal-powder-splinter-green",
      category = "liquifying",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-splinter-green-cut", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 1}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-green.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "c[green]-a[splinter]"
    },
    -- SHARD
    {
      type = "recipe",
      name = "crystal-shard-cutting",
      category = "crafting",
      subgroup = "bio-biter-medium",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-shard-raw", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-shard-blue-cut", amount = 1},
        {type = "item", name = "crystal-shard-red-cut", amount = 1},
        {type = "item", name = "crystal-shard-green-cut", amount = 1},
        {type = "item", name = "crystal-dust", amount = 1}
      },
      icon = "__angelsbioprocessing__/graphics/icons/crystal-shard-harmonic.png",
      icon_size = 32,
      order = "d[crystal]-a[cutting]"
    },
    {
      type = "recipe",
      name = "crystal-shard-blue",
      category = "crafting-with-fluid",
      subgroup = "bio-biter-processing-cutting",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-shard-blue-cut", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1},
        {type = "fluid", name = "crystal-slurry", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-shard-blue", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1, catalyst_amount = 1, probability = 2 / 3}
      },
      main_product = "crystal-shard-blue",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "a[blue]-b[shard]"
    },
    {
      type = "recipe",
      name = "crystal-shard-red",
      category = "crafting-with-fluid",
      subgroup = "bio-biter-processing-cutting",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-shard-red-cut", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1},
        {type = "fluid", name = "crystal-slurry", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-shard-red", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1, catalyst_amount = 1, probability = 2 / 3}
      },
      main_product = "crystal-shard-red",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "b[red]-b[shard]"
    },
    {
      type = "recipe",
      name = "crystal-shard-green",
      category = "crafting-with-fluid",
      subgroup = "bio-biter-processing-cutting",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-shard-green-cut", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1},
        {type = "fluid", name = "crystal-slurry", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-shard-green", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1, catalyst_amount = 1, probability = 2 / 3}
      },
      main_product = "crystal-shard-green",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "c[green]-b[shard]"
    },
    {
      type = "recipe",
      name = "crystal-shard-harmonic",
      localised_name = {"recipe-name.crystal-shard-harmonic"},
      category = "crafting",
      subgroup = "bio-biter-medium",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-shard-blue", amount = 1},
        {type = "item", name = "crystal-shard-red", amount = 1},
        {type = "item", name = "crystal-shard-green", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-shard-harmonic", amount = 1}
      },
      always_show_products = true,
      main_product = "crystal-shard-harmonic",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "d[crystal]-b[harmonic]"
    },
    {
      type = "recipe",
      name = "crystal-powder-shard-blue",
      category = "liquifying",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-shard-blue-cut", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 1}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-shard-blue.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "a[blue]-b[shard]"
    },
    {
      type = "recipe",
      name = "crystal-powder-shard-red",
      category = "liquifying",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-shard-red-cut", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 1}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-shard-red.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "b[red]-b[shard]"
    },
    {
      type = "recipe",
      name = "crystal-powder-shard-green",
      category = "liquifying",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-shard-green-cut", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 1}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-shard-green.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "c[green]-b[shard]"
    },
    -- FULL
    {
      type = "recipe",
      name = "crystal-full-cutting",
      category = "crafting",
      subgroup = "bio-biter-big",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-full-raw", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-full-blue-cut", amount = 1},
        {type = "item", name = "crystal-full-red-cut", amount = 1},
        {type = "item", name = "crystal-full-green-cut", amount = 1},
        {type = "item", name = "crystal-dust", amount = 1}
      },
      icon = "__angelsbioprocessing__/graphics/icons/crystal-full-harmonic.png",
      icon_size = 32,
      order = "d[crystal]-a[cutting]"
    },
    {
      type = "recipe",
      name = "crystal-full-blue",
      category = "crafting-with-fluid",
      subgroup = "bio-biter-processing-cutting",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-full-blue-cut", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1},
        {type = "fluid", name = "crystal-slurry", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-full-blue", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1, catalyst_amount = 1, probability = 2 / 3}
      },
      main_product = "crystal-full-blue",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "a[blue]-c[full]"
    },
    {
      type = "recipe",
      name = "crystal-full-red",
      category = "crafting-with-fluid",
      subgroup = "bio-biter-processing-cutting",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-full-red-cut", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1},
        {type = "fluid", name = "crystal-slurry", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-full-red", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1, catalyst_amount = 1, probability = 2 / 3}
      },
      main_product = "crystal-full-red",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "b[red]-c[full]"
    },
    {
      type = "recipe",
      name = "crystal-full-green",
      category = "crafting-with-fluid",
      subgroup = "bio-biter-processing-cutting",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-full-green-cut", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1},
        {type = "fluid", name = "crystal-slurry", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-full-green", amount = 1},
        {type = "item", name = "crystal-grindstone", amount = 1, catalyst_amount = 1, probability = 2 / 3}
      },
      main_product = "crystal-full-green",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "c[green]-c[full]"
    },
    {
      type = "recipe",
      name = "crystal-full-harmonic",
      localised_name = {"recipe-name.crystal-full-harmonic"},
      category = "crafting",
      subgroup = "bio-biter-big",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-full-blue", amount = 1},
        {type = "item", name = "crystal-full-red", amount = 1},
        {type = "item", name = "crystal-full-green", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-full-harmonic", amount = 1}
      },
      always_show_products = true,
      main_product = "crystal-full-harmonic",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "d[crystal]-b[harmonic]"
    },
    {
      type = "recipe",
      name = "crystal-powder-full-blue",
      category = "liquifying",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-full-blue-cut", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 1}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-full-blue.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "a[blue]-c[full]"
    },
    {
      type = "recipe",
      name = "crystal-powder-full-red",
      category = "liquifying",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-full-red-cut", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 1}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-full-red.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "b[red]-c[full]"
    },
    {
      type = "recipe",
      name = "crystal-powder-full-green",
      category = "liquifying",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-full-green-cut", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 1}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-full-green.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "c[green]-c[full]"
    }
  }
)
