local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
  {
    --Silver
    -- SMELTING INTERMEDIATE
    {
      type = "recipe",
      name = "silver-ore-processing",
      category = "ore-processing",
      subgroup = "angels-silver",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "silver-ore", amount = 4}
      },
      results = {
        {type = "item", name = "processed-silver", amount = 2}
      },
      icon_size = 32,
      order = "b[processed-silver]"
    },
    {
      type = "recipe",
      name = "silver-processed-processing",
      category = "pellet-pressing",
      subgroup = "angels-silver",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "processed-silver", amount = 3}
      },
      results = {
        {type = "item", name = "pellet-silver", amount = 4}
      },
      icon_size = 32,
      order = "c[pellet-silver]"
    },
    {
      type = "recipe",
      name = "processed-silver-smelting",
      category = "liquifying",
      subgroup = "angels-silver",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "processed-silver", amount = 4},
        {type = "fluid", name = "liquid-nitric-acid", amount = 60}
      },
      results = {
        {type = "item", name = "solid-silver-nitrate", amount = 12}
      },
      icon_size = 32,
      order = "d[solid-silver-nitrate]"
    },
    {
      type = "recipe",
      name = "pellet-silver-smelting",
      category = "chemical-smelting",
      subgroup = "angels-silver",
      energy_required = 6,
      enabled = false,
      ingredients = {
        {type = "item", name = "pellet-silver", amount = 8},
        {type = "item", name = "solid-sodium-cyanide", amount = 6},
        {type = "fluid", name = "water-purified", amount = 60},
        {type = "fluid", name = "gas-oxygen", amount = 60}
      },
      results = {
        {type = "item", name = "solid-sodium-silver-cyanide", amount = 24},
        {type = "item", name = "solid-sodium-hydroxide", amount = 4}
      },
      main_product = "solid-sodium-silver-cyanide",
      icon_size = 32,
      order = "f[solid-sodium-silver-cyanide]"
    },
    {
      type = "recipe",
      name = "solid-sodium-silver-cyanide-smelting",
      category = "chemical-smelting",
      subgroup = "angels-silver",
      energy_required = 6,
      enabled = false,
      ingredients = {
        {type = "item", name = "solid-sodium-silver-cyanide", amount = 12}
      },
      results = {
        {type = "item", name = "cathode-silver", amount = 12}
      },
      icon_size = 32,
      order = "g[cathode-silver]"
    },
    -- SMELTING RESULTS
    {
      type = "recipe",
      name = "silver-ore-smelting",
      category = "blast-smelting",
      subgroup = "angels-silver",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "silver-ore", amount = 24}
      },
      results = {
        {type = "item", name = "ingot-silver", amount = 24}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/ingot-silver.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "h[ingot-silver]-a"
    },
    {
      type = "recipe",
      name = "solid-silver-nitrate-smelting",
      category = "blast-smelting",
      subgroup = "angels-silver",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "solid-silver-nitrate", amount = 24}
      },
      results = {
        {type = "item", name = "ingot-silver", amount = 24}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/ingot-silver.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "h[ingot-silver]-b"
    },
    {
      type = "recipe",
      name = "cathode-silver-smelting",
      category = "blast-smelting",
      subgroup = "angels-silver",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "cathode-silver", amount = 24}
      },
      results = {
        {type = "item", name = "ingot-silver", amount = 24}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/ingot-silver.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "h[ingot-silver]-c"
    },
    {
      type = "recipe",
      name = "powder-silver",
      category = "advanced-crafting",
      subgroup = "angels-silver",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-silver", amount = 1}
      },
      results = {
        {type = "item", name = "powder-silver", amount = 1}
      },
      icon_size = 32,
      order = "i[powder-silver]"
    },
    -- CASTING INTERMEDIATE
    {
      type = "recipe",
      name = "molten-silver-smelting",
      category = "induction-smelting",
      subgroup = "angels-silver-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-silver", amount = 12}
      },
      results = {
        {type = "fluid", name = "liquid-molten-silver", amount = 120}
      },
      icon_size = 32,
      order = "j[liquid-molten-silver]",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-silver")
    },
    {
      type = "recipe",
      name = "roll-silver-casting",
      category = "strand-casting",
      subgroup = "angels-silver-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-silver", amount = 80},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-roll-silver", amount = 2}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-silver", amount = 100 * intermediatemulti},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-roll-silver", amount = 2}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/roll-silver.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = {r = 1.0, g = 0.8, b = 0.0, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "k[angels-roll-silver]-a"
    },
    {
      type = "recipe",
      name = "roll-silver-casting-fast",
      category = "strand-casting",
      subgroup = "angels-silver-casting",
      normal = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-silver", amount = 140},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-roll-silver", amount = 4},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-roll-silver"
      },
      expensive = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-silver", amount = 180 * intermediatemulti},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-roll-silver", amount = 4},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-roll-silver"
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/roll-silver.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = {r = 1.0, g = 0.8, b = 0.0, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "k[angels-roll-silver]-b"
    },
    {
      type = "recipe",
      name = "angels-wire-coil-silver-casting",
      category = "strand-casting",
      subgroup = "angels-silver-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-silver", amount = 40},
          {type = "fluid", name = "liquid-molten-copper", amount = 40},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-wire-coil-silver", amount = 4}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-silver", amount = 50 * intermediatemulti},
          {type = "fluid", name = "liquid-molten-copper", amount = 50 * intermediatemulti},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-wire-coil-silver", amount = 4}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/wire-coil-silver.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "l[angels-wire-coil-silver]-a"
    },
    {
      type = "recipe",
      name = "angels-wire-coil-silver-casting-fast",
      category = "strand-casting",
      subgroup = "angels-silver-casting",
      normal = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-silver", amount = 70},
          {type = "fluid", name = "liquid-molten-copper", amount = 70},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-wire-coil-silver", amount = 8},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-wire-coil-silver"
      },
      expensive = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-silver", amount = 90 * intermediatemulti},
          {type = "fluid", name = "liquid-molten-copper", amount = 90 * intermediatemulti},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-wire-coil-silver", amount = 8},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-wire-coil-silver"
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/wire-coil-silver.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "l[angels-wire-coil-silver]-b"
    },
    -- CASTING RESULT
    {
      type = "recipe",
      name = "angels-plate-silver",
      category = "casting",
      subgroup = "angels-silver-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-silver", amount = 40}
        },
        results = {
          {type = "item", name = "angels-plate-silver", amount = 4}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-silver", amount = 50 * intermediatemulti}
        },
        results = {
          {type = "item", name = "angels-plate-silver", amount = 4}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/plate-silver.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/molten-silver.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "m[angels-plate-silver]-b" -- m[angels-plate-silver]-a reserved for silver ore smelting (see silver overrides)
    },
    {
      type = "recipe",
      name = "angels-roll-silver-converting",
      category = "advanced-crafting",
      subgroup = "angels-silver-casting",
      energy_required = 0.5,
      enabled = false,
      allow_decomposition = false,
      ingredients = {
        {type = "item", name = "angels-roll-silver", amount = 1}
      },
      results = {
        {type = "item", name = "angels-plate-silver", amount = 4}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/plate-silver.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/roll-silver.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "m[angels-plate-silver]-c"
    },
    {
      type = "recipe",
      name = "basic-silvered-copper-wire",
      subgroup = "angels-silver-casting",
      order = "m",
      enabled = false,
      category = "crafting",
      energy_required = 0.5,
      ingredients = {
        {type = "item", name = "copper-cable", amount = 10},
        {type = "item", name = "angels-plate-silver", amount = 4}
      },
      results = {
        {type = "item", name = "angels-wire-silver", amount = 5}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/wire-silver.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/plate-silver.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "n[angels-wire-silver]-a"
    },
    {
      type = "recipe",
      name = "angels-wire-coil-silver-converting",
      category = "advanced-crafting",
      subgroup = "angels-silver-casting",
      energy_required = 1,
      enabled = false,
      allow_decomposition = false,
      ingredients = {
        {type = "item", name = "angels-wire-coil-silver", amount = 4}
      },
      results = {
        {type = "item", name = "angels-wire-silver", amount = 16}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/wire-silver.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/wire-coil-silver.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "n[angels-wire-silver]-b"
    }
    -- order n reserved for bob
  }
)
