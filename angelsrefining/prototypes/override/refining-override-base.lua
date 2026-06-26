local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- BASE OVERRIDES -------------------------------------------------------------
-------------------------------------------------------------------------------
OV.add_prereq("concrete", "angels-ore-crushing")
OV.add_prereq("uranium-processing", "angels-ore-leaching")
OV.remove_prereq("uranium-processing", "uranium-mining")
OV.add_prereq("uranium-processing", "concrete")
OV.remove_prereq("uranium-mining", "concrete")

-- Fix tips and tricks simulations missing "iron-ore" entity
for _, tnt_name in pairs({ "low-power", "entity-transfers" }) do
  local tnt = data.raw["tips-and-tricks-item"][tnt_name]
  if tnt then
    if tnt.simulation and tnt.simulation.init then
      tnt.simulation.init, _ = string.gsub(tnt.simulation.init, "iron%-ore", "angels-ore1")
    end
  end
end

local tech = data.raw.technology["uranium-mining"]
if data.raw.technology["uranium-mining"] then
  -- Fix uranium mining tech description, referencing uranium ore entity
  tech.localised_description = ""
  tech.localised_name = { "technology-name.mining-with-fluid" }
  tech.icon = nil
  tech.icon_size = nil
  tech.icons = {
    { icon = "__base__/graphics/technology/fluid-handling.png", icon_size = 256 },
    { icon = "__base__/graphics/technology/mining-productivity.png", icon_size = 256 },
  }
end
