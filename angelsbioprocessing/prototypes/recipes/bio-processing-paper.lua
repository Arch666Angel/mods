local AF = angelsmods.functions
data:extend(
  {
    {
      type = "recipe",
      name = "cellulose-fiber-raw-wood",
      category = "crafting",
      subgroup = "bio-processing-wood",
      enabled = true,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "wood", amount = 2}
      },
      results = {
        {type = "item", name = "cellulose-fiber", amount = 4}
      },
      icon = "__angelsbioprocessing__/graphics/icons/cellulose-fiber-raw-wood.png",
      icon_size = 32,
      order = "b"
    },
    {
      type = "recipe",
      name = "wood-pellets",
      category = "crafting",
      subgroup = "bio-processing-wood",
      enabled = false,
      energy_required = 4,
      ingredients = {
        {type = "item", name = "cellulose-fiber", amount = 12}
      },
      results = {
        {type = "item", name = "wood-pellets", amount = 2}
      },
      icon = "__angelsbioprocessing__/graphics/icons/wood-pellets.png",
      icon_size = 32,
      order = "c"
    },
    {
      type = "recipe",
      name = "wood-bricks",
      category = "crafting",
      subgroup = "bio-processing-wood",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "wood-pellets", amount = 8}
      },
      results = {
        {type = "item", name = "wood-bricks", amount = 4}
      },
      icon = "__angelsbioprocessing__/graphics/icons/wood-bricks.png",
      icon_size = 32,
      order = "d"
    },
    {
      type = "recipe",
      name = "gas-carbon-dioxide-from-wood",
      category = "liquifying",
      subgroup = "bio-processing-wood",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "wood-pellets", amount = 1}
      },
      results = {
        {type = "fluid", name = "gas-carbon-dioxide", amount = 70}
      },
      always_show_products = true,
      icons = AF.create_gas_recipe_icon(
        {
          {"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72}
        },
        "COO"
      ),
      crafting_machine_tint = AF.get_recipe_tints({"gas-carbon-dioxide", {r = 225/255, g = 160/255, b = 106/255}, "gas-carbon-dioxide", {r = 225/255, g = 160/255, b = 106/255}}),
      order = "e"
    },
    {
      type = "recipe",
      name = "wood-charcoal",
      category = "smelting",
      subgroup = "bio-processing-wood",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "wood-pellets", amount = 2}
      },
      results = {
        {type = "item", name = "wood-charcoal", amount = 3}
      },
      icon_size = 32,
      order = "f"
    },
    {
      type = "recipe",
      name = "carbon-from-charcoal",
      category = "liquifying",
      subgroup = "bio-processing-wood",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "wood-charcoal", amount = 1},
        {type = "fluid", name = "gas-oxygen", amount = 20}
      },
      results = {
        {type = "item", name = "solid-carbon", amount = 2}
      },
      icon_size = 32,
      crafting_machine_tint = AF.get_recipe_tints({AF.fluid_color("Cb"), "gas-oxygen", AF.fluid_color("C"), "gas-oxygen"}),
      order = "g"
    },
    --PULP
    --T1
    {
      type = "recipe",
      name = "solid-wood-pulp",
      category = "crafting",
      subgroup = "bio-paper",
      enabled = false,
      energy_required = 4,
      ingredients = {
        {type = "item", name = "cellulose-fiber", amount = 20},
        {type = "item", name = "solid-alginic-acid", amount = 5}
      },
      results = {
        {type = "item", name = "solid-wood-pulp", amount = 20}
      },
      icons = AF.add_number_icon_layer(
        AF.get_object_icons("solid-wood-pulp"),
        1, angelsmods.bioprocessing.number_tint),
      order = "aa"
    },
    --T2 SULFITE PROCESS
    {
      type = "recipe",
      name = "liquid-pulping-liquor",
      category = "advanced-chemistry",
      subgroup = "bio-liquor",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "fluid", name = "gas-sulfur-dioxide", amount = 100},
        {type = "fluid", name = "gas-oxygen", amount = 40},
        {type = "fluid", name = "water", amount = 50}
      },
      results = {
        {type = "fluid", name = "liquid-pulping-liquor", amount = 100}
      },
      main_product = "liquid-pulping-liquor",
      always_show_products = true,
      crafting_machine_tint = AF.get_recipe_tints({"liquid-pulping-liquor", "gas-sulfur-dioxide", "water", "gas-oxygen"}),
      order = "ba"
    },
    {
      type = "recipe",
      name = "brown-liquor-recovery",
      category = "liquifying",
      subgroup = "bio-liquor",
      enabled = false,
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-brown-liquor", amount = 50},
        {type = "item", name = "solid-sodium-hydroxide", amount = 2}
      },
      results = {
        {type = "item", name = "solid-sodium-sulfate", amount = 1},
        {type = "fluid", name = "water-red-waste", amount = 50}
      },
      icons = {
        {
          icon = "__angelspetrochem__/graphics/icons/solid-sodium-sulfate.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/liquid-brown-liquor.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      crafting_machine_tint = AF.get_recipe_tints({"water-red-waste", "liquid-brown-liquor", AF.fluid_color("NaSO3"), AF.fluid_color("NaOH")}),
      order = "bb"
    },
    {
      type = "recipe",
      name = "sulfite-pulping",
      category = "advanced-chemistry",
      subgroup = "bio-paper",
      enabled = false,
      energy_required = 6,
      ingredients = {
        {type = "item", name = "cellulose-fiber", amount = 20},
        {type = "fluid", name = "liquid-pulping-liquor", amount = 75},
        {type = "fluid", name = "gas-ammonia", amount = 25},
        {type = "fluid", name = "water", amount = 50}
      },
      results = {
        {type = "item", name = "solid-wood-pulp", amount = 25},
        {type = "fluid", name = "liquid-brown-liquor", amount = 75}
      },
      icons = AF.add_number_icon_layer(
        AF.get_object_icons("solid-wood-pulp"),
        2, angelsmods.bioprocessing.number_tint),
      crafting_machine_tint = AF.get_recipe_tints({"liquid-brown-liquor", "liquid-pulping-liquor", "gas-ammonia", "water"}),
      order = "ab"
    },
    --T3 KRAFT PROCESS (SULFATE PROCESS)
    {
      type = "recipe",
      name = "liquid-white-liquor",
      category = "liquifying",
      subgroup = "bio-liquor",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "solid-sodium-hydroxide", amount = 2},
        {type = "item", name = "solid-sodium-sulfate", amount = 2},
        {type = "fluid", name = "water", amount = 40}
      },
      results = {
        {type = "fluid", name = "liquid-white-liquor", amount = 40}
      },
      main_product = "liquid-white-liquor",
      always_show_products = true,
      crafting_machine_tint = AF.get_recipe_tints({"liquid-white-liquor", "water", AF.fluid_color("Na2SO3"), AF.fluid_color("NaOH")}),
      order = "caa"
    },
    {
      type = "recipe",
      name = "kraft-recovery",
      category = "liquifying",
      subgroup = "bio-liquor",
      enabled = false,
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-black-liquor", amount = 40}
      },
      results = {
        {type = "fluid", name = "liquid-green-liquor", amount = 40} --+energy gain
      },
      main_product = "liquid-green-liquor",
      always_show_products = true,
      crafting_machine_tint = AF.get_recipe_tints({"liquid-green-liquor", "liquid-black-liquor", "liquid-green-liquor", "liquid-black-liquor"}),
      order = "cb"
    },
    {
      type = "recipe",
      name = "kraft-causting",
      category = "chemistry",
      subgroup = "bio-liquor",
      enabled = false,
      energy_required = 6,
      ingredients = {
        {type = "fluid", name = "liquid-green-liquor", amount = 60},
        {type = "fluid", name = "water", amount = 60},
        {type = "item", name = "solid-lime", amount = 4}
      },
      results = {
        {type = "fluid", name = "liquid-white-liquor", amount = 55},
        {type = "item", name = "solid-limestone", amount = 4}
      },
      main_product = "liquid-white-liquor",
      always_show_products = true,
      crafting_machine_tint = AF.get_recipe_tints({"liquid-white-liquor", "water", AF.fluid_color("Na2SO3"), AF.fluid_color("NaOH")}),
      order = "cab"
    },
    {
      type = "recipe",
      name = "kraft-cooking-washing",
      category = "liquifying",
      subgroup = "bio-paper",
      enabled = false,
      energy_required = 6,
      ingredients = {
        {type = "item", name = "cellulose-fiber", amount = 20},
        {type = "fluid", name = "liquid-white-liquor", amount = 40}
      },
      results = {
        {type = "item", name = "solid-wood-pulp", amount = 30},
        {type = "fluid", name = "liquid-black-liquor", amount_min = 35, amount_max = 40}
      },
      always_show_products = true,
      icons = AF.add_number_icon_layer(
        AF.get_object_icons("solid-wood-pulp"),
        3, angelsmods.bioprocessing.number_tint),
        crafting_machine_tint = AF.get_recipe_tints({"liquid-black-liquor", "liquid-white-liquor", "liquid-black-liquor", "liquid-white-liquor"}),
      order = "ac"
    },
    --PAPER BLEACHING
    {
      type = "recipe",
      name = "paper-bleaching-1",
      category = "crafting",
      subgroup = "bio-paper",
      enabled = false,
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-wood-pulp", amount = 2}
      },
      results = {
        {type = "item", name = "solid-paper", amount = 4}
      },
      --main_product = "solid-paper",
      allow_decomposition = false,
      icons = AF.add_number_icon_layer(
        AF.get_object_icons("solid-paper"),
        1, angelsmods.bioprocessing.number_tint),
      order = "ba"
    },
    {
      type = "recipe",
      name = "paper-bleaching-2",
      category = "liquifying",
      subgroup = "bio-paper",
      enabled = false,
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-wood-pulp", amount = 2},
        {type = "item", name = "solid-sodium-hydroxide", amount = 2},
        {type = "fluid", name = "gas-chlorine", amount = 60}
      },
      results = {
        {type = "item", name = "solid-paper", amount = 5},
        {type = "item", name = "solid-sodium-hypochlorite", amount = 2}
      },
      --main_product = "solid-paper",
      allow_decomposition = false,
      icons = AF.add_number_icon_layer(
        AF.get_object_icons("solid-paper"),
        2, angelsmods.bioprocessing.number_tint),
      crafting_machine_tint = AF.get_recipe_tints({AF.fluid_color("NaOCl"),"gas-chlorine",AF.fluid_color("NaOH"),{1,1,1,1}--[[paper]]}),
      order = "bb"
    },
    {
      type = "recipe",
      name = "paper-bleaching-3",
      category = "advanced-chemistry",
      subgroup = "bio-paper",
      enabled = false,
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-wood-pulp", amount = 2},
        {type = "item", name = "solid-sodium-hydroxide", amount = 2},
        {type = "fluid", name = "gas-oxygen", amount = 60},
        {type = "fluid", name = "gas-sulfur-dioxide", amount = 40},
        {type = "fluid", name = "water", amount = 100}
      },
      results = {
        {type = "item", name = "solid-paper", amount = 6},
        {type = "item", name = "solid-sodium-carbonate", amount = 2},
        {type = "fluid", name = "water-yellow-waste", amount = 100}
      },
      --main_product = "solid-paper",
      allow_decomposition = false,
      icons = AF.add_number_icon_layer(
        AF.get_object_icons("solid-paper"),
        3, angelsmods.bioprocessing.number_tint),
      crafting_machine_tint = AF.get_recipe_tints({"water-yellow-waste","water","gas-oxygen","gas-sulfur-dioxide"}),
      order = "bc"
    }
  }
)
