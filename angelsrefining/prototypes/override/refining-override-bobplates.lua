local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- BARRELING PUMPS ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  angelsmods.functions.add_flag({
    "water-pump",
    "water-pump-2",
    "water-pump-3",
    "water-pump-4"
  }, "hidden")

  angelsmods.functions.set_next_upgrade("assembling-machine", "water-pump", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "water-pump-2", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "water-pump-3", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "water-pump-4", nil)

  OV.disable_recipe(
    {
      "lithia-water", -- lithia water
      "pure-water-pump", -- purified water
      "ground-water" -- regular water
    }
  )

  OV.disable_technology(
    {
      "water-bore-1",
      "water-bore-2",
      "water-bore-3",
      "water-bore-4"
    }
  )
end