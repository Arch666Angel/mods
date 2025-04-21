local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobgreenhouse"] then
  -----------------------------------------------------------------------------
  -- CATEGORY -----------------------------------------------------------------
  -----------------------------------------------------------------------------
  data.raw["item-subgroup"]["bob-greenhouse-items"].group = "bio-processing-nauvis"
  data.raw["item-subgroup"]["bob-greenhouse-items"].order = "i"

  -----------------------------------------------------------------------------
  -- FERTILIEZR ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  OV.global_replace_item("bob-fertiliser", "solid-fertilizer")
  angelsmods.functions.hide("bob-fertiliser")

  data.raw.recipe["bob-fertiliser"].subgroup = "bio-wood"
  data.raw.recipe["bob-fertiliser"].order = "a[support]-cb"

  OV.add_prereq("bob-fertiliser", "bio-farm-2")

  -----------------------------------------------------------------------------
  -- INTEGRATE BOBS WOOD PROCESSING -------------------------------------------
  -----------------------------------------------------------------------------
  move_item("bob-seedling", "bio-arboretum-swamp", "a")
  move_item("bob-greenhouse", "bio-processing-buildings-nauvis-a", "c[arboretum]-b")

  OV.patch_recipes({
    {
      name = "bob-seedling",
      subgroup = "bio-wood",
      order = "c[seedling]",
      category = "seed-extractor",
    },
    {
      name = "bob-basic-greenhouse-cycle",
      subgroup = "bio-arboretum",
      order = "b[arboretum]-b[tree-generation]-a[basic-greenhouse]",
      energy_required = 60,
      --results =
      --{ {"!!"},
      --  { type = "item", name = "solid-tree", amount = 2 },
      --  { type = "item", name = "solid-tree", amount = 1, probability = 1/3 }
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
      subgroup = "bio-arboretum",
      order = "b[arboretum]-b[tree-generation]-b[advanced-greenhouse]",
      energy_required = 45,
      --results =
      --{ {"!!"},
      --  { type = "item", name = "solid-tree", amount = 4 },
      --  { type = "item", name = "solid-tree", amount = 1, probability = 2/3 }
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
    { type = "item", name = "solid-tree", amount_min = 2, amount_max = 4 },
  }
  data.raw.recipe["bob-advanced-greenhouse-cycle"].result = nil
  data.raw.recipe["bob-advanced-greenhouse-cycle"].results = {
    { type = "item", name = "solid-tree", amount_min = 4, amount_max = 8 },
  }

  -- also update the other tree icons
  OV.patch_recipes({
    {
      name = "tree-arboretum-1",
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
      name = "tree-arboretum-2",
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
      name = "tree-arboretum-3",
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

  -- make sure the seed extractor can be unlocked early on
  if bobmods and bobmods.electronics then
    OV.patch_recipes({
      {
        name = "seed-extractor",
        ingredients = {
          { name = "electronic-circuit", amount = 0 },
          { name = "bob-basic-circuit-board", amount = 4 },
        },
      },
    })
  end

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
        { type = "item", name = "solid-tree", amount = 1 },
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
      subgroup = "bio-processing-wood",
      order = "a[wood]-a[manual]",
    },
  })

  -- alter angels wood production to require seedlings
  OV.patch_recipes({
    { name = "temperate-tree-generator-1", ingredients = { { type = "item", name = "bob-seedling", amount = 4 } } },
    { name = "temperate-tree-generator-2", ingredients = { { type = "item", name = "bob-seedling", amount = 6 } } },
    { name = "temperate-tree-generator-3", ingredients = { { type = "item", name = "bob-seedling", amount = 8 } } },
    { name = "swamp-tree-generator-1", ingredients = { { type = "item", name = "bob-seedling", amount = 4 } } },
    { name = "swamp-tree-generator-2", ingredients = { { type = "item", name = "bob-seedling", amount = 6 } } },
    { name = "swamp-tree-generator-3", ingredients = { { type = "item", name = "bob-seedling", amount = 8 } } },
    { name = "desert-tree-generator-1", ingredients = { { type = "item", name = "bob-seedling", amount = 4 } } },
    { name = "desert-tree-generator-2", ingredients = { { type = "item", name = "bob-seedling", amount = 6 } } },
    { name = "desert-tree-generator-3", ingredients = { { type = "item", name = "bob-seedling", amount = 8 } } },
  })

  -- update tech
  OV.set_science_pack("bob-greenhouse", "logistic-science-pack", 1)
  OV.add_prereq("bob-greenhouse", "gardens")
  OV.add_unlock("bob-greenhouse", "wood-sawing-manual")
  OV.add_prereq("bob-greenhouse", "bio-arboretum-1")
  OV.add_prereq("bio-arboretum-desert-1", "bob-greenhouse")
  OV.add_prereq("bio-arboretum-swamp-1", "bob-greenhouse")
  OV.add_prereq("bio-arboretum-temperate-1", "bob-greenhouse")
end
