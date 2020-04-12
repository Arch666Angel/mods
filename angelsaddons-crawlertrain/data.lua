angelsmods = angelsmods or {}
angelsmods.addons = angelsmods.addons or {}
angelsmods.addons.crawlertrain = angelsmods.addons.crawlertrain or {}
angelsmods.addons.crawlertrain.tier_amount = settings.startup["angels-crawlertrain-tier-amount"].value
angelsmods.addons.crawlertrain.enable_tiers = angelsmods.addons.crawlertrain.tier_amount > 1
angelsmods.addons.crawlertrain.number_tint = {r = 0.95, g = 0.65, b = 0.25, a = 1}

tech_unlocks = {}

require("prototypes.category")

require("prototypes.entities.crawler-locomotive")
require("prototypes.entities.crawler-locomotive-wagon")
require("prototypes.entities.crawler-wagon")
require("prototypes.entities.crawler-bot-wagon")

require("prototypes.recipes.crawler-recipe")

require("prototypes.technology.crawler-technology")

tech_unlocks = nil
