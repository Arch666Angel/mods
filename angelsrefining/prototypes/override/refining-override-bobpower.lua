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
        name = "steam-engine-3",
        ingredients = {
          { name = "brass-gear-wheel", amount = "cobalt-steel-gear-wheel" },
          { name = "steel-bearing", amount = "cobalt-steel-bearing" },
        },
      },
      {
        name = "fluid-generator-2",
        ingredients = {
          { name = "brass-gear-wheel", amount = "cobalt-steel-gear-wheel" },
          { name = "steel-bearing", amount = "cobalt-steel-bearing" },
        },
      },
    })
    OV.remove_prereq({ "bob-steam-engine-3", "fluid-generator-2" }, "cobalt-processing")
  end
end
