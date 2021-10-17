if angelsmods.industries.components then
  local OV = angelsmods.functions.OV

  if mods["bobwarfare"] then
    -- plasma turret
    OV.patch_recipes(
      {
        --[[{
          name = "bob-plasma-turret-1",
          ingredients =
          {
            { type = "item", name = "battery-1", amount = "battery-1" }
          },
        },]]
        {
          name = "bob-plasma-turret-2",
          ingredients =
          {
            { type = "item", name = "battery-2", amount = "battery-1" }
          },
        },
        {
          name = "bob-plasma-turret-3",
          ingredients =
          {
            { type = "item", name = "battery-3", amount = "battery-1" },
            { type = "item", name = "angels-plate-aluminium", amount = "steel-plate" },
            { type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded" }
          },
        },
        {
          name = "bob-plasma-turret-4",
          ingredients =
          {
            { type = "item", name = "battery-4", amount = "battery-1" },
            { type = "item", name = "angels-plate-titanium", amount = "steel-plate" }
          },
        },
        {
          name = "bob-plasma-turret-5",
          ingredients =
          {
            { type = "item", name = "battery-5", amount = "battery-1" },
            { type = "item", name = "angels-plate-tungsten", amount = "steel-plate" },
            { type = "item", name = "circuit-yellow-loaded", amount = "circuit-blue-loaded" }
          },
        },
      }
    )
    OV.remove_prereq("bob-plasma-turrets-2", "advanced-electronics")
    OV.add_prereq("bob-plasma-turrets-2", "angels-components-batteries-2")
    --OV.add_prereq("bob-plasma-turrets-2", "tech-green-circuit") -- indirect depends on it through batteries 2
    OV.set_science_pack("bob-plasma-turrets-3", "military-science-pack", 1)
    OV.add_prereq("bob-plasma-turrets-3", "angels-components-batteries-3")
    --OV.add_prereq("bob-plasma-turrets-3", "tech-orange-circuit") -- indirect depends on it through batteries 3
    OV.add_prereq("bob-plasma-turrets-4", "tech-blue-circuit")
    OV.add_prereq("bob-plasma-turrets-4", "angels-components-batteries-4")
    OV.add_prereq("bob-plasma-turrets-5", "tech-yellow-circuit")
    OV.add_prereq("bob-plasma-turrets-5", "angels-components-batteries-5")
    OV.remove_prereq("bob-plasma-turrets-5", "utility-science-pack")

  end
end