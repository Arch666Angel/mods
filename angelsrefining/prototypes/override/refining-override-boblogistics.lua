local OV = angelsmods.functions.OV
if mods["boblogistics"] then
  -- bob valves
  angelsmods.functions.move_item("bob-valve", "angels-fluid-control", "a[valve]-a", "item")
  angelsmods.functions.move_item("bob-overflow-valve", "angels-fluid-control", "a[valve]-b", "item")
  angelsmods.functions.move_item("bob-topup-valve", "angels-fluid-control", "a[valve]-c", "item")

  -- bob pumps
  angelsmods.functions.move_item("pump", "angels-fluid-control", "b[pump]-a[mk1]")
  angelsmods.functions.move_item("bob-pump-2", "angels-fluid-control", "b[pump]-b[mk2]")
  angelsmods.functions.move_item("bob-pump-3", "angels-fluid-control", "b[pump]-c[mk3]")
  angelsmods.functions.move_item("bob-pump-4", "angels-fluid-control", "b[pump]-d[mk4]")

  -- bob tanks
  --angelsmods.functions.move_item("storage-tank", "angels-fluid-tanks", "b[medium-tank]-a[mk1]-a[regular]")
  angelsmods.functions.move_item(
    "bob-storage-tank-all-corners",
    "angels-fluid-tanks",
    "b[medium-tank]-a[mk1]-b[all-corners]"
  )
  angelsmods.functions.move_item("storage-tank-2", "angels-fluid-tanks", "b[medium-tank]-b[mk2]-a[regular]")
  angelsmods.functions.move_item(
    "bob-storage-tank-all-corners-2",
    "angels-fluid-tanks",
    "b[medium-tank]-b[mk2]-b[all-corners]"
  )
  angelsmods.functions.move_item("storage-tank-3", "angels-fluid-tanks", "b[medium-tank]-c[mk3]-a[regular]")
  angelsmods.functions.move_item(
    "bob-storage-tank-all-corners-3",
    "angels-fluid-tanks",
    "b[medium-tank]-c[mk3]-b[all-corners]"
  )
  angelsmods.functions.move_item("storage-tank-3", "angels-fluid-tanks", "b[medium-tank]-d[mk3]-a[regular]")
  angelsmods.functions.move_item(
    "bob-storage-tank-all-corners-3",
    "angels-fluid-tanks",
    "b[medium-tank]-d[mk3]-b[all-corners]"
  )
  angelsmods.functions.move_item("storage-tank-4", "angels-fluid-tanks", "b[medium-tank]-e[mk4]-a[regular]")
  angelsmods.functions.move_item(
    "bob-storage-tank-all-corners-4",
    "angels-fluid-tanks",
    "b[medium-tank]-e[mk4]-b[all-corners]"
  )

  if mods["bobplates"] then
    OV.patch_recipes({
      {
        name = "bob-storage-tank-all-corners",
        ingredients = {
          { name = "bob-small-storage-tank", amount = 1 },
          { name = "pipe", amount = 2 },
        },
      },
    })
  end
  --repair pack techs
  OV.patch_recipes({
    {
      name = "repair-pack-3",
      ingredients = {
        { name = "brass-gear-wheel", amount = "cobalt-steel-gear-wheel" },
        { name = "invar-alloy", amount = "cobalt-steel-alloy" },
      },
    },
  })
  OV.add_prereq(
    "bob-repair-pack-3",
    {
      mods["bobplates"] and "zinc-processing" or "steel-axe",
      mods["bobplates"] and "invar-processing" or "steel-processing",
    }
  )
  OV.remove_prereq("bob-repair-pack-3", "cobalt-processing")
end
