local OV = angelsmods.functions.OV

if mods["bobassembly"] then
  -- ASSEMBLING MACHINES

  angelsmods.functions.RB.set_fallback("item", "assmach-1", { { "block-production-1", 1 } })
  angelsmods.functions.RB.set_fallback("item", "assmach-2", { { "block-production-2", 1 }, { "assembling-machine-1" } })
  angelsmods.functions.RB.set_fallback(
    "item",
    "assmach-3",
    { { "block-mprocessing-3", 1 }, { "assembling-machine-2" } }
  )
  angelsmods.functions.RB.set_fallback(
    "item",
    "assmach-4",
    { { "block-mprocessing-4", 1 }, { "assembling-machine-3" } }
  )
  angelsmods.functions.RB.set_fallback(
    "item",
    "assmach-5",
    { { "block-mprocessing-5", 1 }, { "bob-assembling-machine-4" } }
  )
  angelsmods.functions.RB.set_fallback(
    "item",
    "assmach-6",
    { { "block-mprocessing-5", 5 }, { "bob-assembling-machine-5" } }
  )

  OV.patch_recipes({
    {
      name = "assembling-machine-1",
      ingredients = {
        { "!!" },
        { type = "item", name = "assmach-1", amount = 1 },
        { type = "item", name = "t0-plate", amount = 8 },
        { type = "item", name = "t0-circuit", amount = 2 },
        { type = "item", name = "t0-gears", amount = 2 },
      },
    },
    {
      name = "assembling-machine-2",
      ingredients = {
        { "!!" },
        { type = "item", name = "assmach-2", amount = 1 },
        { type = "item", name = "t1-plate", amount = 8 },
        { type = "item", name = "t1-circuit", amount = 2 },
        { type = "item", name = "t1-gears", amount = 2 },
        { type = "item", name = "t1-pipe", amount = 1 },
      },
    },
    {
      name = "assembling-machine-3",
      ingredients = {
        { "!!" },
        { type = "item", name = "assmach-3", amount = 1 },
        { type = "item", name = "t3-plate", amount = 6 },
        { type = "item", name = "t3-circuit", amount = 2 },
        { type = "item", name = "t3-gears", amount = 2 },
        { type = "item", name = "t3-pipe", amount = 1 },
      },
    },
    {
      name = "bob-assembling-machine-4",
      ingredients = {
        { "!!" },
        { type = "item", name = "assmach-4", amount = 1 },
        { type = "item", name = "t4-plate", amount = 6 },
        { type = "item", name = "t4-circuit", amount = 2 },
        { type = "item", name = "t4-gears", amount = 2 },
        { type = "item", name = "t4-pipe", amount = 1 },
      },
    },
    {
      name = "bob-assembling-machine-5",
      ingredients = {
        { "!!" },
        { type = "item", name = "assmach-5", amount = 1 },
        { type = "item", name = "t5-plate", amount = 6 },
        { type = "item", name = "t5-circuit", amount = 2 },
        { type = "item", name = "t5-gears", amount = 2 },
        { type = "item", name = "t5-pipe", amount = 1 },
      },
    },
    {
      name = "bob-assembling-machine-6",
      ingredients = {
        { "!!" },
        { type = "item", name = "assmach-6", amount = 1 },
        { type = "item", name = "t6-plate", amount = 6 },
        { type = "item", name = "t6-circuit", amount = 4 },
        { type = "item", name = "t6-gears", amount = 2 },
        { type = "item", name = "t6-pipe", amount = 1 },
      },
    },
  })

  -- ELECTRONICS ASSEMBLING MACHINES

  if settings.startup["bobmods-assembly-electronicmachines"].value then
    angelsmods.functions.RB.set_fallback("item", "elecmach-1", { { "block-production-1", 1 } })
    angelsmods.functions.RB.set_fallback(
      "item",
      "elecmach-2",
      { { "block-mprocessing-3", 1 }, { "bob-electronics-machine-1" } }
    )
    angelsmods.functions.RB.set_fallback(
      "item",
      "elecmach-3",
      { { "block-mprocessing-5", 1 }, { "bob-electronics-machine-2" } }
    )

    OV.patch_recipes({
      {
        name = "bob-electronics-machine-1",
        ingredients = {
          { "!!" },
          { type = "item", name = "elecmach-1", amount = 1 },
          { type = "item", name = "t0-plate", amount = 4 },
          { type = "item", name = "t0-circuit", amount = 4 },
          { type = "item", name = "t0-gears", amount = 2 },
        },
      },
      {
        name = "bob-electronics-machine-2",
        ingredients = {
          { "!!" },
          { type = "item", name = "elecmach-2", amount = 1 },
          { type = "item", name = "t3-plate", amount = 3 },
          { type = "item", name = "t3-circuit", amount = 4 },
          { type = "item", name = "t3-gears", amount = 2 },
          { type = "item", name = "t3-pipe", amount = 1 },
        },
      },
      {
        name = "bob-electronics-machine-3",
        ingredients = {
          { "!!" },
          { type = "item", name = "elecmach-3", amount = 1 },
          { type = "item", name = "t5-plate", amount = 3 },
          { type = "item", name = "t5-circuit", amount = 4 },
          { type = "item", name = "t5-gears", amount = 2 },
          { type = "item", name = "t5-pipe", amount = 1 },
        },
      },
    })
  end
end
