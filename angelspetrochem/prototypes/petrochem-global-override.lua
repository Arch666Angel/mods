local OV = angelsmods.functions.OV

--OVERRIDE FOR BASE
require("prototypes.global-override.base-game")

--RECIPE TINTS
for _, recipe in pairs(data.raw.recipe) do
  if (not recipe.crafting_machine_tint) and
     (recipe.category == "liquifying" or
      recipe.category == "chemistry" or
      recipe.category == "advanced-chemistry")
  then
    log(string.format("Recipe '%s' does not have a crafting_machine_tint set!", recipe.name))
    recipe.crafting_machine_tint = {
      primary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255},
      secondary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255},
      tertiary = {r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255}
    }
  end
end

--CONFIG OPTIONS OVERRIDE FOR REFINING
require("prototypes.global-override.angelsrefining")

--OVERRIDE FOR BOBs
require("prototypes.global-override.bobplates")
require("prototypes.global-override.bobrevamp")
require("prototypes.global-override.bobwarfare")
require("prototypes.global-override.bobassembly")
require("prototypes.global-override.bobtech")
require("prototypes.global-override.bobgreenhouse")
require("prototypes.global-override.boblogistics")

--URANIUM POWER OVERRIDE
if data.raw["item"]["fluorite"] then
  OV.global_replace_item("fluorite", "fluorite-ore")
end
