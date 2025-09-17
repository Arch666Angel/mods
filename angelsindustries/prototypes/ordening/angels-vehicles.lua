local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- CARS -----------------------------------------------------------------------
-------------------------------------------------------------------------------
move_item("car", "angels-vehicle-car", "a[car]-a", "item-with-entity-data")
-- order a[car]-b reserved for nilaus truck
-- order b[crawlers]-a already taken by the crawler (car)
-- order b[crawlers]-b reserved for CAB

-------------------------------------------------------------------------------
-- TANKS ----------------------------------------------------------------------
-------------------------------------------------------------------------------
move_item("tank", "angels-vehicle-car", "a[car]-b[tank]-a", "item-with-entity-data")
if mods["bobwarfare"] then
  move_item("bob-tank-2", "angels-vehicle-car", "a[car]-b[tank]-b", "item-with-entity-data")
  move_item("bob-tank-3", "angels-vehicle-car", "a[car]-b[tank]-c", "item-with-entity-data")
end

-------------------------------------------------------------------------------
-- TRAINS ---------------------------------------------------------------------
-------------------------------------------------------------------------------
data.raw["item-subgroup"]["transport"].group = "angels-vehicles"
data.raw["item-subgroup"]["transport"].order = "ba[railway]-a[vanilla]"
data.raw["item-subgroup"]["train-transport"].group = "angels-vehicles"
data.raw["item-subgroup"]["train-transport"].order = "ba[railway]-b[signals]"


if mods["boblogistics"] then
  data.raw["item-subgroup"]["bob-locomotive"].group = "angels-vehicles"
  data.raw["item-subgroup"]["bob-locomotive"].order = "ba[vanilla-train]-a[locomotive]"
  data.raw["item-subgroup"]["bob-cargo-wagon"].group = "angels-vehicles"
  data.raw["item-subgroup"]["bob-cargo-wagon"].order = "ba[vanilla-train]-b[cargo-wagon]"
  data.raw["item-subgroup"]["bob-fluid-wagon"].group = "angels-vehicles"
  data.raw["item-subgroup"]["bob-fluid-wagon"].order = "ba[vanilla-train]-c[fluid-wagon]"

  data:extend({
    {
      type = "item-subgroup",
      name = "angels-artillery",
      group = "angels-vehicles",
      order = "ba[vanilla-train]-d[artillery-wagon]",
    },
  })
  move_item("artillery-wagon", "angels-artillery", "a", "item-with-entity-data")
  data.raw["item-subgroup"]["train-transport"].order = "ba[railway]-e[signals]"
else
  move_item("locomotive", "angels-vehicle-train-vanilla", false, "item-with-entity-data")
  move_item("cargo-wagon", "angels-vehicle-train-vanilla", false, "item-with-entity-data")
  move_item("fluid-wagon", "angels-vehicle-train-vanilla", false, "item-with-entity-data")
  move_item("artillery-wagon", "angels-vehicle-train-vanilla", false, "item-with-entity-data")
end

if mods["bobwarfare"] then
  if mods["boblogistics"] then
    move_item("bob-artillery-wagon-2", "angels-artillery", "b", "item-with-entity-data")
    move_item("bob-artillery-wagon-3", "angels-artillery", "c", "item-with-entity-data")
  else
    move_item(
      "bob-artillery-wagon-2",
      "angels-vehicle-train-vanilla",
      data.raw["artillery-wagon"]["artillery-wagon"].order,
      "item-with-entity-data"
    )
    move_item(
      "bob-artillery-wagon-3",
      "angels-vehicle-train-vanilla",
      data.raw["artillery-wagon"]["artillery-wagon"].order,
      "item-with-entity-data"
    )
  end
end

-------------------------------------------------------------------------------
-- SPIDERTRON -----------------------------------------------------------------
-------------------------------------------------------------------------------
move_item("spidertron", "angels-vehicle-spidertron", "b[spidertron]", "item-with-entity-data")

if mods["bobwarfare"] then
  data.raw["item-subgroup"]["bob-mech-parts"].group = "angels-vehicles"
  data.raw["item-subgroup"]["bob-mech-parts"].order = "cbb"

  move_item("bob-antron", "angels-vehicle-spidertron", "b[spidertron]-a", "item-with-entity-data")
  move_item("bob-tankotron", "angels-vehicle-spidertron", "b[spidertron]-b", "item-with-entity-data")
  move_item("spidertron", "angels-vehicle-spidertron", "b[spidertron]-c", "item-with-entity-data")
  move_item("bob-heavy-spidertron", "angels-vehicle-spidertron", "b[spidertron]-d", "item-with-entity-data")
  move_item("bob-logistic-spidertron", "angels-vehicle-spidertron", "b[spidertron]-e", "item-with-entity-data")

  move_item("bob-spidertron-cannon", "bob-mech-parts", "s[mech]-c")
end
