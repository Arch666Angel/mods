local AF = angelsmods.functions
data:extend({
  -- SOLID SODIUM
  {
    type = "recipe",
    name = "angels-solid-salt-separation",
    category = "angels-petrochem-electrolyser",
    subgroup = "angels-petrochem-sodium",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-solid-salt", amount = 10 },
      { type = "item", name = "angels-electrode", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "fluid", name = "angels-gas-chlorine", amount = 200 },
      { type = "item", name = "angels-solid-sodium", amount = 5 },
      { type = "item", name = "angels-electrode-used", amount = 1, ignored_by_productivity = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/chlorine.png", 72 },
      "angels-solid-sodium",
    }, "ClClCl"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-chlorine" }),
    order = "a[sodium]-a[generation]",
  },
  {
    -- from hydroxide
    type = "recipe",
    name = "angels-solid-sodium",
    localised_name = { "item-name.angels-solid-sodium" },
    category = "angels-petrochem-electrolyser",
    subgroup = "angels-petrochem-sodium",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-solid-sodium-hydroxide", amount = 5 },
      { type = "item", name = "angels-electrode", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium", amount = 5 },
      { type = "item", name = "angels-electrode-used", amount = 1, ignored_by_productivity = 1 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
      --{type = "fluid", name = "angels-gas-oxygen", amount = 50}
    },
    main_product = "angels-solid-sodium",
    icons = angelsmods.functions.create_solid_recipe_icon(
        { "angels-solid-sodium-hydroxide" },
        "angels-solid-sodium"
    ),
    crafting_machine_tint = AF.get_recipe_tints({ AF.fluid_color("Na"), AF.fluid_color("NaOH"), "angels-water-purified" }), --tempted to swap the NaOH with the "liquid" variant
    order = "a[sodium]-b[hydroxide]",
  },
  {
    -- from sulfate
    type = "recipe",
    name = "angels-solid-sodium-sulfate-separation",
    localised_name = { "item-name.angels-solid-sodium" },
    category = "angels-petrochem-electrolyser",
    subgroup = "angels-petrochem-sodium",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-solid-sodium-sulfate", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium", amount = 4 },
      { type = "item", name = "sulfur", amount = 2 },
    },
    main_product = "angels-solid-sodium",
    icons = angelsmods.functions.create_solid_recipe_icon(
        { "angels-solid-sodium-sulfate" },
        "angels-solid-sodium"
    ),
    order = "a[sodium]-c[sulfate]",
  },
  -- SODIUM SYNTHESIS
  {
    -- carbonate
    type = "recipe",
    name = "angels-solid-sodium-carbonate",
    localised_name = { "item-name.angels-solid-sodium-carbonate" },
    category = "angels-liquifying",
    subgroup = "angels-petrochem-sodium",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-solid-sodium", amount = 5 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium-carbonate", amount = 5 },
    },
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({ AF.fluid_color("NaCO3"), "angels-gas-carbon-dioxide", AF.fluid_color("Na") }),
    order = "b[sodium]-a[sodium-carbonate]",
  },
  {
    -- cyanide
    type = "recipe",
    name = "angels-solid-sodium-cyanide",
    localised_name = { "item-name.angels-solid-sodium-cyanide" },
    category = "chemistry",
    subgroup = "angels-petrochem-sodium",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-solid-sodium", amount = 5 },
      { type = "item", name = "angels-solid-carbon", amount = 1 },
      { type = "fluid", name = "angels-gas-ammonia", amount = 30 },
      { type = "item", name = "angels-catalyst-metal-green", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium-cyanide", amount = 5 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 30 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-solid-sodium-cyanide",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      AF.fluid_color("NaCN"),
      AF.fluid_color("Na"),
      "angels-gas-hydrogen",
      "angels-gas-ammonia",
      AF.fluid_color("Cb"),
    }),
    order = "b[sodium]-b[solid-sodium-cyanide]",
  },
  -- SODIUM HYDROXIDE
  {
    -- generation
    type = "recipe",
    name = "angels-solid-sodium-hydroxide",
    localised_name = { "item-name.angels-solid-sodium-hydroxide" },
    category = "angels-liquifying",
    subgroup = "angels-petrochem-sodium",
    energy_required = 2,
    enabled = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-solid-sodium", amount = 5 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium-hydroxide", amount = 5 },
    },
    main_product = "angels-solid-sodium-hydroxide",
    icons = angelsmods.functions.create_solid_recipe_icon(
        { "angels-solid-sodium" },
        "angels-solid-sodium-hydroxide"
    ),
    crafting_machine_tint = AF.get_recipe_tints({ AF.fluid_color("NaOH"), "angels-water-purified", AF.fluid_color("Na") }),
    order = "c[sodium-hydroxide]-a[generation]",
  },
  {
    -- from hydroxide
    type = "recipe",
    name = "angels-liquid-aqueous-sodium-hydroxide-reverse",
    localised_name = { "item-name.angels-solid-sodium-hydroxide" },
    category = "angels-liquifying",
    subgroup = "angels-petrochem-sodium",
    energy_required = 2,
    enabled = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "fluid", name = "angels-liquid-aqueous-sodium-hydroxide", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium-hydroxide", amount = 5 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    main_product = "angels-solid-sodium-hydroxide",
    icons = angelsmods.functions.create_solid_recipe_icon(
        { "angels-liquid-aqueous-sodium-hydroxide" },
        "angels-solid-sodium-hydroxide"
    ),
    crafting_machine_tint = AF.get_recipe_tints({ AF.fluid_color("NaOH"), "angels-liquid-aqueous-sodium-hydroxide" }),
    order = "c[sodium-hydroxide]-b[hydroxide]",
  },
  -- SODIUM HYDROXIDE SYNTHESIS
  {
    type = "recipe",
    name = "angels-solid-sodium-sulfate",
    category = "chemistry",
    subgroup = "angels-petrochem-sodium",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-solid-sodium-hydroxide", amount = 4 },
      { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 80 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium-sulfate", amount = 2 },
      { type = "fluid", name = "angels-water-purified", amount = 60 },
    },
    main_product = "angels-solid-sodium-sulfate",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      AF.fluid_color("Na2SO4"),
      "angels-liquid-sulfuric-acid",
      AF.fluid_color("NaOH"),
    }),
    order = "d[sodium-hydroxide]",
  },
  -- LIQUID HYDROXIDE
  {
    -- generation
    type = "recipe",
    name = "angels-solid-sodium-carbonate-electrolysis",
    localised_name = { "fluid-name.angels-liquid-aqueous-sodium-hydroxide" },
    category = "angels-petrochem-electrolyser",
    subgroup = "angels-petrochem-sodium",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-solid-sodium-carbonate", amount = 5 },
      { type = "item", name = "angels-electrode", amount = 1, ignored_by_stats = 1 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-aqueous-sodium-hydroxide", amount = 50 },
      { type = "item", name = "angels-electrode-used", amount = 1, ignored_by_productivity = 1 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 50 },
    },
    main_product = "angels-liquid-aqueous-sodium-hydroxide",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({ "angels-solid-sodium-carbonate" }, { { 151, 212, 255 }, { 255, 255, 255 }, { 255, 255, 255 } }),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-aqueous-sodium-hydroxide",
      "angels-water-purified",
      AF.fluid_color("Na2CO3"),
      "angels-gas-carbon-dioxide",
    }),
    order = "e[liquid-sodium-hydroxide]-b[generation]",
  },
  {
    -- from solid
    type = "recipe",
    name = "angels-liquid-aqueous-sodium-hydroxide",
    localised_name = { "fluid-name.angels-liquid-aqueous-sodium-hydroxide" },
    category = "angels-liquifying",
    subgroup = "angels-petrochem-sodium",
    energy_required = 2,
    enabled = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-solid-sodium-hydroxide", amount = 5 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-aqueous-sodium-hydroxide", amount = 50 },
    },
    main_product = "angels-liquid-aqueous-sodium-hydroxide",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({ "angels-solid-sodium-hydroxide" }, { { 151, 212, 255 }, { 255, 255, 255 }, { 255, 255, 255 } }),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-aqueous-sodium-hydroxide",
      "angels-water-purified",
      AF.fluid_color("NaOH"),
    }),
    order = "e[liquid-sodium-hydroxide]-a[hydroxide]",
  },
  -- LIQUID HYDROXIDE SYNTHESIS
  {
    type = "recipe",
    name = "angels-solid-sodium-hypochlorite",
    localised_name = { "item-name.angels-solid-sodium-hypochlorite" },
    category = "chemistry",
    subgroup = "angels-petrochem-sodium",
    energy_required = 4,
    enabled = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "fluid", name = "angels-liquid-aqueous-sodium-hydroxide", amount = 50 },
      { type = "fluid", name = "angels-gas-chlorine", amount = 200 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium-hypochlorite", amount = 5 },
    },
    main_product = "angels-solid-sodium-hypochlorite",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      AF.fluid_color("NaOCl"),
      "angels-liquid-aqueous-sodium-hydroxide",
      "angels-gas-chlorine",
    }),
    order = "f[liquid-sodium-hydroxide]-a[sodium-hypochlorite]",
  },
  {
    type = "recipe",
    name = "angels-solid-sodium-chlorate",
    localised_name = { "item-name.angels-solid-sodium-chlorate" },
    category = "chemistry",
    subgroup = "angels-petrochem-sodium",
    energy_required = 2,
    enabled = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "fluid", name = "angels-liquid-aqueous-sodium-hydroxide", amount = 50 },
      { type = "fluid", name = "angels-gas-hydrogen-chloride", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium-chlorate", amount = 5 },
    },
    main_product = "angels-solid-sodium-chlorate",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      AF.fluid_color("NaClO3"),
      "angels-liquid-aqueous-sodium-hydroxide",
      "angels-gas-hydrogen-chloride",
    }),
    order = "f[liquid-sodium-hydroxide]-b[solid-sodium-chlorate]",
  },
  {
    type = "recipe",
    name = "angels-solid-sodium-perchlorate",
    localised_name = { "item-name.angels-solid-sodium-perchlorate" },
    category = "chemistry",
    subgroup = "angels-petrochem-sodium",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-solid-sodium-chlorate", amount = 5 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
      { type = "item", name = "angels-catalyst-metal-blue", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium-perchlorate", amount = 5 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-solid-sodium-perchlorate",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      AF.fluid_color("Na2CO4"),
      AF.fluid_color("NaClO3"),
      "angels-water-purified",
    }),
    order = "f[liquid-sodium-hydroxide]-c[solid-sodium-perchlorate]",
  },
})
