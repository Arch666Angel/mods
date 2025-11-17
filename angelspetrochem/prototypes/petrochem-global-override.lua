local OV = angelsmods.functions.OV
local unit_test_functions = mods["angelsdev-unit-test"] and require("__angelsdev-unit-test__/unit-test-functions")
  or nil

--OVERRIDE FOR BASE
require("prototypes.global-override.base-game")

--CONFIG OPTIONS OVERRIDE FOR REFINING
require("prototypes.global-override.angelsrefining")

--OVERRIDE FOR BOBs
require("prototypes.global-override.bobplates")
require("prototypes.global-override.bobrevamp")
require("prototypes.global-override.bobwarfare")
require("prototypes.global-override.bobgreenhouse")
require("prototypes.global-override.boblogistics")

--URANIUM POWER OVERRIDE
if data.raw["item"]["fluorite"] then
  OV.global_replace_item("fluorite", "angels-fluorite-ore")
end

OV.execute()

--RECIPE TINTS
local recipe_categories = -- a list of all crafting categories for which (petrochem) machines supporting recipe tints
  {
    ["angels-liquifying"] = true,
    ["chemistry"] = true,
    ["angels-advanced-chemistry"] = true,
  }
for _, recipe in pairs(data.raw.recipe) do
  if
    not recipe.crafting_machine_tint -- only recipes which do not have a crafting machine tint set
    and recipe_categories[recipe.category] -- only recipes that can be crafting in machines that support recipe tints
    and recipe.hidden ~= true -- only recipes which are not hidden (explicitly set to false, or default=nil)
  then
    if unit_test_functions then -- only log when unit testing is in progress
      unit_test_functions.print_msg(
        string.format("Recipe '%s' does not have a crafting_machine_tint set!", recipe.name)
      )
    end
    recipe.crafting_machine_tint = {
      primary = { r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255 },
      secondary = { r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255 },
      tertiary = { r = 167 / 255, g = 75 / 255, b = 5 / 255, a = 0 / 255 },
    }
  end
end
