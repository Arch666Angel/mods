local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["gold"].ingot = true
  angelsmods.trigger.smelting_products["gold"].plate = true
  angelsmods.trigger.smelting_products["gold"].wire = true
  angelsmods.trigger.smelting_products["gold"].powder = true
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].ingot then
else
  angelsmods.functions.add_flag("processed-gold", "hidden")
  angelsmods.functions.add_flag("pellet-gold", "hidden")
  angelsmods.functions.add_flag("solid-sodium-gold-cyanide", "hidden")
  data.raw.fluid["liquid-chlorauric-acid"].hidden = true
  angelsmods.functions.add_flag("cathode-gold", "hidden")
  angelsmods.functions.add_flag("ingot-gold", "hidden")
  data.raw.fluid["liquid-molten-gold"].hidden = true
  OV.disable_recipe({"gold-ore-processing", "gold-processed-processing"})
  OV.disable_recipe({"pellet-gold-smelting", "liquid-chlorauric-acid", "processed-gold-smelting", "solid-sodium-gold-cyanide-smelting"})
  OV.disable_recipe({"gold-ore-smelting", "cathode-gold-smelting"})
  OV.disable_recipe({"molten-gold-smelting"})
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
  angelsmods.functions.add_flag("angels-roll-gold", "hidden")
  OV.disable_recipe({"roll-gold-casting", "roll-gold-casting-fast"})
  OV.disable_recipe({"angels-plate-gold", "angels-roll-gold-converting"})
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].wire then
  if data.raw.item["gilded-copper-cable"] then -- bob electronics
    OV.global_replace_item("angels-wire-gold", "gilded-copper-cable")
    angelsmods.functions.add_flag("angels-wire-gold", "hidden")
    angelsmods.functions.move_item("gilded-copper-cable", "angels-gold-casting", "m")
    OV.patch_recipes({
      {
        name = "gilded-copper-cable",
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
  angelsmods.functions.add_flag("angels-wire-gold", "hidden")
  angelsmods.functions.add_flag("angels-wire-coil-gold", "hidden")
  OV.disable_recipe({"angels-wire-coil-gold-casting", "angels-wire-coil-gold-casting-fast"})
  OV.disable_recipe({"angels-wire-coil-gold-converting"})
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].powder then
else
  angelsmods.functions.add_flag("powder-gold", "hidden")
  OV.disable_recipe({ "powder-gold" })
end