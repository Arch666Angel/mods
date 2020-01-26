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
        recipe = "valve-converter"
      },
	  {
        type = "unlock-recipe",
        recipe = "fluid-splitter-2-way"
      },
	  {
        type = "unlock-recipe",
        recipe = "fluid-splitter-3-way"
      },
	  {
        type = "unlock-recipe",
        recipe = "heavy-pump"
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
        recipe = "water-separation"
      },
	  {
        type = "unlock-recipe",
        recipe = "carbon-separation-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "coke-purification"
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
    name = "angels-sulfur-processing",
    icon = "__angelspetrochem__/graphics/technology/sulfur-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"basic-chemistry",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "gas-acid-catalyst"
      },
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
	  {
        type = "unlock-recipe",
        recipe = "liquid-hydrofluoric-acid"
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
    name = "angels-nitrogen-processing-1",
    icon = "__angelspetrochem__/graphics/technology/nitrogen-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"basic-chemistry",
    },
    effects =
    {
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
        recipe = "gas-ammonium-chloride"
      },
	  {
        type = "unlock-recipe",
        recipe = "gas-urea"
      },
	  {
        type = "unlock-recipe",
        recipe = "gas-melamine"
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
    name = "chlorine-processing",
    icon = "__angelspetrochem__/graphics/technology/chlorine-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"basic-chemistry",
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
        recipe = "gas-refinery"
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
    name = "flare-stack",
    icon = "__angelspetrochem__/graphics/technology/flare-stack.png",
	icon_size = 128,
	prerequisites =
    {
	"oil-gas-extraction",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "flare-stack"
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
	"angels-oil-processing",
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
        recipe = "separator-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "gas-refinery-2"
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
        recipe = "separator-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "gas-refinery-3"
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
        recipe = "advanced-oil-refining"
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
        recipe = "separator-4"
      },
	  {
        type = "unlock-recipe",
        recipe = "gas-refinery-4"
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
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  {"chemical-science-pack", 1},
	  {"production-science-pack", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
    {
    type = "technology",
    name = "coal-cracking",
    icon = "__angelspetrochem__/graphics/technology/coal-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"angels-advanced-chemistry-3",
    },
    effects =
    {
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
	  {
        type = "unlock-recipe",
        recipe = "carbon-separation-1"
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
        recipe = "steam-cracking-residual"
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
	"angels-oil-processing",
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
        recipe = "solid-plastic-1"
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
        recipe = "solid-plastic-2"
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
        recipe = "solid-plastic-3"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  {"chemical-science-pack", 1},
	  {"production-science-pack", 1},
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
        recipe = "solid-resin-2"
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
        recipe = "solid-rubber"
      },
    },
    unit =
    {
      count = 30,
      ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  {"chemical-science-pack", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
}
)