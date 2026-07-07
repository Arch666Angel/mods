data:extend({
  {
    type = "module-category",
    name = "angels-bio-yield",
  },
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

if mods["bobmodules"] then
  data:extend({
    {
      type = "module",
      name = "angels-bio-yield-module-4",
      localised_description = { "item-description.angels-bio-yield-module-4" },
      icon = "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/module-bio-productivity-bobs-4.png",
      icon_size = 64,
      subgroup = "angels-bio-yield-module",
      category = "angels-bio-yield",
      tier = 4,
      order = "b-y-4",
      stack_size = 50,
      effect = {
        productivity = 0.4,
        pollution = 2, -- extra pollution absorption
      },
    },
    {
      type = "module",
      name = "angels-bio-yield-module-5",
      localised_description = { "item-description.angels-bio-yield-module-5" },
      icon = "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/module-bio-productivity-bobs-5.png",
      icon_size = 64,
      subgroup = "angels-bio-yield-module",
      category = "angels-bio-yield",
      tier = 5,
      order = "b-y-5",
      stack_size = 50,
      effect = {
        productivity = 0.5,
        pollution = 2.5, -- extra pollution absorption
      },
    },
  })
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-bio-yield-module",
      group = "bobmodules",
      order = "f-9",
    },
  })
end
