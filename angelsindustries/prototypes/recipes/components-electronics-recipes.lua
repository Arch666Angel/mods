if angelsmods.industries.components then
  data:extend({
    -----------------------------------------------------------------------------
    -- ELECTRONIC SUBCOMPONENTS -------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "circuit-resistor",
      energy_required = 0.5,
      category = "crafting", --to allow hand crafting
      enabled = false,
      ingredients = {
        { type = "item", name = "solid-paper", amount = 1 },
        { type = "item", name = "copper-cable", amount = 1 },
      },
      result = "circuit-resistor",
      allow_decomposition = true,
      icon_size = 32,
    },
    --{
    --  type = "recipe",
    --  name = "circuit-resistor",
    --  energy_required = 3,
    --  category = "advanced-crafting",
    --  enabled = false,
    --  ingredients =
    --  {
    --    {type = "item", name = "plastic", amount = 1},
    --    {type = "item", name = "paste-cellulose", amount = 1},
    --    {type = "item", name = "solid-carbon", amount = 1},
    --    {type = "item", name = "copper-cable", amount = 1},
    --  },
    --  result = "circuit-resistor",
    --  icon_size = 32,
    --  order = "b",
    --},
    {
      type = "recipe",
      name = "circuit-transistor",
      energy_required = 1,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 1 },
        { type = "item", name = "angels-wire-tin", amount = 1 },
      },
      result = "circuit-transistor",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-microchip",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-silicon-wafer", amount = 1 },
        { type = "item", name = "angels-wire-silver", amount = 1 },
        { type = "fluid", name = "liquid-sulfuric-acid", amount = 1 },
      },
      result = "circuit-microchip",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-transformer",
      energy_required = 2,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 1 },
        { type = "item", name = "angels-wire-gold", amount = 1 },
      },
      result = "circuit-transformer",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-cpu",
      energy_required = 2.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-silicon-wafer", amount = 1 },
        { type = "item", name = "angels-wire-platinum", amount = 1 },
        { type = "fluid", name = "liquid-sulfuric-acid", amount = 1 },
      },
      result = "circuit-cpu",
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- ELECTRONIC COMPONENTS ----------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "electronic-parts-resistor",
      subgroup = "angels-circuit-components",
      order = "f",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-resistor", amount = 5 },
      },
      results = {
        { type = "item", name = "electronic-parts", amount = 1 },
      },
      icons = {
        {
          icon = "__angelsindustries__/graphics/icons/electronic-parts.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/resistor.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "electronic-parts-transistor",
      subgroup = "angels-circuit-components",
      order = "g",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-transistor", amount = 5 },
      },
      results = {
        { type = "item", name = "electronic-parts", amount = 2 },
      },
      icons = {
        {
          icon = "__angelsindustries__/graphics/icons/electronic-parts.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/transistor.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "electronic-parts-microchip",
      subgroup = "angels-circuit-components",
      order = "h",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-microchip", amount = 5 },
      },
      results = {
        { type = "item", name = "electronic-parts", amount = 3 },
      },
      icons = {
        {
          icon = "__angelsindustries__/graphics/icons/electronic-parts.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/chip.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "electronic-parts-transformer",
      subgroup = "angels-circuit-components",
      order = "i",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-transformer", amount = 5 },
      },
      results = {
        { type = "item", name = "electronic-parts", amount = 4 },
      },
      icons = {
        {
          icon = "__angelsindustries__/graphics/icons/electronic-parts.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/spool.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "electronic-parts-cpu",
      subgroup = "angels-circuit-components",
      order = "j",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-cpu", amount = 5 },
      },
      results = {
        { type = "item", name = "electronic-parts", amount = 5 },
      },
      icons = {
        {
          icon = "__angelsindustries__/graphics/icons/electronic-parts.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/cpu.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- BOARDS -------------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "circuit-grey-board",
      energy_required = 0.25,
      category = "crafting",
      enabled = true,
      ingredients = {
        { type = "item", name = "wood", amount = 1 },
      },
      result = "circuit-grey-board",
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-grey-board-alternative",
      energy_required = 0.5,
      category = "crafting",
      subgroup = "angels-board",
      enabled = false,
      ingredients = {
        { type = "item", name = "solid-paper", amount = 2 },
      },
      allow_as_intermediate = false, -- prefer the wood recipe for handcrafing
      results = {
        { type = "item", name = "circuit-grey-board", amount = 2 },
      },
      allow_decomposition = true,
      icon_size = 32,
      order = "g",
    },
    {
      type = "recipe",
      name = "circuit-red-board",
      energy_required = 0.5,
      category = "crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "solid-paper", amount = 1 },
      },
      result = "circuit-red-board",
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-green-board",
      energy_required = 1,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "solid-paper", amount = 1 },
        { type = "fluid", name = "liquid-resin", amount = 2 },
      },
      result = "circuit-green-board",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-orange-board",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "cellulose-fiber", amount = 1 },
        { type = "fluid", name = "liquid-plastic", amount = 2 },
      },
      result = "circuit-orange-board",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-blue-board",
      energy_required = 2,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-coil-glass-fiber", amount = 2 },
        { type = "fluid", name = "liquid-resin", amount = 2 },
      },
      result = "circuit-blue-board",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-yellow-board",
      energy_required = 3,
      category = "chemistry",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-coil-glass-fiber", amount = 2 },
        { type = "fluid", name = "liquid-resin", amount = 2 },
        { type = "fluid", name = "liquid-plastic", amount = 2 },
      },
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-resin"),
      result = "circuit-yellow-board",
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- CIRCUIT BOARDS -----------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "circuit-grey",
      energy_required = 0.25, -- 1:1 ratio to boards
      category = "crafting",
      enabled = true,
      ingredients = {
        { type = "item", name = "circuit-grey-board", amount = 1 },
        { type = "item", name = "angels-wire-copper", amount = 3 },
      },
      result = "circuit-grey",
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-red",
      energy_required = 1, --1:2 ratio to boards
      category = "crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-red-board", amount = 1 },
        { type = "item", name = "angels-wire-copper", amount = 3 },
      },
      result = "circuit-red",
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-green",
      energy_required = 1.5, --2:3 ratio to boards
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-green-board", amount = 1 },
        { type = "item", name = "angels-wire-tin", amount = 3 },
      },
      result = "circuit-green",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-orange",
      energy_required = 2, -- 3:4 ratio to boards
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-orange-board", amount = 1 },
        { type = "item", name = "angels-wire-silver", amount = 3 },
        { type = "fluid", name = "liquid-cupric-chloride-solution", amount = 2 },
      },
      result = "circuit-orange",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-blue",
      energy_required = 3.5, -- 4:7 ratio to boards
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-blue-board", amount = 1 },
        { type = "item", name = "angels-wire-gold", amount = 3 },
        { type = "fluid", name = "liquid-cupric-chloride-solution", amount = 2 },
      },
      result = "circuit-blue",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-yellow",
      energy_required = 5, -- 3:5 ratio to boards
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-yellow-board", amount = 1 },
        { type = "item", name = "angels-wire-platinum", amount = 3 },
        { type = "fluid", name = "liquid-cupric-chloride-solution", amount = 2 },
      },
      result = "circuit-yellow",
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- LOADED CIRCUIT BOARDS ----------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "circuit-red-loaded",
      energy_required = 1,
      category = "crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-red", amount = 1 },
        { type = "item", name = "circuit-resistor", amount = 1 },
        { type = "item", name = "angels-solder", amount = 1 },
      },
      result = "circuit-red-loaded",
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-green-loaded",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-green", amount = 1 },
        { type = "item", name = "circuit-resistor", amount = 1 },
        { type = "item", name = "circuit-transistor", amount = 1 },
        { type = "item", name = "angels-solder", amount = 2 },
      },
      result = "circuit-green-loaded",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-orange-loaded",
      energy_required = 2,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-orange", amount = 1 },
        { type = "item", name = "circuit-resistor", amount = 1 },
        { type = "item", name = "circuit-transistor", amount = 1 },
        { type = "item", name = "circuit-microchip", amount = 1 },
        { type = "item", name = "angels-solder", amount = 3 },
      },
      result = "circuit-orange-loaded",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-blue-loaded",
      energy_required = 3.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-blue", amount = 1 },
        { type = "item", name = "circuit-resistor", amount = 1 },
        { type = "item", name = "circuit-transistor", amount = 1 },
        { type = "item", name = "circuit-microchip", amount = 1 },
        { type = "item", name = "circuit-transformer", amount = 1 },
        { type = "item", name = "angels-solder", amount = 4 },
      },
      result = "circuit-blue-loaded",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-yellow-loaded",
      energy_required = 5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-yellow", amount = 1 },
        { type = "item", name = "circuit-resistor", amount = 1 },
        { type = "item", name = "circuit-transistor", amount = 1 },
        { type = "item", name = "circuit-microchip", amount = 1 },
        { type = "item", name = "circuit-transformer", amount = 1 },
        { type = "item", name = "circuit-cpu", amount = 1 },
        { type = "item", name = "angels-solder", amount = 5 },
      },
      result = "circuit-yellow-loaded",
      icon_size = 32,
    },
  })
end
