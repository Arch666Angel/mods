local OV = angelsmods.functions.OV

local ore_exists = angelsmods.functions.ore_enabled

-------------------------------------------------------------------------------
--BASE GAME -------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["angelssmelting"] then
else
  OV.patch_recipes(
    {
      {
        name = "iron-plate",
        icons = {
          mods["angelssmelting"] and {
            icon = "__angelssmelting__/graphics/icons/plate-iron.png",
          } or {
            icon = "__base__/graphics/icons/iron-plate.png",
            icon_size = 64,
            scale = 32/64
          },
          {
            icon = "__base__/graphics/icons/iron-ore.png",
            icon_size = 64,
            scale = 32/64 * 0.4,
            shift = {-10, -10}
          }
        },
        icon_size = 32,
        order = "b[iron-ore]-b[ore]"
      },
      {
        name = "copper-plate",
        icons = {
          mods["angelssmelting"] and {
            icon = "__angelssmelting__/graphics/icons/plate-copper.png",
          } or {
            icon = "__base__/graphics/icons/copper-plate.png",
            icon_size = 64,
            scale = 32/64
          },
          {
            icon = "__base__/graphics/icons/copper-ore.png",
            icon_size = 64,
            scale = 32/64 * 0.4,
            shift = {-10, -10}
          }
        },
        icon_size = 32,
        order = "c[copper-ore]-b[ore]"
      },
    }
  )
end

-------------------------------------------------------------------------------
--PREPARATIONS ----------------------------------------------------------------
-------------------------------------------------------------------------------
OV.disable_recipe("solid-lithium")

-------------------------------------------------------------------------------
-- CRUSHED SMELTING -----------------------------------------------------------
-------------------------------------------------------------------------------
if ore_exists("lead") then
  OV.patch_recipes(
    {
      {
        name = "angelsore5-crushed-smelting",
        results = {
          {"!!"},
          {name = mods["angelssmelting"] and "angels-plate-lead" or "lead-plate", amount = 1}
        },
        icon = "__angelsrefining__/graphics/icons/lead-plate-crushed.png"
      }
    }
  )
else
  OV.disable_recipe("angelsore5-crushed-smelting")
end

if ore_exists("tin") then
  OV.patch_recipes(
    {
      {
        name = "angelsore6-crushed-smelting",
        results = {
          {"!!"},
          {name = mods["angelssmelting"] and "angels-plate-tin" or "tin-plate", amount = 1}
        },
        icon = "__angelsrefining__/graphics/icons/tin-plate-crushed.png"
      }
    }
  )
else
  OV.disable_recipe("angelsore6-crushed-smelting")
end
