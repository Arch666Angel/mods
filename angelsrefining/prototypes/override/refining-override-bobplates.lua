local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

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

-------------------------------------------------------------------------------
-- GEMSTONES ------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  move_item("grinding-wheel", "bob-gems-cut", "g-4")
  move_item("polishing-wheel", "bob-gems-polished", "g-5-a")
  move_item("polishing-compound", "bob-gems-polished", "g-5-b")
  move_item("polishing-compound", "bob-gems-polished", "g-5-b", "recipe")
end

-------------------------------------------------------------------------------
-- NUCLEAR POWER --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if mods["angelsindustries"] then
    -- angels industries takes care of this with angels nuclear overhaul
  else
    move_item("thorium-processing", "raw-material", "l[thorium-processing]", "recipe")
  end
end
