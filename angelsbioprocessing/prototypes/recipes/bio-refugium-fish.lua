data:extend(
  {
    {
      type = "recipe",
      name = "liquid-fish-atmosphere",
      category = "advanced-chemistry",
      subgroup = "bio-fish",
      enabled = false,
      energy_required = 15,
      ingredients = {
        {type = "fluid", name = "water", amount = 50},
        {type = "fluid", name = "water-saline", amount = 50}
      },
      results = {
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      main_product = "liquid-fish-atmosphere",
      always_show_products = true,
      icons = angelsmods.functions.create_liquid_recipe_icon(nil, {{190, 255, 000}, {205, 255, 000}, {205, 255, 000}}),
      order = "b"
    },
    {
      type = "recipe",
      name = "liquid-polluted-fish-atmosphere",
      category = "liquifying",
      subgroup = "bio-fish-breeding",
      enabled = false,
      energy_required = 15,
      ingredients = {
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100},
        {type = "item", name = "bio-raw-meat", amount = 25}
      },
      results = {
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      main_product = "liquid-polluted-fish-atmosphere",
      always_show_products = true,
      icons = angelsmods.functions.create_liquid_recipe_icon(nil, {{190,255,000}, {241,050,238}, {241,050,238}}),
      order = "b"
    },
    ---------------------------------------------------------------------------
    -- KEEPING ----------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "fish-keeping-0",
      category = "bio-refugium-fish",
      subgroup = "bio-fish",
      enabled = false,
      energy_required = 30,
      ingredients = {
        {type = "item", name = "raw-fish", amount = 4},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "raw-fish", amount = 2, catalyst_amount = 2},
        {type = "item", name = "raw-fish", amount = 1, probability = 0.75, catalyst_amount = 1, show_details_in_recipe_tooltip = false},
        {type = "item", name = "raw-fish", amount = 1, probability = 0.50, catalyst_amount = 1, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icon = "__base__/graphics/icons/fish.png",
      icon_size = 64,
      order = "aa"
    },
    {
      type = "recipe",
      name = "fish-keeping-1",
      category = "bio-refugium-fish",
      subgroup = "bio-fish",
      enabled = false,
      energy_required = 30,
      ingredients = {
        {type = "item", name = "alien-fish-1-raw", amount = 4},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "alien-fish-1-raw", amount = 3, catalyst_amount = 3},
        {
          type = "item",
          name = "alien-fish-1-raw",
          amount = 1,
          probability = 0.85,
          catalyst_amount = 1,
          show_details_in_recipe_tooltip = false
        },
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icon = "__angelsbioprocessing__/graphics/icons/alien-fish-1.png",
      icon_size = 32,
      order = "ab"
    },
    {
      type = "recipe",
      name = "fish-keeping-2",
      category = "bio-refugium-fish",
      subgroup = "bio-fish",
      enabled = false,
      energy_required = 30,
      ingredients = {
        {type = "item", name = "alien-fish-2-raw", amount = 4},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "alien-fish-2-raw", amount = 3, catalyst_amount = 3},
        {
          type = "item",
          name = "alien-fish-2-raw",
          amount = 1,
          probability = 0.85,
          catalyst_amount = 1,
          show_details_in_recipe_tooltip = false
        },
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icon = "__angelsbioprocessing__/graphics/icons/alien-fish-2.png",
      icon_size = 32,
      order = "ac"
    },
    {
      type = "recipe",
      name = "fish-keeping-3",
      category = "bio-refugium-fish",
      subgroup = "bio-fish",
      enabled = false,
      energy_required = 30,
      ingredients = {
        {type = "item", name = "alien-fish-3-raw", amount = 4},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "alien-fish-3-raw", amount = 3, catalyst_amount = 3},
        {
          type = "item",
          name = "alien-fish-3-raw",
          amount = 1,
          probability = 0.85,
          catalyst_amount = 1,
          show_details_in_recipe_tooltip = false
        },
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icon = "__angelsbioprocessing__/graphics/icons/alien-fish-3.png",
      icon_size = 32,
      order = "ad"
    },
    ---------------------------------------------------------------------------
    -- BREEDING ---------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "fish-breeding-0",
      category = "bio-refugium-fish",
      subgroup = "bio-fish-breeding",
      enabled = false,
      energy_required = 60,
      ingredients = {
        {type = "item", name = "raw-fish", amount = 2},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "raw-fish", amount_min = 2, amount_max = 4, catalyst_amount = 2},
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
        --{type="fluid", name="water-yellow-waste", amount=20},
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
          icon_size = 32
        },
        {
          icon = "__base__/graphics/icons/fish.png",
          icon_size = 64
        }
      },
      --icon_size = 32,
      order = "aa"
    },
    {
      type = "recipe",
      name = "fish-breeding-1",
      category = "bio-refugium-fish",
      subgroup = "bio-fish-breeding",
      enabled = false,
      energy_required = 60,
      ingredients = {
        {type = "item", name = "algae-brown", amount = 2},
        {type = "item", name = "alien-fish-1-raw", amount = 2},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "alien-fish-1-raw", amount_min = 5, amount_max = 10, catalyst_amount = 2},
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/alien-fish-1.png"
        }
      },
      icon_size = 32,
      order = "ab"
    },
    {
      type = "recipe",
      name = "fish-breeding-2",
      category = "bio-refugium-fish",
      subgroup = "bio-fish-breeding",
      enabled = false,
      energy_required = 60,
      ingredients = {
        {type = "item", name = "algae-green", amount = 2},
        {type = "item", name = "alien-fish-2-raw", amount = 2},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "alien-fish-2-raw", amount_min = 5, amount_max = 10, catalyst_amount = 2},
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/alien-fish-2.png"
        }
      },
      icon_size = 32,
      order = "ac"
    },
    {
      type = "recipe",
      name = "fish-breeding-3",
      category = "bio-refugium-fish",
      subgroup = "bio-fish-breeding",
      enabled = false,
      energy_required = 60,
      ingredients = {
        {type = "item", name = "bio-raw-meat", amount = 2},
        {type = "item", name = "alien-fish-3-raw", amount = 2},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "alien-fish-3-raw", amount_min = 5, amount_max = 10, catalyst_amount = 2},
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/alien-fish-3.png"
        }
      },
      icon_size = 32,
      order = "ad"
    },
    ---------------------------------------------------------------------------
    -- BUTCHERY ---------------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "fish-butchery-0",
      category = "bio-butchery",
      subgroup = "bio-fish-butchery",
      enabled = false,
      hidden = false,
      energy_required = 7.5,
      ingredients = {
        {type = "item", name = "raw-fish", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 1, probability = 0.5}
      },
      icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
      icon_size = 32,
      order = "aa"
    },
    {
      type = "recipe",
      name = "fish-butchery-1",
      category = "bio-butchery",
      subgroup = "bio-fish-butchery",
      enabled = false,
      hidden = false,
      energy_required = 7.5,
      ingredients = {
        {type = "item", name = "alien-fish-1-raw", amount = 1}
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
      name = "fish-butchery-2",
      category = "bio-butchery",
      subgroup = "bio-fish-butchery",
      enabled = false,
      hidden = false,
      energy_required = 7.5,
      ingredients = {
        {type = "item", name = "alien-fish-2-raw", amount = 1}
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
      name = "fish-butchery-3",
      category = "bio-butchery",
      subgroup = "bio-fish-butchery",
      enabled = false,
      hidden = false,
      energy_required = 7.5,
      ingredients = {
        {type = "item", name = "alien-fish-3-raw", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 2}
      },
      icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
      icon_size = 32,
      order = "ad"
    },
    ---------------------------------------------------------------------------
    -- CRYSTALIZATION ---------------------------------------------------------
    ---------------------------------------------------------------------------
    {
      type = "recipe",
      name = "crystal-splinter-crystalization-1",
      category = "crystallizing",
      subgroup = "bio-biter-processing-crystal-splinter",
      enabled = false,
      hidden = false,
      energy_required = 8,
      ingredients = {
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 50}
      },
      results = {
        {type = "item", name = "crystal-splinter-raw", amount = 1, probability = 0.4}
      },
      always_show_products = true,
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-raw.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.bioprocessing.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "a[crystalization]-a"
    },
    {
      type = "recipe",
      name = "crystal-splinter-crystalization-2",
      category = "crystallizing",
      subgroup = "bio-biter-processing-crystal-splinter",
      enabled = false,
      hidden = false,
      energy_required = 8,
      ingredients = {
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 50},
        {type = "item", name = "crystal-seed", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-splinter-raw", amount = 1}
      },
      always_show_products = true,
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-splinter-raw.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.bioprocessing.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "a[crystalization]-b"
    }
  }
)
