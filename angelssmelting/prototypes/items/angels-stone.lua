data:extend({
  -- ORE
  -- SMELTING INTERMEDIATE
  {
    type = "item",
    name = "angels-solid-lime",
    icon = "__angelssmeltinggraphics__/graphics/icons/solid-lime.png",
    icon_size = 32,
    subgroup = "angels-stone",
    order = "b",
    stack_size = 200,
  },
  -- SMELTING RESULTS
  {
    type = "item",
    name = "angels-solid-cement",
    icon = "__angelssmeltinggraphics__/graphics/icons/solid-cement.png",
    icon_size = 32,
    subgroup = "angels-stone",
    order = "c",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-clay-brick-raw",
    icon = "__angelssmeltinggraphics__/graphics/icons/brick-clay-raw.png",
    icon_size = 32,
    subgroup = "angels-stone",
    order = "d",
    stack_size = 200,
  },
  {
    type = "item",
    name = "angels-clay-brick",
    icon = "__angelssmeltinggraphics__/graphics/icons/brick-clay.png",
    icon_size = 32,
    subgroup = "angels-stone",
    order = "e",
    stack_size = angelsmods.trigger.pavement_stack_size,
    place_as_tile = {
      result = "angels-tile-clay-brick",
      condition_size = 2,
      condition = {layers = {water_tile = true}},
    },
  },
  -- order f is reserved for stone brick (see override)
  -- CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "angels-liquid-concrete",
    icon = "__angelssmeltinggraphics__/graphics/icons/molten-concrete.png",
    icon_size = 64,
    subgroup = "angels-stone-casting",
    order = "g",
    default_temperature = 0,
    heat_capacity = "0kJ",
    base_color = { r = 99 / 255, g = 99 / 255, b = 99 / 255 },
    flow_color = { r = 99 / 255, g = 99 / 255, b = 99 / 255 },
    max_temperature = 0,
    auto_barrel = false,
  },
  -- CASTING RESULT
  -- order h reserved for base game concrete
  {
    type = "item",
    name = "angels-concrete-brick",
    icon = "__angelssmeltinggraphics__/graphics/icons/brick-concrete.png",
    icon_size = 32,
    subgroup = "angels-stone-casting",
    order = "i",
    stack_size = angelsmods.trigger.pavement_stack_size,
    place_as_tile = {
      result = "angels-tile-concrete-brick",
      -- result = "tutorial-grid",
      condition_size = 1,
      condition = {layers = {water_tile = true}},
    },
  },
  {
    type = "item",
    name = "angels-reinforced-concrete-brick",
    icon = "__angelssmeltinggraphics__/graphics/icons/brick-reinforced.png",
    icon_size = 32,
    subgroup = "angels-stone-casting",
    order = "j",
    stack_size = angelsmods.trigger.pavement_stack_size,
    place_as_tile = {
      result = "angels-tile-reinforced-concrete-brick",
      condition_size = 1,
      condition = {layers = {water_tile = true}},
    },
  },
})
