local OV = angelsmods.functions.OV

--SLAG PROCESSING
OV.patch_recipes(
  {
    {name = "filter-ceramic", ingredients = {{"solid-aluminium-oxide", amount = 1}}},
    --1-IRON, COPPER
    {
      name = "slag-processing-1",
      results = {
        {"!!"},
        {name = "copper-ore", type = "item", amount = 1, probability = 0.4},
        {name = "iron-ore", type = "item", amount = 1, probability = 0.4}
      },
      icon = "__angelsrefining__/graphics/icons/slag-processing-angel1.png"
    },
    --2-LEAD, TIN
    {
      name = "slag-processing-2",
      results = {
        {"!!"},
        {name = "lead-ore", type = "item", amount = 1, probability = 0.4},
        {name = "tin-ore", type = "item", amount = 1, probability = 0.4}
      },
      icon = "__angelsrefining__/graphics/icons/slag-processing-angel2.png"
    },
    --3-SILVER, QUARTZ
    {
      name = "slag-processing-3",
      results = {
        {"!!"},
        {name = "silver-ore", type = "item", amount = 1, probability = 0.4},
        {name = "quartz", type = "item", amount = 1, probability = 0.4}
      },
      icon = "__angelsrefining__/graphics/icons/slag-processing-angel3.png"
    },
    --4-BAUXITE, MANGANESE
    {
      name = "slag-processing-4",
      results = {
        {"!!"},
        {name = "bauxite-ore", type = "item", amount = 1, probability = 0.4},
        {name = "manganese-ore", type = "item", amount = 1, probability = 0.4}
      },
      icon = "__angelsrefining__/graphics/icons/slag-processing-angel4.png"
    },
    --5-GOLD, NICKEL
    {
      name = "slag-processing-5",
      results = {
        {"!!"},
        {name = "gold-ore", type = "item", amount = 1, probability = 0.4},
        {name = "nickel-ore", type = "item", amount = 1, probability = 0.4}
      },
      icon = "__angelsrefining__/graphics/icons/slag-processing-angel5.png"
    },
    --6-ZINC, RUTILE
    {
      name = "slag-processing-6",
      results = {
        {"!!"},
        {name = "zinc-ore", type = "item", amount = 1, probability = 0.4},
        {name = "rutile-ore", type = "item", amount = 1, probability = 0.4}
      },
      icon = "__angelsrefining__/graphics/icons/slag-processing-angel6.png"
    },
    --7-PLATINUM, CHROME
    {
      name = "slag-processing-7",
      results = {
        {"!!"},
        {name = "platinum-ore", type = "item", amount = 1, probability = 0.4},
        {name = "chrome-ore", type = "item", amount = 1, probability = 0.4}
      },
      icon = "__angelsrefining__/graphics/icons/slag-processing-angel7.png"
    },
    --8-COBALT, TUNGSTEN
    {
      name = "slag-processing-8",
      results = {
        {"!!"},
        {name = "cobalt-ore", type = "item", amount = 1, probability = 0.4},
        {name = "tungsten-ore", type = "item", amount = 1, probability = 0.4}
      },
      icons = {
        {icon = "__angelsrefining__/graphics/icons/slag-processing-blank.png"},
        {icon = "__angelssmelting__/graphics/icons/ore-cobalt.png", scale = 0.32, shift = {-12, 12}},
        {icon = "__angelssmelting__/graphics/icons/ore-tungsten.png", scale = 0.32, shift = {12, 12}}
      }
    },
    --9-URANIUM, FLUORITE
    {
      name = "slag-processing-9",
      results = {
        {"!!"},
        {name = "uranium-ore", type = "item", amount = 1, probability = 0.05},
        {name = "fluorite-ore", type = "item", amount = 1, probability = 0.2}
      },
      icons = {
        {icon = "__angelsrefining__/graphics/icons/slag-processing-blank.png"},
        {icon = "__base__/graphics/icons/uranium-ore.png", icon_size = 64, scale = 0.16, shift = {-12, 12}},
        {icon = "__angelsrefining__/graphics/icons/ore-fluorite.png", scale = 0.32, shift = {12, 12}}
      }
    }
  }
)

--SORTING
OV.patch_recipes(
  {
    --SAPHIRITE (IRON, COPPER, QUARTZ, NICKEL, GOLD, TUNGSTEN)
    --CRUSHED
    {
      name = "angelsore1-crushed-processing",
      results = {
        {"iron-ore", 2},
        {"copper-ore", 1}
      }
    },
    --CHUNK
    {
      name = "angelsore1-chunk-processing",
      results = {
        {"iron-ore", 2},
        {"copper-ore", 1},
        {"quartz", 1},
        {"nickel-ore", 1}
      }
    },
    --CRYSTAL
    {
      name = "angelsore1-crystal-processing",
      results = {
        {"iron-ore", 3},
        {"copper-ore", 1},
        {"quartz", 1},
        {"nickel-ore", 1},
        {"gold-ore", 1}
      }
    },
    --PURE
    {
      name = "angelsore1-pure-processing",
      results = {
        {"!!"},
        {"iron-ore", 3},
        {"copper-ore", 2},
        {"quartz", 1},
        {"nickel-ore", 1},
        {"gold-ore", 1},
        {"tungsten-ore", 1}
      }
    },
    --JIVOLITE (IRON, COPPER, TIN, FLUORITE, RUTILE, PLATINUM)
    --CRUSHED
    {
      name = "angelsore2-crushed-processing",
      results = {
        {"iron-ore", 2},
        {"copper-ore", 1}
      }
    },
    --CHUNK
    {
      name = "angelsore2-chunk-processing",
      results = {
        {"iron-ore", 2},
        {"copper-ore", 1},
        {"tin-ore", 1},
        {"fluorite-ore", 1}
      }
    },
    --CRYSTAL
    {
      name = "angelsore2-crystal-processing",
      results = {
        {"iron-ore", 3},
        {"copper-ore", 1},
        {"tin-ore", 1},
        {"fluorite-ore", 1},
        {"rutile-ore", 1}
      }
    },
    --PURE
    {
      name = "angelsore2-pure-processing",
      results = {
        {"!!"},
        {"iron-ore", 3},
        {"copper-ore", 2},
        {"tin-ore", 1},
        {"fluorite-ore", 1},
        {"rutile-ore", 1},
        {"platinum-ore", 1}
      }
    },
    --STIRATITE (COPPER, IRON, SILVER, BAUXITE, COBALT, CHROME)
    --CRUSHED
    {
      name = "angelsore3-crushed-processing",
      results = {
        {"copper-ore", 2},
        {"iron-ore", 1}
      }
    },
    --CHUNK
    {
      name = "angelsore3-chunk-processing",
      results = {
        {"copper-ore", 2},
        {"iron-ore", 1},
        {"silver-ore", 1},
        {"bauxite-ore", 1}
      }
    },
    --CRYSTAL
    {
      name = "angelsore3-crystal-processing",
      results = {
        {"copper-ore", 3},
        {"iron-ore", 1},
        {"silver-ore", 1},
        {"bauxite-ore", 1},
        {"cobalt-ore", 1}
      }
    },
    --PURE
    {
      name = "angelsore3-pure-processing",
      results = {
        {"!!"},
        {"copper-ore", 3},
        {"iron-ore", 2},
        {"silver-ore", 1},
        {"bauxite-ore", 1},
        {"cobalt-ore", 1},
        {"chrome-ore", 1}
      }
    },
    --CROTINIUM (COPPER, IRON, ZINC, LEAD, GOLD, TUNGSTEN)
    --CRUSHED
    {
      name = "angelsore4-crushed-processing",
      results = {
        {"copper-ore", 2},
        {"iron-ore", 1}
      }
    },
    --CHUNK
    {
      name = "angelsore4-chunk-processing",
      results = {
        {"copper-ore", 2},
        {"iron-ore", 1},
        {"zinc-ore", 1},
        {"lead-ore", 1}
      }
    },
    --CRYSTAL
    {
      name = "angelsore4-crystal-processing",
      results = {
        {"copper-ore", 3},
        {"iron-ore", 1},
        {"zinc-ore", 1},
        {"lead-ore", 1},
        {"gold-ore", 1}
      }
    },
    --PURE
    {
      name = "angelsore4-pure-processing",
      results = {
        {"!!"},
        {"copper-ore", 3},
        {"iron-ore", 2},
        {"zinc-ore", 1},
        {"lead-ore", 1},
        {"gold-ore", 1},
        {"tungsten-ore", 1}
      }
    },
    --RUBYTE (LEAD, MANGANESE, SILVER, ZINC, URANIUM, PLATINUM)
    --CRUSHED
    {
      name = "angelsore5-crushed-processing",
      results = {
        {"lead-ore", 2},
        {"manganese-ore", 1}
      }
    },
    --CHUNK
    {
      name = "angelsore5-chunk-processing",
      results = {
        {"lead-ore", 2},
        {"manganese-ore", 1},
        {"silver-ore", 1},
        {"zinc-ore", 1}
      }
    },
    --CRYSTAL
    {
      name = "angelsore5-crystal-processing",
      results = {
        {"lead-ore", 3},
        {"manganese-ore", 1},
        {"silver-ore", 1},
        {"zinc-ore", 1},
        {"uranium-ore", 1}
      }
    },
    --PURE
    {
      name = "angelsore5-pure-processing",
      results = {
        {"!!"},
        {"lead-ore", 3},
        {"manganese-ore", 2},
        {"silver-ore", 1},
        {"zinc-ore", 1},
        {"uranium-ore", 1},
        {"platinum-ore", 1}
      }
    },
    --BOBMONIUM (TIN, QUARTZ, BAUXITE, MANGANESE, RUTILE, CHROME)
    --CRUSHED
    {
      name = "angelsore6-crushed-processing",
      results = {
        {"tin-ore", 2},
        {"quartz", 1}
      }
    },
    --CHUNK
    {
      name = "angelsore6-chunk-processing",
      results = {
        {"tin-ore", 2},
        {"quartz", 1},
        {"bauxite-ore", 1},
        {"manganese-ore", 1}
      }
    },
    --CRYSTAL
    {
      name = "angelsore6-crystal-processing",
      results = {
        {"tin-ore", 3},
        {"quartz", 1},
        {"bauxite-ore", 1},
        {"manganese-ore", 1},
        {"rutile-ore", 1}
      }
    },
    --PURE
    {
      name = "angelsore6-pure-processing",
      results = {
        {"!!"},
        {"tin-ore", 3},
        {"quartz", 2},
        {"bauxite-ore", 1},
        {"manganese-ore", 1},
        {"rutile-ore", 1},
        {"chrome-ore", 1}
      }
    },
    --ORE 8 (IRON, MANGANESE, NICKEL, COBALT, CHROME)
    --CRUSHED
    {
      name = "angelsore8-crushed-processing",
      results = {
        {"!!"},
        {"iron-ore", 3},
        {"manganese-ore", 1}
      }
    },
    --POWDER
    {
      name = "angelsore8-powder-processing",
      results = {
        {"!!"},
        {"iron-ore", 3},
        {"manganese-ore", 2},
        {"nickel-ore", 1}
      }
    },
    --DUST
    {
      name = "angelsore8-dust-processing",
      results = {
        {"!!"},
        {"iron-ore", 4},
        {"manganese-ore", 2},
        {"nickel-ore", 1},
        {"cobalt-ore", 1}
      }
    },
    --CRYSTAL
    {
      name = "angelsore8-crystal-processing",
      results = {
        {"!!"},
        {"iron-ore", 4},
        {"manganese-ore", 2},
        {"nickel-ore", 1},
        {"cobalt-ore", 1},
        {"chrome-ore", 1}
      }
    },
    --ORE 9 (COPPER, TIN, SILVER, GOLD, PLATINUM)
    --CRUSHED
    {
      name = "angelsore9-crushed-processing",
      results = {
        {"!!"},
        {"copper-ore", 2},
        {"tin-ore", 2}
      }
    },
    --POWDER
    {
      name = "angelsore9-powder-processing",
      results = {
        {"!!"},
        {"copper-ore", 3},
        {"tin-ore", 2},
        {"silver-ore", 1}
      }
    },
    --DUST
    {
      name = "angelsore9-dust-processing",
      results = {
        {"!!"},
        {"copper-ore", 4},
        {"tin-ore", 2},
        {"silver-ore", 1},
        {"gold-ore", 1}
      }
    },
    --CRYSTAL
    {
      name = "angelsore9-crystal-processing",
      results = {
        {"!!"},
        {"copper-ore", 4},
        {"tin-ore", 2},
        {"silver-ore", 1},
        {"gold-ore", 1},
        {"platinum-ore", 1}
      }
    },
    --MIXED PROCESSING
    --CRUSHED
    {
      name = "angelsore-crushed-mix1-processing",
      results = {
        {"!!"},
        {"iron-ore", 4}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore-mix-iron-sorting.png"
    },
    {
      name = "angelsore-crushed-mix2-processing",
      results = {
        {"!!"},
        {"copper-ore", 4}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore-mix-copper-sorting.png"
    },
    {
      name = "angelsore-crushed-mix3-processing",
      results = {
        {"!!"},
        {"lead-ore", 4}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore-mix-lead-sorting.png"
    },
    {
      name = "angelsore-crushed-mix4-processing",
      results = {
        {"!!"},
        {"tin-ore", 4}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore-mix-tin-sorting.png"
    },
    --CHUNK
    {
      name = "angelsore-chunk-mix1-processing",
      results = {
        {"!!"},
        {"quartz", 4}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore-mix-silica-sorting.png"
    },
    {
      name = "angelsore-chunk-mix2-processing",
      results = {
        {"!!"},
        {"manganese-ore", 4}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore-mix-manganese-sorting.png"
    },
    {
      name = "angelsore-chunk-mix3-processing",
      results = {
        {"!!"},
        {"bauxite-ore", 4}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore-mix-aluminium-sorting.png"
    },
    {
      name = "angelsore-chunk-mix4-processing",
      results = {
        {"!!"},
        {"zinc-ore", 4}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore-mix-zinc-sorting.png"
    },
    {
      name = "angelsore-chunk-mix5-processing",
      results = {
        {"!!"},
        {"silver-ore", 4}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore-mix-silver-sorting.png"
    },
    {
      name = "angelsore-chunk-mix6-processing",
      results = {
        {"!!"},
        {"fluorite-ore", 2}
      },
      icons = {
        {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
        {icon = "__angelsrefining__/graphics/icons/ore-fluorite.png", scale = 0.5, shift = {10, 10}}
      }
    },
    --CRYSTAL
    {
      name = "angelsore-crystal-mix1-processing",
      results = {
        {"!!"},
        {"rutile-ore", 6}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore-mix-titanium-sorting.png"
    },
    {
      name = "angelsore-crystal-mix2-processing",
      results = {
        {"!!"},
        {"gold-ore", 6}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore-mix-gold-sorting.png"
    },
    {
      name = "angelsore-crystal-mix3-processing",
      results = {
        {"!!"},
        {"cobalt-ore", 6}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore-mix-cobalt-sorting.png"
    },
    {
      name = "angelsore-crystal-mix4-processing",
      results = {
        {"!!"},
        {"nickel-ore", 6}
      },
      icon = "__angelsrefining__/graphics/icons/angels-ore-mix-nickel-sorting.png"
    },
    {
      name = "angelsore-crystal-mix5-processing",
      results = {
        {"!!"},
        {"uranium-ore", 3}
      },
      icons = {
        {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
        {icon = "__base__/graphics/icons/uranium-ore.png", icon_size = 64, scale = 0.25, shift = {10, 10}}
      }
    },
    --PURE
    {
      name = "angelsore-pure-mix1-processing",
      results = {
        {"!!"},
        {"tungsten-ore", 6}
      },
      icons = {
        {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
        {icon = "__angelssmelting__/graphics/icons/ore-tungsten.png", scale = 0.5, shift = {10, 10}}
      }
    },
    {
      name = "angelsore-pure-mix2-processing",
      results = {
        {"!!"},
        {"chrome-ore", 6}
      },
      icons = {
        {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
        {icon = "__angelssmelting__/graphics/icons/ore-chrome.png", scale = 0.5, shift = {10, 10}}
      }
    },
    {
      name = "angelsore-pure-mix3-processing",
      results = {
        {"!!"},
        {"platinum-ore", 6}
      },
      icons = {
        {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
        {icon = "__angelssmelting__/graphics/icons/ore-platinum.png", scale = 0.5, shift = {10, 10}}
      }
    },
    --SMELTING RECIPES
    {
      name = "angelsore5-crushed-smelting",
      results = {
        {"!!"},
        {"angels-plate-lead", 1}
      },
      icon = "__angelsrefining__/graphics/icons/lead-plate-crushed.png"
    },
    {
      name = "angelsore6-crushed-smelting",
      results = {
        {"!!"},
        {"angels-plate-tin", 1}
      },
      icon = "__angelsrefining__/graphics/icons/tin-plate-crushed.png"
    }
  }
)

--LOCALIZATION STRINGS
--SLAG PROCESSING
--1-IRON, COPPER
angelsmods.functions.add_recipe_localization("slag-processing-1", "slag-processing", "iron", "copper")
angelsmods.functions.add_recipe_localization("slag-processing-2", "slag-processing", "lead", "tin")
angelsmods.functions.add_recipe_localization("slag-processing-3", "slag-processing", "silver", "quartz")
angelsmods.functions.add_recipe_localization("slag-processing-4", "slag-processing", "bauxite", "manganese")
angelsmods.functions.add_recipe_localization("slag-processing-5", "slag-processing", "gold", "nickel")
angelsmods.functions.add_recipe_localization("slag-processing-6", "slag-processing", "zinc", "rutile")
angelsmods.functions.add_recipe_localization("slag-processing-7", "slag-processing", "platinum", "chrome")
angelsmods.functions.add_recipe_localization("slag-processing-8", "slag-processing", "cobalt", "tungsten")
angelsmods.functions.add_recipe_localization("slag-processing-9", "slag-processing", "uranium", "fluorite")

--SAPHIRITE (IRON, COPPER, QUARTZ, NICKEL, GOLD, TUNGSTEN)
angelsmods.functions.add_localization(
  "angels-ore1",
  "angels-ore",
  "iron",
  "copper",
  "quartz",
  "nickel",
  "gold",
  "tungsten"
)
angelsmods.functions.add_localization(
  "angels-ore1-crushed",
  "angels-ore-crushed",
  "iron",
  "copper",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore1-chunk",
  "angels-ore-chunk",
  "iron",
  "copper",
  "quartz",
  "nickel",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore1-crystal",
  "angels-ore-crystal",
  "iron",
  "copper",
  "quartz",
  "nickel",
  "gold",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore1-pure",
  "angels-ore-pure",
  "iron",
  "copper",
  "quartz",
  "nickel",
  "gold",
  "tungsten"
)

--JIVOLITE (IRON, COPPER, TIN, FLUORITE, RUTILE, PLATINUM)
angelsmods.functions.add_localization(
  "angels-ore2",
  "angels-ore",
  "iron",
  "copper",
  "tin",
  "fluorite",
  "rutile",
  "platinum"
)
angelsmods.functions.add_localization(
  "angels-ore2-crushed",
  "angels-ore-crushed-no-smelt",
  "iron",
  "copper",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore2-chunk",
  "angels-ore-chunk",
  "iron",
  "copper",
  "tin",
  "fluorite",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore2-crystal",
  "angels-ore-crystal",
  "iron",
  "copper",
  "tin",
  "fluorite",
  "rutile",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore2-pure",
  "angels-ore-pure",
  "iron",
  "copper",
  "tin",
  "fluorite",
  "rutile",
  "platinum"
)

--STIRATITE (COPPER, IRON, SILVER, BAUXITE, COBALT, CHROME)
angelsmods.functions.add_localization(
  "angels-ore3",
  "angels-ore",
  "copper",
  "iron",
  "silver",
  "bauxite",
  "cobalt",
  "chrome"
)
angelsmods.functions.add_localization(
  "angels-ore3-crushed",
  "angels-ore-crushed",
  "copper",
  "iron",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore3-chunk",
  "angels-ore-chunk",
  "copper",
  "iron",
  "silver",
  "bauxite",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore3-crystal",
  "angels-ore-crystal",
  "copper",
  "iron",
  "silver",
  "bauxite",
  "cobalt",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore3-pure",
  "angels-ore-pure",
  "copper",
  "iron",
  "silver",
  "bauxite",
  "cobalt",
  "chrome"
)

--CROTINIUM (COPPER, IRON, ZINC, LEAD, GOLD, TUNGSTEN)
angelsmods.functions.add_localization("angels-ore4", "angels-ore", "copper", "iron", "zinc", "lead", "gold", "tungsten")
angelsmods.functions.add_localization(
  "angels-ore4-crushed",
  "angels-ore-crushed-no-smelt",
  "copper",
  "iron",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore4-chunk",
  "angels-ore-chunk",
  "copper",
  "iron",
  "zinc",
  "lead",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore4-crystal",
  "angels-ore-crystal",
  "copper",
  "iron",
  "zinc",
  "lead",
  "gold",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore4-pure",
  "angels-ore-pure",
  "copper",
  "iron",
  "zinc",
  "lead",
  "gold",
  "tungsten"
)

--RUBYTE (LEAD, MANGANESE, SILVER, ZINC, URANIUM, PLATINUM)
angelsmods.functions.add_localization(
  "angels-ore5",
  "angels-ore",
  "lead",
  "manganese",
  "silver",
  "zinc",
  "uranium",
  "platinum"
)
angelsmods.functions.add_localization(
  "angels-ore5-crushed",
  "angels-ore-crushed",
  "lead",
  "manganese",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore5-chunk",
  "angels-ore-chunk",
  "lead",
  "manganese",
  "silver",
  "zinc",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore5-crystal",
  "angels-ore-crystal",
  "lead",
  "manganese",
  "silver",
  "zinc",
  "uranium",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore5-pure",
  "angels-ore-pure",
  "lead",
  "manganese",
  "silver",
  "zinc",
  "uranium",
  "platinum"
)

--BOBMONIUM (TIN, QUARTZ, BAUXITE, MANGANESE, RUTILE, CHROME)
angelsmods.functions.add_localization(
  "angels-ore6",
  "angels-ore",
  "tin",
  "quartz",
  "bauxite",
  "manganese",
  "rutile",
  "chrome"
)
angelsmods.functions.add_localization(
  "angels-ore6-crushed",
  "angels-ore-crushed",
  "tin",
  "quartz",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore6-chunk",
  "angels-ore-chunk",
  "tin",
  "quartz",
  "bauxite",
  "manganese",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore6-crystal",
  "angels-ore-crystal",
  "tin",
  "quartz",
  "bauxite",
  "manganese",
  "rutile",
  "slag"
)
angelsmods.functions.add_localization(
  "angels-ore6-pure",
  "angels-ore-pure",
  "tin",
  "quartz",
  "bauxite",
  "manganese",
  "rutile",
  "chrome"
)
