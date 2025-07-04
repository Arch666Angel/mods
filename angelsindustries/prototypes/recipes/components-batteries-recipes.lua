if angelsmods.industries.components then
  data:extend({
    -----------------------------------------------------------------------------
    -- BATTERY ASSEMBLY ---------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "battery-1",
      localised_name = { "item-name.battery-1" },
      enabled = false,
      category = "crafting-with-fluid",
      energy_required = 1 * angelsmods.industries.component_crafting_time_multiplier,
      ingredients = {
        { type = "item", name = "battery-casing", amount = 1 },
        { type = "item", name = "battery-frame-1", amount = 1 },
        { type = "item", name = "battery-anode-1", amount = 3 },
        { type = "item", name = "battery-cathode-1", amount = 3 },
        { type = "fluid", name = "battery-electrolyte-1", amount = 10 },
      },
      results = {
        { type = "item", name = "battery-1", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-2",
      localised_name = { "item-name.battery-2" },
      enabled = false,
      category = "crafting-with-fluid",
      energy_required = 2 * angelsmods.industries.component_crafting_time_multiplier,
      ingredients = {
        { type = "item", name = "battery-casing", amount = 1 },
        { type = "item", name = "battery-frame-2", amount = 1 },
        { type = "item", name = "battery-anode-2", amount = 3 },
        { type = "item", name = "battery-cathode-2", amount = 3 },
        { type = "fluid", name = "battery-electrolyte-2", amount = 10 },
      },
      results = {
        { type = "item", name = "battery-2", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-3",
      localised_name = { "item-name.battery-3" },
      enabled = false,
      category = "crafting-with-fluid",
      energy_required = 3 * angelsmods.industries.component_crafting_time_multiplier,
      ingredients = {
        { type = "item", name = "battery-casing", amount = 1 },
        { type = "item", name = "battery-frame-3", amount = 1 },
        { type = "item", name = "battery-anode-3", amount = 3 },
        { type = "item", name = "battery-cathode-3", amount = 3 },
        { type = "fluid", name = "battery-electrolyte-3", amount = 10 },
      },
      results = {
        { type = "item", name = "battery-3", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-4",
      localised_name = { "item-name.battery-4" },
      enabled = false,
      category = "crafting-with-fluid",
      energy_required = 4 * angelsmods.industries.component_crafting_time_multiplier,
      ingredients = {
        { type = "item", name = "battery-casing", amount = 1 },
        { type = "item", name = "battery-frame-4", amount = 1 },
        { type = "item", name = "battery-anode-4", amount = 3 },
        { type = "item", name = "battery-cathode-4", amount = 3 },
        { type = "fluid", name = "battery-electrolyte-4", amount = 10 },
      },
      results = {
        { type = "item", name = "battery-4", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-5",
      localised_name = { "item-name.battery-5" },
      enabled = false,
      category = "crafting-with-fluid",
      energy_required = 6 * angelsmods.industries.component_crafting_time_multiplier,
      ingredients = {
        { type = "item", name = "battery-casing", amount = 1 },
        { type = "item", name = "battery-frame-5", amount = 1 },
        { type = "item", name = "battery-anode-5", amount = 3 },
        { type = "item", name = "battery-cathode-5", amount = 3 },
        { type = "fluid", name = "battery-electrolyte-5", amount = 10 },
      },
      results = {
        { type = "item", name = "battery-5", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-6",
      localised_name = { "item-name.battery-6" },
      enabled = false,
      category = "crafting-with-fluid",
      energy_required = 10 * angelsmods.industries.component_crafting_time_multiplier,
      ingredients = {
        { type = "item", name = "battery-casing", amount = 1 },
        { type = "item", name = "battery-frame-6", amount = 1 },
        { type = "item", name = "battery-anode-6", amount = 3 },
        { type = "item", name = "battery-cathode-6", amount = 3 },
        { type = "fluid", name = "battery-electrolyte-6", amount = 10 },
      },
      results = {
        { type = "item", name = "battery-6", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- BATTERY 1 PARTS [LEAD ACID] ----------------------------------------------
    --[[contents:
    (A) lead-plate/copper-wire 
    (E) sulphuric-acid/saline 
    (C) lead-plate/copper-wire
    (CASE) "paper"]]
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "battery-casing-1",
      localised_name = { "item-name.battery-casing" },
      subgroup = "angels-anodes",
      order = "g",
      enabled = false,
      category = "crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "battery-frame-1", amount = 3 },
      },
      results = {
        { type = "item", name = "battery-casing", amount = 1 },
      },
      allow_decomposition = true,
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/battery-casing.png",
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/battery_component_frame.png",
          tint = { r = 66 / 255, g = 67 / 255, b = 78 / 255 },
          scale = 0.4375 * 0.5,
          shift = { -10, -10 },
        },
      },
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-frame-1",
      localised_name = { "item-name.battery-frame-1" },
      subgroup = "angels-batteries",
      order = "g",
      enabled = false,
      category = "crafting",
      energy_required = 0.5,
      ingredients = {
        { type = "item", name = "angels-solid-paper", amount = 2 },
        { type = "item", name = "angels-plate-lead", amount = 1 },
      },
      results = {
        { type = "item", name = "battery-frame-1", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-anode-1",
      localised_name = { "item-name.battery-anode-1" },
      enabled = false,
      category = "crafting",
      energy_required = 1,
      ingredients = {
        { type = "item", name = "copper-cable", amount = 2 },
        { type = "item", name = "angels-plate-lead", amount = 1 }, --could be lead-anode as an alternate recipe
      },
      results = {
        { type = "item", name = "battery-anode-1", amount = 3 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-cathode-1",
      localised_name = { "item-name.battery-cathode-1" },
      enabled = false,
      category = "crafting",
      energy_required = 1,
      ingredients = {
        { type = "item", name = "copper-cable", amount = 2 },
        { type = "item", name = "angels-plate-lead", amount = 1 },
      },
      results = {
        { type = "item", name = "battery-cathode-1", amount = 3 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-1",
      localised_name = { "fluid-name.battery-electrolyte-1" },
      enabled = false,
      category = "chemistry",
      energy_required = 2.5,
      ingredients = {
        { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 20 },
        { type = "fluid", name = "angels-water-saline", amount = 5 },
      },
      results = {
        { type = "fluid", name = "battery-electrolyte-1", amount = 10 },
      },
      allow_decomposition = true,
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "battery-electrolyte-1",
        "angels-liquid-sulfuric-acid",
        "angels-water-saline",
        "battery-electrolyte-1",
      }),
      icon_size = 64,
    },
    -----------------------------------------------------------------------------
    -- BATTERY 2 PARTS [NICKEL-ZINC] --------------------------------------------
    --[[contents:
    (A) zinc oxide
    (E) saline/water
    (C) nickel
    (CASE) glass casing]]
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "battery-casing-2",
      localised_name = { "item-name.battery-casing" },
      subgroup = "angels-anodes",
      order = "h",
      enabled = false,
      category = "crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "battery-frame-2", amount = 3 },
      },
      results = {
        { type = "item", name = "battery-casing", amount = 2 },
      },
      allow_decomposition = true,
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/battery-casing.png",
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/battery_component_frame.png",
          tint = { r = 100 / 255, g = 100 / 255, b = 100 / 255 },
          scale = 0.4375 * 0.5,
          shift = { -10, -10 },
        },
      },
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-frame-2",
      localised_name = { "item-name.battery-frame-2" },
      subgroup = "angels-batteries",
      order = "h",
      enabled = false,
      category = "crafting-with-fluid",
      energy_required = 1,
      ingredients = {
        { type = "fluid", name = "angels-liquid-molten-glass", amount = 10 },
      },
      results = {
        { type = "item", name = "battery-frame-2", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-anode-2",
      localised_name = { "item-name.battery-anode-2" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 1.5,
      ingredients = {
        { type = "item", name = "angels-wire-tin", amount = 2 },
        { type = "item", name = "angels-solid-zinc-oxide", amount = 1 }, --move some of the zinc options down to equivalent tier, at least make a zinc-oxide from ore recipe
      },
      results = {
        { type = "item", name = "battery-anode-2", amount = 3 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-cathode-2",
      localised_name = { "item-name.battery-cathode-2" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 1.5,
      ingredients = {
        { type = "item", name = "angels-wire-tin", amount = 2 },
        { type = "item", name = "angels-plate-nickel", amount = 1 }, --nickel-cathode as alternative --need to enable nickel plate
      },
      results = {
        { type = "item", name = "battery-cathode-2", amount = 3 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-2",
      localised_name = { "fluid-name.battery-electrolyte-2" },
      enabled = false,
      category = "chemistry",
      energy_required = 2.5,
      ingredients = {
        { type = "fluid", name = "angels-water-purified", amount = 10 },
        { type = "fluid", name = "angels-water-saline", amount = 10 },
      },
      results = {
        { type = "fluid", name = "battery-electrolyte-2", amount = 10 },
      },
      allow_decomposition = true,
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "battery-electrolyte-2",
        "angels-water-purified",
        "angels-water-saline",
        "battery-electrolyte-2",
      }),
      icon_size = 64,
    },
    -----------------------------------------------------------------------------
    -- ALT BATTERY 2 PARTS [MANGANESE-ZINC(ALKALINE)] ---------------------------
    --[[contents:
    (A) zinc plate
    (E) sodium-hydroxide-solution
    (C) manganese-oxide
    (CASE) glass casing]]
    -----------------------------------------------------------------------------
    --[[{
      type = "recipe",
      name = "battery-cathode-2-alt",
      enabled = false,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "angels-wire-tin", amount = 2},
        {type = "item", name = "angels-solid-manganese-oxide", amount =1} --manganese-cathode as alternative
      },
      results=
      {
        {type = "item", name = "battery-cathode-2", amount = 1},
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-2-alt",
      enabled = false,
      category = "chemistry",
      energy_required = 2.5,
      ingredients =
      {
        {type = "fluid", name = "angels-liquid-aqueous-sodium-hydroxide", amount = 20}
      },
      results=
      {
        {type = "fluid", name = "battery-electrolyte-2", amount = 10},
      },
      allow_decomposition = true,
      icon_size = 64,
    },]]
    -----------------------------------------------------------------------------
    -- BATTERY 3 PARTS [Lithium-ion] --------------------------------------------
    --[[contents:
    (A) Carbon Sheet(NEW)
    (E) lithia-water/ethylene-carbonate(NEW)
    (C) lithium-cobalt-oxide(BOBS)
    (CASE) aluminium casing]]
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "battery-casing-3",
      localised_name = { "item-name.battery-casing" },
      subgroup = "angels-anodes",
      order = "i",
      enabled = false,
      category = "crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "battery-frame-3", amount = 3 },
      },
      results = {
        { type = "item", name = "battery-casing", amount = 3 },
      },
      allow_decomposition = true,
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/battery-casing.png",
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/battery_component_frame.png",
          tint = { r = 159 / 255, g = 148 / 255, b = 78 / 255 },
          scale = 0.4375 * 0.5,
          shift = { -10, -10 },
        },
      },
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-frame-3",
      localised_name = { "item-name.battery-frame-3" },
      subgroup = "angels-batteries",
      order = "i",
      enabled = false,
      category = "crafting-with-fluid",
      energy_required = 1.5,
      ingredients = {
        { type = "fluid", name = "angels-liquid-molten-aluminium", amount = 10 },
      },
      results = {
        { type = "item", name = "battery-frame-3", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-anode-3",
      localised_name = { "item-name.battery-anode-3" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "angels-wire-silver", amount = 2 },
        { type = "item", name = "angels-solid-carbon", amount = 1 }, --want carbon sheet or carbon electrode
      },
      results = {
        { type = "item", name = "battery-anode-3", amount = 3 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-cathode-3",
      localised_name = { "item-name.battery-cathode-3" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "angels-wire-silver", amount = 2 },
        { type = "item", name = "angels-solid-lithium", amount = 1 }, --would prefer lithium-cobalt-oxide over these 2, if bobs is active i guess
        { type = "item", name = "angels-solid-cobalt-oxide", amount = 1 },
      },
      results = {
        { type = "item", name = "battery-cathode-3", amount = 3 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-3",
      localised_name = { "fluid-name.battery-electrolyte-3" },
      enabled = false,
      category = "chemistry",
      energy_required = 2.5,
      ingredients = { --lithia-water/ethylene carbonate
        { type = "fluid", name = "angels-thermal-water", amount = 10 }, --prefer lithia water if active
        { type = "fluid", name = "angels-liquid-ethylene-carbonate", amount = 10 }, --need to change this to Ethylene carbonate(aka ethylene glycol carbonate) [https://en.wikipedia.org/wiki/Ethylene_carbonate]
      },
      results = {
        { type = "fluid", name = "battery-electrolyte-3", amount = 10 },
      },
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "battery-electrolyte-3",
        "angels-liquid-ethylene-carbonate",
        "angels-thermal-water",
        "battery-electrolyte-3",
      }),
      allow_decomposition = true,
      icon_size = 64,
    },
    -----------------------------------------------------------------------------
    -- BATTERY 4 PARTS [Lithium-Polymer] ----------------------------------------
    --[[contents:
    (A) Carbon Sheet
    (E) liquid-plastic/lithium-chloride
    (C) lithium/manganese-oxide
    (CASE) plastic casing
    - adds plastic to construction also]]
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "battery-casing-4",
      localised_name = { "item-name.battery-casing" },
      subgroup = "angels-electrolytes",
      order = "j",
      enabled = false,
      category = "crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "battery-frame-4", amount = 3 },
        --{type = "item", name = "plastic-bar", amount = 1}
      },
      results = {
        { type = "item", name = "battery-casing", amount = 4 },
      },
      allow_decomposition = true,
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/battery-casing.png",
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/battery_component_frame.png",
          --tint = {r=1,g=1,b=1},
          scale = 0.4375 * 0.5,
          shift = { -10, -10 },
        },
      },
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-frame-4",
      localised_name = { "item-name.battery-frame-4" },
      subgroup = "angels-cathodes",
      order = "j",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "plastic-bar", amount = 1 },
      },
      results = {
        { type = "item", name = "battery-frame-4", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-anode-4",
      localised_name = { "item-name.battery-anode-4" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3.5,
      ingredients = {
        { type = "item", name = "angels-wire-gold", amount = 2 },
        { type = "item", name = "angels-solid-carbon", amount = 1 },
      },
      results = {
        { type = "item", name = "battery-anode-4", amount = 3 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-cathode-4",
      localised_name = { "item-name.battery-cathode-4" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3.5,
      ingredients = {
        { type = "item", name = "angels-wire-gold", amount = 2 },
        { type = "item", name = "angels-solid-lithium", amount = 1 },
        { type = "item", name = "angels-solid-manganese-oxide", amount = 1 },
      },
      results = {
        { type = "item", name = "battery-cathode-4", amount = 3 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-4",
      localised_name = { "fluid-name.battery-electrolyte-4" },
      enabled = false,
      category = "chemistry",
      energy_required = 2.5,
      ingredients = {
        { type = "fluid", name = "angels-liquid-rubber", amount = 15 }, --realistically, should be PEO, PAN, PMMA or PVdF
        { type = "item", name = "angels-solid-lithium", amount = 1 },
      },
      results = {
        { type = "fluid", name = "battery-electrolyte-4", amount = 10 },
      },
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "battery-electrolyte-4",
        "angels-liquid-rubber",
        angelsmods.functions.fluid_color("Li"),
        "battery-electrolyte-4",
      }),
      allow_decomposition = true,
      icon_size = 64,
    },
    -----------------------------------------------------------------------------
    -- BATTERY 5 PARTS [Glass Cell] ---------------------------------------------
    --[[contents:
    (A) sodium-carbonate/lithium-plate/manganese-dioxide
    (E) liquid-molten-glass/lithium-chloride
    (C) manganese-dioxide/lithium-plate/copper-plate
    (CASE) nickel-casing]]
    -- Expecting many questions about "how this one works" --https://en.wikipedia.org/wiki/Glass_battery
    -- redox active component is sulfur, ferrocene, or manganese dioxide
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "battery-casing-5",
      localised_name = { "item-name.battery-casing" },
      subgroup = "angels-electrolytes",
      order = "k",
      enabled = false,
      category = "crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "battery-frame-5", amount = 3 },
      },
      results = {
        { type = "item", name = "battery-casing", amount = 5 },
      },
      allow_decomposition = true,
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/battery-casing.png",
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/battery_component_frame.png",
          tint = { r = 117 / 255, g = 138 / 255, b = 134 / 255 },
          scale = 0.4375 * 0.5,
          shift = { -10, -10 },
        },
      },
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-frame-5",
      localised_name = { "item-name.battery-frame-5" },
      subgroup = "angels-cathodes",
      order = "k",
      enabled = false,
      category = "crafting-with-fluid",
      energy_required = 3,
      ingredients = {
        { type = "fluid", name = "angels-liquid-molten-nickel", amount = 10 },
      },
      results = {
        { type = "item", name = "battery-frame-5", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-anode-5",
      localised_name = { "item-name.battery-anode-5" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "angels-wire-platinum", amount = 3 },
        { type = "item", name = "angels-solid-lithium", amount = 1 },
        { type = "item", name = "angels-solid-sodium-carbonate", amount = 1 }, --substitute for sodium-carbon mixture
        { type = "item", name = "angels-solid-manganese-oxide", amount = 1 }, --should be dioxide, not oxide
      },
      results = {
        { type = "item", name = "battery-anode-5", amount = 3 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-cathode-5",
      localised_name = { "item-name.battery-cathode-5" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "angels-wire-platinum", amount = 3 },
        { type = "item", name = "angels-solid-lithium", amount = 1 },
        { type = "item", name = "copper-plate", amount = 1 },
        { type = "item", name = "angels-solid-manganese-oxide", amount = 1 }, --should be dioxide, not oxide
      },
      results = {
        { type = "item", name = "battery-cathode-5", amount = 3 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-5",
      localised_name = { "fluid-name.battery-electrolyte-5" },
      enabled = false,
      category = "chemistry",
      energy_required = 2.5,
      ingredients = { --liquid-molten-glass/lithium-chloride
        { type = "fluid", name = "angels-liquid-molten-glass", amount = 10 },
        { type = "item", name = "angels-solid-lithium", amount = 5 }, --prefer lithium chloride or perchlorate
      },
      results = {
        { type = "fluid", name = "battery-electrolyte-5", amount = 10 },
      },
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "battery-electrolyte-5",
        "angels-liquid-molten-glass",
        angelsmods.functions.fluid_color("Li"),
        "battery-electrolyte-5",
      }),
      allow_decomposition = true,
      icon_size = 64,
    },
    -----------------------------------------------------------------------------
    -- BATTERY 6 PARTS ----------------------------------------------------------
    --[[contents:
    (A) zinc-plate
    (E) liquid-sodium-hydroxide
    (C) silver-oxide
    (CASE) tungsten casing?]]
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "battery-casing-6",
      localised_name = { "item-name.battery-casing" },
      subgroup = "angels-electrolytes",
      order = "l",
      enabled = false,
      category = "crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "battery-frame-6", amount = 3 },
      },
      results = {
        { type = "item", name = "battery-casing", amount = 6 },
      },
      allow_decomposition = true,
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/battery-casing.png",
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/battery_component_frame.png",
          tint = { r = 72 / 255, g = 68 / 255, b = 45 / 255 },
          scale = 0.4375 * 0.5,
          shift = { -10, -10 },
        },
      },
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-frame-6",
      localised_name = { "item-name.battery-frame-6" },
      subgroup = "angels-cathodes",
      order = "l",
      enabled = false,
      category = "angels-sintering-5",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "angels-casting-powder-tungsten", amount = 1 },
      },
      results = {
        { type = "item", name = "battery-frame-6", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-anode-6",
      localised_name = { "item-name.battery-anode-6" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 7,
      ingredients = {
        { type = "item", name = "angels-wire-platinum", amount = 2 },
        { type = "item", name = "angels-plate-zinc", amount = 1 },
      },
      results = {
        { type = "item", name = "battery-anode-6", amount = 3 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-cathode-6",
      localised_name = { "item-name.battery-cathode-6" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 7,
      ingredients = {
        { type = "item", name = "angels-wire-platinum", amount = 2 },
        { type = "item", name = "angels-solid-silver-nitrate", amount = 1 }, --want silver-oxide (with bobs?)
      },
      results = {
        { type = "item", name = "battery-cathode-6", amount = 3 },
      },
      allow_decomposition = true,
      icon_size = 64,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-6",
      localised_name = { "fluid-name.battery-electrolyte-6" },
      enabled = false,
      category = "chemistry",
      energy_required = 2.5,
      ingredients = {
        { type = "fluid", name = "angels-liquid-aqueous-sodium-hydroxide", amount = 20 },
      },
      results = {
        { type = "fluid", name = "battery-electrolyte-6", amount = 10 },
      },
      allow_decomposition = true,
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "battery-electrolyte-6",
        "angels-liquid-aqueous-sodium-hydroxide",
        "angels-liquid-aqueous-sodium-hydroxide",
        "battery-electrolyte-6",
      }),
      icon_size = 64,
    },
    -----------------------------------------------------------------------------
    -- ALT BATTERY 6 PARTS [Tungsten-Lithium] -----------------------------------
    --[[contents:
    (A) Tungsten-Carbon-nanotubes(NEW)/copper-plate
    (E) thermal-water
    (C) lithium-plate/aluminium-plate
    (CASE) tungsten casing?]]
    -----------------------------------------------------------------------------
  })
end
