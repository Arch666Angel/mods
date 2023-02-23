local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- BASE OVERRIDES -------------------------------------------------------------
-------------------------------------------------------------------------------
OV.add_prereq("concrete", "ore-crushing")

OV.add_unlock("ore-crushing", "copper-plate")
OV.add_unlock("ore-crushing", "iron-plate")

OV.patch_recipes({
  {
    name = "iron-plate",
    enabled = false,
  },
  {
    name = "copper-plate",
    enabled = false,
  },
})

OV.add_prereq("uranium-processing", "ore-leaching")

-- Fix tips and tricks simulations missing "iron-ore" entity
for _, tnt_name in pairs({ "low-power", "entity-transfers" }) do
  local tnt = data.raw["tips-and-tricks-item"][tnt_name]
  if tnt then
    if tnt.simulation and tnt.simulation.init then
      tnt.simulation.init, _ = string.gsub(tnt.simulation.init, "iron%-ore", "angels-ore1")
    end
  end
end
