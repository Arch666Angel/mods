angelsmods = angelsmods or {}
angelsmods.addons = angelsmods.addons or {}
angelsmods.addons.mobility = angelsmods.addons.mobility or {}
angelsmods.addons.mobility.number_tint = {r = 0.95, g = 0.65, b = 0.25, a = 1}

angelsmods.addons.mobility.crawlertrain = angelsmods.addons.mobility.crawlertrain or {}
angelsmods.addons.mobility.crawlertrain.enabled = settings.startup["angels-crawlertrain-tier-amount"].value >= 1 and true or false
angelsmods.addons.mobility.crawlertrain.tier_amount = settings.startup["angels-crawlertrain-tier-amount"].value
angelsmods.addons.mobility.crawlertrain.number_tint = {r = 0.95, g = 0.65, b = 0.25, a = 1}

angelsmods.addons.mobility.petrotrain = angelsmods.addons.mobility.petrotrain or {}
angelsmods.addons.mobility.petrotrain.enabled = settings.startup["angels-petrotrain-tier-amount"].value >= 1 and true or false
angelsmods.addons.mobility.petrotrain.tier_amount = settings.startup["angels-petrotrain-tier-amount"].value
angelsmods.addons.mobility.petrotrain.number_tint = {r = 0.92, g = 0.07, b = 0, a = 0.5}

angelsmods.addons.mobility.smeltingtrain = angelsmods.addons.mobility.smeltingtrain or {}
angelsmods.addons.mobility.smeltingtrain.enabled = settings.startup["angels-smeltingtrain-tier-amount"].value >= 1 and true or false
angelsmods.addons.mobility.smeltingtrain.tier_amount = settings.startup["angels-smeltingtrain-tier-amount"].value
angelsmods.addons.mobility.smeltingtrain.number_tint = {r = 1, g = 0.38, b = 0, a = 1}



require("prototypes.categories")
--CRAWLER
require("prototypes.entities.crawler-locomotive")
require("prototypes.entities.crawler-locomotive-wagon")
require("prototypes.entities.crawler-wagon")
require("prototypes.entities.crawler-bot-wagon")
--PETRO
require("prototypes.entities.petro-locomotive")
require("prototypes.entities.petro-tank1")
require("prototypes.entities.petro-tank2")
--SMELTING
require("prototypes.entities.smelting-locomotive")
require("prototypes.entities.smelting-locomotive-tender")
require("prototypes.entities.smelting-wagon")

require("prototypes.recipes.recipes")

--CRAWLER
require("prototypes.technology.crawler-technology")
--PETRO
require("prototypes.technology.petro-technology")
--SMELTING
require("prototypes.technology.smelting-technology")
