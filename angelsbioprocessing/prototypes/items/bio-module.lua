data:extend({
  {
    type = "module",
    name = "angels-bio-yield-module",
    localised_description = { "item-description.angels-bio-yield-module" },
    icon = "__angelsbioprocessing__/graphics/icons/module-bio-productivity-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module",
    category = "productivity",
    tier = 1,
    order = "d[yield]-a[angels-bio-yield-module-1]",
    stack_size = 50,
    effect = {
      productivity = { bonus = 0.15 },
      pollution = { bonus = 0.15 }, -- extra pollution absorption
    },
    limitation = {},
    limitation_message_key = "angels-yield-module-usable-only-on-agriculture",
  },
  {
    type = "module",
    name = "angels-bio-yield-module-2",
    localised_description = { "item-description.angels-bio-yield-module-2" },
    icon = "__angelsbioprocessing__/graphics/icons/module-bio-productivity-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module",
    category = "productivity",
    tier = 2,
    order = "d[yield]-a[angels-bio-yield-module-2]",
    stack_size = 50,
    effect = {
      productivity = { bonus = 0.3 },
      pollution = { bonus = 0.3 }, -- extra pollution absorption
    },
    limitation = {},
    limitation_message_key = "angels-yield-module-usable-only-on-agriculture",
  },
  {
    type = "module",
    name = "angels-bio-yield-module-3",
    localised_description = { "item-description.angels-bio-yield-module-3" },
    icon = "__angelsbioprocessing__/graphics/icons/module-bio-productivity-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module",
    category = "productivity",
    tier = 3,
    order = "d[yield]-a[angels-bio-yield-module-3]",
    stack_size = 50,
    effect = {
      productivity = { bonus = 0.5 },
      pollution = { bonus = 0.5 }, -- extra pollution absorption
    },
    limitation = {},
    limitation_message_key = "angels-yield-module-usable-only-on-agriculture",
  },
})

angelsmods.functions.add_bio_productivity_module("angels-bio-yield-module")
angelsmods.functions.add_bio_productivity_module("angels-bio-yield-module-2")
angelsmods.functions.add_bio_productivity_module("angels-bio-yield-module-3")
if mods["bobmodules"] then
  -- adding in data stage already to be safe...
  angelsmods.functions.add_bio_productivity_module("angels-bio-yield-module-4")
  angelsmods.functions.add_bio_productivity_module("angels-bio-yield-module-5")
  angelsmods.functions.add_bio_productivity_module("angels-bio-yield-module-6")
  angelsmods.functions.add_bio_productivity_module("angels-bio-yield-module-7")
  angelsmods.functions.add_bio_productivity_module("angels-bio-yield-module-8")
end
