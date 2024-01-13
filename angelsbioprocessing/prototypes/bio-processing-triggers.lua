-- set triggers for the other angels mods

if angelsmods.trigger.bio_pastes["cobalt"] then
  angelsmods.trigger.ores["cobalt"] = true
  if mods["bobores"] then
    bobmods.ores.cobalt.enabled = true
  end
  angelsmods.trigger.smelting_products["cobalt"].powder = true
end

if angelsmods.trigger.bio_pastes["copper"] then
  angelsmods.trigger.ores["copper"] = true
  angelsmods.trigger.smelting_products["copper"].powder = true
end

if angelsmods.trigger.bio_pastes["gold"] then
  angelsmods.trigger.ores["gold"] = true
  angelsmods.trigger.smelting_products["gold"].powder = true
end

if angelsmods.trigger.bio_pastes["iron"] then
  angelsmods.trigger.ores["iron"] = true
  angelsmods.trigger.smelting_products["iron"].powder = true
end

if angelsmods.trigger.bio_pastes["silver"] then
  angelsmods.trigger.ores["silver"] = true
  angelsmods.trigger.smelting_products["silver"].powder = true
end

if angelsmods.trigger.bio_pastes["titanium"] then
  angelsmods.trigger.ores["titanium"] = true
  angelsmods.trigger.smelting_products["titanium"].powder = true
end

if angelsmods.trigger.bio_pastes["tungsten"] then
  angelsmods.trigger.ores["tungsten"] = true
  angelsmods.trigger.smelting_products["tungsten"].powder = true
end

if angelsmods.trigger.bio_pastes["zinc"] then
  angelsmods.trigger.ores["zinc"] = true
  angelsmods.trigger.smelting_products["zinc"].powder = true
end

angelsmods.trigger.gas_acetone = true
angelsmods.trigger.gas_urea = true
