data:extend(
{
  --RECIPE CATEGORY
  {
    type = "recipe-category",
    name = "bob-logistics",
  },
  --EQUIPMENT CATEGORY
  {
    type = "equipment-category",
    name = "angels-light-attack"
  },
  {
    type = "equipment-category",
    name = "angels-heavy-attack"
  },
  {
    type = "equipment-category",
    name = "angels-repair"
  },
  {
    type = "equipment-category",
    name = "angels-light-defense"
  },
  {
    type = "equipment-category",
    name = "angels-heavy-defense"
  },
  {
    type = "equipment-category",
    name = "angels-energy"
  },
  {
    type = "equipment-category",
    name = "angels-construction"
  },
  {
    type = "equipment-category",
    name = "angels-movement"
  },
  --SUBGROUPS
  --COMPONENTS
  {
    type = "item-group",
    name = "angels-components",
    order = "pa",
    inventory_order = "pa",
    icon_size = 64,
    icon = "__angelsindustries__/graphics/item-group/components-tech.png",
  },
  {
    type = "item-subgroup",
    name = "angels-board",
    group = "angels-components",
    order = "aa",
  },
  {
    type = "item-subgroup",
    name = "angels-circuit-board",
    group = "angels-components",
    order = "ab",
  },
  {
    type = "item-subgroup",
    name = "angels-loaded-circuit-board",
    group = "angels-components",
    order = "ac",
  },
  {
    type = "item-subgroup",
    name = "angels-circuit-components",
    group = "angels-components",
    order = "ad",
  },
  -- {
  --   type = "item-subgroup",
  --   name = "angels-electronics",
  --   group = "angels-components",
  --   order = "ae",
  -- },
  {
    type = "item-subgroup",
    name = "angels-casing",
    group = "angels-components",
    order = "ba",
  },
  {
    type = "item-subgroup",
    name = "angels-motors",
    group = "angels-components",
    order = "bb",
  },
  {
    type = "item-subgroup",
    name = "angels-mechanical-parts",
    group = "angels-components",
    order = "bc",
  },
  {
    type = "item-subgroup",
    name = "angels-construction-grates",
    group = "angels-components",
    order = "ca",
  },
  {
    type = "item-subgroup",
    name = "angels-construction-frames",
    group = "angels-components",
    order = "cb",
  },
  {
    type = "item-subgroup",
    name = "angels-construction-components",
    group = "angels-components",
    order = "cc",
  },
  {
    type = "item-subgroup",
    name = "angels-weapons-body",
    group = "angels-components",
    order = "da",
  },
  {
    type = "item-subgroup",
    name = "angels-weapons",
    group = "angels-components",
    order = "db",
  },
  {
    type = "item-subgroup",
    name = "angels-weapons-parts",
    group = "angels-components",
    order = "dc",
  },
  {
    type = "item-subgroup",
    name = "angels-cable-harness",
    group = "angels-components",
    order = "f",
  },
  {
    type = "item-subgroup",
    name = "angels-tool",
    group = "angels-components",
    order = "g",
  },
  {
    type = "item-subgroup",
    name = "blocks-frames",
    group = "angels-components",
    order = "ua",
  },
  {
    type = "item-subgroup",
    name = "blocks-electronics",
    group = "angels-components",
    order = "ub",
  },
  {
    type = "item-subgroup",
    name = "blocks-processing",
    group = "angels-components",
    order = "v",
  },
  {
    type = "item-subgroup",
    name = "blocks-petrochem",
    group = "angels-components",
    order = "w",
  },
  {
    type = "item-subgroup",
    name = "blocks-smelting",
    group = "angels-components",
    order = "xa",
  },
  {
    type = "item-subgroup",
    name = "blocks-bio",
    group = "angels-components",
    order = "xb",
  },
  {
    type = "item-subgroup",
    name = "blocks-basic",
    group = "angels-components",
    order = "y",
  },
  {
    type = "item-subgroup",
    name = "angels-assemblers-small",
    group = "angels-components",
    order = "za",
  },
  {
    type = "item-subgroup",
    name = "angels-assemblers-medium",
    group = "angels-components",
    order = "zb",
  },
  {
    type = "item-subgroup",
    name = "angels-assemblers-big",
    group = "angels-components",
    order = "zc",
  },
  --SCIENCE
  {
    type = "item-group",
    name = "angels-tech",
    order = "pb",
    inventory_order = "pb",
    icon_size = 64,
    icon = "__angelsindustries__/graphics/item-group/science-group.png",
  },
  {
    type = "item-subgroup",
    name = "angels-science-pack",
    group = "angels-tech",
    order = "aa",
  },
  {
    type = "item-subgroup",
    name = "angels-pack-components",
    group = "angels-tech",
    order = "ab",
  },
  {
    type = "item-subgroup",
    name = "angels-datacore-1",
    group = "angels-tech",
    order = "b",
  },
  {
    type = "item-subgroup",
    name = "angels-datacore-2",
    group = "angels-tech",
    order = "c",
  },
  {
    type = "item-subgroup",
    name = "angels-labs-1",
    group = "angels-tech",
    order = "y",
  },
  {
    type = "item-subgroup",
    name = "angels-labs-2",
    group = "angels-tech",
    order = "z",
  },
  --EQUIPMENT
  {
    type = "item-group",
    name = "angels-enhancement",
    order = "pa",
    inventory_order = "pc",
    icon_size = 64,
    icon = "__angelsindustries__/graphics/item-group/vequip.png",
  },
  {
    type = "item-subgroup",
    name = "angels-equipment-energy",
    group = "angels-enhancement",
    order = "a",
  },
  {
    type = "item-subgroup",
    name = "angels-equipment-movement",
    group = "angels-enhancement",
    order = "b",
  },
  {
    type = "item-subgroup",
    name = "angels-equipment-robo",
    group = "angels-enhancement",
    order = "c",
  },
  {
    type = "item-subgroup",
    name = "angels-equipment-ldef",
    group = "angels-enhancement",
    order = "d",
  },
  {
    type = "item-subgroup",
    name = "angels-equipment-hdef",
    group = "angels-enhancement",
    order = "e",
  },
  {
    type = "item-subgroup",
    name = "angels-equipment-lat",
    group = "angels-enhancement",
    order = "f",
  },
  {
    type = "item-subgroup",
    name = "angels-equipment-hat",
    group = "angels-enhancement",
    order = "g",
  },
  --LOGISTICS
  {
    type = "item-group",
    name = "angels-logistics",
    order = "q",
    inventory_order = "q",
    icon = "__angelsindustries__/graphics/item-group/cargo-roboport-group.png",
    icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "angels-chests-big",
    group = "angels-logistics",
    order = "a",
  },
  {
    type = "item-subgroup",
    name = "angels-cargo-ports",
    group = "angels-logistics",
    order = "b",
  },
  {
    type = "item-subgroup",
    name = "angels-cargo-expander",
    group = "angels-logistics",
    order = "c",
  },
  {
    type = "item-subgroup",
    name = "angels-cargo-bots",
    group = "angels-logistics",
    order = "d",
  },
  {
    type = "item-subgroup",
    name = "angels-vehicles",
    group = "angels-logistics",
    order = "e",
  },
  {
    type = "item-subgroup",
    name = "angels-crawler-train",
    group = "angels-logistics",
    order = "f",
  },
}
)
