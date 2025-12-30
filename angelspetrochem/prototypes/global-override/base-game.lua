local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- CHEMICAL PLANTS ------------------------------------------------------------
-------------------------------------------------------------------------------
move_item("chemical-plant", "angels-petrochem-buildings-chemical-plant", "a[regular]-aa[vanilla]")

-------------------------------------------------------------------------------
-- OIL PROCESSING -------------------------------------------------------------
-------------------------------------------------------------------------------
-- oil refinery
move_item("oil-refinery", "angels-petrochem-buildings-oil-refinery", "b[oil-refinery]-a")

-- oil processing
OV.converter_fluid("petroleum-gas", "angels-gas-methane")
OV.converter_fluid("light-oil", "angels-liquid-fuel-oil")
OV.converter_fluid("heavy-oil", "angels-liquid-naphtha")

OV.disable_recipe("lubricant")
OV.add_unlock("lubricant", "angels-mineral-oil-lubricant")

OV.global_replace_technology("oil-processing", "angels-oil-processing")
OV.global_replace_technology("advanced-oil-processing", "angels-advanced-oil-processing")

OV.disable_technology({ "coal-liquefaction" })
OV.disable_recipe({ "coal-liquefaction" })

-- plastic
OV.disable_recipe({ "plastic-bar" })

-- sulfur
OV.converter_fluid("sulfuric-acid", "angels-liquid-sulfuric-acid")

OV.global_replace_technology("sulfur-processing", "angels-sulfur-processing-1")
OV.disable_recipe("sulfur")

-- Balance/fix rocket fuel
OV.add_prereq("rocket-fuel", "angels-nitrogen-processing-4")
OV.add_unlock("rocket-fuel", "angels-rocket-oxidizer-capsule")
OV.add_unlock("rocket-fuel", "angels-rocket-fuel-capsule")
OV.set_science_pack("rocket-fuel", {
  "automation-science-pack",
  "logistic-science-pack",
  "chemical-science-pack",
  "production-science-pack",
  "utility-science-pack",
}, 1)
OV.set_research_difficulty("rocket-fuel", 15, 50)

-- Update kovarex for nuclear fuel separation
OV.remove_unlock("kovarex-enrichment-process", "nuclear-fuel")

-------------------------------------------------------------------------------
-- EXPLOSIVES -----------------------------------------------------------------
-------------------------------------------------------------------------------
data.raw["recipe"]["explosives"].subgroup = "angels-petrochem-solids-2"
data.raw["recipe"]["explosives"].order = "a[explosives]-a"
