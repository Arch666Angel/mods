if angelsmods.industries.components then
  data:extend({
    -----------------------------------------------------------------------------
    -- CABLE SHIELDING ----------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "cable-shielding-1",
      localised_name = { "item-name.cable-shielding-1" },
      energy_required = 0.5,
      category = "crafting",
      enabled = true,
      ingredients = {
        { type = "item", name = "copper-plate", amount = 1 },
      },
      results = { { type = "item", name = "cable-shielding-1", amount = 1 } },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-shielding-2",
      localised_name = { "item-name.cable-shielding-2" },
      energy_required = 1,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-tin", amount = 1 },
      },
      results = { { type = "item", name = "cable-shielding-2", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-shielding-3",
      localised_name = { "item-name.cable-shielding-3" },
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-silver", amount = 1 },
      },
      results = { { type = "item", name = "cable-shielding-3", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-shielding-4",
      localised_name = { "item-name.cable-shielding-4" },
      energy_required = 2,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-gold", amount = 1 },
      },
      results = { { type = "item", name = "cable-shielding-4", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-shielding-5",
      localised_name = { "item-name.cable-shielding-5" },
      energy_required = 3,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-platinum", amount = 1 },
      },
      results = { { type = "item", name = "cable-shielding-5", amount = 1 } },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- CABLE HARNESS ------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "cable-harness-1",
      localised_name = { "item-name.cable-harness-1" },
      subgroup = "angels-cable-shielding",
      order = "f",
      energy_required = 1,
      category = "crafting",
      enabled = true,
      ingredients = {
        { type = "item", name = "copper-cable", amount = 1 },
        { type = "item", name = "cable-shielding-1", amount = 1 },
        { type = "item", name = "angels-cellulose-fiber", amount = 1 },
      },
      results = { { type = "item", name = "cable-harness-1", amount = 1 } },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-harness-2",
      localised_name = { "item-name.cable-harness-2" },
      subgroup = "angels-cable-shielding",
      order = "g",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-wire-tin", amount = 1 },
        { type = "item", name = "cable-shielding-2", amount = 1 },
        { type = "item", name = "angels-cellulose-fiber", amount = 1 },
      },
      results = { { type = "item", name = "cable-harness-2", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-harness-3",
      localised_name = { "item-name.cable-harness-3" },
      subgroup = "angels-cable-shielding",
      order = "h",
      energy_required = 2,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-wire-silver", amount = 1 },
        { type = "item", name = "cable-shielding-3", amount = 1 },
        { type = "fluid", name = "angels-liquid-rubber", amount = 1 },
      },
      results = { { type = "item", name = "cable-harness-3", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-harness-4",
      localised_name = { "item-name.cable-harness-4" },
      subgroup = "angels-cable-shielding",
      order = "i",
      energy_required = 3.5,
      category = "crafting-with-fluid",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-wire-gold", amount = 1 },
        { type = "item", name = "cable-shielding-4", amount = 1 },
        { type = "fluid", name = "angels-liquid-plastic", amount = 1 },
      },
      results = { { type = "item", name = "cable-harness-4", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-harness-5",
      localised_name = { "item-name.cable-harness-5" },
      subgroup = "angels-cable-shielding",
      order = "j",
      energy_required = 5,
      category = "crafting-with-fluid",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-wire-platinum", amount = 1 },
        { type = "item", name = "cable-shielding-5", amount = 1 },
        { type = "fluid", name = "angels-liquid-plastic", amount = 1 },
      },
      results = { { type = "item", name = "cable-harness-5", amount = 1 } },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- CABLING ------------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "cabling-cable-harness-1",
      localised_name = { "item-name.angels-cabling" },
      subgroup = "angels-servo-motor",
      order = "f",
      enabled = true,
      category = "crafting",
      energy_required = 3,
      ingredients = {
        { type = "item", name = "cable-harness-1", amount = 3 },
      },
      results = {
        { type = "item", name = "angels-cabling", amount = 2 },
      },
      allow_decomposition = true,
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/cabling.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/cable-harness-1.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cabling-cable-harness-2",
      localised_name = { "item-name.angels-cabling" },
      subgroup = "angels-servo-motor",
      order = "g",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3,
      ingredients = {
        { type = "item", name = "cable-harness-2", amount = 3 },
      },
      results = {
        { type = "item", name = "angels-cabling", amount = 3 },
      },
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/cabling.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/cable-harness-2.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cabling-cable-harness-3",
      localised_name = { "item-name.angels-cabling" },
      subgroup = "angels-servo-motor",
      order = "h",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3,
      ingredients = {
        { type = "item", name = "cable-harness-3", amount = 3 },
      },
      results = {
        { type = "item", name = "angels-cabling", amount = 4 },
      },
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/cabling.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/cable-harness-3.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cabling-cable-harness-4",
      localised_name = { "item-name.angels-cabling" },
      subgroup = "angels-servo-motor",
      order = "h",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3,
      ingredients = {
        { type = "item", name = "cable-harness-4", amount = 3 },
      },
      results = {
        { type = "item", name = "angels-cabling", amount = 5 },
      },
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/cabling.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/cable-harness-4.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cabling-cable-harness-5",
      localised_name = { "item-name.angels-cabling" },
      subgroup = "angels-servo-motor",
      order = "h",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3,
      ingredients = {
        { type = "item", name = "cable-harness-5", amount = 3 },
      },
      results = {
        { type = "item", name = "angels-cabling", amount = 6 },
      },
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/cabling.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/cable-harness-5.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- SERVO MOTORS -------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-servo-motor-1",
      localised_name = { "item-name.angels-servo-motor-1" },
      energy_required = 1 * angelsmods.industries.component_crafting_time_multiplier,
      category = "crafting",
      enabled = true,
      ingredients = {
        { type = "item", name = "cable-harness-1", amount = 1 },
        { type = "item", name = "cable-shielding-1", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
      },
      results = {
        {
          type = "item",
          name = "angels-servo-motor-1",
          amount = 1 * angelsmods.industries.component_result_multiplier,
        },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-servo-motor-2",
      localised_name = { "item-name.angels-servo-motor-2" },
      energy_required = 2 * angelsmods.industries.component_crafting_time_multiplier,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "cable-harness-2", amount = 1 },
        { type = "item", name = "cable-shielding-2", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
      },
      results = {
        {
          type = "item",
          name = "angels-servo-motor-2",
          amount = 1 * angelsmods.industries.component_result_multiplier,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-servo-motor-3",
      localised_name = { "item-name.angels-servo-motor-3" },
      energy_required = 3 * angelsmods.industries.component_crafting_time_multiplier,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "cable-harness-3", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "cable-shielding-3", amount = 1 },
      },
      results = {
        {
          type = "item",
          name = "angels-servo-motor-3",
          amount = 1 * angelsmods.industries.component_result_multiplier,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-servo-motor-4",
      localised_name = { "item-name.angels-servo-motor-4" },
      energy_required = 4 * angelsmods.industries.component_crafting_time_multiplier,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "cable-harness-4", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "cable-shielding-4", amount = 1 },
      },
      results = {
        {
          type = "item",
          name = "angels-servo-motor-4",
          amount = 1 * angelsmods.industries.component_result_multiplier,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-servo-motor-5",
      localised_name = { "item-name.angels-servo-motor-5" },
      energy_required = 6 * angelsmods.industries.component_crafting_time_multiplier,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "cable-harness-5", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "cable-shielding-5", amount = 1 },
      },
      results = {
        {
          type = "item",
          name = "angels-servo-motor-5",
          amount = 1 * angelsmods.industries.component_result_multiplier,
        },
      },
      icon_size = 32,
    },
  })
end
