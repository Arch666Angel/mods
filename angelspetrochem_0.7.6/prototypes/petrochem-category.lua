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
    order = "ld",
    inventory_order = "ld",
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
    name = "petrochem-raw",
	group = "petrochem-refining",
	order = "z",
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
  {
    type = "item-subgroup",
    name = "petrochem-electrolyser",
	group = "petrochem-refining",
	order = "r",
  },
  {
    type = "item-subgroup",
    name = "petrochem-separator-gas-refinery",
	group = "petrochem-refining",
	order = "s",
  },
  {
    type = "item-subgroup",
    name = "petrochem-steam-cracker-advanced-chemical-plant",
	group = "petrochem-refining",
	order = "t",
  },
  {
    type = "item-subgroup",
    name = "petrochem-vanilla",
	group = "petrochem-refining",
	order = "ta",
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