local rawmulti = angelsmods.marathon.rawmulti

data:extend(
  {
    --TIER 2
    {
      type = "recipe",
      name = "angelsore1-chunk-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t2",
      energy_required = 1.5,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore1-chunk", 6}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore1-chunk", 9 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore1-chunk-sorting.png",
      icon_size = 32,
      order = "a[angelsore1-chunk-processing]"
    },
    {
      type = "recipe",
      name = "angelsore2-chunk-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t2",
      energy_required = 1.5,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore2-chunk", 6}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore2-chunk", 9 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore2-chunk-sorting.png",
      icon_size = 32,
      order = "b[angelsore2-chunk-processing]"
    },
    {
      type = "recipe",
      name = "angelsore3-chunk-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t2",
      energy_required = 1.5,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore3-chunk", 6}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore3-chunk", 9 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore3-chunk-sorting.png",
      icon_size = 32,
      order = "c[angelsore3-chunk-processing]"
    },
    {
      type = "recipe",
      name = "angelsore4-chunk-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t2",
      energy_required = 1.5,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore4-chunk", 6}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore4-chunk", 9 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore4-chunk-sorting.png",
      icon_size = 32,
      order = "d[angelsore4-chunk-processing]"
    },
    {
      type = "recipe",
      name = "angelsore5-chunk-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t2",
      energy_required = 1.5,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore5-chunk", 6}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore5-chunk", 9 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore5-chunk-sorting.png",
      icon_size = 32,
      order = "e[angelsore5-chunk-processing]"
    },
    {
      type = "recipe",
      name = "angelsore6-chunk-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t2",
      energy_required = 1.5,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore6-chunk", 6}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore6-chunk", 9 * rawmulti}},
        results = {
          {type = "item", name = "slag", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore6-chunk-sorting.png",
      icon_size = 32,
      order = "f[angelsore6-chunk-processing]"
    }
  }
)
