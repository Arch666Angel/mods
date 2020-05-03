local funcs = require("prototypes/crawler-train-functions")

require("prototypes.recipes.crawler-recipe-updates")
require("prototypes.technology.crawler-technology-components-updates")
require("prototypes.technology.crawler-technology-tech-updates")

if angelsmods.industries then
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
