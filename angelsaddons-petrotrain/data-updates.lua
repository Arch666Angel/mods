local funcs = require("prototypes/petro-train-functions")

if angelsmods.petrochem then
  local OV = angelsmods.functions.OV
  for i = 1, angelsmods.addons.petrotrain.tier_amount, 1 do
    local tank1 = i == 1 and "petro-tank1" or "petro-tank1-" .. i
    local tank2 = i == 1 and "petro-tank2" or "petro-tank2-" .. i
    OV.modify_input(tank1, {"angels-storage-tank-1", "storage-tank"})
    OV.modify_input(tank2, {"angels-storage-tank-2", "storage-tank"})
  end
end

if angelsmods.industries then
  if angelsmods.industries.components then
    require("prototypes.recipes.petro-recipe-updates")
    require("prototypes.technology.petro-technology-component-updates")
  end

  if angelsmods.industries.overhaul and angelsmods.industries.tech then
    require("prototypes.technology.petro-technology-tech-updates")
  end

  data.raw["item-subgroup"]["angels-petrotrain"].group = "angels-vehicles"
  data.raw["item-subgroup"]["angels-petrotrain"].order = "bd[petro-train]"

  funcs.update_equipment_grid(
    "angels-petro-locomotive",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-petro-tank1",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement",
      "angels-repair"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-petro-tank2",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement",
      "angels-repair"
    },
    "angels-void"
  )
end

if mods.bobvehicleequipment then
  funcs.update_equipment_grid(
    "angels-petro-locomotive",
    {
      "train",
      "vehicle",
      "locomotive"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-petro-tank1",
    {
      "train",
      "vehicle"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-petro-tank2",
    {
      "train",
      "vehicle"
    },
    "angels-void"
  )
end
