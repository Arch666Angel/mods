if angelsmods.industries.components then
  data:extend(
  {
    -----------------------------------------------------------------------------
    -- BATTERIES ----------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "battery-1", 
      icon = "__angelsindustries__/graphics/icons/battery-lead.png",
      icon_size = 32,
      subgroup = "angels-batteries",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-2", 
      icon = "__angelsindustries__/graphics/icons/battery-nickel.png",
      icon_size = 32,
      subgroup = "angels-batteries",
      order = "b",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-3", 
      icon = "__angelsindustries__/graphics/icons/battery-lithium.png",
      icon_size = 32,
      subgroup = "angels-batteries",
      order = "c",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-4", 
      icon = "__angelsindustries__/graphics/icons/battery-lithium.png",
      icon_size = 32,
      subgroup = "angels-batteries",
      order = "d",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-5", 
      icon = "__angelsindustries__/graphics/icons/battery-lithium.png",
      icon_size = 32,
      subgroup = "angels-batteries",
      order = "e",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-6", 
      icon = "__angelsindustries__/graphics/icons/battery-zinc.png",
      icon_size = 32,
      subgroup = "angels-batteries",
      order = "f",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- BATTERY FRAMES -----------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "battery-frame-1", --lead
      icons ={{icon ="__angelsindustries__/graphics/icons/battery_component_frame.png", tint={r=66,g=67,b=78}}},
      icon_size = 64,
      subgroup = "angels-battery-casings",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-frame-2", --plastic
      icons ={{icon ="__angelsindustries__/graphics/icons/battery_component_frame.png", tint={r=100,g=100,b=100}}},
      icon_size = 64,
      subgroup = "angels-battery-casings",
      order = "b",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-frame-3", --glass
      icons ={{icon ="__angelsindustries__/graphics/icons/battery_component_frame.png", tint={r=159,g=148,b=78}}},
      icon_size = 64,
      subgroup = "angels-battery-casings",
      order = "c",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-frame-4", --plastic, no tinting
      icons ={{icon ="__angelsindustries__/graphics/icons/battery_component_frame.png"}},
      icon_size = 64,
      subgroup = "angels-battery-casings",
      order = "d",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-frame-5", --nickel
      icons ={{icon ="__angelsindustries__/graphics/icons/battery_component_frame.png", tint={r=117,g=138,b=134}}},
      icon_size = 64,
      subgroup = "angels-battery-casings",
      order = "e",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-frame-6", --tungsten
      icons ={{icon ="__angelsindustries__/graphics/icons/battery_component_frame.png", tint={r=72,g=68,b=45}}},
      icon_size = 64,
      subgroup = "angels-battery-casings",
      order = "f",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-casing", 
      icon = "__angelsindustries__/graphics/icons/battery-casing.png",
      icon_size = 64,
      subgroup = "angels-battery-casings",
      order = "g",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- BATTERY ELECTRODES -------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "item",
      name = "battery-anode-1",  --lead
      icons={{icon = "__angelsindustries__/graphics/icons/battery_component_A.png", tint = {r=66,g=67,b=78}}},
      icon_size = 64,
      subgroup = "angels-anodes",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-anode-2", --zinc
      icons={{icon = "__angelsindustries__/graphics/icons/battery_component_A.png", tint = {r=93,g=174,b=168}}},
      icon_size = 64,
      subgroup = "angels-anodes",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-anode-3", --carbon
      icons={{icon = "__angelsindustries__/graphics/icons/battery_component_A.png", tint = {r=0,g=0,b=0}}},
      icon_size = 64,
      subgroup = "angels-anodes",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-anode-4", --carbon, but used with gold wire... so will use gold tinting
      icons={{icon = "__angelsindustries__/graphics/icons/battery_component_A.png", tint = {r=222,g=177,b=52}}},
      icon_size = 64,
      subgroup = "angels-anodes",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-anode-5", --sodium
      icons={{icon = "__angelsindustries__/graphics/icons/battery_component_A.png", tint = {r=93,g=131,b=203}}},
      icon_size = 64,
      subgroup = "angels-anodes",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-anode-6", --zinc
      icons={{icon = "__angelsindustries__/graphics/icons/battery_component_A.png", tint = {r=93,g=174,b=168}}},
      icon_size = 64,
      subgroup = "angels-anodes",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-cathode-1", --lead
      icons={{icon = "__angelsindustries__/graphics/icons/battery_component_C.png", tint = {r=66,g=67,b=78}}},
      icon_size = 64,
      subgroup = "angels-cathodes",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-cathode-2", --nickel
      icons={{icon = "__angelsindustries__/graphics/icons/battery_component_C.png", tint = {r=117,g=138,b=134}}},
      icon_size = 64,
      subgroup = "angels-cathodes",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-cathode-3", --lithium-cobaltite
      icons={{icon = "__angelsindustries__/graphics/icons/battery_component_C.png", tint = {r=68,g=71,b=98}}},
      icon_size = 64,
      subgroup = "angels-cathodes",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-cathode-4", --manganese/lithium
      icons={{icon = "__angelsindustries__/graphics/icons/battery_component_C.png", tint = {r=200,g=78,b=78}}},
      icon_size = 64,
      subgroup = "angels-cathodes",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-cathode-5", --copper
      icons={{icon = "__angelsindustries__/graphics/icons/battery_component_C.png", tint = {r=137,g=90,b=78}}},
      icon_size = 64,
      subgroup = "angels-cathodes",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    {
      type = "item",
      name = "battery-cathode-6", --silver
      icons={{icon = "__angelsindustries__/graphics/icons/battery_component_C.png", tint = {r=201,g=210,b=216}}},
      icon_size = 64,
      subgroup = "angels-cathodes",
      order = "a",
      stack_size = angelsmods.industries.block_stack_size,
    },
    -----------------------------------------------------------------------------
    -- BATTERY ELECTROLYTES -----------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "fluid",
      name = "battery-electrolyte-1", --sulfuric/saline
      icons = {{icon = "__angelsindustries__/graphics/icons/battery_component_electrolyte.png",tint={r=255,g=216,b=0}}},
      icon_size = 64,
      subgroup = "angels-electrolytes",
      order = "a",
      default_temperature=15,
      auto_barrel = false,
      heat_capacity = "0.01J",
      max_temperature = 100,
      base_color = {r=255,g=216,b=0,a=0.5},
      flow_color = {r=255,g=216,b=0,a=0.5}
    },
    {
      type = "fluid",
      name = "battery-electrolyte-2", --saline/water
      icons = {{icon = "__angelsindustries__/graphics/icons/battery_component_electrolyte.png",tint={r=127,g=201,b=255}}},
      icon_size = 64,
      subgroup = "angels-electrolytes",
      order = "a",
      default_temperature=15,
      auto_barrel = false,
      heat_capacity = "0.01J",
      max_temperature = 100,
      base_color = {1,1,1},
      flow_color = {1,1,1}
    },
    {
      type = "fluid",
      name = "battery-electrolyte-3", --lithia-water-carbon
      icons = {{icon = "__angelsindustries__/graphics/icons/battery_component_electrolyte.png",tint={r=16,g=86,b=73}}},
      icon_size = 64,
      subgroup = "angels-electrolytes",
      order = "a",
      default_temperature=15,
      auto_barrel = false,
      heat_capacity = "0.01J",
      max_temperature = 100,
      base_color = {1,1,1},
      flow_color = {1,1,1}
    },
    {
      type = "fluid",
      name = "battery-electrolyte-4", --liquid-plastic (no-tint)
      icons = {{icon = "__angelsindustries__/graphics/icons/battery_component_electrolyte.png"}},
      icon_size = 64,
      subgroup = "angels-electrolytes",
      order = "a",
      default_temperature=15,
      auto_barrel = false,
      heat_capacity = "0.01J",
      max_temperature = 100,
      base_color = {1,1,1},
      flow_color = {1,1,1}
    },
    {
      type = "fluid",
      name = "battery-electrolyte-5", --lithia glass
      icons = {{icon = "__angelsindustries__/graphics/icons/battery_component_electrolyte.png",tint={r=27,g=142,b=119}}},
      icon_size = 64,
      subgroup = "angels-electrolytes",
      order = "a",
      default_temperature=15,
      auto_barrel = false,
      heat_capacity = "0.01J",
      max_temperature = 100,
      base_color = {1,1,1},
      flow_color = {1,1,1}
    },
    {
      type = "fluid",
      name = "battery-electrolyte-6", --sodium
      icons = {{icon = "__angelsindustries__/graphics/icons/battery_component_electrolyte.png",tint={r = 0.9, g = 0.9, b = 0.9}}},
      icon_size = 64,
      subgroup = "angels-electrolytes",
      order = "a",
      default_temperature=15,
      auto_barrel = false,
      heat_capacity = "0.01J",
      max_temperature = 100,
      base_color = {1,1,1},
      flow_color = {1,1,1}
    },
  })
end