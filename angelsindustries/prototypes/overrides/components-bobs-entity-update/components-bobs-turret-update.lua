if angelsmods.industries.components then
  local OV = angelsmods.functions.OV

  if mods["bobwarfare"] then
    -- laser turret
    OV.patch_recipes({
      {
        name = "bob-laser-turret-2",
        ingredients = {
          { type = "item", name = "battery-2", amount = 12 },
        },
      },
      {
        name = "bob-laser-turret-3",
        ingredients = {
          { type = "item", name = "battery-3", amount = mods["bobplates"] and "battery-3" or "battery-1" },
          { type = "item", name = "angels-plate-aluminium", amount = "steel-plate" },
          { type = "item", name = "circuit-orange-loaded", amount = 20 },
        },
      },
      {
        name = "bob-laser-turret-4",
        ingredients = {
          { type = "item", name = "battery-4", amount = mods["bobplates"] and "battery-3" or "battery-1" },
          { type = "item", name = "angels-plate-titanium", amount = "steel-plate" },
        },
      },
      {
        name = "bob-laser-turret-5",
        ingredients = {
          { type = "item", name = "battery-5", amount = mods["bobplates"] and "battery-6" or "battery-1" },
          { type = "item", name = "angels-plate-tungsten", amount = "steel-plate" },
          { type = "item", name = "circuit-yellow-loaded", amount = "circuit-blue-loaded" },
        },
      },
    })
    OV.remove_prereq("bob-laser-turrets-2", "advanced-circuit")
    OV.add_prereq("bob-laser-turrets-2", "angels-components-batteries-2")
    --OV.add_prereq("bob-laser-turrets-2", "tech-green-circuit") -- indirect depends on it through batteries 2
    OV.set_science_pack("bob-laser-turrets-3", "military-science-pack", 1)
    --OV.add_prereq("bob-laser-turrets-3", "angels-components-batteries-3")
    --OV.add_prereq("bob-laser-turrets-3", "tech-orange-circuit") -- indirect depends on it through batteries 3
    OV.remove_prereq("bob-laser-turrets-4", "processing-unit")
    OV.add_prereq("bob-laser-turrets-4", "tech-blue-circuit")
    OV.add_prereq("bob-laser-turrets-4", "angels-components-batteries-4")
    OV.add_prereq("bob-laser-turrets-5", "tech-yellow-circuit")
    OV.add_prereq("bob-laser-turrets-5", "angels-components-batteries-5")
    OV.remove_prereq("bob-laser-turrets-5", "utility-science-pack")

    -- plasma turret
    OV.patch_recipes({
      --[[{
          name = "bob-plasma-turret-1",
          ingredients =
          {
            { type = "item", name = "battery-1", amount = "battery-1" }
          },
        },]]
      {
        name = "bob-plasma-turret-2",
        ingredients = {
          { type = "item", name = "battery-2", amount = "battery-1" },
        },
      },
      {
        name = "bob-plasma-turret-3",
        ingredients = {
          { type = "item", name = "battery-3", amount = mods["bobplates"] and "battery-3" or "battery-1" },
          { type = "item", name = "angels-plate-aluminium", amount = "steel-plate" },
          { type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded" },
        },
      },
      {
        name = "bob-plasma-turret-4",
        ingredients = {
          { type = "item", name = "battery-4", amount = mods["bobplates"] and "battery-3" or "battery-1" },
          { type = "item", name = "angels-plate-titanium", amount = "steel-plate" },
        },
      },
      {
        name = "bob-plasma-turret-5",
        ingredients = {
          { type = "item", name = "battery-5", amount = mods["bobplates"] and "battery-6" or "battery-1" },
          { type = "item", name = "angels-plate-tungsten", amount = "steel-plate" },
          { type = "item", name = "circuit-yellow-loaded", amount = "circuit-blue-loaded" },
        },
      },
    })
    OV.remove_prereq("bob-plasma-turrets-2", "advanced-circuit")
    OV.add_prereq("bob-plasma-turrets-2", "angels-components-batteries-2")
    --OV.add_prereq("bob-plasma-turrets-2", "tech-green-circuit") -- indirect depends on it through batteries 2
    OV.set_science_pack("bob-plasma-turrets-3", "military-science-pack", 1)
    --OV.add_prereq("bob-plasma-turrets-3", "angels-components-batteries-3")
    --OV.add_prereq("bob-plasma-turrets-3", "tech-orange-circuit") -- indirect depends on it through batteries 3
    OV.remove_prereq("bob-plasma-turrets-4", "processing-unit")
    OV.add_prereq("bob-plasma-turrets-4", "tech-blue-circuit")
    OV.add_prereq("bob-plasma-turrets-4", "angels-components-batteries-4")
    OV.add_prereq("bob-plasma-turrets-5", "tech-yellow-circuit")
    OV.add_prereq("bob-plasma-turrets-5", "angels-components-batteries-5")
    OV.remove_prereq("bob-plasma-turrets-5", "utility-science-pack")
  end
end
