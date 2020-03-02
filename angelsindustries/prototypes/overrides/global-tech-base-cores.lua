local OV = angelsmods.functions.OV
require("prototypes.overrides.industries-override-functions")
-- catch most of the cores with the core builder
core_builder()
OV.execute()

-- now the custom fixes
-------------------------------------------------------------------------------
-- NO CORES -------------------------------------------------------------------
-------------------------------------------------------------------------------
OV.remove_science_pack("rocket-silo", "datacore-war-1")

-------------------------------------------------------------------------------
-- BASIC CORES ----------------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
core_replace("automation", "processing", "basic")
core_replace("logistics", "logistic", "basic")
core_replace("turrets","war","basic")
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
if angelsmods.addons.decorations then
  OV.set_science_pack("nilaus", "datacore-basic", 2)
  OV.set_science_pack("deco-shred", "datacore-basic", 2)
end

-------------------------------------------------------------------------------
-- EXPLORATION CORES ----------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
OV.set_science_pack("landfill", "datacore-exploration-1", 2)
OV.set_science_pack("automobilism", "datacore-exploration-1", 2)
core_replace("space-science-pack", "processing", "exploration")
-- EXPLORATION
OV.set_science_pack("angels-heavy-tank", "datacore-exploration-1", 2)
-- CAB ADDONS
if angelsmods.addons.cab then
  OV.set_science_pack("angels-cab", "datacore-exploration-1", 2)
end
-- DECORATION ADDONS
if angelsmods.addons.decorations then
  OV.set_science_pack("nilaus-truck", "datacore-exploration-1", 2)
end

-------------------------------------------------------------------------------
-- ENHANCEMENT CORES ----------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
core_replace("effect-transmission", "processing", "enhance")
OV.set_science_pack("toolbelt", "datacore-enhance-1", 2)
OV.set_science_pack("optics", "datacore-enhance-1", 2)
core_replace("rocket-fuel","war","enhance")
-- PETROCHEM
core_replace("angels-rocket-fuel","war","enhance")

-------------------------------------------------------------------------------
-- ENERGY CORES ---------------------------------------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- LOGISTIC CORES -------------------------------------------------------------
-------------------------------------------------------------------------------
-- PETROCHEM
OV.set_science_pack("angels-fluid-control", "datacore-logistic-1", 2)
-- INDUSTRIES
OV.set_science_pack("angels-crawler", "datacore-logistic-1", 2)
OV.set_science_pack("angels-crawler-train", "datacore-logistic-1", 2)
OV.set_science_pack("angels-yellow-loader", "datacore-logistic-1", 2)
OV.set_science_pack("angels-red-loader", "datacore-logistic-1", 2)
OV.set_science_pack("angels-blue-loader", "datacore-logistic-1", 2)
-- PRESSURE TANKS ADDONS
if angelsmods.addons.pressuretanks then
  OV.set_science_pack("pressure-tanks", "datacore-logistic-1", 2)
end
--ORE SILO ADDONS
if angelsmods.addons.oresilos then
  core_replace("ore-silos", "processing", "logistic")
end
-------------------------------------------------------------------------------
-- WARFARE CORES --------------------------------------------------------------
-------------------------------------------------------------------------------
-- BASE GAME
for rec_4tech,_ in pairs(data.raw.technology) do --fix follower robot count techs
  if string.find(rec_4tech,"follower")~=nil and string.find(rec_4tech,"robot")~=nil then
    core_replace(rec_4tech, "logistic", "war")
  end
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
core_replace("rocket-booster-1","war","processing")
core_replace("rocket-booster-2","war","processing")

OV.execute() ------------------------------------------------------------------

-- now upgrade the cores to tier 2 and let them depend on the correct technology
core_tier_upgrade()
OV.execute()
