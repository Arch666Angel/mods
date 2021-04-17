local OV = angelsmods.functions.OV
-- Modified scripts from https://github.com/KiwiHawk/SeaBlock/commit/1456471326f4a856acda092e865c9780c751f99f
-------------------------------------------------------------------------------
-- ALLOY HANDLING -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods['bobplates'] then
  for k,v in pairs(data.raw.recipe) do
    if v.category == 'mixing-furnace' then --alien-blue-alloy, alien-orange-alloy
      data.raw.recipe[v.name].category = 'blast-smelting'
    elseif v.category == 'chemical-furnace' then -- silicon-nitride, silicon-carbide, lithium-cobalt-oxide
      data.raw.recipe[v.name].category = 'chemical-smelting'
    end
  end

  -- Remove prereq alloy-processing
  OV.remove_unlock('alloy-processing', 'stone-mixing-furnace')
  --OV.remove_unlock('alloy-processing', 'stone-mixing-furnace-from-stone-furnace')
  --OV.remove_unlock('alloy-processing', 'stone-furnace-from-stone-mixing-furnace')

  -- Remove Chemical Furnaces
  OV.global_replace_item('steel-chemical-mixing-furnace', 'steel-furnace')
  OV.global_replace_item('electric-chemical-furnace','electric-furnace')

  OV.remove_unlock('chemical-processing-1', 'stone-chemical-furnace')
  --OV.remove_unlock('chemical-processing-1', 'stone-chemical-furnace-from-stone-furnace')
  --OV.remove_unlock('chemical-processing-1', 'stone-furnace-from-stone-chemical-furnace')

  data.raw['assembling-machine']['stone-chemical-furnace'].next_upgrade = nil
  data.raw['assembling-machine']['electric-chemical-furnace'].next_upgrade = nil
  -- Remove smelting from crafting_categories so machine doesn't appear in Helmod
  data.raw['assembling-machine']['electric-chemical-furnace'].crafting_categories = {'chemical-furnace'}

  OV.disable_technology({'fluid-chemical-furnace','steel-chemical-furnace','electric-chemical-furnace'})

  if data.raw.technology['multi-purpose-furnace-1'] then
    OV.remove_prereq('multi-purpose-furnace-1', 'electric-chemical-furnace')
  end
end
--remove metal mixing furnaces if multi-purpose are also removed
if mods['bobassembly'] and settings.startup['bobmods-assembly-multipurposefurnaces'].value then
  -- If still around, put the stone furnace back
  OV.add_unlock("automation", 'stone-mixing-furnace')

else
  --clobber all metal mixing furnaces
  OV.disable_technology({'steel-mixing-furnace','electric-mixing-furnace'})
  OV.disable_recipe({'stone-mixing-furnace','steel-mixing-furnace','electric-mixing-furnace'})
end
