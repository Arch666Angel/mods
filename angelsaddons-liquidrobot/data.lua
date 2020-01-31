if mods["debugadapter"] then
  require("__debugadapter__/debugadapter.lua")
end

if not angelsmods then
  angelsmods = {}
end

if not angelsmods.addons then
  angelsmods.addons = {}
end

if not angelsmods.addons.liquidrobot then
  angelsmods.addons.liquidrobot = {}
end

require("prototypes.liquidbot-category")
require("prototypes.entities.liquid-robot")
require("prototypes.items.liquid-robot")
require("prototypes.recipes.liquid-robot-recipes")
require("prototypes.technology.liquid-robot-technology")
