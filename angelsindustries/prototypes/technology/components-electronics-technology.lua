local OV = angelsmods.functions.OV
if angelsmods.industries.components then
  OV.add_unlock("bio-paper-1", "circuit-grey-board-alternative")
  OV.execute()

  data:extend(
    {
      {
        type = "technology",
        name = "tech-red-circuit",
        icon = "__angelsindustries__/graphics/technology/red-circuit-tech.png",
        icon_size = 128,
        prerequisites = {
          "angels-solder-smelting-basic",
          "bio-paper-1"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "circuit-resistor"
          },
          {
            type = "unlock-recipe",
            recipe = "electronic-parts-resistor"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-red-board"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-red"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-red-loaded"
          },
          {
            type = "unlock-recipe",
            recipe = "block-electronics-1"
          }
        },
        unit = {
          count = 64,
          ingredients = {
            {type = "item", name = "automation-science-pack", amount = 1}
          },
          time = 60
        },
        order = "a-5"
      },
      {
        type = "technology",
        name = "tech-green-circuit",
        icon = "__angelsindustries__/graphics/technology/green-circuit-tech.png",
        icon_size = 128,
        prerequisites = {
          "tech-red-circuit",
          "angels-components-batteries-1",
          "angels-components-construction-2",
          "angels-components-cabling-2",
          "automation-2",
          "resins"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "circuit-transistor"
          },
          {
            type = "unlock-recipe",
            recipe = "electronic-parts-transistor"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-green-board"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-green"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-green-loaded"
          },
          {
            type = "unlock-recipe",
            recipe = "block-electronics-2"
          }
        },
        unit = {
          count = 64,
          ingredients = {
            {type = "item", name = "automation-science-pack", amount = 1},
            {type = "item", name = "logistic-science-pack", amount = 1}
          },
          time = 60
        },
        order = "a-5"
      },
      {
        type = "technology",
        name = "tech-orange-circuit",
        icon = "__angelsindustries__/graphics/technology/orange-circuit-tech.png",
        icon_size = 128,
        prerequisites = {
          "tech-green-circuit",
          "angels-components-batteries-2",
          "angels-components-construction-3",
          "angels-components-cabling-3",
          "plastics"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "circuit-microchip"
          },
          {
            type = "unlock-recipe",
            recipe = "electronic-parts-microchip"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-orange-board"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-orange"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-orange-loaded"
          },
          {
            type = "unlock-recipe",
            recipe = "block-electronics-3"
          }
        },
        unit = {
          count = 64,
          ingredients = {
            {type = "item", name = "automation-science-pack", amount = 1},
            {type = "item", name = "logistic-science-pack", amount = 1}
          },
          time = 60
        },
        order = "a-5"
      },
      {
        type = "technology",
        name = "tech-blue-circuit",
        icon = "__angelsindustries__/graphics/technology/blue-circuit-tech.png",
        icon_size = 128,
        prerequisites = {
          "tech-orange-circuit",
          "angels-components-batteries-3",
          "angels-components-construction-4",
          "angels-components-cabling-4"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "circuit-transformer"
          },
          {
            type = "unlock-recipe",
            recipe = "electronic-parts-transformer"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-blue-board"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-blue"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-blue-loaded"
          },
          {
            type = "unlock-recipe",
            recipe = "block-electronics-4"
          }
        },
        unit = {
          count = 64,
          ingredients = {
            {type = "item", name = "automation-science-pack", amount = 1},
            {type = "item", name = "logistic-science-pack", amount = 1},
            {type = "item", name = "chemical-science-pack", amount = 1}
          },
          time = 60
        },
        order = "a-5"
      },
      {
        type = "technology",
        name = "tech-yellow-circuit",
        icon = "__angelsindustries__/graphics/technology/yellow-circuit-tech.png",
        icon_size = 128,
        prerequisites = {
          "tech-blue-circuit",
          "angels-components-batteries-4",
          "angels-components-construction-5",
          "angels-components-cabling-5"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "circuit-cpu"
          },
          {
            type = "unlock-recipe",
            recipe = "electronic-parts-cpu"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-yellow-board"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-yellow"
          },
          {
            type = "unlock-recipe",
            recipe = "circuit-yellow-loaded"
          },
          {
            type = "unlock-recipe",
            recipe = "block-electronics-5"
          }
        },
        unit = {
          count = 64,
          ingredients = {
            {type = "item", name = "automation-science-pack", amount = 1},
            {type = "item", name = "logistic-science-pack", amount = 1},
            {type = "item", name = "chemical-science-pack", amount = 1},
            {type = "item", name = "production-science-pack", amount = 1},
            {type = "item", name = "utility-science-pack", amount = 1}
          },
          time = 60
        },
        order = "a-5"
      }
    }
  )
end
