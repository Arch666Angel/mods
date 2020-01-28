data:extend(
{
  {
    type = "recipe-category",
    name = "bio-processing",
  },
  {
    type = "recipe-category",
    name = "temperate-farming",
  },
  {
    type = "recipe-category",
    name = "desert-farming",
  },
  {
    type = "recipe-category",
    name = "swamp-farming",
  },
  {
    type = "recipe-category",
    name = "bio-fuel",
  },
  {
    type = "recipe-category",
    name = "seed-extractor",
  },
  {
    type = "recipe-category",
    name = "bio-processor",
  },
  {
    type = "recipe-category",
    name = "bio-pressing",
  },
  {
    type = "recipe-category",
    name = "nutrient-extractor",
  },
  {
    type = "recipe-category",
    name = "angels-bio-void",
  },
  {
    type = "recipe-category",
    name = "angels-tree",
  },
  {
    type = "recipe-category",
    name = "angels-tree-temperate",
  },
  {
    type = "recipe-category",
    name = "angels-tree-swamp",
  },
  {
    type = "recipe-category",
    name = "angels-tree-desert",
  },
  {
    type = "recipe-category",
    name = "angels-arboretum",
  },
  {
    type = "recipe-category",
    name = "bio-refugium-biter",
  },
  {
    type = "recipe-category",
    name = "bio-refugium-puffer",
  },
  {
    type = "recipe-category",
    name = "bio-refugium-hogger",
  },
  {
    type = "recipe-category",
    name = "bio-refugium-fish",
  },
  {
    type = "recipe-category",
    name = "bio-hatchery",
  },
  {
    type = "recipe-category",
    name = "bio-butchery",
  },



  --NAUVIS
  {
    type = "item-group",
    name = "bio-processing-nauvis",
    order = "le-a[nauvis]",
    inventory_order = "le-a[nauvis]",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-group.png",
    icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "bio-processing-green",
    group = "bio-processing-nauvis",
    order = "a",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-brown",
    group = "bio-processing-nauvis",
    order = "b",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-blue",
    group = "bio-processing-nauvis",
    order = "c",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-red",
    group = "bio-processing-nauvis",
    order = "d",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-wood",
    group = "bio-processing-nauvis",
    order = "e",
  },
  {
    type = "item-subgroup",
    name = "bio-wood",
    group = "bio-processing-nauvis",
    order = "f",
  },
  {
    type = "item-subgroup",
    name = "bio-arboretum",
    group = "bio-processing-nauvis",
    order = "g",
  },
  {
    type = "item-subgroup",
    name = "bio-arboretum-temperate",
    group = "bio-processing-nauvis",
    order = "h",
  },
  {
    type = "item-subgroup",
    name = "bio-arboretum-swamp",
    group = "bio-processing-nauvis",
    order = "i",
  },
  {
    type = "item-subgroup",
    name = "bio-arboretum-desert",
    group = "bio-processing-nauvis",
    order = "j",
  },
  {
    type = "item-subgroup",
    name = "bio-liquor",
    group = "bio-processing-nauvis",
    order = "k",
  },
  {
    type = "item-subgroup",
    name = "bio-paper",
    group = "bio-processing-nauvis",
    order = "l",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-buildings-nauvis-a",
    group = "bio-processing-nauvis",
    order = "m",
  },



  -- VEGETABILIS
  {
    type = "item-group",
    name = "bio-processing-vegetables",
    order = "le-b[farming]",
    inventory_order = "le-b[farming]",
    icon = "__angelsbioprocessing__/graphics/technology/vegetables-farm-group.png",
    icon_size = 128,
  },
  {
    type = "item-subgroup",
    name = "farming-gardens",
    group = "bio-processing-vegetables",
    order = "a[garden]",
  },
  {
    type = "item-subgroup",
    name = "farming-temperate-seed",
    group = "bio-processing-vegetables",
    order = "b[temperate]-a",
  },
  {
    type = "item-subgroup",
    name = "farming-temperate",
    group = "bio-processing-vegetables",
    order = "b[temperate]-b",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-temperate",
    group = "bio-processing-vegetables",
    order = "b[temperate]-c",
  },
  {
    type = "item-subgroup",
    name = "farming-swamp-seed",
    group = "bio-processing-vegetables",
    order = "c[swamp]-a",
  },
  {
    type = "item-subgroup",
    name = "farming-swamp",
    group = "bio-processing-vegetables",
    order = "c[swamp]-b",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-swamp",
    group = "bio-processing-vegetables",
    order = "c[swamp]-c",
  },
  {
    type = "item-subgroup",
    name = "farming-desert-seed",
    group = "bio-processing-vegetables",
    order = "d[desert]-a",
  },
  {
    type = "item-subgroup",
    name = "farming-desert",
    group = "bio-processing-vegetables",
    order = "d[desert]-b",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-desert",
    group = "bio-processing-vegetables",
    order = "d[desert]-c",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-nutrient",
    group = "bio-processing-vegetables",
    order = "e[processing]-a",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-press",
    group = "bio-processing-vegetables",
    order = "e[processing]-b",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-fermentation",
    group = "bio-processing-vegetables",
    order = "e[processing]-c",
  },
  {
    type = "item-subgroup",
    name = "bio-plastic",
    group = "bio-processing-vegetables",
    order = "e[processing]-d",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-blocks",
    group = "bio-processing-vegetables",
    order = "y[blocks]",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-buildings-vegetabilis-a",
    group = "bio-processing-vegetables",
    order = "z[buildings]-a",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-buildings-vegetabilis-b",
    group = "bio-processing-vegetables",
    order = "z[buildings]-b",
  },



  -- ANIMALIS
  {
    type = "item-group",
    name = "bio-processing-alien",
    order = "le-c[alien]",
    inventory_order = "le-c[alien]",
    icon = "__angelsbioprocessing__/graphics/technology/refugium-1-group.png",
    icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "bio-fish",
    group = "bio-processing-alien",
    order = "aa",
  },
  {
    type = "item-subgroup",
    name = "bio-fish-breeding",
    group = "bio-processing-alien",
    order = "ab",
  },
  {
    type = "item-subgroup",
    name = "bio-fish-butchery",
    group = "bio-processing-alien",
    order = "ac",
  },
  {
    type = "item-subgroup",
    name = "bio-puffer",
    group = "bio-processing-alien",
    order = "ba",
  },
  {
    type = "item-subgroup",
    name = "bio-puffer-breeding",
    group = "bio-processing-alien",
    order = "bb",
  },
  {
    type = "item-subgroup",
    name = "bio-puffer-egg",
    group = "bio-processing-alien",
    order = "bc",
  },
  {
    type = "item-subgroup",
    name = "bio-puffer-butchery",
    group = "bio-processing-alien",
    order = "bd",
  },
  {
    type = "item-subgroup",
    name = "bio-hogger",
    group = "bio-processing-alien",
    order = "ca",
  },
  {
    type = "item-subgroup",
    name = "bio-hogger-breeding",
    group = "bio-processing-alien",
    order = "cb",
  },
  {
    type = "item-subgroup",
    name = "bio-hogger-butchery",
    group = "bio-processing-alien",
    order = "cc",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-alien-intermediate",
    group = "bio-processing-alien",
    order = "da",
  },
  {
    type = "item-subgroup",
    name = "bio-biter-small",
    group = "bio-processing-alien",
    order = "db",
  },
  {
    type = "item-subgroup",
    name = "bio-biter-medium",
    group = "bio-processing-alien",
    order = "dc",
  },
  {
    type = "item-subgroup",
    name = "bio-biter-big",
    group = "bio-processing-alien",
    order = "dd",
  },

  {
    type = "item-subgroup",
    name = "bio-processing-paste",
    group = "bio-processing-alien",
    order = "f",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-alien-pre",
    group = "bio-processing-alien",
    order = "h",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-alien-small",
    group = "bio-processing-alien",
    order = "i",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-buildings-z",
    group = "bio-processing-alien",
    order = "za",
  },
}
)
