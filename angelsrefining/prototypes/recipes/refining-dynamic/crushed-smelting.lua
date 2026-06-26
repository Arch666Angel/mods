data:extend({
  --Tier 0
  {
    type = "recipe",
    name = "iron-plate",
    category = "smelting",
    subgroup = "raw-material",
    energy_required = 7,
    ingredients = { { type = "item", name = "angels-ore1-crushed", amount = 3 } },
    results = { { type = "item", name = "iron-plate", amount = 2 } },
    enabled = true,
    allow_decomposition = false,
    icons = {
      mods["angelssmelting"] and {
        icon = "__angelssmeltinggraphics__/graphics/icons/plate-iron.png",
        icon_size = 32,
      } or {
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/angels-ore1/angels-ore1-crushed.png",
        icon_size = 32,
        scale = 0.4,
        shift = { -10, -10 },
      },
    },
    order = "b[iron-ore]-a[crushed]",
  },
  {
    type = "recipe",
    name = "copper-plate",
    category = "smelting",
    subgroup = "raw-material",
    energy_required = 7,
    ingredients = { { type = "item", name = "angels-ore3-crushed", amount = 3 } },
    results = { { type = "item", name = "copper-plate", amount = 2 } },
    enabled = true,
    allow_decomposition = false,
    icons = {
      mods["angelssmelting"] and {
        icon = "__angelssmeltinggraphics__/graphics/icons/plate-copper.png",
        icon_size = 32,
      } or {
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/angels-ore3/angels-ore3-crushed.png",
        icon_size = 32,
        scale = 0.4,
        shift = { -10, -10 },
      },
    },
    icon_size = 32,
    order = "c[copper-ore]-a[crushed]",
  },
})
