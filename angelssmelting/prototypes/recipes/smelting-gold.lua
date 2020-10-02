local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
  {
    --GOLD
    -- SMELTING INTERMEDIATE
    {
      type = "recipe",
      name = "gold-ore-processing",
      category = "ore-processing",
      subgroup = "angels-gold",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "gold-ore", amount = 4}
      },
      results = {
        {type = "item", name = "processed-gold", amount = 2}
      },
      main_product = "processed-gold",
      --icon = "__angelssmelting__/graphics/icons/processed-gold.png",
      icon_size = 32,
      order = "b[processed-gold]",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-gold")
    },
    {
      type = "recipe",
      name = "gold-processed-processing",
      category = "pellet-pressing",
      subgroup = "angels-gold",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "processed-gold", amount = 3}
      },
      results = {
        {type = "item", name = "pellet-gold", amount = 4}
      },
      main_product = "pellet-gold",
      --icon = "__angelssmelting__/graphics/icons/pellet-gold.png",
      icon_size = 32,
      order = "c[pellet-gold]"
    },
    {
      type = "recipe",
      name = "pellet-gold-smelting",
      category = "chemical-smelting",
      subgroup = "angels-gold",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "pellet-gold", amount = 6},
        {type = "item", name = "solid-sodium-cyanide", amount = 4},
        {type = "fluid", name = "water-purified", amount = 40},
        {type = "fluid", name = "gas-oxygen", amount = 40}
      },
      results = {
        {type = "item", name = "solid-sodium-gold-cyanide", amount = 18},
        {type = "item", name = "solid-sodium-hydroxide", amount = 4}
      },
      main_product = "solid-sodium-gold-cyanide",
      icon_size = 32,
      order = "d[solid-sodium-gold-cyanide]"
    },
    {
      type = "recipe",
      name = "liquid-chlorauric-acid",
      category = "chemistry",
      subgroup = "angels-gold",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-gold", amount = 12},
        {type = "fluid", name = "liquid-nitric-acid", amount = 30},
        {type = "fluid", name = "liquid-hydrochloric-acid", amount = 30}
      },
      results = {
        {type = "fluid", name = "liquid-chlorauric-acid", amount = 120}
      },
      main_product = "liquid-chlorauric-acid",
      always_show_products = true,
      icons = angelsmods.functions.create_liquid_recipe_icon(nil, {{241, 214, 020}, {120, 203, 000}, {120, 203, 000}}),
      order = "e[liquid-chlorauric-acid]"
    },
    {
      type = "recipe",
      name = "processed-gold-smelting",
      category = "chemical-smelting",
      subgroup = "angels-gold",
      energy_required = 6,
      enabled = false,
      ingredients = {
        {type = "item", name = "processed-gold", amount = 2},
        {type = "fluid", name = "liquid-chlorauric-acid", amount = 60}
      },
      results = {
        {type = "item", name = "cathode-gold", amount = 12}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/cathode-gold.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "f[cathode-gold]-a"
    },
    {
      type = "recipe",
      name = "solid-sodium-gold-cyanide-smelting",
      category = "chemical-smelting",
      subgroup = "angels-gold",
      energy_required = 6,
      enabled = false,
      ingredients = {
        {type = "item", name = "solid-sodium-gold-cyanide", amount = 12}
      },
      results = {
        {type = "item", name = "cathode-gold", amount = 12}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/cathode-gold.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "f[cathode-gold]-b"
    },
    -- SMELTING RESULTS
    {
      type = "recipe",
      name = "gold-ore-smelting",
      category = "blast-smelting",
      subgroup = "angels-gold",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "gold-ore", amount = 24},
        {type = "fluid", name = "gas-chlorine", amount = 60}
      },
      results = {
        {type = "item", name = "ingot-gold", amount = 24}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/ingot-gold.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "g[ingot-gold]-a"
    },
    {
      type = "recipe",
      name = "cathode-gold-smelting",
      category = "blast-smelting",
      subgroup = "angels-gold",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "cathode-gold", amount = 24}
      },
      results = {
        {type = "item", name = "ingot-gold", amount = 24}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/ingot-gold.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "g[ingot-gold]-b"
    },
    {
      type = "recipe",
      name = "powder-gold",
      category = "advanced-crafting",
      subgroup = "angels-gold",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-gold", amount = 1}
      },
      results = {
        {type = "item", name = "powder-gold", amount = 1}
      },
      icon_size = 32,
      order = "h[powder-gold]"
    },
    -- CASTING INTERMEDIATE
    {
      type = "recipe",
      name = "molten-gold-smelting",
      category = "induction-smelting",
      subgroup = "angels-gold-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-gold", amount = 12}
      },
      results = {
        {type = "fluid", name = "liquid-molten-gold", amount = 120}
      },
      main_product = "liquid-molten-gold",
      --icon = "__angelssmelting__/graphics/icons/molten-gold.png",
      icon_size = 32,
      order = "i[liquid-molten-gold]",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-gold")
    },
    {
      type = "recipe",
      name = "roll-gold-casting",
      category = "strand-casting",
      subgroup = "angels-gold-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-gold", amount = 80},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-roll-gold", amount = 2}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-gold", amount = 100 * intermediatemulti},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-roll-gold", amount = 2}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/roll-gold.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = {r = 1.0, g = 0.8, b = 0.0, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "j[angels-roll-gold]-a",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-gold")
    },
    {
      type = "recipe",
      name = "roll-gold-casting-fast",
      category = "strand-casting",
      subgroup = "angels-gold-casting",
      normal = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-gold", amount = 140},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-roll-gold", amount = 4},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-roll-gold"
      },
      expensive = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-gold", amount = 180 * intermediatemulti},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-roll-gold", amount = 4},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-roll-gold"
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/roll-gold.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = {r = 1.0, g = 0.8, b = 0.0, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "j[angels-roll-gold]-b",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-gold")
    },
    {
      type = "recipe",
      name = "angels-wire-coil-gold-casting",
      category = "strand-casting",
      subgroup = "angels-gold-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-gold", amount = 40},
          {type = "fluid", name = "liquid-molten-copper", amount = 40},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-wire-coil-gold", amount = 4}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-gold", amount = 50 * intermediatemulti},
          {type = "fluid", name = "liquid-molten-copper", amount = 50 * intermediatemulti},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-wire-coil-gold", amount = 4}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/wire-coil-gold.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "k[angels-wire-coil-gold]-a",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-gold")
    },
    {
      type = "recipe",
      name = "angels-wire-coil-gold-casting-fast",
      category = "strand-casting",
      subgroup = "angels-gold-casting",
      normal = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-gold", amount = 70},
          {type = "fluid", name = "liquid-molten-copper", amount = 70},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-wire-coil-gold", amount = 8},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-wire-coil-gold"
      },
      expensive = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-gold", amount = 90 * intermediatemulti},
          {type = "fluid", name = "liquid-molten-copper", amount = 90 * intermediatemulti},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-wire-coil-gold", amount = 8},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-wire-coil-gold"
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/wire-coil-gold.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "k[angels-wire-coil-gold]-b",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-gold")
    },
    -- CASTING RESULT
    {
      type = "recipe",
      name = "angels-plate-gold",
      category = "casting",
      subgroup = "angels-gold-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-gold", amount = 40}
        },
        results = {
          {type = "item", name = "angels-plate-gold", amount = 4}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-gold", amount = 50 * intermediatemulti}
        },
        results = {
          {type = "item", name = "angels-plate-gold", amount = 4}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/plate-gold.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/molten-gold.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "l[angels-plate-gold]-a"
    },
    {
      type = "recipe",
      name = "angels-roll-gold-converting",
      category = "advanced-crafting",
      subgroup = "angels-gold-casting",
      energy_required = 0.5,
      enabled = false,
      allow_decomposition = false,
      ingredients = {
        {type = "item", name = "angels-roll-gold", amount = 1}
      },
      results = {
        {type = "item", name = "angels-plate-gold", amount = 4}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/plate-gold.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/roll-gold.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "l[angels-plate-gold]-b"
    },
    {
      type = "recipe",
      name = "angels-wire-gold",
      subgroup = "angels-gold-casting",
      enabled = false,
      category = "crafting",
      energy_required = 0.5,
      ingredients = {
        {type = "item", name = "copper-cable", amount = 10},
        {type = "item", name = "angels-plate-gold", amount = 4}
      },
      results = {
        {type = "item", name = "angels-wire-gold", amount = 5}
      },
      allow_decomposition = false,
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/wire-gold.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/plate-gold.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "m[angels-wire-gold]-a"
    },
    {
      type = "recipe",
      name = "angels-wire-coil-gold-converting",
      category = "advanced-crafting",
      subgroup = "angels-gold-casting",
      energy_required = 1,
      enabled = false,
      allow_decomposition = false,
      ingredients = {
        {type = "item", name = "angels-wire-coil-gold", amount = 4}
      },
      results = {
        {type = "item", name = "angels-wire-gold", amount = 16}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/wire-gold.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/wire-coil-gold.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "m[angels-wire-gold]-b"
    }
  }
)
