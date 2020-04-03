angelsmods = angelsmods or {}
angelsmods.addons = angelsmods.addons or {}
angelsmods.addons.petrotrain = angelsmods.addons.petrotrain or {}
angelsmods.addons.petrotrain.tier_amount = settings.startup["angels-petrotrain-tier-amount"].value
angelsmods.addons.petrotrain.enable_tiers = angelsmods.addons.petrotrain.tier_amount > 1 and true or false
angelsmods.addons.petrotrain.number_tint = {r = 0.92, g = 0.07, b = 0, a = 0.5}

tech_unlocks = {}

require("prototypes.category")
require("prototypes.entities.petrotrain")
require("prototypes.recipes.petrotrain")
require("prototypes.technology.petro-technology")

tech_unlocks = nil
