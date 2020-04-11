angelsmods = angelsmods or {}
angelsmods.addons = angelsmods.addons or {}
angelsmods.addons.petrotrain = angelsmods.addons.petrotrain or {}
angelsmods.addons.petrotrain.tier_amount = settings.startup["angels-petrotrain-tier-amount"].value
angelsmods.addons.petrotrain.enable_tiers = angelsmods.addons.petrotrain.tier_amount > 1
angelsmods.addons.petrotrain.number_tint = {r = 0.92, g = 0.07, b = 0, a = 0.5}

tech_unlocks = {}

require("prototypes.petro-category")

require("prototypes.entities.petro-locomotive")
require("prototypes.entities.petro-tank1")
require("prototypes.entities.petro-tank2")

require("prototypes.recipes.petro-recipe")

require("prototypes.technology.petro-technology")

tech_unlocks = nil
