-- BASE REPLACEMENT SCRIPT FILE FOR ANGELS TECH OVERHAUL

local OV = angelsmods.functions.OV

-- ADD MANUAL OVERRIDES EXCEPTIONS TO TECH OVERRIDES
require("prototypes.overrides.global-tech-data")

-------------------------------------------------------------------------------
-- SCIENCE PACKS --------------------------------------------------------------
-------------------------------------------------------------------------------
-- GLOBAL REPLACE ALL VANILLA PACKS WITH ANGELS PACKS
if angelsmods.industries.tech then
  OV.global_replace_science_packs(
    "space-science-pack",
    { "automation-science-pack", "logistic-science-pack", "chemical-science-pack", "utility-science-pack" },
    "angels-science-pack-white"
  )
  OV.execute()
  OV.global_replace_item("space-science-pack", "angels-science-pack-white")
  angelsmods.functions.hide("space-science-pack")
  OV.execute()

  OV.global_replace_science_packs(
    "utility-science-pack",
    { "automation-science-pack", "logistic-science-pack", "chemical-science-pack" },
    "angels-science-pack-yellow"
  )
  OV.execute()
  OV.global_replace_item("utility-science-pack", "angels-science-pack-yellow")
  angelsmods.functions.hide("utility-science-pack")
  OV.disable_recipe({ "utility-science-pack" })
  OV.global_replace_technology("utility-science-pack", "tech-yellow-packs")
  OV.execute()

  OV.global_replace_science_packs(
    "chemical-science-pack",
    { "automation-science-pack", "logistic-science-pack" },
    "angels-science-pack-blue"
  )
  OV.execute()
  OV.global_replace_item("chemical-science-pack", "angels-science-pack-blue")
  angelsmods.functions.hide("chemical-science-pack")
  OV.disable_recipe({ "chemical-science-pack" })
  OV.global_replace_technology("chemical-science-pack", "tech-blue-packs")
  OV.execute()

  OV.global_replace_science_packs("logistic-science-pack", { "automation-science-pack" }, "angels-science-pack-green")
  OV.execute()
  OV.global_replace_item("logistic-science-pack", "angels-science-pack-green")
  angelsmods.functions.hide("logistic-science-pack")
  OV.disable_recipe({ "logistic-science-pack" })
  OV.global_replace_technology("logistic-science-pack", "tech-green-packs")
  OV.execute()

  OV.global_replace_science_packs("automation-science-pack", {}, "angels-science-pack-red")
  OV.execute()
  OV.global_replace_item("automation-science-pack", "angels-science-pack-red")
  angelsmods.functions.hide("automation-science-pack")
  OV.disable_recipe({ "automation-science-pack" })
end

-- MANUAL OVERRIDES FOR ANGELS SCIENCE PACKS (no datacores in these files! Santa will kill you!)
require("prototypes.overrides.global-tech-base-packs") -- overrides for base + angel
require("prototypes.overrides.global-tech-bobs-packs") -- overrides for bobs
require("prototypes.overrides.global-tech-popular-addons") -- overrides for PMU (Popular Mod Updates)

-- GLOBAL UPDATE TECHNOLOGY RESEARCH AMOUNT AND TIMES
if angelsmods.industries.tech then
  angelsmods.functions.AI.tech_unlock_reset()
  OV.execute()
end

-------------------------------------------------------------------------------
-- SCIENCE DATACORES ----------------------------------------------------------
-------------------------------------------------------------------------------
-- GLOBAL REPLACE ALL VANILLA PACKS WITH ANGELS CORES
if angelsmods.industries.tech then
  OV.global_replace_science_packs("military-science-pack", { "production-science-pack" }, "datacore-war-1", 2)
  OV.execute()
  OV.global_replace_item("military-science-pack", "angels-science-pack-green")
  angelsmods.functions.hide("military-science-pack")
  OV.disable_recipe({ "military-science-pack" })
  OV.global_replace_technology("military-science-pack", "tech-green-packs")
  OV.execute()

  OV.global_replace_science_packs("production-science-pack", {}, "datacore-processing-1", 2)
  OV.execute()
  OV.global_replace_item("production-science-pack", "angels-science-pack-yellow") -- datacore replacement script needs to run first
  angelsmods.functions.hide("production-science-pack")
  OV.disable_recipe({ "production-science-pack" })
  OV.global_replace_technology("production-science-pack", "tech-yellow-packs")
  OV.execute()
end

-- MANUAL OVERRIDES FOR ANGELS CORES (no science packs in these files! Santa will kill you!)
require("prototypes.overrides.global-tech-base-cores") -- overrides for base + angel
require("prototypes.overrides.global-tech-bobs-cores") -- overrides for bobs

-- GLOBAL UPDATE CORE TIERS DEPENDING ON SCIENCE PACKS
if angelsmods.industries.tech then
  angelsmods.functions.AI.core_tier_upgrade()
  OV.execute()
end

-------------------------------------------------------------------------------
-- CLEAN UP THE TECH TREE -----------------------------------------------------
-------------------------------------------------------------------------------
require("prototypes.overrides.global-tech-cleanup")
