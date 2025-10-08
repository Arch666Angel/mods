if angelsmods.industries.components then
  data:extend({
    -----------------------------------------------------------------------------
    -- ELECTRONIC SUBCOMPONENTS -------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "circuit-resistor",
      localised_name = { "item-name.circuit-resistor" },
      subgroup = "angels-circuit-board",
      order = "f",
      energy_required = 0.5,
      category = "crafting", --to allow hand crafting
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-solid-paper", amount = 1 },
        { type = "item", name = "copper-cable", amount = 1 },
      },
      results = { { type = "item", name = "circuit-resistor", amount = 1 } },
      allow_decomposition = true,
      icon_size = 32,
    },
    --{
    --  type = "recipe",
    --  name = "circuit-resistor",
    --  subgroup = "angels-circuit-board",
    --  order = "f",
    --  energy_required = 3,
    --  category = "advanced-crafting",
    --  enabled = false,
    --  ingredients =
    --  {
    --    {type = "item", name = "plastic", amount = 1},
    --    {type = "item", name = "angels-paste-cellulose", amount = 1},
    --    {type = "item", name = "angels-solid-carbon", amount = 1},
    --    {type = "item", name = "copper-cable", amount = 1},
    --  },
    --  results = {{ type = "item", name = "circuit-resistor", amount = 1 }},
    --  icon_size = 32,
    --},
    {
      type = "recipe",
      name = "circuit-transistor",
      localised_name = { "item-name.circuit-transistor" },
      subgroup = "angels-circuit-board",
      order = "g",
      energy_required = 1,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 1 },
        { type = "item", name = "angels-wire-tin", amount = 1 },
      },
      results = { { type = "item", name = "circuit-transistor", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-microchip",
      localised_name = { "item-name.circuit-microchip" },
      subgroup = "angels-circuit-board",
      order = "h",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-silicon-wafer", amount = 1 },
        { type = "item", name = "angels-wire-silver", amount = 1 },
        { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 1 },
      },
      results = { { type = "item", name = "circuit-microchip", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-transformer",
      localised_name = { "item-name.circuit-transformer" },
      subgroup = "angels-circuit-board",
      order = "i",
      energy_required = 2,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 1 },
        { type = "item", name = "angels-wire-gold", amount = 1 },
      },
      results = { { type = "item", name = "circuit-transformer", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-cpu",
      localised_name = { "item-name.circuit-cpu" },
      subgroup = "angels-circuit-board",
      order = "j",
      energy_required = 2.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-silicon-wafer", amount = 1 },
        { type = "item", name = "angels-wire-platinum", amount = 1 },
        { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 1 },
      },
      results = { { type = "item", name = "circuit-cpu", amount = 1 } },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- ELECTRONIC COMPONENTS ----------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "electronic-parts-resistor",
      localised_name = { "item-name.electronic-parts" },
      subgroup = "angels-loaded-circuit-board",
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
          icon = "__angelsindustriesgraphics__/graphics/icons/electronic-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/resistor.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "electronic-parts-transistor",
      localised_name = { "item-name.electronic-parts" },
      subgroup = "angels-loaded-circuit-board",
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
          icon = "__angelsindustriesgraphics__/graphics/icons/electronic-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/transistor.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "electronic-parts-microchip",
      localised_name = { "item-name.electronic-parts" },
      subgroup = "angels-loaded-circuit-board",
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
          icon = "__angelsindustriesgraphics__/graphics/icons/electronic-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/chip.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "electronic-parts-transformer",
      localised_name = { "item-name.electronic-parts" },
      subgroup = "angels-loaded-circuit-board",
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
          icon = "__angelsindustriesgraphics__/graphics/icons/electronic-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/spool.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "electronic-parts-cpu",
      localised_name = { "item-name.electronic-parts" },
      subgroup = "angels-loaded-circuit-board",
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
          icon = "__angelsindustriesgraphics__/graphics/icons/electronic-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/cpu.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
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
      localised_name = { "item-name.circuit-grey-board" },
      energy_required = 0.25,
      category = "crafting",
      enabled = true,
      ingredients = {
        { type = "item", name = "wood", amount = 1 },
      },
      results = { { type = "item", name = "circuit-grey-board", amount = 1 } },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-grey-board-alternative",
      localised_name = { "item-name.circuit-grey-board" },
      energy_required = 0.5,
      category = "crafting",
      subgroup = "angels-board",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-solid-paper", amount = 2 },
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
      localised_name = { "item-name.circuit-red-board" },
      energy_required = 0.5,
      category = "crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-solid-paper", amount = 1 },
      },
      results = { { type = "item", name = "circuit-red-board", amount = 1 } },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-green-board",
      localised_name = { "item-name.circuit-green-board" },
      energy_required = 1,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-solid-paper", amount = 1 },
        { type = "fluid", name = "angels-liquid-resin", amount = 2 },
      },
      results = { { type = "item", name = "circuit-green-board", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-orange-board",
      localised_name = { "item-name.circuit-orange-board" },
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-cellulose-fiber", amount = 1 },
        { type = "fluid", name = "angels-liquid-plastic", amount = 2 },
      },
      results = { { type = "item", name = "circuit-orange-board", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-blue-board",
      localised_name = { "item-name.circuit-blue-board" },
      energy_required = 2,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-coil-glass-fiber", amount = 2 },
        { type = "fluid", name = "angels-liquid-resin", amount = 2 },
      },
      results = { { type = "item", name = "circuit-blue-board", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-yellow-board",
      localised_name = { "item-name.circuit-yellow-board" },
      energy_required = 3,
      category = "chemistry",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-coil-glass-fiber", amount = 2 },
        { type = "fluid", name = "angels-liquid-resin", amount = 2 },
        { type = "fluid", name = "angels-liquid-plastic", amount = 2 },
      },
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-resin"),
      results = { { type = "item", name = "circuit-yellow-board", amount = 1 } },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- CIRCUIT BOARDS -----------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "circuit-grey",
      localised_name = { "item-name.circuit-grey" },
      subgroup = "angels-board",
      order = "h",
      energy_required = 0.25, -- 1:1 ratio to boards
      category = "crafting",
      enabled = true,
      ingredients = {
        { type = "item", name = "circuit-grey-board", amount = 1 },
        { type = "item", name = "copper-cable", amount = 3 },
      },
      results = {
        { type = "item", name = "circuit-grey", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-red",
      localised_name = { "item-name.circuit-red" },
      energy_required = 1, --1:2 ratio to boards
      category = "crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-red-board", amount = 1 },
        { type = "item", name = "copper-cable", amount = 3 },
      },
      results = {
        { type = "item", name = "circuit-red", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-green",
      localised_name = { "item-name.circuit-green" },
      energy_required = 1.5, --2:3 ratio to boards
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-green-board", amount = 1 },
        { type = "item", name = "angels-wire-tin", amount = 3 },
      },
      results = {
        { type = "item", name = "circuit-green", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-orange",
      localised_name = { "item-name.circuit-orange" },
      energy_required = 2, -- 3:4 ratio to boards
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-orange-board", amount = 1 },
        { type = "item", name = "angels-wire-silver", amount = 3 },
        { type = "fluid", name = "angels-liquid-cupric-chloride-solution", amount = 2 },
      },
      results = {
        { type = "item", name = "circuit-orange", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-blue",
      localised_name = { "item-name.circuit-blue" },
      energy_required = 3.5, -- 4:7 ratio to boards
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-blue-board", amount = 1 },
        { type = "item", name = "angels-wire-gold", amount = 3 },
        { type = "fluid", name = "angels-liquid-cupric-chloride-solution", amount = 2 },
      },
      results = {
        { type = "item", name = "circuit-blue", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-yellow",
      localised_name = { "item-name.circuit-yellow" },
      energy_required = 5, -- 3:5 ratio to boards
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-yellow-board", amount = 1 },
        { type = "item", name = "angels-wire-platinum", amount = 3 },
        { type = "fluid", name = "angels-liquid-cupric-chloride-solution", amount = 2 },
      },
      results = {
        { type = "item", name = "circuit-yellow", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- LOADED CIRCUIT BOARDS ----------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "circuit-red-loaded",
      localised_name = { "item-name.circuit-red-loaded" },
      energy_required = 1 * angelsmods.industries.component_crafting_time_multiplier,
      category = "crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-red", amount = 1 },
        { type = "item", name = "circuit-resistor", amount = 1 },
        { type = "item", name = "angels-solder", amount = 1 },
      },
      results = {
        { type = "item", name = "circuit-red-loaded", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-green-loaded",
      localised_name = { "item-name.circuit-green-loaded" },
      energy_required = 1.5 * angelsmods.industries.component_crafting_time_multiplier,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-green", amount = 1 },
        { type = "item", name = "circuit-resistor", amount = 1 },
        { type = "item", name = "circuit-transistor", amount = 1 },
        { type = "item", name = "angels-solder", amount = 2 },
      },
      results = {
        {
          type = "item",
          name = "circuit-green-loaded",
          amount = 1 * angelsmods.industries.component_result_multiplier,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-orange-loaded",
      localised_name = { "item-name.circuit-orange-loaded" },
      energy_required = 2 * angelsmods.industries.component_crafting_time_multiplier,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "circuit-orange", amount = 1 },
        { type = "item", name = "circuit-resistor", amount = 1 },
        { type = "item", name = "circuit-transistor", amount = 1 },
        { type = "item", name = "circuit-microchip", amount = 1 },
        { type = "item", name = "angels-solder", amount = 3 },
      },
      results = {
        {
          type = "item",
          name = "circuit-orange-loaded",
          amount = 1 * angelsmods.industries.component_result_multiplier,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-blue-loaded",
      localised_name = { "item-name.circuit-blue-loaded" },
      energy_required = 3.5 * angelsmods.industries.component_crafting_time_multiplier,
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
      results = {
        { type = "item", name = "circuit-blue-loaded", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "circuit-yellow-loaded",
      localised_name = { "item-name.circuit-yellow-loaded" },
      energy_required = 5 * angelsmods.industries.component_crafting_time_multiplier,
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
      results = {
        {
          type = "item",
          name = "circuit-yellow-loaded",
          amount = 1 * angelsmods.industries.component_result_multiplier,
        },
      },
      icon_size = 32,
    },
  })
end
