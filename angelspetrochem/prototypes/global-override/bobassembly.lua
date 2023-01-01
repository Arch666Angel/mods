local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- CHEMICAL PLANTS ------------------------------------------------------------
-------------------------------------------------------------------------------
--double check bobs is active first for this one...
if angelsmods.trigger.disable_vanilla_chemical_plants then
  angelsmods.functions.add_flag("chemical-plant", "hidden")
  angelsmods.functions.set_next_upgrade("assembling-machine", "chemical-plant", nil)
  OV.global_replace_item("chemical-plant", "angels-chemical-plant")
  OV.disable_recipe("chemical-plant")
  angelsmods.functions.remove_crafting_category("assembling-machine", "chemical-plant", {
    "chemistry",
  })
else
  OV.add_unlock("basic-chemistry-2", "chemical-plant") --give the item a new home if still active
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
    OV.add_unlock("basic-chemistry", "electrolyser") --give the item a new home if still active
  end

  -- Electrolyser 2
  angelsmods.functions.add_crafting_category("assembling-machine", "angels-electrolyser-2", "electrolysis")
  if mods["bobassembly"] then
    move_item("electrolyser-2", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-b")
    if angelsmods.trigger.disable_bobs_electrolysers then
      angelsmods.functions.add_flag("electrolyser-2", "hidden")
      angelsmods.functions.set_next_upgrade("assembling-machine", "electrolyser-2", nil)
      OV.global_replace_item("electrolyser-2", "angels-electrolyser-2")
      OV.disable_recipe("electrolyser-2")
      OV.disable_technology("electrolyser-2")
    else
      angelsmods.functions.add_crafting_category("assembling-machine", "electrolyser-2", "petrochem-electrolyser")
    end
  end

  -- Electrolyser 3
  angelsmods.functions.add_crafting_category("assembling-machine", "angels-electrolyser-3", "electrolysis")
  if mods["bobassembly"] then
    move_item("electrolyser-3", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-c")
    if angelsmods.trigger.disable_bobs_electrolysers then
      angelsmods.functions.add_flag("electrolyser-3", "hidden")
      angelsmods.functions.set_next_upgrade("assembling-machine", "electrolyser-3", nil)
      OV.global_replace_item("electrolyser-3", "angels-electrolyser-3")
      OV.disable_recipe("electrolyser-3")
      OV.disable_technology("electrolyser-3")
    else
      angelsmods.functions.add_crafting_category("assembling-machine", "electrolyser-3", "petrochem-electrolyser")
    end
  end

  -- Electrolyser 4
  angelsmods.functions.add_crafting_category("assembling-machine", "angels-electrolyser-4", "electrolysis")
  if mods["bobassembly"] then
    move_item("electrolyser-4", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-d")
    if angelsmods.trigger.disable_bobs_electrolysers then
      angelsmods.functions.add_flag("electrolyser-4", "hidden")
      angelsmods.functions.set_next_upgrade("assembling-machine", "electrolyser-4", nil)
      OV.global_replace_item("electrolyser-4", "angels-electrolyser-4")
      OV.disable_recipe("electrolyser-4")
      OV.disable_technology("electrolyser-4")
    else
      angelsmods.functions.add_crafting_category("assembling-machine", "electrolyser-4", "petrochem-electrolyser")
    end
  end

  -- Electrolyser 5
  if mods["bobassembly"] then
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
