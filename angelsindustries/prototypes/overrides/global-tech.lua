-- BASE REPLACEMENT SCRIPT FILE FOR ANGELS TECH OVERHAUL

local OV = angelsmods.functions.OV

-- ADD MANUAL OVERRIDES EXCEPTIONS TO TECH OVERRIDES
require("prototypes.overrides.global-tech-data")
--OV.execute()
if angelsmods.industries.tech then
  -----------------------------------------------------------------------------
  -- SCIENCE PACKS ------------------------------------------------------------
  -----------------------------------------------------------------------------
  -- GLOBAL REPLACE ALL VANILLA PACKS WITH ANGELS PACKS
  OV.global_replace_science_packs(
    "space-science-pack",
    {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "utility-science-pack"},
    "angels-science-pack-white"
  )
  OV.execute()
  OV.global_replace_science_packs(
    "utility-science-pack",
    {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"},
    "angels-science-pack-yellow"
  )
  OV.execute()
  OV.global_replace_science_packs(
    "chemical-science-pack",
    {"automation-science-pack", "logistic-science-pack"},
    "angels-science-pack-blue"
  )
  OV.execute()
  OV.global_replace_science_packs("logistic-science-pack", {"automation-science-pack"}, "angels-science-pack-green")
  OV.execute()
  OV.global_replace_science_packs("automation-science-pack", {}, "angels-science-pack-red")
  OV.execute()
end
-- MANUAL OVERRIDES FOR ANGELS SCIENCE PACKS (no datacores in these files! Santa will kill you!)
require("prototypes.overrides.global-tech-base-packs") -- overrides for base + angel
require("prototypes.overrides.global-tech-bobs-packs") -- overrides for bobs
require("prototypes.overrides.global-tech-popular-addons") -- overrides for PMU (Popular Mod Updates)
OV.execute()

if angelsmods.industries.tech then
  -- GLOBAL UPDATE TECHNOLOGY RESEARCH AMOUNT AND TIMES
  tech_unlock_reset()
  OV.execute()

  -----------------------------------------------------------------------------
  -- SCIENCE DATACORES --------------------------------------------------------
  -----------------------------------------------------------------------------
  -- GLOBAL REPLACE ALL VANILLA PACKS WITH ANGELS CORES
  OV.global_replace_science_packs("military-science-pack", {"production-science-pack"}, "datacore-war-1", 2)
  OV.execute()
  OV.global_replace_science_packs("production-science-pack", {}, "datacore-processing-1", 2)
  OV.execute()
end
-- MANUAL OVERRIDES FOR ANGELS CORES (no science packs in these files! Santa will kill you!)
require("prototypes.overrides.global-tech-base-cores") -- overrides for base + angel
require("prototypes.overrides.global-tech-bobs-cores") -- overrides for bobs
OV.execute()

if angelsmods.industries.tech then
  -- GLOBAL UPDATE CORE TIERS DEPENDING ON SCIENCE PACKS
  core_tier_upgrade()
  OV.execute()
end
-- CLEAN UP THE TECH TREE
require("prototypes.overrides.global-tech-cleanup")
--OV.execute()
