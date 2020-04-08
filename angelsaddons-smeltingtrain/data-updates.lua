local funcs = require("prototypes/smelting-train-functions")

if angelsmods.industries then
  if angelsmods.industries.components then
    require("prototypes.recipes.smeltingtrain-updates")
  end
  data.raw["item-subgroup"]["angels-smeltingtrain"].group = "angels-vehicles"
  data.raw["item-subgroup"]["angels-smeltingtrain"].order = "bc[smelting-train]"

  funcs.update_equipment_grid(
    "angels-smelting-locomotive",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-smelting-locomotive-tender",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-smelting-wagon",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement",

      "angels-repair"
    },
    "angels-void"
  )
end

if mods['bobvehicleequipment'] then
  funcs.update_equipment_grid(
    "angels-smelting-locomotive",
    {
      "train",
      "vehicle",
      "locomotive"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-smelting-locomotive-tender",
    {
      "train",
      "vehicle",
      "locomotive"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-smelting-wagon",
    {
      "train",
      "vehicle",
    },
    "angels-void"
  )
end