data:extend({
  {
    type = "recipe-category",
    name = "bio-processing", -- algae farm
  },
  {
    type = "recipe-category",
    name = "bio-processing-2",
  },
  {
    type = "recipe-category",
    name = "bio-processing-3",
  },
  {
    type = "recipe-category",
    name = "bio-processing-4",
  },
  {
    type = "recipe-category",
    name = "basic-farming",
  },
  {
    type = "recipe-category",
    name = "temperate-farming",
  },
  {
    type = "recipe-category",
    name = "advanced-temperate-farming",
  },
  {
    type = "recipe-category",
    name = "desert-farming",
  },
  {
    type = "recipe-category",
    name = "advanced-desert-farming",
  },
  {
    type = "recipe-category",
    name = "swamp-farming",
  },
  {
    type = "recipe-category",
    name = "advanced-swamp-farming",
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
    order = "la[angels]-d[bio-processing]-a[nauvis]",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
        icon_size = 128,
        scale = 0.5,
      },
      {
        icon = "__angelsrefining__/graphics/icons/void.png",
        icon_size = 32,
        scale = 64 / 32 * 0.35,
        shift = { 20, -20 },
      },
    },
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
    name = "bio-processing-red",
    group = "bio-processing-nauvis",
    order = "c",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-blue",
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
    order = "ha",
  },
  {
    type = "item-subgroup",
    name = "bio-arboretum-swamp",
    group = "bio-processing-nauvis",
    order = "hb",
  },
  {
    type = "item-subgroup",
    name = "bio-arboretum-desert",
    group = "bio-processing-nauvis",
    order = "hc",
  },
  -- order i reserved for bob greenhouse
  {
    type = "item-subgroup",
    name = "bio-liquor",
    group = "bio-processing-nauvis",
    order = "j",
  },
  {
    type = "item-subgroup",
    name = "bio-paper",
    group = "bio-processing-nauvis",
    order = "k",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-buildings-nauvis-a",
    group = "bio-processing-nauvis",
    order = "z",
  },

  -- VEGETABILIS
  {
    type = "item-group",
    name = "bio-processing-vegetables",
    order = "la[angels]-d[bio-processing]-b[farming]",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/seed-extractor-tech.png",
        icon_size = 128,
        scale = 0.5,
      },
      {
        icon = "__angelsrefining__/graphics/icons/void.png",
        icon_size = 32,
        scale = 64 / 32 * 0.35,
        shift = { 20, -20 },
      },
    },
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
    name = "bio-processor-nutrient",
    group = "bio-processing-vegetables",
    order = "e[processing]-a",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-press-vegetables",
    group = "bio-processing-vegetables",
    order = "e[processing]-c",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-fermentation",
    group = "bio-processing-vegetables",
    order = "e[processing]-d",
  },
  {
    type = "item-subgroup",
    name = "bio-plastic",
    group = "bio-processing-vegetables",
    order = "e[processing]-e",
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
    order = "la[angels]-d[bio-processing]-c[alien]",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/technology/bio-refugium-puffer-breeding-tech.png",
        icon_size = 128,
        scale = 0.5,
      },
      {
        icon = "__angelsrefining__/graphics/icons/void.png",
        icon_size = 32,
        scale = 64 / 32 * 0.35,
        shift = { 20, -20 },
      },
    },
  },
  {
    type = "item-subgroup",
    name = "bio-fish",
    group = "bio-processing-alien",
    order = "a[fish]-a[producing]",
  },
  {
    type = "item-subgroup",
    name = "bio-fish-breeding",
    group = "bio-processing-alien",
    order = "a[fish]-b[breeding]",
  },
  {
    type = "item-subgroup",
    name = "bio-fish-butchery",
    group = "bio-processing-alien",
    order = "a[fish]-c[processing]",
  },
  {
    type = "item-subgroup",
    name = "bio-puffer-1",
    group = "bio-processing-alien",
    order = "b[puffer]-a[producing]-a[dedicated]",
  },
  {
    type = "item-subgroup",
    name = "bio-puffer-2",
    group = "bio-processing-alien",
    order = "b[puffer]-a[producing]-b[mixed]",
  },
  {
    type = "item-subgroup",
    name = "bio-puffer-breeding-1",
    group = "bio-processing-alien",
    order = "b[puffer]-b[breeding]-a[dedicated]",
  },
  {
    type = "item-subgroup",
    name = "bio-puffer-breeding-2",
    group = "bio-processing-alien",
    order = "b[puffer]-b[breeding]-b[mixed]",
  },
  {
    type = "item-subgroup",
    name = "bio-puffer-egg",
    group = "bio-processing-alien",
    order = "b[puffer]-b[breeding]-c[hatching]",
  },
  {
    type = "item-subgroup",
    name = "bio-puffer-butchery",
    group = "bio-processing-alien",
    order = "b[puffer]-c[processing]-a[butchering]",
  },
  {
    type = "item-subgroup",
    name = "bio-hogger",
    group = "bio-processing-alien",
    order = "c[hogger]-a[producing]",
  },
  {
    type = "item-subgroup",
    name = "bio-hogger-breeding",
    group = "bio-processing-alien",
    order = "c[hogger]-b[breeding]",
  },
  {
    type = "item-subgroup",
    name = "bio-hogger-butchery",
    group = "bio-processing-alien",
    order = "c[hogger]-c[processing]",
  },
  {
    type = "item-subgroup",
    name = "bio-biter-egg",
    group = "bio-processing-alien",
    order = "d[puffer]-a[breeding]",
  },
  {
    type = "item-subgroup",
    name = "bio-biter",
    group = "bio-processing-alien",
    order = "d[puffer]-b[producing]",
  },
  {
    type = "item-subgroup",
    name = "bio-biter-butchery",
    group = "bio-processing-alien",
    order = "d[puffer]-c[processing]",
  },
  {
    type = "item-subgroup",
    name = "bio-processor-press-fish",
    group = "bio-processing-alien",
    order = "e[alien-products]-a[intermediates]-a[fish-oil]",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-alien-intermediate",
    group = "bio-processing-alien",
    order = "e[alien-products]-a[intermediates]-b[seeding]",
  },
  {
    type = "item-subgroup",
    name = "bio-biter-processing-crystal-splinter",
    group = "bio-processing-alien",
    order = "e[alien-products]-b[crystal]-a[splinter]",
  },
  {
    type = "item-subgroup",
    name = "bio-biter-processing-crystal-shard",
    group = "bio-processing-alien",
    order = "e[alien-products]-b[crystal]-b[shard]",
  },
  {
    type = "item-subgroup",
    name = "bio-biter-processing-crystal-full",
    group = "bio-processing-alien",
    order = "e[alien-products]-b[crystal]-c[full]",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-paste",
    group = "bio-processing-alien",
    order = "e[alien-products]-c[artifacts]-a[paste]",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-alien-pre",
    group = "bio-processing-alien",
    order = "e[alien-products]-c[artifacts]-b[pre]",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-alien-small",
    group = "bio-processing-alien",
    order = "e[alien-products]-c[artifacts]-c[small]",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-alien-large",
    group = "bio-processing-alien",
    order = "e[alien-products]-c[artifacts]-d[large]-a[create]",
  },
  {
    type = "item-subgroup",
    name = "bio-processing-alien-large-convert",
    group = "bio-processing-alien",
    order = "e[alien-products]-c[artifacts]-d[large]-b[convert]",
  },
  -- order e[alien-products]-d[resources] reserved for alien resource products (see override bob artifacts)
  {
    type = "item-subgroup",
    name = "bio-processing-buildings-alien-a",
    group = "bio-processing-alien",
    order = "za",
  },
  -- void
  {
    type = "item-subgroup",
    name = "angels-bio-void",
    group = "angels-void",
    order = "a-c[bio]",
  },
})
