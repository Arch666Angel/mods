data:extend(
  {
    -- SPLINTER
    {
      type = "recipe",
      name = "crystal-splinter-cutting",
      category = "crafting",
      subgroup = "bio-biter-processing-raw",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-splinter-raw", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-splinter-blue-cut", amount = 1},
        {type = "item", name = "crystal-splinter-red-cut", amount = 1},
        {type = "item", name = "crystal-splinter-green-cut", amount = 1},
        {type = "item", name = "crystal-powder", amount = 1}
      },
      --icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-harmonic.png",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-raw.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-blue.png",
          scale = 0.35,
          shift = {-12, 12}
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-red.png",
          scale = 0.35,
          shift = {-0, 12}
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-green.png",
          scale = 0.35,
          shift = {12, 12}
        },
      },
      icon_size = 32,
      order = "a[splinter]-b[cutting]"
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
        {type = "fluid", name = "crystal-slurry", amount = 2}
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
        {type = "fluid", name = "crystal-slurry", amount = 2}
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
        {type = "fluid", name = "crystal-slurry", amount = 2}
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
      subgroup = "bio-biter-processing-raw",
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
      order = "a[splinter]-c[harmonic]"
    },
    {
      type = "recipe",
      name = "crystal-powder-splinter-blue",
      localised_name = {"recipe-name.crystal-powder-from-splinter"},
      category = "ore-sorting-t1-5",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-splinter-blue-cut", amount = 5},
        {type = "item", name = "milling-drum", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 5},
        {type = "item", name = "milling-drum-used", amount = 1, catalyst_amount = 1}
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
      localised_name = {"recipe-name.crystal-powder-from-splinter"},
      category = "ore-sorting-t1-5",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-splinter-red-cut", amount = 5},
        {type = "item", name = "milling-drum", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 5},
        {type = "item", name = "milling-drum-used", amount = 1, catalyst_amount = 1}
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
      localised_name = {"recipe-name.crystal-powder-from-splinter"},
      category = "ore-sorting-t1-5",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-splinter-green-cut", amount = 5},
        {type = "item", name = "milling-drum", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 5},
        {type = "item", name = "milling-drum-used", amount = 1, catalyst_amount = 1}
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
      subgroup = "bio-biter-processing-raw",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-shard-raw", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-shard-blue-cut", amount = 1},
        {type = "item", name = "crystal-shard-red-cut", amount = 1},
        {type = "item", name = "crystal-shard-green-cut", amount = 1},
        {type = "item", name = "crystal-powder", amount = 1}
      },
      --icon = "__angelsbioprocessing__/graphics/icons/crystal-shard-harmonic.png",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-shard-raw.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-shard-blue.png",
          scale = 0.35,
          shift = {-12, 12}
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-shard-red.png",
          scale = 0.35,
          shift = {-0, 12}
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-shard-green.png",
          scale = 0.35,
          shift = {12, 12}
        },
      },
      icon_size = 32,
      order = "b[shard]-b[cutting]"
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
        {type = "fluid", name = "crystal-slurry", amount = 2}
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
        {type = "fluid", name = "crystal-slurry", amount = 2}
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
        {type = "fluid", name = "crystal-slurry", amount = 2}
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
      subgroup = "bio-biter-processing-raw",
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
      order = "b[shard]-c[harmonic]"
    },
    {
      type = "recipe",
      name = "crystal-powder-shard-blue",
      localised_name = {"recipe-name.crystal-powder-from-shard"},
      category = "ore-sorting-t1-5",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-shard-blue-cut", amount = 5},
        {type = "item", name = "milling-drum", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 10},
        {type = "item", name = "milling-drum-used", amount = 1, catalyst_amount = 1}
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
      localised_name = {"recipe-name.crystal-powder-from-shard"},
      category = "ore-sorting-t1-5",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-shard-red-cut", amount = 5},
        {type = "item", name = "milling-drum", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 10},
        {type = "item", name = "milling-drum-used", amount = 1, catalyst_amount = 1}
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
      localised_name = {"recipe-name.crystal-powder-from-shard"},
      category = "ore-sorting-t1-5",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-shard-green-cut", amount = 5},
        {type = "item", name = "milling-drum", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 10},
        {type = "item", name = "milling-drum-used", amount = 1, catalyst_amount = 1}
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
      subgroup = "bio-biter-processing-raw",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-full-raw", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-full-blue-cut", amount = 1},
        {type = "item", name = "crystal-full-red-cut", amount = 1},
        {type = "item", name = "crystal-full-green-cut", amount = 1},
        {type = "item", name = "crystal-powder", amount = 1}
      },
      --icon = "__angelsbioprocessing__/graphics/icons/crystal-full-harmonic.png",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-full-raw.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-full-blue.png",
          scale = 0.35,
          shift = {-12, 12}
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-full-red.png",
          scale = 0.35,
          shift = {-0, 12}
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-full-green.png",
          scale = 0.35,
          shift = {12, 12}
        },
      },
      icon_size = 32,
      order = "c[full]-b[cutting]"
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
        {type = "fluid", name = "crystal-slurry", amount = 2}
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
        {type = "fluid", name = "crystal-slurry", amount = 2}
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
        {type = "fluid", name = "crystal-slurry", amount = 2}
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
      subgroup = "bio-biter-processing-raw",
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
      order = "c[full]-c[harmonic]"
    },
    {
      type = "recipe",
      name = "crystal-powder-full-blue",
      localised_name = {"recipe-name.crystal-powder-from-full"},
      category = "ore-sorting-t1-5",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-full-blue-cut", amount = 5},
        {type = "item", name = "milling-drum", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 15},
        {type = "item", name = "milling-drum-used", amount = 1, catalyst_amount = 1}
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
      localised_name = {"recipe-name.crystal-powder-from-full"},
      category = "ore-sorting-t1-5",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-full-red-cut", amount = 5},
        {type = "item", name = "milling-drum", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 15},
        {type = "item", name = "milling-drum-used", amount = 1, catalyst_amount = 1}
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
      localised_name = {"recipe-name.crystal-powder-from-full"},
      category = "ore-sorting-t1-5",
      subgroup = "bio-biter-processing-powder",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-full-green-cut", amount = 5},
        {type = "item", name = "milling-drum", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 15},
        {type = "item", name = "milling-drum-used", amount = 1, catalyst_amount = 1}
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
