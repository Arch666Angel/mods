local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["solder"].wire then
  -- REPLACE ITEMS (use bob version)
  if mods['bobelectronics'] and data.raw.item["solder"] then
    OV.global_replace_item("angels-solder", "solder")
    angelsmods.functions.add_flag("angels-solder", "hidden")
    angelsmods.functions.move_item("solder", "angels-solder-casting", "c")
    OV.remove_unlock("electronics", "solder")

    OV.disable_recipe({ "solder-alloy", "solder-alloy-lead", "solder" })
    angelsmods.functions.add_flag("solder-alloy", "hidden")
    OV.remove_unlock("electronics", "solder-alloy-lead")
    
    OV.add_prereq("electronics", "angels-solder-smelting-1" )

    OV.patch_recipes({ { name = "angels-roll-solder-converting", category = "electronics-machine"} })
  end
else
  OV.disable_technology({"angels-solder-smelting-1", "angels-solder-smelting-2", "angels-solder-smelting-3"})
end
