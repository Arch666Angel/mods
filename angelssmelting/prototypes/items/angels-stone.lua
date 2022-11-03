data:extend({
  -- ORE
  -- SMELTING INTERMEDIATE
  {
    type = "item",
    name = "solid-lime",
    icon = "__angelssmelting__/graphics/icons/solid-lime.png",
    icon_size = 32,
    subgroup = "angels-stone",
    order = "b",
    stack_size = 200,
  },
  -- SMELTING RESULTS
  {
    type = "item",
    name = "solid-cement",
    icon = "__angelssmelting__/graphics/icons/solid-cement.png",
    icon_size = 32,
    subgroup = "angels-stone",
    order = "c",
    stack_size = 200,
  },
  {
    type = "item",
    name = "clay-brick-raw",
    icon = "__angelssmelting__/graphics/icons/brick-clay-raw.png",
    icon_size = 32,
    subgroup = "angels-stone",
    order = "d",
    stack_size = 200,
  },
  {
    type = "item",
    name = "clay-brick",
    icon = "__angelssmelting__/graphics/icons/brick-clay.png",
    icon_size = 32,
    subgroup = "angels-stone",
    order = "e",
    stack_size = angelsmods.trigger.pavement_stack_size,
    place_as_tile = {
      result = "clay-bricks",
      condition_size = 2,
      condition = { "water-tile" },
    },
  },
  -- order f is reserved for stone brick (see override)
  -- CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "liquid-concrete",
    icon = "__angelssmelting__/graphics/icons/molten-concrete.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "angels-stone-casting",
    order = "g",
    default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = { r = 99 / 255, g = 99 / 255, b = 99 / 255 },
    flow_color = { r = 99 / 255, g = 99 / 255, b = 99 / 255 },
    max_temperature = 100,
    auto_barrel = false,
  },
  -- CASTING RESULT
  -- order h reserved for base game concrete
  {
    type = "item",
    name = "concrete-brick",
    icon = "__angelssmelting__/graphics/icons/brick-concrete.png",
    icon_size = 32,
    subgroup = "angels-stone-casting",
    order = "i",
    stack_size = angelsmods.trigger.pavement_stack_size,
    place_as_tile = {
      result = "tile-concrete-brick",
      -- result = "tutorial-grid",
      condition_size = 1,
      condition = { "water-tile" },
    },
  },
  {
    type = "item",
    name = "reinforced-concrete-brick",
    icon = "__angelssmelting__/graphics/icons/brick-reinforced.png",
    icon_size = 32,
    subgroup = "angels-stone-casting",
    order = "j",
    stack_size = angelsmods.trigger.pavement_stack_size,
    place_as_tile = {
      result = "tile-reinforced-concrete-brick",
      condition_size = 1,
      condition = { "water-tile" },
    },
  },
})
