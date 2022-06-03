if angelsmods.industries.components then
  local OV = angelsmods.functions.OV

  -- flamethrower
  OV.patch_recipes(
    {
      {
        name = "flamethrower",
        ingredients =
        {
          { type = "item", name = "circuit-red-loaded", amount = 2 }
        },
      },
      {
        name = "rocket-launcher",
        ingredients =
        {
          { type = "item", name = "circuit-green-loaded", amount = "circuit-red-loaded" }
        },
      },
    }
  )

  if mods["bobwarfare"] then
    -- laser rifle
    if angelsmods.industries.tech then
    else
      OV.remove_prereq("bob-laser-rifle-ammo-2", "military-3")
      OV.add_prereq("bob-laser-rifle-ammo-3", "military-3")
    end
  end


end