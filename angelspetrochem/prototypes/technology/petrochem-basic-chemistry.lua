data:extend({
  --BASIC CHEMISTRY
  {
    type = "technology",
    name = "basic-chemistry",
    icons = angelsmods.functions.create_gas_tech_icon({ { 105, 113, 090 }, { 088, 113, 075 }, { 070, 090, 060 } }),
    prerequisites = {
      "automation",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "liquifier",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-electrolyser",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-chemical-plant",
      },
      {
        type = "unlock-recipe",
        recipe = "dirt-water-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "carbon-separation-2",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "basic-chemistry-2",
    icons = angelsmods.functions.create_gas_tech_icon({ { 105, 113, 090 }, { 088, 113, 075 }, { 070, 090, 060 } }),
    prerequisites = {
      "basic-chemistry",
      "water-treatment",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "water-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "water-synthesis",
      },
      {
        type = "unlock-recipe",
        recipe = "water-gas-shift-1",
      },
      {
        type = "unlock-recipe",
        recipe = "water-gas-shift-2",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "basic-chemistry-3",
    icons = angelsmods.functions.create_gas_tech_icon({ { 105, 113, 090 }, { 088, 113, 075 }, { 070, 090, 060 } }),
    prerequisites = {
      "basic-chemistry-2",
      "angels-coal-processing",
      "fluid-handling",
      "ore-crushing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-electrode",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-electrode-used",
      },
      {
        type = "unlock-recipe",
        recipe = "dirt-water-separation-2",
      },
      {
        type = "unlock-recipe",
        recipe = "water-separation-2",
      },
      {
        type = "unlock-recipe",
        recipe = "catalyst-metal-carrier",
      },
      {
        type = "unlock-recipe",
        recipe = "catalyst-metal-red",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "water-chemistry-1",
    icons = angelsmods.functions.create_gas_tech_icon("OHH"),
    prerequisites = {
      "angels-sulfur-processing-2",
      "water-treatment-4",
      "angels-advanced-chemistry-4",
      mods["angelssmelting"] and "angels-cooling" or "basic-chemistry-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-hydrogen-sulfide-enrichment",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-enrichment-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-enrichment-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-enrichment-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-enriched-cooling-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-enriched-cooling-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-enriched-cooling-3",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "water-chemistry-2",
    icons = angelsmods.functions.create_gas_tech_icon("OHH"),
    prerequisites = {
      "water-chemistry-1",
      "angels-electric-boiler-2",
      "basic-chemistry-3",
      "utility-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-heavy-water-extraction",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-heavy-water-cooling",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-heavy-water-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-heavy-water-separation-2",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-coal-processing",
    icons = angelsmods.functions.create_gas_tech_icon({ { 067, 067, 067 }, { 056, 056, 056 }, { 045, 045, 045 } }),
    prerequisites = {
      "basic-chemistry",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "coal-crushed",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-coke",
      },
      {
        type = "unlock-recipe",
        recipe = "coke-purification",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-coal-processing-2",
    icons = angelsmods.functions.create_gas_tech_icon({ { 067, 067, 067 }, { 056, 056, 056 }, { 045, 045, 045 } }),
    prerequisites = {
      "angels-coal-processing",
      "basic-chemistry-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "carbon-separation-1",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-coke-sulfur",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-coal-processing-3",
    icons = angelsmods.functions.create_gas_tech_icon({ { 067, 067, 067 }, { 056, 056, 056 }, { 045, 045, 045 } }),
    prerequisites = {
      "angels-coal-processing-2",
      "chlorine-processing-1",
      "angels-nitrogen-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "coke-purification-2",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-coal-cracking",
    icons = angelsmods.functions.create_gas_tech_icon({ { 067, 067, 067 }, { 056, 056, 056 }, { 045, 045, 045 } }),
    prerequisites = {
      "angels-coal-processing-3",
      "angels-advanced-chemistry-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "pellet-coke",
      },
      {
        type = "unlock-recipe",
        recipe = "coal-cracking-1",
      },
      {
        type = "unlock-recipe",
        recipe = "coal-cracking-2",
      },
      {
        type = "unlock-recipe",
        recipe = "coal-cracking-3",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-sulfur-processing-1",
    icons = angelsmods.functions.create_gas_tech_icon("SSS"),
    prerequisites = {
      "water-treatment-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "gas-sulfur-dioxide",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-sulfuric-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-sulfur-dioxide-calcium-sulfate",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-hydrofluoric-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-hydrogen-fluoride",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-sulfur-processing-2",
    icons = angelsmods.functions.create_gas_tech_icon("SSF"),
    prerequisites = {
      "angels-sulfur-processing-1",
      "angels-advanced-chemistry-1",
      "gas-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "gas-acid-catalyst",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sulfur",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-hydrogen-fluoride",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-sulfur-processing-3",
    icons = angelsmods.functions.create_gas_tech_icon("SSS"),
    prerequisites = {
      "angels-sulfur-processing-2",
      "angels-nitrogen-processing-1",
      "slag-processing-1",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "filter-lime",
      },
      {
        type = "unlock-recipe",
        recipe = "filter-lime-used",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sulfur-scrubber",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-sulfur-processing-4",
    icons = angelsmods.functions.create_gas_tech_icon("SSS"),
    prerequisites = {
      "angels-sulfur-processing-3",
    },
    effects = {},
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-nitrogen-processing-1",
    icons = angelsmods.functions.create_gas_tech_icon("NNN"),
    prerequisites = {
      "basic-chemistry",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-air-filter",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-air-filtering",
      },
      {
        type = "unlock-recipe",
        recipe = "air-separation",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-nitrogen-processing-2",
    icons = angelsmods.functions.create_gas_tech_icon("NNN"),
    prerequisites = {
      "angels-nitrogen-processing-1",
      "angels-sulfur-processing-1",
      "angels-advanced-chemistry-1",
      "water-treatment-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-air-filter-2",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-ammonia",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-nitrate-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-nitrogen-monoxide",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-nitrogen-dioxide",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-urea",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-nitric-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "sodium-nitrate-acid-processing",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-nitrogen-processing-3",
    icons = angelsmods.functions.create_gas_tech_icon("NNN"),
    prerequisites = {
      "angels-nitrogen-processing-2",
      "angels-advanced-chemistry-3",
      "chlorine-processing-2",
      "sodium-processing-1",
      "flammables",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-air-filter-3",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-melamine",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-hypochlorite",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-monochloramine",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-hydrazine",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-hydrazine",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-nitrogen-processing-4",
    icons = angelsmods.functions.create_gas_tech_icon("NNN"),
    prerequisites = {
      "angels-nitrogen-processing-3",
      "angels-advanced-chemistry-5",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "gas-refinery-4",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-dinitrogen-tetroxide",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-methylamine",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-dimethylamine",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-dimethylhydrazine",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-ammonium-chloride",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "chlorine-processing-1",
    icons = angelsmods.functions.create_gas_tech_icon("ClClCl"),
    prerequisites = {
      "basic-chemistry-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "water-saline-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-hydrogen-chloride",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-hydrochloric-acid",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "chlorine-processing-2",
    icons = angelsmods.functions.create_gas_tech_icon("ClClCl"),
    prerequisites = {
      "chlorine-processing-1",
      "steam-cracking-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "gas-chlor-methane",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-allylchlorid",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-epichlorhydrin",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-calcium-chloride",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        --{type = "item", name = "chemical-science-pack", amount = 1}
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "chlorine-processing-3",
    icons = angelsmods.functions.create_gas_tech_icon("ClClCl"),
    prerequisites = {
      "chlorine-processing-2",
      "water-treatment-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-salt-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-hydrogen-chloride-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-hydrochloric-acid-solid-sodium-sulfate",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-phosgene",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "chlorine-processing-4",
    icons = angelsmods.functions.create_gas_tech_icon("ClClCl"),
    prerequisites = {
      "chlorine-processing-3",
      "sodium-processing-1",
      "angels-advanced-chemistry-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-chlorate",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-perchlorate",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-perchloric-acid",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "sodium-processing-1",
    icon = "__angelspetrochemgraphics__/graphics/technology/sodium-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-sulfur-processing-1",
      "chemical-science-pack",
      "chlorine-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-hydroxide-solid-sodium-sulfate",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-sulfate-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-hydroxide",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-aqueous-sodium-hydroxide",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "sodium-processing-2",
    icon = "__angelspetrochemgraphics__/graphics/technology/sodium-tech.png",
    icon_size = 128,
    prerequisites = {
      "chlorine-processing-3",
      "angels-coal-processing-3",
      "angels-nitrogen-processing-2",
      "production-science-pack",
      "sodium-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "liquid-aqueous-sodium-hydroxide-reverse",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-carbonate",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-carbonate-electrolysis",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-cyanide",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
})
