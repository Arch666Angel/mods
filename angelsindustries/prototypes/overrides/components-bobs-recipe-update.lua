local OV = angelsmods.functions.OV
-- CUSTOM FIXES FOR BOBS (bobs mods are listed alphabetically)
if angelsmods.industries.components then
  -----------------------------------------------------------------------------
  -- BOB ASSEMBLY -------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then -- electronic assemblers
    OV.patch_recipes(
      {
        { name = "circuit-grey-board", category = "electronics" },
        { name = "circuit-grey-board-alternative", category = "electronics" },
        { name = "circuit-red-board", category = "electronics" },
        { name = "circuit-green-board", category = "electronics-machine" },
        { name = "circuit-orange-board", category = "electronics-machine" },
        { name = "circuit-blue-board", category = "electronics-machine" },
        --{ name = "circuit-yellow-board", category = "electronics-machine" },

        { name = "circuit-grey", category = "electronics" },
        { name = "circuit-red", category = "electronics" },
        { name = "circuit-green", category = "electronics-machine" },
        { name = "circuit-orange", category = "electronics-machine" },
        { name = "circuit-blue", category = "electronics-machine" },
        { name = "circuit-yellow", category = "electronics-machine" },

        { name = "circuit-red-loaded", category = "electronics" },
        { name = "circuit-green-loaded", category = "electronics-machine" },
        { name = "circuit-orange-loaded", category = "electronics-machine" },
        { name = "circuit-blue-loaded", category = "electronics-machine" },
        { name = "circuit-yellow-loaded", category = "electronics-machine" },

        { name = "circuit-resistor", category = "electronics" },
        { name = "circuit-transistor", category = "electronics-machine" },
        { name = "circuit-microchip", category = "electronics-machine" },
        { name = "circuit-transformer", category = "electronics-machine" },
        { name = "circuit-cpu", category = "electronics-machine" },
        { name = "electronic-parts-resistor", category = "electronics-machine" },
        { name = "electronic-parts-transistor", category = "electronics-machine" },
        { name = "electronic-parts-microchip", category = "electronics-machine" },
        { name = "electronic-parts-transformer", category = "electronics-machine" },
        { name = "electronic-parts-cpu", category = "electronics-machine" },

        { name = "block-electronics-0", category = "electronics" },
        { name = "block-electronics-1", category = "electronics" },
        { name = "block-electronics-2", category = "electronics-machine" },
        { name = "block-electronics-3", category = "electronics-machine" },
        { name = "block-electronics-4", category = "electronics-machine" },
        { name = "block-electronics-5", category = "electronics-machine" },
      }
    )
  end

  -----------------------------------------------------------------------------
  -- BOB ELECTRONICS ----------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobelectronics"] then
    OV.disable_recipe("wooden-board-paper")
    OV.remove_prereq("water-treatment", "electronics")
  end

  -----------------------------------------------------------------------------
  -- BOB LOGISTICS ------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["boblogistics"] then
    if settings.startup["bobmods-logistics-flyingrobotframes"].value == true then
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
    end

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

  -----------------------------------------------------------------------------
  -- BOB REVAMP ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobrevamp"] then
    -- add 1000 heat shields to rocket
    OV.patch_recipes(
      {
        {
          name = "angels-rocket-ion-thruster",
          ingredients = {
            { type = "item", name = "heat-shield-tile", amount = 20}
          }
        },
        {
          name = "angels-rocket-ion-booster",
          ingredients = {
            { type = "item", name = "heat-shield-tile", amount = 50}
          }
        },
        {
          name = "angels-rocket-hull",
          ingredients = {
            { type = "item", name = "heat-shield-tile", amount = 25}
          }
        },
      }
    )
    OV.add_prereq("angels-rocket-ion-thruster", "heat-shield")
    OV.add_prereq("angels-rocket-hull", "heat-shield")
  end

  OV.execute()
end