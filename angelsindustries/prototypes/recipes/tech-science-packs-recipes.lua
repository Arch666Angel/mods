data:extend(
{
--DATACORES
  {
    type = "recipe",
    name = "datacore-basic",
    energy_required = 3,
    enabled = "true",
    ingredients =
    {
      {"iron-plate", 3},
      {"circuit-grey", 2},
    },
    results =
    {
      {"datacore-basic", 2},
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-exploration-1",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-basic", 1},
      {"circuit-red-loaded", 1},
      {"block-exploration-1", 1},
      {"electronic-parts", 1},
    },
    result = "datacore-exploration-1",
    icon_size = 32,
  },
  {
  type = "recipe",
    name = "datacore-exploration-2",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-exploration-1", 1},
      {"circuit-orange-loaded", 1},
      {"block-exploration-3", 1},
      {"electronic-parts", 1},
    },
    result = "datacore-exploration-2",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-enhance-1",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-basic", 1},
      {"circuit-red-loaded", 1},
      {"block-enhancement-1", 1},
      {"iron-plate", 1},
    },
    result = "datacore-enhance-1",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-enhance-2",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-enhance-1", 1},
      {"circuit-orange-loaded", 1},
      {"block-enhancement-3", 1},
      {"speed-module", 1},
    },
    result = "datacore-enhance-2",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-energy-1",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-basic", 1},
      {"circuit-red-loaded", 1},
      {"block-energy-1", 1},
      {"angels-cabling", 1},
    },
    result = "datacore-energy-1",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-energy-2",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-energy-1", 1},
      {"circuit-orange-loaded", 1},
      {"block-energy-3", 1},
      {"angels-cabling", 1},
    },
    result = "datacore-energy-2",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-logistic-1",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-basic", 1},
      {"circuit-red-loaded", 1},
      {"block-logistic-1", 1},
      {"construction-components", 1},
    },
    result = "datacore-logistic-1",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-logistic-2",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-logistic-1", 1},
      {"circuit-orange-loaded", 1},
      {"block-logistic-3", 1},
      {"construction-components", 1},
    },
    result = "datacore-logistic-2",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-war-1",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-basic", 1},
      {"circuit-red-loaded", 1},
      {"block-warfare-1", 1},
      {"weapon-parts", 1},
    },
    result = "datacore-war-1",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-war-2",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-war-1", 1},
      {"circuit-orange-loaded", 1},
      {"block-warfare-3", 1},
      {"weapon-parts", 1},
    },
    result = "datacore-war-2",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-processing-1",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-basic", 1},
      {"circuit-red-loaded", 1},
      {"block-production-1", 1},
      {"mechanical-parts", 1},
    },
    result = "datacore-processing-1",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-processing-2",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-processing-1", 1},
      {"circuit-orange-loaded", 1},
      {"block-production-3", 1},
      {"mechanical-parts", 1},
    },
    result = "datacore-processing-2",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-processing-3",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-processing-1", 1},
      {"circuit-orange-loaded", 1},
      {"block-extraction-3", 1},
      {"mechanical-parts", 1},
    },
    result = "datacore-processing-3",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-processing-4",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-processing-1", 1},
      {"circuit-orange-loaded", 1},
      {"block-mprocessing-3", 1},
      {"mechanical-parts", 1},
    },
    result = "datacore-processing-4",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-processing-5",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-processing-1", 1},
      {"circuit-orange-loaded", 1},
      {"block-cprocessing-3", 1},
      {"mechanical-parts", 1},
    },
    result = "datacore-processing-5",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "datacore-processing-6",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"datacore-processing-1", 1},
      {"circuit-orange-loaded", 1},
      {"block-bprocessing-3", 1},
      {"mechanical-parts", 1},
    },
    result = "datacore-processing-6",
    icon_size = 32,
  },
--SCIENCE PACKS
  {
    type = "recipe",
    name = "angels-science-pack-grey",
    energy_required = 3,
    enabled = "true",
    ingredients =
    {
      {"iron-plate", 2},
      {"science-data-analyzer", 1},
      {"circuit-grey", 1},
    },
    result = "angels-science-pack-grey",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-science-pack-red",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"angels-science-pack-grey", 1},
      {"science-data-analyzer", 1},--{"science-force-analyzer", 1},
      {"circuit-red-loaded", 1},
    },
    result = "angels-science-pack-red",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-science-pack-green",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"angels-science-pack-red", 1},
      {"science-force-analyzer", 1},--{"science-harmonics-analyzer", 1},
      {"circuit-green-loaded", 1},
    },
    result = "angels-science-pack-green",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-science-pack-orange",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"angels-science-pack-green", 1},
      {"science-force-analyzer", 1},--addition
      {"circuit-orange-loaded", 1},
    },
    result = "angels-science-pack-orange",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-science-pack-blue",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"angels-science-pack-orange", 1},
      {"science-harmonics-analyzer", 1},--addition
      {"circuit-blue-loaded", 1},
    },
    result = "angels-science-pack-blue",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-science-pack-yellow",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"angels-science-pack-blue", 1},
      {"science-harmonics-analyzer", 1},--addition
      {"circuit-yellow-loaded", 1},
    },
    result = "angels-science-pack-yellow",
    icon_size = 32,
  },
--SCIENCE PACKS COMPONENTS
  {
    type = "recipe",
    name = "science-data-analyzer",
    energy_required = 3,
    enabled = "true",
    ingredients =
    {
      {"angels-rod-iron", 1},
      {"angels-wire-copper", 4},
    },
    results = {
      {"science-data-analyzer", 2},
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "science-force-analyzer",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"angels-solder", 1},
      {"steel-plate", 1},
    },
    result = "science-force-analyzer",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "science-harmonics-analyzer",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"angels-plate-silver", 1},
      {"angels-plate-aluminium", 1},
    },
    result = "science-harmonics-analyzer",
    icon_size = 32,
  },
  -- {
  --   type = "recipe",
  --   name = "angels-science-pack-orange",
  --   energy_required = 10,
  --   enabled = "false",
  --   ingredients =
  --   {
    --   {"angels-science-pack-green", 1},
    --   {"circuit-orange-loaded", 1},
  --   },
  --   result = "angels-science-pack-orange",
  --   icon_size = 32,
  -- },
  -- {
  --   type = "recipe",
  --   name = "angels-science-pack-blue",
  --   energy_required = 10,
  --   enabled = "false",
  --   ingredients =
  --   {
    --   {"angels-science-pack-orange", 1},
    --   {"circuit-blue-loaded", 1},
  --   },
  --   result = "angels-science-pack-blue",
  --   icon_size = 32,
  -- },
  -- {
  --   type = "recipe",
  --   name = "angels-science-pack-yellow",
  --   energy_required = 10,
  --   enabled = "false",
  --   ingredients =
  --   {
  --     {"angels-science-pack-blue", 1},
  --     {"circuit-yellow-loaded", 1},
  --   },
  --   result = "angels-science-pack-yellow",
  --   icon_size = 32,
  -- },
}
)
