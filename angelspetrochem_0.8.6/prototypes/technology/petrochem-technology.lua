data:extend(
{
  {
    type = "technology",
    name = "angels-fluid-control",
    icon = "__angelspetrochem__/graphics/technology/fluid-splitter-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "basic-chemistry",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "valve-check"
      },
      {
        type = "unlock-recipe",
        recipe = "valve-overflow"
      },
      {
        type = "unlock-recipe",
        recipe = "valve-return"
      },
      {
        type = "unlock-recipe",
        recipe = "valve-underflow"
      },
      {
        type = "unlock-recipe",
        recipe = "valve-converter"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-storage-tank-3"
      },
      -- {
      -- type = "unlock-recipe",
      -- recipe = "fluid-splitter-2-way"
      -- },
      -- {
      -- type = "unlock-recipe",
      -- recipe = "fluid-splitter-3-way"
      -- },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  --CHEMISTRY
  {
    type = "technology",
    name = "basic-chemistry",
    icon = "__angelspetrochem__/graphics/technology/petrochem-tech.png",
    icon_size = 128,
    prerequisites =
    {

    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-electrolyser"
      },
      {
        type = "unlock-recipe",
        recipe = "dirt-water-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "carbon-separation-2"
      },
      {
        type = "unlock-recipe",
        recipe = "catalyst-metal-carrier"
      },
      {
        type = "unlock-recipe",
        recipe = "catalyst-metal-red"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "basic-chemistry-2",
    icon = "__angelspetrochem__/graphics/technology/petrochem-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "basic-chemistry",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "water-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "water-synthesis"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-calcium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "water-gas-shift-1"
      },
      {
        type = "unlock-recipe",
        recipe = "water-gas-shift-2"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-chemical-plant"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "basic-chemistry-3",
    icon = "__angelspetrochem__/graphics/technology/petrochem-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "basic-chemistry-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-electrode"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-electrode-used"
      },
      {
        type = "unlock-recipe",
        recipe = "dirt-water-separation-2"
      },
      {
        type = "unlock-recipe",
        recipe = "water-separation-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-coal-processing",
    icon = "__angelspetrochem__/graphics/technology/coal-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "basic-chemistry"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "coke-purification"
      },
      {
        type = "unlock-recipe",
        recipe = "coal-crushed"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-coke"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-coal-processing-2",
    icon = "__angelspetrochem__/graphics/technology/coal-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-coal-processing",
      "angels-advanced-chemistry-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "coke-purification-2"
      },
      {
        type = "unlock-recipe",
        recipe = "carbon-separation-1"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-coke-sulfur"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-coal-cracking",
    icon = "__angelspetrochem__/graphics/technology/coal-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-coal-processing-2",
      "angels-advanced-chemistry-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pellet-coke"
      },
      {
        type = "unlock-recipe",
        recipe = "coal-cracking-1"
      },
      {
        type = "unlock-recipe",
        recipe = "coal-cracking-2"
      },
      {
        type = "unlock-recipe",
        recipe = "coal-cracking-3"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-sulfur-processing-1",
    icon = "__angelspetrochem__/graphics/technology/sulfur-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "basic-chemistry-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solid-sulfur"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-sulfur-dioxide"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-sulfuric-acid"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-sulfur-processing-2",
    icon = "__angelspetrochem__/graphics/technology/sulfur-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-sulfur-processing-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gas-acid-catalyst"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-hydrofluoric-acid"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-sulfur-dioxide-calcium-sulfate"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-sulfur-processing-3",
    icon = "__angelspetrochem__/graphics/technology/sulfur-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-sulfur-processing-2",
      "angels-nitrogen-processing-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "filter-lime"
      },
      {
        type = "unlock-recipe",
        recipe = "filter-lime-used"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-sulfur-scrubber"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-nitrogen-processing-1",
    icon = "__angelspetrochem__/graphics/technology/nitrogen-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "basic-chemistry-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-air-filter"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-air-filtering"
      },
      {
        type = "unlock-recipe",
        recipe = "air-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-ammonia"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-nitrogen-processing-2",
    icon = "__angelspetrochem__/graphics/technology/nitrogen-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-nitrogen-processing-1",
      "angels-advanced-chemistry-1"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-air-filter-2"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-nitrogen-monoxide"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-nitrogen-dioxide"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-ammonium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-urea"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-nitric-acid"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-nitrogen-processing-3",
    icon = "__angelspetrochem__/graphics/technology/nitrogen-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-nitrogen-processing-2",
      "angels-advanced-chemistry-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gas-melamine"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-hypochlorite"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-monochloramine"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-hydrazine"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-hydrazine"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-nitrogen-processing-4",
    icon = "__angelspetrochem__/graphics/technology/nitrogen-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-nitrogen-processing-3",
      "angels-advanced-chemistry-4",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gas-dinitrogen-tetroxide"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-methylamine"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-dimethylamine"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-dimethylhydrazine"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "chlorine-processing-1",
    icon = "__angelspetrochem__/graphics/technology/chlorine-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "basic-chemistry-2",
      "water-treatment",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "water-saline-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-chlor-methane"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-hydrogen-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-hydrochloric-acid"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "chlorine-processing-2",
    icon = "__angelspetrochem__/graphics/technology/chlorine-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "chlorine-processing-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gas-allylchlorid"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-epichlorhydrin"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-glycerol"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "chlorine-processing-3",
    icon = "__angelspetrochem__/graphics/technology/chlorine-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "chlorine-processing-2",
      "water-treatment-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solid-salt-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-hydrogen-chloride-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-hydrochloric-acid-solid-sodium-sulfate"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-chlorate"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-perchlorate"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-perchloric-acid"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-phosgene"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "sodium-processing",
    icon = "__angelspetrochem__/graphics/technology/sodium-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "basic-chemistry-3",
      "chlorine-processing-3",
      "angels-coal-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-aqueous-sodium-hydroxide"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-aqueous-sodium-hydroxide-reverse"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-hydroxide"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-carbonate"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-carbonate-electrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-cyanide"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-hydroxide-solid-sodium-sulfate"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-sulfate-separation"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  --PETRO CHEMISTRY
  {
    type = "technology",
    name = "oil-gas-extraction",
    icon = "__angelspetrochem__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "basic-chemistry",
      "electronics",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pumpjack"
      },
      {
        type = "unlock-recipe",
        recipe = "separator"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "oil-separation"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-oil-processing",
    icon = "__base__/graphics/technology/oil-processing.png",
    icon_size = 128,
    prerequisites =
    {
      "oil-gas-extraction",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "oil-refinery"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-storage-tank-2"
      },
      {
        type = "unlock-recipe",
        recipe = "oil-refining"
      },
      {
        type = "unlock-recipe",
        recipe = "condensates-oil-refining"
      },
      {
        type = "unlock-recipe",
        recipe = "mineral-oil-lubricant"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-naphtha"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-fuel-oil"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-advanced-oil-processing",
    icon = "__base__/graphics/technology/oil-processing.png",
    icon_size = 128,
    prerequisites =
    {
      "oil-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-oil-refining"
      },
      {
        type = "unlock-recipe",
        recipe = "residual-oil-refining"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "gas-processing",
    icon = "__angelspetrochem__/graphics/technology/gas-refinery-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "oil-gas-extraction",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gas-refinery-small"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-storage-tank-1"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-refining"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-fractioning"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-methane"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-advanced-gas-processing",
    icon = "__angelspetrochem__/graphics/technology/gas-refinery-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "gas-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gas-refinery"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-fractioning-synthesis"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-fractioning-condensates"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-fractioning-residual"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-flare-stack",
    icon = "__angelspetrochem__/graphics/technology/flare-stack.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-fluid-control",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-flare-stack"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-advanced-chemistry-1",
    icon = "__angelspetrochem__/graphics/technology/advanced-chemical-plant-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "oil-gas-extraction",
      "oil-processing",
      "gas-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-electrolyser-2"
      },
      {
        type = "unlock-recipe",
        recipe = "advanced-chemical-plant"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-methanol-catalyst"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-formaldehyde-catalyst"
      },
      {
        type = "unlock-recipe",
        recipe = "catalyst-metal-green"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-advanced-chemistry-2",
    icon = "__angelspetrochem__/graphics/technology/advanced-chemical-plant-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-advanced-chemistry-1",
      "gas-steam-cracking-1",
      "oil-steam-cracking-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-electrolyser-3"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-chemical-plant-2"
      },
      {
        type = "unlock-recipe",
        recipe = "separator-2"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-refinery-small-2"
      },
      {
        type = "unlock-recipe",
        recipe = "oil-refinery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-styrene-catalyst"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-benzene-catalyst"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-ethylbenzene-catalyst"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-advanced-chemistry-3",
    icon = "__angelspetrochem__/graphics/technology/advanced-chemical-plant-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-advanced-chemistry-2",
      "angels-advanced-gas-processing",
      "gas-steam-cracking-2",
      "oil-steam-cracking-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-electrolyser-4"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-chemical-plant-3"
      },
      {
        type = "unlock-recipe",
        recipe = "separator-3"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-refinery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-refinery-small-3"
      },
      {
        type = "unlock-recipe",
        recipe = "oil-refinery-3"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-cracker-3"
      },
      {
        type = "unlock-recipe",
        recipe = "advanced-chemical-plant-2"
      },
      {
        type = "unlock-recipe",
        recipe = "condensates-refining"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-mineral-oil-catalyst"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-polyehtylene-catalyst"
      },
      {
        type = "unlock-recipe",
        recipe = "catalyst-metal-blue"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-advanced-chemistry-4",
    icon = "__angelspetrochem__/graphics/technology/advanced-chemical-plant-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-advanced-chemistry-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-chemical-plant-4"
      },
      {
        type = "unlock-recipe",
        recipe = "separator-4"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-refinery-3"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-refinery-small-4"
      },
      {
        type = "unlock-recipe",
        recipe = "oil-refinery-4"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-cracker-4"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-phenol-catalyst"
      },
      {
        type = "unlock-recipe",
        recipe = "cumene-process"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-bisphenol-a"
      },
      {
        type = "unlock-recipe",
        recipe = "catalyst-metal-yellow"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "gas-synthesis",
    icon = "__angelspetrochem__/graphics/technology/synthesis-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-advanced-chemistry-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gas-synthesis-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-synthesis-reforming"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-synthesis-methanation"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-synthesis-methanol"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-naphtha-catalyst"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-synthesis"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "gas-steam-cracking-1",
    icon = "__angelspetrochem__/graphics/technology/steam-cracker-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "gas-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-cracker"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-cracking-methane"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-cracking-ethane"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-cracking-butane"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-propene-synthesis"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "gas-steam-cracking-2",
    icon = "__angelspetrochem__/graphics/technology/steam-cracker-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "gas-steam-cracking-1",
      "angels-advanced-chemistry-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-cracker-2"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-cracking-gas-residual"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-toluene-from-benzene"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "oil-steam-cracking-1",
    icon = "__angelspetrochem__/graphics/technology/steam-cracker-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "oil-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-cracker"
      },
      {
        type = "unlock-recipe",
        recipe = "catalyst-steam-cracking-butane"
      },
      {
        type = "unlock-recipe",
        recipe = "catalyst-steam-cracking-naphtha"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "oil-steam-cracking-2",
    icon = "__angelspetrochem__/graphics/technology/steam-cracker-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "oil-steam-cracking-1",
      "angels-advanced-chemistry-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-cracker-2"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-cracking-naphtha"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-cracking-mineral-oil"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-cracking-fuel-oil"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-cracking-oil-residual"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-toluene-from-naphtha"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-electric-boiler",
    icon = "__angelspetrochem__/graphics/technology/electric-boiler-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "oil-steam-cracking-1",
      "gas-steam-cracking-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-electric-boiler"
      },
    },
    unit =
    {
      count = 30,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  --SOLIDS
  {
    type = "technology",
    name = "plastic-1",
    icon = "__angelspetrochem__/graphics/technology/plastic-1-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-advanced-chemistry-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solid-plastic"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-plastic-1"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "plastic-2",
    icon = "__angelspetrochem__/graphics/technology/plastic-2-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "plastic-1",
      "angels-advanced-chemistry-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-plastic-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "plastic-3",
    icon = "__angelspetrochem__/graphics/technology/plastic-3-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "plastic-2",
      "angels-advanced-chemistry-4",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-plastic-3"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "resin-1",
    icon = "__angelspetrochem__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-advanced-chemistry-1",
      "angels-nitrogen-processing-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solid-resin"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-resin-1"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "resin-2",
    icon = "__angelspetrochem__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "resin-1",
      "angels-advanced-chemistry-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-resin-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "resin-3",
    icon = "__angelspetrochem__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "resin-2",
      "angels-advanced-chemistry-4",
      "chlorine-processing-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-resin-3"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "rubber",
    icon = "__angelspetrochem__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "gas-steam-cracking-1",
      "angels-advanced-chemistry-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-rubber-1"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-rubber"
      },
    },
    unit =
    {
      count = 30,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  --ROCKET FUEL
  {
    type = "technology",
    name = "angels-rocket-fuel",
    icon = "__base__/graphics/technology/rocket-silo.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-nitrogen-processing-4",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rocket-oxidizer-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-fuel-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-fuel"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  --WEAPONARY
  {
    type = "technology",
    name = "rocket-booster-1",
    icon = "__angelspetrochem__/graphics/technology/booster-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-nitrogen-processing-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solid-ammonium-nitrate"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-booster-1"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "rocket-booster-2",
    icon = "__angelspetrochem__/graphics/technology/booster-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "rocket-booster-1",
      "angels-nitrogen-processing-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solid-ammonium-perchlorate"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-booster-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-explosives-1",
    icon = "__angelspetrochem__/graphics/technology/tnt-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "explosives",
      "angels-nitrogen-processing-2",
      "angels-sulfur-processing-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solid-nitroglycerin"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-explosives-2",
    icon = "__angelspetrochem__/graphics/technology/tnt-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-explosives-1",
      "angels-advanced-chemistry-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solid-trinitrotoluene"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
}
)
