local intermediatemulti = angelsmods.marathon.intermediatemulti
local AF = angelsmods.functions

data:extend({
  --SOLIDS
  {
    type = "recipe",
    name = "solid-plastic",
    category = "crafting-with-fluid",
    subgroup = "petrochem-solids",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-plastic", amount = 40 },
      },
      results = {
        { type = "item", name = "plastic-bar", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-plastic", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "plastic-bar", amount = 4 },
      },
    },
    icon_size = 32,
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-plastic"),
    order = "a[plastic]-b[solid]",
  },
  {
    type = "recipe",
    name = "liquid-plastic-1",
    category = "liquifying",
    subgroup = "petrochem-solids",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-propene", amount = 40 },
    },
    results = {
      { type = "fluid", name = "liquid-plastic", amount = 10 },
    },
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(nil, { { 255, 255, 255 }, { 255, 255, 255 } }, {
      AF.add_number_icon_layer({}, 1, angelsmods.petrochem.number_tint),
    }),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-plastic", "gas-propene" }),
    order = "a[plastic]-a[liquid]-a",
  },
  {
    type = "recipe",
    name = "liquid-plastic-2",
    category = "chemistry",
    subgroup = "petrochem-solids",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-naphtha", amount = 20 },
      { type = "fluid", name = "liquid-polyethylene", amount = 20 },
    },
    results = {
      { type = "fluid", name = "liquid-plastic", amount = 20 },
    },
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(nil, { { 255, 255, 255 }, { 255, 255, 255 } }, {
      AF.add_number_icon_layer({}, 2, angelsmods.petrochem.number_tint),
    }),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-plastic", "liquid-naphthta", "liquid-polyethylene" }),
    order = "a[plastic]-a[liquid]-b",
  },
  {
    type = "recipe",
    name = "liquid-plastic-3",
    category = "chemistry",
    subgroup = "petrochem-solids",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-formaldehyde", amount = 20 },
      { type = "fluid", name = "liquid-phenol", amount = 20 },
    },
    results = {
      { type = "fluid", name = "liquid-plastic", amount = 30 },
    },
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(nil, { { 255, 255, 255 }, { 255, 255, 255 } }, {
      AF.add_number_icon_layer({}, 3, angelsmods.petrochem.number_tint),
    }),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-plastic", "gas-formaldehyde", "liquid-phenol" }),
    order = "a[plastic]-a[liquid]-c",
  },
  --RESIN
  {
    type = "recipe",
    name = "solid-resin",
    category = "crafting-with-fluid",
    subgroup = "petrochem-solids",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-resin", amount = 40 },
      },
      results = {
        { type = "item", name = "solid-resin", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-resin", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "solid-resin", amount = 4 },
      },
    },
    icon = "__angelspetrochem__/graphics/icons/solid-resin.png",
    icon_size = 32,
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-resin"),
    order = "b[resin]-b[solid]",
  },
  {
    type = "recipe",
    name = "liquid-resin-1",
    category = "chemistry",
    subgroup = "petrochem-solids",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-urea", amount = 20 },
      { type = "fluid", name = "gas-formaldehyde", amount = 20 },
    },
    results = {
      { type = "fluid", name = "liquid-resin", amount = 10 },
    },
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(nil, { { 255, 225, 155 }, { 255, 225, 155 } }, {
      AF.add_number_icon_layer({}, 1, angelsmods.petrochem.number_tint),
    }),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-resin", "gas-urea", "gas-formaldehyde" }),
    order = "b[resin]-a[liquid]-a",
  },
  {
    type = "recipe",
    name = "liquid-resin-2",
    category = "chemistry",
    subgroup = "petrochem-solids",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-melamine", amount = 20 },
      { type = "fluid", name = "gas-formaldehyde", amount = 20 },
    },
    results = {
      { type = "fluid", name = "liquid-resin", amount = 20 },
    },
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(nil, { { 255, 225, 155 }, { 255, 225, 155 } }, {
      AF.add_number_icon_layer({}, 2, angelsmods.petrochem.number_tint),
    }),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-resin", "gas-melamine", "gas-formaldehyde" }),
    order = "b[resin]-a[liquid]-b",
  },
  {
    type = "recipe",
    name = "liquid-resin-3",
    category = "chemistry",
    subgroup = "petrochem-solids",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-bisphenol-a", amount = 20 },
      { type = "fluid", name = "gas-epichlorhydrin", amount = 20 },
    },
    results = {
      { type = "fluid", name = "liquid-resin", amount = 30 },
    },
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(nil, { { 255, 225, 155 }, { 255, 225, 155 } }, {
      AF.add_number_icon_layer({}, 3, angelsmods.petrochem.number_tint),
    }),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-resin", "liquid-bisphenol-a", "gas-epichlorhydrin" }),
    order = "b[resin]-a[liquid]-c",
  },
  --RUBBER
  {
    type = "recipe",
    name = "solid-rubber",
    category = "crafting-with-fluid",
    subgroup = "petrochem-solids-2",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-rubber", amount = 40 },
      },
      results = {
        { type = "item", name = "solid-rubber", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-rubber", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "solid-rubber", amount = 4 },
      },
    },
    icon = "__angelspetrochem__/graphics/icons/solid-rubber.png",
    icon_size = 32,
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-rubber"),
    order = "b[rubber]-b[solid]",
  },
  {
    type = "recipe",
    name = "liquid-rubber-1",
    category = "chemistry",
    subgroup = "petrochem-solids-2",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-styrene", amount = 20 },
      { type = "fluid", name = "gas-butadiene", amount = 20 },
    },
    results = {
      { type = "fluid", name = "liquid-rubber", amount = 10 },
    },
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(nil, { { 193, 197, 255 }, { 193, 197, 255 } }, {
      AF.add_number_icon_layer({}, 1, angelsmods.petrochem.number_tint),
    }),
    crafting_machine_tint = AF.get_recipe_tints({ "liquid-rubber", "liquid-styrene", "gas-butadiene" }),
    order = "b[rubber]-a[liquid]",
  },
  --GLASS
  -- {
  -- type = "recipe",
  -- name = "solid-glass",
  -- category = "chemistry",
  -- subgroup = "petrochem-solids",
  -- normal =
  -- {
  -- enabled = false,
  -- energy_required = 2,
  -- ingredients =
  -- {
  -- {type="fluid", name="liquid-bisphenol-a", amount=20},
  -- {type="fluid", name="gas-phosgene", amount=20},
  -- {type="item", name="solid-sodium-hydroxide", amount=1},
  -- },
  -- results=
  -- {
  -- {type="item", name="solid-glas", amount=4}},
  -- },
  -- },
  -- expensive =
  -- {
  -- enabled = false,
  -- energy_required = 2,
  -- ingredients =
  -- {
  -- {type="fluid", name="liquid-bisphenol-a", amount=25 * intermediatemulti},
  -- {type="fluid", name="gas-phosgene", amount=25 * intermediatemulti},
  -- {type="item", name="solid-sodium-hydroxide", amount=1 * intermediatemulti},
  -- },
  -- results=
  -- {
  -- {type="item", name="solid-glas", amount=4}},
  -- },
  -- },
  -- icon = "__angelspetrochem__/graphics/icons/solid-glas.png",
  -- icon_size = 32,
  -- order = "i",
  -- },
  --FUEL
  {
    type = "recipe",
    name = "solid-fuel-methane",
    category = "liquifying",
    subgroup = "petrochem-fuel",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-coke", amount = 1 },
      { type = "fluid", name = "gas-methane", amount = 100 },
    },
    results = {
      { type = "item", name = "solid-fuel", amount = 2 },
    },
    icons = AF.create_solid_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/methane.png", 72 },
    }, "solid-fuel"),
    crafting_machine_tint = AF.get_recipe_tints({ { r = 1, g = 1, b = 1 }, "gas-methane" }),
    order = "a[solid-fuel-methane]",
  },
  {
    type = "recipe",
    name = "solid-fuel-naphtha",
    category = "liquifying",
    subgroup = "petrochem-fuel",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-coke", amount = 1 },
      { type = "fluid", name = "liquid-naphtha", amount = 100 },
    },
    results = {
      { type = "item", name = "solid-fuel", amount = 2 },
    },
    icons = AF.create_solid_recipe_icon({
      "liquid-naphtha",
    }, "solid-fuel"),
    crafting_machine_tint = AF.get_recipe_tints({
      { r = 105 / 255, g = 105 / 255, b = 105 / 255 },
      "liquid-naphtha",
      AF.fluid_color("Cb"),
    }),
    order = "b[solid-fuel-naphtha]",
  },
  {
    type = "recipe",
    name = "solid-fuel-fuel-oil",
    category = "liquifying",
    subgroup = "petrochem-fuel",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-coke", amount = 1 },
      { type = "fluid", name = "liquid-fuel-oil", amount = 50 },
    },
    results = {
      { type = "item", name = "solid-fuel", amount = 2 },
    },
    icons = AF.create_solid_recipe_icon({
      "liquid-fuel-oil",
    }, "solid-fuel"),
    crafting_machine_tint = AF.get_recipe_tints({
      { r = 105 / 255, g = 105 / 255, b = 105 / 255 },
      "liquid-fuel-oil",
      AF.fluid_color("Cb"),
    }),
    order = "c[solid-fuel-fuel-oil]",
  },
  {
    type = "recipe",
    name = "solid-fuel-synthesis",
    category = "liquifying",
    subgroup = "petrochem-fuel",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-coke", amount = 1 },
      { type = "fluid", name = "gas-synthesis", amount = 100 },
    },
    results = {
      { type = "item", name = "solid-fuel", amount = 2 },
    },
    icons = AF.create_solid_recipe_icon({
      "gas-synthesis",
    }, "solid-fuel"),
    crafting_machine_tint = AF.get_recipe_tints({
      { r = 105 / 255, g = 105 / 255, b = 105 / 255 },
      "gas-synthesis",
      AF.fluid_color("Cb"),
    }),
    order = "d[solid-fuel-synthesis]",
  },
  {
    type = "recipe",
    name = "solid-fuel-hydrazine",
    category = "chemistry",
    subgroup = "petrochem-fuel",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-hydrazine", amount = 50 },
    },
    results = {
      { type = "item", name = "solid-fuel", amount = 2 },
    },
    icons = AF.create_solid_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/hydrazine.png", 72 },
    }, "solid-fuel"),
    crafting_machine_tint = AF.get_recipe_tints({ { r = 105 / 255, g = 105 / 255, b = 105 / 255 }, "gas-hydrazine" }),
    order = "e[solid-fuel-hydrazine]",
  },
  --CATALYSTS
  {
    type = "recipe",
    name = "catalyst-metal-carrier",
    category = "crafting",
    subgroup = "petrochem-catalysts",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 5 },
    },
    results = {
      { type = "item", name = "catalyst-metal-carrier", amount = 10 },
    },
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-carrier.png",
    icon_size = 32,
    order = "c[catalyst-metal]-a[carrier]",
  },
  {
    type = "recipe",
    name = "catalyst-metal-red",
    category = "crafting",
    subgroup = "petrochem-catalysts",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "catalyst-metal-carrier", amount = 10 },
      -- {type="item", name="iron-ore", amount=1},
      -- {type="item", name="copper-ore", amount=1},
    },
    results = {
      { type = "item", name = "catalyst-metal-red", amount = 10 },
    },
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-red.png",
    icon_size = 32,
    order = "c[catalyst-metal]-b[red]",
  },
  {
    type = "recipe",
    name = "catalyst-metal-green",
    category = "crafting",
    subgroup = "petrochem-catalysts",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "catalyst-metal-carrier", amount = 10 },
      -- {type="item", name="bauxite-ore", amount=1},
      -- {type="item", name="silver-ore", amount=1},
    },
    results = {
      { type = "item", name = "catalyst-metal-green", amount = 10 },
    },
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-green.png",
    icon_size = 32,
    order = "c[catalyst-metal]-c[green]",
  },
  {
    type = "recipe",
    name = "catalyst-metal-blue",
    category = "crafting",
    subgroup = "petrochem-catalysts",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "catalyst-metal-carrier", amount = 10 },
      -- {type="item", name="rutile-ore", amount=1},
      -- {type="item", name="cobalt-ore", amount=1},
    },
    results = {
      { type = "item", name = "catalyst-metal-blue", amount = 10 },
    },
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-blue.png",
    icon_size = 32,
    order = "c[catalyst-metal]-d[blue]",
  },
  {
    type = "recipe",
    name = "catalyst-metal-yellow",
    category = "crafting",
    subgroup = "petrochem-catalysts",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "catalyst-metal-carrier", amount = 10 },
      -- {type="item", name="tungsten-ore", amount=1},
      -- {type="item", name="nickel-ore", amount=1},
    },
    results = {
      { type = "item", name = "catalyst-metal-yellow", amount = 10 },
    },
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-yellow.png",
    icon_size = 32,
    order = "c[catalyst-metal]-e[yellow]",
  },
  --SPECIAL CATALYSTS
  {
    type = "recipe",
    name = "angels-electrode",
    category = "crafting",
    subgroup = "petrochem-catalysts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "solid-carbon", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-electrode", amount = 1 },
    },
    icon_size = 32,
    order = "a[electrode]-a[create]",
  },
  {
    type = "recipe",
    name = "angels-electrode-used",
    category = "chemistry",
    subgroup = "petrochem-catalysts",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-electrode-used", amount = 1 },
      { type = "fluid", name = "water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-electrode", amount = 1 },
      { type = "fluid", name = "water-mineralized", amount = 10 },
      { type = "fluid", name = "water", amount = 40 },
    },
    icon = "__angelspetrochem__/graphics/icons/solid-electrode-used.png",
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({ "water-mineralized", "water-purified", "water" }),
    order = "a[electrode]-b[recycle]",
  },
  --EXPLOSIVES
  {
    type = "recipe",
    name = "solid-nitroglycerin",
    category = "chemistry",
    subgroup = "petrochem-solids-2",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-glycerol", amount = 50 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 25 },
      { type = "fluid", name = "liquid-nitric-acid", amount = 25 },
      { type = "item", name = "coal", amount = 1 },
    },
    results = {
      { type = "item", name = "explosives", amount = 2 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("explosives"), 2, angelsmods.petrochem.number_tint),
    main_product = "explosives",
    crafting_machine_tint = AF.get_recipe_tints({
      { r = 1, g = 0, b = 0 },
      "liquid-glycerol",
      "liquid-sulfuric-acid",
      "liquid-nitric-acid",
    }),
    order = "a[explosives]-b",
  },
  {
    type = "recipe",
    name = "solid-trinitrotoluene",
    category = "chemistry",
    subgroup = "petrochem-solids-2",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-toluene", amount = 50 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 25 },
      { type = "fluid", name = "liquid-nitric-acid", amount = 25 },
    },
    results = {
      --{type="item", name="solid-trinitrotoluene", amount=1},
      { type = "item", name = "explosives", amount = 3 },
      { type = "fluid", name = "water-yellow-waste", amount = 25 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("explosives"), 3, angelsmods.petrochem.number_tint),
    main_product = "explosives",
    crafting_machine_tint = AF.get_recipe_tints({
      { r = 1, g = 0, b = 0 },
      "liquid-toluene",
      "liquid-sulfuric-acid",
      "liquid-nitric-acid",
    }),
    order = "a[explosives]-c",
  },
})
