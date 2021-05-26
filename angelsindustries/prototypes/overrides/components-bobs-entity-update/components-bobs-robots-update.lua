if angelsmods.industries.components then
  local OV = angelsmods.functions.OV

  if mods["boblogistics"] and settings.startup["bobmods-logistics-flyingrobotframes"].value == true then
    -- flying robot frames
    OV.patch_recipes(
      {
        {
          name = "flying-robot-frame",
          ingredients =
          {
            { "!!" },
            { type = "item", name = "circuit-orange-loaded", amount = 3 },
            { type = "item", name = "motor-3", amount = 1 },
            { type = "item", name = "construction-frame-3", amount = 1 },
            { type = "item", name = "battery-2", amount = 2 }
          },
        },
        {
          name = "flying-robot-frame-2",
          ingredients =
          {
            { "!!" },
            { type = "item", name = "circuit-blue-loaded", amount = 3 },
            { type = "item", name = "motor-4", amount = 1 },
            { type = "item", name = "construction-frame-4", amount = 1 },
            { type = "item", name = "battery-3", amount = 2 }
          },
        },
        {
          name = "flying-robot-frame-3",
          ingredients =
          {
            { "!!" },
            { type = "item", name = "circuit-blue-loaded", amount = 3 },
            { type = "item", name = "motor-4", amount = 1 },
            { type = "item", name = "construction-frame-4", amount = 1 },
            { type = "item", name = "battery-4", amount = 2 }
          },
        },
        {
          name = "flying-robot-frame-4",
          ingredients =
          {
            { "!!" },
            { type = "item", name = "circuit-yellow-loaded", amount = 3 },
            { type = "item", name = "motor-5", amount = 1 },
            { type = "item", name = "construction-frame-5", amount = 1 },
            mods["bobplates"] and
              { type = "item", name = "battery-6", amount = 2 } or
              { type = "item", name = "battery-5", amount = 3 }
          }
        }
      }
    )
    -- base game late robots
    OV.patch_recipes(
      {
        {
          name = "construction-robot",
          ingredients = {
            {type = "item", name = "robot-brain-construction", amount = 1},
            {type = "item", name = "robot-tool-construction", amount = 1}
          }
        },
        {
          name = "logistic-robot",
          ingredients = {
            {type = "item", name = "robot-brain-logistic", amount = 1},
            {type = "item", name = "robot-tool-logistic", amount = 1}
          }
        }
      }
    )
  end
  
  OV.remove_prereq("robotics", "angels-components-batteries-4")
  OV.remove_prereq("robotics", "electric-engine")
  OV.add_prereq("robotics", "angels-components-mechanical-3")
  OV.add_prereq("robotics", "tech-orange-circuit")

  OV.add_prereq("bob-robotics-2", "angels-components-mechanical-4")
  OV.add_prereq("bob-robotics-2", "tech-blue-circuit")

  OV.remove_prereq("bob-robotics-3", "titanium-processing")
  OV.remove_prereq("bob-robotics-3", "advanced-electronics-2")
  OV.remove_prereq("bob-robotics-3", "battery-2")
  OV.add_prereq("bob-robotics-3", "angels-components-batteries-4")
  OV.add_prereq("bob-robotics-3", "angels-components-mechanical-4")
  OV.add_prereq("bob-robotics-3", "tech-blue-circuit")
  
  OV.remove_prereq("bob-robotics-4", "ceramics")
  OV.remove_prereq("bob-robotics-4", "battery-3")
  if data.raw.technology["angels-components-batteries-6"] then
    OV.add_prereq("bob-robotics-4", "angels-components-batteries-6")
  end
  OV.add_prereq("bob-robotics-4", "angels-components-mechanical-5")
  OV.add_prereq("bob-robotics-4", "tech-yellow-circuit")

  -- charging pads
  OV.patch_recipes(
    {
      {
        name = "roboport-chargepad-1",
        ingredients =
        {
          { "!!" },
          { type = "item", name = "circuit-orange-loaded", amount = 5 },
          { type = "item", name = "cable-harness-3", amount = 2 },
          { type = "item", name = "battery-2", amount = 2 }
        },
      },
      {
        name = "roboport-chargepad-2",
        ingredients =
        {
          { "!!" },
          { type = "item", name = "circuit-blue-loaded", amount = 5 },
          { type = "item", name = "cable-harness-4", amount = 2 },
          { type = "item", name = "battery-3", amount = 2 }
        },
      },
      {
        name = "roboport-chargepad-3",
        ingredients =
        {
          { "!!" },
          { type = "item", name = "circuit-blue-loaded", amount = 5 },
          { type = "item", name = "cable-harness-4", amount = 2 },
          { type = "item", name = "battery-4", amount = 2 }
        },
      },
      {
        name = "roboport-chargepad-4",
        ingredients =
        {
          { "!!" },
          { type = "item", name = "circuit-yellow-loaded", amount = 5 },
          { type = "item", name = "cable-harness-5", amount = 2 },
          { type = "item", name = "battery-5", amount = 2 }
        },
      },
    }
  )

  OV.remove_prereq("bob-robo-modular-2", "bob-robotics-2")
  OV.remove_prereq("bob-robo-modular-3", "bob-robotics-3")
  OV.remove_prereq("bob-robo-modular-4", "bob-robotics-4")
end