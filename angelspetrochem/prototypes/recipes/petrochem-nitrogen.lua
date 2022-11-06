local AF = angelsmods.functions
data:extend({
  --NITROGEN
  {
    type = "recipe",
    name = "angels-air-filtering",
    category = "petrochem-air-filtering",
    subgroup = "petrochem-nitrogen",
    energy_required = 6,
    enabled = false,
    ingredients = {},
    results = {
      { type = "fluid", name = "gas-compressed-air", amount = 200 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      { "gas-compressed-air" },
      { { 180, 180, 225 }, { 150, 150, 187 }, { 120, 120, 150 } }
    ),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-compressed-air" }),
    order = "a",
  },
  {
    type = "recipe",
    name = "air-separation",
    category = "chemistry",
    subgroup = "petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-compressed-air", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-nitrogen", amount = 50 },
      { type = "fluid", name = "gas-oxygen", amount = 50 },
      --{type="fluid", name="gas-inert", amount=1},
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/nitrogen.png", 64 },
      { "__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72 },
    }, "NNO"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-nitrogen", "gas-compressed-air", "gas-oxygen" }),
    order = "b[air]-a[separation]",
  },
  {
    type = "recipe",
    name = "solid-sodium-nitrate-processing",
    category = "chemistry",
    subgroup = "petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium-nitrate", amount = 5 },
      { type = "fluid", name = "gas-compressed-air", amount = 60 },
    },
    results = {
      { type = "fluid", name = "gas-nitrogen-monoxide", amount = 40 },
      { type = "fluid", name = "gas-nitrogen-dioxide", amount = 20 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/nitric-oxide.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/nitrogen-dioxide.png", 72 },
    }, "NNO"),
    crafting_machine_tint = AF.get_recipe_tints({
      "gas-nitrogen-monoxide",
      "gas-compressed-air",
      "gas-nitrogen-dioxide",
      AF.fluid_color("NaNO3"),
    }),
    order = "b[air]-b[nitrate-processing]",
  },
  {
    type = "recipe",
    name = "gas-nitrogen-monoxide",
    category = "chemistry",
    subgroup = "petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-ammonia", amount = 60 },
      { type = "fluid", name = "gas-oxygen", amount = 40 },
      { type = "item", name = "catalyst-metal-green", amount = 1 },
    },
    results = {
      { type = "fluid", name = "gas-nitrogen-monoxide", amount = 100 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/nitric-oxide.png", 72 },
    }, "NOO"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-nitrogen-monoxide", "gas-ammonia", "gas-oxygen" }),
    order = "c[gas-nitrogen-dioxide]",
  },
  {
    type = "recipe",
    name = "gas-nitrogen-dioxide",
    category = "chemistry",
    subgroup = "petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-oxygen", amount = 60 },
      { type = "fluid", name = "gas-nitrogen-monoxide", amount = 40 },
    },
    results = {
      { type = "fluid", name = "gas-nitrogen-dioxide", amount = 100 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/nitrogen-dioxide.png", 72 },
    }, "NOO"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-nitrogen-dioxide", "gas-oxygen", "gas-nitrogen-monoxide" }),
    order = "d",
  },
  {
    type = "recipe",
    name = "gas-ammonia",
    category = "chemistry",
    subgroup = "petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-hydrogen", amount = 50 },
      { type = "fluid", name = "gas-nitrogen", amount = 50 },
      { type = "item", name = "catalyst-metal-red", amount = 1 }, --Fe
    },
    results = {
      { type = "fluid", name = "gas-ammonia", amount = 100 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/ammonia.png", 72 },
    }, "NHH"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-ammonia", "gas-nitrogen", "gas-hydrogen" }),
    order = "e",
  },
  {
    type = "recipe",
    name = "gas-ammonium-chloride",
    category = "chemistry",
    subgroup = "petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-ammonia", amount = 50 },
      { type = "fluid", name = "gas-hydrogen-chloride", amount = 50 },
    },
    results = {
      { type = "fluid", name = "gas-ammonium-chloride", amount = 100 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/ammonium-chloride.png", 72 },
    }, "NHCl"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-ammonium-chloride", "gas-ammonia", "gas-hydrogen-chloride" }),
    order = "f",
  },
  {
    type = "recipe",
    name = "gas-urea",
    category = "chemistry",
    subgroup = "petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-ammonia", amount = 60 },
      { type = "fluid", name = "gas-carbon-dioxide", amount = 40 },
    },
    results = {
      { type = "fluid", name = "gas-urea", amount = 80 },
      { type = "fluid", name = "water-purified", amount = 20 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/urea.png", 72 },
      "water-purified",
    }, "CNO"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-urea", "gas-ammonia", "water-purified", "gas-carbon-dioxide" }),
    order = "g",
  },
  {
    type = "recipe",
    name = "liquid-nitric-acid",
    category = "chemistry",
    subgroup = "petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-nitrogen-dioxide", amount = 100 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-nitric-acid", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/nitric-acid.png", 72 },
      },
      "NOH",
      {
        { "__angelspetrochem__/graphics/icons/molecules/nitrogen-dioxide.png", 72 },
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-nitric-acid", "gas-nitrogen-dioxide", "water-purified" }),
    order = "h[nitric-acid]-a[water-purified]",
  },
  {
    type = "recipe",
    name = "sodium-nitrate-acid-processing",
    category = "chemistry",
    subgroup = "petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium-nitrate", amount = 5 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 40 },
    },
    results = {
      { type = "fluid", name = "liquid-nitric-acid", amount = 40 },
    },
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/nitric-acid.png", 72 },
      },
      "NOH",
      {
        "solid-sodium-nitrate",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-nitric-acid",
      "liquid-sulfuric-acid",
      AF.fluid_color("NaNO3"),
    }),
    order = "h[nitric-acid]-b[sulfuric-acid]",
  },
  {
    type = "recipe",
    name = "gas-melamine",
    category = "chemistry",
    subgroup = "petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-urea", amount = 100 },
      { type = "item", name = "catalyst-metal-blue", amount = 1 }, --Pl
    },
    results = {
      { type = "fluid", name = "gas-melamine", amount = 100 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/melamine.png", 72 },
    }, "CHN"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-melamine", "gas-urea" }),
    order = "i",
  },
  --ROCKET FUEL
  {
    type = "recipe",
    name = "gas-monochloramine",
    category = "chemistry",
    subgroup = "petrochem-rocket",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium-hypochlorite", amount = 5 },
      { type = "fluid", name = "gas-ammonia", amount = 250 },
    },
    results = {
      { type = "fluid", name = "gas-monochloramine", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/chloramine.png", 72 },
    }, "NHCl"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-monochloramine", "gas-ammonia", AF.fluid_color("NaOCl") }),
    order = "a",
  },
  {
    type = "recipe",
    name = "gas-hydrazine",
    category = "chemistry",
    subgroup = "petrochem-rocket",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-monochloramine", amount = 50 },
      { type = "fluid", name = "gas-ammonia", amount = 200 },
      { type = "item", name = "catalyst-metal-blue", amount = 1 },
    },
    results = {
      { type = "fluid", name = "gas-hydrazine", amount = 100 },
      { type = "fluid", name = "gas-hydrogen-chloride", amount = 100 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/hydrazine.png", 72 },
    }, "NHH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "gas-hydrazine",
      "gas-monochloramine",
      "gas-hydrogen-chloride",
      "gas-ammonia",
    }),
    order = "b",
  },
  {
    type = "recipe",
    name = "gas-methylamine",
    category = "chemistry",
    subgroup = "petrochem-rocket",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-methanol", amount = 50 },
      { type = "fluid", name = "gas-ammonia", amount = 250 },
    },
    results = {
      { type = "fluid", name = "gas-methylamine", amount = 200 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/methylamine.png", 72 },
      "water-purified",
    }, "CHN"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-methylamine", "gas-methanol", "water-purified", "gas-ammonia" }),
    order = "c",
  },
  {
    type = "recipe",
    name = "gas-dimethylamine",
    category = "chemistry",
    subgroup = "petrochem-rocket",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-methylamine", amount = 200 },
      { type = "fluid", name = "gas-methanol", amount = 50 },
    },
    results = {
      { type = "fluid", name = "gas-dimethylamine", amount = 200 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/dimethylamine.png", 72 },
      "water-purified",
    }, "CHN"),
    crafting_machine_tint = AF.get_recipe_tints({
      "gas-dimethylamine",
      "gas-methylamine",
      "water-purified",
      "gas-methanol",
    }),
    order = "d",
  },
  {
    type = "recipe",
    name = "gas-dimethylhydrazine",
    category = "chemistry",
    subgroup = "petrochem-rocket",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-dimethylamine", amount = 200 },
      { type = "fluid", name = "gas-monochloramine", amount = 50 },
    },
    results = {
      { type = "fluid", name = "gas-dimethylhydrazine", amount = 200 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/dimethylhydrazine.png", 72 },
      "water-purified",
    }, "CHN"),
    crafting_machine_tint = AF.get_recipe_tints({
      "gas-dimethylhydrazine",
      "gas-dimethylamine",
      "water-purified",
      "gas-monochloramine",
    }),
    order = "e",
  },
  {
    type = "recipe",
    name = "gas-dinitrogen-tetroxide",
    category = "chemistry",
    subgroup = "petrochem-rocket",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-nitrogen-dioxide", amount = 100 },
      { type = "item", name = "catalyst-metal-yellow", amount = 1 },
    },
    results = {
      { type = "fluid", name = "gas-dinitrogen-tetroxide", amount = 50 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    main_product = "gas-dinitrogen-tetroxide",
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/dinitrogen-tetroxide.png", 72 },
    }, "NOO"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-dinitrogen-tetroxide", "gas-nitrogen-dioxide" }),
    order = "f",
  },
  --SOLID ROCKET FUEL
  {
    type = "recipe",
    name = "solid-ammonium-nitrate",
    category = "chemistry",
    subgroup = "petrochem-rocket",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-ammonia", amount = 100 },
      { type = "fluid", name = "liquid-nitric-acid", amount = 100 },
    },
    results = {
      { type = "item", name = "solid-ammonium-nitrate", amount = 3 },
    },
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({ AF.fluid_color("NH4NO3"), "gas-ammonia", "liquid-nitric-acid" }),
    order = "g",
  },
  {
    type = "recipe",
    name = "solid-ammonium-perchlorate",
    category = "chemistry",
    subgroup = "petrochem-rocket",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-ammonia", amount = 100 },
      { type = "fluid", name = "liquid-perchloric-acid", amount = 100 },
    },
    results = {
      { type = "item", name = "solid-ammonium-perchlorate", amount = 3 },
      { type = "item", name = "solid-salt", amount = 1 },
    },
    icon_size = 32,
    main_product = "solid-ammonium-perchlorate",
    crafting_machine_tint = AF.get_recipe_tints({
      AF.fluid_color("NH4O4Cl"),
      "gas-ammonia",
      AF.fluid_color("NaCl"),
      "liquid-perchloric-acid",
    }),
    order = "h",
  },
  --FUEL CAPSULES
  {
    type = "recipe",
    name = "rocket-oxidizer-capsule",
    category = "chemistry",
    subgroup = "petrochem-fuel",
    energy_required = 4.5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-nitric-acid", amount = 10 },
      { type = "fluid", name = "gas-dinitrogen-tetroxide", amount = 10 },
    },
    results = {
      { type = "item", name = "rocket-oxidizer-capsule", amount = 2 },
    },
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-nitric-acid", "gas-dinitrogen-tetroxide" }),
    order = "ha",
  },
  {
    type = "recipe",
    name = "rocket-fuel-capsule",
    category = "chemistry",
    subgroup = "petrochem-fuel",
    energy_required = 4.5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-dimethylhydrazine", amount = 30 },
      { type = "fluid", name = "gas-hydrazine", amount = 30 },
    },
    results = {
      { type = "item", name = "rocket-fuel-capsule", amount = 2 },
    },
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({ "gas-dimethylhydrazine", "gas-hydrazine" }),
    order = "hb",
  },
  --ROCKET BOOSTER
  {
    type = "recipe",
    name = "rocket-booster-1",
    category = "advanced-crafting",
    subgroup = "petrochem-fuel",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-ammonium-nitrate", amount = 3 },
      { type = "item", name = "pipe", amount = 1 },
    },
    results = {
      { type = "item", name = "rocket-booster", amount = 2 },
    },
    icon_size = 32,
    order = "ia",
  },
  {
    type = "recipe",
    name = "rocket-booster-2",
    category = "advanced-crafting",
    subgroup = "petrochem-fuel",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-ammonium-perchlorate", amount = 3 },
      { type = "item", name = "pipe", amount = 1 },
    },
    results = {
      { type = "item", name = "rocket-booster", amount = 3 },
    },
    icon_size = 32,
    order = "ib",
  },
})
