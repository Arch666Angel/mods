if angelsmods.industries.components then
  data:extend({
    -----------------------------------------------------------------------------
    -- MOTOR CASTING ------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-casing-iron-plate",
      localised_name = { "item-name.motor-casing-1" },
      category = "crafting",
      subgroup = "angels-iron-casting",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 5 },
      },
      results = {
        { type = "item", name = "angels-motor-casing-1", amount = 1 },
      },
      allow_decomposition = true,
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/motor-casing-1.png",
          icon_size = 32,
        },
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/plate-iron.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
      order = "n[motor-casing-1]-a",
    },
  })
  for _, metal in pairs({
    "iron",
    "steel",
    "aluminium",
    "titanium",--[[,"tungsten"]]
  }) do --all of the metals in one go
    local num
    local molten1
    local molten2
    local category1
    local category2
    if metal == "iron" then
      num = 1
      molten1 = { type = "fluid", name = "angels-liquid-molten-iron", amount = 15 }
      molten2 = { type = "fluid", name = "angels-liquid-molten-iron", amount = 20 }
      category1 = "angels-casting-2"
      category2 = "angels-casting-3"
    elseif metal == "steel" then
      num = 2
      molten1 = { type = "fluid", name = "angels-liquid-molten-steel", amount = 15 }
      molten2 = { type = "fluid", name = "angels-liquid-molten-steel", amount = 20 }
      category1 = "angels-casting"
      category2 = "angels-casting-3"
    elseif metal == "aluminium" then
      num = 3
      molten1 = { type = "fluid", name = "angels-liquid-molten-aluminium", amount = 15 }
      molten2 = { type = "fluid", name = "angels-liquid-molten-aluminium", amount = 20 }
      category1 = "angels-casting-2"
      category2 = "angels-casting-3"
    elseif metal == "titanium" then
      num = 4
      molten1 = { type = "fluid", name = "angels-liquid-molten-titanium", amount = 15 }
      molten2 = { type = "fluid", name = "angels-liquid-molten-titanium", amount = 20 }
      category1 = "angels-casting-3"
      category2 = "angels-casting-4"
      --[[elseif metal=="tungsten" then
      num = 5
      molten1={type = "item", name = "angels-casting-powder-tungsten", amount = 3}
      molten2={type = "item", name = "angels-casting-powder-tungsten", amount = 20}
      category1 = "angels-sintering-4"
      category2 = "angels-sintering-5"]]
    end
    data:extend({
      {
        type = "recipe",
        name = "angels-casing-" .. metal .. "-1",
        category = category1,
        subgroup = "angels-" .. metal .. "-casting",
        localised_name = { "recipe-name.casing", metal, "" .. num, "expendable" },
        enabled = false,
        energy_required = 3 * num,
        ingredients = {
          molten1,
          --{type = "fluid", name = "angels-liquid-molten-steel", amount = 15},
          { type = "item", name = "angels-mold-expendable", amount = 1 },
        },
        results = {
          { type = "item", name = "angels-motor-casing-" .. num, amount = 1 },
          { type = "item", name = "angels-solid-sand", amount = 10 },
        },
        icons = {
          {
            icon = "__angelsindustriesgraphics__/graphics/icons/motor-casing-" .. num .. ".png",
            icon_size = 32,
          },
          {
            icon = "__angelssmeltinggraphics__/graphics/icons/expendable-mold.png",
            scale = 0.4375,
            shift = { -10, -10 },
          },
        },
        icon_size = 32,
        order = "n[motor-casing-" .. num .. "]-b",
      },
      --STEP 3 Advanced: use the die with coolant
      {
        type = "recipe",
        name = "angels-casing-" .. metal .. "-2",
        category = category2,
        subgroup = "angels-" .. metal .. "-casting",
        localised_name = { "recipe-name.casing", metal, "" .. num, "reusable" },
        enabled = false,
        energy_required = 2 * num,
        ingredients = {
          molten2,
          --{type = "fluid", name = "angels-liquid-molten-steel", amount = 20},
          { type = "item", name = "angels-mold-non-expendable", amount = 1 },
          { type = "fluid", name = "angels-liquid-coolant", amount = 10, ignored_by_stats = 8 },
        },
        results = {
          { type = "item", name = "angels-motor-casing-" .. num, amount = 2 },
          { type = "item", name = "angels-spent-mold-non-expendable", amount = 1 },
          { type = "fluid", name = "angels-liquid-coolant-used", amount = 10, temperature = 300 },
        },
        icons = {
          {
            icon = "__angelsindustriesgraphics__/graphics/icons/motor-casing-" .. num .. ".png",
            icon_size = 32,
          },
          {
            icon = "__angelssmeltinggraphics__/graphics/icons/non-expendable-mold.png",
            scale = 0.4375,
            shift = { -10, -10 },
          },
        },
        icon_size = 32,
        order = "n[motor-casing-" .. num .. "]-c",
      },
    })
  end
  data:extend({
    {
      type = "recipe",
      name = "angels-casing-tungsten-1",
      localised_name = { "item-name.motor-casing-5" },
      category = "angels-sintering-4",
      subgroup = "angels-tungsten-casting",
      enabled = false,
      energy_required = 20,
      ingredients = {
        { type = "item", name = "angels-casting-powder-tungsten", amount = 3 },
        { type = "item", name = "angels-mold-expendable", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-motor-casing-5", amount = 1 },
        { type = "item", name = "angels-solid-sand", amount = 10 },
      },
      main_product = "angels-motor-casing-5",
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/motor-casing-5.png",
          icon_size = 32,
        },
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/expendable-mold.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
      order = "m[motor-casing-5]-ba",
    },
    {
      type = "recipe",
      name = "angels-casing-tungsten-green",
      localised_name = { "item-name.motor-casing-5-green" },
      category = "crafting",
      subgroup = "angels-tungsten-casting",
      enabled = false,
      energy_required = 10,
      ingredients = {
        { type = "item", name = "angels-casting-powder-tungsten", amount = 2 },
        { type = "item", name = "angels-mold-non-expendable", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-motor-casing-5-green", amount = 1 },
        { type = "item", name = "angels-spent-mold-non-expendable", amount = 1, probability = 0.90 },
      },
      main_product = "angels-motor-casing-5-green",
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/motor-casing-5.png",
          tint = { r = 0.7, g = 0.7, b = 0.7 },
          icon_size = 32,
        },
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/non-expendable-mold.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
      order = "m[motor-casing-5]-a",
    },
    {
      type = "recipe",
      name = "angels-casing-tungsten-2",
      localised_name = { "item-name.motor-casing-5" },
      category = "angels-sintering-5",
      subgroup = "angels-tungsten-casting",
      enabled = false,
      energy_required = 10,
      ingredients = {
        { type = "item", name = "angels-motor-casing-5-green", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-motor-casing-5", amount = 1 },
      },
      main_product = "angels-motor-casing-5",
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/motor-casing-5.png",
          icon_size = 32,
        },
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/non-expendable-mold.png",
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
      order = "m[motor-casing-5]-bb",
    },
    -----------------------------------------------------------------------------
    -- MOTOR BLOCKS -------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "motor-block-1",
      localised_name = { "item-name.motor-block-1" },
      enabled = false,
      category = "crafting",
      energy_required = 1, -- 1:2 ratio with motor
      ingredients = {
        { type = "item", name = "angels-motor-casing-1", amount = 1 },
        { type = "item", name = "angels-cellulose-fiber", amount = 1 },
      },
      results = {
        { type = "item", name = "motor-block-1", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "motor-block-2",
      localised_name = { "item-name.motor-block-2" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 2, -- 2:3 ratio with motor
      ingredients = {
        { type = "item", name = "angels-motor-casing-2", amount = 1 },
        { type = "item", name = "angels-cellulose-fiber", amount = 1 },
      },
      results = {
        { type = "item", name = "motor-block-2", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "motor-block-3",
      localised_name = { "item-name.motor-block-3" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3, -- 3:4 ratio with motor
      ingredients = {
        { type = "item", name = "angels-motor-casing-3", amount = 1 },
        { type = "item", name = "angels-solid-rubber", amount = 1 },
        --{type = "fluid", name = "lubricant", amount = 10}
      },
      results = {
        { type = "item", name = "motor-block-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "motor-block-4",
      localised_name = { "item-name.motor-block-4" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 4, -- 4:7 ratio with motor
      ingredients = {
        { type = "item", name = "angels-motor-casing-4", amount = 1 },
        { type = "item", name = "angels-solid-rubber", amount = 1 },
        { type = "fluid", name = "lubricant", amount = 10 },
      },
      results = {
        { type = "item", name = "motor-block-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "motor-block-5",
      localised_name = { "item-name.motor-block-5" },
      enabled = false,
      category = "advanced-crafting",
      energy_required = 6, -- 3:5 ratio with motor
      ingredients = {
        { type = "item", name = "angels-motor-casing-5", amount = 1 },
        { type = "item", name = "angels-solid-rubber", amount = 1 },
        { type = "fluid", name = "lubricant", amount = 15 },
      },
      results = {
        { type = "item", name = "motor-block-5", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- MOTORS -------------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "motor-1",
      localised_name = { "item-name.motor-1" },
      energy_required = 2 * angelsmods.industries.component_crafting_time_multiplier,
      category = "crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "motor-block-1", amount = 1 },
        { type = "item", name = "angels-gear", amount = 1 },
      },
      results = {
        { type = "item", name = "motor-1", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "motor-2",
      localised_name = { "item-name.motor-2" },
      energy_required = 3 * angelsmods.industries.component_crafting_time_multiplier,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "motor-block-2", amount = 1 },
        { type = "item", name = "angels-gear", amount = 1 },
        { type = "item", name = "angels-axle", amount = 1 },
      },
      results = {
        { type = "item", name = "motor-2", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "motor-3",
      localised_name = { "item-name.motor-3" },
      energy_required = 4 * angelsmods.industries.component_crafting_time_multiplier,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "motor-block-3", amount = 1 },
        { type = "item", name = "angels-gear", amount = 1 },
        { type = "item", name = "angels-axle", amount = 1 },
        { type = "item", name = "angels-roller-chain", amount = 1 },
      },
      results = {
        { type = "item", name = "motor-3", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "motor-4",
      localised_name = { "item-name.motor-4" },
      energy_required = 7 * angelsmods.industries.component_crafting_time_multiplier,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "motor-block-4", amount = 1 },
        { type = "item", name = "angels-gear", amount = 1 },
        { type = "item", name = "angels-axle", amount = 1 },
        { type = "item", name = "angels-roller-chain", amount = 1 },
        { type = "item", name = "angels-spring", amount = 1 },
      },
      results = {
        { type = "item", name = "motor-4", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "motor-5",
      localised_name = { "item-name.motor-5" },
      energy_required = 10 * angelsmods.industries.component_crafting_time_multiplier,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "motor-block-5", amount = 1 },
        { type = "item", name = "angels-gear", amount = 1 },
        { type = "item", name = "angels-axle", amount = 1 },
        { type = "item", name = "angels-roller-chain", amount = 1 },
        { type = "item", name = "angels-spring", amount = 1 },
        { type = "item", name = "angels-bearing", amount = 1 },
      },
      results = {
        { type = "item", name = "motor-5", amount = 1 * angelsmods.industries.component_result_multiplier },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- MECHANICAL SUBCOMPONENTS -------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-gear",
      localised_name = { "item-name.angels-gear" },
      subgroup = "angels-motor-block",
      order = "f",
      energy_required = 1,
      category = "crafting",
      enabled = true, -- enabled from the start
      ingredients = {
        { type = "item", name = "iron-stick", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-gear", amount = 2 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-axle",
      localised_name = { "item-name.angels-axle" },
      subgroup = "angels-motor-block",
      order = "g",
      energy_required = 1,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-rod-steel", amount = 1 },
      },
      results = { { type = "item", name = "angels-axle", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-roller-chain",
      localised_name = { "item-name.angels-roller-chain" },
      subgroup = "angels-motor-block",
      order = "h",
      energy_required = 1.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-aluminium", amount = 1 },
      },
      results = { { type = "item", name = "angels-roller-chain", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-spring",
      localised_name = { "item-name.angels-spring" },
      subgroup = "angels-motor-block",
      order = "i",
      energy_required = 2,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-titanium", amount = 1 },
      },
      results = { { type = "item", name = "angels-spring", amount = 1 } },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-bearing",
      localised_name = { "item-name.angels-bearing" },
      subgroup = "angels-motor-block",
      order = "j",
      energy_required = 2.5,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-tungsten", amount = 1 },
        { type = "item", name = "steel-plate", amount = 1 },
        { type = "fluid", name = "lubricant", amount = 1 },
      },
      results = { { type = "item", name = "angels-bearing", amount = 1 } },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- MECHANICAL COMPONENTS ----------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "mechanical-parts-gear",
      localised_name = { "item-name.mechanical-parts" },
      subgroup = "angels-motors",
      order = "f",
      energy_required = 3,
      category = "crafting",
      enabled = true, -- enabled from the start
      ingredients = {
        { type = "item", name = "angels-gear", amount = 2 },
      },
      results = {
        { type = "item", name = "mechanical-parts", amount = 2 },
      },
      allow_decomposition = true,
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/mechanical-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/gear.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "mechanical-parts-axle",
      localised_name = { "item-name.mechanical-parts" },
      subgroup = "angels-motors",
      order = "g",
      energy_required = 3,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-axle", amount = 2 },
      },
      results = {
        { type = "item", name = "mechanical-parts", amount = 3 },
      },
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/mechanical-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/axle.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "mechanical-parts-roller-chain",
      localised_name = { "item-name.mechanical-parts" },
      subgroup = "angels-motors",
      order = "h",
      energy_required = 3,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-roller-chain", amount = 2 },
      },
      results = {
        { type = "item", name = "mechanical-parts", amount = 4 },
      },
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/mechanical-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/roller-chain.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "mechanical-parts-spring",
      localised_name = { "item-name.mechanical-parts" },
      subgroup = "angels-motors",
      order = "i",
      energy_required = 3,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-spring", amount = 2 },
      },
      results = {
        { type = "item", name = "mechanical-parts", amount = 5 },
      },
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/mechanical-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/spring.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "mechanical-parts-bearing",
      localised_name = { "item-name.mechanical-parts" },
      subgroup = "angels-motors",
      order = "j",
      energy_required = 3,
      category = "advanced-crafting",
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-bearing", amount = 2 },
      },
      results = {
        { type = "item", name = "mechanical-parts", amount = 6 },
      },
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/mechanical-parts.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/bearing.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
  })
end
