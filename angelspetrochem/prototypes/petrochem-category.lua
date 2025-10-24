data:extend({
  --RESOURCE CATEGORIES
  {
    type = "resource-category",
    name = "angels-natural-gas",
  },
  {
    type = "recipe-category",
    name = "angels-gas-refining",
  },
  {
    type = "recipe-category",
    name = "angels-advanced-gas-refining",
  },
  {
    type = "recipe-category",
    name = "angels-steam-cracking",
  },
  {
    type = "recipe-category",
    name = "angels-petrochem-separation",
  },
  {
    type = "recipe-category",
    name = "angels-advanced-chemistry",
  },
  {
    type = "recipe-category",
    name = "angels-petrochem-electrolyser",
  },
  {
    type = "recipe-category",
    name = "angels-petrochem-boiler",
  },
  {
    type = "recipe-category",
    name = "angels-petrochem-air-filtering",
  },
  {
    type = "recipe-category",
    name = "angels-chemical-void",
  },
  -- centrifuging category part of base game
  {
    type = "recipe-category",
    name = "centrifuging-2",
  },
  {
    type = "recipe-category",
    name = "centrifuging-3",
  },
  --SUBGROUPS
  {
    type = "item-group",
    name = "angels-petrochem-refining",
    order = "la[angels]-c[petrochem]-b",
    icons = {
      {
        icon = "__angelspetrochemgraphics__/graphics/technology/advanced-gas-refinery-tech.png",
        icon_size = 256,
        scale = 0.25,
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/void.png",
        icon_size = 32,
        scale = 64 / 32 * 0.35,
        shift = { 20, -20 },
      },
    },
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-coal",
    group = "angels-petrochem-refining",
    order = "aa",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-fuel",
    group = "angels-petrochem-refining",
    order = "ab",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-basics",
    group = "angels-petrochem-refining",
    order = "ac",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-basic-fluids",
    group = "angels-petrochem-refining",
    order = "y[fluids]-ac",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-sodium",
    group = "angels-petrochem-refining",
    order = "ba",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-chlorine",
    group = "angels-petrochem-refining",
    order = "bb",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-chlorine-2",
    group = "angels-petrochem-refining",
    order = "bc",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-chlorine-fluids",
    group = "angels-petrochem-refining",
    order = "y[fluids]-b",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-nitrogen",
    group = "angels-petrochem-refining",
    order = "ca",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-rocket",
    group = "angels-petrochem-refining",
    order = "cb",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-nitrogen-fluids",
    group = "angels-petrochem-refining",
    order = "y[fluids]-c",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-sulfur",
    group = "angels-petrochem-refining",
    order = "d",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-sulfur-fluids",
    group = "angels-petrochem-refining",
    order = "y[fluids]-d",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-carbon-gas-feed",
    group = "angels-petrochem-refining",
    order = "ea",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-carbon-oil-feed",
    group = "angels-petrochem-refining",
    order = "eb",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-carbon-synthesis",
    group = "angels-petrochem-refining",
    order = "ec",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-cracking",
    group = "angels-petrochem-refining",
    order = "ed",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-raw-fluids",
    group = "angels-petrochem-refining",
    order = "y[fluids]-ea",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-carbon-fluids",
    group = "angels-petrochem-refining",
    order = "y[fluids]-eb",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-feedstock",
    group = "angels-petrochem-refining",
    order = "f",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-chemistry",
    group = "angels-petrochem-refining",
    order = "g",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-oil-output",
    group = "angels-petrochem-refining",
    order = "h",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-solids",
    group = "angels-petrochem-refining",
    order = "ia",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-solids-2",
    group = "angels-petrochem-refining",
    order = "ib",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-solids-fluids",
    group = "angels-petrochem-refining",
    order = "y[fluids]-i",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-catalysts",
    group = "angels-petrochem-refining",
    order = "j",
  },
  -- BUILDINGS
  {
    -- electrolizers + liquifier + air filters
    type = "item-subgroup",
    name = "angels-petrochem-buildings-electrolyser",
    group = "angels-petrochem-refining",
    order = "za[buildings]-a",
  },
  {
    -- chemical plants + adv chemical plants
    type = "item-subgroup",
    name = "angels-petrochem-buildings-chemical-plant",
    group = "angels-petrochem-refining",
    order = "za[buildings]-b",
  },
  {
    -- gas refineries + advanced gas refineries
    type = "item-subgroup",
    name = "angels-petrochem-buildings-gas-refinery",
    group = "angels-petrochem-refining",
    order = "za[buildings]-c",
  },
  {
    -- oil and gas separator + oil refinery
    type = "item-subgroup",
    name = "angels-petrochem-buildings-oil-refinery",
    group = "angels-petrochem-refining",
    order = "za[buildings]-d",
  },
  {
    --steam crackers, flare stack
    type = "item-subgroup",
    name = "angels-petrochem-buildings-steam",
    group = "angels-petrochem-refining",
    order = "za[buildings]-e",
  },
  -- OTHERS
  --{
  --  type = "item-subgroup",
  --  name = "angels-petrochem-raw",
  --  group = "angels-petrochem-refining",
  --  order = "zz[raw]",
  --},
  {
    type = "item-subgroup",
    name = "angels-petrochem-utility",
    group = "angels-petrochem-refining",
    order = "k",
  },
  {
    type = "item-subgroup",
    name = "angels-petrochem-tanks",
    group = "angels-petrochem-refining",
    order = "l",
  },
  -- Steam boilers
  {
    type = "item-subgroup",
    name = "angels-boiler-building",
    group = "angels-water-treatment",
    order = "z[building]-c",
  },
  {
    type = "item-subgroup",
    name = "angels-water-boiling",
    group = "angels-water-treatment",
    order = "h[water-boiling]-a",
  },
  -- void
  {
    type = "item-subgroup",
    name = "angels-chemical-void",
    group = "angels-void",
    order = "a-b[chemical]",
  },
  -- NUCLEAR
  {
    type = "item-subgroup",
    name = "angels-power-nuclear",
    group = "production",
    order = "c[nuclear]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-power-nuclear-processing",
    group = "production",
    order = "d[nuclear-processing]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-power-nuclear-fuel-cell",
    group = "production",
    order = "d[nuclear-processing]-b",
  },
})
