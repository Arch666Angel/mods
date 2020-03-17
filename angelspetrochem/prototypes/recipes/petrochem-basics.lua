data:extend(
{
--BASIC CHEMISTRY
  {
    type = "recipe",
    name = "dirt-water-separation",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-basics",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="water", amount=100}
    },
    results=
    {
      {type="fluid", name="gas-oxygen", amount=30},
      {type="fluid", name="gas-hydrogen", amount=40},
      {type="item", name="slag", amount=1}
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 }
    }, "ohh", {
      {
        {
          icon = "__angelspetrochem__/graphics/icons/num_1.png",
          icon_size = 32,
          tint = angelsmods.petrochem.number_tint,
          --scale = 0.32,
          --shift = {-12, -12},
        }
      },
      {
        {
          icon = "__base__/graphics/icons/fluid/water.png",
          icon_size = 64,
          scale = 32/64,
        }
      }
    }),
    order = "a[water-separation]",
    crafting_machine_tint =
    {
      primary = {r = 1, g = 0, b = 0, a = 0},
      secondary = {r = 1, g = 1, b = 1, a = 0},
      tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
    }
  },
  {
    type = "recipe",
    name = "dirt-water-separation-2",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="water", amount=100},
      {type="item", name="angels-electrode", amount=1}
    },
    results=
    {
      {type="fluid", name="gas-oxygen", amount=30},
      {type="fluid", name="gas-hydrogen", amount=40},
      {type="item", name="slag", amount=1},
      {type="item", name="angels-electrode-used", amount=1, catalyst_amount=1}
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 }
    }, "ohh", {
      {
        {
          icon = "__angelspetrochem__/graphics/icons/num_2.png",
          icon_size = 32,
          tint = angelsmods.petrochem.number_tint,
          --scale = 0.32,
          --shift = {-12, -12},
        }
      },
      {
        {
          icon = "__base__/graphics/icons/fluid/water.png",
          icon_size = 64,
          scale = 32/64,
        }
      }
    }),
    order = "a[water-separation]",
    crafting_machine_tint =
    {
      primary = {r = 1, g = 0, b = 0, a = 0},
      secondary = {r = 1, g = 1, b = 1, a = 0},
      tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
    }
  },
  {
    type = "recipe",
    name = "water-separation",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-basics",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="water-purified", amount=100}
    },
    results=
    {
      {type="fluid", name="gas-oxygen", amount=40},
      {type="fluid", name="gas-hydrogen", amount=60},
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 }
    }, "ohh", {
      {
        {
          icon = "__angelspetrochem__/graphics/icons/num_1.png",
          icon_size = 32,
          tint = angelsmods.petrochem.number_tint,
          --scale = 0.32,
          --shift = {-12, -12},
        }
      },
      "water-purified"
    }),
    order = "a[water-separation]",
    crafting_machine_tint =
    {
      primary = {r = 1, g = 0, b = 0, a = 0},
      secondary = {r = 1, g = 1, b = 1, a = 0},
      tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
    }
  },
  {
    type = "recipe",
    name = "water-separation-2",
    category = "petrochem-electrolyser",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="water-purified", amount=100},
      {type="item", name="angels-electrode", amount=1}
    },
    results=
    {
      {type="fluid", name="gas-oxygen", amount=40},
      {type="fluid", name="gas-hydrogen", amount=60},
      {type="item", name="angels-electrode-used", amount=1, catalyst_amount=1}
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 }
    }, "ohh", {
      {
        {
          icon = "__angelspetrochem__/graphics/icons/num_2.png",
          icon_size = 32,
          tint = angelsmods.petrochem.number_tint,
          --scale = 0.32,
          --shift = {-12, -12},
        }
      },
      "water-purified"
    }),
    order = "a[water-separation]",
    crafting_machine_tint =
    {
      primary = {r = 1, g = 0, b = 0, a = 0},
      secondary = {r = 1, g = 1, b = 1, a = 0},
      tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
    }
  },
  {
    type = "recipe",
    name = "water-synthesis",
    category = "chemistry",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="gas-oxygen", amount=60},
      {type="fluid", name="gas-hydrogen", amount=90},
    },
    results=
    {
      {type="fluid", name="water-purified", amount=100}
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "water-purified"
    }, "www"),
    order = "a[water-synthesis]",
    crafting_machine_tint =
    {
      primary = {r = 1, g = 1, b = 1, a = 0},
      secondary = {r = 0.7, g = 0.7, b = 1, a = 0},
      tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
    }
  },
  {
    type = "recipe",
    name = "carbon-separation-1",
    category = "liquifying",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-carbon", amount=1},
      {type="fluid", name="water-purified", amount=50}
    },
    results=
    {
      {type="fluid", name="gas-carbon-monoxide", amount=50},
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({ { "__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72 } }, "ccc"),
    order = "b[carbon-separation-1]",
    crafting_machine_tint =
    {
      primary = {r = 0.7, g = 0.7, b = 1, a = 0},
      secondary = {r = 1, g = 0.4, b = 0.4, a = 0},
      tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
    }
  },
  {
    type = "recipe",
    name = "carbon-separation-2",
    category = "liquifying",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="item", name="coal", amount=1}
    },
    results=
    {
      {type="fluid", name="gas-carbon-dioxide", amount=50},
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({ { "__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72 } }, "ccc"),
    order = "d[carbon-separation-2]",
    crafting_machine_tint =
    {
      primary = {r = 1, g = 0.5, b = 0.5, a = 0},
      secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
      tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
    }
  },
  {
    type = "recipe",
    name = "solid-calcium-chloride",
    category = "chemistry",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="item", name="stone-crushed", amount=6},
      {type="fluid", name="gas-hydrogen-chloride", amount=30},
    },
    results=
    {
        {type="item", name="solid-calcium-chloride", amount=3},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-calcium-chloride.png",
    icon_size = 32,
    order = "e[solid-calcium-chloride]",
    crafting_machine_tint =
    {
      primary = {r = 0.1, g = 1, b = 0.1, a = 0},
      secondary = {r = 168/255, g = 203/255, b = 105/255, a = 0/255},
      tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
    }
  },
  {
    type = "recipe",
    name = "water-gas-shift-1",
    category = "chemistry",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="gas-carbon-monoxide", amount=50},
      {type="fluid", name="steam", amount=50},
    },
    results=
    {
      {type="fluid", name="gas-carbon-dioxide", amount=50},
      {type="fluid", name="gas-hydrogen", amount=50}
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72 },
    }, "whk"),
    order = "f",
    crafting_machine_tint =
    {
      primary = {r = 1, g = 0.5, b = 0.5, a = 0},
      secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
      tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
    }
  },
  {
    type = "recipe",
    name = "water-gas-shift-2",
    category = "chemistry",
    subgroup = "petrochem-basics",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="gas-hydrogen", amount=50},
      {type="fluid", name="gas-carbon-dioxide", amount=50},
    },
    results=
    {
      {type="fluid", name="water-purified", amount=50},
      {type="fluid", name="gas-carbon-monoxide", amount=50}
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      "water-purified",
      { "__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72 },
    }, "whk"),
    order = "g",
    crafting_machine_tint =
    {
      primary = {r = 1, g = 0.5, b = 0.5, a = 0},
      secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
      tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
    }
  },
--COAL CRACKING
  {
    type = "recipe",
    name = "coal-cracking-1",  --Gasification
    category = "advanced-chemistry",
    subgroup = "petrochem-coal",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="coal", amount=5},
    },
    results=
    {
      {type="fluid", name="gas-hydrogen-sulfide", amount=50},
      {type="fluid", name="gas-benzene", amount=30},
      {type="fluid", name="gas-methane", amount=70},
      {type="item", name="solid-coke", amount=6},      --COKE
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/methane.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/benzene.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen-sulfide.png", 72 },
    }, "kkk"),
    order = "f[coal-cracking-1]",
    crafting_machine_tint =
    {
      primary = {r = 1, g = 1, b = 0.3, a = 0},
      secondary = {r = 0.5, g = 0.5, b = 0.5, a = 0},
      tertiary = {r = 0.3, g = 0.3, b = 0.3, a = 0},
    }
  },
  {
    type = "recipe",
    name = "coal-cracking-2",  --Bergius-Process
    category = "advanced-chemistry",
    subgroup = "petrochem-coal",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="coal", amount=5},
      {type="fluid", name="gas-hydrogen", amount=50},
      {type="item", name="catalyst-metal-red", amount=1},    --Fe
    },
    results=
    {
      {type="fluid", name="liquid-naphtha", amount=60},
      {type="fluid", name="liquid-ngl", amount=30},
      {type="fluid", name="liquid-mineral-oil", amount=20},
      {type="item", name="solid-coke", amount=6},      --COKE
      {type="item", name="catalyst-metal-carrier", amount=1, catalyst_amount=1},
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      "liquid-mineral-oil",
      "liquid-ngl",
      "liquid-naphtha",
    }, "kkk"),
    order = "g[coal-cracking-2]",
    crafting_machine_tint =
    {
      primary = {r = 0.8, g = 0.4, b = 0.4, a = 0},
      secondary = {r = 0.3, g = 0.5, b = 0.3, a = 0},
      tertiary = {r = 0.2, g = 0.6, b = 0.2, a = 0},
    }
  },
  {
    type = "recipe",
    name = "coal-cracking-3", --Fischer-Tropsch Ammonia and Methanol feed
    category = "advanced-chemistry",
    subgroup = "petrochem-coal",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="coal", amount=5},
      {type="fluid", name="steam", amount=50},
      {type="fluid", name="gas-oxygen", amount=50},
    },
    results=
    {
      {type="fluid", name="gas-synthesis", amount=100},
      {type="fluid", name="gas-carbon-dioxide", amount=20},
      {type="fluid", name="gas-hydrogen-sulfide", amount=30},
      -- {type="fluid", name="gas-hydrogen", amount=1},
      -- {type="fluid", name="gas-methane", amount=1},
    },
    always_show_products = "true",
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72 },
      "gas-synthesis",
      { "__angelspetrochem__/graphics/icons/molecules/hydrogen-sulfide.png", 72 },
    }, "kkk"),
    order = "h[coal-cracking-3]",
    crafting_machine_tint =
    {
      primary = {r = 210/255, g = 120/255, b = 210/255, a = 0/255},
      secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
      tertiary = {r = 1, g = 1, b = 0.3, a = 0},
    }
  },
  {
    type = "recipe",
    name = "coke-purification",
    category = "liquifying",
    subgroup = "petrochem-coal",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-coke", amount=2},
      {type="fluid", name="steam", amount=30},
    },
    results=
    {
      {type="item", name="solid-carbon", amount=3},
    },
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/solid-carbon.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.petrochem.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "d[coke-purification]",
    crafting_machine_tint =
    {
      primary = {r = 1, g = 0.5, b = 0.5, a = 0},
      secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
      tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
    }
  },
  {
    type = "recipe",
    name = "coke-purification-2",
    category = "liquifying",
    subgroup = "petrochem-coal",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-coke", amount=4},
      {type="item", name="solid-sodium-hydroxide", amount=1},
      {type="fluid", name="gas-nitrogen", amount=30},
    },
    results=
    {
      {type="item", name="solid-carbon", amount=6},
      {type="item", name="solid-sodium-carbonate", amount=1},
      {type="fluid", name="water", amount=10},
    },
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/solid-carbon.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.petrochem.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "d[coke-purification]",
    crafting_machine_tint =
    {
      primary = {r = 1, g = 0.5, b = 0.5, a = 0},
      secondary = {r = 1, g = 0.5, b = 0.5, a = 0},
      tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
    }
  },
  {
    type = "recipe",
    name = "coal-crushed",
    category = "ore-sorting-t1",
    subgroup = "petrochem-coal",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="coal", amount=1},  
    },
    results=
    {
      {type="item", name="coal-crushed", amount=2},
    },
    icon = "__angelspetrochem__/graphics/icons/coal-crushed.png",
    icon_size = 32,
    order = "a[coal-crushed]",
  },
  {
    type = "recipe",
    name = "solid-coke",
    category = "smelting",
    subgroup = "petrochem-coal",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="coal-crushed", amount=2},
    },
    results=
    {
      {type="item", name="solid-coke", amount=2},
    },
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/solid-coke.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.petrochem.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "b[coal-crushed]",
  },
  {
    type = "recipe",
    name = "solid-coke-sulfur",
    category = "liquifying",
    subgroup = "petrochem-coal",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="coal-crushed", amount=2},
      {type="fluid", name="water-purified", amount=50},
    },
    results=
    {
      {type="item", name="solid-coke", amount=2},
      {type="fluid", name="water-yellow-waste", amount=50},
    },
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/solid-coke.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.petrochem.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "c[solid-coke-sulfur]",
    crafting_machine_tint =
    {
      primary = {r = 1, g = 0.5, b = 0.5, a = 0},
      secondary = {r = 0.9, g = 0.9, b = 0.4, a = 0},
      tertiary = {r = 167/255, g = 75/255, b = 5/255, a = 0/255},
    }
  },
  {
    type = "recipe",
    name = "pellet-coke",
    category = "crafting",
    subgroup = "petrochem-coal",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-coke", amount=5},
    },
    results=
    {
      {type="item", name="pellet-coke", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/pellet-coke.png",
    icon_size = 32,
    order = "e[pellet-coke]",
  },
  --ENRICHED WATER
  {
    type = "recipe",
    name = "angels-water-enrichment-1",
    localised_name = {"recipe-name.angels-water-enrichment", "1", "0", "7.5"},
    category = "advanced-chemistry",
    subgroup = "water-enrichment",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="water-saline", amount=30},
      {type="fluid", name="water-purified", amount=25},
      {type="fluid", name="gas-enriched-hydrogen-sulfide", amount=50, minimum_temperature=95},
    },
    results=
    {
      {type="fluid", name="gas-hydrogen-sulfide", amount=50},
      {type="fluid", name="liquid-water-enriched-1", amount=25, temperature=100},
      {type="fluid", name="water-green-waste", amount=30},
    },
    main_product = "liquid-water-enriched-1",
    icons = angelsmods.functions.create_liquid_recipe_icon({
      angelsmods.functions.create_liquid_fluid_icon(nil, "sww"),
    }, "sww", {
      {
        icon = "__angelsrefining__/graphics/icons/num_1.png",
        icon_size = 32,
        tint = angelsmods.petrochem.number_tint,
      }
    }),
    order = "k[water-enrichment]-a[enriching]-a[1/3]",
  },
  {
    type = "recipe",
    name = "angels-water-enrichment-2",
    localised_name = {"recipe-name.angels-water-enrichment", "2", "7.5", "12.5"},
    category = "advanced-chemistry",
    subgroup = "water-enrichment",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="water-saline", amount=30},
      {type="fluid", name="liquid-water-enriched-1", amount=25, maximum_temperature=30},
      {type="fluid", name="gas-enriched-hydrogen-sulfide", amount=50, minimum_temperature=95},
    },
    results=
    {
      {type="fluid", name="gas-hydrogen-sulfide", amount=50},
      {type="fluid", name="liquid-water-enriched-2", amount=25, temperature=100},
      {type="fluid", name="water-green-waste", amount=30},
    },
    main_product = "liquid-water-enriched-2",
    icons = angelsmods.functions.create_liquid_recipe_icon({
      angelsmods.functions.create_liquid_fluid_icon(nil, "sww"),
    }, "sww", {
      {
        icon = "__angelsrefining__/graphics/icons/num_2.png",
        icon_size = 32,
        tint = angelsmods.petrochem.number_tint,
      }
    }),
    order = "k[water-enrichment]-a[enriching]-b[2/3]",
  },
  {
    type = "recipe",
    name = "angels-water-enrichment-3",
    localised_name = {"recipe-name.angels-water-enrichment", "3", "12.5", "15"},
    category = "advanced-chemistry",
    subgroup = "water-enrichment",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="water-saline", amount=30},
      {type="fluid", name="liquid-water-enriched-2", amount=25, maximum_temperature=30},
      {type="fluid", name="gas-enriched-hydrogen-sulfide", amount=50, minimum_temperature=95},
    },
    results=
    {
      {type="fluid", name="gas-hydrogen-sulfide", amount=50},
      {type="fluid", name="liquid-water-enriched-3", amount=25, temperature=100},
      {type="fluid", name="water-green-waste", amount=30},
    },
    main_product = "liquid-water-enriched-3",
    icons = angelsmods.functions.create_liquid_recipe_icon({
      angelsmods.functions.create_liquid_fluid_icon(nil, "sww"),
    }, "sww", {
      {
        icon = "__angelsrefining__/graphics/icons/num_3.png",
        icon_size = 32,
        tint = angelsmods.petrochem.number_tint,
      }
    }),
    order = "k[water-enrichment]-a[enriching]-c[3/3]",
  },
  {
    type = "recipe",
    name = "angels-water-enriched-cooling-1",
    localised_name = {"recipe-name.angels-water-enriched-cooling", "1"},
    category = mods["angelssmelting"] and "cooling" or "chemistry",
    subgroup = "water-enrichment",
    energy_required = 15,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-water-enriched-1", amount=200, minimum_temperature=26},
      {type="fluid", name="water-purified", amount=100},
    },
    results=
    {
      {type="fluid", name="liquid-water-enriched-1", amount=200, temperature=25},
      {type="fluid", name="steam", amount=100, temperature = 125},
    },
    main_product = "liquid-water-enriched-1",
    icons = angelsmods.functions.create_liquid_recipe_icon(nil, "sww", {
      {
        icon = "__angelsrefining__/graphics/icons/num_1.png",
        icon_size = 32,
        tint = angelsmods.petrochem.number_tint,
      },
      mods["angelssmelting"] and {
        icon = "__angelssmelting__/graphics/icons/liquid-coolant.png",
        icon_size = 32,
      } or nil,
    }),
    order = "k[water-enrichment]-b[cooling]-a[1/3]",
  },
  {
    type = "recipe",
    name = "angels-water-enriched-cooling-2",
    localised_name = {"recipe-name.angels-water-enriched-cooling", "2"},
    category = mods["angelssmelting"] and "cooling" or "chemistry",
    subgroup = "water-enrichment",
    energy_required = 15,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-water-enriched-2", amount=200, minimum_temperature=26},
      {type="fluid", name="water-purified", amount=100},
    },
    results=
    {
      {type="fluid", name="liquid-water-enriched-2", amount=200, temperature=25},
      {type="fluid", name="steam", amount=100, temperature = 125},
    },
    main_product = "liquid-water-enriched-2",
    icons = angelsmods.functions.create_liquid_recipe_icon(nil, "sww", {
      {
        icon = "__angelsrefining__/graphics/icons/num_2.png",
        icon_size = 32,
        tint = angelsmods.petrochem.number_tint,
      },
      mods["angelssmelting"] and {
        icon = "__angelssmelting__/graphics/icons/liquid-coolant.png",
        icon_size = 32,
      } or nil,
    }),
    order = "k[water-enrichment]-b[cooling]-b[2/3]",
  },
  {
    type = "recipe",
    name = "angels-water-enriched-cooling-3",
    localised_name = {"recipe-name.angels-water-enriched-cooling", "3"},
    category = mods["angelssmelting"] and "cooling" or "chemistry",
    subgroup = "water-enrichment",
    energy_required = 15,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-water-enriched-3", amount=200, minimum_temperature=26},
      {type="fluid", name="water-purified", amount=100},
    },
    results=
    {
      {type="fluid", name="liquid-water-enriched-3", amount=200, temperature=25},
      {type="fluid", name="steam", amount=100, temperature = 125},
    },
    main_product = "liquid-water-enriched-3",
    icons = angelsmods.functions.create_liquid_recipe_icon(nil, "sww", {
      {
        icon = "__angelsrefining__/graphics/icons/num_3.png",
        icon_size = 32,
        tint = angelsmods.petrochem.number_tint,
      },
      mods["angelssmelting"] and {
        icon = "__angelssmelting__/graphics/icons/liquid-coolant.png",
        icon_size = 32,
      } or nil,
    }),
    order = "k[water-enrichment]-b[cooling]-c[3/3]",
  },
}
)
