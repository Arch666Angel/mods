local OV = angelsmods.functions.OV
if angelsmods.industries.components then
  -------------------------------------------------------------------------------
  -- BATTERY COMPONENTS 1 -------------------------------------------------------
  -------------------------------------------------------------------------------
  data:extend(
    {
      {
        type = "technology",
        name = "angels-components-batteries-1",
        icon = "__base__/graphics/technology/battery.png",
        icon_size = 256,
        icon_mipmaps = 4,
        prerequisites = {
          --"angels-lead-smelting-1",
          "angels-sulfur-processing-1",
          "bio-paper-1"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "battery-1"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-casing-1"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-frame-1"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-anode-1"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-cathode-1"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-electrolyte-1"
          }
        },
        unit = {
          count = 64,
          ingredients = {
            {type = "item", name = "automation-science-pack", amount = 1},
          },
          time = 60
        },
        order = "a-5"
      },
      {
        type = "technology",
        name = "angels-components-batteries-2",
        icon = "__base__/graphics/technology/battery.png",
        icon_size = 256,
        icon_mipmaps = 4,
        prerequisites = {
          "angels-tin-smelting-1",
          "angels-glass-smelting-1",
          "angels-zinc-smelting-1",
          "angels-nickel-smelting-1",
          "angels-components-batteries-1",
          --"ore-floatation"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "battery-2"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-casing-2"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-frame-2"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-anode-2"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-cathode-2"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-electrolyte-2"
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
        name = "angels-components-batteries-3", --unlocks for basic blocks 3 which is a military tier (but does not have the packs)
        icon = "__base__/graphics/technology/battery.png",
        icon_size = 256,
        icon_mipmaps = 4,
        prerequisites = {
          "angels-aluminium-smelting-1",
          "angels-cobalt-smelting-1",
          "angels-silver-smelting-1",
          "thermal-water-extraction",
          "bio-processing-green",
          "angels-components-batteries-2",
          "gas-steam-cracking-1"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "battery-3"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-casing-3"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-frame-3"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-anode-3"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-cathode-3"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-electrolyte-3"
          }
        },
        unit = {
          count = 64,
          ingredients = {
            {type = "item", name = "automation-science-pack", amount = 1},
            {type = "item", name = "logistic-science-pack", amount = 1},
            {type = "item", name = "chemical-science-pack", amount = 1},
          },
          time = 60
        },
        order = "a-5"
      },
      {
        type = "technology",
        name = "angels-components-batteries-4",
        icon = "__base__/graphics/technology/battery.png",
        icon_size = 256,
        icon_mipmaps = 4,
        prerequisites = {
          "angels-gold-smelting-1",
          --"plastic-1",
          "rubber",
          "angels-manganese-smelting-2",
          "angels-components-batteries-3"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "battery-4"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-casing-4"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-frame-4"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-anode-4"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-cathode-4"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-electrolyte-4"
          }
        },
        unit = {
          count = 64,
          ingredients = {
            {type = "item", name = "automation-science-pack", amount = 1},
            {type = "item", name = "logistic-science-pack", amount = 1},
            {type = "item", name = "chemical-science-pack", amount = 1},
          },
          time = 60
        },
        order = "a-5"
      },
      {
        type = "technology",
        name = "angels-components-batteries-5",
        icon = "__base__/graphics/technology/battery.png",
        icon_size = 256,
        icon_mipmaps = 4,
        prerequisites = {
          "angels-platinum-smelting-1",
          "angels-components-batteries-4",
          "utility-science-pack"
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "battery-5"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-casing-5"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-frame-5"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-anode-5"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-cathode-5"
          },
          {
            type = "unlock-recipe",
            recipe = "battery-electrolyte-5"
          }
        },
        unit = {
          count = 64,
          ingredients = {
            {type = "item", name = "automation-science-pack", amount = 1},
            {type = "item", name = "logistic-science-pack", amount = 1},
            {type = "item", name = "chemical-science-pack", amount = 1},
            {type = "item", name = "utility-science-pack", amount = 1}
          },
          time = 60
        },
        order = "a-5"
      }
    }
  )
  if mods["bobplates"] then
    data:extend(
      {
        {
          type = "technology",
          name = "angels-components-batteries-6",
          icon = "__base__/graphics/technology/battery.png",
          icon_size = 256,
          icon_mipmaps = 4,
          prerequisites = {
            "sodium-processing",
            "angels-tungsten-smelting-1",
            "angels-silver-smelting-2",
            "angels-components-batteries-5",
            "powder-metallurgy-5"
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "battery-6"
            },
            {
              type = "unlock-recipe",
              recipe = "battery-casing-6"
            },
            {
              type = "unlock-recipe",
              recipe = "battery-frame-6"
            },
            {
              type = "unlock-recipe",
              recipe = "battery-anode-6"
            },
            {
              type = "unlock-recipe",
              recipe = "battery-cathode-6"
            },
            {
              type = "unlock-recipe",
              recipe = "battery-electrolyte-6"
            },
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
        },
      }
    )
  end
end
