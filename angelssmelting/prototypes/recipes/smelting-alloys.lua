local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
  {
    -- STEEL SMELTING INTERMEDIATE
    -- STEEL SMELTING RESULTS
    {
      type = "recipe",
      name = "ingot-iron-smelting",
      category = "blast-smelting",
      subgroup = "angels-iron",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-iron", amount = 24},
        {type = "fluid", name = "gas-oxygen", amount = 60}
      },
      results = {
        {type = "item", name = "ingot-steel", amount = 6}
      },
      icon_size = 32,
      order = "f[ingot-steel]"
    },
    {
      type = "recipe",
      name = "powder-steel",
      category = "advanced-crafting",
      subgroup = "angels-iron",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-steel", amount = 1}
      },
      results = {
        {type = "item", name = "powder-steel", amount = 1}
      },
      icon_size = 32,
      order = "h[powder-steel]"
    },
    -- STEEL CASTING INTERMEDIATE
    {
      type = "recipe",
      name = "molten-steel-smelting-1",
      category = "induction-smelting",
      subgroup = "angels-steel-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-steel", amount = 12}
      },
      results = {
        {type = "fluid", name = "liquid-molten-steel", amount = 120}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-steel.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "i[liquid-molten-steel]-a",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-steel")
    },
    {
      type = "recipe",
      name = "molten-steel-smelting-2",
      category = "induction-smelting",
      subgroup = "angels-steel-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-steel", amount = 12},
        {type = "item", name = "ingot-silicon", amount = 12}
      },
      results = {
        {type = "fluid", name = "liquid-molten-steel", amount = 240}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-steel.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "i[liquid-molten-steel]-b",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-steel")
    },
    {
      type = "recipe",
      name = "molten-steel-smelting-3",
      category = "induction-smelting",
      subgroup = "angels-steel-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-steel", amount = 12},
        {type = "item", name = "ingot-manganese", amount = 12}
      },
      results = {
        {type = "fluid", name = "liquid-molten-steel", amount = 240}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-steel.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "i[liquid-molten-steel]-c",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-steel")
    },
    {
      type = "recipe",
      name = "molten-steel-smelting-4",
      category = "induction-smelting",
      subgroup = "angels-steel-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-steel", amount = 12},
        {type = "item", name = "ingot-cobalt", amount = 12},
        {type = "item", name = "ingot-nickel", amount = 12}
      },
      results = {
        {type = "fluid", name = "liquid-molten-steel", amount = 360}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-steel.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_4.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "i[liquid-molten-steel]-d",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-steel")
    },
    {
      type = "recipe",
      name = "molten-steel-smelting-5",
      category = "induction-smelting",
      subgroup = "angels-steel-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-steel", amount = 12},
        {type = "item", name = "ingot-chrome", amount = 12},
        {type = "item", name = "powder-tungsten", amount = 12}
      },
      results = {
        {type = "fluid", name = "liquid-molten-steel", amount = 360}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-steel.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_5.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "i[liquid-molten-steel]-e",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-steel")
    },
    {
      type = "recipe",
      name = "angels-roll-steel-casting",
      category = "strand-casting",
      subgroup = "angels-steel-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-steel", amount = 80},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-roll-steel", amount = 2}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-steel", amount = 100 * intermediatemulti},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-roll-steel", amount = 2}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/roll-steel.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "j[angels-roll-steel]-a"
    },
    {
      type = "recipe",
      name = "angels-roll-steel-casting-fast",
      category = "strand-casting",
      subgroup = "angels-steel-casting",
      normal = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-steel", amount = 140},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-roll-steel", amount = 4},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-roll-steel"
      },
      expensive = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-steel", amount = 180 * intermediatemulti},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-roll-steel", amount = 4},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-roll-steel"
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/roll-steel.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "j[angels-roll-steel]-b"
    },
    {
      type = "recipe",
      name = "rod-stack-steel-casting",
      category = "strand-casting",
      subgroup = "angels-steel-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-steel", amount = 60},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-rod-stack-steel", amount = 1}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-steel", amount = 80 * intermediatemulti},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-rod-stack-steel", amount = 1}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/rod-stack-steel.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "k[angels-rod-stack-steel]-a"
    },
    {
      type = "recipe",
      name = "rod-stack-steel-casting-fast",
      category = "strand-casting",
      subgroup = "angels-steel-casting",
      normal = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-steel", amount = 110},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-rod-stack-steel", amount = 2},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-rod-stack-steel"
      },
      expensive = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-steel", amount = 150 * intermediatemulti},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-rod-stack-steel", amount = 2},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-rod-stack-steel"
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/rod-stack-steel.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "k[angels-rod-stack-steel]-b"
    },
    -- STEEL CASTING RESULT
    {
      type = "recipe",
      name = "angels-plate-steel",
      category = "casting",
      subgroup = "angels-steel-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-steel", amount = 40}
        },
        results = {
          {type = "item", name = "angels-plate-steel", amount = 4}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-steel", amount = 50 * intermediatemulti}
        },
        results = {
          {type = "item", name = "angels-plate-steel", amount = 4}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/plate-steel.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/molten-steel.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "l[angels-plate-steel]-b" -- l[angels-plate-steel]-a reserved for base game smelting recipe (see global overrides)
    },
    {
      type = "recipe",
      name = "angels-roll-steel-converting",
      category = "advanced-crafting",
      subgroup = "angels-steel-casting",
      energy_required = 0.5,
      allow_decomposition = false,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-roll-steel", amount = 1}
      },
      results = {
        {type = "item", name = "angels-plate-steel", amount = 4}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/plate-steel.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/roll-steel.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "l[angels-plate-steel]-c"
    },
    {
      type = "recipe",
      name = "angels-rod-steel-plate",
      category = "crafting",
      subgroup = "angels-steel-casting",
      energy_required = 0.5,
      enabled = false,
      allow_decomposition = true,
      ingredients = {
        {type = "item", name = "angels-plate-steel", amount = 2}
      },
      results = {
        {type = "item", name = "angels-rod-steel", amount = 1}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/rod-steel.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/plate-steel.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "m[angels-rod-steel]-a"
    },
    {
      type = "recipe",
      name = "angels-rod-stack-steel-converting",
      category = "advanced-crafting",
      subgroup = "angels-steel-casting",
      energy_required = 0.5,
      enabled = false,
      allow_decomposition = false,
      ingredients = {
        {type = "item", name = "angels-rod-stack-steel", amount = 1}
      },
      results = {
        {type = "item", name = "angels-rod-steel", amount = 4}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/rod-steel.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/rod-stack-steel.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "m[angels-rod-steel]-b"
    },
    -- SOLDER SMELTING INTERMEDIATE
    -- SOLDER SMELTING RESULTS
    {
      type = "recipe",
      name = "angels-solder-mixture",
      category = "crafting",
      subgroup = "angels-alloys",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "angels-plate-tin", amount = 2},
        {type = "item", name = "angels-plate-lead", amount = 2}
      },
      results = {
        {type = "item", name = "angels-solder-mixture", amount = 2}
      },
      icon_size = 32,
      order = "a[solder]-a[angels-solder-mixture]-a"
    },
    -- SOLDER CASTING INTERMEDIATE
    {
      type = "recipe",
      name = "angels-solder-smelting-1",
      category = "induction-smelting",
      subgroup = "angels-solder-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-solder-mixture", amount = 12}
      },
      results = {
        {type = "fluid", name = "liquid-molten-solder", amount = 120}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-solder.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "b[liquid-molten-solder]-a",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-solder")
    },
    {
      type = "recipe",
      name = "angels-solder-smelting-2",
      category = "induction-smelting",
      subgroup = "angels-solder-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-tin", amount = 12},
        {type = "item", name = "ingot-lead", amount = 12}
      },
      results = {
        {type = "fluid", name = "liquid-molten-solder", amount = 240}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-solder.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "b[liquid-molten-solder]-b",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-solder")
    },
    {
      type = "recipe",
      name = "angels-solder-smelting-3",
      category = "induction-smelting",
      subgroup = "angels-solder-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-tin", amount = 12},
        {type = "item", name = "ingot-zinc", amount = 12}
      },
      results = {
        {type = "fluid", name = "liquid-molten-solder", amount = 240}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-solder.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "b[liquid-molten-solder]-c",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-solder")
    },
    {
      type = "recipe",
      name = "angels-solder-smelting-4",
      category = "induction-smelting",
      subgroup = "angels-solder-casting",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "item", name = "ingot-tin", amount = 12},
        {type = "item", name = "ingot-copper", amount = 12},
        {type = "item", name = "ingot-silver", amount = 12}
      },
      results = {
        {type = "fluid", name = "liquid-molten-solder", amount = 360}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/molten-solder.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_4.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "b[liquid-molten-solder]-d",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-solder")
    },
    {
      type = "recipe",
      name = "roll-solder-casting",
      category = "strand-casting",
      subgroup = "angels-solder-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-solder", amount = 80},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-roll-solder", amount = 4}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-solder", amount = 100 * intermediatemulti},
          {type = "fluid", name = "water", amount = 40}
        },
        results = {
          {type = "item", name = "angels-roll-solder", amount = 4}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/roll-solder.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "c[angels-roll-solder]-a"
    },
    {
      type = "recipe",
      name = "roll-solder-casting-fast",
      category = "strand-casting",
      subgroup = "angels-solder-casting",
      normal = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-solder", amount = 140},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-roll-solder", amount = 8},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-roll-solder"
      },
      expensive = {
        enabled = false,
        energy_required = 2,
        ingredients = {
          {type = "fluid", name = "liquid-molten-solder", amount = 180 * intermediatemulti},
          {type = "fluid", name = "liquid-coolant", amount = 40, maximum_temperature = 50}
        },
        results = {
          {type = "item", name = "angels-roll-solder", amount = 8},
          {type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300}
        },
        main_product = "angels-roll-solder"
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/roll-solder.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "c[angels-roll-solder]-b"
    },
    -- SOLDER CASTING RESULT
    {
      type = "recipe",
      name = "angels-solder-mixture-smelting",
      category = "smelting",
      subgroup = "angels-solder-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "item", name = "angels-solder-mixture", amount = 2}
        },
        results = {
          {type = "item", name = "angels-solder", amount = 2}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "item", name = "angels-solder-mixture", amount = 3 * intermediatemulti}
        },
        results = {
          {type = "item", name = "angels-solder", amount = 2}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/solder.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/solder-mixture.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "d[angels-solder]-a"
    },
    {
      type = "recipe",
      name = "angels-solder",
      category = "casting",
      subgroup = "angels-solder-casting",
      normal = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-solder", amount = 40}
        },
        results = {
          {type = "item", name = "angels-solder", amount = 6}
        }
      },
      expensive = {
        enabled = false,
        energy_required = 4,
        ingredients = {
          {type = "fluid", name = "liquid-molten-solder", amount = 50 * intermediatemulti}
        },
        results = {
          {type = "item", name = "angels-solder", amount = 6}
        }
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/solder.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/molten-solder.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "d[angels-solder]-b"
    },
    {
      type = "recipe",
      name = "angels-roll-solder-converting",
      category = "advanced-crafting",
      subgroup = "angels-solder-casting",
      energy_required = 0.5,
      enabled = false,
      allow_decomposition = false,
      ingredients = {
        {type = "item", name = "angels-roll-solder", amount = 4}
      },
      results = {
        {type = "item", name = "angels-solder", amount = 12}
      },
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/solder.png"
        },
        {
          icon = "__angelssmelting__/graphics/icons/roll-solder.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "d[angels-solder]-c"
    }
  }
)
