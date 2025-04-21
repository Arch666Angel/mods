local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- CHEMICAL PLANTS ------------------------------------------------------------
-------------------------------------------------------------------------------
--double check bobs is active first for this one...
if angelsmods.trigger.disable_vanilla_chemical_plants then
  angelsmods.functions.hide("chemical-plant")
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
  move_item("bob-chemical-plant-2", "petrochem-buildings-chemical-plant", "a[regular]-ab[bob]-a")
  if angelsmods.trigger.disable_bobs_chemical_plants then
    angelsmods.functions.hide("bob-chemical-plant-2")
    angelsmods.functions.set_next_upgrade("assembling-machine", "bob-chemical-plant-2", nil)
    OV.global_replace_item("bob-chemical-plant-2", "angels-chemical-plant-2")
    OV.disable_recipe("bob-chemical-plant-2")
    OV.disable_technology("bob-chemical-plant-2")
    angelsmods.functions.remove_crafting_category("assembling-machine", "bob-chemical-plant-2", {
      "chemistry",
    })
  end

  -- Chemical plant 3
  move_item("bob-chemical-plant-3", "petrochem-buildings-chemical-plant", "a[regular]-ab[bob]-b")
  if angelsmods.trigger.disable_bobs_chemical_plants then
    angelsmods.functions.hide("bob-chemical-plant-3")
    angelsmods.functions.set_next_upgrade("assembling-machine", "bob-chemical-plant-3", nil)
    OV.global_replace_item("bob-chemical-plant-3", "angels-chemical-plant-3")
    OV.disable_recipe("bob-chemical-plant-3")
    OV.disable_technology("bob-chemical-plant-3")
    angelsmods.functions.remove_crafting_category("assembling-machine", "bob-chemical-plant-3", {
      "chemistry",
    })
  end

  -- Chemical plant 4
  move_item("bob-chemical-plant-4", "petrochem-buildings-chemical-plant", "a[regular]-ab[bob]-c")
  if angelsmods.trigger.disable_bobs_chemical_plants then
    angelsmods.functions.hide("bob-chemical-plant-4")
    angelsmods.functions.set_next_upgrade("assembling-machine", "bob-chemical-plant-4", nil)
    OV.global_replace_item("bob-chemical-plant-4", "angels-chemical-plant-4")
    OV.disable_recipe("bob-chemical-plant-4")
    OV.disable_technology("bob-chemical-plant-4")
    angelsmods.functions.remove_crafting_category("assembling-machine", "bob-chemical-plant-4", {
      "chemistry",
    })
  end
end

-------------------------------------------------------------------------------
-- ELECTROLYSERS --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- Electrolyser 1
  move_item("bob-electrolyser", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-a")
  angelsmods.functions.add_crafting_category("assembling-machine", "angels-electrolyser", "bob-electrolysis")
  if angelsmods.trigger.disable_bobs_electrolysers then
    angelsmods.functions.hide("bob-electrolyser")
    angelsmods.functions.set_next_upgrade("assembling-machine", "bob-electrolyser", nil)
    OV.global_replace_item("bob-electrolyser", "angels-electrolyser")
    OV.disable_recipe("bob-electrolyser")
  else
    angelsmods.functions.add_crafting_category("assembling-machine", "bob-electrolyser", "petrochem-electrolyser")
    OV.add_unlock("basic-chemistry", "bob-electrolyser") --give the item a new home if still active
  end

  -- Electrolyser 2
  angelsmods.functions.add_crafting_category("assembling-machine", "angels-electrolyser-2", "bob-electrolysis")
  if mods["bobassembly"] then
    move_item("bob-electrolyser-2", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-b")
    if angelsmods.trigger.disable_bobs_electrolysers then
      angelsmods.functions.hide("bob-electrolyser-2")
      angelsmods.functions.set_next_upgrade("assembling-machine", "bob-electrolyser-2", nil)
      OV.global_replace_item("bob-electrolyser-2", "angels-electrolyser-2")
      OV.disable_recipe("bob-electrolyser-2")
      OV.disable_technology("bob-electrolyser-2")
    else
      angelsmods.functions.add_crafting_category("assembling-machine", "bob-electrolyser-2", "petrochem-electrolyser")
    end
  end

  -- Electrolyser 3
  angelsmods.functions.add_crafting_category("assembling-machine", "angels-electrolyser-3", "bob-electrolysis")
  if mods["bobassembly"] then
    move_item("bob-electrolyser-3", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-c")
    if angelsmods.trigger.disable_bobs_electrolysers then
      angelsmods.functions.hide("bob-electrolyser-3")
      angelsmods.functions.set_next_upgrade("assembling-machine", "bob-electrolyser-3", nil)
      OV.global_replace_item("bob-electrolyser-3", "angels-electrolyser-3")
      OV.disable_recipe("bob-electrolyser-3")
      OV.disable_technology("bob-electrolyser-3")

      -- Fix production science pack tech
      OV.remove_prereq("production-science-pack", "bob-electrolyser-3")
      OV.add_prereq("production-science-pack", "angels-advanced-chemistry-2")
    else
      angelsmods.functions.add_crafting_category("assembling-machine", "bob-electrolyser-3", "petrochem-electrolyser")
    end
  end

  -- Electrolyser 4
  angelsmods.functions.add_crafting_category("assembling-machine", "angels-electrolyser-4", "bob-electrolysis")
  if mods["bobassembly"] then
    move_item("bob-electrolyser-4", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-d")
    if angelsmods.trigger.disable_bobs_electrolysers then
      angelsmods.functions.hide("bob-electrolyser-4")
      angelsmods.functions.set_next_upgrade("assembling-machine", "bob-electrolyser-4", nil)
      OV.global_replace_item("bob-electrolyser-4", "angels-electrolyser-4")
      OV.disable_recipe("bob-electrolyser-4")
      OV.disable_technology("bob-electrolyser-4")
    else
      angelsmods.functions.add_crafting_category("assembling-machine", "bob-electrolyser-4", "petrochem-electrolyser")
    end
  end

  -- Electrolyser 5
  if mods["bobassembly"] then
    move_item("bob-electrolyser-5", "petrochem-buildings-electrolyser", "aa[bobs-electrolyser]-e")
    if angelsmods.trigger.disable_bobs_electrolysers then
      angelsmods.functions.hide("bob-electrolyser-5")
      angelsmods.functions.set_next_upgrade("assembling-machine", "bob-electrolyser-5", nil)
      OV.global_replace_item("bob-electrolyser-5", "angels-electrolyser-4")
      OV.disable_recipe("bob-electrolyser-5")
      OV.disable_technology("bob-electrolyser-5")
    else
      angelsmods.functions.add_crafting_category("assembling-machine", "bob-electrolyser-5", "petrochem-electrolyser")
    end
  end
end
