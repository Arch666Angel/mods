-- set triggers for the other angels mods
--REFINING TRIGGERS
angelsmods.trigger.ores["aluminium"] = true
angelsmods.trigger.ores["chrome"] = true
angelsmods.trigger.ores["cobalt"] = true
if mods["bobores"] then
  bobmods.ores.cobalt.enabled = true
end
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
angelsmods.trigger.ores["titanium"] = true
angelsmods.trigger.ores["tungsten"] = true
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

if angelsmods.industries.components then
  --REFINING TRIGGERS
  angelsmods.trigger.ores["platinum"] = true

  --PETROCHEM TRIGGERS
  angelsmods.trigger.resin = true
  angelsmods.trigger.rubber = true
  angelsmods.trigger.early_sulfuric_acid = true

  --SMELTING TRIGGERS
  angelsmods.trigger.smelting_products["solder"].mixture = true
  angelsmods.trigger.smelting_molds = true
  angelsmods.trigger.smelting_products["glass"].fibre = true
  angelsmods.trigger.smelting_products["glass"].board = false
  angelsmods.trigger.smelting_products["iron"].rod = true
  angelsmods.trigger.smelting_products["platinum"].plate = true
  angelsmods.trigger.smelting_products["platinum"].wire = true
  angelsmods.trigger.smelting_products["steel"].rod = true
  angelsmods.trigger.smelting_products["nickel"].plate = true
  angelsmods.trigger.smelting_products["lithium"].plate = true
  angelsmods.trigger.early_sintering_oven = true

  --BIOPROCESSING TRIGGERS
  angelsmods.trigger.bio_plastic = true
  angelsmods.trigger.bio_resin = true
  angelsmods.trigger.bio_rubber = true
end
