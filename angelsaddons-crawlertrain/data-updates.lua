local funcs = require("prototypes/crawler-train-functions")

if angelsmods.industries then
  if angelsmods.industries.components then
    require("prototypes.recipes.crawler-recipe-updates")
    require("prototypes.technology.crawler-technology-components-updates")
  end

  if angelsmods.industries.overhaul and angelsmods.industries.tech then
    require("prototypes.technology.crawler-technology-tech-updates")
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

if mods.bobvehicleequipment then
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
