--OVERRIDE FOR ANGELS
-- PETROCHEM
if not angelsmods.petrochem then
  data.raw["item"]["angels-pressure-tank-1"].subgroup = "storage"
  data.raw["item"]["angels-pressure-tank-1"].order = "b[fluid]-a[storage-tank]-a[angels]"
  data.raw["technology"]["pressure-tanks"].prerequisites = {"fluid-handling"}
end