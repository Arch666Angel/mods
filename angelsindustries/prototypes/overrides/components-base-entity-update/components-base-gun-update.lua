if angelsmods.industries.components then
  local OV = angelsmods.functions.OV

  if mods["bobwarfare"] then
    -- laser rifle
    OV.patch_recipes({
      --[[{
          name = "bob-laser-rifle-battery",
          ingredients =
          {
            { type = "item", name = "battery-1", amount = "battery-1" }
          },
        },]]
      --[[{
          name = "bob-laser-rifle-battery-ruby",
          ingredients =
          {
            { type = "item", name = "battery-1", amount = "battery-1" }
          },
        },]]
      {
        name = "bob-laser-rifle-battery-sapphire",
        ingredients = {
          { type = "item", name = "battery-2", amount = "battery-1" },
        },
      },
      {
        name = "bob-laser-rifle-battery-emerald",
        ingredients = {
          { type = "item", name = "battery-3", amount = mods["bobplates"] and "battery-3" or "battery-1" },
        },
      },
      {
        name = "bob-laser-rifle-battery-amethyst",
        ingredients = {
          { type = "item", name = "battery-4", amount = mods["bobplates"] and "battery-3" or "battery-1" },
        },
      },
      {
        name = "bob-laser-rifle-battery-topaz",
        ingredients = {
          { type = "item", name = "battery-5", amount = mods["bobplates"] and "battery-6" or "battery-1" },
        },
      },
      {
        name = "bob-laser-rifle-battery-diamond",
        ingredients = {
          {
            type = "item",
            name = mods["bobplates"] and "battery-6" or "battery-5",
            amount = mods["bobplates"] and "battery-6" or "battery-1",
          },
        },
      },
    })
    OV.remove_prereq("bob-laser-rifle", "angels-components-batteries-1") -- depends on in through "laser"
    OV.remove_prereq("bob-laser-rifle", "military-3")
    OV.add_prereq("bob-laser-rifle", "military-science-pack")
    OV.add_prereq("bob-laser-rifle-ammo-2", "military-3") -- also depends on batteries 2 indirectly
    --OV.add_prereq("bob-laser-rifle-ammo-2", "angels-components-batteries-2")
    --OV.add_prereq("bob-laser-rifle-ammo-3", "angels-components-batteries-3")
    OV.add_prereq("bob-laser-rifle-ammo-4", "angels-components-batteries-4")
    OV.add_prereq("bob-laser-rifle-ammo-5", "angels-components-batteries-5")
    OV.set_science_pack("bob-laser-rifle-ammo-5", "utility-science-pack", 1)
    OV.set_science_pack("bob-laser-rifle-ammo-6", "utility-science-pack", 1)
    if mods["bobplates"] then
      OV.add_prereq("bob-laser-rifle-ammo-6", "angels-components-batteries-6")
    end
  end
end
