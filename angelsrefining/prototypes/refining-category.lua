data:extend(
  {
    --RESOURCE CATEGORIES
    { type = "resource-category", name = "angels-fissure" },
    { type = "resource-category", name = "angels-natural-gas" },
    --RECIPE CATEGORIES
    { type = "recipe-category", name = "angels-unused-machine" }, -- used for machines that don't have a purpose },
    { type = "recipe-category", name = "angels-manual-crafting" }, -- used for manual crafting in character only },

    { type = "recipe-category", name = "ore-refining-t1" }, -- crusher
    { type = "recipe-category", name = "ore-refining-t1-5" }, -- powderizer
    { type = "recipe-category", name = "ore-refining-t2" }, -- flotation
    { type = "recipe-category", name = "ore-refining-t3" }, -- leaching
    { type = "recipe-category", name = "ore-refining-t3-5" }, -- electrowinning
    { type = "recipe-category", name = "ore-refining-t4" }, -- refinery

    { type = "recipe-category", name = "ore-sorting" },
    { type = "recipe-category", name = "ore-sorting-2" },
    { type = "recipe-category", name = "ore-sorting-3" },
    { type = "recipe-category", name = "ore-sorting-4" },

    { type = "recipe-category", name = "filtering" },
    { type = "recipe-category", name = "filtering-2" },

    { type = "recipe-category", name = "liquifying" },
    { type = "recipe-category", name = "crystallizing" },
    -- water treatment
    { type = "recipe-category", name = "angels-barreling" },
    { type = "recipe-category", name = "water-treatment" },
    { type = "recipe-category", name = "salination-plant" },
    { type = "recipe-category", name = "washing-plant" },
    { type = "recipe-category", name = "angels-water-void" },
    { type = "recipe-category", name = "barreling-pump" },
    --SUBGROUPS
    {
      type = "item-subgroup",
      name = "fluids-refining",
      group = "fluids",
      order = "b"
    },
    {
      type = "item-group",
      name = "resource-refining",
      order = "la[angels]-a[refining]-a",
      inventory_order = "la[angels]-a[refining]-a",
      --icon = "__angelsrefining__/graphics/item-group/ore-refining.png",
      --icon_size = 64
      icons = {
        {
          icon = "__angelsrefining__/graphics/technology/ore-sorting.png",
          icon_size = 128,
          scale = 0.5
        },
        {
          icon = "__angelsrefining__/graphics/icons/void.png",
          icon_size = 32,
          scale = 64 / 32 * 0.35,
          shift = {20, -20}
        }
      }
    },
    {
      type = "item-subgroup",
      name = "processing-crafting",
      group = "resource-refining",
      order = "a[init]-a[crafting]"
    },
    {
      type = "item-subgroup",
      name = "angels-ores",
      group = "resource-refining",
      order = "a[init]-b[ore]"
    },
    {
      type = "item-subgroup",
      name = "ore-processing-a",
      group = "resource-refining",
      order = "b[processing]-a"
    },
    {
      type = "item-subgroup",
      name = "ore-processing-b",
      group = "resource-refining",
      order = "b[processing]-b"
    },
    {
      type = "item-subgroup",
      name = "ore-processing-c",
      group = "resource-refining",
      order = "b[processing]-c"
    },
    {
      type = "item-subgroup",
      name = "ore-processing-d",
      group = "resource-refining",
      order = "b[processing]-d"
    },
    {
      type = "item-subgroup",
      name = "ore-processing-fluid",
      group = "resource-refining",
      order = "y[fluid]-b[processing]"
    },
    {
      type = "item-subgroup",
      name = "ore-processing-t0",
      group = "resource-refining",
      order = "c[sorting]-a[none]"
    },
    {
      type = "item-subgroup",
      name = "ore-sorting-t1",
      group = "resource-refining",
      order = "c[sorting]-b[basic]-a"
    },
    {
      type = "item-subgroup",
      name = "ore-sorting-t2",
      group = "resource-refining",
      order = "c[sorting]-b[basic]-b"
    },
    {
      type = "item-subgroup",
      name = "ore-sorting-t3",
      group = "resource-refining",
      order = "c[sorting]-b[basic]-c"
    },
    {
      type = "item-subgroup",
      name = "ore-sorting-t4",
      group = "resource-refining",
      order = "c[sorting]-b[basic]-d"
    },
    {
      type = "item-subgroup",
      name = "ore-sorting-advanced",
      group = "resource-refining",
      order = "c[sorting]-c[advanced]"
    },
    {
      type = "item-subgroup",
      name = "ore-sorting-fluid",
      group = "resource-refining",
      order = "y[fluid]-c[sorting]"
    },
    {
      type = "item-subgroup",
      name = "geode-processing-1",
      group = "resource-refining",
      order = "c[sorting]-d[geode]"
    },
    {
      type = "item-subgroup",
      name = "angels-ores",
      group = "resource-refining",
      order = "d[ores]"
    },
    {
      type = "item-subgroup",
      name = "liquifying",
      group = "resource-refining",
      order = "e[mineral]-a[liquifying]"
    },
    {
      type = "item-subgroup",
      name = "filtering",
      group = "resource-refining",
      order = "e[mineral]-b[filtering]"
    },
    {
      type = "item-subgroup",
      name = "slag-processing-1",
      group = "resource-refining",
      order = "e[mineral]-c[processing]"
    },
    {
      type = "item-subgroup",
      name = "geode-crystallization",
      group = "resource-refining",
      order = "f[crystal]"
    },
    {
      type = "item-subgroup",
      name = "ore-sorter",
      group = "resource-refining",
      order = "z[building]-a[sorter]"
    },
    {
      type = "item-subgroup",
      name = "ore-crusher",
      group = "resource-refining",
      order = "z[building]-b[crusher]"
    },
    {
      type = "item-subgroup",
      name = "ore-floatation",
      group = "resource-refining",
      order = "z[building]-c[floatation]"
    },
    {
      type = "item-subgroup",
      name = "ore-leaching",
      group = "resource-refining",
      order = "z[building]-d[leaching]"
    },
    {
      type = "item-subgroup",
      name = "ore-refining",
      group = "resource-refining",
      order = "z[building]-e[refining]"
    },
    {
      type = "item-subgroup",
      name = "ore-powderizer",
      group = "resource-refining",
      order = "z[building]-f[powderizer]"
    },
    {
      type = "item-subgroup",
      name = "ore-whinning",
      group = "resource-refining",
      order = "z[building]-g[electro-whinning]"
    },
    {
      type = "item-subgroup",
      name = "refining-buildings",
      group = "resource-refining",
      order = "z[building]-h[refining]"
    },
    --WATER TREATMENT
    {
      type = "item-group",
      name = "water-treatment",
      order = "la[angels]-c[petrochem]-a",
      inventory_order = "la[angels]-c[petrochem]-a",
      --icon = "__angelsrefining__/graphics/item-group/water-treatment-group.png",
      --icon_size = 64
      icons = {
        {
          icon = "__angelsrefining__/graphics/technology/water-treatment.png",
          icon_size = 128,
          scale = 0.5
        },
        {
          icon = "__angelsrefining__/graphics/icons/void.png",
          icon_size = 32,
          scale = 64 / 32 * 0.35,
          shift = {20, -20}
        }
      }
    },
    {
      type = "item-subgroup",
      name = "water-treatment",
      group = "water-treatment",
      order = "a"
    },
    {
      type = "item-subgroup",
      name = "water-treatment-fluid",
      group = "water-treatment",
      order = "y[fluid]-a"
    },
    {
      type = "item-subgroup",
      name = "water-cleaning",
      group = "water-treatment",
      order = "b"
    },
    {
      type = "item-subgroup",
      name = "water-cleaning-fluid",
      group = "water-treatment",
      order = "y[fluid]-b"
    },
    {
      type = "item-subgroup",
      name = "water-salination",
      group = "water-treatment",
      order = "c"
    },
    {
      type = "item-subgroup",
      name = "water-washing",
      group = "water-treatment",
      order = "da"
    },
    {
      type = "item-subgroup",
      name = "water-washing-filtering",
      group = "water-treatment",
      order = "db"
    },
    {
      type = "item-subgroup",
      name = "nodule-washing",
      group = "water-treatment",
      order = "e"
    },
    {
      type = "item-subgroup",
      name = "water-washing-fluid",
      group = "water-treatment",
      order = "y[fluid]-c"
    },
    {
      type = "item-subgroup",
      name = "coolant",
      group = "water-treatment",
      order = "f"
    },
    {
      type = "item-subgroup",
      name = "water-enrichment",
      group = "water-treatment",
      order = "g"
    },
    {
      type = "item-subgroup",
      name = "water-treatment-building",
      group = "water-treatment",
      order = "z[building]-a"
    },
    {
      type = "item-subgroup",
      name = "washing-building",
      group = "water-treatment",
      order = "z[building]-b"
    },
    --BARRELS
    {
      type = "item-group",
      name = "angels-fluid-control",
      order = "la[angels]-c[petrochem]-c",
      inventory_order = "la[angels]-c[petrochem]-c",
      --icon = "__angelsrefining__/graphics/item-group/heavy-pump-group.png",
      --icon_size = 64
      icons = {
        {
          icon = "__angelsrefining__/graphics/item-group/barreling-group.png",
          icon_size = 128,
          scale = 0.5
        },
        {
          icon = "__angelsrefining__/graphics/icons/void.png",
          icon_size = 32,
          scale = 64 / 32 * 0.35,
          shift = {20, -20}
        }
      }
    },
    {
      type = "item-subgroup",
      name = "angels-fluid-control",
      group = "angels-fluid-control",
      order = "a"
    },
    {
      type = "item-subgroup",
      name = "angels-fluid-tanks",
      group = "angels-fluid-control",
      order = "b"
    },
    {
      type = "item-subgroup",
      name = "angels-barrels",
      group = "angels-fluid-control",
      order = "z"
    },
    --CONVERTER
    {
      type = "item-group",
      name = "angels-fluid-converter",
      order = "la[angels]-c[petrochem]-d",
      inventory_order = "la[angels]-c[petrochem]-c",
      --icon = "__angelsrefining__/graphics/item-group/heavy-pump-group.png",
      --icon_size = 64
      icons = {
        {
          icon = "__angelsrefining__/graphics/item-group/converter-group.png",
          icon_size = 64,
          scale = 1
        },
        {
          icon = "__angelsrefining__/graphics/icons/void.png",
          icon_size = 32,
          scale = 64 / 32 * 0.35,
          shift = {20, -20}
        }
      }
    },
    --VOID
    {
      type = "item-group",
      name = "angels-void",
      order = "la[angels]-z[void]-a",
      inventory_order = "la[angels]-z[void]-a",
      --icon = "__angelsrefining__/graphics/item-group/heavy-pump-group.png",
      --icon_size = 64
      icons = {
        {
          icon = "__angelsrefining__/graphics/item-group/barreling-group.png",
          icon_size = 128,
          scale = 0.5
        },
        {
          icon = "__angelsrefining__/graphics/icons/void.png",
          icon_size = 32,
          scale = 64 / 32 * 0.35,
          shift = {20, -20}
        }
      }
    },
    {
      type = "item-subgroup",
      name = "angels-void",
      group = "angels-void",
      order = "a-z"
    },
    {
      type = "item-subgroup",
      name = "angels-water-void",
      group = "angels-void",
      order = "a-a[water]"
    }
  }
)
