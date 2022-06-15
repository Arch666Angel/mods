local OV = angelsmods.functions.OV
if angelsmods.industries.components then
-------------------------------------------------------------------------------
-- WEAPON PARTS 1 -------------------------------------------------------------
-------------------------------------------------------------------------------
data:extend(
  {
    {
      type = "technology",
      name = "angels-components-weapons-basic",
      icon = "__base__/graphics/technology/military.png",
      icon_size = 256,
      icon_mipmaps = 4,
      prerequisites = {},
      effects = {
        {
          type = "unlock-recipe",
          recipe = "body-1"
        },
        {
          type = "unlock-recipe",
          recipe = "weapon-1"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-trigger"
        },
        {
          type = "unlock-recipe",
          recipe = "weapon-parts-trigger"
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
    }
  }
)

-------------------------------------------------------------------------------
-- WEAPON PARTS 2 -------------------------------------------------------------
-------------------------------------------------------------------------------
OV.add_unlock("military", "body-2")
OV.add_unlock("military", "weapon-2")
OV.add_unlock("military", "angels-explosionchamber")
OV.add_unlock("military", "weapon-parts-explosionchamber")
OV.add_prereq("military", "angels-components-weapons-basic")
OV.add_prereq("military", "angels-steel-smelting-1")

-------------------------------------------------------------------------------
-- WEAPON PARTS 3 -------------------------------------------------------------
-------------------------------------------------------------------------------
OV.add_unlock("military-2", "body-3")
OV.add_unlock("military-2", "weapon-3")
OV.add_unlock("military-2", "angels-fluidchamber")
OV.add_unlock("military-2", "weapon-parts-fluidchamber")
OV.add_prereq("military-2", "angels-aluminium-smelting-1")

-------------------------------------------------------------------------------
-- WEAPON PARTS 4 -------------------------------------------------------------
-------------------------------------------------------------------------------
data:extend(
  {
    {
      type = "technology",
      name = "angels-components-weapons-advanced",
      icon = "__base__/graphics/technology/military.png",
      icon_size = 256,
      icon_mipmaps = 4,
      prerequisites = {
        "military-science-pack",
        "angels-titanium-smelting-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "body-4"
        },
        {
          type = "unlock-recipe",
          recipe = "weapon-4"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-energycrystal"
        },
        {
          type = "unlock-recipe",
          recipe = "weapon-parts-energycrystal"
        }
      },
      unit = {
        count = 64,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "military-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 60
      },
      order = "a-5"
    }
  }
)

-------------------------------------------------------------------------------
-- WEAPON PARTS 5 -------------------------------------------------------------
-------------------------------------------------------------------------------
OV.add_unlock("military-3", "body-5")
OV.add_unlock("military-3", "weapon-5")
OV.add_unlock("military-3", "angels-acceleratorcoil")
OV.add_unlock("military-3", "weapon-parts-acceleratorcoil")
OV.add_prereq("military-3", "angels-components-weapons-advanced")
OV.add_prereq("military-3", "angels-tungsten-smelting-1")
end