angelsmods = angelsmods or {}
angelsmods.addons = angelsmods.addons or {}
angelsmods.addons.smeltingtrain = angelsmods.addons.smeltingtrain or {}
angelsmods.addons.smeltingtrain.tier_amount = settings.startup["angels-smeltingtrain-tier-amount"].value
angelsmods.addons.smeltingtrain.enable_tiers = angelsmods.addons.smeltingtrain.tier_amount > 1
angelsmods.addons.smeltingtrain.number_tint = {r = 1, g = 0.38, b = 0, a = 1}

tech_unlocks = {}

require("prototypes.smelting-category")

require("prototypes.entities.smelting-locomotive")
require("prototypes.entities.smelting-locomotive-tender")
require("prototypes.entities.smelting-wagon")

require("prototypes.recipes.smelting-recipe")

require("prototypes.technology.smelting-technology")

tech_unlocks = nil
