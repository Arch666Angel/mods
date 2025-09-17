local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- LIQUIFIERS -----------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.refining then
  move_item("angels-liquifier", "angels-petrochem-buildings-electrolyser", "c[liquifier]-a")
  data.raw["item"]["angels-liquifier"].icons[3].tint = angelsmods.petrochem.number_tint
  data.raw["assembling-machine"]["angels-liquifier"].icons[3].tint = angelsmods.petrochem.number_tint

  move_item("angels-liquifier-2", "angels-petrochem-buildings-electrolyser", "c[liquifier]-b")
  data.raw["item"]["angels-liquifier-2"].icons[3].tint = angelsmods.petrochem.number_tint
  data.raw["assembling-machine"]["angels-liquifier-2"].icons[3].tint = angelsmods.petrochem.number_tint

  move_item("angels-liquifier-3", "angels-petrochem-buildings-electrolyser", "c[liquifier]-c")
  data.raw["item"]["angels-liquifier-3"].icons[3].tint = angelsmods.petrochem.number_tint
  data.raw["assembling-machine"]["angels-liquifier-3"].icons[3].tint = angelsmods.petrochem.number_tint

  move_item("angels-liquifier-4", "angels-petrochem-buildings-electrolyser", "c[liquifier]-d")
  data.raw["item"]["angels-liquifier-4"].icons[3].tint = angelsmods.petrochem.number_tint
  data.raw["assembling-machine"]["angels-liquifier-4"].icons[3].tint = angelsmods.petrochem.number_tint

  OV.patch_recipes({
    { name = "angels-gas-carbon-monoxide", category = "angels-liquifying" },
    { name = "angels-gas-carbon-dioxide", category = "angels-liquifying" },
    { name = "angels-liquifier", subgroup = "angels-petrochem-buildings-electrolyser", order = "b[liquifier]-a" },
    { name = "angels-liquifier-2", subgroup = "angels-petrochem-buildings-electrolyser", order = "b[liquifier]-b" },
    { name = "angels-liquifier-3", subgroup = "angels-petrochem-buildings-electrolyser", order = "b[liquifier]-c" },
    { name = "angels-liquifier-4", subgroup = "angels-petrochem-buildings-electrolyser", order = "b[liquifier]-d" },
    { name = "angels-ore8-dust", ingredients = { { name = "angels-solid-sodium-hydroxide", 2 } } },
    { name = "angels-ore9-dust", ingredients = { { name = "angels-solid-sodium-hydroxide", 2 } } },
    {
      name = "angels-ore8-anode-sludge",
      ingredients = { { name = "angels-liquid-ferric-chloride-solution", type = "fluid", amount = 10 } },
    },
    {
      name = "angels-ore9-anode-sludge",
      ingredients = { { name = "angels-liquid-cupric-chloride-solution", type = "fluid", amount = 10 } },
    },
  })

  OV.remove_unlock("angels-water-treatment", "angels-liquifier")
  OV.remove_prereq("angels-slag-processing-1", "angels-water-treatment")
  OV.remove_prereq("angels-slag-processing-1", "angels-ore-crushing")
  OV.add_prereq("angels-advanced-ore-refining-1", "angels-ore-crushing")
  OV.remove_unlock("angels-slag-processing-1", "angels-liquifier-2")
  OV.remove_unlock("angels-slag-processing-2", "angels-liquifier-3")
  OV.remove_unlock("angels-slag-processing-3", "angels-liquifier-4")
  OV.add_prereq("angels-ore-advanced-floatation", "angels-chlorine-processing-1")
end

-------------------------------------------------------------------------------
-- REGULAR REFINING -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.refining then
  OV.remove_prereq("angels-ore-crushing", "automation")
  OV.add_prereq("angels-ore-crushing", "angels-basic-chemistry")
  OV.remove_prereq("angels-ore-floatation", "automation-2")
  OV.remove_prereq("angels-ore-floatation", "angels-water-treatment")
  OV.add_prereq("angels-ore-floatation", "angels-basic-chemistry-3")
  OV.remove_prereq("angels-water-treatment-2", "angels-slag-processing-1")
  OV.add_prereq("angels-water-treatment-2", "angels-coal-processing-2")
end

-------------------------------------------------------------------------------
-- FERROUS/CUPRIC REFINING ----------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.refining then
  -- move lubricant to green science in any configuration
  if mods["bobplates"] then
    OV.remove_prereq("lubricant", "oil-processing")
  else
    OV.remove_prereq("lubricant", "advanced-oil-processing")
  end
  OV.remove_science_pack("lubricant", "chemical-science-pack")

  -- handle electric engine since lubricant moved...
  if mods["boblogistics"] then
    -- robotics required at green science
  else
    -- robotics required at blue science
    OV.set_science_pack("electric-engine", "chemical-science-pack")
    OV.add_prereq("electric-engine", "chemical-science-pack")
  end

  -- update lubricant dependencies in green science
  OV.remove_science_pack("angels-ore-powderizer", "chemical-science-pack")
  OV.remove_prereq("angels-ore-powderizer", "chemical-science-pack")

  move_item("angels-liquid-ferric-chloride-solution", "angels-ore-processing-fluid", "a[ferrous]-e", "fluid")
  OV.add_unlock("angels-chlorine-processing-1", "angels-liquid-ferric-chloride-solution")

  move_item("angels-liquid-cupric-chloride-solution", "angels-ore-processing-fluid", "b[cupric]-e", "fluid")
  OV.add_unlock("angels-chlorine-processing-1", "angels-liquid-cupric-chloride-solution")
end
