local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
  {
    --TIN
    -- SMELTING INTERMEDIATE
    {
      type = "recipe",
      name = "tin-ore-processing",
      category = "ore-processing",
      subgroup = "angels-tin",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "tin-ore", amount = 4}
      },
      results = {
        {type = "item", name = "processed-tin", amount = 2}
      },
      icon_size = 32,
      order = "b[processed-tin]"
    },
    {
      type = "recipe",
      name = "tin-processed-processing",
      category = "pellet-pressing",
      subgroup = "angels-tin",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "processed-tin", amount = 3}
      },
      results = {
        {type = "item", name = "pellet-tin", amount = 4}
      },
      icon_size = 32,
      order = "c[pellet-tin]"
    },
    -- SMELTING RESULTS
    {
      type = "recipe",
      name = "tin-ore-smelting",
      category = "blast-smelting",
      subgroup = "angels-tin",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "tin-ore", amount = 24}
      },
      results = {
        {type = "item", name = "ingot-tin", amount = 24}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/ingot-tin.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "d[ingot-tin]-a"
    },
    {
      type = "recipe",
      name = "processed-tin-smelting",
      category = "blast-smelting",
      subgroup = "angels-tin",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "processed-tin", amount = 8},
        {type = "item", name = "solid-coke", amount = 2}
      },
      results = {
        {type = "item", name = "ingot-tin", amount = 24}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/ingot-tin.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "d[ingot-tin]-b"
    },
    {
      type = "recipe",
      name = "pellet-tin-smelting",
      category = "blast-smelting",
      subgroup = "angels-tin",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "pellet-tin", amount = 8},
        {type = "item", name = "solid-carbon", amount = 2}
      },
      results = {
        {type = "item", name = "ingot-tin", amount = 24}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/ingot-tin.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "d[ingot-tin]-c"
    },
    {
      type = "recipe",
      name = "powder-tin",
      category = "advanced-crafting",
      subgroup = "angels-tin",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-tin", amount = 1}
      },
      results = {
        {type = "item", name = "powder-tin", amount = 1}
      },
      icon_size = 32,
      order = "e[powder-tin]"
    },
    -- CASTING INTERMEDIATE
    {
      type = "recipe",
      name = "molten-tin-smelting",
      category = "induction-smelting",
      subgroup = "angels-tin-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-tin", amount = 12}
      },
      results = {
        {type = "fluid", name = "liquid-molten-tin", amount = 120}
      },
      main_product = "liquid-molten-tin",
      icon_size = 32,
      order = "f[liquid-molten-tin]",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-tin")
    },
    {
      type = "recipe",
      name = "roll-tin-casting",
      category = "strand-casting",
      subgroup = "angels-tin-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-tin", amount = 80},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-roll-tin", amount = 2}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-tin", amount = 100 * intermediatemulti},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-roll-tin", amount = 2}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/roll-tin.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = {r = 1.0, g = 0.8, b = 0.0, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "g[angels-roll-tin]-a"
    },
    {
      type = "recipe",
      name = "roll-tin-casting-fast",
      category = "strand-casting",
      subgroup = "angels-tin-casting",
      normal = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-tin", amount = 140},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-roll-tin", amount = 4},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-roll-tin"
      },
      expensive = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-tin", amount = 180 * intermediatemulti},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-roll-tin", amount = 4},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-roll-tin"
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/roll-tin.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = {r = 1.0, g = 0.8, b = 0.0, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "g[angels-roll-tin]-b"
    },
    {
      type = "recipe",
      name = "angels-wire-coil-tin-casting",
      category = "strand-casting",
      subgroup = "angels-tin-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-tin", amount = 40},
          {type = "fluid", name = "liquid-molten-copper", amount = 40},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-wire-coil-tin", amount = 4}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-tin", amount = 50 * intermediatemulti},
          {type = "fluid", name = "liquid-molten-copper", amount = 50 * intermediatemulti},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-wire-coil-tin", amount = 4}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/wire-coil-tin.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "h[angels-wire-coil-tin]-a"
    },
    {
      type = "recipe",
      name = "angels-wire-coil-tin-casting-fast",
      category = "strand-casting",
      subgroup = "angels-tin-casting",
      normal = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-tin", amount = 70},
          {type = "fluid", name = "liquid-molten-copper", amount = 70},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-wire-coil-tin", amount = 8},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-wire-coil-tin"
      },
      expensive = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-tin", amount = 90 * intermediatemulti},
          {type = "fluid", name = "liquid-molten-copper", amount = 90 * intermediatemulti},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-wire-coil-tin", amount = 8},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-wire-coil-tin"
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/wire-coil-tin.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "h[angels-wire-coil-tin]-b"
    },
    -- CASTING RESULT
    {
      type = "recipe",
      name = "angels-plate-tin",
      category = "casting",
      subgroup = "angels-tin-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-tin", amount = 40}
        },
        results = {
          {type = "item", name = "angels-plate-tin", amount = 4}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-tin", amount = 50 * intermediatemulti}
        },
        results = {
          {type = "item", name = "angels-plate-tin", amount = 4}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/plate-tin.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/molten-tin.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "i[angels-plate-tin]-c" -- i[angels-plate-tin]-a reserved for crushed bobmonium smelting (see tin overrides)
    }, -- i[angels-plate-tin]-b reserved for tin ore smelting (see tin overrides)
    {
      type = "recipe",
      name = "angels-roll-tin-converting",
      category = "advanced-crafting",
      subgroup = "angels-tin-casting",
      energy_required = 0.5,
      enabled = false,
      allow_decomposition = false,
      ingredients = {
        {type = "item", name = "angels-roll-tin", amount = 1}
      },
      results = {
        {type = "item", name = "angels-plate-tin", amount = 4}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/plate-tin.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/roll-tin.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "i[angels-plate-tin]-d"
    },
    {
      type = "recipe",
      name = "basic-tinned-copper-wire",
      subgroup = "angels-tin-casting",
      order = "m",
      enabled = false,
      category = "crafting",
      energy_required = 0.5,
      ingredients = {
        {type = "item", name = "copper-cable", amount = 10},
        {type = "item", name = "angels-plate-tin", amount = 4}
      },
      results = {
        {type = "item", name = "angels-wire-tin", amount = 5}
      },
      allow_decomposition = false,
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/wire-tin.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/plate-tin.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "j[angels-wire-tin]-a"
    },
    {
      type = "recipe",
      name = "angels-wire-coil-tin-converting",
      category = "advanced-crafting",
      subgroup = "angels-tin-casting",
      energy_required = 1,
      enabled = false,
      allow_decomposition = false,
      ingredients = {
        {type = "item", name = "angels-wire-coil-tin", amount = 4}
      },
      results = {
        {type = "item", name = "angels-wire-tin", amount = 16}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/wire-tin.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/wire-coil-tin.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "j[angels-wire-tin]-b"
    }
  }
)
