local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- ADVANCED POWER -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobpower"] and mods["bobplates"] then
  --update to blue science level
  OV.set_science_pack("bob-steam-turbine-1","chemical-science-pack",1)
  OV.patch_recipes(
    {
      {
        name = "steam-engine-3",
        ingredients = {
          { name = "brass-gear-wheel", amount = "cobalt-steel-gear-wheel"},
          { name = "steel-bearing", amount = "cobalt-steel-bearing"}
        }
      },
      {
        name = "fluid-generator-2",
        ingredients = {
          { name = "brass-gear-wheel", amount = "cobalt-steel-gear-wheel"},
          { name = "steel-bearing", amount = "cobalt-steel-bearing"}
        }
      },
    }
  )
  OV.remove_prereq({"bob-steam-engine-3","fluid-generator-2"},"cobalt-processing")
  --OV.add_prereq({""},"zinc-processing")
end