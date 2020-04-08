local funcs = require("prototypes/crawler-train-functions")

if angelsmods.industries then
  if angelsmods.industries.components then
  -- Todo: implement proper components for the train
  -- require("prototypes.recipes.crawlertrain-updates")
  end

  -- Add data core replace?
  if angelsmods.industries.overhaul and angelsmods.industries.tech then
  -- OV.set_science_pack("angels-crawler-train", "datacore-logistic-1", 2)
  end
  data.raw["item-subgroup"]["angels-vehicle-train-crawler"].group = "angels-vehicles"
  data.raw["item-subgroup"]["angels-vehicle-train-crawler"].order = "bc[crawler-train]"

  funcs.update_equipment_grid(
    "angels-crawler-locomotive",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-crawler-loco-wagon",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-crawler-wagon",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement",

      "angels-repair"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-crawler-bot-wagon",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement",

      "angels-repair",
      "angels-construction"
    },
    "angels-void"
  )
end

if mods["bobvehicleequipment"] then
  funcs.update_equipment_grid(
    "angels-crawler-locomotive",
    {
      "train",
      "vehicle",
      "locomotive"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-crawler-loco-wagon",
    {
      "train",
      "vehicle",
      "locomotive"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-crawler-wagon",
    {
      "train",
      "vehicle"
    },
    "angels-void"
  )
  funcs.update_equipment_grid(
    "angels-crawler-bot-wagon",
    {
      "train",
      "vehicle",
      "cargo-wagon"
    },
    "angels-void"
  )
end
