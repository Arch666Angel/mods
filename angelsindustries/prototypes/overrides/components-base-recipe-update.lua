local OV = angelsmods.functions.OV
if angelsmods.industries.components then
  -- submachine gun
  OV.remove_unlock("military", "submachine-gun")
  OV.add_unlock("angels-components-weapons-basic", "submachine-gun")
  OV.execute()

  --battery usage
  --vanilla replacements
  replace_recipe_ing("accumulator","battery-1","battery-2")
  OV.remove_prereq("electric-energy-accumulators", "battery")
  OV.add_prereq("electric-energy-accumulators", "angels-components-batteries-2")

  replace_recipe_ing("flying-robot-frame","battery","battery-4")
  OV.remove_prereq("robotics", "battery")
  OV.add_prereq("robotics", "angels-components-batteries-4")

  replace_recipe_ing("battery-equipment","battery-1","battery-3")
  OV.remove_prereq("battery-equipment", "battery")
  OV.add_prereq("battery-equipment", "angels-components-batteries-3")
  replace_recipe_ing("battery-mk2-equipment","battery-equipment","battery-4")
  OV.add_prereq("battery-mk2-equipment", "angels-components-batteries-4")

  replace_recipe_ing("personal-roboport-equipment","battery-1","battery-4")
  --OV.add_prereq("personal-roboport-equipment", "angels-components-batteries-4")
  replace_recipe_ing("personal-roboport-mk2-equipment","battery-1","battery-5")
  OV.patch_recipes(
    {
      {
        name = "personal-roboport-mk2-equipment",
        ingredients = {
          {type = "item", name = "battery-5", amount = 25}
        }
      }
    }
  )
  OV.add_prereq("personal-roboport-mk2-equipment", "angels-components-batteries-5")

  OV.patch_recipes(
    {
      {
        name = "rocket-control-unit",
        ingredients = {
          {type = "item", name = "battery-6", amount = 5}
        }
      }
    }
  )
  OV.add_prereq("rocket-control-unit", "angels-components-batteries-6")
  OV.execute()
end