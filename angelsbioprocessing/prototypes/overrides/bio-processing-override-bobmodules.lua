local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobmodules"] then
  -----------------------------------------------------------------------------
  -- EXISTING MODULES CATEGORY ------------------------------------------------
  -----------------------------------------------------------------------------
  -- modules group
  data.raw["item-group"]["bobmodules"].order = "lb[bobs]-d[modules]"

  -----------------------------------------------------------------------------
  -- EXISTING MODULES RECIPES -------------------------------------------------
  -----------------------------------------------------------------------------
  OV.patch_recipes({
    { name = "speed-module", ingredients = { { type = "item", name = "angels-crystal-splinter-blue", amount = 0 } } },
    { name = "speed-module-2", ingredients = { { type = "item", name = "angels-crystal-shard-blue", amount = 0 } } },
    { name = "speed-module-3", ingredients = { { type = "item", name = "angels-crystal-full-blue", amount = 0 } } },
    { name = "productivity-module", ingredients = { { type = "item", name = "angels-crystal-splinter-red", amount = 0 } } },
    { name = "productivity-module-2", ingredients = { { type = "item", name = "angels-crystal-shard-red", amount = 0 } } },
    { name = "productivity-module-3", ingredients = { { type = "item", name = "angels-crystal-full-red", amount = 0 } } },
    { name = "efficiency-module", ingredients = { { type = "item", name = "angels-crystal-splinter-green", amount = 0 } } },
    { name = "efficiency-module-2", ingredients = { { type = "item", name = "angels-crystal-shard-green", amount = 0 } } },
    { name = "efficiency-module-3", ingredients = { { type = "item", name = "angels-crystal-full-green", amount = 0 } } },
  })
  OV.set_research_difficulty("modules", 30, 25)
  OV.remove_prereq("modules", "angels-bio-processing-crystal-splinter-1")
  OV.remove_prereq("speed-module-2", "angels-bio-processing-crystal-shard-1")
  OV.remove_prereq("productivity-module-2", "angels-bio-processing-crystal-shard-1")
  OV.remove_prereq("efficiency-module-2", "angels-bio-processing-crystal-shard-1")
  OV.remove_prereq("speed-module-3", "angels-bio-processing-crystal-full")
  OV.remove_prereq("productivity-module-3", "angels-bio-processing-crystal-full")
  OV.remove_prereq("efficiency-module-3", "angels-bio-processing-crystal-full")

  OV.patch_recipes({
    { name = "bob-speed-processor", ingredients = { { type = "item", name = "angels-crystal-splinter-blue", amount = 1 } } },
    { name = "bob-speed-processor-2", ingredients = { { type = "item", name = "angels-crystal-shard-blue", amount = 1 } } },
    { name = "bob-speed-processor-3", ingredients = { { type = "item", name = "angels-crystal-full-blue", amount = 1 } } },
    { name = "bob-productivity-processor", ingredients = { { type = "item", name = "angels-crystal-splinter-red", amount = 1 } } },
    { name = "bob-productivity-processor-2", ingredients = { { type = "item", name = "angels-crystal-shard-red", amount = 1 } } },
    { name = "bob-productivity-processor-3", ingredients = { { type = "item", name = "angels-crystal-full-red", amount = 1 } } },
    {
      name = "bob-efficiency-processor",
      ingredients = { { type = "item", name = "angels-crystal-splinter-green", amount = 1 } },
    },
    { name = "bob-efficiency-processor-2", ingredients = { { type = "item", name = "angels-crystal-shard-green", amount = 1 } } },
    { name = "bob-efficiency-processor-3", ingredients = { { type = "item", name = "angels-crystal-full-green", amount = 1 } } },
    {
      name = "bob-pollution-clean-processor",
      ingredients = { { type = "item", name = "angels-crystal-splinter-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-clean-processor-2",
      ingredients = { { type = "item", name = "angels-crystal-shard-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-clean-processor-3",
      ingredients = { { type = "item", name = "angels-crystal-full-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-create-processor",
      ingredients = { { type = "item", name = "angels-crystal-splinter-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-create-processor-2",
      ingredients = { { type = "item", name = "angels-crystal-shard-harmonic", amount = 1 } },
    },
    {
      name = "bob-pollution-create-processor-3",
      ingredients = { { type = "item", name = "angels-crystal-full-harmonic", amount = 1 } },
    },
  })

  -----------------------------------------------------------------------------
  -- EXISTING MODULES TECHNOLOGY ----------------------------------------------
  -----------------------------------------------------------------------------

  -- tier 2 modules
  OV.add_prereq("bob-modules-2", "angels-bio-processing-crystal-splinter-1")
  OV.add_prereq("bob-pollution-clean-module-2", "angels-bio-processing-crystal-splinter-2")
  OV.add_prereq("bob-pollution-create-module-2", "angels-bio-processing-crystal-splinter-2")

  if mods["bobplates"] then
    OV.add_prereq("bob-modules-2", "bob-gem-processing-3")
  end

  -- tier 3 modules
  OV.add_prereq("bob-modules-3", "angels-bio-processing-crystal-shard-1")
  OV.add_prereq("bob-pollution-clean-module-3", "angels-bio-processing-crystal-shard-2")
  OV.add_prereq("bob-pollution-create-module-3", "angels-bio-processing-crystal-shard-2")

  -- tier 4 modules
  OV.add_prereq("bob-modules-4", "angels-bio-processing-crystal-full")

  -- tier 5 modules

  -----------------------------------------------------------------------------
  -- BIO YIELD MODULES --------------------------------------------------------
  -----------------------------------------------------------------------------
  -- existing tiers 1 - 3
  data.raw.module["angels-bio-yield-module"].icon = "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/module-bio-productivity-bobs-1.png"
  data.raw.module["angels-bio-yield-module"].icon_size = 64,
  move_item("angels-bio-yield-module", "angels-bio-yield-module", "b-y-1", "module")
  data.raw.module["angels-bio-yield-module-2"].icon = "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/module-bio-productivity-bobs-2.png"
  data.raw.module["angels-bio-yield-module-2"].icon_size = 64
  move_item("angels-bio-yield-module-2", "angels-bio-yield-module", "b-y-2", "module")
  data.raw.module["angels-bio-yield-module-3"].icon = "__angelsbioprocessinggraphics__/graphics/icons/bobmodules/module-bio-productivity-bobs-3.png"
  data.raw.module["angels-bio-yield-module-3"].icon_size = 64
  move_item("angels-bio-yield-module-3", "angels-bio-yield-module", "b-y-3", "module")
  OV.patch_recipes({
    {
      name = "angels-bio-yield-module",
      ingredients = {
        { "!!" },
        { type = "item", name = "productivity-module", amount = 1 },
        { type = "item", name = "bob-pollution-create-module-1", amount = 1 },
        { type = "item", name = "angels-token-bio", amount = 1 },
      },
    },
    {
      name = "angels-bio-yield-module-2",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-bio-yield-module", amount = 1 },
        { type = "item", name = "productivity-module-2", amount = 1 },
        { type = "item", name = "bob-pollution-create-module-2", amount = 1 },
        { type = "item", name = "angels-token-bio", amount = 1 },
      },
    },
    {
      name = "angels-bio-yield-module-3",
      ingredients = {
        { "!!" },
        { type = "item", name = "angels-bio-yield-module-2", amount = 1 },
        { type = "item", name = "productivity-module-3", amount = 1 },
        { type = "item", name = "bob-pollution-create-module-3", amount = 1 },
        { type = "item", name = "angels-token-bio", amount = 1 },
      },
    },
  })
  OV.remove_prereq("angels-bio-yield-module", "efficiency-module")
  OV.add_prereq("angels-bio-yield-module", "bob-pollution-create-module-1")
  OV.remove_prereq("angels-bio-yield-module-2", "efficiency-module-2")
  OV.add_prereq("angels-bio-yield-module-2", "bob-pollution-create-module-2")
  OV.remove_prereq("angels-bio-yield-module-3", "efficiency-module-3")
  OV.add_prereq("angels-bio-yield-module-3", "bob-pollution-create-module-3")

  --adding solder when bobplates is active
  if data.raw.item["bob-solder"] then
    OV.patch_recipes({
      {
        name = "angels-bio-yield-module",
        ingredients = {
          { type = "item", name = "bob-solder", amount = 1 },
        },
      },
      {
        name = "angels-bio-yield-module-2",
        ingredients = {
          { type = "item", name = "bob-solder", amount = 2 },
        },
      },
      {
        name = "angels-bio-yield-module-3",
        ingredients = {
          { type = "item", name = "bob-solder", amount = 3 },
        },
      },
    })
  end

  data.raw.technology["angels-bio-yield-module"].icon =
    "__angelsbioprocessinggraphics__/graphics/technology/bobmodules/module-bio-productivity-bobs-1.png"
  data.raw.technology["angels-bio-yield-module"].icon_size = 256
  data.raw.technology["angels-bio-yield-module-2"].icon =
    "__angelsbioprocessinggraphics__/graphics/technology/bobmodules/module-bio-productivity-bobs-2.png"
  data.raw.technology["angels-bio-yield-module-2"].icon_size = 256
  data.raw.technology["angels-bio-yield-module-3"].icon =
    "__angelsbioprocessinggraphics__/graphics/technology/bobmodules/module-bio-productivity-bobs-3.png"
  data.raw.technology["angels-bio-yield-module-3"].icon_size = 256

  data.raw.module["angels-bio-yield-module"].effect = {
    productivity = 0.1,
    pollution = 0.5, -- extra pollution absorption
  }
  data.raw.module["angels-bio-yield-module-2"].effect = {
    productivity = 0.2,
    pollution = 1.0, -- extra pollution absorption
  }
  data.raw.module["angels-bio-yield-module-3"].effect = {
    productivity = 0.3,
    pollution = 1.5, -- extra pollution absorption
  }

  -- adding solder when available
  -- addtional tiers 4 & 5
  if data.raw.item["bob-solder"] then
    OV.patch_recipes({
      {
        name = "angels-bio-yield-module-4",
        ingredients = {
          { type = "item", name = "bob-solder", amount = 4 },
        },
      },
      {
        name = "angels-bio-yield-module-5",
        ingredients = {
          { type = "item", name = "bob-solder", amount = 6 },
        },
      },
    })
  end

  -----------------------------------------------------------------------------
  -- BEACONS ------------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.patch_recipes({
    { name = "beacon", ingredients = { { type = "item", name = "angels-crystal-full-harmonic", amount = 0 } } },
  })
  OV.remove_prereq("effect-transmission", "angels-bio-processing-crystal-full")
  OV.patch_recipes({
    { name = "beacon", ingredients = { { type = "item", name = "angels-crystal-splinter-harmonic", amount = 1 } } },
    { name = "bob-beacon-2", ingredients = { { type = "item", name = "angels-crystal-shard-harmonic", amount = 1 } } },
    { name = "bob-beacon-3", ingredients = { { type = "item", name = "angels-crystal-full-harmonic", amount = 1 } } },
  })

  OV.add_prereq("effect-transmission", "modules")
  OV.add_prereq("effect-transmission-2", "bob-modules-2")
  OV.add_prereq("effect-transmission-3", "bob-modules-3")
  OV.add_prereq("effect-transmission", "angels-bio-processing-crystal-splinter-2")
  OV.add_prereq("effect-transmission-2", "angels-bio-processing-crystal-shard-2")
  OV.add_prereq("effect-transmission-3", "angels-bio-processing-crystal-full")
end
