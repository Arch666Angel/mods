local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- BASE OVERRIDES -------------------------------------------------------------
-------------------------------------------------------------------------------
OV.add_prereq("concrete", "ore-crushing")


OV.add_unlock("ore-crushing", "copper-plate")
OV.add_unlock("ore-crushing", "iron-plate")

OV.patch_recipes(
  {
    {
      name = "iron-plate",
      enabled = false
    },
    {
      name = "copper-plate",
      enabled = false
    },
  }
)

OV.add_prereq("uranium-processing", "ore-leaching")
