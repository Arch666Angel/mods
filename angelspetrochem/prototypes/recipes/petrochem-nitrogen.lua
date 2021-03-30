data:extend(
  {
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
        {type = "fluid", name = "gas-compressed-air", amount = 200}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {"gas-compressed-air"},
        {{180, 180, 225}, {150, 150, 187}, {120, 120, 150}}
      ),
      order = "a"
    },
    {
      type = "recipe",
      name = "air-separation",
      category = "chemistry",
      subgroup = "petrochem-nitrogen",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-compressed-air", amount = 100}
      },
      results = {
        {type = "fluid", name = "gas-nitrogen", amount = 50},
        {type = "fluid", name = "gas-oxygen", amount = 50}
        --{type="fluid", name="gas-inert", amount=1},
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/nitrogen.png", 64},
          {"__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72}
        },
        "nno"
      ),
      order = "b[air]-a[separation]"
    },
    {
      type = "recipe",
      name = "solid-sodium-nitrate-processing",
      category = "chemistry",
      subgroup = "petrochem-nitrogen",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "solid-sodium-nitrate", amount = 5},
        {type = "fluid", name = "gas-compressed-air", amount = 60}
      },
      results = {
        {type = "fluid", name = "gas-nitrogen-monoxide", amount = 40},
        {type = "fluid", name = "gas-nitrogen-dioxide", amount = 20}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/nitric-oxide.png", 72},
          {"__angelspetrochem__/graphics/icons/molecules/nitrogen-dioxide.png", 72}
        },
        "nno"
      ),
      order = "b[air]-b[nitrate-processing]"
    },
    {
      type = "recipe",
      name = "gas-nitrogen-monoxide",
      category = "chemistry",
      subgroup = "petrochem-nitrogen",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-ammonia", amount = 60},
        {type = "fluid", name = "gas-oxygen", amount = 40},
        {type = "item", name = "catalyst-metal-green", amount = 1}
      },
      results = {
        {type = "fluid", name = "gas-nitrogen-monoxide", amount = 100},
        {type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/nitric-oxide.png", 72}
        },
        "noo"
      ),
      order = "c[gas-nitrogen-dioxide]"
    },
    {
      type = "recipe",
      name = "gas-nitrogen-dioxide",
      category = "chemistry",
      subgroup = "petrochem-nitrogen",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-oxygen", amount = 60},
        {type = "fluid", name = "gas-nitrogen-monoxide", amount = 40}
      },
      results = {
        {type = "fluid", name = "gas-nitrogen-dioxide", amount = 100}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/nitrogen-dioxide.png", 72}
        },
        "noo"
      ),
      order = "d"
    },
    {
      type = "recipe",
      name = "gas-ammonia",
      category = "chemistry",
      subgroup = "petrochem-nitrogen",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-hydrogen", amount = 50},
        {type = "fluid", name = "gas-nitrogen", amount = 50},
        {type = "item", name = "catalyst-metal-red", amount = 1} --Fe
      },
      results = {
        {type = "fluid", name = "gas-ammonia", amount = 100},
        {type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/ammonia.png", 72}
        },
        "nhh"
      ),
      order = "e"
    },
    {
      type = "recipe",
      name = "gas-ammonium-chloride",
      category = "chemistry",
      subgroup = "petrochem-nitrogen",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-ammonia", amount = 50},
        {type = "fluid", name = "gas-hydrogen-chloride", amount = 50}
      },
      results = {
        {type = "fluid", name = "gas-ammonium-chloride", amount = 100}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/ammonium-chloride.png", 72}
        },
        "nhl"
      ),
      order = "f"
    },
    {
      type = "recipe",
      name = "gas-urea",
      category = "chemistry",
      subgroup = "petrochem-nitrogen",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-ammonia", amount = 60},
        {type = "fluid", name = "gas-carbon-dioxide", amount = 40}
      },
      results = {
        {type = "fluid", name = "gas-urea", amount = 80},
        {type = "fluid", name = "water-purified", amount = 20}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/urea.png", 72},
          "water-purified"
        },
        "cno"
      ),
      order = "g"
    },
    {
      type = "recipe",
      name = "liquid-nitric-acid",
      category = "chemistry",
      subgroup = "petrochem-nitrogen",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-nitrogen-dioxide", amount = 100},
        {type = "fluid", name = "water-purified", amount = 50}
      },
      results = {
        {type = "fluid", name = "liquid-nitric-acid", amount = 50}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_liquid_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/nitric-acid.png", 72}
        },
        "noh",
        {
          {"__angelspetrochem__/graphics/icons/molecules/nitrogen-dioxide.png", 72}
        }
      ),
      order = "h[nitric-acid]-a[water-purified]"
    },
    {
      type = "recipe",
      name = "sodium-nitrate-acid-processing",
      category = "chemistry",
      subgroup = "petrochem-nitrogen",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "solid-sodium-nitrate", amount = 5},
        {type = "fluid", name = "liquid-sulfuric-acid", amount = 40}
      },
      results = {
        {type = "fluid", name = "liquid-nitric-acid", amount = 40}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_liquid_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/nitric-acid.png", 72}
        },
        "noh",
        {
          "solid-sodium-nitrate"
        }
      ),
      order = "h[nitric-acid]-b[sulfuric-acid]"
    },
    {
      type = "recipe",
      name = "gas-melamine",
      category = "chemistry",
      subgroup = "petrochem-nitrogen",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-urea", amount = 100},
        {type = "item", name = "catalyst-metal-blue", amount = 1} --Pl
      },
      results = {
        {type = "fluid", name = "gas-melamine", amount = 100},
        {type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/melamine.png", 72}
        },
        "chn"
      ),
      order = "i"
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
        {type = "item", name = "solid-sodium-hypochlorite", amount = 5},
        {type = "fluid", name = "gas-ammonia", amount = 250}
      },
      results = {
        {type = "fluid", name = "gas-monochloramine", amount = 50}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/chloramine.png", 72}
        },
        "nhl"
      ),
      order = "a"
    },
    {
      type = "recipe",
      name = "gas-hydrazine",
      category = "chemistry",
      subgroup = "petrochem-rocket",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-monochloramine", amount = 50},
        {type = "fluid", name = "gas-ammonia", amount = 200},
        {type = "item", name = "catalyst-metal-green", amount = 1} --Al
      },
      results = {
        {type = "fluid", name = "gas-hydrazine", amount = 100},
        {type = "fluid", name = "gas-hydrogen-chloride", amount = 100},
        {type = "item", name = "catalyst-metal-carrier", amount = 1, catalyst_amount = 1}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/hydrazine.png", 72}
        },
        "nhh"
      ),
      order = "b"
    },
    {
      type = "recipe",
      name = "gas-methylamine",
      category = "chemistry",
      subgroup = "petrochem-rocket",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-methanol", amount = 50},
        {type = "fluid", name = "gas-ammonia", amount = 250}
      },
      results = {
        {type = "fluid", name = "gas-methylamine", amount = 200},
        {type = "fluid", name = "water-purified", amount = 50}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/methylamine.png", 72},
          "water-purified"
        },
        "chn"
      ),
      order = "c"
    },
    {
      type = "recipe",
      name = "gas-dimethylamine",
      category = "chemistry",
      subgroup = "petrochem-rocket",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-methylamine", amount = 200},
        {type = "fluid", name = "gas-methanol", amount = 50}
      },
      results = {
        {type = "fluid", name = "gas-dimethylamine", amount = 200},
        {type = "fluid", name = "water-purified", amount = 50}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/dimethylamine.png", 72},
          "water-purified"
        },
        "chn"
      ),
      order = "d"
    },
    {
      type = "recipe",
      name = "gas-dimethylhydrazine",
      category = "chemistry",
      subgroup = "petrochem-rocket",
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-dimethylamine", amount = 200},
        {type = "fluid", name = "gas-monochloramine", amount = 50}
      },
      results = {
        {type = "fluid", name = "gas-dimethylhydrazine", amount = 200},
        {type = "fluid", name = "water-purified", amount = 50}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/dimethylhydrazine.png", 72},
          "water-purified"
        },
        "chn"
      ),
      order = "e"
    },
    {
      type = "recipe",
      name = "gas-dinitrogen-tetroxide",
      category = "liquifying",
      subgroup = "petrochem-rocket",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-nitrogen-dioxide", amount = 100}
      },
      results = {
        {type = "fluid", name = "gas-dinitrogen-tetroxide", amount = 50}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/dinitrogen-tetroxide.png", 72}
        },
        "noo"
      ),
      order = "f"
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
        {type = "fluid", name = "gas-ammonia", amount = 100},
        {type = "fluid", name = "liquid-nitric-acid", amount = 100}
      },
      results = {
        {type = "item", name = "solid-ammonium-nitrate", amount = 3}
      },
      icon_size = 32,
      order = "g"
    },
    {
      type = "recipe",
      name = "solid-ammonium-perchlorate",
      category = "chemistry",
      subgroup = "petrochem-rocket",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-ammonia", amount = 100},
        {type = "fluid", name = "liquid-perchloric-acid", amount = 100}
      },
      results = {
        {type = "item", name = "solid-ammonium-perchlorate", amount = 3},
        {type = "item", name = "solid-salt", amount = 1}
      },
      icon_size = 32,
      main_product = "solid-ammonium-perchlorate",
      order = "h"
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
        {type = "fluid", name = "liquid-nitric-acid", amount = 10},
        {type = "fluid", name = "gas-dinitrogen-tetroxide", amount = 10}
      },
      results = {
        {type = "item", name = "rocket-oxidizer-capsule", amount = 2}
      },
      icon_size = 32,
      order = "ha"
    },
    {
      type = "recipe",
      name = "rocket-fuel-capsule",
      category = "chemistry",
      subgroup = "petrochem-fuel",
      energy_required = 4.5,
      enabled = false,
      ingredients = {
        {type = "fluid", name = "gas-dimethylhydrazine", amount = 30},
        {type = "fluid", name = "gas-hydrazine", amount = 30}
      },
      results = {
        {type = "item", name = "rocket-fuel-capsule", amount = 2}
      },
      icon_size = 32,
      order = "hb"
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
        {type = "item", name = "solid-ammonium-nitrate", amount = 3},
        {type = "item", name = "pipe", amount = 1}
      },
      results = {
        {type = "item", name = "rocket-booster", amount = 2}
      },
      icon_size = 32,
      order = "ia"
    },
    {
      type = "recipe",
      name = "rocket-booster-2",
      category = "advanced-crafting",
      subgroup = "petrochem-fuel",
      energy_required = 1,
      enabled = false,
      ingredients = {
        {type = "item", name = "solid-ammonium-perchlorate", amount = 3},
        {type = "item", name = "pipe", amount = 1}
      },
      results = {
        {type = "item", name = "rocket-booster", amount = 3}
      },
      icon_size = 32,
      order = "ib"
    }
  }
)
