--OVERRIDE FOR ANGELS
-- PETROCHEM
if angelsmods.petrochem then
  if bobmods and bobmods.logistics then
    data.raw["item"]["angels-pressure-tank-1"].order = "c[large-tank]-d[jax35]"
  end
else
  data.raw["item"]["angels-pressure-tank-1"].subgroup = "storage"
  data.raw["item"]["angels-pressure-tank-1"].order = "b[fluid]-a[storage-tank]-a[angels]"
  data.raw["technology"]["pressure-tanks"].prerequisites = {"fluid-handling"}
end