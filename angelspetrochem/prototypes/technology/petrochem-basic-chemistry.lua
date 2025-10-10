data:extend({
  --BASIC CHEMISTRY
  {
    type = "technology",
    name = "angels-basic-chemistry",
    icons = angelsmods.functions.create_gas_tech_icon({ { 105, 113, 090 }, { 088, 113, 075 }, { 070, 090, 060 } }),
    prerequisites = {
      "automation",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquifier",
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
        recipe = "angels-dirt-water-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-carbon-dioxide",
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
    name = "angels-basic-chemistry-2",
    icons = angelsmods.functions.create_gas_tech_icon({ { 105, 113, 090 }, { 088, 113, 075 }, { 070, 090, 060 } }),
    prerequisites = {
      "angels-basic-chemistry",
      "angels-water-treatment",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-water-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "water-synthesis",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-gas-shift-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-gas-shift-2",
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
    name = "angels-basic-chemistry-3",
    icons = angelsmods.functions.create_gas_tech_icon({ { 105, 113, 090 }, { 088, 113, 075 }, { 070, 090, 060 } }),
    prerequisites = {
      "angels-basic-chemistry-2",
      "angels-coal-processing",
      "fluid-handling",
      "angels-ore-crushing",
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
        recipe = "angels-dirt-water-separation-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-water-separation-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-catalyst-metal-carrier",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-catalyst-metal-red",
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
    name = "angels-water-chemistry-1",
    icons = angelsmods.functions.create_gas_tech_icon("OHH"),
    prerequisites = {
      "angels-sulfur-processing-2",
      "angels-water-treatment-4",
      "angels-advanced-chemistry-4",
      mods["angelssmelting"] and "angels-cooling" or "angels-basic-chemistry-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-gas-enriched-hydrogen-sulfide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-water-semiheavy-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-water-semiheavy-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-water-semiheavy-3",
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
    name = "angels-water-chemistry-2",
    icons = angelsmods.functions.create_gas_tech_icon("OHH"),
    prerequisites = {
      "angels-water-chemistry-1",
      "angels-electric-boiler-2",
      "angels-basic-chemistry-3",
      "utility-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-water-heavy",
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
      "angels-basic-chemistry",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-coal-crushed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-coke",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-carbon",
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
      "angels-basic-chemistry-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-gas-carbon-monoxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-coke-sulfur",
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
      "angels-chlorine-processing-1",
      "angels-nitrogen-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-coke-purification-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-coke"
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
        recipe = "angels-coal-cracking-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-coal-cracking-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-coal-cracking-3",
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
      "angels-water-treatment-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-gas-sulfur-dioxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-sulfuric-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-sulfur-dioxide-calcium-sulfate",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-hydrofluoric-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-hydrogen-fluoride",
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
      "angels-gas-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-gas-acid-catalyst",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sulfur",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-hydrogen-fluoride-dissolving",
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
      "angels-slag-processing-1",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-filter-lime",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sulfur-air-scrubbing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-filter-lime-used-cleaning",
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
      "angels-basic-chemistry",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-air-filter",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-compressed-air",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-air-separation",
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
      "angels-water-treatment-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-air-filter-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-ammonia",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium-nitrate-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-nitrogen-monoxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-nitrogen-dioxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-urea",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-nitric-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sodium-nitrate-acid-processing",
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
      "angels-chlorine-processing-2",
      "angels-sodium-processing-1",
      "flammables",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-air-filter-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-melamine",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium-hypochlorite",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-monochloramine",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-hydrazine",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-fuel-hydrazine",
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
        recipe = "angels-gas-refinery-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-dinitrogen-tetroxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-methylamine",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-dimethylamine",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-dimethylhydrazine",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-ammonium-chloride",
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
    name = "angels-chlorine-processing-1",
    icons = angelsmods.functions.create_gas_tech_icon("ClClCl"),
    prerequisites = {
      "angels-basic-chemistry-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-water-saline-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-hydrogen-chloride",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-hydrochloric-acid",
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
    name = "angels-chlorine-processing-2",
    icons = angelsmods.functions.create_gas_tech_icon("ClClCl"),
    prerequisites = {
      "angels-chlorine-processing-1",
      "angels-steam-cracking-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-gas-chlor-methane",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-allylchlorid",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-epichlorhydrin",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-calcium-chloride",
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
    name = "angels-chlorine-processing-3",
    icons = angelsmods.functions.create_gas_tech_icon("ClClCl"),
    prerequisites = {
      "angels-chlorine-processing-2",
      "angels-water-treatment-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-salt-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-gas-hydrogen-chloride-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-hydrochloric-acid-solid-sodium-sulfate",
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
    name = "angels-chlorine-processing-4",
    icons = angelsmods.functions.create_gas_tech_icon("ClClCl"),
    prerequisites = {
      "angels-chlorine-processing-3",
      "angels-sodium-processing-1",
      "angels-advanced-chemistry-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium-chlorate",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium-perchlorate",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-perchloric-acid",
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
    name = "angels-sodium-processing-1",
    icon = "__angelspetrochemgraphics__/graphics/technology/sodium-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-sulfur-processing-1",
      "chemical-science-pack",
      "angels-chlorine-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium-sulfate",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium-sulfate-separation",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium-hydroxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-aqueous-sodium-hydroxide",
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
    name = "angels-sodium-processing-2",
    icon = "__angelspetrochemgraphics__/graphics/technology/sodium-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-chlorine-processing-3",
      "angels-coal-processing-3",
      "angels-nitrogen-processing-2",
      "production-science-pack",
      "angels-sodium-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-aqueous-sodium-hydroxide-reverse",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium-carbonate",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium-carbonate-electrolysis",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium-cyanide",
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
