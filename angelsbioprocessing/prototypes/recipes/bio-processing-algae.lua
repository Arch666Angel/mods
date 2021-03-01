data:extend(
  {
    --BROWN
    {
      type = "recipe",
      name = "algae-brown",
      category = "bio-processing",
      subgroup = "bio-processing-brown",
      enabled = false,
      energy_required = 30,
      ingredients = {
        {type = "fluid", name = "water-saline", amount = 100}
      },
      results = {
        {type = "item", name = "algae-brown", amount = 40}
      },
      icon_size = 32,
      order = "a[algae-brown]"
    },
    {
      type = "recipe",
      name = "algae-brown-burning", --burn for alkali (lithium, iod, kalzium)
      category = "smelting",
      subgroup = "bio-processing-brown",
      enabled = false,
      energy_required = 7.5,
      ingredients = {
        {type = "item", name = "algae-brown", amount = 20}
      },
      results = {
        {type = "item", name = "angels-void", amount = 1}
      },
      icon_size = 32,
      order = "b[algae-brown-burning]"
    },
    {
      type = "recipe",
      name = "algae-brown-burning-wash",
      category = "liquifying",
      subgroup = "bio-processing-brown",
      enabled = false,
      energy_required = 7.5,
      ingredients = {
        {type = "item", name = "algae-brown", amount = 20},
        {type = "fluid", name = "water-purified", amount = 50}
      },
      results = {
        {type = "item", name = "solid-sodium-carbonate", amount = 1}
      },
      icon_size = 32,
      order = "b[algae-brown-burning-wash]"
    },
    {
      type = "recipe",
      name = "solid-alginic-acid",
      category = "crafting",
      subgroup = "bio-processing-brown",
      enabled = false,
      energy_required = 10,
      ingredients = {
        {type = "item", name = "algae-brown", amount = 10}
      },
      results = {
        {type = "item", name = "solid-alginic-acid", amount = 2}
      },
      icon_size = 32,
      order = "c[solid-alginic-acid]"
    },
    --[[{
      type = "recipe",
      name = "circuit-wood-fiber-board",
      icon = "__angelsbioprocessing__/graphics/icons/wood-fiber-board.png",
      category = "advanced-crafting",
      subgroup = "bio-processing-brown",
      enabled = false,
      energy_required = 4,
      ingredients =
      {
        {type="item", name="cellulose-fiber", amount=4},
        {type="item", name="solid-alginic-acid", amount=1},
      },
      results=
      {
        {type="item", name="circuit-wood-fiber-board", amount=3},
      },
      icon_size = 32,
      order = "c[circuit-wood-fiber-board]",
    },]]

    --GREEN
    {
      type = "recipe",
      name = "algae-green-simple",
      category = "bio-processing",
      subgroup = "bio-processing-green",
      enabled = false,
      energy_required = 30,
      main_product = "algae-green",
      ingredients = {
        {type = "fluid", name = "water", amount = 100}
      },
      results = {
        {type = "item", name = "algae-green", amount = 25},
        {type = "item", name = "algae-brown", amount = 5}
      },
      icons = angelsmods.functions.add_number_icon_layer({
          {
            icon = "__angelsbioprocessing__/graphics/icons/algae-green.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        1, angelsmods.bioprocessing.number_tint),
      order = "aa[algae-farming]"
    },
    {
      type = "recipe",
      name = "algae-green",
      category = "bio-processing",
      subgroup = "bio-processing-green",
      enabled = false,
      energy_required = 15,
      ingredients = {
        {type = "fluid", name = "water-mineralized", amount = 80},
        {type = "fluid", name = "gas-carbon-dioxide", amount = 80}
      },
      results = {
        {type = "item", name = "algae-green", amount = 50}
      },
      icons = angelsmods.functions.add_number_icon_layer({
          {
            icon = "__angelsbioprocessing__/graphics/icons/algae-green.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        2, angelsmods.bioprocessing.number_tint),
      order = "ab[algae-farming]"
    },
    {
      type = "recipe",
      name = "cellulose-fiber-algae",
      category = "crafting",
      subgroup = "bio-processing-green",
      enabled = false,
      energy_required = 3,
      ingredients = {
        {type = "item", name = "algae-green", amount = 10}
      },
      results = {
        {type = "item", name = "cellulose-fiber", amount = 5}
      },
      icon = "__angelsbioprocessing__/graphics/icons/cellulose-fiber-algae.png",
      icon_size = 32,
      order = "b[cellulose-fiber-algae]"
    },
    {
      type = "recipe",
      name = "gas-methanol-from-wood",
      category = "liquifying",
      subgroup = "bio-processing-green",
      enabled = false,
      energy_required = 30,
      ingredients = {
        {type = "item", name = "cellulose-fiber", amount = 20}
      },
      results = {
        {type = "fluid", name = "gas-methanol", amount = 100}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/methanol.png", 72}
        },
        "coh"
      ),
      order = "k[gas-methanol-from-wood]"
    },
    --BLUE
    {
      type = "recipe",
      name = "algae-blue",
      category = "bio-processing",
      subgroup = "bio-processing-blue",
      enabled = false,
      energy_required = 20,
      ingredients = {
        {type = "fluid", name = "water-yellow-waste", amount = 100},
        {type = "fluid", name = "gas-carbon-dioxide", amount = 100}
      },
      results = {
        {type = "item", name = "algae-blue", amount = 40}
      },
      icon = "__angelsbioprocessing__/graphics/icons/algae-blue.png",
      icon_size = 32,
      order = "a[algae-blue]"
    },
    {
      type = "recipe",
      name = "blue-fiber-algae",
      category = "crafting",
      subgroup = "bio-processing-blue",
      enabled = false,
      energy_required = 3,
      ingredients = {
        {type = "item", name = "algae-blue", amount = 10}
      },
      results = {
        {type = "item", name = "blue-cellulose-fiber", amount = 5}
      },
      icon = "__angelsbioprocessing__/graphics/icons/blue-cellulose-fiber.png",
      icon_size = 32,
      order = "b[blue-fiber-algae]"
    },
    {
      type = "recipe",
      name = "gas-ammonia-from-blue-fiber",
      category = "liquifying",
      subgroup = "bio-processing-blue",
      enabled = false,
      energy_required = 30,
      ingredients = {
        {type = "item", name = "blue-cellulose-fiber", amount = 20}
      },
      results = {
        {type = "fluid", name = "gas-ammonia", amount = 100}
      },
      always_show_products = true,
      icons = angelsmods.functions.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/ammonia.png", 72}
        },
        "nhh"
      ),
      order = "c[gas-ammonia-from-blue-fiber]"
    },
    --RED
    {
      type = "recipe",
      name = "algae-red",
      category = "bio-processing",
      subgroup = "bio-processing-red",
      enabled = false,
      energy_required = 20,
      ingredients = {
        {type = "fluid", name = "thermal-water", amount = 100},
        {type = "fluid", name = "gas-ammonia", amount = 100}
      },
      results = {
        {type = "item", name = "algae-red", amount = 40}
      },
      icon = "__angelsbioprocessing__/graphics/icons/algae-red.png",
      icon_size = 32,
      order = "a[algae-red]"
    },
    {
      type = "recipe",
      name = "red-fiber-algae",
      category = "crafting",
      subgroup = "bio-processing-red",
      enabled = false,
      energy_required = 3,
      ingredients = {
        {type = "item", name = "algae-red", amount = 10}
      },
      results = {
        {type = "item", name = "red-cellulose-fiber", amount = 5}
      },
      icon = "__angelsbioprocessing__/graphics/icons/red-cellulose-fiber.png",
      icon_size = 32,
      order = "b[red-fiber-algae]"
    },
    {
      type = "recipe",
      name = "solid-calcium-carbonate",
      category = "liquifying",
      subgroup = "bio-processing-red",
      enabled = false,
      energy_required = 30,
      ingredients = {
        {type = "item", name = "red-cellulose-fiber", amount = 20}
      },
      results = {
        {type = "item", name = "solid-calcium-carbonate", amount = 5}
      },
      icon = "__angelsbioprocessing__/graphics/icons/solid-calcium-carbonate.png",
      icon_size = 32,
      order = "c[solid-calcium-carbonate]"
    }
  }
)
