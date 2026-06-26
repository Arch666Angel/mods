if angelsmods.industries.components then
  angelsmods.functions.RB.build({
    --ASSEMBLER 0
    {
      type = "recipe",
      name = "angels-assembling-machine-0",
      localised_name = { "item-name.angels-assembling-machine-0" },
      energy_required = 5,
      energy_required = 5,
      enabled = true,
      ingredients = {
        { type = "item", name = "stone-furnace", amount = 1 },
        { type = "item", name = "t0-plate", amount = 1 },
        { type = "item", name = "t0-gears", amount = 1 },
      },
      results = { { type = "item", name = "angels-assembling-machine-0", amount = 1 } },
    },
    --ASSEMBLER 1
    {
      type = "recipe",
      name = "angels-assembling-machine-small-1",
      localised_name = { "item-name.angels-assembling-machine-small-1" },
      energy_required = 5,
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-circuit", amount = 1 },
        { type = "item", name = "t1-plate", amount = 1 },
        { type = "item", name = "t1-gears", amount = 1 },
      },
      results = { { type = "item", name = "angels-assembling-machine-small-1", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-assembling-machine-big-1",
      localised_name = { "item-name.angels-assembling-machine-big-1" },
      energy_required = 5,
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t0-circuit", amount = 5 },
        { type = "item", name = "t1-plate", amount = 5 },
        { type = "item", name = "t1-gears", amount = 6 },
      },
      results = { { type = "item", name = "angels-assembling-machine-big-1", amount = 1 } },
    },
    --ASSEMBLER 2
    {
      type = "recipe",
      name = "angels-assembling-machine-small-2",
      localised_name = { "item-name.angels-assembling-machine-small-2" },
      energy_required = 5,
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t1-circuit", amount = 1 },
        { type = "item", name = "t1-plate", amount = 1 },
        { type = "item", name = "t1-gears", amount = 2 },
      },
      results = { { type = "item", name = "angels-assembling-machine-small-2", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-assembling-machine-big-2",
      localised_name = { "item-name.angels-assembling-machine-big-2" },
      energy_required = 5,
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t1-circuit", amount = 4 },
        { type = "item", name = "t1-plate", amount = 6 },
        { type = "item", name = "t1-gears", amount = 6 },
      },
      results = { { type = "item", name = "angels-assembling-machine-big-2", amount = 1 } },
    },
    --ASSEMBLER 3
    {
      type = "recipe",
      name = "angels-assembling-machine-small-3",
      localised_name = { "item-name.angels-assembling-machine-small-3" },
      energy_required = 5,
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t2-circuit", amount = 2 },
        { type = "item", name = "t2-plate", amount = 1 },
        { type = "item", name = "t2-gears", amount = 2 },
      },
      results = { { type = "item", name = "angels-assembling-machine-small-3", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-assembling-machine-big-3",
      localised_name = { "item-name.angels-assembling-machine-big-3" },
      energy_required = 5,
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "t2-circuit", amount = 5 },
        { type = "item", name = "t2-plate", amount = 6 },
        { type = "item", name = "t2-gears", amount = 6 },
      },
      results = { { type = "item", name = "angels-assembling-machine-big-3", amount = 1 } },
    },
  })
end
