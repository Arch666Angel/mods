local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- ADVANCED POWER -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobpower"] then
  if mods["bobplates"] then
    --update to blue science level
    OV.patch_recipes({
      {
        name = "bob-steam-engine-3",
        ingredients = {
          { name = "bob-brass-gear-wheel", amount = "bob-cobalt-steel-gear-wheel" },
          { name = "bob-steel-bearing", amount = "bob-cobalt-steel-bearing" },
        },
      },
      {
        name = "bob-fluid-generator-2",
        ingredients = {
          { name = "bob-brass-gear-wheel", amount = "bob-cobalt-steel-gear-wheel" },
          { name = "bob-steel-bearing", amount = "bob-cobalt-steel-bearing" },
        },
      },
    })
    OV.remove_prereq({ "bob-steam-engine-3", "bob-fluid-generator-2" }, "bob-cobalt-processing")
  end
end
