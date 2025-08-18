data:extend({
  --ALIEN ARTIFACTS
  --PRE
  {
    type = "recipe",
    name = "angels-alien-spores",
    category = "angels-water-treatment",
    subgroup = "angels-bio-processing-alien-intermediate",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "fluid", name = "angels-liquid-polluted-fish-atmosphere", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-alien-spores", amount_min = 70, amount_max = 80 },
      { type = "fluid", name = "angels-water-yellow-waste", amount_min = 30, amount_max = 40 },
    },
    main_product = "angels-alien-spores",
    order = "a[alien]-a[spores]",
  },
  {
    type = "recipe",
    name = "angels-alien-bacteria",
    category = "angels-bio-processing",
    subgroup = "angels-bio-processing-alien-intermediate",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "fluid", name = "angels-alien-spores", amount = 50 },
      { type = "item", name = "angels-solid-calcium-carbonate", amount = 1 },
      { type = "fluid", name = "angels-liquid-hydrochloric-acid", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-alien-bacteria", amount = 1 },
    },
    main_product = "angels-alien-bacteria",
    order = "a[alien]-b[bacteria]",
  },
  {
    type = "recipe",
    name = "angels-alien-goo",
    category = "angels-liquifying",
    subgroup = "angels-bio-processing-alien-intermediate",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "angels-alien-bacteria", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-alien-goo", amount_min = 5, amount_max = 10 },
    },
    main_product = "angels-alien-goo",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-alien-goo"),
    order = "a[alien]-c[goo]",
  },
  {
    type = "recipe",
    name = "angels-petri-dish",
    subgroup = "angels-bio-processing-alien-intermediate",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-petri-dish", amount = 2 },
    },
    main_product = "angels-petri-dish",
    order = "b[dish]-a[petri]",
  },
  {
    type = "recipe",
    name = "angels-substrate-dish",
    category = "crafting",
    subgroup = "angels-bio-processing-alien-intermediate",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-petri-dish", amount = 3 },
      { type = "item", name = "angels-paste-cellulose", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-substrate-dish", amount = 3 },
    },
    main_product = "angels-substrate-dish",
    order = "b[dish]-b[substrate]",
  },
  {
    type = "recipe",
    name = "angels-seeded-dish",
    category = "crafting",
    subgroup = "angels-bio-processing-alien-intermediate",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-substrate-dish", amount = 5 },
      { type = "item", name = "angels-alien-bacteria", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-seeded-dish", amount = 5 },
    },
    main_product = "angels-seeded-dish",
    order = "b[dish]-c[seeded]",
  },
  {
    type = "recipe",
    name = "angels-crystal-seed",
    category = "crafting",
    subgroup = "angels-bio-processing-alien-intermediate",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-seeded-dish", amount = 1 },
      { type = "item", name = "angels-crystal-dust", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-crystal-seed", amount = 1 },
    },
    main_product = "angels-crystal-seed",
    order = "b[dish]-d[seed]-a[crystal]",
  },
  {
    type = "recipe",
    name = "angels-egg-shell-seed",
    category = "crafting",
    subgroup = "angels-bio-processing-alien-intermediate",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-seeded-dish", amount = 1 },
      { type = "item", name = "angels-bio-puffer-egg-shell-powder", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-egg-shell-seed", amount = 1 },
    },
    main_product = "angels-egg-shell-seed",
    order = "b[dish]-d[seed]-a[crystal]",
  },
  {
    type = "recipe",
    name = "angels-crystal-enhancer",
    category = "crafting-with-fluid",
    subgroup = "angels-bio-processing-alien-intermediate",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-seeded-dish", amount = 1 },
      { type = "item", name = "angels-crystal-powder", amount = 1 },
      { type = "fluid", name = "angels-crystal-slurry", amount = 5 },
    },
    results = {
      { type = "item", name = "angels-crystal-enhancer", amount = 1 },
    },
    main_product = "angels-crystal-enhancer",
    order = "c[crystal]-a[enhancer]",
  },
  {
    type = "recipe",
    name = "angels-crystal-grindstone",
    category = "crafting",
    subgroup = "angels-bio-processing-alien-intermediate",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "item", name = "angels-crystal-powder", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-crystal-grindstone", amount = 1 },
    },
    main_product = "angels-crystal-grindstone",
    order = "c[crystal]-b[grindstone]",
  },
  {
    type = "recipe",
    name = "angels-crystal-powder-from-dust",
    category = "angels-ore-refining-t1-5",
    subgroup = "angels-bio-biter-processing-crystal-full",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-crystal-dust", amount = 10 },
      { type = "item", name = "angels-milling-drum-lubricated", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-crystal-powder", amount = 20 },
      { type = "item", name = "angels-milling-drum", amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1 },
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/crystal-powder.png",
        icon_size = 32,
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crystal-dust.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, -10 },
      },
    },
    order = "a[creation]-a[powder]",
  },
  {
    type = "recipe",
    name = "angels-crystal-powder-slurry",
    localised_name = { "fluid-name.angels-crystal-slurry" },
    category = "angels-liquifying",
    subgroup = "angels-bio-biter-processing-crystal-full",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-crystal-powder", amount = 1 },
      { type = "fluid", name = "angels-water-purified", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-crystal-slurry", amount = 1 },
    },
    main_product = "angels-crystal-slurry",
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      nil,
      { { 184, 231, 043 }, { 080, 172, 033 }, { 055, 126, 017 } },
      { "angels-crystal-powder" }
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-crystal-slurry"),
    order = "a[creation]-b[slurry]",
  },
})
