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

  angelsmods.functions.add_crafting_category("assembling-machine", "advanced-chemical-plant", "liquifying")
  angelsmods.functions.add_crafting_category("assembling-machine", "advanced-chemical-plant-2", "liquifying")

  OV.patch_recipes(
    {
      {name = "carbon-separation-1", category = "liquifying"},
      {name = "carbon-separation-2", category = "liquifying"},
      {name = "liquifier", subgroup = "petrochem-buildings-electrolyser", order = "b[liquifier]-a"},
      {name = "liquifier-2", subgroup = "petrochem-buildings-electrolyser", order = "b[liquifier]-b"},
      {name = "liquifier-3", subgroup = "petrochem-buildings-electrolyser", order = "b[liquifier]-c"},
      {name = "liquifier-4", subgroup = "petrochem-buildings-electrolyser", order = "b[liquifier]-d"},
      {name = "angelsore8-dust", ingredients = {{name = "solid-sodium-hydroxide", 2}}},
      {name = "angelsore9-dust", ingredients = {{name = "solid-sodium-hydroxide", 2}}},
      {
        name = "angelsore8-anode-sludge",
        ingredients = {{name = "liquid-ferric-chloride-solution", type = "fluid", amount = 10}}
      },
      {
        name = "angelsore9-anode-sludge",
        ingredients = {{name = "liquid-cupric-chloride-solution", type = "fluid", amount = 10}}
      }
    }
  )

  OV.add_prereq("water-treatment-2", "basic-chemistry-3")
  OV.remove_unlock("slag-processing-1", "liquifier")
  OV.add_unlock("basic-chemistry", "liquifier")
  OV.add_prereq("slag-processing-1", "angels-sulfur-processing-1")
  OV.add_prereq("slag-processing-1", "water-treatment-2")
  OV.remove_prereq("slag-processing-1", "ore-crushing")
  OV.add_prereq("advanced-ore-refining-1", "ore-crushing")
  OV.remove_unlock("slag-processing-2", "liquifier-2")
  OV.add_prereq("slag-processing-2", "ore-leaching")
  OV.add_unlock("angels-advanced-chemistry-1", "liquifier-2")
  OV.add_unlock("angels-advanced-chemistry-2", "liquifier-3")
  OV.add_unlock("angels-advanced-chemistry-3", "liquifier-4")
end

-------------------------------------------------------------------------------
-- REGULAR REFINING -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.refining then
  OV.remove_prereq("ore-floatation", "automation-2")
  OV.remove_prereq("ore-floatation", "water-treatment")
  --OV.add_prereq("ore-floatation", "basic-chemistry-3")
end

-------------------------------------------------------------------------------
-- FERROUS/CUPRIC REFINING ----------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.refining then
  if mods["bobplates"] then
    OV.remove_prereq("lubricant", "oil-processing")
  else
    OV.remove_prereq("lubricant", "advanced-oil-processing")
  end
  for _, tech_name in pairs({ "lubricant", "ore-powderizer" }) do
    local ingredients = ((data.raw.technology[tech_name] or {}).unit or {}).ingredients or {}
    for index, ingredient in pairs(ingredients) do
      if ingredient[1] == "chemical-science-pack" or ingredient.name == "chemical-science-pack" then
        table.remove(ingredients, index)
        break
      end
    end
  end
  OV.add_prereq("electric-engine", "advanced-oil-processing")

  move_item("liquid-ferric-chloride-solution", "ore-processing-fluid", "a[ferrous]-e", "fluid")
  OV.add_unlock("chlorine-processing-1", "liquid-ferric-chloride-solution")

  move_item("liquid-cupric-chloride-solution", "ore-processing-fluid", "b[cupric]-e", "fluid")
  OV.add_unlock("chlorine-processing-1", "liquid-cupric-chloride-solution")
end
