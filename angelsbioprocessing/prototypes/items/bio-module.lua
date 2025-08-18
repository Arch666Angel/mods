data:extend({
  {
    type = "module",
    name = "angels-bio-yield-module",
    localised_description = { "item-description.angels-bio-yield-module" },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/module-bio-productivity-1.png",
    icon_size = 64,
    subgroup = "module",
    category = "angels-bio-yield",
    tier = 1,
    order = "d[yield]-a[angels-bio-yield-module-1]",
    stack_size = 50,
    effect = {
      productivity = 0.15,
      pollution = 0.15, -- extra pollution absorption
    },
  },
  {
    type = "module",
    name = "angels-bio-yield-module-2",
    localised_description = { "item-description.angels-bio-yield-module-2" },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/module-bio-productivity-2.png",
    icon_size = 64,
    subgroup = "module",
    category = "angels-bio-yield",
    tier = 2,
    order = "d[yield]-a[angels-bio-yield-module-2]",
    stack_size = 50,
    effect = {
      productivity = 0.3,
      pollution = 0.3, -- extra pollution absorption
    },
  },
  {
    type = "module",
    name = "angels-bio-yield-module-3",
    localised_description = { "item-description.angels-bio-yield-module-3" },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/module-bio-productivity-3.png",
    icon_size = 64,
    subgroup = "module",
    category = "angels-bio-yield",
    tier = 3,
    order = "d[yield]-a[angels-bio-yield-module-3]",
    stack_size = 50,
    effect = {
      productivity = 0.5,
      pollution = 0.5, -- extra pollution absorption
    },
  },
})
