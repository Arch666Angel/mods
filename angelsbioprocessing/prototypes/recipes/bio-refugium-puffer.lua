data:extend(
  {
    {
      type = "recipe",
      name = "gas-puffer-atmosphere",
      category = "advanced-chemistry",
      subgroup = "bio-puffer",
      enabled = false,
      energy_required = 30,
      ingredients = {
        {type = "fluid", name = "gas-sulfur-dioxide", amount = 20},
        {type = "fluid", name = "liquid-hydrofluoric-acid", amount = 10},
        {type = "fluid", name = "gas-oxygen", amount = 10}
      },
      results = {
        {type = "fluid", name = "gas-puffer-atmosphere", amount = 60}
      },
      main_product = "gas-puffer-atmosphere",
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(nil, {{194, 227, 091}, {184, 239, 000}, {156, 207, 000}}),
      order = "b"
    },
    ---------------------------------------------------------------------------
    -- PUFFING ----------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "puffer-puffing-1",
      category = "bio-refugium-puffer",
      subgroup = "bio-puffer",
      enabled = false,
      energy_required = 15,
      ingredients = {
        {type = "item", name = "bio-puffer-1", amount = 4},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "gas-puffer-atmosphere", amount = 20}
      },
      results = {
        {type = "item", name = "bio-puffer-1", amount = 3},
        {type = "item", name = "bio-puffer-1", amount = 1, probability = 0.95, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "gas-acid", amount = 20},
        {type = "fluid", name = "gas-acid", amount = 200}
      },
      icon = "__angelsbioprocessing__/graphics/icons/puffer-1-icon.png",
      icon_size = 32,
      order = "aa"
    },
    {
      type = "recipe",
      name = "puffer-puffing-2",
      category = "bio-refugium-puffer",
      subgroup = "bio-puffer",
      enabled = false,
      energy_required = 15,
      ingredients = {
        {type = "item", name = "bio-puffer-2", amount = 4},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "gas-puffer-atmosphere", amount = 20},
        {type = "fluid", name = "gas-ammonia", amount = 100}
      },
      results = {
        {type = "item", name = "bio-puffer-2", amount = 3},
        {type = "item", name = "bio-puffer-2", amount = 1, probability = 0.95, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "gas-acid", amount = 20},
        {type = "fluid", name = "gas-raw-1", amount = 200}
      },
      icon = "__angelsbioprocessing__/graphics/icons/puffer-2-icon.png",
      icon_size = 32,
      order = "ab"
    },
    {
      type = "recipe",
      name = "puffer-puffing-3",
      category = "bio-refugium-puffer",
      subgroup = "bio-puffer",
      enabled = false,
      energy_required = 15,
      ingredients = {
        {type = "item", name = "bio-puffer-3", amount = 4},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "gas-puffer-atmosphere", amount = 20},
        {type = "fluid", name = "gas-carbon-monoxide", amount = 100}
      },
      results = {
        {type = "item", name = "bio-puffer-3", amount = 3},
        {type = "item", name = "bio-puffer-3", amount = 1, probability = 0.95, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "gas-acid", amount = 20},
        {type = "fluid", name = "gas-urea", amount = 200}
      },
      icon = "__angelsbioprocessing__/graphics/icons/puffer-3-icon.png",
      icon_size = 32,
      order = "ac"
    },
    {
      type = "recipe",
      name = "puffer-puffing-4",
      category = "bio-refugium-puffer",
      subgroup = "bio-puffer",
      enabled = false,
      energy_required = 15,
      ingredients = {
        {type = "item", name = "bio-puffer-4", amount = 4},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "gas-puffer-atmosphere", amount = 20},
        {type = "fluid", name = "gas-sulfur-dioxide", amount = 100}
      },
      results = {
        {type = "item", name = "bio-puffer-4", amount = 3},
        {type = "item", name = "bio-puffer-4", amount = 1, probability = 0.95, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "gas-acid", amount = 20},
        {type = "fluid", name = "gas-synthesis", amount = 200}
      },
      icon = "__angelsbioprocessing__/graphics/icons/puffer-4-icon.png",
      icon_size = 32,
      order = "ad"
    },
    {
      type = "recipe",
      name = "puffer-puffing-5",
      category = "bio-refugium-puffer",
      subgroup = "bio-puffer",
      enabled = false,
      energy_required = 15,
      ingredients = {
        {type = "item", name = "bio-puffer-5", amount = 4},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "gas-puffer-atmosphere", amount = 20},
        {type = "fluid", name = "gas-hydrogen-chloride", amount = 100}
      },
      results = {
        {type = "item", name = "bio-puffer-5", amount = 3},
        {type = "item", name = "bio-puffer-5", amount = 1, probability = 0.95, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "gas-acid", amount = 20},
        {type = "fluid", name = "gas-hydrazine", amount = 200}
      },
      icon = "__angelsbioprocessing__/graphics/icons/puffer-5-icon.png",
      icon_size = 32,
      order = "ae"
    },
    ---------------------------------------------------------------------------
    -- BREEDING ---------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "puffer-breeding-1",
      category = "bio-refugium-puffer",
      subgroup = "bio-puffer-breeding",
      enabled = false,
      energy_required = 60,
      ingredients = {
        {type = "item", name = "bio-puffer-1", amount = 2},
        {type = "item", name = "solid-beans", amount = 5},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "gas-puffer-atmosphere", amount = 20}
      },
      results = {
        {type = "item", name = "bio-puffer-1", amount = 2, catalyst_amount = 2},
        {type = "fluid", name = "gas-acid", amount = 20},
        {type = "item", name = "bio-puffer-egg-1", amount = 1, probability = 0.75},
        {type = "item", name = "bio-puffer-egg-2", amount = 1, probability = 0.1},
        {type = "item", name = "bio-puffer-egg-3", amount = 1, probability = 0.05},
        {type = "item", name = "bio-puffer-egg-4", amount = 1, probability = 0.05},
        {type = "item", name = "bio-puffer-egg-5", amount = 1, probability = 0.05}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/puffer-1-icon.png"
        }
      },
      icon_size = 32,
      order = "aa"
    },
    {
      type = "recipe",
      name = "puffer-breeding-2",
      category = "bio-refugium-puffer",
      subgroup = "bio-puffer-breeding",
      enabled = false,
      energy_required = 60,
      ingredients = {
        {type = "item", name = "bio-puffer-2", amount = 2},
        {type = "item", name = "solid-leafs", amount = 5},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "gas-puffer-atmosphere", amount = 20}
      },
      results = {
        {type = "item", name = "bio-puffer-2", amount = 2, catalyst_amount = 2},
        {type = "fluid", name = "gas-acid", amount = 20},
        {type = "item", name = "bio-puffer-egg-1", amount = 1, probability = 0.1},
        {type = "item", name = "bio-puffer-egg-2", amount = 1, probability = 0.75},
        {type = "item", name = "bio-puffer-egg-3", amount = 1, probability = 0.05},
        {type = "item", name = "bio-puffer-egg-4", amount = 1, probability = 0.05},
        {type = "item", name = "bio-puffer-egg-5", amount = 1, probability = 0.05}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/puffer-2-icon.png"
        }
      },
      icon_size = 32,
      order = "ab"
    },
    {
      type = "recipe",
      name = "puffer-breeding-3",
      category = "bio-refugium-puffer",
      subgroup = "bio-puffer-breeding",
      enabled = false,
      energy_required = 60,
      ingredients = {
        {type = "item", name = "bio-puffer-3", amount = 2},
        {type = "item", name = "solid-nuts", amount = 5},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "gas-puffer-atmosphere", amount = 20}
      },
      results = {
        {type = "item", name = "bio-puffer-3", amount = 2, catalyst_amount = 2},
        {type = "fluid", name = "gas-acid", amount = 20},
        {type = "item", name = "bio-puffer-egg-1", amount = 1, probability = 0.1},
        {type = "item", name = "bio-puffer-egg-2", amount = 1, probability = 0.1},
        {type = "item", name = "bio-puffer-egg-3", amount = 1, probability = 0.7},
        {type = "item", name = "bio-puffer-egg-4", amount = 1, probability = 0.05},
        {type = "item", name = "bio-puffer-egg-5", amount = 1, probability = 0.05}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/puffer-3-icon.png"
        }
      },
      icon_size = 32,
      order = "ac"
    },
    {
      type = "recipe",
      name = "puffer-breeding-4",
      category = "bio-refugium-puffer",
      subgroup = "bio-puffer-breeding",
      enabled = false,
      energy_required = 60,
      ingredients = {
        {type = "item", name = "bio-puffer-4", amount = 2},
        {type = "item", name = "solid-pips", amount = 5},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "gas-puffer-atmosphere", amount = 20}
      },
      results = {
        {type = "item", name = "bio-puffer-4", amount = 2, catalyst_amount = 2},
        {type = "fluid", name = "gas-acid", amount = 20},
        {type = "item", name = "bio-puffer-egg-1", amount = 1, probability = 0.1},
        {type = "item", name = "bio-puffer-egg-2", amount = 1, probability = 0.1},
        {type = "item", name = "bio-puffer-egg-3", amount = 1, probability = 0.05},
        {type = "item", name = "bio-puffer-egg-4", amount = 1, probability = 0.7},
        {type = "item", name = "bio-puffer-egg-5", amount = 1, probability = 0.05}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/puffer-4-icon.png"
        }
      },
      icon_size = 32,
      order = "ad"
    },
    {
      type = "recipe",
      name = "puffer-breeding-5",
      category = "bio-refugium-puffer",
      subgroup = "bio-puffer-breeding",
      enabled = false,
      energy_required = 60,
      ingredients = {
        {type = "item", name = "bio-puffer-5", amount = 2},
        {type = "item", name = "solid-fruit", amount = 5},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "gas-puffer-atmosphere", amount = 20}
      },
      results = {
        {type = "item", name = "bio-puffer-5", amount = 2, catalyst_amount = 2},
        {type = "fluid", name = "gas-acid", amount = 20},
        {type = "item", name = "bio-puffer-egg-1", amount = 1, probability = 0.1},
        {type = "item", name = "bio-puffer-egg-2", amount = 1, probability = 0.1},
        {type = "item", name = "bio-puffer-egg-3", amount = 1, probability = 0.05},
        {type = "item", name = "bio-puffer-egg-4", amount = 1, probability = 0.05},
        {type = "item", name = "bio-puffer-egg-5", amount = 1, probability = 0.7}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/puffer-5-icon.png"
        }
      },
      icon_size = 32,
      order = "ae"
    },
    ---------------------------------------------------------------------------
    -- HATCHERY ---------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "puffer-egg-1",
      category = "bio-hatchery",
      subgroup = "bio-puffer-egg",
      enabled = false,
      hidden = false,
      energy_required = 10,
      ingredients = {
        {type = "item", name = "bio-puffer-egg-1", amount = 1}
      },
      results = {
        {type = "item", name = "bio-puffer-1", amount = 1, probability = 0.95},
        {type = "item", name = "bio-puffer-2", amount = 1, probability = 0.05}
      },
      icon = "__angelsbioprocessing__/graphics/icons/puffer-1-egg.png",
      icon_size = 32,
      order = "aa"
    },
    {
      type = "recipe",
      name = "puffer-egg-2",
      category = "bio-hatchery",
      subgroup = "bio-puffer-egg",
      enabled = false,
      hidden = false,
      energy_required = 15,
      ingredients = {
        {type = "item", name = "bio-puffer-egg-2", amount = 1}
      },
      results = {
        {type = "item", name = "bio-puffer-2", amount = 1, probability = 0.8},
        {type = "item", name = "bio-puffer-1", amount = 1, probability = 0.2}
      },
      icon = "__angelsbioprocessing__/graphics/icons/puffer-2-egg.png",
      icon_size = 32,
      order = "ab"
    },
    {
      type = "recipe",
      name = "puffer-egg-3",
      category = "bio-hatchery",
      subgroup = "bio-puffer-egg",
      enabled = false,
      hidden = false,
      energy_required = 20,
      ingredients = {
        {type = "item", name = "bio-puffer-egg-3", amount = 1}
      },
      results = {
        {type = "item", name = "bio-puffer-3", amount = 1, probability = 0.7},
        {type = "item", name = "bio-puffer-1", amount = 1, probability = 0.3}
      },
      icon = "__angelsbioprocessing__/graphics/icons/puffer-3-egg.png",
      icon_size = 32,
      order = "ac"
    },
    {
      type = "recipe",
      name = "puffer-egg-4",
      category = "bio-hatchery",
      subgroup = "bio-puffer-egg",
      enabled = false,
      hidden = false,
      energy_required = 25,
      ingredients = {
        {type = "item", name = "bio-puffer-egg-4", amount = 1}
      },
      results = {
        {type = "item", name = "bio-puffer-4", amount = 1, probability = 0.6},
        {type = "item", name = "bio-puffer-1", amount = 1, probability = 0.4}
      },
      icon = "__angelsbioprocessing__/graphics/icons/puffer-4-egg.png",
      icon_size = 32,
      order = "ad"
    },
    {
      type = "recipe",
      name = "puffer-egg-5",
      category = "bio-hatchery",
      subgroup = "bio-puffer-egg",
      enabled = false,
      hidden = false,
      energy_required = 30,
      ingredients = {
        {type = "item", name = "bio-puffer-egg-5", amount = 1}
      },
      results = {
        {type = "item", name = "bio-puffer-5", amount = 1, probability = 0.5},
        {type = "item", name = "bio-puffer-1", amount = 1, probability = 0.5}
      },
      icon = "__angelsbioprocessing__/graphics/icons/puffer-5-egg.png",
      icon_size = 32,
      order = "ae"
    },
    ---------------------------------------------------------------------------
    -- BUTCHERY ---------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "puffer-butchery-1",
      category = "bio-butchery",
      subgroup = "bio-puffer-butchery",
      enabled = false,
      hidden = false,
      energy_required = 15,
      ingredients = {
        {type = "item", name = "bio-puffer-1", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 1}
      },
      icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
      icon_size = 32,
      order = "aa"
    },
    {
      type = "recipe",
      name = "puffer-butchery-2",
      category = "bio-butchery",
      subgroup = "bio-puffer-butchery",
      enabled = false,
      hidden = false,
      energy_required = 15,
      ingredients = {
        {type = "item", name = "bio-puffer-2", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 1}
      },
      icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
      icon_size = 32,
      order = "ab"
    },
    {
      type = "recipe",
      name = "puffer-butchery-3",
      category = "bio-butchery",
      subgroup = "bio-puffer-butchery",
      enabled = false,
      hidden = false,
      energy_required = 15,
      ingredients = {
        {type = "item", name = "bio-puffer-3", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 1}
      },
      icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
      icon_size = 32,
      order = "ac"
    },
    {
      type = "recipe",
      name = "puffer-butchery-4",
      category = "bio-butchery",
      subgroup = "bio-puffer-butchery",
      enabled = false,
      hidden = false,
      energy_required = 15,
      ingredients = {
        {type = "item", name = "bio-puffer-4", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 1}
      },
      icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
      icon_size = 32,
      order = "ad"
    },
    {
      type = "recipe",
      name = "puffer-butchery-5",
      category = "bio-butchery",
      subgroup = "bio-puffer-butchery",
      enabled = false,
      hidden = false,
      energy_required = 15,
      ingredients = {
        {type = "item", name = "bio-puffer-5", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 1}
      },
      icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
      icon_size = 32,
      order = "ae"
    }
  }
)
