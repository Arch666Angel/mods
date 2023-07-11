local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

--PREPARATIONS
OV.remove_output("gas-sulfur-dioxide-calcium-sulfate", "angels-void")

--OVERRIDE FOR BASE
require("prototypes.override.base-game")

--OVERRIDE FOR ANGELS
require("prototypes.override.angelsrefining")
require("prototypes.override.angelspetrochem")
require("prototypes.override.angelssmelting")
require("prototypes.override.angelsindustries")

--OVERRIDE FOR BOBS
require("prototypes.override.bob")
require("prototypes.override.bobplates")
require("prototypes.override.bobassembly")
require("prototypes.override.bobgreenhouse")
require("prototypes.override.boblogistics")
require("prototypes.override.bobrevamp")
require("prototypes.override.bobwarfare")
require("prototypes.override.bobclasses")
require("prototypes.override.bobelectronics")

--UPDATE ENTITY RECIPES
require("prototypes.recipes.petrochem-entity-angels")

OV.execute()

--ENABLE PRODUCTIVITY
angelsmods.functions.allow_productivity("liquid-plastic-1")
angelsmods.functions.allow_productivity("liquid-plastic-2")
angelsmods.functions.allow_productivity("liquid-plastic-3")

angelsmods.functions.allow_productivity("liquid-resin-1")
angelsmods.functions.allow_productivity("liquid-resin-2")
angelsmods.functions.allow_productivity("liquid-resin-3")

angelsmods.functions.allow_productivity("liquid-rubber-1")
