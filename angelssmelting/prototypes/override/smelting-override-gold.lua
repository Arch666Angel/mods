local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].ingot then
else
  OV.disable_technology({"angels-gold-smelting-1", "angels-gold-smelting-2", "angels-gold-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-gold", "gold-plate")
    angelsmods.functions.add_flag("angels-plate-gold", "hidden")

    OV.global_replace_technology("gold-processing", "angels-gold-smelting-1")
  end
else
  angelsmods.functions.add_flag("angels-plate-gold", "hidden")
  -- disable plate recipe
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].wire then
  if data.raw.item["gilded-copper-cable"] then -- bob electronics
    OV.global_replace_item("angels-wire-gold", "gilded-copper-cable")
    angelsmods.functions.add_flag("angels-wire-gold", "hidden")
    angelsmods.functions.move_item("gilded-copper-cable", "angels-gold-casting", "l")
    OV.patch_recipes({
      {
        name = "tinned-copper-cable",
        subgroup = "angels-gold-casting",
        order = "l[angels-wire-gold]-a",
        icons = {
          {
            icon = "__angelssmelting__/graphics/icons/wire-gold.png",
          },
          {
            icon = "__angelssmelting__/graphics/icons/plate-gold.png",
            scale = 0.4375,
            shift = { -10, -10},
          }
        },
        icon_size = 32,
      },
      {
        name = "angels-wire-coil-gold-converting",
        category = "electronics-machine"
      },
    })
  end
else
  -- disable coil and wire recipe
end
