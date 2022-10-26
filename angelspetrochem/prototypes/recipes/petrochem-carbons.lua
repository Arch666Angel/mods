local rawmulti = angelsmods.marathon.rawmulti
local AF = angelsmods.functions

data:extend({
  --CARBON
  --GAS FEED
  {
    type = "recipe",
    name = "gas-separation",
    category = "petrochem-separation",
    subgroup = "petrochem-carbon-gas-feed",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "gas-natural-1", amount = 100 },
      },
      results = {
        { type = "fluid", name = "gas-raw-1", amount = 60 },
        { type = "fluid", name = "liquid-condensates", amount = 30 },
        { type = "fluid", name = "water-yellow-waste", amount = 10 },
      },
      always_show_products = true,
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "gas-natural-1", amount = 120 * rawmulti },
      },
      results = {
        { type = "fluid", name = "gas-raw-1", amount = 60 },
        { type = "fluid", name = "liquid-condensates", amount = 30 },
        { type = "fluid", name = "water-yellow-waste", amount = 10 },
      },
      always_show_products = true,
    },
    icons = angelsmods.functions.create_gas_recipe_icon({
      "liquid-condensates",
      "gas-raw-1",
    }, "NgNgNg"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-raw-1", "gas-natural-1", "water-yellow-waste" }),
    order = "a[gas-separation]",
  },
  {
    type = "recipe",
    name = "gas-refining",
    category = "gas-refining",
    subgroup = "petrochem-carbon-gas-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-raw-1", amount = 100 },
      --{type = "item", name = "membrane", amount = 1}
    },
    results = {
      { type = "fluid", name = "gas-acid", amount = 20 },
      { type = "fluid", name = "liquid-ngl", amount = 80 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      "liquid-ngl",
      "gas-acid",
    }, "NgNgS"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-acid", "gas-raw-1", "liquid-ngl" }),
    order = "b[gas-refining]",
  },
  {
    type = "recipe",
    name = "gas-fractioning",
    category = "gas-refining",
    subgroup = "petrochem-carbon-gas-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-ngl", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-methane", amount = 50 },
      { type = "fluid", name = "gas-ethane", amount = 30 },
      { type = "fluid", name = "gas-butane", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/methane.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/butane.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/ethane.png", 72 },
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-methane", "liquid-ngl", "gas-butane" }),
    order = "c[gas-fractioning]",
  },
  {
    type = "recipe",
    name = "gas-fractioning-synthesis",
    category = "gas-refining",
    subgroup = "petrochem-carbon-gas-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-ngl", amount = 100 },
      { type = "fluid", name = "gas-synthesis", amount = 50 },
    },
    results = {
      { type = "fluid", name = "gas-methane", amount = 90 },
      { type = "fluid", name = "gas-ethane", amount = 30 },
      { type = "fluid", name = "gas-butane", amount = 20 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 10 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/methane.png", 72 },
        { "__angelspetrochem__/graphics/icons/molecules/butane.png", 72 },
        { "__angelspetrochem__/graphics/icons/molecules/ethane.png", 72 },
      },
      "CHH",
      {
        "gas-synthesis",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-methane", "liquid-ngl", "gas-carbon-monoxide", "gas-synthesis" }),
    order = "d",
  },
  {
    type = "recipe",
    name = "gas-fractioning-condensates",
    category = "gas-refining",
    subgroup = "petrochem-carbon-gas-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-ngl", amount = 100 },
      { type = "fluid", name = "liquid-condensates", amount = 50 },
    },
    results = {
      { type = "fluid", name = "gas-methane", amount = 30 },
      { type = "fluid", name = "gas-ethane", amount = 30 },
      { type = "fluid", name = "gas-butane", amount = 70 },
      { type = "fluid", name = "liquid-naphtha", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/methane.png", 72 },
        { "__angelspetrochem__/graphics/icons/molecules/butane.png", 72 },
        { "__angelspetrochem__/graphics/icons/molecules/ethane.png", 72 },
      },
      "CHH",
      {
        "liquid-condensates",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-ethane", "liquid-ngl", "liquid-naphtha", "liquid-condensates" }),
    order = "e",
  },
  {
    type = "recipe",
    name = "gas-fractioning-residual",
    category = "gas-refining",
    subgroup = "petrochem-carbon-gas-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-ngl", amount = 100 },
      { type = "fluid", name = "gas-residual", amount = 50 },
    },
    results = {
      { type = "fluid", name = "gas-methane", amount = 40 },
      { type = "fluid", name = "gas-ethane", amount = 40 },
      { type = "fluid", name = "gas-butane", amount = 50 },
      { type = "fluid", name = "liquid-toluene", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon(
      {
        { "__angelspetrochem__/graphics/icons/molecules/methane.png", 72 },
        { "__angelspetrochem__/graphics/icons/molecules/butane.png", 72 },
        { "__angelspetrochem__/graphics/icons/molecules/ethane.png", 72 },
      },
      "CHH",
      {
        "gas-residual",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-residual", "gas-ethane", "gas-residual", "liquid-toluene" }),
    order = "f",
  },
  {
    type = "recipe",
    name = "condensates-refining",
    category = "advanced-chemistry",
    subgroup = "petrochem-carbon-gas-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-condensates", amount = 60 },
      { type = "fluid", name = "thermal-water", amount = 20 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 20 },
    },
    results = {
      { type = "item", name = "solid-coke", amount = 2 },
      { type = "fluid", name = "liquid-naphtha", amount = 50 },
      { type = "fluid", name = "gas-methane", amount = 30 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/methane.png", 72 },
      "liquid-naphtha",
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-naphtha",
      "thermal-water",
      "gas-methane",
      AF.fluid_color("Cb"--[[coke]]),
    }),
    order = "g",
  },
  --OIL FEED
  {
    type = "recipe",
    name = "oil-separation",
    category = "petrochem-separation",
    subgroup = "petrochem-carbon-oil-feed",
    normal = {
      enabled = false,
      energy_required = 2,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "liquid-multi-phase-oil", amount = 100 },
      },
      results = {
        { type = "fluid", name = "gas-raw-1", amount = 20 },
        { type = "fluid", name = "crude-oil", amount = 70 },
        { type = "fluid", name = "water-yellow-waste", amount = 10 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "liquid-multi-phase-oil", amount = 120 * rawmulti },
      },
      results = {
        { type = "fluid", name = "gas-raw-1", amount = 20 },
        { type = "fluid", name = "crude-oil", amount = 70 },
        { type = "fluid", name = "water-yellow-waste", amount = 10 },
      },
    },
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "crude-oil",
      "gas-raw-1",
    }, { { 100, 100, 100 }, { 171, 161, 055 }, { 127, 163, 109 } }),
    crafting_machine_tint = AF.get_recipe_tints({
      "gas-raw-1",
      "liquid-multi-phase-oil",
      "crude-oil",
      "water-yellow-waste",
    }),
    order = "a[oil-separation]",
  },
  {
    type = "recipe",
    name = "oil-refining",
    category = "oil-processing",
    subgroup = "petrochem-carbon-oil-feed",
    enabled = false,
    energy_required = 6,
    ingredients = {
      { type = "fluid", name = "crude-oil", amount = 100 },
    },
    results = {
      { type = "fluid", name = "liquid-mineral-oil", amount = 20 },
      { type = "fluid", name = "liquid-fuel-oil", amount = 30 },
      { type = "fluid", name = "liquid-naphtha", amount = 50 },
      { type = "item", name = "solid-oil-residual", amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "liquid-fuel-oil",
      "liquid-naphtha",
      "liquid-mineral-oil",
    }, "OiOiOi"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-naphtha",
      "crude-oil",
      "liquid-fuel-oil",
      "liquid-mineral-oil",
    }),
    order = "b[oil-refining]",
  },
  {
    type = "recipe",
    name = "advanced-oil-refining",
    category = "oil-processing",
    subgroup = "petrochem-carbon-oil-feed",
    enabled = false,
    energy_required = 6,
    ingredients = {
      { type = "fluid", name = "crude-oil", amount = 90 },
      { type = "fluid", name = "gas-hydrogen", amount = 20 },
    },
    results = {
      { type = "fluid", name = "liquid-mineral-oil", amount = 20 },
      { type = "fluid", name = "liquid-fuel-oil", amount = 20 },
      { type = "fluid", name = "liquid-naphtha", amount = 70 },
      { type = "item", name = "solid-oil-residual", amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      {
        "liquid-fuel-oil",
        "liquid-naphtha",
        "liquid-mineral-oil",
      },
      "OiOiOi",
      {
        { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 },
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-naphtha",
      "crude-oil",
      "liquid-mineral-oil",
      "hydrogen",
      "liquid-fuel-oil",
    }),
    order = "c[advanced-oil-refining]",
  },
  {
    type = "recipe",
    name = "condensates-oil-refining",
    category = "oil-processing",
    subgroup = "petrochem-carbon-oil-feed",
    enabled = false,
    energy_required = 6,
    ingredients = {
      { type = "fluid", name = "crude-oil", amount = 40 },
      { type = "fluid", name = "liquid-condensates", amount = 60 },
    },
    results = {
      { type = "fluid", name = "liquid-mineral-oil", amount = 40 },
      { type = "fluid", name = "liquid-fuel-oil", amount = 30 },
      { type = "fluid", name = "liquid-naphtha", amount = 30 },
      { type = "item", name = "solid-oil-residual", amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      {
        "liquid-fuel-oil",
        "liquid-naphtha",
        "liquid-mineral-oil",
      },
      "OiOiOi",
      {
        "liquid-condensates",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-mineral-oil",
      "crude-oil",
      "liquid-naphtha",
      "liquid-condensates",
      "liquid-fuel-oil",
    }),
    order = "d[condensates-oil-refining]",
  },
  {
    type = "recipe",
    name = "residual-oil-refining",
    category = "oil-processing",
    subgroup = "petrochem-carbon-oil-feed",
    enabled = false,
    energy_required = 6,
    ingredients = {
      { type = "fluid", name = "crude-oil", amount = 60 },
      { type = "fluid", name = "gas-residual", amount = 40 },
    },
    results = {
      { type = "fluid", name = "liquid-mineral-oil", amount = 60 },
      { type = "fluid", name = "liquid-fuel-oil", amount = 30 },
      { type = "fluid", name = "liquid-naphtha", amount = 10 },
      { type = "item", name = "solid-oil-residual", amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      {
        "liquid-fuel-oil",
        "liquid-naphtha",
        "liquid-mineral-oil",
      },
      "OiOiOi",
      {
        "gas-residual",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-mineral-oil",
      "crude-oil",
      "liquid-fuel-oil",
      "gas-residual",
      "liquid-naphtha",
    }),
    order = "e",
  },
  {
    type = "recipe",
    name = "steam-cracking-naphtha",
    category = "steam-cracking",
    subgroup = "petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-naphtha", amount = 100 },
      { type = "fluid", name = "steam", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-synthesis", amount = 150 },
      { type = "fluid", name = "gas-residual", amount = 10 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "gas-synthesis",
    }, { { 196, 075, 085 }, { 170, 071, 081 }, { 148, 066, 075 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-synthesis", "liquid-naphtha", "gas-residual", "steam" }),
    order = "e[steam-cracking-naphtha]",
  },
  {
    type = "recipe",
    name = "liquid-mineral-oil-catalyst",
    category = "advanced-chemistry",
    subgroup = "petrochem-carbon-oil-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-naphtha", amount = 60 },
      { type = "fluid", name = "thermal-water", amount = 20 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 20 },
    },
    results = {
      { type = "fluid", name = "liquid-mineral-oil", amount = 100 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "liquid-mineral-oil",
    }, {
      { 192, 096, 096 },
      { 243, 135, 000 },--[[{089, 102, 157}]]
      { 036, 036, 036 },
    }),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-mineral-oil",
      "liquid-naphtha",
      "thermal-water",
      "gas-carbon-monoxide",
    }),
    order = "f",
  },
  {
    type = "recipe",
    name = "steam-cracking-mineral-oil",
    category = "steam-cracking",
    subgroup = "petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-mineral-oil", amount = 100 },
      { type = "fluid", name = "steam", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-synthesis", amount = 100 },
      { type = "fluid", name = "gas-residual", amount = 10 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "gas-synthesis",
    }, { { 063, 189, 063 }, { 058, 173, 58 }, { 053, 159, 053 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-mineral-oil", "gas-synthesis", "steam", "gas-residual" }),
    order = "f[catalyst-steam-cracking-mineral-oil]",
  },
  {
    type = "recipe",
    name = "steam-cracking-fuel-oil",
    category = "steam-cracking",
    subgroup = "petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-fuel-oil", amount = 100 },
      { type = "fluid", name = "steam", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-synthesis", amount = 100 },
      { type = "fluid", name = "gas-residual", amount = 10 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "gas-synthesis",
    }, { { 237, 212, 104 }, { 239, 210, 093 }, { 247, 216, 081 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-synthesis", "liquid-fuel-oil", "gas-residual", "steam" }),
    order = "g[catalyst-steam-cracking-fuel-oil]",
  },
  {
    type = "recipe",
    name = "mineral-oil-lubricant",
    category = "chemistry",
    subgroup = "petrochem-carbon-oil-feed",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-mineral-oil", amount = 40 },
      { type = "fluid", name = "gas-residual", amount = 10 },
    },
    results = {
      { type = "fluid", name = "lubricant", amount = 50 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "lubricant",
    }, { { 063, 189, 063 }, { 058, 173, 58 }, { 053, 159, 053 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "lubricant", "liquid-mineral-oil", "gas-residual" }),
    order = "g",
  },
  --SYNTHESIS
  {
    type = "recipe",
    name = "gas-synthesis-separation",
    category = "chemistry",
    subgroup = "petrochem-carbon-synthesis",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-synthesis", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-carbon-monoxide", amount = 40 },
      { type = "fluid", name = "gas-hydrogen", amount = 60 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72 },
    }, { { 210, 120, 210 }, { 175, 100, 175 }, { 140, 080, 140 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-hydrogen", "gas-synthesis", "gas-carbon-monoxide" }),
    order = "a[gas-synthesis-separation]",
  },
  {
    type = "recipe",
    name = "gas-synthesis-reforming",
    category = "chemistry",
    subgroup = "petrochem-carbon-synthesis",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-carbon-monoxide", amount = 60 },
      { type = "fluid", name = "gas-hydrogen", amount = 90 },
    },
    results = {
      { type = "fluid", name = "gas-synthesis", amount = 100 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      "gas-synthesis",
    }, { { 210, 120, 210 }, { 175, 100, 175 }, { 140, 080, 140 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-synthesis", "carbon-monoxide", "gas-hydrogen" }),
    order = "b[gas-synthesis-reforming]",
  },
  {
    type = "recipe",
    name = "gas-synthesis-methanation",
    category = "advanced-chemistry",
    subgroup = "petrochem-carbon-synthesis",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-synthesis", amount = 100 },
      { type = "fluid", name = "gas-hydrogen", amount = 40 },
      { type = "item", name = "catalyst-metal-blue", amount = 1 }, --Co
    },
    results = {
      { type = "fluid", name = "gas-methane", amount = 60 },
      { type = "fluid", name = "gas-ethane", amount = 20 },
      { type = "fluid", name = "gas-butane", amount = 20 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/methane.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/butane.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/ethane.png", 72 },
    }, { { 210, 120, 210 }, { 175, 100, 175 }, { 140, 080, 140 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-methane", "gas-synthesis", "gas-butane", "gas-hydrogen" }),
    order = "c[gas-synthesis-methanation]",
  },
  {
    type = "recipe",
    name = "liquid-naphtha-catalyst",
    category = "chemistry",
    subgroup = "petrochem-carbon-synthesis",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-synthesis", amount = 150 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 50 },
      { type = "item", name = "catalyst-metal-red", amount = 1 }, --Fe
    },
    results = {
      { type = "fluid", name = "liquid-naphtha", amount = 100 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      "liquid-naphtha",
    }, { { 210, 120, 210 }, { 175, 100, 175 }, { 140, 080, 140 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-naphtha", "gas-synthesis", "gas-carbon-monoxide" }),
    order = "d[liquid-mineral-oil-catalyst]",
  },
  {
    type = "recipe",
    name = "gas-synthesis-methanol",
    category = "chemistry",
    subgroup = "petrochem-carbon-synthesis",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-synthesis", amount = 100 },
      { type = "fluid", name = "gas-carbon-dioxide", amount = 40 },
      { type = "item", name = "catalyst-metal-green", amount = 1 }, --Zn and Al
    },
    results = {
      { type = "fluid", name = "water-purified", amount = 20 },
      { type = "fluid", name = "gas-methanol", amount = 80 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/methanol.png", 72 },
    }, { { 210, 120, 210 }, { 175, 100, 175 }, { 140, 080, 140 } }),
    crafting_machine_tint = AF.get_recipe_tints({
      "gas-methanol",
      "gas-synthesis",
      "water-purified",
      "gas-carbon-monoxide",
    }),
    order = "e[gas-synthesis-methanol]",
  },
  {
    type = "recipe",
    name = "steam-cracking-gas-residual",
    category = "steam-cracking",
    subgroup = "petrochem-carbon-synthesis",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-residual", amount = 100 },
      { type = "fluid", name = "steam", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-synthesis", amount = 150 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      "gas-synthesis",
    }, { { 064, 000, 064 }, { 128, 000, 128 }, { 192, 000, 192 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-synthesis", "gas-residual", "steam" }),
    order = "f[steam-cracking-gas-residual]",
  },
  {
    type = "recipe",
    name = "steam-cracking-oil-residual",
    category = "steam-cracking",
    subgroup = "petrochem-carbon-synthesis",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-oil-residual", amount = 10 },
      { type = "fluid", name = "steam", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-residual", amount = 100 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      "gas-residual",
    }, { { 064, 000, 064 }, { 128, 000, 128 }, { 192, 000, 192 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-residual", "steam" }),
    order = "g[steam-cracking-oil-residual]",
  },
  --STEAM CRACKING
  {
    type = "recipe",
    name = "steam-cracking-methane",
    category = "steam-cracking",
    subgroup = "petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-methane", amount = 60 },
      { type = "fluid", name = "steam", amount = 60 },
    },
    results = {
      { type = "fluid", name = "gas-methanol", amount = 80 },
      { type = "fluid", name = "gas-residual", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/methanol.png", 72 },
    }, "CHWs"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-methanol", "gas-methane", "gas-residual", "steam" }),
    order = "a[steam-cracking-methane]",
  },
  {
    type = "recipe",
    name = "steam-cracking-ethane",
    category = "steam-cracking",
    subgroup = "petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-ethane", amount = 60 },
      { type = "fluid", name = "steam", amount = 60 },
    },
    results = {
      { type = "fluid", name = "gas-ethylene", amount = 80 },
      { type = "fluid", name = "gas-residual", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72 },
    }, "CHWs"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-ethylene", "gas-ethane", "gas-residual", "steam" }),
    order = "b[steam-cracking-ethane]",
  },
  {
    type = "recipe",
    name = "steam-cracking-butane",
    category = "steam-cracking",
    subgroup = "petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-butane", amount = 60 },
      { type = "fluid", name = "steam", amount = 60 },
    },
    results = {
      { type = "fluid", name = "gas-benzene", amount = 80 },
      { type = "fluid", name = "gas-residual", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/benzene.png", 72 },
    }, "CHWs"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-benzene", "gas-butane", "gas-residual", "steam" }),
    order = "c[steam-cracking-butane]",
  },
  {
    type = "recipe",
    name = "catalyst-steam-cracking-butane",
    category = "steam-cracking",
    subgroup = "petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-naphtha", amount = 60 },
      { type = "fluid", name = "steam", amount = 60 },
      { type = "item", name = "catalyst-metal-green", amount = 1 }, --Ag
    },
    results = {
      { type = "fluid", name = "gas-butadiene", amount = 80 },
      { type = "fluid", name = "gas-residual", amount = 20 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/butadiene.png", 72 },
    }, "CHWs"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-butadiene", "liquid-naphtha", "gas-residual", "steam" }),
    order = "d[catalyst-steam-cracking-butane]",
  },
  {
    type = "recipe",
    name = "catalyst-steam-cracking-naphtha",
    category = "steam-cracking",
    subgroup = "petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-naphtha", amount = 100 },
      { type = "fluid", name = "steam", amount = 100 },
      { type = "item", name = "catalyst-metal-red", amount = 1 }, --Fe
    },
    results = {
      { type = "fluid", name = "gas-propene", amount = 100 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/propene.png", 72 },
    }, { { 196, 075, 085 }, { 170, 071, 081 }, { 148, 066, 075 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-propene", "liquid-naphtha", "steam" }),
    order = "e[catalyst-steam-cracking-naphtha]",
  },
  --CHEMISTRY
  {
    type = "recipe",
    name = "gas-benzene-catalyst",
    category = "chemistry",
    subgroup = "petrochem-feedstock",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-methane", amount = 100 },
      { type = "item", name = "catalyst-metal-green", amount = 1 },
    },
    results = {
      { type = "fluid", name = "gas-benzene", amount = 100 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/benzene.png", 72 },
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-benzene", "gas-methane" }),
    order = "d[gas-benzene-catalyst]",
  },
  {
    type = "recipe",
    name = "liquid-polyethylene-catalyst",
    category = "chemistry",
    subgroup = "petrochem-feedstock",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-ethylene", amount = 100 },
      { type = "item", name = "catalyst-metal-blue", amount = 1 }, --Ti OR Cr
    },
    results = {
      { type = "fluid", name = "liquid-polyethylene", amount = 50 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/polyethylene.png", 72, { 11.5 * 32 / 10.24, 0 }, 32 / 10.24 },
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-polyethylene", "gas-ethylene" }),
    order = "c[liquid-polyethylene-catalyst]",
  },
  {
    type = "recipe",
    name = "gas-methanol-catalyst",
    category = "chemistry",
    subgroup = "petrochem-feedstock",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-carbon-dioxide", amount = 100 },
      { type = "fluid", name = "gas-hydrogen", amount = 100 },
      { type = "item", name = "catalyst-metal-green", amount = 1 }, --Zinc, Copper, Aluminium
    },
    results = {
      { type = "fluid", name = "gas-methanol", amount = 100 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/methanol.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-methanol", "gas-carbon-dioxide", "gas-hydrogen" }),
    order = "a[gas-methanol-catalyst]",
  },
  {
    type = "recipe",
    name = "gas-ethylene-oxide",
    category = "chemistry",
    subgroup = "petrochem-feedstock",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-ethylene", amount = 100 },
      { type = "fluid", name = "gas-oxygen", amount = 50 },
      { type = "item", name = "catalyst-metal-green", amount = 1 },
    },
    results = {
      { type = "fluid", name = "gas-ethylene-oxide", amount = 100 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/ethylene-oxide.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-ethylene-oxide", "gas-ethylene", "gas-oxygen" }),
    order = "b[gas-ethylene-oxide-catalyst]",
  },
  {
    type = "recipe",
    name = "liquid-toluene-from-naphtha",
    category = "chemistry",
    subgroup = "petrochem-feedstock",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-naphtha", amount = 100 },
      { type = "fluid", name = "gas-hydrogen", amount = 100 },
      { type = "item", name = "catalyst-metal-green", amount = 1 }, --Aluminium
    },
    results = {
      { type = "fluid", name = "liquid-toluene", amount = 100 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "liquid-toluene",
    }, { { 196, 075, 085 }, { 170, 071, 081 }, { 148, 066, 075 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-toluene", "liquid-naphtha", "gas-hydrogen" }),
    order = "e[toluene]-a",
  },
  {
    type = "recipe",
    name = "liquid-toluene-from-benzene",
    category = "chemistry",
    subgroup = "petrochem-feedstock",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-benzene", amount = 100 },
      { type = "fluid", name = "gas-chlor-methane", amount = 50 },
      { type = "item", name = "catalyst-metal-green", amount = 1 }, --Aluminium
    },
    results = {
      { type = "fluid", name = "liquid-toluene", amount = 100 },
      { type = "fluid", name = "gas-hydrogen-chloride", amount = 50 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      "liquid-toluene",
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-toluene",
      "gas-benzene",
      "gas-hydrogen-chloride",
      "gas-chlor-methane",
    }),
    order = "e[toluene]-b",
  },
  {
    type = "recipe",
    name = "gas-formaldehyde-catalyst",
    category = "chemistry",
    subgroup = "petrochem-chemistry",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-methanol", amount = 100 },
      { type = "item", name = "catalyst-metal-green", amount = 1 }, --Ag, Or FeO & Mo and/or V
    },
    results = {
      { type = "fluid", name = "gas-formaldehyde", amount = 100 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/formaldehyde.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-formaldehyde", "gas-methanol" }),
    order = "a[gas-formaldehyde-catalyst]",
  },
  {
    type = "recipe",
    name = "liquid-styrene-catalyst",
    category = "chemistry",
    subgroup = "petrochem-chemistry",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-ethylbenzene", amount = 100 },
      { type = "item", name = "catalyst-metal-green", amount = 1 }, --Fe
    },
    results = {
      { type = "fluid", name = "liquid-styrene", amount = 50 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/styrene.png", 72 },
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-styrene", "liquid-ethylbenzene" }),
    order = "a[liquid-styrene-catalyst]",
  },
  {
    type = "recipe",
    name = "liquid-phenol-catalyst",
    category = "chemistry",
    subgroup = "petrochem-chemistry",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-benzene", amount = 100 },
      { type = "fluid", name = "gas-oxygen", amount = 100 },
      { type = "item", name = "catalyst-metal-yellow", amount = 1 }, --Fe
    },
    results = {
      { type = "fluid", name = "liquid-phenol", amount = 100 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/phenol.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-phenol", "gas-benzene", "gas-oxygen" }),
    order = "d[liquid-phenol-catalyst]-a",
  },
  {
    type = "recipe",
    name = "gas-propene-synthesis",
    category = "steam-cracking",
    subgroup = "petrochem-chemistry",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-methanol", amount = 100 },
      { type = "fluid", name = "steam", amount = 50 },
    },
    results = {
      { type = "fluid", name = "gas-propene", amount = 80 },
      { type = "fluid", name = "gas-residual", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/propene.png", 72 },
    }, "CHWs"),
    crafting_machine_tint = AF.get_recipe_tints({ "gas-propene", "gas-methanol", "gas-residual", "steam" }),
    order = "e[gas-propene-synthesis]",
  },
  --ADVANCED CHEMISTRY
  {
    type = "recipe",
    name = "liquid-ethylbenzene-catalyst",
    category = "advanced-chemistry",
    subgroup = "petrochem-chemistry",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-benzene", amount = 50 },
      { type = "fluid", name = "gas-ethylene", amount = 50 },
      { type = "fluid", name = "liquid-hydrofluoric-acid", amount = 20 },
    },
    results = {
      { type = "fluid", name = "liquid-ethylbenzene", amount = 80 },
      --{type = "fluid", name = "gas-hydrogen", amount = 20},
      { type = "fluid", name = "gas-hydrogen-fluoride", amount = 20, catalyst_amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/ethylbenzene.png", 72 },
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-ethylbenzene",
      "gas-benzene",
      "liquid-hydrofluoric-acid",
      "gas-hydrogen-fluoride",
    }),
    order = "b[liquid-ethylbenzene-catalyst]",
  },
  {
    type = "recipe",
    name = "liquid-ethylene-carbonate",
    category = "chemistry",
    subgroup = "petrochem-chemistry",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-ethylene-oxide", amount = 100 },
      { type = "fluid", name = "gas-carbon-dioxide", amount = 100 },
      --{type = "item", name = "catalyst-metal-green", amount = 1} --ideally a zinc catalyst
    },
    results = {
      { type = "fluid", name = "liquid-ethylene-carbonate", amount = 90 },
      --{type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1}
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/ethylene-carbonate.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-ethyelene-carbonate",
      "liquid-ethylene-oxide",
      "gas-carbon-dioxide",
    }),
    order = "c[ethylene-carbonate]",
  },
  {
    type = "recipe",
    name = "cumene-process",
    category = "advanced-chemistry",
    subgroup = "petrochem-chemistry",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-benzene", amount = 50 },
      { type = "fluid", name = "gas-propene", amount = 50 },
      { type = "fluid", name = "gas-oxygen", amount = 20 },
      { type = "item", name = "catalyst-metal-blue", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-phenol", amount = 60 },
      { type = "fluid", name = "gas-acetone", amount = 60 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/phenol.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/acetone.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-phenol", "gas-benzene", "gas-acetone", "gas-oxygen" }),
    order = "d[liquid-phenol-catalyst]-b",
  },
  {
    type = "recipe",
    name = "liquid-bisphenol-a",
    category = "advanced-chemistry",
    subgroup = "petrochem-chemistry",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-phenol", amount = 60 },
      { type = "fluid", name = "gas-acetone", amount = 40 },
      { type = "fluid", name = "liquid-hydrochloric-acid", amount = 20 },
    },
    results = {
      { type = "fluid", name = "liquid-bisphenol-a", amount = 100 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/bisphenol_a.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-bisphenol-a",
      "liquid-phenol",
      "liquid-acetone",
      "liquid-hydrochloric-acid",
    }),
    order = "e",
  },
})
