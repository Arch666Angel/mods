-- set triggers for the other angels mods
if angelsmods.industries.overhaul then
  --REFINING TRIGGERS
  angelsmods.trigger.ores["aluminium"] = true
  angelsmods.trigger.ores["chrome"] = true
  angelsmods.trigger.ores["cobalt"] = true
  angelsmods.trigger.ores["copper"] = true
  angelsmods.trigger.ores["gold"] = true
  angelsmods.trigger.ores["iron"] = true
  angelsmods.trigger.ores["lead"] = true
  angelsmods.trigger.ores["manganese"] = true
  angelsmods.trigger.ores["nickel"] = true
  --angelsmods.trigger.ores["platinum"] = true
  angelsmods.trigger.ores["silicon"] = true
  angelsmods.trigger.ores["silver"] = true
  angelsmods.trigger.ores["tin"] = true
  angelsmods.trigger.ores["thorium"] = true
  angelsmods.trigger.ores["titanium"] = true
  angelsmods.trigger.ores["tungsten"] = true
  angelsmods.trigger.ores["uranium"] = true
  angelsmods.trigger.ores["zinc"] = true

  --SMELTING TRIGGERS
  angelsmods.trigger.smelting_products["solder"].wire = true
  angelsmods.trigger.smelting_products["steel"].plate = true
  angelsmods.trigger.smelting_products["aluminium"].plate = true
  angelsmods.trigger.smelting_products["copper"].plate = true
  angelsmods.trigger.smelting_products["copper"].wire = true
  angelsmods.trigger.smelting_products["gold"].plate = true
  angelsmods.trigger.smelting_products["gold"].wire = true
  angelsmods.trigger.smelting_products["iron"].plate = true
  angelsmods.trigger.smelting_products["lead"].plate = true
  --angelsmods.trigger.smelting_products["platinum"].wire = true
  angelsmods.trigger.smelting_products["silicon"].wafer = true
  angelsmods.trigger.smelting_products["silicon"].mono = true
  angelsmods.trigger.smelting_products["silver"].plate = true
  angelsmods.trigger.smelting_products["silver"].wire = true
  angelsmods.trigger.smelting_products["tin"].plate = true
  angelsmods.trigger.smelting_products["tin"].wire = true
  angelsmods.trigger.smelting_products["titanium"].plate = true
  angelsmods.trigger.smelting_products["tungsten"].plate = true
  angelsmods.trigger.smelting_products["zinc"].plate = true
end

if angelsmods.industries.components then
  --REFINING TRIGGERS
  angelsmods.trigger.ores["platinum"] = true

  --SMELTING TRIGGERS
  angelsmods.trigger.smelting_molds = true
  angelsmods.trigger.smelting_products["glass"].fibre = true
  angelsmods.trigger.smelting_products["iron"].rod = true
  angelsmods.trigger.smelting_products["platinum"].plate = true
  angelsmods.trigger.smelting_products["platinum"].wire = true
  angelsmods.trigger.smelting_products["steel"].rod = true
  angelsmods.trigger.smelting_products["nickel"].plate = true
  angelsmods.trigger.smelting_products["lithium"].plate = true
end
