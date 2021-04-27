local rawmulti = angelsmods.marathon.rawmulti

data:extend(
  {
    --TIER 3 MIX
    {
      type = "recipe",
      name = "angelsore-crystal-mix1-processing",
      category = "ore-sorting-4",
      subgroup = "ore-sorting-advanced",
      energy_required = 1.5,
      enabled = false,
      allow_decomposition = false,
      normal = {
        ingredients = {
          {type = "item", name = "angels-ore1-crystal", amount = 2},
          {type = "item", name = "angels-ore3-crystal", amount = 2},
          {type = "item", name = "angels-ore5-crystal", amount = 2},
          {type = "item", name = "catalysator-orange", amount = 1}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        ingredients = {
          {type = "item", name = "angels-ore1-crystal", amount = 3 * rawmulti},
          {type = "item", name = "angels-ore3-crystal", amount = 3 * rawmulti},
          {type = "item", name = "angels-ore5-crystal", amount = 3 * rawmulti},
          {type = "item", name = "catalysator-orange", amount = 1}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      icon_size = 32,
      order = "k"
    },
    {
      type = "recipe",
      name = "angelsore-crystal-mix2-processing",
      category = "ore-sorting-4",
      subgroup = "ore-sorting-advanced",
      energy_required = 1.5,
      enabled = false,
      allow_decomposition = false,
      normal = {
        ingredients = {
          {type = "item", name = "angels-ore3-crystal", amount = 2},
          {type = "item", name = "angels-ore4-crystal", amount = 2},
          {type = "item", name = "angels-ore5-crystal", amount = 2},
          {type = "item", name = "catalysator-orange", amount = 1}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        ingredients = {
          {type = "item", name = "angels-ore3-crystal", amount = 3 * rawmulti},
          {type = "item", name = "angels-ore4-crystal", amount = 3 * rawmulti},
          {type = "item", name = "angels-ore5-crystal", amount = 3 * rawmulti},
          {type = "item", name = "catalysator-orange", amount = 1}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      icon_size = 32,
      order = "l"
    },
    {
      type = "recipe",
      name = "angelsore-crystal-mix3-processing",
      category = "ore-sorting-4",
      subgroup = "ore-sorting-advanced",
      energy_required = 1.5,
      enabled = false,
      allow_decomposition = false,
      normal = {
        ingredients = {
          {type = "item", name = "angels-ore3-crystal", amount = 2},
          {type = "item", name = "angels-ore5-crystal", amount = 2},
          {type = "item", name = "angels-ore6-crystal", amount = 2},
          {type = "item", name = "catalysator-orange", amount = 1}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        ingredients = {
          {type = "item", name = "angels-ore3-crystal", amount = 3 * rawmulti},
          {type = "item", name = "angels-ore5-crystal", amount = 3 * rawmulti},
          {type = "item", name = "angels-ore6-crystal", amount = 3 * rawmulti},
          {type = "item", name = "catalysator-orange", amount = 1}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      icon_size = 32,
      order = "m"
    },
    {
      type = "recipe",
      name = "angelsore-crystal-mix4-processing",
      category = "ore-sorting-4",
      subgroup = "ore-sorting-advanced",
      energy_required = 1.5,
      enabled = false,
      allow_decomposition = false,
      normal = {
        ingredients = {
          {type = "item", name = "angels-ore2-crystal", amount = 2},
          {type = "item", name = "angels-ore4-crystal", amount = 2},
          {type = "item", name = "angels-ore6-crystal", amount = 2},
          {type = "item", name = "catalysator-orange", amount = 1}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        ingredients = {
          {type = "item", name = "angels-ore2-crystal", amount = 3 * rawmulti},
          {type = "item", name = "angels-ore4-crystal", amount = 3 * rawmulti},
          {type = "item", name = "angels-ore6-crystal", amount = 3 * rawmulti},
          {type = "item", name = "catalysator-orange", amount = 1}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      icon_size = 32,
      order = "n"
    },
    {
      type = "recipe",
      name = "angelsore-crystal-mix5-processing",
      category = "ore-sorting-4",
      subgroup = "ore-sorting-advanced",
      energy_required = 1.5,
      enabled = false,
      allow_decomposition = false,
      normal = {
        ingredients = {
          {type = "item", name = "angels-ore1-crystal", amount = 2},
          {type = "item", name = "angels-ore4-crystal", amount = 2},
          {type = "item", name = "angels-ore6-crystal", amount = 2},
          {type = "item", name = "catalysator-orange", amount = 1}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        ingredients = {
          {type = "item", name = "angels-ore1-crystal", amount = 3 * rawmulti},
          {type = "item", name = "angels-ore4-crystal", amount = 3 * rawmulti},
          {type = "item", name = "angels-ore6-crystal", amount = 3 * rawmulti},
          {type = "item", name = "catalysator-orange", amount = 1}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      icon_size = 32,
      order = "o"
    },
    --TIER 3.5
    {
      type = "recipe",
      name = "angelsore8-crystal-processing",
      category = "ore-sorting-4",
      subgroup = "ore-sorting-t4",
      energy_required = 1.5,
      allow_decomposition = false,
      normal = {
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-ore8-crystal", amount = 9}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-ore8-crystal", amount = 10 * rawmulti}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      icons = {
        {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
        {icon = "__angelsrefining__/graphics/icons/angels-ore8-crystal.png", scale = 0.5, shift = {-10, 10}}
      },
      icon_size = 32,
      order = "g"
    },
    {
      type = "recipe",
      name = "angelsore9-crystal-processing",
      category = "ore-sorting-4",
      subgroup = "ore-sorting-t4",
      energy_required = 1.5,
      allow_decomposition = false,
      normal = {
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-ore9-crystal", amount = 9}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-ore9-crystal", amount = 10 * rawmulti}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      icons = {
        {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
        {icon = "__angelsrefining__/graphics/icons/angels-ore9-crystal.png", scale = 0.5, shift = {-10, 10}}
      },
      icon_size = 32,
      order = "h"
    },
    -- TIER 3.5 MIX
    {
      type = "recipe",
      name = "angelsore-crystal-mix6-processing",
      category = "ore-sorting-4",
      subgroup = "ore-sorting-advanced",
      energy_required = 1.5,
      allow_decomposition = false,
      normal = {
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-ore8-crystal", amount = 2},
          {type = "item", name = "angels-ore9-crystal", amount = 2},
          {type = "item", name = "catalysator-orange", amount = 1}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-ore8-crystal", amount = 3 * rawmulti},
          {type = "item", name = "angels-ore9-crystal", amount = 3 * rawmulti},
          {type = "item", name = "catalysator-orange", amount = 1}
        },
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      icon_size = 32,
      order = "p"
    }
  }
)
