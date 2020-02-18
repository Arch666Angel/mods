local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["zinc"].ingot = true
  angelsmods.trigger.smelting_products["zinc"].plate = true
  angelsmods.trigger.smelting_products["zinc"].powder = true
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["zinc"].ingot then
else
  angelsmods.functions.add_flag("processed-zinc", "hidden")
  angelsmods.functions.add_flag("pellet-zinc", "hidden")
  angelsmods.functions.add_flag("solid-zinc-oxide", "hidden")
  angelsmods.functions.add_flag("cathode-zinc", "hidden")
  angelsmods.functions.add_flag("ingot-zinc", "hidden")
  data.raw.fluid["liquid-molten-zinc"].hidden = true
  OV.disable_recipe({"zinc-ore-processing", "zinc-processed-processing"})
  OV.disable_recipe({"pellet-zinc-smelting", "solid-zinc-oxide-smelting"})
  OV.disable_recipe({"zinc-ore-smelting", "processed-zinc-smelting", "cathode-zinc-smelting"})
  OV.disable_recipe({"molten-zinc-smelting"})
  OV.disable_recipe({"liquid-molten-zinc"})
  OV.disable_technology({"angels-zinc-smelting-1", "angels-zinc-smelting-2", "angels-zinc-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["zinc"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-zinc", "zinc-plate")
    angelsmods.functions.add_flag("angels-plate-zinc", "hidden")
    OV.disable_recipe({ "bob-zinc-plate" })
  end
else
  angelsmods.functions.add_flag("angels-wire-zinc", "hidden")
  angelsmods.functions.add_flag("angels-wire-coil-zinc", "hidden")
  OV.disable_recipe({"angels-wire-coil-zinc-casting", "angels-wire-coil-zinc-casting-fast"})
  OV.disable_recipe({"angels-wire-coil-zinc-converting"})
end
