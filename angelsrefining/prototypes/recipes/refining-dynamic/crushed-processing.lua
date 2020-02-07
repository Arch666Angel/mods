local rawmulti = angelsmods.marathon.rawmulti

data:extend(
  {
    --Tier 1
    {
      type = "recipe",
      name = "angelsore1-crushed-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t1",
      energy_required = 1,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore1-crushed", 4}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore1-crushed", 6 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed-sorting.png",
      icon_size = 32,
      order = "a[angelsore1-crushed-processing]"
    },
    {
      type = "recipe",
      name = "angelsore2-crushed-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t1",
      energy_required = 1,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore2-crushed", 4}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore2-crushed", 6 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore2-crushed-sorting.png",
      icon_size = 32,
      order = "b[angelsore2-crushed-processing]"
    },
    {
      type = "recipe",
      name = "angelsore3-crushed-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t1",
      energy_required = 1,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore3-crushed", 4}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore3-crushed", 6 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore3-crushed-sorting.png",
      icon_size = 32,
      order = "c[angelsore3-crushed-processing]"
    },
    {
      type = "recipe",
      name = "angelsore4-crushed-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t1",
      energy_required = 1,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore4-crushed", 4}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore4-crushed", 6 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore4-crushed-sorting.png",
      icon_size = 32,
      order = "d[angelsore4-crushed-processing]"
    },
    {
      type = "recipe",
      name = "angelsore5-crushed-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t1",
      energy_required = 1,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore5-crushed", 4}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore5-crushed", 6 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore5-crushed-sorting.png",
      icon_size = 32,
      order = "e[angelsore5-crushed-processing]"
    },
    {
      type = "recipe",
      name = "angelsore6-crushed-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t1",
      energy_required = 1,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore6-crushed", 4}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore6-crushed", 6 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      results = {
        {type = "item", name = "slag", amount = 1}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed-sorting.png",
      icon_size = 32,
      order = "f[angelsore6-crushed-processing]"
    }
  }
)
