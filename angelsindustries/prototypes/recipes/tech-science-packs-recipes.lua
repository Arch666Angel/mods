if angelsmods.industries.tech then
  data:extend({
    --SCIENCE PACKS
    {
      type = "recipe",
      name = "angels-science-pack-grey",
      energy_required = 3,
      enabled = true,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 2 },
        { type = "item", name = "science-data-analyzer", amount = 1 },
        { type = "item", name = "circuit-grey", amount = 1 },
      },
      result = "angels-science-pack-grey",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-science-pack-red",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-science-pack-grey", amount = 1 },
        { type = "item", name = "science-data-analyzer", amount = 1 },
        --{type="item", name="science-force-analyzer", amount = 1},
        { type = "item", name = "circuit-red-loaded", amount = 1 },
      },
      result = "angels-science-pack-red",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-science-pack-green",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-science-pack-red", amount = 1 },
        { type = "item", name = "science-force-analyzer", amount = 1 },
        --{type="item", name="science-harmonics-analyzer", amount = 1},
        { type = "item", name = "circuit-green-loaded", amount = 1 },
      },
      result = "angels-science-pack-green",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-science-pack-orange",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-science-pack-green", amount = 1 },
        { type = "item", name = "science-force-analyzer", amount = 1 },
        --addition
        { type = "item", name = "circuit-orange-loaded", amount = 1 },
      },
      result = "angels-science-pack-orange",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-science-pack-blue",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-science-pack-orange", amount = 1 },
        { type = "item", name = "science-harmonics-analyzer", amount = 1 },
        --addition
        { type = "item", name = "circuit-blue-loaded", amount = 1 },
      },
      result = "angels-science-pack-blue",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-science-pack-yellow",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-science-pack-blue", amount = 1 },
        { type = "item", name = "science-harmonics-analyzer", amount = 1 },
        --addition
        { type = "item", name = "circuit-yellow-loaded", amount = 1 },
      },
      result = "angels-science-pack-yellow",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-science-pack-white",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-science-pack-yellow", amount = 1 },
        { type = "item", name = "science-gravitational-analyzer", amount = 1 },
        --addition
        --{type="item", name="circuit-yellow-loaded", amount = 1},
      },
      result = "angels-science-pack-white",
      icon_size = 32,
    },
    --SCIENCE PACKS COMPONENTS
    {
      type = "recipe",
      name = "science-data-analyzer",
      energy_required = 3,
      enabled = true,
      ingredients = {
        { type = "item", name = "iron-stick", amount = 1 },
        { type = "item", name = "angels-wire-copper", amount = 4 },
      },
      results = {
        { type = "item", name = "science-data-analyzer", amount = 2 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "science-force-analyzer",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-solder", amount = 1 },
        { type = "item", name = "steel-plate", amount = 1 },
      },
      result = "science-force-analyzer",
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "science-harmonics-analyzer",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "angels-plate-silver", amount = 1 },
        { type = "item", name = "angels-plate-aluminium", amount = 1 },
      },
      result = "science-harmonics-analyzer",
      icon_size = 32,
    },
  })
end
