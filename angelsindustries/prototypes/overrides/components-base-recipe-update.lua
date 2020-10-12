local OV = angelsmods.functions.OV
if angelsmods.industries.components then
  -- submachine gun
  OV.remove_unlock("military", "submachine-gun")
  OV.add_unlock("angels-components-weapons-basic", "submachine-gun")

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

  OV.add_prereq("angels-cobalt-smelting-1", "water-washing-1")
  OV.remove_prereq("angels-cobalt-smelting-2", "water-washing-1")

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
  if mods["bobplates"] then
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
  else
    OV.patch_recipes(
      {
        {
          name = "rocket-control-unit",
          ingredients = {
            {type = "item", name = "battery-5", amount = 6}
          }
        }
      }
    )
    OV.add_prereq("rocket-control-unit", "angels-components-batteries-5")
  end
end

if angelsmods.industries.tech then
  -- rework battery tiers in electronics blocks
  OV.patch_recipes(
    {
      {
        name = "block-electronics-1",
        ingredients = {{type = "item", name = "battery-1", amount = 0}}
      },
      {
        name = "block-electronics-2",
        ingredients = {{type = "item", name = "battery-1", amount = "battery-2"}}
      },
      {
        name = "block-electronics-3",
        ingredients = {{type = "item", name = "battery-2", amount = "battery-3"}}
      },
      {
        name = "block-electronics-4",
        ingredients = {{type = "item", name = "battery-3", amount = "battery-4"}}
      },
      {
        name = "block-electronics-5",
        ingredients = {{type = "item", name = "battery-4", amount = "battery-5"}}
      }
    }
  )
end

if angelsmods.industries.components then
  OV.execute()
end