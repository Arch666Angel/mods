data:extend(
  {
    --ITEMS
    {
      type = "item",
      name = "solid-mud",
      icon = "__angelsrefining__/graphics/icons/solid-mud.png",
      icon_size = 32,
      subgroup = "water-salination",
      stack_size = 200
    },
    {
      type = "item",
      name = "solid-limestone",
      icon = "__angelsrefining__/graphics/icons/solid-limestone.png",
      icon_size = 32,
      subgroup = "water-salination",
      stack_size = 200
    },
    {
      type = "item",
      name = "solid-sand",
      icon = "__angelsrefining__/graphics/icons/solid-sand.png",
      icon_size = 32,
      subgroup = "water-salination",
      stack_size = 200
    },
    {
      type = "item",
      name = "solid-clay",
      icon = "__angelsrefining__/graphics/icons/solid-clay.png",
      icon_size = 32,
      subgroup = "water-salination",
      stack_size = 200
    },
    --SALTS
    {
      type = "item",
      name = "solid-salt",
      icon = "__angelsrefining__/graphics/icons/solid-salt.png",
      icon_size = 32,
      subgroup = "water-salination",
      stack_size = 200
    },
    {
      type = "item",
      name = "solid-lithium",
      icon = "__angelsrefining__/graphics/icons/solid-lithium.png",
      icon_size = 32,
      subgroup = "water-salination",
      stack_size = 200
    },
    --FLUIDS
    {
      type = "fluid",
      name = "water-saline",
      icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {039,112,194}, {168,173,173}, {070,133,232}, {185,185,185,0.8} }),
      subgroup = "water-treatment-fluid",
      order = "c",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.9, g = 0.9, b = 1},
      flow_color = {r = 0.9, g = 0.9, b = 1},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-purified",
      icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {116,140,211}, nil, {122,148,221} }),
      subgroup = "water-treatment-fluid",
      order = "b",
      default_temperature = 25,
      heat_capacity = "0.2KJ",
      base_color = {r = 0.7, g = 0.7, b = 1},
      flow_color = {r = 0.7, g = 0.7, b = 1},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-yellow-waste",
      icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {116,140,211}, {255,219,051}, {109,070,020,0.8}, {254,204,049} }),
      subgroup = "water-cleaning-fluid",
      order = "a",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.9, g = 0.9, b = 0.4},
      flow_color = {r = 0.9, g = 0.9, b = 0.4},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-red-waste",
      icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {116,140,211}, {155,063,061}, {109,070,020,0.8}, {124,050,048} }),
      subgroup = "water-cleaning-fluid",
      order = "d",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.9, g = 0.4, b = 0.4},
      flow_color = {r = 0.9, g = 0.4, b = 0.4},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-green-waste",
      icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {116,140,211}, {102,204,049}, {109,070,020,0.8}, {096,207,052} }),
      subgroup = "water-cleaning-fluid",
      order = "c",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.4, g = 0.9, b = 0.4},
      flow_color = {r = 0.4, g = 0.9, b = 0.4},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-greenyellow-waste",
      icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {116,140,211}, {218,253,064}, {109,070,020,0.8}, {173,210,042} }),
      subgroup = "water-cleaning-fluid",
      order = "b",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.9, g = 0.9, b = 0.4},
      flow_color = {r = 0.9, g = 0.9, b = 0.4},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-mineralized",
      icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {039,112,194}, {093,067,049}, {070,133,232}, {109,070,020,0.8} }),
      subgroup = "water-treatment-fluid",
      order = "d",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 0.6},
      flow_color = {r = 0.7, g = 0.7, b = 0.6},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    --WASHING
    {
      type = "fluid",
      name = "water-viscous-mud",
      icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {117,089,036}, {117,089,036}, {102,076,029,0.8}, {102,076,029,0.8} }),
      subgroup = "water-washing-fluid",
      order = "a",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 0.6},
      flow_color = {r = 0.7, g = 0.7, b = 0.6},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-heavy-mud",
      icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {070,133,232}, {117,089,036}, {102,076,029,0.8}, {102,076,029,0.8} }),
      subgroup = "water-washing-fluid",
      order = "b",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 0.6},
      flow_color = {r = 0.7, g = 0.7, b = 0.6},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-concentrated-mud",
      icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {070,133,232}, {070,133,232}, {109,070,020,0.8}, {109,070,020,0.8} }),
      subgroup = "water-washing-fluid",
      order = "c",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 0.6},
      flow_color = {r = 0.7, g = 0.7, b = 0.6},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-light-mud",
      icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {109,070,020}, {109,070,020}, {070,133,232,0.8}, {070,133,232,0.8} }),
      subgroup = "water-washing-fluid",
      order = "d",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 0.6},
      flow_color = {r = 0.7, g = 0.7, b = 0.6},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-thin-mud",
      icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {039,112,194}, {109,070,020}, {070,133,232,0.8}, {070,133,232,0.8} }),
      subgroup = "water-washing-fluid",
      order = "e",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 0.6},
      flow_color = {r = 0.7, g = 0.7, b = 0.6},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    --VOID
    {
      type = "item",
      name = "water-void",
      icons = {
        {
          icon = "__angelsrefining__/graphics/icons/void.png",
        },
        {
          icon = "__angelsrefining__/graphics/icons/clarifier.png",
          scale = 0.4,
          shift = {9.6, 9.6}
        }
      },
      icon_size = 32,
      flags = {"hidden"},
      subgroup = "angels-void",
      order = "zzz[water-void]",
      stack_size = 200
    }
  }
)