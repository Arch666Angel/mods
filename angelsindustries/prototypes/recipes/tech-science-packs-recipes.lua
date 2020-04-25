data:extend(
  {
    --SCIENCE PACKS
    {
      type = "recipe",
      name = "angels-science-pack-grey",
      energy_required = 3,
      enabled = "true",
      ingredients = {
        {"iron-plate", 2},
        {"science-data-analyzer", 1},
        {"circuit-grey", 1}
      },
      result = "angels-science-pack-grey",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-science-pack-red",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"science-data-analyzer", 1},
         --{"science-force-analyzer", 1},
        {"circuit-red-loaded", 1}
      },
      result = "angels-science-pack-red",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-science-pack-green",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"angels-science-pack-red", 1},
        {"science-force-analyzer", 1},
         --{"science-harmonics-analyzer", 1},
        {"circuit-green-loaded", 1}
      },
      result = "angels-science-pack-green",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-science-pack-orange",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"angels-science-pack-green", 1},
        {"science-force-analyzer", 1},
         --addition
        {"circuit-orange-loaded", 1}
      },
      result = "angels-science-pack-orange",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-science-pack-blue",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"angels-science-pack-orange", 1},
        {"science-harmonics-analyzer", 1},
         --addition
        {"circuit-blue-loaded", 1}
      },
      result = "angels-science-pack-blue",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-science-pack-yellow",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"angels-science-pack-blue", 1},
        {"science-harmonics-analyzer", 1},
         --addition
        {"circuit-yellow-loaded", 1}
      },
      result = "angels-science-pack-yellow",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-science-pack-white",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"angels-science-pack-yellow", 1},
        {"science-gravitational-analyzer", 1}
         --addition
        --{"circuit-yellow-loaded", 1},
      },
      result = "angels-science-pack-white",
      icon_size = 32
    },
    --SCIENCE PACKS COMPONENTS
    {
      type = "recipe",
      name = "science-data-analyzer",
      energy_required = 3,
      enabled = "true",
      ingredients = {
        {"angels-rod-iron", 1},
        {"angels-wire-copper", 4}
      },
      results = {
        {type = "item", name = "science-data-analyzer", amount = 2}
      },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "science-force-analyzer",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"angels-solder", 1},
        {"steel-plate", 1}
      },
      result = "science-force-analyzer",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "science-harmonics-analyzer",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"angels-plate-silver", 1},
        {"angels-plate-aluminium", 1}
      },
      result = "science-harmonics-analyzer",
      icon_size = 32
    }
  }
)
