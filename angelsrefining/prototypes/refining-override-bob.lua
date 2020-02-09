local OV = angelsmods.functions.OV

--if bobmods.plates then
if mods.bobplates then
  OV.patch_recipes(
    {
      {name = "filter-ceramic", ingredients = {{"alumina", 1}}},
      --SLAG PROCESSING
      --1-IRON, COPPER
      {
        name = "slag-processing-1",
        results = {
          {"!!"},
          {name = "copper-ore", type = "item", amount = 1, probability = 0.4},
          {name = "iron-ore", type = "item", amount = 1, probability = 0.4}
        },
        icon = "__angelsrefining__/graphics/icons/slag-processing-bob1.png"
      },
      --2-LEAD, TIN
      {
        name = "slag-processing-2",
        results = {
          {"!!"},
          {name = "lead-ore", type = "item", amount = 1, probability = 0.4},
          {name = "tin-ore", type = "item", amount = 1, probability = 0.4}
        },
        icon = "__angelsrefining__/graphics/icons/slag-processing-bob2.png"
      },
      --3-NICKEL, QUARTZ
      {
        name = "slag-processing-3",
        results = {
          {"!!"},
          {name = "nickel-ore", type = "item", amount = 1, probability = 0.4},
          {name = "quartz", type = "item", amount = 1, probability = 0.4}
        },
        icon = "__angelsrefining__/graphics/icons/slag-processing-bob3.png"
      },
      --4-BAUXITE, COBALT, ZINC
      {
        name = "slag-processing-4",
        results = {
          {"!!"},
          {name = "bauxite-ore", type = "item", amount = 1, probability = 0.4},
          {name = "cobalt-ore", type = "item", amount = 1, probability = 0.2},
          {name = "zinc-ore", type = "item", amount = 1, probability = 0.2}
        },
        icon = "__angelsrefining__/graphics/icons/slag-processing-bob4.png"
      },
      --5-SILVER, RUTILE
      {
        name = "slag-processing-5",
        results = {
          {"!!"},
          {name = "silver-ore", type = "item", amount = 1, probability = 0.4},
          {name = "rutile-ore", type = "item", amount = 1, probability = 0.4}
        },
        icon = "__angelsrefining__/graphics/icons/slag-processing-bob5.png"
      },
      --6-GOLD, TUNGSTEN
      {
        name = "slag-processing-6",
        results = {
          {"!!"},
          {name = "gold-ore", type = "item", amount = 1, probability = 0.4},
          {name = "tungsten-ore", type = "item", amount = 1, probability = 0.4}
        },
        icon = "__angelsrefining__/graphics/icons/slag-processing-bob6.png"
      },
      --7-URANIUM, FLUORITE
      {
        name = "slag-processing-7",
        results = {
          {"!!"},
          {name = "uranium-ore", type = "item", amount = 1, probability = 0.05}
        },
        icons = {
          {icon = "__angelsrefining__/graphics/icons/slag-processing-blank.png"},
          {icon = "__base__/graphics/icons/uranium-ore.png", scale = 0.32, shift = {-12, 12}}
        }
      }
    }
  )

  if angelsmods.petrochem then
    OV.patch_recipes(
      {
        {
          name = "slag-processing-7",
          results = {
            {name = "fluorite-ore", type = "item", amount = 1, probability = 0.2}
          },
          icons = {
            {icon = "__angelsrefining__/graphics/icons/slag-processing-blank.png"},
            {icon = "__base__/graphics/icons/uranium-ore.png", scale = 0.32, shift = {-12, 12}},
            {icon = "__angelsrefining__/graphics/icons/ore-fluorite.png", scale = 0.32, shift = {12, 12}}
          }
        }
      }
    )
  end
  --8-EMPTY,
  OV.disable_recipe("slag-processing-8")
  --9-EMPTY
  OV.disable_recipe("slag-processing-9")

  --SORTING
  OV.patch_recipes(
    {
      --SAPHIRITE (IRON, COPPER, QUARTZ, NICKEL, RUTILE, ZINC)
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
          {"rutile-ore", 1}
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
          {"rutile-ore", 1},
          {"zinc-ore", 1}
        }
      },
      --JIVOLITE (IRON, COPPER, BAUXITE, ZINC, SILVER, TUNGSTEN)
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
          {"bauxite-ore", 1},
          {"zinc-ore", 1}
        }
      },
      --CRYSTAL
      {
        name = "angelsore2-crystal-processing",
        results = {
          {"iron-ore", 3},
          {"copper-ore", 1},
          {"bauxite-ore", 1},
          {"zinc-ore", 1},
          {"silver-ore", 1}
        }
      },
      --PURE
      {
        name = "angelsore2-pure-processing",
        results = {
          {"!!"},
          {"iron-ore", 3},
          {"copper-ore", 2},
          {"bauxite-ore", 1},
          {"zinc-ore", 1},
          {"silver-ore", 1},
          {"tungsten-ore", 1}
        }
      },
      --STIRATITE (COPPER, IRON, COBALT, TIN, URANIUM, BAUXITE)
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
          {"cobalt-ore", 1},
          {"tin-ore", 1}
        }
      },
      --CRYSTAL
      {
        name = "angelsore3-crystal-processing",
        results = {
          {"copper-ore", 3},
          {"iron-ore", 1},
          {"cobalt-ore", 1},
          {"tin-ore", 1},
          {"uranium-ore", 1}
        }
      },
      --PURE
      {
        name = "angelsore3-pure-processing",
        results = {
          {"!!"},
          {"copper-ore", 3},
          {"iron-ore", 2},
          {"cobalt-ore", 1},
          {"tin-ore", 1},
          {"uranium-ore", 1},
          {"bauxite-ore", 1}
        }
      },
      --CROTINIUM (COPPER, IRON, LEAD, SILVER, GOLD, RUTILE)
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
          {"lead-ore", 1},
          {"silver-ore", 1}
        }
      },
      --CRYSTAL
      {
        name = "angelsore4-crystal-processing",
        results = {
          {"copper-ore", 3},
          {"iron-ore", 1},
          {"lead-ore", 1},
          {"silver-ore", 1},
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
          {"lead-ore", 1},
          {"silver-ore", 1},
          {"gold-ore", 1},
          {"rutile-ore", 1}
        }
      },
      --RUBYTE (LEAD, NICKEL, BAUXITE, GOLD, RUTILE, TUNGSTEN)
      --CRUSHED
      {
        name = "angelsore5-crushed-processing",
        results = {
          {"lead-ore", 2},
          {"nickel-ore", 1}
        }
      },
      --CHUNK
      {
        name = "angelsore5-chunk-processing",
        results = {
          {"lead-ore", 2},
          {"nickel-ore", 1},
          {"bauxite-ore", 1},
          {"gold-ore", 1}
        }
      },
      --CRYSTAL
      {
        name = "angelsore5-crystal-processing",
        results = {
          {"lead-ore", 3},
          {"nickel-ore", 1},
          {"bauxite-ore", 1},
          {"gold-ore", 1},
          {"rutile-ore", 1}
        }
      },
      --PURE
      {
        name = "angelsore5-pure-processing",
        results = {
          {"!!"},
          {"lead-ore", 3},
          {"nickel-ore", 2},
          {"bauxite-ore", 1},
          {"gold-ore", 1},
          {"rutile-ore", 1},
          {"tungsten-ore", 1}
        }
      },
      --BOBMONIUM (TIN, QUARTZ, COBALT, ZINC, BAUXITE, URANIUM)
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
          {"cobalt-ore", 1},
          {"zinc-ore", 1}
        }
      },
      --CRYSTAL
      {
        name = "angelsore6-crystal-processing",
        results = {
          {"tin-ore", 3},
          {"quartz", 1},
          {"cobalt-ore", 1},
          {"zinc-ore", 1},
          {"bauxite-ore", 1}
        }
      },
      --PURE
      {
        name = "angelsore6-pure-processing",
        results = {
          {"!!"},
          {"tin-ore", 3},
          {"quartz", 2},
          {"cobalt-ore", 1},
          {"zinc-ore", 1},
          {"bauxite-ore", 1},
          {"uranium-ore", 1}
        }
      }
    }
  )

  if angelsmods.smelting and bobmods.plates then
    OV.patch_recipes(
      {
        --ORE 8 (IRON, MANGANESE, NICKEL, COBALT, CHROME)
        --CRUSHED
        {
          name = "angelsore8-crushed-processing",
          results = {
            {"!!"},
            {"iron-ore", 2},
            {"manganese-ore", 2}
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
        --ORE 9 (COPPER, TIN, SILICON, SILVER, GOLD)
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
            {"quartz", 1}
          }
        },
        --DUST
        {
          name = "angelsore9-dust-processing",
          results = {
            {"!!"},
            {"copper-ore", 4},
            {"tin-ore", 2},
            {"quartz", 1},
            {"silver-ore", 1}
          }
        },
        --CRYSTAL
        {
          name = "angelsore9-crystal-processing",
          results = {
            {"!!"},
            {"copper-ore", 4},
            {"tin-ore", 2},
            {"quartz", 1},
            {"silver-ore", 1},
            {"gold-ore", 1}
          }
        }
      }
    )
  else
    OV.disable_technology(
      {"ore-advanced-crushing", "ore-powderizer", "ore-advanced-floatation", "ore-electro-whinning-cell"}
    )
  end

  OV.patch_recipes(
    {
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
          {"nickel-ore", 4}
        },
        icon = "__angelsrefining__/graphics/icons/angels-ore-mix-nickel-sorting.png"
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
          {"silver-ore", 6}
        },
        icon = "__angelsrefining__/graphics/icons/angels-ore-mix-silver-sorting.png"
      },
      {
        name = "angelsore-crystal-mix5-processing",
        results = {
          {"!!"},
          {"uranium-ore", 3}
        },
        icons = {
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          {icon = "__base__/graphics/icons/uranium-ore.png", scale = 0.5, shift = {10, 10}}
        }
      },
      --PURE
      {
        name = "angelsore-pure-mix1-processing",
        results = {
          {"!!"},
          {"tungsten-ore", 6}
        },
        icon = "__angelsrefining__/graphics/icons/angels-ore-mix-tungsten-sorting.png"
      },
      --SMELTING RECIPES
      {
        name = "angelsore5-crushed-smelting",
        results = {
          {"!!"},
          {"lead-plate", 1}
        },
        icon = "__angelsrefining__/graphics/icons/lead-plate-crushed.png"
      },
      {
        name = "angelsore6-crushed-smelting",
        results = {
          {"!!"},
          {"tin-plate", 1}
        },
        icon = "__angelsrefining__/graphics/icons/tin-plate-crushed.png"
      }
    }
  )

  --DISABLE UNUSED RECIPES
  if angelsmods.petrochem then
    OV.patch_recipes(
      {
        {
          name = "angelsore-chunk-mix5-processing",
          results = {
            {"!!"},
            {"fluorite-ore", 2}
          },
          icons = {
            {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
            {icon = "__angelsrefining__/graphics/icons/ore-fluorite.png", scale = 0.5, shift = {10, 10}}
          }
        }
      }
    )
  else
    OV.disable_recipe("angelsore-chunk-mix5-processing")
  end
  OV.disable_recipe("angelsore-chunk-mix6-processing")
  OV.disable_recipe("angelsore-pure-mix2-processing")
  OV.disable_recipe("angelsore-pure-mix3-processing")

  --LOCALIZATION STRINGS
  --SLAG PROCESSING
  angelsmods.functions.add_recipe_localization("slag-processing-1", "slag-processing", "iron", "copper")
  angelsmods.functions.add_recipe_localization("slag-processing-2", "slag-processing", "lead", "tin")
  angelsmods.functions.add_recipe_localization("slag-processing-3", "slag-processing", "nickel", "quartz")
  angelsmods.functions.add_recipe_localization("slag-processing-4", "slag-processing", "bauxite", "cobalt", "zinc")
  angelsmods.functions.add_recipe_localization("slag-processing-5", "slag-processing", "silver", "rutile")
  angelsmods.functions.add_recipe_localization("slag-processing-6", "slag-processing", "gold", "tungsten")
  angelsmods.functions.add_recipe_localization("slag-processing-7", "slag-processing", "uranium", "fluorite")

  --8-EMPTY
  --empty

  --SAPHIRITE (IRON, COPPER, QUARTZ, NICKEL, RUTILE, ZINC)
  angelsmods.functions.add_localization(
    "angels-ore1",
    "angels-ore",
    "iron",
    "copper",
    "quartz",
    "nickel",
    "rutile",
    "zinc"
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
    "rutile",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore1-pure",
    "angels-ore-pure",
    "iron",
    "copper",
    "quartz",
    "nickel",
    "rutile",
    "zinc"
  )

  --JIVOLITE (IRON, COPPER, BAUXITE, ZINC, SILVER, TUNGSTEN)
  angelsmods.functions.add_localization(
    "angels-ore2",
    "angels-ore",
    "iron",
    "copper",
    "bauxite",
    "zinc",
    "silver",
    "tungsten"
  )
  angelsmods.functions.add_localization(
    "angels-ore2-crushed",
    "angels-ore-crushed",
    "iron",
    "copper",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore2-chunk",
    "angels-ore-chunk",
    "iron",
    "copper",
    "bauxite",
    "zinc",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore2-crystal",
    "angels-ore-crystal",
    "iron",
    "copper",
    "bauxite",
    "zinc",
    "silver",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore2-pure",
    "angels-ore-pure",
    "iron",
    "copper",
    "bauxite",
    "zinc",
    "silver",
    "tungsten"
  )

  --STIRATITE (COPPER, IRON, COBALT, TIN, URANIUM, BAUXITE)
  angelsmods.functions.add_localization(
    "angels-ore3",
    "angels-ore",
    "copper",
    "iron",
    "cobalt",
    "tin",
    "uranium",
    "bauxite"
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
    "cobalt",
    "tin",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore3-crystal",
    "angels-ore-crystal",
    "copper",
    "iron",
    "cobalt",
    "tin",
    "uranium",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore3-pure",
    "angels-ore-pure",
    "copper",
    "iron",
    "cobalt",
    "tin",
    "uranium",
    "bauxite"
  )

  --CROTINIUM (COPPER, IRON, LEAD, SILVER, GOLD, RUTILE)
  angelsmods.functions.add_localization(
    "angels-ore4",
    "angels-ore",
    "copper",
    "iron",
    "lead",
    "silver",
    "gold",
    "rutile"
  )
  angelsmods.functions.add_localization(
    "angels-ore4-crushed",
    "angels-ore-crushed",
    "copper",
    "iron",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore4-chunk",
    "angels-ore-chunk",
    "copper",
    "iron",
    "lead",
    "silver",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore4-crystal",
    "angels-ore-crystal",
    "copper",
    "iron",
    "lead",
    "silver",
    "gold",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore4-pure",
    "angels-ore-pure",
    "copper",
    "iron",
    "lead",
    "silver",
    "gold",
    "rutile"
  )

  --RUBYTE (LEAD, NICKEL, BAUXITE, GOLD, RUTILE, TUNGSTEN)
  angelsmods.functions.add_localization(
    "angels-ore5",
    "angels-ore",
    "lead",
    "nickel",
    "bauxite",
    "gold",
    "rutile",
    "tungsten"
  )
  angelsmods.functions.add_localization(
    "angels-ore5-crushed",
    "angels-ore-crushed",
    "lead",
    "nickel",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore5-chunk",
    "angels-ore-chunk",
    "lead",
    "nickel",
    "bauxite",
    "gold",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore5-crystal",
    "angels-ore-crystal",
    "lead",
    "nickel",
    "bauxite",
    "gold",
    "rutile",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore5-pure",
    "angels-ore-pure",
    "lead",
    "nickel",
    "bauxite",
    "gold",
    "rutile",
    "tungsten"
  )

  --BOBMONIUM (TIN, QUARTZ, COBALT, ZINC, BAUXITE, URANIUM)
  angelsmods.functions.add_localization(
    "angels-ore6",
    "angels-ore",
    "tin",
    "quartz",
    "cobalt",
    "zinc",
    "bauxite",
    "uranium"
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
    "cobalt",
    "zinc",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore6-crystal",
    "angels-ore-crystal",
    "tin",
    "quartz",
    "cobalt",
    "zinc",
    "bauxite",
    "slag"
  )
  angelsmods.functions.add_localization(
    "angels-ore6-pure",
    "angels-ore-pure",
    "tin",
    "quartz",
    "cobalt",
    "zinc",
    "bauxite",
    "uranium"
  )
end
