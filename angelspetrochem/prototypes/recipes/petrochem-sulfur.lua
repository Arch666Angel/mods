data:extend(
  {
    --SULFUR
    {
      type = "recipe",
      name = "gas-acid-catalyst",
      category = "advanced-chemistry",
      subgroup = "petrochem-sulfur",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-acid", amount = 100},
        {type = "item", name = "catalyst-metal-green", amount = 1} --Al
      },
      results = {
        {type = "fluid", name = "gas-hydrogen-sulfide", amount = 60},
        {type = "fluid", name = "gas-carbon-dioxide", amount = 20},
        {type = "fluid", name = "gas-hydrogen-fluoride", amount = 20},
        {type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72},
          {"__angelspetrochem__/graphics/icons/molecules/hydrogen-sulfide.png", 72},
          {"__angelspetrochem__/graphics/icons/molecules/hydrofluoric-acid.png", 72}
        },
        "shh"
      ),
      order = "a[gas-acid-catalyst]"
    },
    {
      type = "recipe",
      name = "solid-sulfur",
      category = "chemistry",
      subgroup = "petrochem-sulfur",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-hydrogen-sulfide", amount = 60},
        {type = "fluid", name = "gas-oxygen", amount = 40}
      },
      results = {
        {type = "item", name = "sulfur", amount = 3}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/solid-sulfur.png", 32}
        },
        "sss"
      ),
      order = "b[solid-sulfur]"
    },
    {
      type = "recipe",
      name = "gas-sulfur-dioxide",
      category = "chemistry",
      subgroup = "petrochem-sulfur",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "sulfur", amount = 1},
        {type = "fluid", name = "gas-oxygen", amount = 60}
      },
      results = {
        {type = "fluid", name = "gas-sulfur-dioxide", amount = 60}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/sulfur-dioxide.png", 72}
        },
        "soo"
      ),
      order = "ca[gas-sulfur-dioxide]"
    },
    {
      type = "recipe",
      name = "gas-sulfur-dioxide-calcium-sulfate",
      category = "liquifying",
      subgroup = "petrochem-sulfur",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "solid-calcium-sulfate", amount = 2},
        {type = "fluid", name = "water-purified", amount = 50}
      },
      results = {
        {type = "fluid", name = "gas-sulfur-dioxide", amount = 50},
        {type = "item", name = "angels-void", amount = 1}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/sulfur-dioxide.png", 72}
        },
        "soo"
      ),
      order = "cb[gas-sulfur-dioxide-calcium-sulfate]"
    },
    {
      type = "recipe",
      name = "liquid-sulfuric-acid",
      category = "chemistry",
      subgroup = "petrochem-sulfur",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-sulfur-dioxide", amount = 90},
        {type = "fluid", name = "water-purified", amount = 40}
      },
      results = {
        {type = "fluid", name = "liquid-sulfuric-acid", amount = 60}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_liquid_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/sulfuric-acid.png", 72}
        },
        "sho"
      ),
      order = "d[liquid-sulfuric-acid]"
    },
    {
      type = "recipe",
      name = "liquid-hydrofluoric-acid",
      category = "chemistry",
      subgroup = "petrochem-sulfur",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "fluorite-ore", amount = 5},
        {type = "fluid", name = "sulfuric-acid", amount = 50}
      },
      results = {
        {type = "fluid", name = "liquid-hydrofluoric-acid", amount = 50},
        {type = "item", name = "solid-calcium-sulfate", amount = 1}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_liquid_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/hydrofluoric-acid.png", 72}
        },
        "fhh",
        {
          "fluorite-ore"
        }
      ),
      order = "e[liquid-hydrofluoric-acid]-a"
    },
    {
      type = "recipe",
      name = "liquid-hydrogen-fluoride",
      localised_name = {"recipe-name.liquid-hydrogen-fluoride"},
      category = "chemistry",
      subgroup = "petrochem-sulfur",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-hydrogen-fluoride", amount = 90},
        {type = "fluid", name = "water-purified", amount = 40}
      },
      results = {
        {type = "fluid", name = "liquid-hydrofluoric-acid", amount = 60},
      },
      main_product = "liquid-hydrofluoric-acid",
      always_show_products = true,
      show_amount_in_title = false,
      icons = angelsmods.functions.create_liquid_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/hydrofluoric-acid.png", 72}
        },
        "fhh",
        {
          "water-purified"
        }
      ),
      order = "e[liquid-hydrofluoric-acid]-b"
    },
    {
      type = "recipe",
      name = "gas-hydrogen-fluoride",
      localised_name = {"recipe-name.gas-hydrogen-fluoride"},
      category = "chemistry",
      subgroup = "petrochem-sulfur",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "liquid-hydrofluoric-acid", amount = 50},
      },
      results = {
        {type = "fluid", name = "gas-hydrogen-fluoride", amount = 55},
        {type = "fluid", name = "water-greenyellow-waste", amount = 50}
      },
      main_product = "gas-hydrogen-fluoride",
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/hydrofluoric-acid.png", 72}
        },
        "fhh"
      ),
      order = "e[liquid-hydrofluoric-acid]-c"
    },
    {
      type = "recipe",
      name = "filter-lime",
      category = "crafting",
      subgroup = "petrochem-catalysts",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "filter-frame", amount = 1},
        {type = "item", name = "stone-crushed", amount = 5}
      },
      results = {
        {type = "item", name = "filter-lime", amount = 1}
      },
      --icon = "__angelspetrochem__/graphics/icons/inter-chemistry-10.png",
      icon_size = 32,
      order = "b[filter-lime]"
    },
    {
      type = "recipe",
      name = "angels-sulfur-scrubber",
      category = "petrochem-air-filtering",
      subgroup = "petrochem-sulfur",
      energy_required = 10,
      enabled = false,
      ingredients = {
        {type = "item", name = "filter-lime", amount = 1},
        {type = "fluid", name = "water", amount = 20}
      },
      results = {
        {type = "item", name = "filter-lime-used", amount = 1},
        {type = "fluid", name = "water-yellow-waste", amount = 20}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/solid-sulfur.png", 32}
        },
        "sss"
      ),
      order = "g"
    },
    {
      type = "recipe",
      name = "filter-lime-used",
      category = "liquifying",
      subgroup = "petrochem-sulfur",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "filter-lime-used", amount = 1}
      },
      results = {
        {type = "fluid", name = "gas-acid", amount = 20},
        {type = "item", name = "filter-frame", amount = 1}
      },
      main_product = "gas-acid",
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(nil, "sss"),
      order = "h"
    },
    {
      type = "recipe",
      name = "angels-hydrogen-sulfide-enrichment",
      localised_name = {"recipe-name.angels-hydrogen-sulfide-enrichment"},
      category = "steam-cracking",
      subgroup = "petrochem-sulfur",
      energy_required = 2.5,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "steam", amount = 50, minimum_temperature = 125, maximum_temperature = 165},
        {type = "fluid", name = "gas-hydrogen-sulfide", amount = 50}
      },
      results = {
        {type = "fluid", name = "water-purified", amount = 50},
        {type = "fluid", name = "gas-enriched-hydrogen-sulfide", amount = 50, temperature = 100}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/hydrogen-sulfide.png", 72}
        },
        "sww"
      ),
      order = "i[enriched-hydrogen-sulfide]-a[enrichment]"
    }
  }
)
