local AF = angelsmods.functions
data:extend({
  -- SOLID SODIUM
  {
    type = "recipe",
    name = "solid-salt-separation",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-sodium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-salt", amount = 10 },
      { type = "item", name = "angels-electrode", amount = 1 },
    },
    results = {
      { type = "fluid", name = "gas-chlorine", amount = 200 },
      { type = "item", name = "solid-sodium", amount = 5 },
      { type = "item", name = "angels-electrode-used", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/chlorine.png", 72 },
      "solid-sodium",
    }, "ClClCl"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-chlorine" }),
    order = "a[sodium]-a[generation]",
  },
  {
    -- from hydroxide
    type = "recipe",
    name = "solid-sodium",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-sodium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium-hydroxide", amount = 5 },
      { type = "item", name = "angels-electrode", amount = 1 },
    },
    results = {
      { type = "item", name = "solid-sodium", amount = 5 },
      { type = "item", name = "angels-electrode-used", amount = 1, catalyst_amount = 1 },
      { type = "fluid", name = "water-purified", amount = 50 },
      --{type = "fluid", name = "gas-oxygen", amount = 50}
    },
    main_product = "solid-sodium",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({ AF.fluid_color("Na"), AF.fluid_color("NaOH"), "water-purified" }), --tempted to swap the NaOH with the "liquid" variant
    order = "a[sodium]-b[hydroxide]",
  },
  {
    -- from sulfate
    type = "recipe",
    name = "solid-sodium-sulfate-separation",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-sodium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium-sulfate", amount = 2 },
    },
    results = {
      { type = "item", name = "solid-sodium", amount = 4 },
      { type = "item", name = "sulfur", amount = 2 },
    },
    main_product = "solid-sodium",
    icon_size = 32,
    order = "a[sodium]-c[sulfate]",
  },
  -- SODIUM SYNTHESIS
  {
    -- carbonate
    type = "recipe",
    name = "solid-sodium-carbonate",
    category = "liquifying",
    subgroup = "petrochem-sodium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium", amount = 5 },
      { type = "fluid", name = "gas-carbon-dioxide", amount = 50 },
    },
    results = {
      { type = "item", name = "solid-sodium-carbonate", amount = 5 },
    },
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({ AF.fluid_color("NaCO3"), "gas-carbon-dioxide", AF.fluid_color("Na") }),
    order = "b[sodium]-a[sodium-carbonate]",
  },
  {
    -- cyanide
    type = "recipe",
    name = "solid-sodium-cyanide",
    category = "liquifying",
    subgroup = "petrochem-sodium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium", amount = 5 },
      { type = "item", name = "solid-carbon", amount = 1 },
      { type = "fluid", name = "gas-ammonia", amount = 30 },
      { type = "item", name = "catalyst-metal-green", amount = 1 },
    },
    results = {
      { type = "item", name = "solid-sodium-cyanide", amount = 5 },
      { type = "fluid", name = "gas-hydrogen", amount = 30 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    main_product = "solid-sodium-cyanide",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      AF.fluid_color("NaCN"),
      AF.fluid_color("Na"),
      "gas-hydrogen",
      "gas-ammonia",
      AF.fluid_color("Cb"),
    }),
    order = "b[sodium]-b[solid-sodium-cyanide]",
  },
  -- SODIUM HYDROXIDE
  {
    -- generation
    type = "recipe",
    name = "solid-sodium-hydroxide",
    category = "liquifying",
    subgroup = "petrochem-sodium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium", amount = 5 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "solid-sodium-hydroxide", amount = 5 },
    },
    main_product = "solid-sodium-hydroxide",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({ AF.fluid_color("NaOH"), "water-purified", AF.fluid_color("Na") }),
    order = "c[sodium-hydroxide]-a[generation]",
  },
  {
    -- from hydroxide
    type = "recipe",
    name = "liquid-aqueous-sodium-hydroxide-reverse",
    category = "liquifying",
    subgroup = "petrochem-sodium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-aqueous-sodium-hydroxide", amount = 50 },
    },
    results = {
      { type = "item", name = "solid-sodium-hydroxide", amount = 5 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    main_product = "solid-sodium-hydroxide",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({ AF.fluid_color("NaOH"), "liquid-aqueous-sodium-hydroxide" }),
    order = "c[sodium-hydroxide]-b[hydroxide]",
  },
  -- SODIUM HYDROXIDE SYNTHESIS
  {
    type = "recipe",
    name = "solid-sodium-hydroxide-solid-sodium-sulfate",
    category = "chemistry",
    subgroup = "petrochem-sodium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium-hydroxide", amount = 4 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 80 },
    },
    results = {
      { type = "item", name = "solid-sodium-sulfate", amount = 2 },
      { type = "fluid", name = "water-purified", amount = 60 },
    },
    main_product = "solid-sodium-sulfate",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      AF.fluid_color("Na2SO4"),
      "liquid-sulfuric-acid",
      AF.fluid_color("NaOH"),
    }),
    order = "d[sodium-hydroxide]",
  },
  -- LIQUID HYDROXIDE
  {
    -- generation
    type = "recipe",
    name = "solid-sodium-carbonate-electrolysis",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-sodium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium-carbonate", amount = 5 },
      { type = "item", name = "angels-electrode", amount = 1 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-aqueous-sodium-hydroxide", amount = 50 },
      { type = "item", name = "angels-electrode-used", amount = 1, catalyst_amount = 1 },
      { type = "fluid", name = "gas-carbon-dioxide", amount = 50 },
    },
    main_product = "liquid-aqueous-sodium-hydroxide",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon(nil, { { 151, 212, 255 }, { 255, 255, 255 }, { 255, 255, 255 } }),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-aqueous-sodium-hydroxide",
      "water-purified",
      AF.fluid_color("Na2CO3"),
      "gas-carbon-dioxide",
    }),
    order = "e[liquid-sodium-hydroxide]-a[generation]",
  },
  {
    -- from solid
    type = "recipe",
    name = "liquid-aqueous-sodium-hydroxide",
    category = "liquifying",
    subgroup = "petrochem-sodium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium-hydroxide", amount = 5 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-aqueous-sodium-hydroxide", amount = 50 },
    },
    main_product = "liquid-aqueous-sodium-hydroxide",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon(nil, { { 151, 212, 255 }, { 255, 255, 255 }, { 255, 255, 255 } }),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-aqueous-sodium-hydroxide",
      "water-purified",
      AF.fluid_color("NaOH"),
    }),
    order = "e[liquid-sodium-hydroxide]-b[hydroxide]",
  },
  -- LIQUID HYDROXIDE SYNTHESIS
  {
    type = "recipe",
    name = "solid-sodium-hypochlorite",
    category = "chemistry",
    subgroup = "petrochem-sodium",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-aqueous-sodium-hydroxide", amount = 50 },
      { type = "fluid", name = "gas-chlorine", amount = 200 },
    },
    results = {
      { type = "item", name = "solid-sodium-hypochlorite", amount = 5 },
    },
    main_product = "solid-sodium-hypochlorite",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      AF.fluid_color("NaOCl"),
      "liquid-aqueous-sodium-hydroxide",
      "gas-chlorine",
    }),
    order = "f[liquid-sodium-hydroxide]-a[sodium-hypochlorite]",
  },
  {
    type = "recipe",
    name = "solid-sodium-chlorate",
    category = "chemistry",
    subgroup = "petrochem-sodium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-aqueous-sodium-hydroxide", amount = 50 },
      { type = "fluid", name = "gas-hydrogen-chloride", amount = 50 },
    },
    results = {
      { type = "item", name = "solid-sodium-chlorate", amount = 5 },
    },
    main_product = "solid-sodium-chlorate",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      AF.fluid_color("NaClO3"),
      "liquid-aqueous-sodium-hydroxide",
      "gas-hydrogen-chloride",
    }),
    order = "f[liquid-sodium-hydroxide]-b[solid-sodium-chlorate]",
  },
  {
    type = "recipe",
    name = "solid-sodium-perchlorate",
    category = "liquifying",
    subgroup = "petrochem-sodium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium-chlorate", amount = 5 },
      { type = "fluid", name = "water-purified", amount = 50 },
      { type = "item", name = "catalyst-metal-blue", amount = 1 },
    },
    results = {
      { type = "item", name = "solid-sodium-perchlorate", amount = 5 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    main_product = "solid-sodium-perchlorate",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      AF.fluid_color("Na2CO4"),
      AF.fluid_color("NaClO3"),
      "water-purified",
    }),
    order = "f[liquid-sodium-hydroxide]-c[solid-sodium-perchlorate]",
  },
})
