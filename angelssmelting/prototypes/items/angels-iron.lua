data:extend({
  -- ORE
  -- order a reserved for ore
  -- SMELTING INTERMEDIATE
  {
    type = "item",
    name = "angels-processed-iron",
    icon = "__angelssmeltinggraphics__/graphics/icons/processed-iron.png",
    icon_size = 64,
    subgroup = "angels-iron",
    order = "b",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-pellet-iron",
    icon = "__angelssmeltinggraphics__/graphics/icons/pellet-iron.png",
    icon_size = 64,
    subgroup = "angels-iron",
    order = "c",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-solid-iron-hydroxide",
    icon = "__angelssmeltinggraphics__/graphics/icons/solid-iron-hydroxide.png",
    icon_size = 32,
    subgroup = "angels-iron",
    order = "d",
    stack_size = 200,
  },
  -- SMELTING RESULTS
  {
    type = "item",
    name = "angels-ingot-iron",
    icon = "__angelssmeltinggraphics__/graphics/icons/ingot-iron.png",
    icon_size = 64,
    subgroup = "angels-iron",
    order = "e",
    stack_size = 200,
  },
  -- order f reserved for ingot-steel (see alloys)
  {
    type = "item",
    name = "angels-powder-iron",
    icon = "__angelssmeltinggraphics__/graphics/icons/powder-iron.png",
    icon_size = 64,
    subgroup = "angels-iron",
    order = "g",
    stack_size = 200,
  },
  -- order h reserved for powder-steel (see alloys)
  -- CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "angels-liquid-molten-iron",
    icon = "__angelssmeltinggraphics__/graphics/icons/molten-iron.png",
    icon_size = 64,
    subgroup = "angels-iron-casting",
    order = "i",
    default_temperature = 1538,
    heat_capacity = "0kJ",
    base_color = { r = 125 / 255, g = 145 / 255, b = 161 / 255 },
    flow_color = { r = 125 / 255, g = 145 / 255, b = 161 / 255 },
    max_temperature = 1538,
    auto_barrel = false,
  },
  {
    type = "item",
    name = "angels-roll-iron",
    icon = "__angelssmeltinggraphics__/graphics/icons/roll-iron.png",
    icon_size = 64,
    subgroup = "angels-iron-casting",
    order = "j",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-rod-stack-iron",
    icon = "__angelssmeltinggraphics__/graphics/icons/rod-stack-iron.png",
    icon_size = 32,
    subgroup = "angels-iron-casting",
    order = "k",
    stack_size = 200,
  },
  -- order n reserved for motor casting (see industries)
})
------------------------------------------------------------------
--UPDATE IRON STICK TO MATCH THE "ROD"
------------------------------------------------------------------
local stick = data.raw.item["iron-stick"]
stick.icon = "__angelssmeltinggraphics__/graphics/icons/rod-iron.png"
stick.icon_size = 32
stick.subgroup = "angels-iron-casting"
stick.order = "m"
stick.stack_size = 200
