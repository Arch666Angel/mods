local rawmulti = angelsmods.marathon.rawmulti

data:extend(
  {
    --Tier 0
    {
      type = "recipe",
      name = "angelsore1-crushed-smelting",
      category = "smelting",
      subgroup = "raw-material",
      enabled = "true",
      allow_decomposition = false,
      normal = {
        energy_required = 7,
        ingredients = {{"angels-ore1-crushed", 3}},
        results = {{type = "item", name = "iron-plate", amount = 2}}
      },
      expensive = {
        energy_required = 3.5,
        ingredients = {{"angels-ore1-crushed", 5 * rawmulti}},
        results = {{type = "item", name = "iron-plate", amount = 1}}
      },
      icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
      icon_size = 32,
      order = "a-a [angelsore1-crushed-smelting]"
    },
    {
      type = "recipe",
      name = "angelsore3-crushed-smelting",
      category = "smelting",
      subgroup = "raw-material",
      enabled = "true",
      allow_decomposition = false,
      normal = {
        energy_required = 7,
        ingredients = {{"angels-ore3-crushed", 3}},
        results = {{type = "item", name = "copper-plate", amount = 2}}
      },
      expensive = {
        energy_required = 3.5,
        ingredients = {{"angels-ore3-crushed", 5 * rawmulti}},
        results = {{type = "item", name = "copper-plate", amount = 1}}
      },
      icon = "__angelsrefining__/graphics/icons/copper-plate-crushed.png",
      icon_size = 32,
      order = "a-a [angelsore3-crushed-smelting]"
    },
    {
      type = "recipe",
      name = "angelsore5-crushed-smelting",
      category = "smelting",
      subgroup = "raw-material",
      enabled = "true",
      allow_decomposition = false,
      normal = {
        energy_required = 7,
        ingredients = {{"angels-ore5-crushed", 3}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        energy_required = 3.5,
        ingredients = {{"angels-ore5-crushed", 5 * rawmulti}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      results = {
        {type = "item", name = "angels-void", amount = 1}
      },
      icon_size = 32,
      order = "a-a [angelsore5-crushed-smelting]"
    },
    {
      type = "recipe",
      name = "angelsore6-crushed-smelting",
      category = "smelting",
      subgroup = "raw-material",
      enabled = "true",
      allow_decomposition = false,
      normal = {
        energy_required = 7,
        ingredients = {{"angels-ore6-crushed", 3}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      expensive = {
        energy_required = 3.5,
        ingredients = {{"angels-ore6-crushed", 5 * rawmulti}},
        results = {
          {type = "item", name = "angels-void", amount = 1}
        }
      },
      results = {
        {type = "item", name = "angels-void", amount = 1}
      },
      icon_size = 32,
      order = "a-a [angelsore6-crushed-smelting]"
    }
  }
)
