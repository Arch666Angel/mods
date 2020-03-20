data:extend(
{
  -----------------------------------------------------------------------------
  -- MOTOR CASTING ------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-casing-iron-plate",
    category = "crafting",
    subgroup = "angels-iron-casting",
    energy_required = 0.5,
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "angels-plate-iron", amount = 2}
    },
    results =
    {
      {type = "item", name = "motor-casing-1", amount = 1}
    },
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/motor-casing-1.png"
      },
      {
        icon = "__angelssmelting__/graphics/icons/plate-iron.png",
        scale = 0.4375,
        shift = {-10, -10}
      }
    },
    icon_size = 32,
    order = "n[motor-casing-1]-a"
  },
  {
    type = "recipe",
    name = "angels-casing-iron-1",
    category = "casting",
    subgroup = "angels-iron-casting",
    enabled = "false",
    energy_required = 4,
    ingredients =
    {
      {type = "fluid", name = "liquid-molten-iron", amount = 15},
      {type = "item", name = "mold-expendable", amount = 1}
    },
    results =
    {
      {type = "item", name = "motor-casing-1", amount = 1},
      --{type = "item", name = "mold-expendable", amount = 1, catalyst_amount=1}
    },
    main_product = "motor-casing-1",
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/motor-casing-1.png"
      },
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
        scale = 0.4375,
        shift = {-10, -10}
      },
    },
    icon_size = 32,
    order = "n[motor-casing-1]-b"
  },
  {
    type = "recipe",
    name = "angels-casing-iron-2",
    category = "casting",
    subgroup = "angels-iron-casting",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {type = "fluid", name = "liquid-molten-iron", amount = 10},
      {type = "item", name = "mold-non-expendable", amount = 1},
      {type = "fluid", name = "liquid-coolant", amount = 10, maximum_temperature = 50}
    },
    results =
    {
      {type = "item", name = "motor-casing-1", amount = 1},
      {type = "item", name = "mold-non-expendable", amount = 1, probability = 0.80, catalyst_amount=1},
      {type = "fluid", name = "liquid-coolant-used", amount = 10, temperature = 300}
    },
    main_product = "motor-casing-1",
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/motor-casing-1.png"
      },
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        scale = 0.4375,
        shift = {-10, -10}
      },
    },
    icon_size = 32,
    order = "n[motor-casing-1]-c"
  },
  {
    type = "recipe",
    name = "angels-casing-steel-1",
    category = "casting",
    subgroup = "angels-steel-casting",
    enabled = "false",
    energy_required = 6,
    ingredients =
    {
      {type = "fluid", name = "liquid-molten-steel", amount = 15},
      {type = "item", name = "mold-expendable", amount = 1}
    },
    results =
    {
      {type = "item", name = "motor-casing-2", amount = 1},
      --{type = "item", name = "mold-expendable", amount = 1, catalyst_amount=1}
    },
    main_product = "motor-casing-2",
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/motor-casing-2.png"
      },
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
        scale = 0.4375,
        shift = {-10, -10}
      },
    },
    icon_size = 32,
    order = "n[motor-casing-2]-a"
  },
  {
    type = "recipe",
    name = "angels-casing-steel-2",
    category = "casting",
    subgroup = "angels-steel-casting",
    enabled = "false",
    energy_required = 3,
    ingredients =
    {
      {type = "fluid", name = "liquid-molten-steel", amount = 10},
      {type = "item", name = "mold-non-expendable", amount = 1},
      {type = "fluid", name = "liquid-coolant", amount = 10, maximum_temperature = 50}
    },
    results =
    {
      {type = "item", name = "motor-casing-2", amount = 1},
      {type = "item", name = "mold-non-expendable", amount = 1, probability = 0.80, catalyst_amount=1},
      {type = "fluid", name = "liquid-coolant-used", amount = 10, temperature = 300}
    },
    main_product = "motor-casing-2",
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/motor-casing-2.png"
      },
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        scale = 0.4375,
        shift = {-10, -10}
      },
    },
    icon_size = 32,
    order = "n[motor-casing-2]-b"
  },
  {
    type = "recipe",
    name = "angels-casing-aluminium-1",
    category = "casting",
    subgroup = "angels-aluminium-casting",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {type = "fluid", name = "liquid-molten-aluminium", amount = 15},
      {type = "item", name = "mold-expendable", amount = 1}
    },
    results =
    {
      {type = "item", name = "motor-casing-3", amount = 1},
      --{type = "item", name = "mold-expendable", amount = 1, catalyst_amount=1}
    },
    main_product = "motor-casing-3",
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/motor-casing-3.png"
      },
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
        scale = 0.4375,
        shift = {-10, -10}
      },
    },
    icon_size = 32,
    order = "l[motor-casing-3]-a"
  },
  {
    type = "recipe",
    name = "angels-casing-aluminium-2",
    category = "casting",
    subgroup = "angels-aluminium-casting",
    enabled = "false",
    energy_required = 4,
    ingredients =
    {
      {type = "fluid", name = "liquid-molten-aluminium", amount = 10},
      {type = "item", name = "mold-non-expendable", amount = 1},
      {type = "fluid", name = "liquid-coolant", amount = 10, maximum_temperature = 50}
    },
    results =
    {
      {type = "item", name = "motor-casing-3", amount = 1},
      {type = "item", name = "mold-non-expendable", amount = 1, probability = 0.80, catalyst_amount=1},
      {type = "fluid", name = "liquid-coolant-used", amount = 10, temperature = 300}
    },
    main_product = "motor-casing-3",
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/motor-casing-3.png"
      },
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        scale = 0.4375,
        shift = {-10, -10}
      },
    },
    icon_size = 32,
    order = "l[motor-casing-3]-b"
  },
  {
    type = "recipe",
    name = "angels-casing-titanium-1",
    category = "casting",
    subgroup = "angels-titanium-casting",
    enabled = "false",
    energy_required = 14,
    ingredients =
    {
      {type = "fluid", name = "liquid-molten-titanium", amount = 15},
      {type = "item", name = "mold-expendable", amount = 1}
    },
    results =
    {
      {type = "item", name = "motor-casing-4", amount = 1},
      --{type = "item", name = "mold-expendable", amount = 1, catalyst_amount=1}
    },
    main_product = "motor-casing-4",
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/motor-casing-4.png"
      },
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
        scale = 0.4375,
        shift = {-10, -10}
      },
    },
    icon_size = 32,
    order = "k[motor-casing-4]-a"
  },
  {
    type = "recipe",
    name = "angels-casing-titanium-2",
    category = "casting",
    subgroup = "angels-titanium-casting",
    enabled = "false",
    energy_required = 7,
    ingredients =
    {
      {type = "fluid", name = "liquid-molten-titanium", amount = 10},
      {type = "item", name = "mold-non-expendable", amount = 1},
      {type = "fluid", name = "liquid-coolant", amount = 10, maximum_temperature = 50}
    },
    results =
    {
      {type = "item", name = "motor-casing-4", amount = 1},
      {type = "item", name = "mold-non-expendable", amount = 1, probability = 0.80, catalyst_amount=1},
      {type = "fluid", name = "liquid-coolant-used", amount = 10, temperature = 300}
    },
    main_product = "motor-casing-4",
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/motor-casing-4.png"
      },
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        scale = 0.4375,
        shift = {-10, -10}
      },
    },
    icon_size = 32,
    order = "k[motor-casing-4]-b"
  },
  {
    type = "recipe",
    name = "angels-casing-tungsten-1",
    category = "sintering",
    subgroup = "angels-tungsten-casting",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {type = "item", name = "casting-powder-tungsten", amount = 3},
      {type = "item", name = "mold-expendable", amount = 1}
    },
    results =
    {
      {type = "item", name = "motor-casing-5", amount = 1},
      --{type = "item", name = "mold-expendable", amount = 1, catalyst_amount=1}
    },
    main_product = "motor-casing-5",
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/motor-casing-5.png"
      },
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
        scale = 0.4375,
        shift = {-10, -10}
      },
    },
    icon_size = 32,
    order = "m[motor-casing-5]-ba"
  },
  {
    type = "recipe",
    name = "angels-casing-tungsten-green",
    category = "crafting",
    subgroup = "angels-tungsten-casting",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "casting-powder-tungsten", amount = 2},
      {type = "item", name = "mold-non-expendable", amount = 1}
    },
    results =
    {
      {type = "item", name = "motor-casing-5-green", amount = 1},
      {type = "item", name = "mold-non-expendable", amount = 1, probability = 0.80, catalyst_amount=1}
    },
    main_product = "motor-casing-5-green",
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/motor-casing-5.png",
        tint={r=0.7, g=0.7, b=0.7}
      },
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        scale = 0.4375,
        shift = {-10, -10}
      },
    },
    icon_size = 32,
    order = "m[motor-casing-5]-a"
  },
  {
    type = "recipe",
    name = "angels-casing-tungsten-2",
    category = "sintering",
    subgroup = "angels-tungsten-casting",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "motor-casing-5-green", amount = 1}
    },
    results =
    {
      {type = "item", name = "motor-casing-5", amount = 1}
    },
    main_product = "motor-casing-5",
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/motor-casing-5.png"
      },
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        scale = 0.4375,
        shift = {-10, -10}
      },
    },
    icon_size = 32,
    order = "m[motor-casing-5]-bb"
  },
  -----------------------------------------------------------------------------
  -- MOTOR BLOCKS -------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "recipe",
    name = "motor-block-1",
    enabled = "false",
    category = "crafting",
    energy_required = 1, -- 1:2 ratio with motor
    ingredients =
    {
      {type = "item", name = "motor-casing-1", amount = 1},
      {type = "item", name = "cellulose-fiber", amount = 1}
    },
    results =
    {
      {type = "item", name = "motor-block-1", amount = 1}
    },
    icon_size = 32
  },
  {
    type = "recipe",
    name = "motor-block-2",
    enabled = "false",
    category = "advanced-crafting",
    energy_required = 2, -- 2:3 ratio with motor
    ingredients =
    {
      {type = "item", name = "motor-casing-2", amount = 1},
      {type = "item", name = "cellulose-fiber", amount = 1}
    },
    results =
    {
      {type = "item", name = "motor-block-2", amount = 1}
    },
    icon_size = 32
  },
  {
    type = "recipe",
    name = "motor-block-3",
    enabled = "false",
    category = "advanced-crafting",
    energy_required = 3, -- 3:4 ratio with motor
    ingredients =
    {
      {type = "item", name = "motor-casing-3", amount = 1},
      {type = "item", name = "solid-rubber", amount = 1},
      --{type = "fluid", name = "lubricant", amount = 10}
    },
    results =
    {
      {type = "item", name = "motor-block-3", amount = 1}
    },
    icon_size = 32
  },
  {
    type = "recipe",
    name = "motor-block-4",
    enabled = "false",
    category = "advanced-crafting",
    energy_required = 4, -- 4:7 ratio with motor
    ingredients =
    {
      {type = "item", name = "motor-casing-4", amount = 1},
      {type = "item", name = "solid-rubber", amount = 1},
      {type = "fluid", name = "lubricant", amount = 10}
    },
    results =
    {
      {type = "item", name = "motor-block-4", amount = 1}
    },
    icon_size = 32
  },
  {
    type = "recipe",
    name = "motor-block-5",
    enabled = "false",
    category = "advanced-crafting",
    energy_required = 6, -- 3:5 ratio with motor
    ingredients =
    {
      {type = "item", name = "motor-casing-5", amount = 1},
      {type = "item", name = "solid-rubber", amount = 1},
      {type = "fluid", name = "lubricant", amount = 15}
    },
    results =
    {
      {type = "item", name = "motor-block-5", amount = 1}
    },
    icon_size = 32
  },
  -----------------------------------------------------------------------------
  -- MOTORS -------------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "recipe",
    name = "motor-1",
    energy_required = 2,
    category = "crafting",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "motor-block-1", amount = 1},
      {type = "item", name = "angels-gear", amount = 1}
    },
    result = "motor-1",
    icon_size = 32
  },
  {
    type = "recipe",
    name = "motor-2",
    energy_required = 3,
    category = "advanced-crafting",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "motor-block-2", amount = 1},
      {type = "item", name = "angels-gear", amount = 1},
      {type = "item", name = "angels-axle", amount = 1}
    },
    result = "motor-2",
    icon_size = 32
  },
  {
    type = "recipe",
    name = "motor-3",
    energy_required = 4,
    category = "advanced-crafting",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "motor-block-3", amount = 1},
      {type = "item", name = "angels-gear", amount = 1},
      {type = "item", name = "angels-axle", amount = 1},
      {type = "item", name = "angels-roller-chain", amount = 1}
    },
    result = "motor-3",
    icon_size = 32
  },
  {
    type = "recipe",
    name = "motor-4",
    energy_required = 7,
    category = "advanced-crafting",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "motor-block-4", amount = 1},
      {type = "item", name = "angels-gear", amount = 1},
      {type = "item", name = "angels-axle", amount = 1},
      {type = "item", name = "angels-roller-chain", amount = 1},
      {type = "item", name = "angels-spring", amount = 1}
    },
    result = "motor-4",
    icon_size = 32
  },
  {
    type = "recipe",
    name = "motor-5",
    energy_required = 10,
    category = "advanced-crafting",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "motor-block-5", amount = 1},
      {type = "item", name = "angels-gear", amount = 1},
      {type = "item", name = "angels-axle", amount = 1},
      {type = "item", name = "angels-roller-chain", amount = 1},
      {type = "item", name = "angels-spring", amount = 1},
      {type = "item", name = "angels-bearing", amount = 1}
    },
    result = "motor-5",
    icon_size = 32
  },
  -----------------------------------------------------------------------------
  -- MECHANICAL SUBCOMPONENTS -------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-gear",
    energy_required = 1,
    category = "crafting",
    enabled = "true", -- enabled from the start
    ingredients =
    {
      {type = "item", name = "angels-rod-iron", amount = 1}
    },
    results =
    {
      {type = "item", name = "angels-gear", amount = 2}
    },
    icon_size = 32
  },
  {
    type = "recipe",
    name = "angels-axle",
    energy_required = 1,
    category = "advanced-crafting",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "angels-rod-steel", amount = 1}
    },
    result = "angels-axle",
    icon_size = 32
  },
  {
    type = "recipe",
    name = "angels-roller-chain",
    energy_required = 1.5,
    category = "advanced-crafting",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "angels-plate-aluminium", amount = 1}
    },
    result = "angels-roller-chain",
    icon_size = 32
  },
  {
    type = "recipe",
    name = "angels-spring",
    energy_required = 2,
    category = "advanced-crafting",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "angels-plate-titanium", amount = 1}
    },
    result = "angels-spring",
    icon_size = 32
  },
  {
    type = "recipe",
    name = "angels-bearing",
    energy_required = 2.5,
    category = "advanced-crafting",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "angels-plate-tungsten", amount = 1},
      {type = "item", name = "steel-plate", amount = 1},
      {type = "fluid", name = "lubricant", amount = 1}
    },
    result = "angels-bearing",
    icon_size = 32
  },
  -----------------------------------------------------------------------------
  -- MECHANICAL COMPONENTS ----------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "recipe",
    name = "mechanical-parts-gear",
    subgroup = "angels-mechanical-parts",
    order = "f",
    energy_required = 3,
    category = "crafting",
    enabled = "true", -- enabled from the start
    ingredients =
    {
      {type = "item", name = "angels-gear", amount = 2}
    },
    results =
    {
      {type = "item", name = "mechanical-parts", amount = 2}
    },
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/mechanical-parts.png"
      },
      {
        icon = "__angelsindustries__/graphics/icons/gear.png",
        scale = 0.4375,
        shift = {-10, -10}
      }
    },
    icon_size = 32
  },
  {
    type = "recipe",
    name = "mechanical-parts-axle",
    subgroup = "angels-mechanical-parts",
    order = "g",
    energy_required = 3,
    category = "advanced-crafting",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "angels-axle", amount = 2}
    },
    results =
    {
      {type = "item", name = "mechanical-parts", amount = 3}
    },
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/mechanical-parts.png"
      },
      {
        icon = "__angelsindustries__/graphics/icons/axle.png",
        scale = 0.4375,
        shift = {-10, -10}
      }
    },
    icon_size = 32
  },
  {
    type = "recipe",
    name = "mechanical-parts-roller-chain",
    subgroup = "angels-mechanical-parts",
    order = "h",
    energy_required = 3,
    category = "advanced-crafting",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "angels-roller-chain", amount = 2}
    },
    results =
    {
      {type = "item", name = "mechanical-parts", amount = 4}
    },
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/mechanical-parts.png"
      },
      {
        icon = "__angelsindustries__/graphics/icons/roller-chain.png",
        scale = 0.4375,
        shift = {-10, -10}
      }
    },
    icon_size = 32
  },
  {
    type = "recipe",
    name = "mechanical-parts-spring",
    subgroup = "angels-mechanical-parts",
    order = "i",
    energy_required = 3,
    category = "advanced-crafting",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "angels-spring", amount = 2}
    },
    results =
    {
      {type = "item", name = "mechanical-parts", amount = 5}
    },
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/mechanical-parts.png"
      },
      {
        icon = "__angelsindustries__/graphics/icons/spring.png",
        scale = 0.4375,
        shift = {-10, -10}
      }
    },
    icon_size = 32
  },
  {
    type = "recipe",
    name = "mechanical-parts-bearing",
    subgroup = "angels-mechanical-parts",
    order = "j",
    energy_required = 3,
    category = "advanced-crafting",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "angels-bearing", amount = 2}
    },
    results =
    {
      {type = "item", name = "mechanical-parts", amount = 6}
    },
    icons =
    {
      {
        icon = "__angelsindustries__/graphics/icons/mechanical-parts.png"
      },
      {
        icon = "__angelsindustries__/graphics/icons/bearing.png",
        scale = 0.4375,
        shift = {-10, -10}
      }
    },
    icon_size = 32
  },
})
