data:extend({
  --ALGAE FARM
  {
    type = "recipe",
    name = "algae-farm",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "algae-farm",
  },
  {
    type = "recipe",
    name = "algae-farm-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "algae-farm", amount = 1 },
    },
    result = "algae-farm-2",
  },
  {
    type = "recipe",
    name = "algae-farm-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "algae-farm-2", amount = 1 },
    },
    result = "algae-farm-3",
  },
  {
    type = "recipe",
    name = "algae-farm-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "algae-farm-3", amount = 1 },
    },
    result = "algae-farm-4",
  },
  --CROP FARM
  {
    type = "recipe",
    name = "crop-farm",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "crop-farm",
  },
  {
    type = "recipe",
    name = "temperate-farm",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "temperate-farm",
  },
  {
    type = "recipe",
    name = "desert-farm",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "desert-farm",
  },
  {
    type = "recipe",
    name = "swamp-farm",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "swamp-farm",
  },
  --COMPOSTER
  {
    type = "recipe",
    name = "composter",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "composter",
  },
  --SEED EXTRACTOR
  {
    type = "recipe",
    name = "seed-extractor",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "seed-extractor",
  },
  --PRESS
  {
    type = "recipe",
    name = "bio-press",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "bio-press",
  },
  --PROCESSOR
  {
    type = "recipe",
    name = "bio-processor",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "bio-processor",
  },
  --NUTRIENT EXTRACTOR
  {
    type = "recipe",
    name = "nutrient-extractor",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "nutrient-extractor",
  },
  --TREE GENERATOR
  {
    type = "recipe",
    name = "bio-generator-temperate-1",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "temperate-tree", amount = 1 },
    },
    result = "bio-generator-temperate-1",
  },
  {
    type = "recipe",
    name = "bio-generator-swamp-1",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "swamp-tree", amount = 1 },
    },
    result = "bio-generator-swamp-1",
  },
  {
    type = "recipe",
    name = "bio-generator-desert-1",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "desert-tree", amount = 1 },
    },
    result = "bio-generator-desert-1",
  },
  --ARBORETUM
  {
    type = "recipe",
    name = "bio-arboretum-1",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "bio-arboretum-1",
  },
  --REFUGIUM
  {
    type = "recipe",
    name = "bio-refugium-puffer",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "bio-refugium-puffer",
  },
  {
    type = "recipe",
    name = "bio-refugium-hogger",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "bio-refugium-hogger",
  },
  {
    type = "recipe",
    name = "bio-refugium-fish",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "bio-refugium-fish",
  },
  {
    type = "recipe",
    name = "bio-refugium-biter",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "bio-refugium-biter",
  },
  --PROCESSING
  {
    type = "recipe",
    name = "bio-hatchery",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "bio-hatchery",
  },
  {
    type = "recipe",
    name = "bio-butchery",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "bio-butchery",
  },
  {
    type = "recipe",
    name = "bio-tile",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "concrete-brick", amount = 2 },
      { type = "item", name = "token-bio", amount = 1 },
      { type = "item", name = "solid-soil", amount = 2 },
      --{type = "item", name = "steel-plate", amount = 1}
    },
    results = {
      { type = "item", name = "bio-tile", amount_min = 5, amount_max = 10 },
    },
    main_product = "bio-tile",
  },
})
