data:extend({
  --RESOURCE CATEGORIES
  { type = "resource-category", name = "angels-fissure" },
  { type = "resource-category", name = "angels-natural-gas" },
  --RECIPE CATEGORIES
  { type = "recipe-category", name = "angels-unused-machine" }, -- used for machines that don't have a purpose },
  { type = "recipe-category", name = "angels-manual-crafting" }, -- used for manual crafting in character only },

  { type = "recipe-category", name = "angels-ore-refining-t1" }, -- crusher
  { type = "recipe-category", name = "angels-ore-refining-t1-5" }, -- powderizer
  { type = "recipe-category", name = "angels-ore-refining-t2" }, -- flotation
  { type = "recipe-category", name = "angels-ore-refining-t3" }, -- leaching
  { type = "recipe-category", name = "angels-ore-refining-t3b" }, -- leaching 2
  { type = "recipe-category", name = "angels-ore-refining-t3-5" }, -- electrowinning
  { type = "recipe-category", name = "angels-ore-refining-t4" }, -- refinery

  { type = "recipe-category", name = "angels-ore-sorting" },
  { type = "recipe-category", name = "angels-ore-sorting-2" },
  { type = "recipe-category", name = "angels-ore-sorting-3" },
  { type = "recipe-category", name = "angels-ore-sorting-4" },
  { type = "recipe-category", name = "angels-ore-sorting-5" },

  { type = "recipe-category", name = "angels-filtering" },
  { type = "recipe-category", name = "angels-filtering-2" },
  { type = "recipe-category", name = "angels-filtering-3" },

  { type = "recipe-category", name = "angels-crystallizing" },
  { type = "recipe-category", name = "angels-crystallizing-2" },
  { type = "recipe-category", name = "angels-crystallizing-3" },

  { type = "recipe-category", name = "angels-liquifying" },
  -- water treatment
  { type = "recipe-category", name = "angels-barreling" },
  { type = "recipe-category", name = "angels-water-treatment" },
  { type = "recipe-category", name = "angels-salination-plant" },
  { type = "recipe-category", name = "angels-washing-plant" },
  { type = "recipe-category", name = "angels-water-void" },
  { type = "recipe-category", name = "angels-barreling-pump" },
  --SUBGROUPS
  {
    type = "item-subgroup",
    name = "angels-fluids-refining",
    group = "fluids",
    order = "b",
  },
  {
    type = "item-group",
    name = "angels-resource-refining",
    order = "la[angels]-a[refining]-a",
    icons = {
      {
        icon = "__angelsrefininggraphics__/graphics/technology/ore-sorting.png",
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
    name = "angels-processing-crafting",
    group = "angels-resource-refining",
    order = "a[init]-a[crafting]",
  },
  {
    type = "item-subgroup",
    name = "angels-ores",
    group = "angels-resource-refining",
    order = "a[init]-b[ore]",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-processing-a",
    group = "angels-resource-refining",
    order = "b[processing]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-processing-b",
    group = "angels-resource-refining",
    order = "b[processing]-b",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-processing-c",
    group = "angels-resource-refining",
    order = "b[processing]-c",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-processing-d",
    group = "angels-resource-refining",
    order = "b[processing]-d",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-processing-fluid",
    group = "angels-resource-refining",
    order = "y[fluid]-b[processing]",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-processing-t0",
    group = "angels-resource-refining",
    order = "c[sorting]-a[none]",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-sorting-t1",
    group = "angels-resource-refining",
    order = "c[sorting]-b[basic]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-sorting-t2",
    group = "angels-resource-refining",
    order = "c[sorting]-b[basic]-b",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-sorting-t3",
    group = "angels-resource-refining",
    order = "c[sorting]-b[basic]-c",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-sorting-t4",
    group = "angels-resource-refining",
    order = "c[sorting]-b[basic]-d",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-sorting-advanced",
    group = "angels-resource-refining",
    order = "c[sorting]-c[advanced]",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-sorting-fluid",
    group = "angels-resource-refining",
    order = "y[fluid]-c[sorting]",
  },
  {
    type = "item-subgroup",
    name = "angels-geode-processing-1",
    group = "angels-resource-refining",
    order = "c[sorting]-d[geode]",
  },
  {
    type = "item-subgroup",
    name = "angels-geode-processing-2",
    group = "angels-resource-refining",
    order = "c[sorting]-d[geode]2",
  },
  {
    type = "item-subgroup",
    name = "angels-ores",
    group = "angels-resource-refining",
    order = "d[ores]",
  },
  {
    type = "item-subgroup",
    name = "angels-liquifying",
    group = "angels-resource-refining",
    order = "e[mineral]-a[liquifying]",
  },
  {
    type = "item-subgroup",
    name = "angels-filtering",
    group = "angels-resource-refining",
    order = "e[mineral]-b[filtering]",
  },
  {
    type = "item-subgroup",
    name = "angels-slag-processing-1",
    group = "angels-resource-refining",
    order = "e[mineral]-c[processing]",
  },
  {
    type = "item-subgroup",
    name = "angels-geode-crystallization",
    group = "angels-resource-refining",
    order = "f[crystal]",
  },
  {
    type = "item-subgroup",
    name = "angels-catalysts-filters",
    group = "angels-resource-refining",
    order = "g[catalysts]",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-sorter",
    group = "angels-resource-refining",
    order = "z[building]-a[sorter]",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-crusher",
    group = "angels-resource-refining",
    order = "z[building]-b[crusher]",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-floatation",
    group = "angels-resource-refining",
    order = "z[building]-c[floatation]",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-leaching",
    group = "angels-resource-refining",
    order = "z[building]-d[leaching]",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-refining",
    group = "angels-resource-refining",
    order = "z[building]-e[refining]",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-powderizer",
    group = "angels-resource-refining",
    order = "z[building]-f[powderizer]",
  },
  {
    type = "item-subgroup",
    name = "angels-ore-whinning",
    group = "angels-resource-refining",
    order = "z[building]-g[electro-whinning]",
  },
  {
    type = "item-subgroup",
    name = "angels-refining-buildings",
    group = "angels-resource-refining",
    order = "z[building]-h[refining]",
  },
  --WATER TREATMENT
  {
    type = "item-group",
    name = "angels-water-treatment",
    order = "la[angels]-c[petrochem]-a",
    icons = {
      {
        icon = "__angelsrefininggraphics__/graphics/technology/water-treatment.png",
        icon_size = 256,
        scale = 64 / 256,
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
    name = "angels-water-treatment",
    group = "angels-water-treatment",
    order = "a",
  },
  {
    type = "item-subgroup",
    name = "angels-water-treatment-fluid",
    group = "angels-water-treatment",
    order = "y[fluid]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-water-cleaning",
    group = "angels-water-treatment",
    order = "b",
  },
  {
    type = "item-subgroup",
    name = "angels-water-cleaning-fluid",
    group = "angels-water-treatment",
    order = "y[fluid]-b",
  },
  {
    type = "item-subgroup",
    name = "angels-water-salination",
    group = "angels-water-treatment",
    order = "c",
  },
  {
    type = "item-subgroup",
    name = "angels-water-washing",
    group = "angels-water-treatment",
    order = "da",
  },
  {
    type = "item-subgroup",
    name = "angels-water-washing-filtering",
    group = "angels-water-treatment",
    order = "db",
  },
  {
    type = "item-subgroup",
    name = "angels-water-washing-fluid",
    group = "angels-water-treatment",
    order = "y[fluid]-c",
  },
  {
    type = "item-subgroup",
    name = "angels-coolant",
    group = "angels-water-treatment",
    order = "f",
  },
  {
    type = "item-subgroup",
    name = "angels-water-enrichment",
    group = "angels-water-treatment",
    order = "g",
  },
  {
    type = "item-subgroup",
    name = "angels-water-treatment-building",
    group = "angels-water-treatment",
    order = "z[building]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-washing-building",
    group = "angels-water-treatment",
    order = "z[building]-b",
  },
  --BARRELS
  {
    type = "item-group",
    name = "angels-fluid-control",
    order = "la[angels]-c[petrochem]-c",
    icons = {
      {
        icon = "__angelsrefininggraphics__/graphics/item-group/barreling-group.png",
        icon_size = 128,
        scale = 0.5,
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
    order = "la[angels]-z[void]-a",
    icons = {
      {
        icon = "__angelsrefininggraphics__/graphics/item-group/void-group.png",
        icon_size = 128,
        scale = 0.5,
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
    name = "angels-void",
    group = "angels-void",
    order = "a-z",
  },
  {
    type = "item-subgroup",
    name = "angels-water-void",
    group = "angels-void",
    order = "a-a[water]",
  },
})
