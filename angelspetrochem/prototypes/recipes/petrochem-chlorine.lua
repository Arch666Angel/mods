local AF = angelsmods.functions

data:extend({
  --CHLORINE
  {
    type = "recipe",
    name = "water-saline-separation",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-chlorine",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water-saline", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-chlorine", amount = 40 },
      { type = "fluid", name = "gas-hydrogen", amount = 60 },
      { type = "item", name = "solid-sodium-hydroxide", amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/chlorine.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 },
    }, "ClHH"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-hydrogen", "water-saline", "gas-chlorine" }),
    order = "a[water-saline-separation]",
  },
  {
    type = "recipe",
    name = "gas-hydrogen-chloride",
    category = "chemistry",
    subgroup = "petrochem-chlorine",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-chlorine", amount = 50 },
      { type = "fluid", name = "gas-hydrogen", amount = 50 },
    },
    results = {
      { type = "fluid", name = "gas-hydrogen-chloride", amount = 100 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen-chloride.png", 72 },
    }, "ClClH"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-hydrogen-chloride", "gas-hydrogen", "gas-chlorine" }),
    order = "c[gas-hydrogen-chloride]",
  },
  {
    type = "recipe",
    name = "gas-hydrogen-chloride-separation",
    category = "chemistry",
    subgroup = "petrochem-chlorine",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-hydrogen-chloride", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-chlorine", amount = 50 },
      { type = "fluid", name = "gas-hydrogen", amount = 50 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/chlorine.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 },
    }, "ClClH"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-hydrogen-chloride", "gas-chlorine", "gas-hydrogen" }),
    order = "d[gas-hydrogen-chloride]",
  },
  {
    type = "recipe",
    name = "gas-chlor-methane",
    category = "chemistry",
    subgroup = "petrochem-chlorine",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-chlorine", amount = 60 },
      { type = "fluid", name = "gas-methane", amount = 40 },
    },
    results = {
      { type = "fluid", name = "gas-chlor-methane", amount = 100 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/chloromethane.png", 72 },
    }, "CClH"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-chlor-methane", "gas-methane", "gas-chlorine" }),
    order = "e[gas-chlor-methane]",
  },
  {
    type = "recipe",
    name = "liquid-hydrochloric-acid",
    category = "chemistry",
    subgroup = "petrochem-chlorine",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-hydrogen-chloride", amount = 100 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-hydrochloric-acid", amount = 50 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/hydrochloric-acid.png", 72 },
    }, "ClHO"),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-hydrochloric-acid", "gas-hydrogen-chloride", "water-purified" }),
    order = "f[liquid-hydrochloric-acid]",
  },
  {
    type = "recipe",
    name = "liquid-hydrochloric-acid-solid-sodium-sulfate",
    category = "chemistry",
    subgroup = "petrochem-chlorine",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-salt", amount = 6 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 120 },
    },
    results = {
      { type = "fluid", name = "liquid-hydrochloric-acid", amount = 70 },
      { type = "item", name = "solid-sodium-sulfate", amount = 3 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/hydrochloric-acid.png", 72 },
    }, "ClHO"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-hydrchloric-acid",
      "liquid-sulfuric-acid",
      AF.fluid_color("NaCl"),
      AF.fluid_color("Na2SO4"),
    }),
    order = "g",
  },
  {
    type = "recipe",
    name = "liquid-ferric-chloride-solution",
    category = "chemistry",
    subgroup = "petrochem-chlorine",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-ore", amount = 2 },
      { type = "fluid", name = "gas-hydrogen-chloride", amount = 40 },
    },
    results = {
      { type = "fluid", name = "liquid-ferric-chloride-solution", amount = 40 },
    },
    main_product = "liquid-ferric-chloride-solution",
    always_show_products = true,
    --icon = "__angelspetrochem__/graphics/icons/inter-chemistry-21.png",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-ferric-chloride-solution",
      "gas-hydrogen-chloride",
      AF.fluid_color("Fe"),
    }),
    order = "h",
  },
  {
    type = "recipe",
    name = "liquid-cupric-chloride-solution",
    category = "chemistry",
    subgroup = "petrochem-chlorine",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-ore", amount = 2 },
      { type = "fluid", name = "gas-hydrogen-chloride", amount = 40 },
    },
    results = {
      { type = "fluid", name = "liquid-cupric-chloride-solution", amount = 40 },
    },
    main_product = "liquid-cupric-chloride-solution",
    always_show_products = true,
    --icon = "__angelspetrochem__/graphics/icons/inter-chemistry-21.png",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-cupric-chloride-solution",
      "gas-hydrogen-chloride",
      AF.fluid_color("Cu"),
    }),
    order = "i",
  },
  {
    type = "recipe",
    name = "gas-allylchlorid",
    category = "chemistry",
    subgroup = "petrochem-chlorine-2",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-propene", amount = 50 },
      { type = "fluid", name = "gas-chlorine", amount = 50 },
    },
    results = {
      { type = "fluid", name = "gas-allylchlorid", amount = 50 },
      { type = "fluid", name = "gas-hydrogen-chloride", amount = 50 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/allyl-chloride.png", 72 },
    }, "CClH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "lgas-allylchlorid",
      "gas-propene",
      "gas-hydrogen-chloride",
      "gas-chlorine",
    }),
    order = "h[gas-allylchlorid]",
  },
  {
    type = "recipe",
    name = "gas-epichlorhydrin",
    category = "chemistry",
    subgroup = "petrochem-chlorine-2",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-allylchlorid", amount = 100 },
      { type = "fluid", name = "liquid-hydrochloric-acid", amount = 50 },
      { type = "item", name = "solid-sodium-hydroxide", amount = 5 },
    },
    results = {
      { type = "fluid", name = "gas-epichlorhydrin", amount = 90 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/epichlorohydrin.png", 72 },
    }, "CClC"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-epichlorhydrin", "gas-allylchlorid", "liquid-hydrochloric-acid" }),
    order = "i[gas-epichlorhydrin]",
  },
  {
    type = "recipe",
    name = "liquid-glycerol",
    category = "chemistry",
    subgroup = "petrochem-chlorine-2",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-epichlorhydrin", amount = 100 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-glycerol", amount = 50 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/glycerol.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-glycerol", "gas-epichlorhydrin", "water-purified" }),
    order = "j[liquid-glycerol]",
  },
  {
    type = "recipe",
    name = "liquid-perchloric-acid",
    category = "liquifying",
    subgroup = "petrochem-chlorine-2",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sodium-perchlorate", amount = 2 },
      { type = "fluid", name = "liquid-hydrochloric-acid", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-perchloric-acid", amount = 50 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/perchloric-acid.png", 72 },
    }, "ClHO"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-perchloric-acid",
      "liquid-hydrochloric-acid",
      AF.fluid_color("NaClO4"),
    }),
    order = "k[liquid-perchloric-acid]",
  },
  {
    type = "recipe",
    name = "gas-phosgene",
    category = "chemistry",
    subgroup = "petrochem-chlorine-2",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-carbon", amount = 1 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 60 },
      { type = "fluid", name = "gas-chlorine", amount = 40 },
    },
    results = {
      { type = "fluid", name = "gas-phosgene", amount = 100 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/phosgene.png", 72 },
    }, "CClC"),
    crafting_machine_tint = AF.get_recipe_tints({
      "gas-phosgene",
      "gas-carbon-monoxide",
      "gas-chlorine",
      AF.fluid_color("Cb"),--[[C]]
    }),
    order = "l",
  },
})
