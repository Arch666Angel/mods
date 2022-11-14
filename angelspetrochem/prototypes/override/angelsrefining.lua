local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- LIQUIFIERS -----------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.refining then
  move_item("liquifier", "petrochem-buildings-electrolyser", "c[liquifier]-a")
  data.raw["item"]["liquifier"].icons[3].tint = angelsmods.petrochem.number_tint

  move_item("liquifier-2", "petrochem-buildings-electrolyser", "c[liquifier]-b")
  data.raw["item"]["liquifier-2"].icons[3].tint = angelsmods.petrochem.number_tint

  move_item("liquifier-3", "petrochem-buildings-electrolyser", "c[liquifier]-c")
  data.raw["item"]["liquifier-3"].icons[3].tint = angelsmods.petrochem.number_tint

  move_item("liquifier-4", "petrochem-buildings-electrolyser", "c[liquifier]-d")
  data.raw["item"]["liquifier-4"].icons[3].tint = angelsmods.petrochem.number_tint

  OV.patch_recipes({
    { name = "carbon-separation-1", category = "liquifying" },
    { name = "carbon-separation-2", category = "liquifying" },
    { name = "liquifier", subgroup = "petrochem-buildings-electrolyser", order = "b[liquifier]-a" },
    { name = "liquifier-2", subgroup = "petrochem-buildings-electrolyser", order = "b[liquifier]-b" },
    { name = "liquifier-3", subgroup = "petrochem-buildings-electrolyser", order = "b[liquifier]-c" },
    { name = "liquifier-4", subgroup = "petrochem-buildings-electrolyser", order = "b[liquifier]-d" },
    { name = "angelsore8-dust", ingredients = { { name = "solid-sodium-hydroxide", 2 } } },
    { name = "angelsore9-dust", ingredients = { { name = "solid-sodium-hydroxide", 2 } } },
    {
      name = "angelsore8-anode-sludge",
      ingredients = { { name = "liquid-ferric-chloride-solution", type = "fluid", amount = 10 } },
    },
    {
      name = "angelsore9-anode-sludge",
      ingredients = { { name = "liquid-cupric-chloride-solution", type = "fluid", amount = 10 } },
    },
  })

  OV.remove_unlock("slag-processing-1", "liquifier")
  OV.add_unlock("basic-chemistry", "liquifier")
  OV.remove_prereq("slag-processing-1", "water-treatment")
  OV.remove_prereq("slag-processing-1", "ore-crushing")
  OV.add_prereq("advanced-ore-refining-1", "ore-crushing")
  OV.remove_unlock("slag-processing-1", "liquifier-2")
  OV.remove_unlock("slag-processing-2", "liquifier-3")
  OV.remove_unlock("slag-processing-3", "liquifier-4")
  OV.add_prereq("slag-processing-2", "ore-leaching")
  OV.add_unlock("angels-advanced-chemistry-1", "liquifier-2")
  OV.add_unlock("angels-advanced-chemistry-2", "liquifier-3")
  OV.add_unlock("angels-advanced-chemistry-4", "liquifier-4")
  OV.add_prereq("ore-advanced-floatation", "chlorine-processing-1")
end

-------------------------------------------------------------------------------
-- REGULAR REFINING -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.refining then
  OV.remove_prereq("ore-crushing", "automation")
  OV.add_prereq("ore-crushing", "basic-chemistry")
  OV.remove_prereq("ore-floatation", "automation-2")
  OV.remove_prereq("ore-floatation", "water-treatment")
  OV.add_prereq("ore-floatation", "basic-chemistry-3")
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
  OV.remove_science_pack("ore-powderizer", "chemical-science-pack")
  OV.remove_prereq("ore-powderizer", "chemical-science-pack")

  move_item("liquid-ferric-chloride-solution", "ore-processing-fluid", "a[ferrous]-e", "fluid")
  OV.add_unlock("chlorine-processing-1", "liquid-ferric-chloride-solution")

  move_item("liquid-cupric-chloride-solution", "ore-processing-fluid", "b[cupric]-e", "fluid")
  OV.add_unlock("chlorine-processing-1", "liquid-cupric-chloride-solution")
end
