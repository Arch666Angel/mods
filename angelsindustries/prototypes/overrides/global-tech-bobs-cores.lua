local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")

-------------------------------------------------------------------------------
-- BASE BOBS (MCI) ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  core_replace("electrolysis-1", "basic", "processing")
  core_replace("electrolysis-2", "basic", "processing")
  core_replace("grinding", "basic", "processing")
  core_replace("polishing", "basic", "processing")
  core_replace("mixing-steel-furnace", "basic", "processing")
  core_replace("gas-canisters", "basic", "processing")
  core_replace("ceramics", "basic", "processing")

  if not mods["bobtech"] then
    core_replace("alien-blue-research", "processing", "war")
    core_replace("alien-orange-research", "processing", "war")
    core_replace("alien-purple-research", "processing", "war")
    core_replace("alien-yellow-research", "processing", "war")
    core_replace("alien-green-research", "processing", "war")
    core_replace("alien-red-research", "processing", "war")
  end
end

-------------------------------------------------------------------------------
-- BOB ASSMBLY ----------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobassembly"] then
  --assemblers
  if settings.startup["bobmods-assembly-burner"].value == true then
    core_replace("basic-automation", "processing", "basic")
  else
    core_replace("automation", "processing", "basic")
  end
  --chemplants
  if settings.startup["bobmods-assembly-chemicalplants"].value == true then
    core_replace("chemical-plant-2", "basic", "processing")
    core_replace("chemical-plant-3", "basic", "processing")
  end
  --oil-furnaces (and metal-mixing)
  if settings.startup["bobmods-assembly-oilfurnaces"].value then
    core_replace("oil-steel-furnace", "basic", "processing")
    core_replace("oil-mixing-steel-furnace", "basic", "processing")
    core_replace("oil-chemical-steel-furnace", "basic", "processing")
  end
  if settings.startup["bobmods-assembly-multipurposefurnaces"].value then
    core_replace("multi-purpose-furnace-1", "basic", "processing")
  end
  --electrolysers
  if settings.startup["bobmods-assembly-electrolysers"].value then
    core_replace("electrolyser-2", "basic", "processing")
    core_replace("electrolyser-3", "basic", "processing")
  end
  --distillery
  if settings.startup["bobmods-assembly-distilleries"].value then
    core_replace("bob-distillery-2", "basic", "processing")
    core_replace("bob-distillery-3", "basic", "processing")
  end
end

-------------------------------------------------------------------------------
-- BOBS GREENHOUSE ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobgreenhouse"] then
  --OV.set_science_pack("bob-greenhouse", "datacore-processing-1", 2)
  core_replace("bob-greenhouse", "basic", "processing")
  --OV.set_science_pack("bob-fertiliser", "datacore-processing-1", 2)
  core_replace("bob-fertiliser", "basic", "processing")
end

-------------------------------------------------------------------------------
-- BOBS ADJUSTABLE INSERTERS --------------------------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- BOBS CLASSES ---------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobclasses"] then
  OV.set_science_pack("bodies", "datacore-enhance-2", 2)
end

-------------------------------------------------------------------------------
-- BOBS MINING ----------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobmining"] then
  --regular drills
  if settings.startup["bobmods-mining-miningdrills"].value == true then
    core_replace("bob-drills-1", "basic", "processing")
    core_replace("bob-drills-2", "basic", "processing")
    core_replace("bob-drills-3", "basic", "processing")
  end
  --area drills
  if settings.startup["bobmods-mining-areadrills"].value == true then
    core_replace("bob-area-drills-1", "basic", "processing")
    core_replace("bob-area-drills-2", "basic", "processing")
    core_replace("bob-area-drills-3", "basic", "processing")
  end
  --pumpjacks
  if settings.startup["bobmods-mining-pumpjacks"].value == true then
    core_replace("bob-pumpjacks-1", "basic", "processing")
    core_replace("bob-pumpjacks-2", "basic", "processing")
    core_replace("bob-pumpjacks-3", "basic", "processing")
  end
end

-------------------------------------------------------------------------------
-- BOBS MODULES ---------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobmodules"] then
  core_replace("effect-transmission-2", "processing", "enhance")
  core_replace("effect-transmission-3", "processing", "enhance")
  OV.remove_science_pack("speed-module", "angels-science-pack-orange")
  OV.remove_science_pack("effectivity-module", "angels-science-pack-orange")
  OV.remove_science_pack("productivity-module", "angels-science-pack-orange")
end

-------------------------------------------------------------------------------
-- BOBS LOGISTICS -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["boblogistics"] then
  core_replace("logistics-0", "logistic", "basic")
  core_replace("logistics", "basic", "logistic")
  -- toolbelts
  core_replace("toolbelt-2", "basic", "enhance")
  core_replace("toolbelt-4", "basic", "enhance")
  core_replace("toolbelt-5", "basic", "enhance")
  -- modular roboports
  OV.set_science_pack("bob-robo-modular-1", "datacore-logistic-1", 2)
  OV.set_science_pack("bob-robo-modular-2", "datacore-logistic-1", 2)
  OV.set_science_pack("bob-robo-modular-3", "datacore-logistic-1", 2)
  OV.set_science_pack("bob-robo-modular-4", "datacore-logistic-1", 2)
  -- repair packs
  core_replace("bob-repair-pack-2", "basic", "enhance")
  core_replace("bob-repair-pack-3", "basic", "enhance")
  core_replace("bob-repair-pack-4", "basic", "enhance")
  core_replace("bob-repair-pack-5", "basic", "enhance")
end

-------------------------------------------------------------------------------
-- BOBS ORES ------------------------------------------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- BOBS ENEMIES ---------------------------------------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- BOBS ELECTRONICS -----------------------------------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- BOBS WARFARE ---------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobwarfare"] then
  core_replace("bob-robot-gun-1", "logistic", "war")
  --radars
  core_replace("radars", "basic", "exploration")
  core_replace("radars-2", "basic", "exploration")
  core_replace("radars-3", "basic", "exploration")
  core_replace("radars-4", "war", "exploration")
  --mines
  core_replace("poison-mine", "basic", "war")
  core_replace("slowdown-mine", "basic", "war")
  core_replace("distractor-mine", "basic", "war")
end

-------------------------------------------------------------------------------
-- BOBS VEHICLE EQUIPMENT -----------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobvehicleequipment"] then
  OV.set_science_pack("vehicle-roboport-modular-equipment-1", "datacore-enhance-1", 2)
  OV.set_science_pack("vehicle-roboport-modular-equipment-2", "datacore-enhance-1", 2)
  OV.set_science_pack("vehicle-roboport-modular-equipment-3", "datacore-enhance-1", 2)
  OV.set_science_pack("vehicle-roboport-modular-equipment-4", "datacore-enhance-1", 2)
end

-------------------------------------------------------------------------------
-- BOBS PERSONAL EQUIPMENT ----------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobequipment"] then
  OV.set_science_pack("personal-roboport-modular-equipment-1", "datacore-enhance-1", 2)
  OV.set_science_pack("personal-roboport-modular-equipment-2", "datacore-enhance-1", 2)
  OV.set_science_pack("personal-roboport-modular-equipment-3", "datacore-enhance-1", 2)
  OV.set_science_pack("personal-roboport-modular-equipment-4", "datacore-enhance-1", 2)
end

-------------------------------------------------------------------------------
-- BOBS POWER -----------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobpower"] then
  if settings.startup["bobmods-power-fluidgenerator"].value == true then
    core_replace("fluid-generator-1", "logistic", "energy")
    core_replace("fluid-generator-2", "logistic", "energy")
    core_replace("fluid-generator-3", "logistic", "energy")
  end
  if settings.startup["bobmods-power-steam"].value == true then
    core_replace("bob-steam-engine-2", "basic", "energy")
    core_replace("bob-steam-engine-3", "basic", "energy")
    core_replace("bob-steam-engine-4", "basic", "energy")
    core_replace("bob-steam-engine-5", "processing", "energy")
  end
  if mods["bobrevamp"] then
    OV.remove_science_pack("hydrazine-generator", "datacore-processing-1")
  end
end

-------------------------------------------------------------------------------
-- BOBS REVAMP ----------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobrevamp"] then
  core_replace("chemical-plant", "basic", "processing")
  core_replace("pumpjack", "basic", "processing")
end

-------------------------------------------------------------------------------
-- BOBS TECH ------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobtech"] then
  --Remove cores associated with advanced alien technologies
  if data.raw.tool["science-pack-gold"] then
    --blue tier
    OV.remove_science_pack("bob-battery-equipment-4", "datacore-enhance-1")
    OV.remove_science_pack("bob-battery-equipment-5", "datacore-enhance-1")
    OV.remove_science_pack("bob-battery-equipment-6", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-battery-equipment-4", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-battery-equipment-5", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-battery-equipment-6", "datacore-enhance-1")
    OV.remove_science_pack("bob-energy-shield-equipment-4", "datacore-enhance-1")
    OV.remove_science_pack("bob-energy-shield-equipment-5", "datacore-enhance-1")
    OV.remove_science_pack("bob-energy-shield-equipment-6", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-energy-shield-equipment-4", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-energy-shield-equipment-5", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-energy-shield-equipment-6", "datacore-enhance-1")
    --yellow tier
    OV.remove_science_pack("bob-power-armor-3", "datacore-enhance-1")
    OV.remove_science_pack("bob-power-armor-4", "datacore-enhance-1")
    OV.remove_science_pack("bob-power-armor-5", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-fusion-cell-equipment-4", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-fusion-cell-equipment-5", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-fusion-cell-equipment-6", "datacore-enhance-1")
    OV.remove_science_pack("fusion-reactor-equipment-2", "datacore-enhance-1")
    OV.remove_science_pack("fusion-reactor-equipment-3", "datacore-enhance-1")
    OV.remove_science_pack("fusion-reactor-equipment-4", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-big-turret-equipment-4", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-big-turret-equipment-5", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-big-turret-equipment-6", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-fusion-reactor-equipment-4", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-fusion-reactor-equipment-5", "datacore-enhance-1")
    OV.remove_science_pack("vehicle-fusion-reactor-equipment-6", "datacore-enhance-1")

    table.insert(data.raw.recipe["science-pack-gold"].ingredients, {"datacore-processing-2", 1})
    table.insert(data.raw.recipe["science-pack-gold"].ingredients, {"datacore-enhance-2", 1})
  end

  if settings.startup["bobmods-burnerphase"].value then
    core_replace("automation", "basic", "processing")
    core_replace("steam-power", "energy", "basic")
    core_replace("steam-automation", "processing", "basic")
  end
end
