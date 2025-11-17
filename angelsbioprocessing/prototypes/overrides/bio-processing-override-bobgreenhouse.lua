local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobgreenhouse"] then
  -----------------------------------------------------------------------------
  -- CATEGORY -----------------------------------------------------------------
  -----------------------------------------------------------------------------
  data.raw["item-subgroup"]["bob-greenhouse-items"].group = "angels-bio-processing-nauvis"
  data.raw["item-subgroup"]["bob-greenhouse-items"].order = "i"

  -----------------------------------------------------------------------------
  -- FERTILIEZR ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.global_replace_item("bob-fertiliser", "angels-solid-fertilizer")
  angelsmods.functions.hide("bob-fertiliser")

  OV.patch_recipes({
    {
      name = "bob-fertiliser",
      localised_name = { "item-name.angels-solid-fertilizer" },
      subgroup = "angels-bio-wood",
      order = "a[support]-cb",
    },
  })

  OV.add_prereq("bob-fertiliser", "angels-bio-farm-2")

  -----------------------------------------------------------------------------
  -- INTEGRATE BOBS WOOD PROCESSING -------------------------------------------
  -----------------------------------------------------------------------------
  move_item("bob-seedling", "angels-bio-arboretum-swamp", "a")
  move_item("bob-greenhouse", "angels-bio-processing-buildings-nauvis-a", "c[arboretum]-b")

  OV.patch_recipes({
    {
      name = "bob-seedling",
      subgroup = "angels-bio-wood",
      order = "c[seedling]",
      category = "angels-seed-extractor",
    },
    {
      name = "bob-basic-greenhouse-cycle",
      subgroup = "angels-bio-arboretum",
      order = "b[arboretum]-b[tree-generation]-a[basic-greenhouse]",
      energy_required = 60,
      --results =
      --{ {"!!"},
      --  { type = "item", name = "angels-solid-tree", amount = 2 },
      --  { type = "item", name = "angels-solid-tree", amount = 1, probability = 1/3 }
      --},
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsbioprocessinggraphics__/graphics/icons/tree.png",
          icon_size = 64,
          scale = 0.5,
        },
        {
          icon = "__bobgreenhouse__/graphics/icons/seedling.png",
          icon_size = 32,
          shift = { -12, 12 },
          scale = 0.35,
        },
      }, 1, angelsmods.bioprocessing.number_tint),
    },
    {
      name = "bob-advanced-greenhouse-cycle",
      subgroup = "angels-bio-arboretum",
      order = "b[arboretum]-b[tree-generation]-b[advanced-greenhouse]",
      energy_required = 45,
      --results =
      --{ {"!!"},
      --  { type = "item", name = "angels-solid-tree", amount = 4 },
      --  { type = "item", name = "angels-solid-tree", amount = 1, probability = 2/3 }
      --},
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsbioprocessinggraphics__/graphics/icons/tree.png",
          icon_size = 64,
          scale = 0.5,
        },
        {
          icon = "__bobgreenhouse__/graphics/icons/seedling.png",
          icon_size = 32,
          shift = { -12, 12 },
          scale = 0.35,
        },
      }, 2, angelsmods.bioprocessing.number_tint),
    },
  })
  -- manually patch the result as the recipe builder is failing
  data.raw.recipe["bob-basic-greenhouse-cycle"].result = nil
  data.raw.recipe["bob-basic-greenhouse-cycle"].results = {
    { type = "item", name = "angels-solid-tree", amount_min = 2, amount_max = 4 },
  }
  data.raw.recipe["bob-advanced-greenhouse-cycle"].result = nil
  data.raw.recipe["bob-advanced-greenhouse-cycle"].results = {
    { type = "item", name = "angels-solid-tree", amount_min = 4, amount_max = 8 },
  }

  -- also update the other tree icons
  OV.patch_recipes({
    {
      name = "angels-solid-tree",
      order = "b[arboretum]-b[tree-generation]-c",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsbioprocessinggraphics__/graphics/icons/solid-tree.png",
          icon_size = 64,
          scale = 0.5,
        },
        {
          icon = "__angelsbioprocessinggraphics__/graphics/icons/tree-seed.png",
          icon_size = 32,
          shift = { -12, 12 },
          scale = 0.35,
        },
      }, 1, angelsmods.bioprocessing.number_tint),
    },
    {
      name = "angels-solid-tree-2",
      order = "b[arboretum]-b[tree-generation]-d",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsbioprocessinggraphics__/graphics/icons/solid-tree.png",
          icon_size = 64,
          scale = 0.5,
        },
        {
          icon = "__angelsbioprocessinggraphics__/graphics/icons/tree-seed.png",
          icon_size = 32,
          shift = { -12, 12 },
          scale = 0.35,
        },
      }, 2, angelsmods.bioprocessing.number_tint),
    },
    {
      name = "angels-solid-tree-3",
      order = "b[arboretum]-b[tree-generation]-e",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsbioprocessinggraphics__/graphics/icons/solid-tree.png",
          icon_size = 64,
          scale = 0.5,
        },
        {
          icon = "__angelsbioprocessinggraphics__/graphics/icons/tree-seed.png",
          icon_size = 32,
          shift = { -12, 12 },
          scale = 0.35,
        },
      }, 3, angelsmods.bioprocessing.number_tint),
    },
  })

  -- allow manually creating wood without a sawblade (because nerfed bob greenhouse)
  data:extend({
    {
      type = "recipe",
      name = "wood-sawing-manual",
      localised_name = { "item-name.wood" },
      category = "angels-manual-crafting",
      always_show_made_in = true,
      enabled = false,
      energy_required = 1 / 3,
      ingredients = {
        { type = "item", name = "angels-solid-tree", amount = 1 },
      },
      results = {
        { type = "item", name = "wood", amount = 5 },
      },
      icons = {
        {
          icon = "__base__/graphics/icons/wood.png",
          icon_size = 64,
          scale = 0.5,
        },
        {
          icon = "__angelsbioprocessinggraphics__/graphics/icons/hand.png",
          icon_size = 32,
          scale = 0.35,
          shift = { -12, -12 },
        },
      },
      icon_size = 32,
      subgroup = "angels-bio-processing-wood",
      order = "a[wood]-a[manual]",
    },
  })

  -- alter angels wood production to require seedlings
  OV.patch_recipes({
    { name = "angels-tree-temperate-seed", ingredients = { { type = "item", name = "bob-seedling", amount = 4 } } },
    { name = "angels-tree-temperate-seed-2", ingredients = { { type = "item", name = "bob-seedling", amount = 6 } } },
    { name = "angels-tree-temperate-seed-3", ingredients = { { type = "item", name = "bob-seedling", amount = 8 } } },
    { name = "angels-tree-swamp-seed", ingredients = { { type = "item", name = "bob-seedling", amount = 4 } } },
    { name = "angels-tree-swamp-seed-2", ingredients = { { type = "item", name = "bob-seedling", amount = 6 } } },
    { name = "angels-tree-swamp-seed-3", ingredients = { { type = "item", name = "bob-seedling", amount = 8 } } },
    { name = "angels-tree-desert-seed", ingredients = { { type = "item", name = "bob-seedling", amount = 4 } } },
    { name = "angels-tree-desert-seed-2", ingredients = { { type = "item", name = "bob-seedling", amount = 6 } } },
    { name = "angels-tree-desert-seed-3", ingredients = { { type = "item", name = "bob-seedling", amount = 8 } } },
  })

  -- update tech
  OV.set_science_pack("bob-greenhouse", "logistic-science-pack", 1)
  OV.add_prereq("bob-greenhouse", "angels-gardens")
  OV.add_unlock("bob-greenhouse", "wood-sawing-manual")
  OV.add_prereq("bob-greenhouse", "angels-bio-arboretum-1")
  OV.add_prereq("angels-bio-arboretum-desert-1", "bob-greenhouse")
  OV.add_prereq("angels-bio-arboretum-swamp-1", "bob-greenhouse")
  OV.add_prereq("angels-bio-arboretum-temperate-1", "bob-greenhouse")

  -- hide Bob's wood pellets
  OV.global_replace_item("bob-wood-pellets", "angels-wood-pellets")
  OV.disable_recipe({ "bob-wood-pellets" })
  angelsmods.functions.hide("bob-wood-pellets")
end
