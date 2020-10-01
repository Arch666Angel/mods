local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
  {
    --ZINC
    -- SMELTING INTERMEDIATE
    {
      type = "recipe",
      name = "zinc-ore-processing",
      category = "ore-processing",
      subgroup = "angels-zinc",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "zinc-ore", amount = 4}
      },
      results = {
        {type = "item", name = "processed-zinc", amount = 2}
      },
      main_product = "processed-zinc",
      icon = "__angelssmelting__/graphics/icons/processed-zinc.png",
      icon_size = 32,
      order = "b[processed-zinc]",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-zinc")
    },
    {
      type = "recipe",
      name = "zinc-processed-processing",
      category = "pellet-pressing",
      subgroup = "angels-zinc",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "processed-zinc", amount = 3}
      },
      results = {
        {type = "item", name = "pellet-zinc", amount = 4}
      },
      main_product = "pellet-zinc",
      icon = "__angelssmelting__/graphics/icons/pellet-zinc.png",
      icon_size = 32,
      order = "c[pellet-zinc]"
    },
    {
      type = "recipe",
      name = "zinc-ore-processing-alt",
      category = "ore-processing",
      subgroup = "angels-zinc",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "zinc-ore", amount = 8},
        {type = "fluid", name = "gas-oxygen", amount = 60}
      },
      results = {
        {type = "item", name = "solid-zinc-oxide", amount = 8},
        {type = "fluid", name = "gas-sulfur-dioxide", amount = 30}
      },
      main_product = "solid-zinc-oxide",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/solid-zinc-oxide.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "d[solid-zinc-oxide]-a"
    },
    {
      type = "recipe",
      name = "pellet-zinc-smelting",
      category = "chemical-smelting",
      subgroup = "angels-zinc",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "pellet-zinc", amount = 8},
        {type = "fluid", name = "gas-oxygen", amount = 60}
      },
      results = {
        {type = "item", name = "solid-zinc-oxide", amount = 24},
        {type = "fluid", name = "gas-sulfur-dioxide", amount = 30}
      },
      main_product = "solid-zinc-oxide",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/solid-zinc-oxide.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "d[solid-zinc-oxide]-b"
    },
    {
      type = "recipe",
      name = "solid-zinc-oxide-smelting",
      category = "chemical-smelting",
      subgroup = "angels-zinc",
      energy_required = 6,
      enabled = false,
      ingredients = {
        {type = "item", name = "solid-zinc-oxide", amount = 12},
        {type = "fluid", name = "liquid-sulfuric-acid", amount = 40}
      },
      results = {
        {type = "item", name = "cathode-zinc", amount = 12}
      },
      icon_size = 32,
      order = "e[cathode-zinc]"
    },
    -- SMELTING RESULTS
    {
      type = "recipe",
      name = "zinc-ore-smelting",
      category = "chemical-smelting",
      subgroup = "angels-zinc",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "zinc-ore", amount = 24},
        {type = "fluid", name = "gas-oxygen", amount = 60},
        {type = "fluid", name = "liquid-molten-lead", amount = 60}
      },
      results = {
        {type = "item", name = "ingot-zinc", amount = 24},
        {type = "item", name = "ingot-lead", amount = 6},
        {type = "fluid", name = "gas-sulfur-dioxide", amount = 30}
      },
      main_product = "ingot-zinc",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/ingot-zinc.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "f[ingot-zinc]-a"
    },
    {
      type = "recipe",
      name = "processed-zinc-smelting",
      category = "chemical-smelting",
      subgroup = "angels-zinc",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "processed-zinc", amount = 8},
        {type = "item", name = "solid-carbon", amount = 6},
        {type = "fluid", name = "gas-oxygen", amount = 60}
      },
      results = {
        {type = "item", name = "ingot-zinc", amount = 24},
        {type = "fluid", name = "gas-sulfur-dioxide", amount = 30}
      },
      main_product = "ingot-zinc",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/ingot-zinc.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "f[ingot-zinc]-b"
    },
    {
      type = "recipe",
      name = "cathode-zinc-smelting",
      category = "blast-smelting",
      subgroup = "angels-zinc",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "cathode-zinc", amount = 24}
      },
      results = {
        {type = "item", name = "ingot-zinc", amount = 24}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/ingot-zinc.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "f[ingot-zinc]-c"
    },
    {
      type = "recipe",
      name = "powder-zinc",
      category = "advanced-crafting",
      subgroup = "angels-zinc",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-zinc", amount = 1}
      },
      results = {
        {type = "item", name = "powder-zinc", amount = 1}
      },
      icon_size = 32,
      order = "g[powder-zinc]"
    },
    -- CASTING INTERMEDIATE
    {
      type = "recipe",
      name = "molten-zinc-smelting",
      category = "induction-smelting",
      subgroup = "angels-zinc-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-zinc", amount = 12}
      },
      results = {
        {type = "fluid", name = "liquid-molten-zinc", amount = 120}
      },
      icon_size = 32,
      order = "h[liquid-molten-zinc]",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-zinc")
    },
    {
      type = "recipe",
      name = "roll-zinc-casting",
      category = "strand-casting",
      subgroup = "angels-zinc-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-zinc", amount = 80},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-roll-zinc", amount = 2}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-zinc", amount = 100 * intermediatemulti},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-roll-zinc", amount = 2}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/roll-zinc.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = {r = 1.0, g = 0.8, b = 0.0, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "i[angels-roll-zinc]-a"
    },
    {
      type = "recipe",
      name = "roll-zinc-casting-fast",
      category = "strand-casting",
      subgroup = "angels-zinc-casting",
      normal = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-zinc", amount = 140},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-roll-zinc", amount = 4},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-roll-zinc"
      },
      expensive = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-zinc", amount = 180 * intermediatemulti},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-roll-zinc", amount = 4},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-roll-zinc"
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/roll-zinc.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = {r = 1.0, g = 0.8, b = 0.0, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "i[angels-roll-zinc]-b"
    },
    {
      type = "recipe",
      name = "angels-plate-zinc",
      category = "casting",
      subgroup = "angels-zinc-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-zinc", amount = 40}
        },
        results = {
          {type = "item", name = "angels-plate-zinc", amount = 4}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-zinc", amount = 50 * intermediatemulti}
        },
        results = {
          {type = "item", name = "angels-plate-zinc", amount = 4}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/plate-zinc.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/molten-zinc.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "j[angels-plate-zinc]-a"
    },
    {
      type = "recipe",
      name = "angels-roll-zinc-converting",
      category = "advanced-crafting",
      subgroup = "angels-zinc-casting",
      energy_required = 0.5,
      enabled = false,
      allow_decomposition = false,
      ingredients = {
        {type = "item", name = "angels-roll-zinc", amount = 1}
      },
      results = {
        {type = "item", name = "angels-plate-zinc", amount = 4}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/plate-zinc.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/roll-zinc.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "j[angels-plate-zinc]-b"
    }
  }
)
