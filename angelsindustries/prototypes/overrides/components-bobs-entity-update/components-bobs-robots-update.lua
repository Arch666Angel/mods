if angelsmods.industries.components then
  local OV = angelsmods.functions.OV

  if mods["boblogistics"] and settings.startup["bobmods-logistics-flyingrobotframes"].value == true then
    -- flying robot frames
    OV.patch_recipes({
      {
        name = "flying-robot-frame",
        ingredients = {
          { "!!" },
          { type = "item", name = "circuit-orange-loaded", amount = 3 },
          { type = "item", name = "motor-3", amount = 1 },
          { type = "item", name = "construction-frame-3", amount = 1 },
          { type = "item", name = "battery-2", amount = 2 },
        },
      },
      {
        name = "flying-robot-frame-2",
        ingredients = {
          { "!!" },
          { type = "item", name = "circuit-blue-loaded", amount = 3 },
          { type = "item", name = "motor-4", amount = 1 },
          { type = "item", name = "construction-frame-4", amount = 1 },
          { type = "item", name = "battery-3", amount = 2 },
        },
      },
      {
        name = "flying-robot-frame-3",
        ingredients = {
          { "!!" },
          { type = "item", name = "circuit-blue-loaded", amount = 3 },
          { type = "item", name = "motor-4", amount = 1 },
          { type = "item", name = "construction-frame-4", amount = 1 },
          { type = "item", name = "battery-4", amount = 2 },
        },
      },
      {
        name = "flying-robot-frame-4",
        ingredients = {
          { "!!" },
          { type = "item", name = "circuit-yellow-loaded", amount = 3 },
          { type = "item", name = "motor-5", amount = 1 },
          { type = "item", name = "construction-frame-5", amount = 1 },
          mods["bobplates"] and { type = "item", name = "battery-6", amount = 2 }
            or { type = "item", name = "battery-5", amount = 3 },
        },
      },
    })
    -- base game late robots
    OV.patch_recipes({
      {
        name = "construction-robot",
        ingredients = {
          { type = "item", name = "bob-robot-brain", amount = 1 },
          { type = "item", name = "bob-robot-tool", amount = 1 },
        },
      },
      {
        name = "logistic-robot",
        ingredients = {
          { type = "item", name = "bob-robot-brain", amount = 1 },
          { type = "item", name = "bob-robot-tool", amount = 1 },
        },
      },
    })

    OV.add_prereq("bob-robotics-2", "angels-components-mechanical-4")
    OV.add_prereq("bob-robotics-2", "tech-blue-circuit")

    OV.remove_prereq("bob-robotics-3", "titanium-processing")
    OV.remove_prereq("bob-robotics-3", "processing-unit")
    OV.remove_prereq("bob-robotics-3", "battery-2")
    OV.add_prereq("bob-robotics-3", "angels-components-batteries-4")
    OV.add_prereq("bob-robotics-3", "angels-components-mechanical-4")
    OV.add_prereq("bob-robotics-3", "tech-blue-circuit")

    OV.remove_prereq("bob-robotics-4", "ceramics")
    OV.remove_prereq("bob-robotics-4", "battery-3")
    if mods["bobplates"] then
      OV.add_prereq("bob-robotics-4", "angels-components-batteries-6")
    else
      OV.add_prereq("bob-robotics-4", "angels-components-batteries-5")
    end
    OV.add_prereq("bob-robotics-4", "angels-components-mechanical-5")
    OV.add_prereq("bob-robotics-4", "tech-yellow-circuit")
  end

  OV.remove_prereq("robotics", "angels-components-batteries-4")
  OV.remove_prereq("robotics", "electric-engine")
  OV.add_prereq("robotics", "angels-components-mechanical-3")
  OV.add_prereq("robotics", "tech-orange-circuit")

  -- T2
  OV.add_prereq("personal-roboport-mk2-equipment", "angels-components-batteries-3")
  OV.add_prereq("bob-robo-modular-2", "angels-components-batteries-3")
  OV.add_prereq("vehicle-roboport-equipment-2", "angels-components-batteries-3")

  -- T3
  OV.remove_prereq("personal-roboport-mk3-equipment", "angels-components-batteries-3")
  OV.remove_prereq("bob-robo-modular-3", "angels-components-batteries-3")
  OV.remove_prereq("vehicle-roboport-equipment-3", "angels-components-batteries-3")
  OV.add_prereq("personal-roboport-mk3-equipment", "angels-components-batteries-4")
  OV.add_prereq("bob-robo-modular-3", "angels-components-batteries-4")
  OV.add_prereq("vehicle-roboport-equipment-3", "angels-components-batteries-4")

  -- T4
  OV.remove_prereq("personal-roboport-mk4-equipment", "angels-components-batteries-4")
  OV.remove_prereq("bob-robo-modular-4", "angels-components-batteries-4")
  OV.remove_prereq("vehicle-roboport-equipment-4", "angels-components-batteries-4")
  if mods["bobplates"] then
    OV.add_prereq("personal-roboport-mk4-equipment", "angels-components-batteries-6")
    OV.add_prereq("bob-robo-modular-4", "angels-components-batteries-6")
    OV.add_prereq("vehicle-roboport-equipment-4", "angels-components-batteries-6")
    OV.remove_science_pack("personal-roboport-mk4-equipment", "production-science-pack")
    OV.remove_science_pack("bob-robo-modular-4", "production-science-pack")
    OV.remove_science_pack("vehicle-roboport-equipment-4", "production-science-pack")
    OV.remove_science_pack("personal-roboport-modular-equipment-4", "production-science-pack")
    OV.remove_science_pack("vehicle-roboport-modular-equipment-4", "production-science-pack")
    OV.set_science_pack("personal-roboport-mk4-equipment", "utility-science-pack")
    OV.set_science_pack("bob-robo-modular-4", "utility-science-pack")
    OV.set_science_pack("vehicle-roboport-equipment-4", "utility-science-pack")
    OV.set_science_pack("personal-roboport-modular-equipment-4", "utility-science-pack")
    OV.set_science_pack("vehicle-roboport-modular-equipment-4", "utility-science-pack")
  else
    OV.add_prereq("personal-roboport-mk4-equipment", "angels-components-batteries-5")
    OV.add_prereq("bob-robo-modular-4", "angels-components-batteries-5")
    OV.add_prereq("vehicle-roboport-equipment-4", "angels-components-batteries-5")
  end

  if angelsmods.industries.tech then
  else
    OV.set_science_pack("bob-robotics-4", "utility-science-pack")
    OV.set_science_pack("bob-robots-3", "utility-science-pack")
    if mods["bobwarfare"] then
      OV.set_science_pack("bob-laser-robot", "utility-science-pack")
    end
  end

  -- charging pads
  OV.patch_recipes({
    {
      name = "roboport-chargepad-1",
      ingredients = {
        { "!!" },
        { type = "item", name = "circuit-orange-loaded", amount = 5 },
        { type = "item", name = "cable-harness-3", amount = 2 },
        { type = "item", name = "battery-2", amount = 2 },
      },
    },
    {
      name = "roboport-chargepad-2",
      ingredients = {
        { "!!" },
        { type = "item", name = "circuit-blue-loaded", amount = 5 },
        { type = "item", name = "cable-harness-4", amount = 2 },
        { type = "item", name = "battery-3", amount = 2 },
      },
    },
    {
      name = "roboport-chargepad-3",
      ingredients = {
        { "!!" },
        { type = "item", name = "circuit-blue-loaded", amount = 5 },
        { type = "item", name = "cable-harness-4", amount = 2 },
        { type = "item", name = "battery-4", amount = 2 },
      },
    },
    {
      name = "roboport-chargepad-4",
      ingredients = {
        { "!!" },
        { type = "item", name = "circuit-yellow-loaded", amount = 5 },
        { type = "item", name = "cable-harness-5", amount = 2 },
        { type = "item", name = mods["bobplates"] and "battery-6" or "battery-5", amount = 2 },
      },
    },
  })
end
