data:extend({
  {
    type = "recipe-category",
    name = "angels-bio-processing", -- algae farm
  },
  {
    type = "recipe-category",
    name = "angels-bio-processing-2",
  },
  {
    type = "recipe-category",
    name = "angels-bio-processing-3",
  },
  {
    type = "recipe-category",
    name = "angels-bio-processing-4",
  },
  {
    type = "recipe-category",
    name = "angels-basic-farming",
  },
  {
    type = "recipe-category",
    name = "angels-temperate-farming",
  },
  {
    type = "recipe-category",
    name = "angels-advanced-temperate-farming",
  },
  {
    type = "recipe-category",
    name = "angels-desert-farming",
  },
  {
    type = "recipe-category",
    name = "angels-advanced-desert-farming",
  },
  {
    type = "recipe-category",
    name = "angels-swamp-farming",
  },
  {
    type = "recipe-category",
    name = "angels-advanced-swamp-farming",
  },
  {
    type = "recipe-category",
    name = "angels-bio-fuel",
  },
  {
    type = "recipe-category",
    name = "angels-seed-extractor",
  },
  {
    type = "recipe-category",
    name = "angels-bio-processor",
  },
  {
    type = "recipe-category",
    name = "angels-bio-pressing",
  },
  {
    type = "recipe-category",
    name = "angels-nutrient-extractor",
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
    name = "angels-bio-refugium-biter",
  },
  {
    type = "recipe-category",
    name = "angels-bio-refugium-puffer",
  },
  {
    type = "recipe-category",
    name = "angels-bio-refugium-fish",
  },
  {
    type = "recipe-category",
    name = "angels-bio-hatchery",
  },
  {
    type = "recipe-category",
    name = "angels-bio-butchery",
  },

  --NAUVIS
  {
    type = "item-group",
    name = "angels-bio-processing-nauvis",
    order = "la[angels]-d[bio-processing]-a[nauvis]",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/algae-farm-tech.png",
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
    name = "angels-bio-processing-green",
    group = "angels-bio-processing-nauvis",
    order = "a",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-brown",
    group = "angels-bio-processing-nauvis",
    order = "b",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-red",
    group = "angels-bio-processing-nauvis",
    order = "c",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-blue",
    group = "angels-bio-processing-nauvis",
    order = "d",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-wood",
    group = "angels-bio-processing-nauvis",
    order = "e",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-wood",
    group = "angels-bio-processing-nauvis",
    order = "f",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-arboretum",
    group = "angels-bio-processing-nauvis",
    order = "g",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-arboretum-temperate",
    group = "angels-bio-processing-nauvis",
    order = "ha",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-arboretum-swamp",
    group = "angels-bio-processing-nauvis",
    order = "hb",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-arboretum-desert",
    group = "angels-bio-processing-nauvis",
    order = "hc",
  },
  -- order i reserved for bob greenhouse
  {
    type = "item-subgroup",
    name = "angels-bio-liquor",
    group = "angels-bio-processing-nauvis",
    order = "j",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-paper",
    group = "angels-bio-processing-nauvis",
    order = "k",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-buildings-nauvis-a",
    group = "angels-bio-processing-nauvis",
    order = "z",
  },

  -- VEGETABILIS
  {
    type = "item-group",
    name = "angels-bio-processing-vegetables",
    order = "la[angels]-d[bio-processing]-b[farming]",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/seed-extractor-tech.png",
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
    name = "angels-farming-gardens",
    group = "angels-bio-processing-vegetables",
    order = "a[garden]",
  },
  {
    type = "item-subgroup",
    name = "angels-farming-temperate-seed",
    group = "angels-bio-processing-vegetables",
    order = "b[temperate]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-farming-temperate",
    group = "angels-bio-processing-vegetables",
    order = "b[temperate]-b",
  },
  {
    type = "item-subgroup",
    name = "angels-farming-swamp-seed",
    group = "angels-bio-processing-vegetables",
    order = "c[swamp]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-farming-swamp",
    group = "angels-bio-processing-vegetables",
    order = "c[swamp]-b",
  },
  {
    type = "item-subgroup",
    name = "angels-farming-desert-seed",
    group = "angels-bio-processing-vegetables",
    order = "d[desert]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-farming-desert",
    group = "angels-bio-processing-vegetables",
    order = "d[desert]-b",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processor-nutrient",
    group = "angels-bio-processing-vegetables",
    order = "e[processing]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processor-press-vegetables",
    group = "angels-bio-processing-vegetables",
    order = "e[processing]-c",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processor-fermentation",
    group = "angels-bio-processing-vegetables",
    order = "e[processing]-d",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-plastic",
    group = "angels-bio-processing-vegetables",
    order = "e[processing]-e",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-blocks",
    group = "angels-bio-processing-vegetables",
    order = "y[blocks]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-buildings-vegetabilis-a",
    group = "angels-bio-processing-vegetables",
    order = "z[buildings]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-buildings-vegetabilis-b",
    group = "angels-bio-processing-vegetables",
    order = "z[buildings]-b",
  },

  -- ANIMALIS
  {
    type = "item-group",
    name = "angels-bio-processing-alien",
    order = "la[angels]-d[bio-processing]-c[alien]",
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-puffer-breeding-tech.png",
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
    name = "angels-bio-fish",
    group = "angels-bio-processing-alien",
    order = "a[fish]-a[producing]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-fish-breeding",
    group = "angels-bio-processing-alien",
    order = "a[fish]-b[breeding]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-fish-butchery",
    group = "angels-bio-processing-alien",
    order = "a[fish]-c[processing]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-puffer-1",
    group = "angels-bio-processing-alien",
    order = "b[puffer]-a[producing]-a[dedicated]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-puffer-2",
    group = "angels-bio-processing-alien",
    order = "b[puffer]-a[producing]-b[mixed]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-puffer-breeding-1",
    group = "angels-bio-processing-alien",
    order = "b[puffer]-b[breeding]-a[dedicated]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-puffer-breeding-2",
    group = "angels-bio-processing-alien",
    order = "b[puffer]-b[breeding]-b[mixed]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-puffer-egg",
    group = "angels-bio-processing-alien",
    order = "b[puffer]-b[breeding]-c[hatching]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-puffer-butchery",
    group = "angels-bio-processing-alien",
    order = "b[puffer]-c[processing]-a[butchering]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-biter-egg",
    group = "angels-bio-processing-alien",
    order = "d[puffer]-a[breeding]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-biter",
    group = "angels-bio-processing-alien",
    order = "d[puffer]-b[producing]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-biter-butchery",
    group = "angels-bio-processing-alien",
    order = "d[puffer]-c[processing]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processor-press-fish",
    group = "angels-bio-processing-alien",
    order = "e[alien-products]-a[intermediates]-a[fish-oil]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-alien-intermediate",
    group = "angels-bio-processing-alien",
    order = "e[alien-products]-a[intermediates]-b[seeding]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-biter-processing-crystal-splinter",
    group = "angels-bio-processing-alien",
    order = "e[alien-products]-b[crystal]-a[splinter]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-biter-processing-crystal-shard",
    group = "angels-bio-processing-alien",
    order = "e[alien-products]-b[crystal]-b[shard]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-biter-processing-crystal-full",
    group = "angels-bio-processing-alien",
    order = "e[alien-products]-b[crystal]-c[full]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-paste",
    group = "angels-bio-processing-alien",
    order = "e[alien-products]-c[artifacts]-a[paste]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-alien-pre",
    group = "angels-bio-processing-alien",
    order = "e[alien-products]-c[artifacts]-b[pre]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-alien-small",
    group = "angels-bio-processing-alien",
    order = "e[alien-products]-c[artifacts]-c[small]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-alien-large",
    group = "angels-bio-processing-alien",
    order = "e[alien-products]-c[artifacts]-d[large]-a[create]",
  },
  {
    type = "item-subgroup",
    name = "angels-bio-processing-alien-large-convert",
    group = "angels-bio-processing-alien",
    order = "e[alien-products]-c[artifacts]-d[large]-b[convert]",
  },
  -- order e[alien-products]-d[resources] reserved for alien resource products (see override bob artifacts)
  {
    type = "item-subgroup",
    name = "angels-bio-processing-buildings-alien-a",
    group = "angels-bio-processing-alien",
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
