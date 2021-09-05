local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- ADVANCED POWER -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobpower"] then
  if settings.startup["bobmods-power-steam"].value == true then
    if angelsmods.functions.is_special_vanilla() then
      OV.add_prereq("bob-boiler-3", "logistic-science-pack")
      OV.add_prereq("bob-boiler-4", "chemical-science-pack")
      OV.add_prereq("bob-boiler-5", "production-science-pack")
      OV.add_prereq("bob-oil-boiler-2", "chemical-science-pack")
      OV.add_prereq("bob-oil-boiler-3", "production-science-pack")
      OV.add_prereq("bob-oil-boiler-4", "utility-science-pack")
      OV.add_prereq("bob-steam-engine-3", "chemical-science-pack")
      OV.add_prereq("bob-steam-engine-4", "production-science-pack")
      OV.add_prereq("bob-steam-engine-5", "utility-science-pack")
      OV.add_prereq("bob-heat-pipe-3", "production-science-pack")
    end
  end

  if settings.startup["bobmods-power-accumulators"].value == true then
    if angelsmods.functions.is_special_vanilla() then
      OV.add_prereq("bob-electric-energy-accumulators-3", "chemical-science-pack")
      OV.add_prereq("bob-electric-energy-accumulators-4", "production-science-pack")
    end
  end

  if settings.startup["bobmods-power-poles"].value == true then
    if angelsmods.functions.is_special_vanilla() then
      OV.add_prereq("electric-pole-3", "chemical-science-pack")
    end

    OV.add_prereq("electric-substation-4", "production-science-pack")
  end

  if mods["bobplates"] then
    --update to blue science level
    OV.set_science_pack("bob-steam-turbine-1","chemical-science-pack",1)
    --make HX-1 the same tier
    OV.set_science_pack("bob-heat-exchanger-1","chemical-science-pack",1)
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
end