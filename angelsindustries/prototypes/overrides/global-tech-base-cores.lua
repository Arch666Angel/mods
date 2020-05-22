if angelsmods.industries.tech then
  local OV = angelsmods.functions.OV
  --require("prototypes.overrides.industries-override-functions")

  -- now the custom fixes
  OV.global_replace_technology("military-science-pack", "tech-green-packs")
  OV.global_replace_technology("production-science-pack", "tech-blue-packs")

  -------------------------------------------------------------------------------
  -- NO CORES -------------------------------------------------------------------
  -------------------------------------------------------------------------------
  OV.remove_science_pack("rocket-silo", "datacore-processing-1")
  OV.execute()

  -- catch most of the cores with the core builder
  core_builder()
  OV.execute()

  -------------------------------------------------------------------------------
  -- BASIC CORES ----------------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  core_replace("automation", "processing", "basic")
  core_replace("logistics", "logistic", "basic")
  core_replace("turrets", "war", "basic")
  core_replace("flammables", "war", "enhance")
  -- REFINING
  core_replace("water-treatment", "processing", "basic")
  -- SMELTING
  core_replace("angels-solder-smelting-basic", "processing", "basic")
  -- BIO PROCESSING
  core_replace("bio-processing-brown", "processing", "basic")
  core_replace("bio-paper-1", "processing", "basic")
  -- INDUSTRIES
  OV.set_science_pack("tech-red-circuit", "datacore-basic", 2)
  OV.set_science_pack("tech-green-circuit", "datacore-basic", 2)
  OV.set_science_pack("tech-orange-circuit", "datacore-basic", 2)
  OV.set_science_pack("tech-blue-circuit", "datacore-basic", 2)
  OV.set_science_pack("tech-yellow-circuit", "datacore-basic", 2)
  -- DECORATION ADDONS
  if mods["angelsaddons-nilaus"] --[[angelsmods.addons.decorations]] then
    --if angelsmods.addons.decorations then
    OV.set_science_pack("nilaus", "datacore-basic", 2)
  end
  if mods["angelsaddons-shred"] --[[angelsmods.addons.decorations]] then
    OV.set_science_pack("deco-shred", "datacore-basic", 2)
  end

  -------------------------------------------------------------------------------
  -- EXPLORATION CORES ----------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  OV.set_science_pack("landfill", "datacore-exploration-1", 2)
  OV.set_science_pack("automobilism", "datacore-exploration-1", 2)
  core_replace("space-science-pack", "processing", "exploration")
  core_replace("artillery-shell-range-1", "war", "exploration")
  -- EXPLORATION
  OV.set_science_pack("angels-heavy-tank", "datacore-exploration-1", 2)
  -- CAB ADDONS
  if mods["angelsaddons-cab"] --[[angelsmods.addons.cab]] then
    OV.set_science_pack("angels-cab", "datacore-exploration-1", 2)
  end
  -- DECORATION ADDONS
  if mods["angelsaddons-nilaus"] --[[angelsmods.addons.decorations]] then
    OV.set_science_pack("nilaus-truck", "datacore-exploration-1", 2)
  end

  -------------------------------------------------------------------------------
  -- ENHANCEMENT CORES ----------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  core_replace("effect-transmission", "processing", "enhance")
  OV.set_science_pack("toolbelt", "datacore-enhance-1", 2)
  OV.set_science_pack("optics", "datacore-enhance-1", 2)
  core_replace("rocket-fuel", "war", "enhance")
  core_replace("artillery-shell-speed-1", "war", "enhance")
  core_replace("follower-robot-count-7", "war", "enhance")
  -- PETROCHEM
  core_replace("angels-rocket-fuel", "war", "enhance")

  -------------------------------------------------------------------------------
  -- ENERGY CORES ---------------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  core_replace("energy-weapons-damage-7", "war", "energy")
  -------------------------------------------------------------------------------
  -- LOGISTIC CORES -------------------------------------------------------------
  -------------------------------------------------------------------------------
  -- PETROCHEM
  OV.set_science_pack("angels-fluid-control", "datacore-logistic-1", 2)
  -- INDUSTRIES
  OV.set_science_pack("angels-crawler", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-yellow-loader", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-red-loader", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-blue-loader", "datacore-logistic-1", 2)
  -- PRESSURE TANKS ADDONS
  if mods["angelsaddons-pressuretanks"] --[[angelsmods.addons.pressuretanks]] then
    OV.set_science_pack("pressure-tanks", "datacore-logistic-1", 2)
    OV.add_prereq("pressure-tanks", "tech-specialised-labs-basic-logistic-2")
  end
  --ORE SILO ADDONS
  if mods["angelsaddons-oresilos"] --[[angelsmods.addons.oresilos]] then
    core_replace("ore-silos", "processing", "logistic")
  end

  -------------------------------------------------------------------------------
  -- WARFARE CORES --------------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  for rec_4tech, _ in pairs(data.raw.technology) do --fix follower robot count techs
    if string.find(rec_4tech, "follower") ~= nil and string.find(rec_4tech, "robot") ~= nil then
      core_replace(rec_4tech, "logistic", "war")
    end
  end
  --undo the change for the infinite tech (would normally be in with enhancement)
  core_replace("follower-robot-count-7", "war", "enhance")
  angelsmods.functions.add_flag("military-science-pack", "hidden")
  OV.disable_recipe({"military-science-pack"})
  if mods["angelsexploration"] then
    core_replace("angels-bio-gun", "processing", "war")
    core_replace("angels-refined-biological-1", "processing", "war")
    core_replace("angels-refined-biological-2", "processing", "war")
    core_replace("angels-refined-biological-3", "processing", "war")
    core_replace("angels-refined-biological-4", "processing", "war")
    core_replace("angels-refined-biological-5", "processing", "war")
    core_replace("angels-refined-biological-6", "processing", "war")
    core_replace("angels-refined-biological-7", "processing", "war")
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
  OV.set_science_pack("geode-crystallization", "datacore-processing-1", 2)
  OV.set_science_pack("thermal-water-extraction", "datacore-processing-1", 2)
  -- PETROCHEM
  OV.set_science_pack("angels-coal-cracking", "datacore-processing-1", 2)
  OV.set_science_pack("oil-gas-extraction", "datacore-processing-1", 2)
  OV.set_science_pack("angels-flare-stack", "datacore-processing-1", 2)
  OV.set_science_pack("gas-synthesis", "datacore-processing-1", 2)
  OV.set_science_pack("resin-1", "datacore-processing-1", 2)
  OV.set_science_pack("resin-2", "datacore-processing-1", 2)
  OV.set_science_pack("resin-3", "datacore-processing-1", 2)
  OV.set_science_pack("rubber", "datacore-processing-1", 2)
  core_replace("rocket-booster-1", "war", "processing")
  core_replace("rocket-booster-2", "war", "processing")
  angelsmods.functions.add_flag("production-science-pack", "hidden")
  OV.disable_recipe({"production-science-pack"})
  OV.execute() ------------------------------------------------------------------

  -- now upgrade the cores to tier 2 and let them depend on the correct technology
  core_tier_upgrade()
  OV.execute()
  -- GLOBAL UPDATE TECHNOLOGY RESEARCH AMOUNT AND TIMES
  tech_unlock_reset()
  OV.execute()
end
