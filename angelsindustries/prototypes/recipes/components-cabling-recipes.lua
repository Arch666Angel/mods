if angelsmods.industries.components then
  data:extend({
    -----------------------------------------------------------------------------
    -- CABLE SHIELDING ----------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "cable-shielding-1",
      energy_required = 0.5,
      category = "crafting",
      enabled = true,
      ingredients = {
        { type = "item", name = "copper-plate", amount = 1 },
      },
      result = "cable-shielding-1",
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-shielding-2",
      energy_required = 1,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-tin", amount = 1 },
      },
      result = "cable-shielding-2",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-shielding-3",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-silver", amount = 1 },
      },
      result = "cable-shielding-3",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-shielding-4",
      energy_required = 2,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-gold", amount = 1 },
      },
      result = "cable-shielding-4",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-shielding-5",
      energy_required = 3,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-platinum", amount = 1 },
      },
      result = "cable-shielding-5",
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- CABLE HARNESS ------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "cable-harness-1",
      energy_required = 1,
      category = "crafting",
      enabled = true,
      ingredients = {
        { type = "item", name = "copper-cable", amount = 1 },
        { type = "item", name = "cable-shielding-1", amount = 1 },
        { type = "item", name = "cellulose-fiber", amount = 1 },
      },
      result = "cable-harness-1",
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-harness-2",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-wire-tin", amount = 1 },
        { type = "item", name = "cable-shielding-2", amount = 1 },
        { type = "item", name = "cellulose-fiber", amount = 1 },
      },
      result = "cable-harness-2",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-harness-3",
      energy_required = 2,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-wire-silver", amount = 1 },
        { type = "item", name = "cable-shielding-3", amount = 1 },
        { type = "fluid", name = "liquid-rubber", amount = 1 },
      },
      result = "cable-harness-3",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-harness-4",
      energy_required = 3.5,
      category = "crafting-with-fluid",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-wire-gold", amount = 1 },
        { type = "item", name = "cable-shielding-4", amount = 1 },
        { type = "fluid", name = "liquid-plastic", amount = 1 },
      },
      result = "cable-harness-4",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cable-harness-5",
      energy_required = 5,
      category = "crafting-with-fluid",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-wire-platinum", amount = 1 },
        { type = "item", name = "cable-shielding-5", amount = 1 },
        { type = "fluid", name = "liquid-plastic", amount = 1 },
      },
      result = "cable-harness-5",
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- CABLING ------------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "cabling-cable-harness-1",
      subgroup = "angels-cable-harness",
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
          icon = "__angelsindustries__/graphics/icons/cabling.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/cable-harness-1.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cabling-cable-harness-2",
      subgroup = "angels-cable-harness",
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
          icon = "__angelsindustries__/graphics/icons/cabling.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/cable-harness-2.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cabling-cable-harness-3",
      subgroup = "angels-cable-harness",
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
          icon = "__angelsindustries__/graphics/icons/cabling.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/cable-harness-3.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cabling-cable-harness-4",
      subgroup = "angels-cable-harness",
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
          icon = "__angelsindustries__/graphics/icons/cabling.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/cable-harness-4.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "cabling-cable-harness-5",
      subgroup = "angels-cable-harness",
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
          icon = "__angelsindustries__/graphics/icons/cabling.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/cable-harness-5.png",
          scale = 0.4375,
          shift = { -10, -10 },
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
      energy_required = 1,
      category = "crafting",
      enabled = true,
      ingredients = {
        { type = "item", name = "cable-harness-1", amount = 1 },
        { type = "item", name = "cable-shielding-1", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
      },
      result = "angels-servo-motor-1",
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-servo-motor-2",
      energy_required = 2,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "cable-harness-2", amount = 1 },
        { type = "item", name = "cable-shielding-2", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
      },
      result = "angels-servo-motor-2",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-servo-motor-3",
      energy_required = 3,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "cable-harness-3", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "cable-shielding-3", amount = 1 },
      },
      result = "angels-servo-motor-3",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-servo-motor-4",
      energy_required = 4,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "cable-harness-4", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "cable-shielding-4", amount = 1 },
      },
      result = "angels-servo-motor-4",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-servo-motor-5",
      energy_required = 6,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "cable-harness-5", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "cable-shielding-5", amount = 1 },
      },
      result = "angels-servo-motor-5",
      icon_size = 32,
    },
  })
end
