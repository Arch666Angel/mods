if angelsmods.industries.components then
  data:extend({
    -----------------------------------------------------------------------------
    -- WEAPON BODIES ------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "body-1",
      localised_name = { "item-name.body-1" },
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
      localised_name = { "item-name.body-2" },
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
      localised_name = { "item-name.body-3" },
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
      localised_name = { "item-name.body-4" },
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
      localised_name = { "item-name.body-5" },
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
      localised_name = { "item-name.weapon-1" },
      energy_required = 1 * angelsmods.industries.component_crafting_time_multiplier, -- 1:2 ratio with body
      category = "crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "body-1", amount = 1 },
        { type = "item", name = "angels-trigger", amount = 1 },
      },
      results = {
        { type = "item", name = "weapon-1", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-2",
      localised_name = { "item-name.weapon-2" },
      energy_required = 1.5 * angelsmods.industries.component_crafting_time_multiplier, -- 2:3 ratio with body
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "body-2", amount = 1 },
        { type = "item", name = "angels-trigger", amount = 1 },
        { type = "item", name = "angels-explosionchamber", amount = 1 },
      },
      results = {
        { type = "item", name = "weapon-2", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-3",
      localised_name = { "item-name.weapon-3" },
      energy_required = 2 * angelsmods.industries.component_crafting_time_multiplier, -- 3:4 ratio with body
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "body-3", amount = 1 },
        { type = "item", name = "angels-trigger", amount = 1 },
        { type = "item", name = "angels-explosionchamber", amount = 1 },
        { type = "item", name = "angels-fluidchamber", amount = 1 },
      },
      results = {
        { type = "item", name = "weapon-3", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-4",
      localised_name = { "item-name.weapon-4" },
      energy_required = 3.5 * angelsmods.industries.component_crafting_time_multiplier, -- 4:7 ratio with body
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "body-4", amount = 1 },
        { type = "item", name = "angels-trigger", amount = 1 },
        { type = "item", name = "angels-explosionchamber", amount = 1 },
        { type = "item", name = "angels-fluidchamber", amount = 1 },
        { type = "item", name = "angels-energycrystal", amount = 1 },
      },
      results = {
        { type = "item", name = "weapon-4", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-5",
      localised_name = { "item-name.weapon-5" },
      energy_required = 5 * angelsmods.industries.component_crafting_time_multiplier, -- 3:5 ratio with body
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
      results = {
        { type = "item", name = "weapon-5", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- WEAPON SUBCOMPONENTS -----------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-trigger",
      localised_name = { "item-name.angels-trigger" },
      subgroup = "angels-weapons-body",
      order = "f",
      energy_required = 0.5,
      category = "crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 1 },
      },
      results = { { type = "item", name = "angels-trigger", amount = 1 } },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-explosionchamber",
      localised_name = { "item-name.angels-explosionchamber" },
      subgroup = "angels-weapons-body",
      order = "g",
      energy_required = 1,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 1 },
      },
      results = { { type = "item", name = "angels-explosionchamber", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-fluidchamber",
      localised_name = { "item-name.angels-fluidchamber" },
      subgroup = "angels-weapons-body",
      order = "h",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-aluminium", amount = 1 },
      },
      results = { { type = "item", name = "angels-fluidchamber", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-energycrystal",
      localised_name = { "item-name.angels-energycrystal" },
      subgroup = "angels-weapons-body",
      order = "i",
      energy_required = 2,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-titanium", amount = 1 },
      },
      results = { { type = "item", name = "angels-energycrystal", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-acceleratorcoil",
      localised_name = { "item-name.angels-acceleratorcoil" },
      subgroup = "angels-weapons-body",
      order = "j",
      energy_required = 2.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-tungsten", amount = 1 },
        { type = "item", name = "steel-plate", amount = 1 },
        { type = "fluid", name = "lubricant", amount = 1 },
      },
      results = { { type = "item", name = "angels-acceleratorcoil", amount = 1 } },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- WEAPON COMPONENTS --------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "weapon-parts-trigger",
      localised_name = { "item-name.weapon-parts" },
      subgroup = "angels-weapons",
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
          icon = "__angelsindustriesgraphics__/graphics/icons/weapon-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/trigger.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-parts-explosionchamber",
      localised_name = { "item-name.weapon-parts" },
      subgroup = "angels-weapons",
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
          icon = "__angelsindustriesgraphics__/graphics/icons/weapon-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/explosion-chamber.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-parts-fluidchamber",
      localised_name = { "item-name.weapon-parts" },
      subgroup = "angels-weapons",
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
          icon = "__angelsindustriesgraphics__/graphics/icons/weapon-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/fluid-chamber.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-parts-energycrystal",
      localised_name = { "item-name.weapon-parts" },
      subgroup = "angels-weapons",
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
          icon = "__angelsindustriesgraphics__/graphics/icons/weapon-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/energy-chamber.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "weapon-parts-acceleratorcoil",
      localised_name = { "item-name.weapon-parts" },
      subgroup = "angels-weapons",
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
          icon = "__angelsindustriesgraphics__/graphics/icons/weapon-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/accelerator-coil.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
  })
end
