local OV = angelsmods.functions.OV

-----------------------------------------------------------------------------
-- ADD ELECTRONIC RECIPES TO ELECTRONIC ASSMBLY -----------------------------
-----------------------------------------------------------------------------
if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value == true then
  --create list of recipes to add to the electronicmachines
  for _, elec in pairs(
    {
      -- todo: move cables and coils to smelting!
      "copper-cable",
      "angels-wire-coil-copper-converting",
      "angels-wire-gold",
      "angels-wire-coil-gold-converting",
      "basic-platinated-copper-wire",
      "angels-wire-coil-platinum-converting",
      "basic-silvered-copper-wire",
      "angels-wire-coil-silver-converting",
      "basic-tinned-copper-wire",
      "angels-wire-coil-tin-converting",
      "angels-roll-solder-converting",
      "circuit-red-board",
      "circuit-green-board",
      "circuit-orange-board",
      "circuit-blue-board",
      --"circuit-yellow-board"
      "circuit-grey-board",
      "circuit-grey-board-alternative",
      "circuit-red",
      "circuit-green",
      "circuit-orange",
      "circuit-blue",
      "circuit-yellow",
      "circuit-grey",
      "circuit-red-loaded",
      "circuit-green-loaded",
      "circuit-orange-loaded",
      "circuit-blue-loaded",
      "circuit-yellow-loaded",
      "circuit-resistor",
      "circuit-transistor",
      "circuit-microchip",
      "circuit-transformer",
      "circuit-cpu"
    }
  ) do
    data.raw.recipe[elec].category = "electronics"
  end
end

if angelsmods.industries.tech then
else
  -----------------------------------------------------------------------------
  -- BASIC BLOCKS 1 -----------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend(
    {
      {
        type = "technology",
        name = "angels-basic-blocks-1",
        icon = "__angelsindustries__/graphics/technology/components-tech.png",
        icon_size = 64,
        prerequisites = {
          "tech-red-circuit",
          "angels-components-mechanical-1"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "block-enhancement-1"
          },
          {
            type = "unlock-recipe",
            recipe = "block-energy-1"
          },
          {
            type = "unlock-recipe",
            recipe = "block-exploration-1"
          },
          {
            type = "unlock-recipe",
            recipe = "block-logistic-1"
          },
          {
            type = "unlock-recipe",
            recipe = "block-production-1"
          },
          {
            type = "unlock-recipe",
            recipe = "block-warfare-1"
          }
        },
        unit = {
          count = 100,
          ingredients = {
            {"automation-science-pack", 1}
          },
          time = 60
        },
        order = "a-5"
      }
    }
  )

  -----------------------------------------------------------------------------
  -- BASIC BLOCKS 2 -----------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend(
    {
      {
        type = "technology",
        name = "angels-basic-blocks-2",
        icon = "__angelsindustries__/graphics/technology/components-tech.png",
        icon_size = 64,
        prerequisites = {
          "angels-basic-blocks-1",
          "logistic-science-pack",
          "angels-components-mechanical-2"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "block-enhancement-2"
          },
          {
            type = "unlock-recipe",
            recipe = "block-energy-2"
          },
          {
            type = "unlock-recipe",
            recipe = "block-exploration-2"
          },
          {
            type = "unlock-recipe",
            recipe = "block-logistic-2"
          },
          {
            type = "unlock-recipe",
            recipe = "block-production-2"
          },
          {
            type = "unlock-recipe",
            recipe = "block-warfare-2"
          }
        },
        unit = {
          count = 64,
          ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
          },
          time = 60
        },
        order = "a-5"
      }
    }
  )
  OV.add_unlock("logistic-science-pack", "block-construction-2")

  -----------------------------------------------------------------------------
  -- BASIC BLOCKS 3 -----------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend(
    {
      {
        type = "technology",
        name = "angels-basic-blocks-3",
        icon = "__angelsindustries__/graphics/technology/components-tech.png",
        icon_size = 64,
        prerequisites = {
          "angels-basic-blocks-2",
          "military-science-pack",
          "angels-components-mechanical-3"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "block-enhancement-3"
          },
          {
            type = "unlock-recipe",
            recipe = "block-energy-3"
          },
          {
            type = "unlock-recipe",
            recipe = "block-exploration-3"
          },
          {
            type = "unlock-recipe",
            recipe = "block-logistic-3"
          },
          {
            type = "unlock-recipe",
            recipe = "block-production-3"
          },
          {
            type = "unlock-recipe",
            recipe = "block-warfare-3"
          }
        },
        unit = {
          count = 64,
          ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
          },
          time = 60
        },
        order = "a-5"
      }
    }
  )
  OV.add_unlock("military-science-pack", "block-construction-3")
  OV.add_unlock("military-science-pack", "block-fluidbox-2")
  OV.add_unlock("military-science-pack", "block-mechanical-2")

  -----------------------------------------------------------------------------
  -- ADVANCED BLOCKS 1 --------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend(
    {
      {
        type = "technology",
        name = "angels-advanced-blocks-1",
        icon = "__angelsindustries__/graphics/technology/components-tech.png",
        icon_size = 64,
        prerequisites = {
          "angels-basic-blocks-3",
          "chemical-science-pack",
          "angels-components-mechanical-4"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "block-enhancement-4"
          },
          {
            type = "unlock-recipe",
            recipe = "block-energy-4"
          },
          {
            type = "unlock-recipe",
            recipe = "block-exploration-4"
          },
          {
            type = "unlock-recipe",
            recipe = "block-logistic-4"
          },
          {
            type = "unlock-recipe",
            recipe = "block-production-4"
          },
          {
            type = "unlock-recipe",
            recipe = "block-warfare-4"
          }
        },
        unit = {
          count = 64,
          ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
          },
          time = 60
        },
        order = "a-5"
      }
    }
  )
  OV.add_unlock("logistic-science-pack", "block-construction-4")

  -----------------------------------------------------------------------------
  -- ADVANCED BLOCKS 1 --------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend(
    {
      {
        type = "technology",
        name = "angels-advanced-blocks-2",
        icon = "__angelsindustries__/graphics/technology/components-tech.png",
        icon_size = 64,
        prerequisites = {
          "angels-advanced-blocks-1",
          "utility-science-pack",
          "angels-components-mechanical-5"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "block-enhancement-5"
          },
          {
            type = "unlock-recipe",
            recipe = "block-energy-5"
          },
          {
            type = "unlock-recipe",
            recipe = "block-exploration-5"
          },
          {
            type = "unlock-recipe",
            recipe = "block-logistic-5"
          },
          {
            type = "unlock-recipe",
            recipe = "block-production-5"
          },
          {
            type = "unlock-recipe",
            recipe = "block-warfare-5"
          }
        },
        unit = {
          count = 64,
          ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"utility-science-pack", 1}
          },
          time = 60
        },
        order = "a-5"
      }
    }
  )
  OV.add_unlock("utility-science-pack", "block-construction-5")
end
