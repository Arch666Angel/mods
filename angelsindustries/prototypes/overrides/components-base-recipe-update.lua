local OV = angelsmods.functions.OV

if angelsmods.industries.components then
  -- submachine gun
  OV.remove_unlock("military", "submachine-gun")
  OV.add_unlock("angels-components-weapons-basic", "submachine-gun")

  --battery requirements
  OV.remove_unlock("angels-glass-smelting-2", "angels-coil-glass-fiber")
  OV.add_unlock("angels-glass-smelting-1", "angels-coil-glass-fiber")
  --battery usage
  --vanilla replacements
  replace_recipe_ing("accumulator","battery-1","battery-2")
  OV.remove_prereq("electric-energy-accumulators", "battery")
  OV.add_prereq("electric-energy-accumulators", "angels-components-batteries-2")
--do i want to leave this for bobs bots?
  --if (not mods["boblogistics"]) then --if i want to actually move it to battery-2
    replace_recipe_ing("flying-robot-frame","battery","battery-4")
    OV.remove_prereq("robotics", "battery")
    OV.add_prereq("robotics", "angels-components-batteries-4")
  --end
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
    -- disable battery 6
    OV.global_replace_item("battery-6", "battery-5")
    angelsmods.functions.add_flag("battery-6", "hidden")
    angelsmods.functions.add_flag("battery-anode-6", "hidden")
    angelsmods.functions.add_flag("battery-cathode-6", "hidden")
    angelsmods.functions.add_flag("battery-frame-6", "hidden")
  end

  if mods["bobmodules"] then
    -- bob modules have their own overhaul
  else
    OV.patch_recipes(
      {
        {
          name = "speed-module",
          ingredients = {
            {type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded"},
          }
        },
        {
          name = "speed-module-3",
          ingredients = {
            {type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded"},
            {type = "item", name = "circuit-yellow-loaded", amount = "circuit-blue-loaded"},
          }
        },
        {
          name = "effectivity-module",
          ingredients = {
            {type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded"},
          }
        },
        {
          name = "effectivity-module-3",
          ingredients = {
            {type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded"},
            {type = "item", name = "circuit-yellow-loaded", amount = "circuit-blue-loaded"},
          }
        },
        {
          name = "productivity-module",
          ingredients = {
            {type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded"},
          }
        },
        {
          name = "productivity-module-3",
          ingredients = {
            {type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded"},
            {type = "item", name = "circuit-yellow-loaded", amount = "circuit-blue-loaded"},
          }
        },
        {
          name = "angels-bio-yield-module",
          ingredients = {
            {type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded"},
          }
        },
        {
          name = "angels-bio-yield-module-3",
          ingredients = {
            {type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded"},
            {type = "item", name = "circuit-yellow-loaded", amount = "circuit-blue-loaded"},
          }
        }
      }
    )
    OV.add_prereq("speed-module", "tech-orange-circuit")
    OV.add_prereq("speed-module-2", "tech-blue-circuit")
    OV.add_prereq("speed-module-3", "tech-yellow-circuit")
    OV.add_prereq("effectivity-module", "tech-orange-circuit")
    OV.add_prereq("effectivity-module-2", "tech-blue-circuit")
    OV.add_prereq("effectivity-module-3", "tech-yellow-circuit")
    OV.add_prereq("productivity-module", "tech-orange-circuit")
    OV.add_prereq("productivity-module-2", "tech-blue-circuit")
    OV.add_prereq("productivity-module-3", "tech-yellow-circuit")
  end
end

if angelsmods.industries.components then
  OV.execute()
end