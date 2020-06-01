local funcs = require("prototypes/crawler-train-functions")

require("prototypes.recipes.crawler-recipe-updates")
require("prototypes.technology.crawler-technology-components-updates")
require("prototypes.technology.crawler-technology-tech-updates")

-- base game
funcs.update_equipment("energy-shield-equipment", "energy-shield-equipment", "angels-basegame-defense")
funcs.update_equipment("energy-shield-equipment", "energy-shield-mk2-equipment", "angels-basegame-defense")
funcs.update_equipment("battery-equipment", "battery-equipment", "angels-basegame-energy")
funcs.update_equipment("battery-equipment", "battery-mk2-equipment", "angels-basegame-energy")
funcs.update_equipment("solar-panel-equipment", "solar-panel-equipment", "angels-basegame-energy")
funcs.update_equipment("generator-equipment", "fusion-reactor-equipment", "angels-basegame-energy")
funcs.update_equipment("active-defense-equipment", "personal-laser-defense-equipment", "angels-basegame-attack")
funcs.update_equipment("active-defense-equipment", "discharge-defense-equipment", "angels-basegame-attack")
--funcs.update_equipment("belt-immunity-equipment", "belt-immunity-equipment", "angels-basegame-movement")
funcs.update_equipment("roboport-equipment", "personal-roboport-equipment", "angels-basegame-construction")
funcs.update_equipment("roboport-equipment", "personal-roboport-mk2-equipment", "angels-basegame-construction")
funcs.update_equipment("movement-bonus-equipment", "exoskeleton-equipment", "angels-basegame-movement")

funcs.update_equipment_grid(
  "angels-crawler-locomotive",
  {
    "angels-basegame-energy",
    "angels-basegame-defense",
    "angels-basegame-attack",
    "angels-basegame-movement"
  },
  "angels-void"
)
funcs.update_equipment_grid(
  "angels-crawler-loco-wagon",
  {
    "angels-basegame-energy",
    "angels-basegame-defense",
    "angels-basegame-attack",
    "angels-basegame-movement"
  },
  "angels-void"
)
funcs.update_equipment_grid(
  "angels-crawler-wagon",
  {
    "angels-basegame-energy",
    "angels-basegame-defense",
    "angels-basegame-attack"
  },
  "angels-void"
)
funcs.update_equipment_grid(
  "angels-crawler-bot-wagon",
  {
    "angels-basegame-energy",
    "angels-basegame-defense",
    "angels-basegame-attack",
    "angels-basegame-construction"
  },
  "angels-void"
)

if mods["angelsindustries"] then
  data.raw["item-subgroup"]["angels-vehicle-train-crawler"].group = "angels-vehicles"
  data.raw["item-subgroup"]["angels-vehicle-train-crawler"].order = "bc[crawler-train]"

  funcs.update_equipment_grid(
    "angels-crawler-locomotive",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement"
    }
  )
  funcs.update_equipment_grid(
    "angels-crawler-loco-wagon",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement"
    }
  )
  funcs.update_equipment_grid(
    "angels-crawler-wagon",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement",
      "angels-repair"
    }
  )
  funcs.update_equipment_grid(
    "angels-crawler-bot-wagon",
    {
      "angels-energy",
      "angels-heavy-defense",
      "angels-movement",
      "angels-repair",
      "angels-construction"
    }
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
    {
      "angels-basegame-energy",
      "angels-basegame-defense",
      "angels-basegame-attack",
      "angels-basegame-movement"
    }
  )
  funcs.update_equipment_grid(
    "angels-crawler-loco-wagon",
    {
      "train",
      "vehicle",
      "locomotive"
    },
    {
      "angels-basegame-energy",
      "angels-basegame-defense",
      "angels-basegame-attack",
      "angels-basegame-movement"
    }
  )
  funcs.update_equipment_grid(
    "angels-crawler-wagon",
    {
      "train",
      "vehicle"
    },
    {
      "angels-basegame-energy",
      "angels-basegame-defense",
      "angels-basegame-attack"
    }
  )
  funcs.update_equipment_grid(
    "angels-crawler-bot-wagon",
    {
      "train",
      "vehicle",
      "cargo-wagon"
    },
    {
      "angels-basegame-energy",
      "angels-basegame-defense",
      "angels-basegame-attack",
      "angels-basegame-construction"
    }
  )
end
