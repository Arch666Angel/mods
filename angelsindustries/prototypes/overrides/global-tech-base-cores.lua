if angelsmods.industries.tech then
  local OV = angelsmods.functions.OV
  local AI = angelsmods.functions.AI
  --require("prototypes.overrides.industries-override-functions")

  -------------------------------------------------------------------------------
  -- NO CORES -------------------------------------------------------------------
  -------------------------------------------------------------------------------
  OV.remove_science_pack("rocket-silo", "datacore-war-1")
  OV.execute()

  -- catch most of the cores with the core builder
  AI.core_builder()
  OV.execute()

  -------------------------------------------------------------------------------
  -- BASIC CORES ----------------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  AI.core_replace("automation", "processing", "basic")
  AI.core_replace("logistics", "logistic", "basic")
  AI.core_replace("turrets", "war", "basic")
  AI.core_replace("flammables", "war", "enhance")
  -- REFINING
  -- PETROCHEM
  AI.core_replace("angels-basic-chemistry", "processing", "basic")
  -- SMELTING
  AI.core_replace("angels-solder-smelting-basic", "processing", "basic")
  -- BIO PROCESSING
  AI.core_replace("angels-bio-processing-brown", "processing", "basic")
  AI.core_replace("angels-bio-paper-1", "processing", "basic")
  -- INDUSTRIES
  OV.set_science_pack("tech-red-circuit", "datacore-basic", 2)
  OV.set_science_pack("tech-green-circuit", "datacore-basic", 2)
  OV.set_science_pack("tech-orange-circuit", "datacore-basic", 2)
  OV.set_science_pack("tech-blue-circuit", "datacore-basic", 2)
  OV.set_science_pack("tech-yellow-circuit", "datacore-basic", 2)
  OV.remove_science_pack("tech-yellow-circuit", "datacore-processing-1")
  -- DECORATION ADDONS
  if
    mods["angelsaddons-nilaus"] --[[angelsmods.addons.decorations]]
  then
    --if angelsmods.addons.decorations then
    OV.set_science_pack("nilaus", "datacore-basic", 2)
  end
  if
    mods["angelsaddons-shred"] --[[angelsmods.addons.decorations]]
  then
    OV.set_science_pack("deco-shred", "datacore-basic", 2)
  end

  -------------------------------------------------------------------------------
  -- EXPLORATION CORES ----------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  OV.set_science_pack("landfill", "datacore-exploration-1", 2)
  OV.set_science_pack("automobilism", "datacore-exploration-1", 2)
  AI.core_replace("space-science-pack", "processing", "exploration")
  AI.core_replace("artillery-shell-range-1", "war", "exploration")
  -- BIO PROCESSING
  AI.core_replace("angels-bio-refugium-hatchery", "processing", "exploration")
  AI.core_replace("angels-bio-refugium-fish-1", "processing", "exploration")
  AI.core_replace("angels-bio-refugium-fish-2", "processing", "exploration")
  AI.core_replace("angels-bio-refugium-puffer-1", "processing", "exploration")
  AI.core_replace("angels-bio-refugium-puffer-2", "processing", "exploration")
  AI.core_replace("angels-bio-refugium-puffer-3", "processing", "exploration")
  AI.core_replace("angels-bio-refugium-puffer-4", "processing", "exploration")
  AI.core_replace("angels-bio-refugium-biter-1", "processing", "exploration")
  AI.core_replace("angels-bio-refugium-biter-2", "processing", "exploration")
  AI.core_replace("angels-bio-refugium-biter-3", "processing", "exploration")
  OV.set_science_pack("angels-bio-temperate-farm", "datacore-processing-1", 2)
  OV.set_science_pack("angels-bio-desert-farm", "datacore-processing-1", 2)
  OV.set_science_pack("angels-bio-swamp-farm", "datacore-processing-1", 2)
  -- INDUSTRIES
  AI.core_replace("angels-rocket", "war", "exploration")
  -- EXPLORATION
  OV.set_science_pack("angels-heavy-tank", "datacore-exploration-1", 2)
  -- CAB ADDONS
  if
    mods["angelsaddons-cab"] --[[angelsmods.addons.cab]]
  then
    OV.set_science_pack("angels-cab", "datacore-exploration-1", 2)
    OV.set_science_pack("angels-crawler", "datacore-logistic-1", 2)
  end
  -- DECORATION ADDONS
  if
    mods["angelsaddons-nilaus"] --[[angelsmods.addons.decorations]]
  then
    OV.set_science_pack("nilaus-truck", "datacore-exploration-1", 2)
  end

  -------------------------------------------------------------------------------
  -- ENHANCEMENT CORES ----------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  AI.core_replace("effect-transmission", "processing", "enhance")
  OV.set_science_pack("toolbelt", "datacore-enhance-1", 2)
  OV.set_science_pack("lamp", "datacore-enhance-1", 2)
  AI.core_replace("rocket-fuel", "war", "enhance")
  AI.core_replace("artillery-shell-speed-1", "war", "enhance")
  AI.core_replace("follower-robot-count-7", "war", "enhance")
  -- PETROCHEM
  AI.core_replace("angels-rocket-fuel", "war", "enhance")
  -- INDUSTRIES
  --OV.set_science_pack("angels-components-construction-1", "datacore-enhance-1", 2)
  --OV.set_science_pack("angels-components-construction-2", "datacore-enhance-1", 2)
  --OV.set_science_pack("angels-components-construction-3", "datacore-enhance-1", 2)
  --OV.set_science_pack("angels-components-construction-4", "datacore-enhance-1", 2)
  --OV.set_science_pack("angels-components-construction-5", "datacore-enhance-1", 2)
  AI.core_replace("angels-rocket-hull", "war", "enhance")

  -------------------------------------------------------------------------------
  -- ENERGY CORES ---------------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  AI.core_replace("energy-weapons-damage-7", "war", "energy")
  AI.core_replace("uranium-processing", "processing", "energy")
  AI.core_replace("kovarex-enrichment-process", "processing", "energy")
  AI.core_replace("nuclear-fuel-reprocessing", "processing", "energy")
  -- PETROCHEM
  AI.core_replace("nuclear-fuel", "processing", "energy")
  -- INDUSTRIES
  OV.set_science_pack("angels-components-batteries-1", "datacore-energy-1", 2)
  OV.set_science_pack("angels-components-batteries-2", "datacore-energy-1", 2)
  OV.set_science_pack("angels-components-batteries-3", "datacore-energy-1", 2)
  OV.set_science_pack("angels-components-batteries-4", "datacore-energy-1", 2)
  OV.set_science_pack("angels-components-batteries-5", "datacore-energy-1", 2)
  AI.core_replace("angels-components-batteries-6", "processing", "energy")
  AI.core_replace("angels-rocket-fusion-reactor", "war", "energy")

  -------------------------------------------------------------------------------
  -- LOGISTIC CORES -------------------------------------------------------------
  -------------------------------------------------------------------------------
  -- PETROCHEM
  OV.set_science_pack("angels-fluid-control", "datacore-logistic-1", 2)
  -- INDUSTRIES
  --AI.core_replace("angels-components-cabling-1", "energy", "logistic")
  AI.core_replace("angels-components-cabling-2", "energy", "logistic")
  AI.core_replace("angels-components-cabling-3", "energy", "logistic")
  AI.core_replace("angels-components-cabling-4", "energy", "logistic")
  AI.core_replace("angels-components-cabling-5", "energy", "logistic")
  AI.core_replace("angels-rocket-ion-thruster", "war", "logistic")
  -- MOBILITY ADDONS
  if mods["angelsaddons-storage"] then
    if angelsmods.addons.storage.pressuretank then
      OV.set_science_pack("angels-pressure-tanks", "datacore-logistic-1", 2)
    end
    if angelsmods.addons.storage.silos or angelsmods.addons.storage.oresilos then
      AI.core_replace("angels-ore-silos", "processing", "logistic")
    end
  end

  -------------------------------------------------------------------------------
  -- WARFARE CORES --------------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  for rec_4tech, _ in pairs(data.raw.technology) do --fix follower robot count techs
    if string.find(rec_4tech, "follower") ~= nil and string.find(rec_4tech, "robot") ~= nil then
      AI.core_replace(rec_4tech, "logistic", "war")
    end
  end
  --undo the change for the infinite tech (would normally be in with enhancement)
  AI.core_replace("follower-robot-count-7", "war", "enhance")
  if mods["angelsexploration"] then
    AI.core_replace("angels-bio-gun", "processing", "war")
    AI.core_replace("angels-refined-biological-1", "processing", "war")
    AI.core_replace("angels-refined-biological-2", "processing", "war")
    AI.core_replace("angels-refined-biological-3", "processing", "war")
    AI.core_replace("angels-refined-biological-4", "processing", "war")
    AI.core_replace("angels-refined-biological-5", "processing", "war")
    AI.core_replace("angels-refined-biological-6", "processing", "war")
    AI.core_replace("angels-refined-biological-7", "processing", "war")
  end

  -------------------------------------------------------------------------------
  -- PRODUCTION CORES -----------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  OV.set_science_pack("concrete", "datacore-processing-1", 2)
  OV.set_science_pack("circuit-network", "datacore-processing-1", 2)
  OV.set_science_pack("engine", "datacore-processing-1", 2)
  OV.set_science_pack("electric-engine", "datacore-processing-1", 2)
  OV.set_science_pack("lubricant", "datacore-processing-1", 2)
  OV.set_science_pack("low-density-structure", "datacore-processing-1", 2)
  -- REFINING
  OV.set_science_pack("angels-geode-crystallization-1", "datacore-processing-1", 2)
  OV.set_science_pack("angels-thermal-water-extraction", "datacore-processing-1", 2)
  -- PETROCHEM
  OV.set_science_pack("angels-coal-cracking", "datacore-processing-1", 2)
  OV.set_science_pack("angels-flare-stack", "datacore-processing-1", 2)
  OV.set_science_pack("angels-gas-synthesis", "datacore-processing-1", 2)
  OV.set_science_pack("angels-resin-1", "datacore-processing-1", 2)
  OV.set_science_pack("angels-resin-2", "datacore-processing-1", 2)
  OV.set_science_pack("angels-resin-3", "datacore-processing-1", 2)
  OV.set_science_pack("angels-rubber", "datacore-processing-1", 2)
  AI.core_replace("angels-rocket-booster-1", "war", "processing")
  AI.core_replace("angels-rocket-booster-2", "war", "processing")
  -- BIOPROCESSING
  AI.core_replace("angels-composting", "basic", "processing")
  OV.execute() ------------------------------------------------------------------

  -- now upgrade the cores to tier 2 and let them depend on the correct technology
  AI.core_tier_upgrade()
  OV.execute()

  -- GLOBAL UPDATE TECHNOLOGY RESEARCH AMOUNT AND TIMES
  AI.tech_unlock_reset()
  OV.execute()
end
