local OV = angelsmods.functions.OV

local ore_exists = angelsmods.functions.ore_enabled

-------------------------------------------------------------------------------
--BASE GAME -------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["angelssmelting"] then
else
  OV.patch_recipes({
    {
      name = "iron-plate",
      icons = {
        mods["angelssmelting"] and {
          icon = "__angelssmeltinggraphics__/graphics/icons/plate-iron.png",
        } or {
          icon = "__base__/graphics/icons/iron-plate.png",
          icon_size = 64,
          scale = 32 / 64,
        },
        {
          icon = "__angelsrefininggraphics__/graphics/icons/angels-ore1/angels-ore1-crushed.png",
          icon_size = 32,
          scale = 0.4,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
      order = "b[iron-ore]-b[ore]",
    },
    {
      name = "copper-plate",
      icons = {
        mods["angelssmelting"] and {
          icon = "__angelssmeltinggraphics__/graphics/icons/plate-copper.png",
        } or {
          icon = "__base__/graphics/icons/copper-plate.png",
          icon_size = 64,
          scale = 32 / 64,
        },
        {
          icon = "__angelsrefininggraphics__/graphics/icons/angels-ore3/angels-ore3-crushed.png",
          icon_size = 32,
          scale = 0.4,
          shift = { -10, -10 },
        },
      },
      icon_size = 32,
      order = "c[copper-ore]-b[ore]",
    },
  })
end

-------------------------------------------------------------------------------
-- SPECIAL VANILLA ------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.functions.is_special_vanilla() then
  OV.add_unlock("angels-ore-crushing", "angels-copper-pebbles")
  OV.add_unlock("angels-ore-crushing", "angels-copper-pebbles-smelting")
  OV.add_unlock("angels-ore-crushing", "angels-copper-nugget-smelting")

  OV.add_unlock("angels-ore-crushing", "angels-iron-pebbles")
  OV.add_unlock("angels-ore-crushing", "angels-iron-pebbles-smelting")
  OV.add_unlock("angels-ore-crushing", "angels-iron-nugget-smelting")
end
