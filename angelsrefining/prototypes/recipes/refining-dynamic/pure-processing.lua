local rawmulti = angelsmods.marathon.rawmulti

data:extend(
  {
    --TIER 4
    {
      type = "recipe",
      name = "angelsore1-pure-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t4",
      energy_required = 2,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore1-pure", 9}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore1-pure", 13 * rawmulti}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore1-pure-sorting.png",
      icon_size = 32,
      order = "a[angelsore1-pure-processing]"
    },
    {
      type = "recipe",
      name = "angelsore2-pure-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t4",
      energy_required = 2,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore2-pure", 9}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore2-pure", 13 * rawmulti}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore2-pure-sorting.png",
      icon_size = 32,
      order = "b[angelsore2-pure-processing]"
    },
    {
      type = "recipe",
      name = "angelsore3-pure-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t4",
      energy_required = 2,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore3-pure", 9}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore3-pure", 13 * rawmulti}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      results = {
        {type = "item", name = "angels-void", amount = 1}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore3-pure-sorting.png",
      icon_size = 32,
      order = "c[angelsore3-pure-processing]"
    },
    {
      type = "recipe",
      name = "angelsore4-pure-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t4",
      energy_required = 2,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore4-pure", 9}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore4-pure", 13 * rawmulti}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore4-pure-sorting.png",
      icon_size = 32,
      order = "d[angelsore4-pure-processing]"
    },
    {
      type = "recipe",
      name = "angelsore5-pure-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t4",
      energy_required = 2,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore5-pure", 9}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore5-pure", 13 * rawmulti}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore5-pure-sorting.png",
      icon_size = 32,
      order = "e[angelsore5-pure-processing]"
    },
    {
      type = "recipe",
      name = "angelsore6-pure-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-t4",
      energy_required = 2,
      enabled = "false",
      allow_decomposition = false,
      normal = {
        ingredients = {{"angels-ore6-pure", 9}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        ingredients = {{"angels-ore6-pure", 13 * rawmulti}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore6-pure-sorting.png",
      icon_size = 32,
      order = "f[angelsore6-pure-processing]"
    }
  }
)
