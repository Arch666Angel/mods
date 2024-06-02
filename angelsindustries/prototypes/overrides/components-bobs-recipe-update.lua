local OV = angelsmods.functions.OV
-- CUSTOM FIXES FOR BOBS (bobs mods are listed alphabetically)
if angelsmods.industries.components then
  -----------------------------------------------------------------------------
  -- BOB ASSEMBLY -------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then -- electronic assemblers
    OV.patch_recipes({
      { name = "circuit-grey-board", category = "electronics" },
      { name = "circuit-grey-board-alternative", category = "electronics" },
      { name = "circuit-red-board", category = "electronics" },
      { name = "circuit-green-board", category = "electronics-with-fluid" },
      { name = "circuit-orange-board", category = "electronics-with-fluid" },
      { name = "circuit-blue-board", category = "electronics-with-fluid" },
      --{ name = "circuit-yellow-board", category = "electronics-with-fluid" }, --crafted with 2 fluids

      { name = "circuit-grey", category = "electronics" },
      { name = "circuit-red", category = "electronics" },
      { name = "circuit-green", category = "electronics-machine" },
      { name = "circuit-orange", category = "electronics-with-fluid" },
      { name = "circuit-blue", category = "electronics-with-fluid" },
      { name = "circuit-yellow", category = "electronics-with-fluid" },

      { name = "circuit-red-loaded", category = "electronics" },
      { name = "circuit-green-loaded", category = "electronics-machine" },
      { name = "circuit-orange-loaded", category = "electronics-machine" },
      { name = "circuit-blue-loaded", category = "electronics-machine" },
      { name = "circuit-yellow-loaded", category = "electronics-machine" },

      { name = "circuit-resistor", category = "electronics" },
      { name = "circuit-transistor", category = "electronics-machine" },
      { name = "circuit-microchip", category = "electronics-with-fluid" },
      { name = "circuit-transformer", category = "electronics-machine" },
      { name = "circuit-cpu", category = "electronics-with-fluid" },
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
    })
  end

  -----------------------------------------------------------------------------
  -- BOB ELECTRONICS ----------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobelectronics"] then
    OV.disable_recipe("superior-circuit-board")
  end

  -----------------------------------------------------------------------------
  -- BOB EQUIPMENT ------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobequipment"] then
    -- roboports
    if mods["boblogistics"] then
      OV.remove_input("personal-roboport-mk2-equipment", "battery-5")
    else
      OV.patch_recipes({
        {
          name = "personal-roboport-equipment",
          ingredients = {
            { type = "item", name = "battery-2", amount = "battery-4" },
          },
        },
        {
          name = "personal-roboport-mk2-equipment",
          ingredients = {
            { type = "item", name = "battery-3", amount = "battery-5" },
          },
        },
        {
          name = "personal-roboport-mk3-equipment",
          ingredients = {
            { type = "item", name = "battery-4", amount = "battery-1" },
            { type = "item", name = "battery-4", amount = "battery-3" },
          },
        },
        {
          name = "personal-roboport-mk4-equipment",
          ingredients = {
            { type = "item", name = mods["bobplates"] and "battery-6" or "battery-5", amount = "battery-1" },
          },
        },
      })
      if mods["bobplates"] then
        OV.add_prereq("personal-roboport-mk4-equipment", "angels-components-batteries-6")
      else
        OV.add_prereq("personal-roboport-mk4-equipment", "angels-components-batteries-5")
      end
    end
    OV.remove_prereq("personal-roboport-mk2-equipment", "angels-components-batteries-5")

    -- exoskeleton
    OV.patch_recipes({
      {
        name = "exoskeleton-equipment",
        ingredients = {
          { type = "item", name = "motor-3", amount = "motor-4" },
        },
      },
    })
    OV.remove_prereq("exoskeleton-equipment", "electric-engine")
    OV.add_prereq("exoskeleton-equipment", "angels-components-mechanical-3")
    OV.remove_science_pack("exoskeleton-equipment", "chemical-science-pack")
  end

  -----------------------------------------------------------------------------
  -- BOB LOGISTICS ------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["boblogistics"] then
    -- splitters
    if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
      OV.patch_recipes({
        {
          name = "basic-splitter",
          ingredients = {
            { type = "item", name = "circuit-grey", amount = "copper-cable" },
          },
        },
        {
          name = "splitter",
          ingredients = {
            { type = "item", name = "circuit-red-loaded", amount = "circuit-grey" },
          },
        },
      })
    end
    OV.patch_recipes({
      {
        name = "express-splitter",
        ingredients = {
          { type = "item", name = "circuit-orange-loaded", amount = "circuit-blue-loaded" },
        },
      },
    })
  end

  -----------------------------------------------------------------------------
  -- BOB REVAMP ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobrevamp"] then
    -- add 1000 heat shields to rocket
    OV.patch_recipes({
      {
        name = "angels-rocket-ion-thruster",
        ingredients = {
          { type = "item", name = "heat-shield-tile", amount = 20 },
        },
      },
      {
        name = "angels-rocket-ion-booster",
        ingredients = {
          { type = "item", name = "heat-shield-tile", amount = 50 },
        },
      },
      {
        name = "angels-rocket-hull",
        ingredients = {
          { type = "item", name = "heat-shield-tile", amount = 25 },
        },
      },
    })
    OV.add_prereq("angels-rocket-ion-thruster", "heat-shield")
    OV.add_prereq("angels-rocket-hull", "heat-shield")
  end

  -----------------------------------------------------------------------------
  -- BOB MODULES --------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobmodules"] then
    --replace green with orange boards on logic step
    local module_recs = {}
    for _, type in pairs({ "speed", "effectivity", "productivity", "pollution-clean", "pollution-create" }) do
      table.insert(module_recs, {
        name = type .. "-processor-2",
        ingredients = {
          { type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded" },
        },
      })
    end
    OV.patch_recipes(module_recs)
  end

  -----------------------------------------------------------------------------
  -- BOB PLATES ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobplates"] then
    OV.global_replace_technology("battery-2", "angels-components-batteries-3")
    OV.disable_technology("battery-2")
    OV.disable_recipe("lithium-cobalt-oxide")
    angelsmods.functions.add_flag("lithium-cobalt-oxide", "hidden")

    OV.global_replace_technology("battery-3", "angels-components-batteries-4")
    OV.disable_technology("battery-3")

    OV.disable_recipe("silver-oxide")
    OV.disable_recipe("lithium")
    OV.disable_recipe("lithium-water-electrolysis")
    OV.disable_recipe("lithium-chloride")
    OV.disable_recipe("water-thermal-lithia")
    angelsmods.functions.add_flag("silver-oxide", "hidden")
    angelsmods.functions.add_flag("lithium", "hidden")
    angelsmods.functions.add_flag("lithium-perchlorate", "hidden")
    angelsmods.functions.add_flag("lithia-water", "hidden")
    OV.disable_technology("lithium-processing")
  end

  -----------------------------------------------------------------------------
  -- BOB POWER ----------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobpower"] then
    OV.add_prereq("bob-boiler-2", "angels-components-construction-2")
  end

  -----------------------------------------------------------------------------
  -- BOB WARFARE --------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobwarfare"] then
    OV.patch_recipes({
      {
        name = "power-armor", 
        ingredients = {
          { type = "item", name = "circuit-green-loaded", amount = "circuit-orange-loaded" },
        },
      },
    })
    if angelsmods.industries.tech then
      OV.remove_prereq("power-armor-mk2", "low-density-structure")
      OV.remove_input("power-armor-mk2", "low-density-structure")
    end
  end

  OV.execute()
end
