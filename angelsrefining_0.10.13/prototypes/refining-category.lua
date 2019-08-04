data:extend(
{
--RESOURCE CATEGORIES
  {
    type = "resource-category",
    name = "angels-fissure",
  },
  {
    type = "resource-category",
    name = "angels-natural-gas",
  },
--RECIPE CATEGORIES
  --REFINING
  {
    type = "recipe-category",
    name = "ore-processing",
  },
  {
    type = "recipe-category",
    name = "ore-sorting",
  },
  {
    type = "recipe-category",
    name = "ore-sorting-t1",
  },
  {
    type = "recipe-category",
    name = "ore-sorting-t1-5",
  },
  {
    type = "recipe-category",
    name = "ore-sorting-t2",
  },
  {
    type = "recipe-category",
    name = "ore-sorting-t3",
  },
  {
    type = "recipe-category",
    name = "ore-sorting-t3-5",
  },
  {
    type = "recipe-category",
    name = "ore-sorting-t4",
  },
  {
    type = "recipe-category",
    name = "liquifying",
  },
  {
    type = "recipe-category",
    name = "filtering",
  },
  {
    type = "recipe-category",
    name = "crystallizing",
  },
  --WATER TREATMENT
  {
    type = "recipe-category",
    name = "angels-barreling",
  },
  {
    type = "recipe-category",
    name = "water-treatment",
  },
  {
    type = "recipe-category",
    name = "salination-plant",
  },
  {
    type = "recipe-category",
    name = "washing-plant",
  },
  {
    type = "recipe-category",
    name = "angels-water-void",
  },
  {
    type = "recipe-category",
    name = "barreling-pump",
  },
--SUBGROUPS
  {
    type = "item-subgroup",
    name = "fluids-refining",
	group = "fluids",
	order = "b",
  },
  {
    type = "item-group",
    name = "resource-refining",
    order = "la",
    inventory_order = "la",
    icon = "__angelsrefining__/graphics/item-group/ore-refining.png",
	icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "processing-crafting",
	group = "resource-refining",
	order = "aa",
  },
  {
    type = "item-subgroup",
    name = "angels-ores",
	group = "resource-refining",
	order = "ab",
  },
  {
    type = "item-subgroup",
    name = "ore-processing-a",
	group = "resource-refining",
	order = "b",
  },
  {
    type = "item-subgroup",
    name = "ore-processing-b",
	group = "resource-refining",
	order = "c",
  },
  {
    type = "item-subgroup",
    name = "ore-processing-c",
	group = "resource-refining",
	order = "d",
  },
  {
    type = "item-subgroup",
    name = "ore-processing-d",
	group = "resource-refining",
	order = "e",
  },
  {
    type = "item-subgroup",
    name = "ore-processing-t0",
	group = "resource-refining",
	order = "f",
  },
  {
    type = "item-subgroup",
    name = "ore-sorting-t1",
	group = "resource-refining",
	order = "g",
  },
  {
    type = "item-subgroup",
    name = "ore-sorting-t2",
	group = "resource-refining",
	order = "h",
  },
  {
    type = "item-subgroup",
    name = "ore-sorting-t3",
	group = "resource-refining",
	order = "i",
  },
  {
    type = "item-subgroup",
    name = "ore-sorting-t4",
	group = "resource-refining",
	order = "j",
  },
  {
    type = "item-subgroup",
    name = "ore-sorting-advanced",
	group = "resource-refining",
	order = "k",
  },
  {
    type = "item-subgroup",
    name = "geode-processing-1",
	group = "resource-refining",
	order = "l",
  },
  {
    type = "item-subgroup",
    name = "angels-ores",
	group = "resource-refining",
	order = "m-aaa",
  },
  {
    type = "item-subgroup",
    name = "liquifying",
	group = "resource-refining",
	order = "m",
  },
  {
    type = "item-subgroup",
    name = "filtering",
	group = "resource-refining",
	order = "n",
  },
  {
    type = "item-subgroup",
    name = "slag-processing-1",
	group = "resource-refining",
	order = "o",
  },
  {
    type = "item-subgroup",
    name = "geode-crystallization",
	group = "resource-refining",
	order = "p",
  },
    {
    type = "item-subgroup",
    name = "ore-sorter",
	group = "resource-refining",
	order = "q",
    },
    {
    type = "item-subgroup",
    name = "ore-crusher",
	group = "resource-refining",
	order = "r",
    },
    {
    type = "item-subgroup",
    name = "ore-floatation",
	group = "resource-refining",
	order = "s",
    },
    {
    type = "item-subgroup",
    name = "ore-leaching",
	group = "resource-refining",
	order = "t",
    },
    {
    type = "item-subgroup",
    name = "ore-refining",
	group = "resource-refining",
	order = "u",
    },
    {
    type = "item-subgroup",
    name = "refining-buildings",
	group = "resource-refining",
	order = "v",
    },
--WATER TREATMENT
  {
    type = "item-group",
    name = "water-treatment",
    order = "lb",
    inventory_order = "lb",
    icon = "__angelsrefining__/graphics/item-group/water-treatment-group.png",
	icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "water-treatment",
    group = "water-treatment",
    order = "a",
  },
  {
    type = "item-subgroup",
    name = "water-cleaning",
    group = "water-treatment",
    order = "b",
  },
  {
    type = "item-subgroup",
    name = "water-salination",
    group = "water-treatment",
    order = "c",
  },
  {
    type = "item-subgroup",
    name = "water-washing",
    group = "water-treatment",
    order = "d",
  },
  {
    type = "item-subgroup",
    name = "nodule-washing",
    group = "water-treatment",
    order = "e",
  },
  {
    type = "item-subgroup",
    name = "coolant",
    group = "water-treatment",
    order = "f",
  },
  {
    type = "item-subgroup",
    name = "water-treatment-building",
    group = "water-treatment",
    order = "y",
  },
  {
    type = "item-subgroup",
    name = "washing-building",
    group = "water-treatment",
    order = "z",
  },
--BARRELS
  {
    type = "item-group",
    name = "angels-fluid-control",
    order = "lc",
    inventory_order = "lc",
    icon = "__angelsrefining__/graphics/item-group/heavy-pump-group.png",
	icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "angels-fluid-control",
    group = "angels-fluid-control",
    order = "a",
  },
  {
    type = "item-subgroup",
    name = "angels-fluid-tanks",
    group = "angels-fluid-control",
    order = "b",
  },
  {
    type = "item-subgroup",
    name = "angels-barrels",
    group = "angels-fluid-control",
    order = "z",
  },
--VOID
  {
    type = "item-group",
    name = "angels-void",
    order = "zzzzz",
    inventory_order = "zzzzz",
    icon = "__angelsrefining__/graphics/item-group/heavy-pump-group.png",
	icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "angels-void",
    group = "angels-void",
    order = "a-a",
  },
  }
  )