if angelsmods.industries.tech then
  data:extend({
    --DATACORES
    {
      type = "recipe",
      name = "datacore-basic",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 3 },
        { type = "item", name = "circuit-grey", amount = 2 },
      },
      results = {
        { name = "datacore-basic", amount = 2 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-exploration-1",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-basic", amount = 1 },
        { type = "item", name = "circuit-red-loaded", amount = 1 },
        { type = "item", name = "block-exploration-1", amount = 1 },
        { type = "item", name = "electronic-parts", amount = 1 },
      },
      result = "datacore-exploration-1",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-exploration-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-exploration-1", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 1 },
        { type = "item", name = "block-exploration-3", amount = 1 },
        { type = "item", name = "electronic-parts", amount = 1 },
      },
      result = "datacore-exploration-2",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-enhance-1",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-basic", amount = 1 },
        { type = "item", name = "circuit-red-loaded", amount = 1 },
        { type = "item", name = "block-enhancement-1", amount = 1 },
        { type = "item", name = "iron-plate", amount = 1 },
      },
      result = "datacore-enhance-1",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-enhance-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-enhance-1", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 1 },
        { type = "item", name = "block-enhancement-3", amount = 1 },
        { type = "item", name = "speed-module", amount = 1 },
      },
      result = "datacore-enhance-2",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-energy-1",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-basic", amount = 1 },
        { type = "item", name = "circuit-red-loaded", amount = 1 },
        { type = "item", name = "block-energy-1", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
      },
      result = "datacore-energy-1",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-energy-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-energy-1", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 1 },
        { type = "item", name = "block-energy-3", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
      },
      result = "datacore-energy-2",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-logistic-1",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-basic", amount = 1 },
        { type = "item", name = "circuit-red-loaded", amount = 1 },
        { type = "item", name = "block-logistic-1", amount = 1 },
        { type = "item", name = "construction-components", amount = 1 },
      },
      result = "datacore-logistic-1",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-logistic-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-logistic-1", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 1 },
        { type = "item", name = "block-logistic-3", amount = 1 },
        { type = "item", name = "construction-components", amount = 1 },
      },
      result = "datacore-logistic-2",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-war-1",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-basic", amount = 1 },
        { type = "item", name = "circuit-red-loaded", amount = 1 },
        { type = "item", name = "block-warfare-1", amount = 1 },
        { type = "item", name = "weapon-parts", amount = 1 },
      },
      result = "datacore-war-1",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-war-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-war-1", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 1 },
        { type = "item", name = "block-warfare-3", amount = 1 },
        { type = "item", name = "weapon-parts", amount = 1 },
      },
      result = "datacore-war-2",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-processing-1",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-basic", amount = 1 },
        { type = "item", name = "circuit-red-loaded", amount = 1 },
        { type = "item", name = "block-production-1", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 1 },
      },
      result = "datacore-processing-1",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-processing-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-processing-1", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 1 },
        { type = "item", name = "block-production-3", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 1 },
      },
      result = "datacore-processing-2",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-processing-3",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-processing-1", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 1 },
        { type = "item", name = "block-extraction-3", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 1 },
      },
      result = "datacore-processing-3",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-processing-4",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-processing-1", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 1 },
        { type = "item", name = "block-mprocessing-3", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 1 },
      },
      result = "datacore-processing-4",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-processing-5",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-processing-1", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 1 },
        { type = "item", name = "block-cprocessing-3", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 1 },
      },
      result = "datacore-processing-5",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "datacore-processing-6",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "datacore-processing-1", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 1 },
        { type = "item", name = "block-bprocessing-3", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 1 },
      },
      result = "datacore-processing-6",
      icon_size = 32,
    },
  })
end
