local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobgreenhouse"] then
  -----------------------------------------------------------------------------
  -- BOBS WOOD PROCESSING -----------------------------------------------------
  -----------------------------------------------------------------------------
  -- Disable all Bob's Greenhouse stuff (soft incompatibility)
  -- It now unlocks *after* Angel's trees so there is no point keeping it

  -- update tech
  OV.disable_technology({ "bob-greenhouse", "bob-fertiliser" })

  -- greenhouse
  OV.global_replace_item("bob-greenhouse", "angels-bio-arboretum-1")
  OV.disable_recipe({ "bob-greenhouse", "bob-basic-greenhouse-cycle", "bob-advanced-greenhouse-cycle" })
  angelsmods.functions.hide("bob-greenhouse")

  -- seedling
  OV.global_replace_item("bob-seedling", "angels-tree-seed")
  OV.disable_recipe("bob-seedling")
  angelsmods.functions.hide("bob-seedling")

  -- wood pellets
  OV.global_replace_item("bob-wood-pellets", "angels-wood-pellets")
  OV.disable_recipe("bob-wood-pellets")
  angelsmods.functions.hide("bob-wood-pellets")

  -- fertiliser
  OV.global_replace_item("bob-fertiliser", "angels-solid-fertilizer")
  OV.disable_recipe("bob-fertiliser")
  angelsmods.functions.hide("bob-fertiliser")
end
