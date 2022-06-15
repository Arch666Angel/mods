local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- CHEMICAL PLANTS ------------------------------------------------------------
-------------------------------------------------------------------------------
move_item("chemical-plant", "petrochem-buildings-chemical-plant", "a[regular]-aa[vanilla]")

if angelsmods.trigger.disable_vanilla_chemical_plants then
  angelsmods.functions.add_flag("chemical-plant", "hidden")
  angelsmods.functions.set_next_upgrade("assembling-machine", "chemical-plant", nil)
  OV.global_replace_item("chemical-plant", "angels-chemical-plant")
  OV.disable_recipe("chemical-plant")
  angelsmods.functions.remove_crafting_category("assembling-machine", "chemical-plant", {
    "chemistry",
    "liquifying"
  })
else
  OV.add_unlock("basic-chemistry-2","chemical-plant") --give the item a new home if still active
end

-------------------------------------------------------------------------------
-- OIL PROCESSING -------------------------------------------------------------
-------------------------------------------------------------------------------
-- oil refinery
move_item("oil-refinery", "petrochem-buildings-oil-refinery", "b[oil-refinery]-a")

-- oil processing
OV.converter_fluid("petroleum-gas", "gas-methane")
OV.converter_fluid("light-oil", "liquid-fuel-oil")
OV.converter_fluid("heavy-oil", "liquid-naphtha")

OV.disable_recipe("lubricant")
OV.add_unlock("lubricant", "mineral-oil-lubricant")

OV.global_replace_technology("oil-processing", "angels-oil-processing")
OV.global_replace_technology("advanced-oil-processing", "angels-advanced-oil-processing")

OV.disable_technology({"coal-liquefaction"})
OV.disable_recipe({"coal-liquefaction"})

-- plastic
OV.disable_recipe({"plastic-bar"})

-- sulfur
OV.converter_fluid("sulfuric-acid", "liquid-sulfuric-acid")

OV.global_replace_technology("sulfur-processing", "angels-sulfur-processing-1")

-- Balance/fix rocket fuel
OV.add_prereq("rocket-fuel", "angels-nitrogen-processing-4")
OV.add_unlock("rocket-fuel", "rocket-oxidizer-capsule")
OV.add_unlock("rocket-fuel", "rocket-fuel-capsule")
OV.set_science_pack(
  "rocket-fuel",
  {
    "automation-science-pack",
    "logistic-science-pack",
    "chemical-science-pack",
    "utility-science-pack"
  },
  1
)
OV.set_research_difficulty("rocket-fuel", 15, 50)

-- Update kovarex for nuclear fuel separation
OV.remove_prereq("kovarex-enrichment-process", "rocket-fuel")
OV.remove_unlock("kovarex-enrichment-process", "nuclear-fuel")

-------------------------------------------------------------------------------
-- EXPLOSIVES -----------------------------------------------------------------
-------------------------------------------------------------------------------
data.raw["recipe"]["explosives"].subgroup = "petrochem-solids-2"
data.raw["recipe"]["explosives"].order = "a[explosives]-a"