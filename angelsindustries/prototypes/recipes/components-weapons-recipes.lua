if angelsmods.industries.components then
  data:extend({
    -----------------------------------------------------------------------------
    -- WEAPON BODIES ------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "body-1",
      enabled = false,
      category = "crafting",
      energy_required = 0.5,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 2 },
      },
      results = {
        { type = "item", name = "body-1", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "body-2",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 1,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 2 },
      },
      results = {
        { type = "item", name = "body-2", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "body-3",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 1.5,
      ingredients = {
        { type = "item", name = "angels-plate-aluminium", amount = 2 },
      },
      results = {
        { type = "item", name = "body-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "body-4",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "angels-plate-titanium", amount = 2 },
      },
      results = {
        { type = "item", name = "body-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "body-5",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3,
      ingredients = {
        { type = "item", name = "angels-plate-tungsten", amount = 2 },
      },
      results = {
        { type = "item", name = "body-5", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- WEAPONS ------------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "weapon-1",
      energy_required = 1, -- 1:2 ratio with body
      category = "crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "body-1", amount = 1 },
        { type = "item", name = "angels-trigger", amount = 1 },
      },
      result = "weapon-1",
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-2",
      energy_required = 1.5, -- 2:3 ratio with body
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "body-2", amount = 1 },
        { type = "item", name = "angels-trigger", amount = 1 },
        { type = "item", name = "angels-explosionchamber", amount = 1 },
      },
      result = "weapon-2",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-3",
      energy_required = 2, -- 3:4 ratio with body
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "body-3", amount = 1 },
        { type = "item", name = "angels-trigger", amount = 1 },
        { type = "item", name = "angels-explosionchamber", amount = 1 },
        { type = "item", name = "angels-fluidchamber", amount = 1 },
      },
      result = "weapon-3",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-4",
      energy_required = 3.5, -- 4:7 ratio with body
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "body-4", amount = 1 },
        { type = "item", name = "angels-trigger", amount = 1 },
        { type = "item", name = "angels-explosionchamber", amount = 1 },
        { type = "item", name = "angels-fluidchamber", amount = 1 },
        { type = "item", name = "angels-energycrystal", amount = 1 },
      },
      result = "weapon-4",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-5",
      energy_required = 5, -- 3:5 ratio with body
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "body-5", amount = 1 },
        { type = "item", name = "angels-trigger", amount = 1 },
        { type = "item", name = "angels-explosionchamber", amount = 1 },
        { type = "item", name = "angels-fluidchamber", amount = 1 },
        { type = "item", name = "angels-energycrystal", amount = 1 },
        { type = "item", name = "angels-acceleratorcoil", amount = 1 },
      },
      result = "weapon-5",
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- WEAPON SUBCOMPONENTS -----------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-trigger",
      energy_required = 0.5,
      category = "crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 1 },
      },
      result = "angels-trigger",
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-explosionchamber",
      energy_required = 1,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 1 },
      },
      result = "angels-explosionchamber",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-fluidchamber",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-aluminium", amount = 1 },
      },
      result = "angels-fluidchamber",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-energycrystal",
      energy_required = 2,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-titanium", amount = 1 },
      },
      result = "angels-energycrystal",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-acceleratorcoil",
      energy_required = 2.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-tungsten", amount = 1 },
        { type = "item", name = "steel-plate", amount = 1 },
        { type = "fluid", name = "lubricant", amount = 1 },
      },
      result = "angels-acceleratorcoil",
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- WEAPON COMPONENTS --------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "weapon-parts-trigger",
      subgroup = "angels-weapons-parts",
      order = "f",
      energy_required = 3,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-trigger", amount = 4 },
      },
      results = {
        { type = "item", name = "weapon-parts", amount = 2 },
      },
      icons = {
        {
          icon = "__angelsindustries__/graphics/icons/weapon-parts.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/trigger.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-parts-explosionchamber",
      subgroup = "angels-weapons-parts",
      order = "g",
      energy_required = 3,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-explosionchamber", amount = 4 },
      },
      results = {
        { type = "item", name = "weapon-parts", amount = 3 },
      },
      icons = {
        {
          icon = "__angelsindustries__/graphics/icons/weapon-parts.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/explosion-chamber.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-parts-fluidchamber",
      subgroup = "angels-weapons-parts",
      order = "h",
      energy_required = 3,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-fluidchamber", amount = 4 },
      },
      results = {
        { type = "item", name = "weapon-parts", amount = 4 },
      },
      icons = {
        {
          icon = "__angelsindustries__/graphics/icons/weapon-parts.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/fluid-chamber.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-parts-energycrystal",
      subgroup = "angels-weapons-parts",
      order = "i",
      energy_required = 3,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-energycrystal", amount = 4 },
      },
      results = {
        { type = "item", name = "weapon-parts", amount = 5 },
      },
      icons = {
        {
          icon = "__angelsindustries__/graphics/icons/weapon-parts.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/energy-chamber.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-parts-acceleratorcoil",
      subgroup = "angels-weapons-parts",
      order = "j",
      energy_required = 3,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-acceleratorcoil", amount = 4 },
      },
      results = {
        { type = "item", name = "weapon-parts", amount = 6 },
      },
      icons = {
        {
          icon = "__angelsindustries__/graphics/icons/weapon-parts.png",
        },
        {
          icon = "__angelsindustries__/graphics/icons/accelerator-coil.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
    },
  })
end
