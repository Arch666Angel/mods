data:extend(
{
--RESOURCE CATEGORIES
  {
    type = "resource-category",
    name = "angels-natural-gas",
  },
  {
    type = "recipe-category",
    name = "gas-refining",
  },
  {
    type = "recipe-category",
    name = "steam-cracking",
  },
  {
    type = "recipe-category",
    name = "petrochem-separation",
  },
  {
    type = "recipe-category",
    name = "advanced-chemistry",
  },
  {
    type = "recipe-category",
    name = "angels-converter",
  },
  {
    type = "recipe-category",
    name = "petrochem-electrolyser",
  },
  {
    type = "recipe-category",
    name = "petrochem-air-filtering",
  },
  {
    type = "recipe-category",
    name = "angels-chemical-void",
  },
--SUBGROUPS
  {
    type = "item-subgroup",
    name = "fluids-petro",
    group = "fluids",
    order = "c",
  },
  {
    type = "item-group",
    name = "petrochem-refining",
    order = "la[angels]-c[petrochem]-b",
    inventory_order = "la[angels]-c[petrochem]-b",
    icon = "__angelspetrochem__/graphics/technology/petrochem.png",
    icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "petrochem-coal",
    group = "petrochem-refining",
    order = "aa",
  },
  {
    type = "item-subgroup",
    name = "petrochem-fuel",
    group = "petrochem-refining",
    order = "ab",
  },
  {
    type = "item-subgroup",
    name = "petrochem-basics",
    group = "petrochem-refining",
    order = "ac",
  },
  {
    type = "item-subgroup",
    name = "petrochem-sodium",
    group = "petrochem-refining",
    order = "ba",
  },
  {
    type = "item-subgroup",
    name = "petrochem-chlorine",
    group = "petrochem-refining",
    order = "bb",
  },
  {
    type = "item-subgroup",
    name = "petrochem-chlorine-2",
    group = "petrochem-refining",
    order = "bc",
  },
  {
    type = "item-subgroup",
    name = "petrochem-nitrogen",
    group = "petrochem-refining",
    order = "ca",
  },
  {
    type = "item-subgroup",
    name = "petrochem-rocket",
    group = "petrochem-refining",
    order = "cb",
  },
  {
    type = "item-subgroup",
    name = "petrochem-sulfur",
    group = "petrochem-refining",
    order = "d",
  },
  {
    type = "item-subgroup",
    name = "petrochem-carbon-gas-feed",
    group = "petrochem-refining",
    order = "e",
  },
  {
    type = "item-subgroup",
    name = "petrochem-carbon-oil-feed",
    group = "petrochem-refining",
    order = "f",
  },
  {
    type = "item-subgroup",
    name = "petrochem-carbon-synthesis",
    group = "petrochem-refining",
    order = "ga",
  },
  {
    type = "item-subgroup",
    name = "petrochem-cracking",
    group = "petrochem-refining",
    order = "gb",
  },
    {
    type = "item-subgroup",
    name = "petrochem-feedstock",
    group = "petrochem-refining",
    order = "h",
  },
  {
    type = "item-subgroup",
    name = "petrochem-chemistry",
    group = "petrochem-refining",
    order = "i",
  },
  {
    type = "item-subgroup",
    name = "petrochem-oil-output",
    group = "petrochem-refining",
    order = "j",
  },
  {
    type = "item-subgroup",
    name = "petrochem-solids",
    group = "petrochem-refining",
    order = "ka",
  },
  {
    type = "item-subgroup",
    name = "petrochem-solids-2",
    group = "petrochem-refining",
    order = "kb",
  },
  {
    type = "item-subgroup",
    name = "petrochem-catalysts",
    group = "petrochem-refining",
    order = "l",
  },
  -- BUILDINGS
  { -- electrolizers + liquifier + air filters
    type = "item-subgroup",
    name = "petrochem-buildings-electrolyser",
    group = "petrochem-refining",
    order = "za[buildings]-a",
  },
  { -- chemical plants + adv chemical plants
    type = "item-subgroup",
    name = "petrochem-buildings-chemical-plant",
    group = "petrochem-refining",
    order = "za[buildings]-b",
  },
  { -- gas refineries + advanced gas refineries
    type = "item-subgroup",
    name = "petrochem-buildings-gas-refinery",
    group = "petrochem-refining",
    order = "za[buildings]-c",
  },
  { -- oil and gas seperator + oil refinery
    type = "item-subgroup",
    name = "petrochem-buildings-oil-refinery",
    group = "petrochem-refining",
    order = "za[buildings]-d",
  },
  { --steam crackers, flare stack, boiler
    type = "item-subgroup",
    name = "petrochem-buildings-steam",
    group = "petrochem-refining",
    order = "za[buildings]-e",
  },
  -- OTHERS
  {
    type = "item-subgroup",
    name = "petrochem-raw",
    group = "petrochem-refining",
    order = "zz[raw]",
  },
  {
    type = "item-subgroup",
    name = "petrochem-utility",
    group = "petrochem-refining",
    order = "u",
  },
  {
    type = "item-subgroup",
    name = "petrochem-tanks",
    group = "petrochem-refining",
    order = "w",
  },
  {
    type = "item-subgroup",
    name = "angels-converter",
    group = "petrochem-refining",
    order = "zzz",
  },
  }
  )