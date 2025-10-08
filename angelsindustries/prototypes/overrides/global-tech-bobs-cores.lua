--require("prototypes.overrides.industries-override-functions")
if angelsmods.industries.tech then
  local OV = angelsmods.functions.OV
  local AI = angelsmods.functions.AI
  -------------------------------------------------------------------------------
  -- BASE BOBS (MCI) ------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobplates"] then
    AI.core_replace("bob-grinding", "basic", "processing")
    AI.core_replace("polishing", "basic", "processing")
    AI.core_replace("mixing-furnace", "basic", "processing")
    AI.core_replace("steel-mixing-furnace", "basic", "processing")
    AI.core_replace("electric-mixing-furnace", "basic", "processing")
    AI.core_replace("steel-chemical-furnace", "basic", "processing")
    AI.core_replace("electric-chemical-furnace", "basic", "processing")
    AI.core_replace("bob-fluid-barrel-processing", "logistic", "processing")
    AI.core_replace("bob-fluid-canister-processing", "logistic", "processing")
    AI.core_replace("bob-gas-canisters", "basic", "processing")
    AI.core_replace("ceramics", "basic", "processing")

    -- depending on settings and enabled mods, bobingabout-enrichment-process could be using either basic or processing core
    AI.core_replace("bobingabout-enrichment-process", "basic", "energy")
    AI.core_replace("bobingabout-enrichment-process", "processing", "energy")

    if not mods["bobtech"] then
      AI.core_replace("bob-alien-blue-research", "processing", "war")
      AI.core_replace("bob-alien-orange-research", "processing", "war")
      AI.core_replace("bob-alien-purple-research", "processing", "war")
      AI.core_replace("bob-alien-yellow-research", "processing", "war")
      AI.core_replace("bob-alien-green-research", "processing", "war")
      AI.core_replace("bob-alien-red-research", "processing", "war")
    end
  end

  -------------------------------------------------------------------------------
  -- BOB ASSMBLY ----------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobassembly"] then
    --assemblers
    if data.raw.technology["basic-automation"] then
      AI.core_replace("basic-automation", "processing", "basic")
      AI.core_replace("automation", "basic", "processing")
    end
    --chemplants
    if settings.startup["bobmods-assembly-chemicalplants"].value == true then
      AI.core_replace("chemical-plant-2", "basic", "processing")
      AI.core_replace("chemical-plant-3", "basic", "processing")
    end
    --oil-furnaces (and metal-mixing)
    if settings.startup["bobmods-assembly-oilfurnaces"].value then
      AI.core_replace("fluid-furnace", "logistic", "processing")
      AI.core_replace("fluid-mixing-furnace", "logistic", "processing")
      AI.core_replace("fluid-chemical-furnace", "logistic", "processing")
    end
    if settings.startup["bobmods-assembly-multipurposefurnaces"].value then
      AI.core_replace("multi-purpose-furnace-1", "basic", "processing")
    end
    --electrolysers
    if settings.startup["bobmods-assembly-electrolysers"].value then
      AI.core_replace("electrolyser-2", "basic", "processing")
      AI.core_replace("electrolyser-3", "basic", "processing")
    end
    --distillery
    if settings.startup["bobmods-assembly-distilleries"].value then
      AI.core_replace("bob-distillery-2", "basic", "processing")
      AI.core_replace("bob-distillery-3", "basic", "processing")
    end
    -- centrifuge
    if settings.startup["bobmods-assembly-centrifuge"].value then
      AI.core_replace("centrifuge-2", "processing", "energy")
      AI.core_replace("centrifuge-3", "processing", "energy")
    end
  end

  -------------------------------------------------------------------------------
  -- BOBS GREENHOUSE ------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobgreenhouse"] then
    --OV.set_science_pack("bob-greenhouse", "datacore-processing-1", 2)
    AI.core_replace("bob-greenhouse", "basic", "processing")
    --OV.set_science_pack("bob-fertiliser", "datacore-processing-1", 2)
    AI.core_replace("bob-fertiliser", "basic", "processing")
  end

  -------------------------------------------------------------------------------
  -- BOBS ADJUSTABLE INSERTERS --------------------------------------------------
  -------------------------------------------------------------------------------

  -------------------------------------------------------------------------------
  -- BOBS CLASSES ---------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobclasses"] then
    --OV.set_science_pack("bodies", "datacore-enhance-2", 2)
    AI.core_replace("bodies", "basic", "enhance")
  end

  -------------------------------------------------------------------------------
  -- BOBS MINING ----------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobmining"] then
    --regular drills
    if settings.startup["bobmods-mining-miningdrills"].value == true then
      AI.core_replace("bob-drills-1", "basic", "processing")
      AI.core_replace("bob-drills-2", "basic", "processing")
      AI.core_replace("bob-drills-3", "basic", "processing")
    end
    --area drills
    if settings.startup["bobmods-mining-areadrills"].value == true then
      AI.core_replace("bob-area-drills-1", "basic", "processing")
      AI.core_replace("bob-area-drills-2", "basic", "processing")
      AI.core_replace("bob-area-drills-3", "basic", "processing")
    end
    --pumpjacks
    if settings.startup["bobmods-mining-pumpjacks"].value == true then
      AI.core_replace("bob-pumpjacks-1", "basic", "processing")
      AI.core_replace("bob-pumpjacks-2", "basic", "processing")
      AI.core_replace("bob-pumpjacks-3", "basic", "processing")
    end
  end

  -------------------------------------------------------------------------------
  -- BOBS MODULES ---------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobmodules"] then
    AI.core_replace("effect-transmission-2", "processing", "enhance")
    AI.core_replace("effect-transmission-3", "processing", "enhance")
  end

  -------------------------------------------------------------------------------
  -- BOBS LOGISTICS -------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["boblogistics"] then
    if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
      AI.core_replace("logistics-0", "logistic", "basic")
      AI.core_replace("logistics", "basic", "logistic")
    end
    -- toolbelts
    AI.core_replace("toolbelt-2", "basic", "enhance")
    AI.core_replace("toolbelt-3", "processing", "enhance")
    AI.core_replace("toolbelt-4", "processing", "enhance")
    AI.core_replace("toolbelt-5", "processing", "enhance")
    -- modular roboports
    AI.core_replace("bob-robo-modular-1", "basic", "logistic")
    AI.core_replace("bob-robo-modular-2", "basic", "logistic")
    AI.core_replace("bob-robo-modular-3", "basic", "logistic")
    -- "bob-robo-modular-4" could be using basic or processing core, depending on which of Bob's mods are enabled
    AI.core_replace("bob-robo-modular-4", "basic", "logistic")
    AI.core_replace("bob-robo-modular-4", "processing", "logistic")
    -- repair packs
    AI.core_replace("bob-repair-pack-2", "basic", "enhance")
    AI.core_replace("bob-repair-pack-3", "basic", "enhance")
    AI.core_replace("bob-repair-pack-4", "basic", "enhance")
    AI.core_replace("bob-repair-pack-5", "processing", "enhance")
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
    AI.core_replace("bob-robot-gun-1", "logistic", "war")
    --radars
    AI.core_replace("radars-1", "basic", "exploration")
    AI.core_replace("radars-2", "basic", "exploration")
    AI.core_replace("radars-3", "basic", "exploration")
    AI.core_replace("radars-4", "processing", "exploration")
    AI.core_replace("radars-5", "processing", "exploration")
    --mines
    AI.core_replace("poison-mine", "basic", "war")
    AI.core_replace("slowdown-mine", "basic", "war")
    AI.core_replace("distractor-mine", "basic", "war")
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
      AI.core_replace("fluid-generator-1", "logistic", "energy")
      AI.core_replace("fluid-generator-2", "logistic", "energy")
      AI.core_replace("fluid-generator-3", "logistic", "energy")
    end
    if settings.startup["bobmods-power-steam"].value == true then
      AI.core_replace("bob-steam-engine-2", "basic", "energy")
      AI.core_replace("bob-steam-engine-3", "basic", "energy")
      AI.core_replace("bob-steam-engine-4", "processing", "energy")
      AI.core_replace("bob-steam-engine-5", "processing", "energy")
    end
    if mods["bobrevamp"] then
      OV.remove_science_pack("hydrazine-generator", "datacore-processing-1")
    end
  end

  -------------------------------------------------------------------------------
  -- BOBS REVAMP ----------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobrevamp"] then
    AI.core_replace("chemical-plant", "basic", "processing")
    AI.core_replace("pumpjack", "basic", "processing")
  end

  -------------------------------------------------------------------------------
  -- BOBS TECH ------------------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobtech"] then
    --Remove cores associated with advanced alien technologies
    if data.raw.tool["science-pack-gold"] then
      OV.remove_science_pack("bob-alien-research-blue", "datacore-processing-1")
      OV.remove_science_pack("bob-alien-research-orange", "datacore-processing-1")
      OV.remove_science_pack("bob-alien-research-purple", "datacore-processing-1")
      OV.remove_science_pack("bob-alien-research-yellow", "datacore-processing-1")
      OV.remove_science_pack("bob-alien-research-green", "datacore-processing-1")
      OV.remove_science_pack("bob-alien-research-red", "datacore-processing-1")
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
      OV.remove_science_pack("bob-explosive-artillery-shells", "datacore-war-1")
      OV.remove_science_pack("bob-fire-artillery-shells", "datacore-war-1")
      OV.remove_science_pack("bob-poison-artillery-shells", "datacore-war-1")
      --yellow tier
      OV.remove_science_pack("bob-power-armor-3", "datacore-enhance-1")
      OV.remove_science_pack("bob-power-armor-4", "datacore-enhance-1")
      OV.remove_science_pack("bob-power-armor-5", "datacore-enhance-1")
      OV.remove_science_pack("vehicle-fusion-cell-equipment-4", "datacore-enhance-1")
      OV.remove_science_pack("vehicle-fusion-cell-equipment-5", "datacore-enhance-1")
      OV.remove_science_pack("vehicle-fusion-cell-equipment-6", "datacore-enhance-1")
      OV.remove_science_pack("fission-reactor-equipment-2", "datacore-enhance-1")
      OV.remove_science_pack("fission-reactor-equipment-3", "datacore-enhance-1")
      OV.remove_science_pack("fission-reactor-equipment-4", "datacore-enhance-1")
      OV.remove_science_pack("vehicle-big-turret-equipment-4", "datacore-enhance-1")
      OV.remove_science_pack("vehicle-fusion-reactor-equipment-4", "datacore-enhance-1")
      OV.remove_science_pack("vehicle-fusion-reactor-equipment-5", "datacore-enhance-1")
      OV.remove_science_pack("vehicle-fusion-reactor-equipment-6", "datacore-enhance-1")
      OV.remove_science_pack("personal-laser-defense-equipment-6", "datacore-enhance-1")

      table.insert(
        data.raw.recipe["science-pack-gold"].ingredients,
        { type = "item", name = "datacore-processing-2", amount = 1 }
      )
      table.insert(
        data.raw.recipe["science-pack-gold"].ingredients,
        { type = "item", name = "datacore-enhance-2", amount = 1 }
      )
    end

    if settings.startup["bobmods-burnerphase"].value then
      AI.core_replace("steam-power", "energy", "basic")
      if data.raw.technology["basic-automation"] then
        AI.core_replace("automation", "basic", "processing")
        AI.core_replace("steam-automation", "processing", "basic")
      end
    end
  end

  OV.execute()
end
