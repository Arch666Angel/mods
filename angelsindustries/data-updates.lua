local OV = angelsmods.functions.OV

require("prototypes.angels-industries-override")
require("prototypes.angels-industries-ordening")

OV.execute()

local patched_recipes = {
  "advanced-circuit",
  "angels-servo-motor-5",
  "angels-water-thermal-lithia",
  "battery",
  "battery-6",
  "block-energy-5",
  "block-enhancement-5",
  "burner-lab",
  "electric-engine-unit",
  "electronic-circuit",
  "engine-unit",
  "iron-gear-wheel",
  "lab",
  "lab-2",
  "lithium",
  "lithium-chloride",
  "lithium-cobalt-oxide",
  "lithium-water-electrolysis",
  "personal-roboport-mk2-equipment",
  "power-armor-mk2",
  "processing-unit",
  "silver-oxide",
  "steam-science-pack",
  "superior-circuit-board",
}
angelsmods.functions.patch_recycling_recipes(patched_recipes)