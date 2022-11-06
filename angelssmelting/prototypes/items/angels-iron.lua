data:extend({
  -- ORE
  -- order a reserved for ore
  -- SMELTING INTERMEDIATE
  {
    type = "item",
    name = "processed-iron",
    icon = "__angelssmelting__/graphics/icons/processed-iron.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "angels-iron",
    order = "b",
    stack_size = 200,
  },
  {
    type = "item",
    name = "pellet-iron",
    icon = "__angelssmelting__/graphics/icons/pellet-iron.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "angels-iron",
    order = "c",
    stack_size = 200,
  },
  {
    type = "item",
    name = "solid-iron-hydroxide",
    icon = "__angelssmelting__/graphics/icons/solid-iron-hydroxide.png",
    icon_size = 32,
    subgroup = "angels-iron",
    order = "d",
    stack_size = 200,
  },
  -- SMELTING RESULTS
  {
    type = "item",
    name = "ingot-iron",
    icon = "__angelssmelting__/graphics/icons/ingot-iron.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "angels-iron",
    order = "e",
    stack_size = 200,
  },
  -- order f reserved for ingot-steel (see alloys)
  {
    type = "item",
    name = "powder-iron",
    icon = "__angelssmelting__/graphics/icons/powder-iron.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "angels-iron",
    order = "g",
    stack_size = 200,
  },
  -- order h reserved for powder-steel (see alloys)
  -- CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "liquid-molten-iron",
    icon = "__angelssmelting__/graphics/icons/molten-iron.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "angels-iron-casting",
    order = "i",
    default_temperature = 1538,
    heat_capacity = "0KJ",
    base_color = { r = 125 / 255, g = 145 / 255, b = 161 / 255 },
    flow_color = { r = 125 / 255, g = 145 / 255, b = 161 / 255 },
    max_temperature = 1538,
    auto_barrel = false,
  },
  {
    type = "item",
    name = "angels-roll-iron",
    icon = "__angelssmelting__/graphics/icons/roll-iron.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "angels-iron-casting",
    order = "j",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-rod-stack-iron",
    icon = "__angelssmelting__/graphics/icons/rod-stack-iron.png",
    icon_size = 32,
    subgroup = "angels-iron-casting",
    order = "k",
    stack_size = 200,
  },
  -- CASTING RESULT
  {
    type = "item",
    name = "angels-plate-iron",
    icon = "__angelssmelting__/graphics/icons/plate-iron.png",
    icon_size = 32,
    subgroup = "angels-iron-casting",
    order = "l",
    stack_size = 200,
  },
  --[[{
    type = "item",
    name = "angels-rod-iron",
    icon = "__angelssmelting__/graphics/icons/rod-iron.png",
    icon_size = 32,
    subgroup = "angels-iron-casting",
    order = "m",
    stack_size = 200
  },]]
  -- order n reserved for motor casting (see industries)
})
------------------------------------------------------------------
--UPDATE IRON STICK TO MATCH THE "ROD"
------------------------------------------------------------------
local stick = data.raw.item["iron-stick"]
stick.icon = "__angelssmelting__/graphics/icons/rod-iron.png"
stick.localised_name = { "item-name.angels-rod-iron" }
stick.icon_size = 32
stick.subgroup = "angels-iron-casting"
stick.order = "m"
stick.stack_size = 200
stick.icon_mipmaps = 1
