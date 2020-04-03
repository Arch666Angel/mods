local __DebugAdapter = mods["debugadapter"] and require("__debugadapter__/debugadapter.lua")

angelsmods = angelsmods or {}
angelsmods.addons = angelsmods.addons or {}
angelsmods.addons.smeltingtrain = angelsmods.addons.smeltingtrain or {}
angelsmods.addons.smeltingtrain.tier_amount = settings.startup["angels-smeltingtrain-tier-amount"].value
angelsmods.addons.smeltingtrain.enable_tiers = angelsmods.addons.smeltingtrain.tier_amount > 1 and true or false
angelsmods.addons.smeltingtrain.number_tint = {r = 1, g = 0.38, b = 0, a = 1}

tech_unlocks = {}

require("prototypes.smelting-category")
require("prototypes.entities.smelting-train")
require("prototypes.recipes.smelting-recipe")
require("prototypes.technology.smelting-technology")

tech_unlocks = nil
