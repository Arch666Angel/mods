local rawmulti = angelsmods.marathon.rawmulti

data:extend(
  {
    --TIER 3
    {
      type = "recipe",
      name = "angelsore1-crystal-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t3",
      energy_required = 2,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore1-crystal", 8}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore1-crystal", 12 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore1-crystal-sorting.png",
      icon_size = 32,
      order = "a[angelsore1-crystal-processing]"
    },
    {
      type = "recipe",
      name = "angelsore2-crystal-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t3",
      energy_required = 2,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore2-crystal", 8}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore2-crystal", 12 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore2-crystal-sorting.png",
      icon_size = 32,
      order = "b[angelsore2-crystal-processing]"
    },
    {
      type = "recipe",
      name = "angelsore3-crystal-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t3",
      energy_required = 2,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore3-crystal", 8}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore3-crystal", 12 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore3-crystal-sorting.png",
      icon_size = 32,
      order = "c[angelsore3-crystal-processing]"
    },
    {
      type = "recipe",
      name = "angelsore4-crystal-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t3",
      energy_required = 2,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore4-crystal", 8}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore4-crystal", 12 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore4-crystal-sorting.png",
      icon_size = 32,
      order = "d[angelsore4-crystal-processing]"
    },
    {
      type = "recipe",
      name = "angelsore5-crystal-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t3",
      energy_required = 2,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore5-crystal", 8}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore5-crystal", 12 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore5-crystal-sorting.png",
      icon_size = 32,
      order = "e[angelsore5-crystal-processing]"
    },
    {
      type = "recipe",
      name = "angelsore6-crystal-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t3",
      energy_required = 2,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore6-crystal", 8}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore6-crystal", 12 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal-sorting.png",
      icon_size = 32,
      order = "f[angelsore6-crystal-processing]"
    }
  }
)
