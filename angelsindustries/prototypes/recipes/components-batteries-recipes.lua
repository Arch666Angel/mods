if angelsmods.industries.components then
  data:extend(
  {
    -----------------------------------------------------------------------------
    -- BATTERY ASSEMBLY ---------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "battery-1",
      enabled = true,
      category = "crafting-with-fluid",
      energy_required = 0.5,
      ingredients =
      {
        {type="item", name = "battery-casing", amount = 1},
        {type="item", name = "battery-anode-1", amount = 1},
        {type="item", name = "battery-cathode-1", amount = 1},
        {type="fluid", name = "battery-electrolyte-1", amount = 10}
      },
      results=
      {
        {type="item", name="battery-1", amount=1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-2",
      enabled = true,
      category = "crafting-with-fluid",
      energy_required = 0.5,
      ingredients =
      {
        {type="item", name = "battery-casing", amount = 1},
        {type="item", name = "battery-anode-2", amount = 1},
        {type="item", name = "battery-cathode-2", amount = 1},
        {type="fluid", name = "battery-electrolyte-2", amount = 10}
      },
      results=
      {
        {type="item", name="battery-2", amount=1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-3",
      enabled = true,
      category = "crafting-with-fluid",
      energy_required = 0.5,
      ingredients =
      {
        {type="item", name = "battery-casing", amount = 1},
        {type="item", name = "battery-anode-3", amount = 1},
        {type="item", name = "battery-cathode-3", amount = 1},
        {type="fluid", name = "battery-electrolyte-3", amount = 10}
      },
      results=
      {
        {type="item", name="battery-3", amount=1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-4",
      enabled = true,
      category = "crafting-with-fluid",
      energy_required = 0.5,
      ingredients =
      {
        {type="item", name = "battery-casing", amount = 1},
        {type="item", name = "battery-anode-4", amount = 1},
        {type="item", name = "battery-cathode-4", amount = 1},
        {type="fluid", name = "battery-electrolyte-4", amount = 10}
      },
      results=
      {
        {type="item", name="battery-4", amount=1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-5",
      enabled = true,
      category = "crafting-with-fluid",
      energy_required = 0.5,
      ingredients =
      {
        {type="item", name = "battery-casing", amount = 1},
        {type="item", name = "battery-anode-5", amount = 1},
        {type="item", name = "battery-cathode-5", amount = 1},
        {type="fluid", name = "battery-electrolyte-5", amount = 10}
      },
      results=
      {
        {type="item", name="battery-5", amount=1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-6",
      enabled = true,
      category = "crafting-with-fluid",
      energy_required = 0.5,
      ingredients =
      {
        {type="item", name = "battery-casing", amount = 1},
        {type="item", name = "battery-anode-6", amount = 1},
        {type="item", name = "battery-cathode-6", amount = 1},
        {type="fluid", name = "battery-electrolyte-6", amount = 10}
      },
      results=
      {
        {type="item", name="battery-6", amount=1},
      },
      allow_decomposition = false,
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
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type="item", name = "battery-frame-1", amount = 1},
      },
      results=
      {
        {type = "item", name = "battery-casing", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-frame-1",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "solid-paper", amount = 2},
        {type = "item", name = "angels-plate-lead", amount =1}
      },
      results=
      {
        {type = "item", name = "battery-frame-1", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-anode-1",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "copper-cable", amount = 2},
        {type = "item", name = "angels-plate-lead", amount =1} --could be lead-anode as an alternate recipe
      },
      results=
      {
        {type = "item", name = "battery-anode-1", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-cathode-1",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "copper-cable", amount = 2},
        {type = "item", name = "angels-plate-lead", amount =1}
      },
      results=
      {
        {type = "item", name = "battery-cathode-1", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-1",
      enabled = true,
      category = "chemistry",
      energy_required = 2.5,
      ingredients =
      {
        {type = "fluid", name = "liquid-sulfuric-acid", amount = 20},
        {type = "fluid", name = "water-saline", amount =5}
      },
      results=
      {
        {type = "fluid", name = "battery-electrolyte-1", amount = 10},
      },
      allow_decomposition = false,
      icon_size = 32,
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
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type="item", name = "battery-frame-2", amount = 1},
      },
      results=
      {
        {type = "item", name = "battery-casing", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-frame-2",
      enabled = true,
      category = "crafting-with-fluid",
      energy_required = 2.5,
      ingredients =
      {
        {type = "fluid", name = "liquid-molten-glass", amount = 10},
      },
      results=
      {
        {type = "item", name = "battery-frame-2", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-anode-2",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "angels-wire-tin", amount = 2},
        {type = "item", name = "solid-zinc-oxide", amount =1} --move some of the zinc options down to equivalent tier, at least make a zinc-oxide from ore recipe
      },
      results=
      {
        {type = "item", name = "battery-anode-2", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-cathode-2",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "angels-wire-tin", amount = 2},
        {type = "item", name = "angels-plate-nickel", amount =1} --nickel-cathode as alternative --need to enable nickel plate
      },
      results=
      {
        {type = "item", name = "battery-cathode-2", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-2",
      enabled = true,
      category = "chemistry",
      energy_required = 2.5,
      ingredients =
      {
        {type = "fluid", name = "water-purified", amount = 10},
        {type = "fluid", name = "water-saline", amount =10}
      },
      results=
      {
        {type = "fluid", name = "battery-electrolyte-6", amount = 10},
      },
      allow_decomposition = false,
      icon_size = 32,
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
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "angels-wire-tin", amount = 2},
        {type = "item", name = "solid-manganese-oxide", amount =1} --manganese-cathode as alternative
      },
      results=
      {
        {type = "item", name = "battery-cathode-2", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-2-alt",
      enabled = true,
      category = "chemistry",
      energy_required = 2.5,
      ingredients =
      {
        {type = "fluid", name = "liquid-aqueous-sodium-hydroxide", amount = 20}
      },
      results=
      {
        {type = "fluid", name = "battery-electrolyte-2", amount = 10},
      },
      allow_decomposition = false,
      icon_size = 32,
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
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type="item", name = "battery-frame-3", amount = 1},
      },
      results=
      {
        {type = "item", name = "battery-casing", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-frame-3",
      enabled = true,
      category = "crafting-with-fluid",
      energy_required = 2.5,
      ingredients =
      {
        {type = "fluid", name = "liquid-molten-aluminium", amount = 10},
      },
      results=
      {
        {type = "item", name = "battery-frame-3", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-anode-3",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "angels-wire-silver", amount = 2},
        {type = "item", name = "solid-carbon", amount =1} --want carbon sheet or carbon electrode
      },
      results=
      {
        {type = "item", name = "battery-anode-3", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-cathode-3",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "angels-wire-silver", amount = 2},
        {type = "item", name = "solid-lithium", amount =1}, --would prefer lithium-cobalt-oxide over these 2, if bobs is active i guess
        {type = "item", name = "solid-cobalt-oxide", amount =1}
      },
      results=
      {
        {type = "item", name = "battery-cathode-3", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-3",
      enabled = true,
      category = "chemistry",
      energy_required = 2.5,
      ingredients =
      { --lithia-water/ethylene carbonate
        {type = "fluid", name = "thermal-water", amount = 10},--prefer lithia water if active
        {type = "fluid", name = "gas-polyethylene", amount =10} --need to change this to Ethylene carbonate(aka ethylene glycol carbonate) [https://en.wikipedia.org/wiki/Ethylene_carbonate]
      },
      results=
      {
        {type = "fluid", name = "battery-electrolyte-3", amount = 10},
      },
      allow_decomposition = false,
      icon_size = 32,
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
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type="item", name = "battery-frame-4", amount = 1},
        {type = "item", name = "plastic-bar", amount = 1}
      },
      results=
      {
        {type = "item", name = "battery-casing", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-frame-4",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "plastic-bar", amount = 1},
      },
      results=
      {
        {type = "item", name = "battery-frame-4", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-anode-4",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "angels-wire-gold", amount = 2},
        {type = "item", name = "solid-carbon", amount =1} 
      },
      results=
      {
        {type = "item", name = "battery-anode-4", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-cathode-4",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "angels-wire-gold", amount = 2},
        {type = "item", name = "solid-lithium", amount =1},
        {type = "item", name = "solid-manganese-oxide", amount =1}
      },
      results=
      {
        {type = "item", name = "battery-cathode-4", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-4",
      enabled = true,
      category = "chemistry",
      energy_required = 2.5,
      ingredients =
      {
        {type = "fluid", name = "liquid-plastic", amount = 15},
        {type = "item", name = "solid-lithium", amount =1}
      },
      results=
      {
        {type = "fluid", name = "battery-electrolyte-4", amount = 10},
      },
      allow_decomposition = false,
      icon_size = 32,
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
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type="item", name = "battery-frame-5", amount = 1},
      },
      results=
      {
        {type = "item", name = "battery-casing", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-frame-5",
      enabled = true,
      category = "crafting-with-fluid",
      energy_required = 2.5,
      ingredients =
      {
        {type = "fluid", name = "liquid-molten-nickel", amount = 10},
      },
      results=
      {
        {type = "item", name = "battery-frame-5", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-anode-5",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "angels-wire-platinum", amount = 3},
        {type = "item", name = "solid-lithium", amount =1},
        {type = "item", name = "solid-sodium-carbonate", amount =1}, --substitute for sodium-carbon mixture
        {type = "item", name = "solid-manganese-oxide", amount =1}, --should be dioxide, not oxide
      },
      results=
      {
        {type = "item", name = "battery-anode-5", amount = 3},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-cathode-5",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      { 
        {type = "item", name = "angels-wire-platinum", amount = 3},
        {type = "item", name = "solid-lithium", amount =1},
        {type = "item", name = "copper-plate", amount =1},
        {type = "item", name = "solid-manganese-oxide", amount =1},--should be dioxide, not oxide
      },
      results=
      {
        {type = "item", name = "battery-cathode-5", amount = 3},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-5",
      enabled = true,
      category = "chemistry",
      energy_required = 2.5,
      ingredients =
      { --liquid-molten-glass/lithium-chloride
        {type = "fluid", name = "liquid-molten-glass", amount = 10},
        {type = "item", name = "solid-lithium", amount =10} --prefer lithium chloride or perchlorate
      },
      results=
      {
        {type = "fluid", name = "battery-electrolyte-5", amount = 10},
      },
      allow_decomposition = false,
      icon_size = 32,
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
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type="item", name = "battery-frame-6", amount = 1},
      },
      results=
      {
        {type = "item", name = "battery-casing", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-frame-6",
      enabled = true,
      category = "sintering",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "casting-powder-tungsten", amount = 1},
      },
      results=
      {
        {type = "item", name = "battery-frame-6", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-anode-6",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "angels-wire-platinum", amount = 2},
        {type = "item", name = "angels-plate-zinc", amount =1} 
      },
      results=
      {
        {type = "item", name = "battery-anode-6", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-cathode-6",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients =
      {
        {type = "item", name = "angels-wire-platinum", amount = 2},
        {type = "item", name = "solid-silver-nitrate", amount =1}, --want silver-oxide (with bobs?)
      },
      results=
      {
        {type = "item", name = "battery-cathode-6", amount = 1},
      },
      allow_decomposition = false,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "battery-electrolyte-6",
      enabled = true,
      category = "chemistry",
      energy_required = 2.5,
      ingredients =
      {
        {type = "fluid", name = "liquid-aqueous-sodium-hydroxide", amount = 20}
      },
      results=
      {
        {type = "fluid", name = "battery-electrolyte-6", amount = 10},
      },
      allow_decomposition = false,
      icon_size = 32,
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