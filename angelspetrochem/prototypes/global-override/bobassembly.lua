local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- CHEMICAL PLANTS ------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.disable_bobs_chemical_plants then
  angelsmods.functions.add_flag("chemical-plant", "hidden")
  angelsmods.functions.set_next_upgrade("assembling-machine", "chemical-plant", nil)
  OV.global_replace_item("chemical-plant", "angels-chemical-plant")
  OV.disable_recipe("chemical-plant")
  angelsmods.functions.remove_crafting_category("assembling-machine", "chemical-plant", {
    "chemistry",
    "liquifying"
  })
end

if mods["bobassembly"] then
  -- Chemical plant 2
  move_item("chemical-plant-2", "petrochem-buildings-chemical-plant", "a[regular]-ab[bob]-a")
  if angelsmods.trigger.disable_bobs_chemical_plants then
    angelsmods.functions.add_flag("chemical-plant-2", "hidden")
    angelsmods.functions.set_next_upgrade("assembling-machine", "chemical-plant-2", nil)
    OV.global_replace_item("chemical-plant-2", "angels-chemical-plant-2")
    OV.disable_recipe("chemical-plant-2")
    OV.disable_technology("chemical-plant-2")
    angelsmods.functions.remove_crafting_category("assembling-machine", "chemical-plant-2", {
      "chemistry",
      "liquifying"
    })
  end
  
  -- Chemical plant 3
  move_item("chemical-plant-3", "petrochem-buildings-chemical-plant", "a[regular]-ab[bob]-b")
  if angelsmods.trigger.disable_bobs_chemical_plants then
    angelsmods.functions.add_flag("chemical-plant-3", "hidden")
    angelsmods.functions.set_next_upgrade("assembling-machine", "chemical-plant-3", nil)
    OV.global_replace_item("chemical-plant-3", "angels-chemical-plant-3")
    OV.disable_recipe("chemical-plant-3")
    OV.disable_technology("chemical-plant-3")
    angelsmods.functions.remove_crafting_category("assembling-machine", "chemical-plant-3", {
      "chemistry",
      "liquifying"
    })
  end
  
  -- Chemical plant 4
  move_item("chemical-plant-4", "petrochem-buildings-chemical-plant", "a[regular]-ab[bob]-c")
  if angelsmods.trigger.disable_bobs_chemical_plants then
    angelsmods.functions.add_flag("chemical-plant-4", "hidden")
    angelsmods.functions.set_next_upgrade("assembling-machine", "chemical-plant-4", nil)
    OV.global_replace_item("chemical-plant-4", "angels-chemical-plant-4")
    OV.disable_recipe("chemical-plant-4")
    OV.disable_technology("chemical-plant-4")
    angelsmods.functions.remove_crafting_category("assembling-machine", "chemical-plant-4", {
      "chemistry",
      "liquifying"
    })
  end
end

-------------------------------------------------------------------------------
-- ELECTROLYSERS --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- Electrolyser 1
  move_item("electrolyser", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-a")
  angelsmods.functions.add_crafting_category("assembling-machine", "angels-electrolyser", "electrolysis")
  if angelsmods.trigger.disable_bobs_electrolysers then
    angelsmods.functions.add_flag("electrolyser", "hidden")
    angelsmods.functions.set_next_upgrade("assembling-machine", "electrolyser", nil)
    OV.global_replace_item("electrolyser", "angels-electrolyser")
    OV.disable_recipe("electrolyser")
  else
    angelsmods.functions.add_crafting_category("assembling-machine", "electrolyser", "petrochem-electrolyser")
  end

  if mods["bobassembly"] then
    -- Electrolyser 2
    move_item("electrolyser-2", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-b")
    angelsmods.functions.add_crafting_category("assembling-machine", "angels-electrolyser-2", "electrolysis")
    if angelsmods.trigger.disable_bobs_electrolysers then
      angelsmods.functions.add_flag("electrolyser-2", "hidden")
      angelsmods.functions.set_next_upgrade("assembling-machine", "electrolyser-2", nil)
      OV.global_replace_item("electrolyser-2", "angels-electrolyser-2")
      OV.disable_recipe("electrolyser-2")
      OV.disable_technology("electrolyser-2")
    else
      angelsmods.functions.add_crafting_category("assembling-machine", "electrolyser-2", "petrochem-electrolyser")
    end

    -- Electrolyser 3
    move_item("electrolyser-3", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-c")
    angelsmods.functions.add_crafting_category("assembling-machine", "angels-electrolyser-3", "electrolysis")
    if angelsmods.trigger.disable_bobs_electrolysers then
      angelsmods.functions.add_flag("electrolyser-3", "hidden")
      angelsmods.functions.set_next_upgrade("assembling-machine", "electrolyser-3", nil)
      OV.global_replace_item("electrolyser-3", "angels-electrolyser-3")
      OV.disable_recipe("electrolyser-3")
      OV.disable_technology("electrolyser-3")
    else
      angelsmods.functions.add_crafting_category("assembling-machine", "electrolyser-3", "petrochem-electrolyser")
    end

    -- Electrolyser 4
    move_item("electrolyser-4", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-d")
    angelsmods.functions.add_crafting_category("assembling-machine", "angels-electrolyser-4", "electrolysis")
    if angelsmods.trigger.disable_bobs_electrolysers then
      angelsmods.functions.add_flag("electrolyser-4", "hidden")
      angelsmods.functions.set_next_upgrade("assembling-machine", "electrolyser-4", nil)
      OV.global_replace_item("electrolyser-4", "angels-electrolyser-4")
      OV.disable_recipe("electrolyser-4")
      OV.disable_technology("electrolyser-4")
    else
      angelsmods.functions.add_crafting_category("assembling-machine", "electrolyser-4", "petrochem-electrolyser")
    end

    -- Electrolyser 5
    move_item("electrolyser-5", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-e")
    if angelsmods.trigger.disable_bobs_electrolysers then
      angelsmods.functions.add_flag("electrolyser-5", "hidden")
      angelsmods.functions.set_next_upgrade("assembling-machine", "electrolyser-5", nil)
      OV.global_replace_item("electrolyser-5", "angels-electrolyser-4")
      OV.disable_recipe("electrolyser-5")
      OV.disable_technology("electrolyser-5")
    else
      angelsmods.functions.add_crafting_category("assembling-machine", "electrolyser-5", "petrochem-electrolyser")
    end
  end
end

-------------------------------------------------------------------------------
-- DISTILLERIES ---------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- Distillery 1
  move_item("bob-distillery", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-a")
  if angelsmods.trigger.disable_bobs_distilleries then
    angelsmods.functions.add_flag("bob-distillery", "hidden")
    angelsmods.functions.set_next_upgrade("assembling-machine", "bob-distillery", nil)
    angelsmods.functions.set_next_upgrade("furnace", "bob-distillery", nil)
    OV.global_replace_item("bob-distillery", "angels-chemical-plant")
    OV.disable_recipe("bob-distillery")
    --OV.remove_unlock("bob-distillery")
    angelsmods.functions.remove_crafting_category("assembling-machine", "bob-distillery", "distillery")
    angelsmods.functions.add_crafting_category("assembling-machine", "angels-chemical-plant", "distillery")
  end

  if mods["bobassembly"] then
    -- Distillery 2
    move_item("bob-distillery-2", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-a")
    if angelsmods.trigger.disable_bobs_distilleries then
      angelsmods.functions.add_flag("bob-distillery-2", "hidden")
      angelsmods.functions.set_next_upgrade("assembling-machine", "bob-distillery-2", nil)
      angelsmods.functions.set_next_upgrade("furnace", "bob-distillery-2", nil)
      OV.global_replace_item("bob-distillery-2", "angels-chemical-plant")
      OV.disable_recipe("bob-distillery-2")
      OV.disable_technology("bob-distillery-2")
      angelsmods.functions.remove_crafting_category("assembling-machine", "bob-distillery-2", "distillery")
      angelsmods.functions.add_crafting_category("assembling-machine", "angels-chemical-plant-2", "distillery")
    end

    -- Distillery 3
    move_item("bob-distillery-3", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-a")
    if angelsmods.trigger.disable_bobs_distilleries then
      angelsmods.functions.add_flag("bob-distillery-3", "hidden")
      angelsmods.functions.set_next_upgrade("assembling-machine", "bob-distillery-3", nil)
      angelsmods.functions.set_next_upgrade("furnace", "bob-distillery-3", nil)
      OV.global_replace_item("bob-distillery-3", "angels-chemical-plant")
      OV.disable_recipe("bob-distillery-3")
      OV.disable_technology("bob-distillery-3")
      angelsmods.functions.remove_crafting_category("assembling-machine", "bob-distillery-3", "distillery")
      angelsmods.functions.add_crafting_category("assembling-machine", "angels-chemical-plant-3", "distillery")
    end

    -- Distillery 4
    move_item("bob-distillery-4", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-a")
    if angelsmods.trigger.disable_bobs_distilleries then
      angelsmods.functions.add_flag("bob-distillery-4", "hidden")
      angelsmods.functions.set_next_upgrade("assembling-machine", "bob-distillery-4", nil)
      angelsmods.functions.set_next_upgrade("furnace", "bob-distillery-4", nil)
      OV.global_replace_item("bob-distillery-4", "angels-chemical-plant")
      OV.disable_recipe("bob-distillery-4")
      OV.disable_technology("bob-distillery-4")
      angelsmods.functions.remove_crafting_category("assembling-machine", "bob-distillery-4", "distillery")
      angelsmods.functions.add_crafting_category("assembling-machine", "angels-chemical-plant-4", "distillery")
    end

    -- Distillery 5
    move_item("bob-distillery-5", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-a")
    if angelsmods.trigger.disable_bobs_distilleries then
      angelsmods.functions.add_flag("bob-distillery-5", "hidden")
      angelsmods.functions.set_next_upgrade("assembling-machine", "bob-distillery-5", nil)
      angelsmods.functions.set_next_upgrade("furnace", "bob-distillery-5", nil)
      OV.global_replace_item("bob-distillery-5", "angels-chemical-plant")
      OV.disable_recipe("bob-distillery-5")
      OV.disable_technology("bob-distillery-5")
      angelsmods.functions.remove_crafting_category("assembling-machine", "bob-distillery-5", "distillery")
      --angelsmods.functions.add_crafting_category("assembling-machine", "angels-chemical-plant-5", "distillery")
    end
  end
end