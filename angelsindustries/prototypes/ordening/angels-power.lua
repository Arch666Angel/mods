local move_item = angelsmods.functions.move_item

if angelsmods.industries.overhaul then
  -----------------------------------------------------------------------------
  -- VANILLA POWER STUFFS -----------------------------------------------------
  -----------------------------------------------------------------------------
  move_item("boiler", "angels-power-steam", "a[boiler]")
  move_item("steam-engine", "angels-power-steam", "b[steam-engine]")
  move_item("steam-turbine", "angels-power-steam", "c[steam-turbine]")

  move_item("solar-panel", "angels-power-solar", "a[solar-panel]")
  move_item("accumulator", "angels-power-solar", "b[accumulator]")

  move_item("nuclear-reactor", "angels-power-nuclear", "a[reactor]")
  move_item("heat-pipe", "angels-power-nuclear", "b[heat-pipe]")
  move_item("heat-exchanger", "angels-power-nuclear", "c[heat-exchanger]")

  move_item("uranium-235", "angels-power-nuclear-processing", "a[radioactive-element]-b[uranium-235]")
  move_item("uranium-238", "angels-power-nuclear-processing", "a[radioactive-element]-c[uranium-238]")
  move_item("uranium-processing", "angels-power-nuclear-processing", "a[uranium]-a[processing]", "recipe")
  move_item("kovarex-enrichment-process", "angels-power-nuclear-processing", "a[uranium]-b[enrichment]", "recipe")

  move_item("uranium-fuel-cell", "angels-power-nuclear-fuel-cell", "a[uranium]-b")
  move_item("used-up-uranium-fuel-cell", "angels-power-nuclear-fuel-cell", "a[uranium]-c")
  move_item("uranium-fuel-cell", "angels-power-nuclear-fuel-cell", "a[uranium]-a", "recipe")
  move_item("nuclear-fuel-reprocessing", "angels-power-nuclear-fuel-cell", "a[uranium]-c", "recipe")

  move_item("small-electric-pole", "angels-power-poles", "a[small]")
  move_item("medium-electric-pole", "angels-power-poles", "b[medium]")
  move_item("big-electric-pole", "angels-power-poles", "c[big]")
  move_item("substation", "angels-power-poles", "d[substation]")
end

if mods["bobpower"] then
  -----------------------------------------------------------------------------
  -- BOB POWER POLES ----------------------------------------------------------
  -----------------------------------------------------------------------------
  -- power poles
  if settings.startup["bobmods-power-poles"].value then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-medium-power-poles",
        group = "angels-power",
        order = "e[power-poles]-b[medium]",
      },
      {
        type = "item-subgroup",
        name = "angels-big-power-poles",
        group = "angels-power",
        order = "e[power-poles]-c[big]",
      },
      {
        type = "item-subgroup",
        name = "angels-sub-power-poles",
        group = "angels-power",
        order = "e[power-poles]-d[substation]",
      },
    })

    move_item("medium-electric-pole", "angels-medium-power-poles", "a")
    move_item("medium-electric-pole-2", "angels-medium-power-poles", "b")
    move_item("medium-electric-pole-3", "angels-medium-power-poles", "c")
    move_item("medium-electric-pole-4", "angels-medium-power-poles", "d")

    move_item("big-electric-pole", "angels-big-power-poles", "a")
    move_item("big-electric-pole-2", "angels-big-power-poles", "b")
    move_item("big-electric-pole-3", "angels-big-power-poles", "c")
    move_item("big-electric-pole-4", "angels-big-power-poles", "d")

    move_item("substation", "angels-sub-power-poles", "a")
    move_item("substation-2", "angels-sub-power-poles", "b")
    move_item("substation-3", "angels-sub-power-poles", "c")
    move_item("substation-4", "angels-sub-power-poles", "d")
  end

  -----------------------------------------------------------------------------
  -- BOB STEAM POWER ----------------------------------------------------------
  -----------------------------------------------------------------------------
  -- steam boilers and engines/turbines
  if settings.startup["bobmods-power-steam"].value then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-power-steam-boiler",
        group = "angels-power",
        order = "a[steam]-b[boiler]",
      },
      {
        type = "item-subgroup",
        name = "angels-power-steam-generator",
        group = "angels-power",
        order = "a[steam]-c[steam-generator]",
      },
    })

    move_item("boiler", "angels-power-steam-boiler", "a")
    move_item("boiler-2", "angels-power-steam-boiler", "b")
    move_item("boiler-3", "angels-power-steam-boiler", "c")
    move_item("boiler-4", "angels-power-steam-boiler", "d")
    move_item("boiler-5", "angels-power-steam-boiler", "e")

    move_item("boiler", "angels-power-steam-boiler", "aa", "recipe")
    move_item("boiler-2", "angels-power-steam-boiler", "ba", "recipe")
    move_item("boiler-3", "angels-power-steam-boiler", "ca", "recipe")
    move_item("boiler-4", "angels-power-steam-boiler", "da", "recipe")
    move_item("boiler-5", "angels-power-steam-boiler", "ea", "recipe")

    move_item("boiler-2-from-oil-boiler", "angels-power-steam-boiler", "bb", "recipe")
    move_item("boiler-3-from-oil-boiler-2", "angels-power-steam-boiler", "cb", "recipe")
    move_item("boiler-4-from-oil-boiler-3", "angels-power-steam-boiler", "db", "recipe")
    move_item("boiler-5-from-oil-boiler-4", "angels-power-steam-boiler", "eb", "recipe")

    move_item("boiler-2-from-heat-exchanger", "angels-power-steam-boiler", "cc", "recipe")
    move_item("boiler-3-from-heat-exchanger-2", "angels-power-steam-boiler", "dc", "recipe")
    move_item("boiler-4-from-heat-exchanger-3", "angels-power-steam-boiler", "ec", "recipe")
    move_item("boiler-5-from-heat-exchanger-4", "angels-power-steam-boiler", "fc", "recipe")

    move_item("oil-boiler", "angels-power-steam-boiler", "f")
    move_item("oil-boiler-2", "angels-power-steam-boiler", "g")
    move_item("oil-boiler-3", "angels-power-steam-boiler", "h")
    move_item("oil-boiler-4", "angels-power-steam-boiler", "i")

    move_item("oil-boiler", "angels-power-steam-boiler", "fa", "recipe")
    move_item("oil-boiler-2", "angels-power-steam-boiler", "ga", "recipe")
    move_item("oil-boiler-3", "angels-power-steam-boiler", "ha", "recipe")
    move_item("oil-boiler-4", "angels-power-steam-boiler", "ia", "recipe")

    move_item("oil-boiler-2-from-boiler-3", "angels-power-steam-boiler", "gb", "recipe")
    move_item("oil-boiler-3-from-boiler-4", "angels-power-steam-boiler", "hb", "recipe")
    move_item("oil-boiler-4-from-boiler-5", "angels-power-steam-boiler", "ib", "recipe")

    move_item("steam-engine", "angels-power-steam-generator", "a")
    move_item("steam-engine-2", "angels-power-steam-generator", "b")
    move_item("steam-engine-3", "angels-power-steam-generator", "c")
    move_item("steam-engine-4", "angels-power-steam-generator", "d")
    move_item("steam-engine-5", "angels-power-steam-generator", "e")

    move_item("steam-turbine", "angels-power-steam-generator", "f")
    move_item("steam-turbine-2", "angels-power-steam-generator", "g")
    move_item("steam-turbine-3", "angels-power-steam-generator", "h")
  end

  -- fluid generators
  if settings.startup["bobmods-power-fluidgenerator"].value then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-power-fluid-generator",
        group = "angels-power",
        order = "a[steam]-d[fluid-generator]",
      },
    })

    if settings.startup["bobmods-power-burnergenerator"].value then
      move_item("bob-burner-generator", "angels-power-fluid-generator", "a")
    end

    move_item("fluid-generator", "angels-power-fluid-generator", "b")
    move_item("fluid-generator-2", "angels-power-fluid-generator", "c")
    move_item("fluid-generator-3", "angels-power-fluid-generator", "d")

    if mods["bobrevamp"] and data.raw.item["hydrazine-generator"] then
      move_item("hydrazine-generator", "angels-power-fluid-generator", "e")
    end
  else
    if settings.startup["bobmods-power-burnergenerator"].value then
      move_item("bob-burner-generator", "angels-power-steam", "a")
    end
  end

  -----------------------------------------------------------------------------
  -- BOB SOLAR POWER ----------------------------------------------------------
  -----------------------------------------------------------------------------
  -- solar panels
  if settings.startup["bobmods-power-solar"].value then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-power-solar-panel",
        group = "angels-power",
        order = "b[solar]-b[panel]",
      },
    })

    move_item("solar-panel-small", "angels-power-solar-panel", "a[solar-panel]-a[small]-a")
    move_item("solar-panel-small-2", "angels-power-solar-panel", "a[solar-panel]-a[small]-b")
    move_item("solar-panel-small-3", "angels-power-solar-panel", "a[solar-panel]-a[small]-c")

    move_item("solar-panel", "angels-power-solar-panel", "a[solar-panel]-b[medium]-a")
    move_item("solar-panel-2", "angels-power-solar-panel", "a[solar-panel]-b[medium]-b")
    move_item("solar-panel-3", "angels-power-solar-panel", "a[solar-panel]-b[medium]-c")

    move_item("solar-panel-large", "angels-power-solar-panel", "a[solar-panel]-c[large]-a")
    move_item("solar-panel-large-2", "angels-power-solar-panel", "a[solar-panel]-c[large]-b")
    move_item("solar-panel-large-3", "angels-power-solar-panel", "a[solar-panel]-c[large]-c")
  end

  -- accumulators
  if settings.startup["bobmods-power-accumulators"].value then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-power-accumulator",
        group = "angels-power",
        order = "b[solar]-c[accumulator]",
      },
    })

    move_item("accumulator", "angels-power-accumulator", "a[capacity]-a")
    move_item("large-accumulator-2", "angels-power-accumulator", "a[capacity]-b")
    move_item("large-accumulator-3", "angels-power-accumulator", "a[capacity]-c")

    move_item("slow-accumulator", "angels-power-accumulator", "b[slow]-a")
    move_item("slow-accumulator-2", "angels-power-accumulator", "b[slow]-b")
    move_item("slow-accumulator-3", "angels-power-accumulator", "b[slow]-c")

    move_item("fast-accumulator", "angels-power-accumulator", "c[fast]-a")
    move_item("fast-accumulator-2", "angels-power-accumulator", "c[fast]-b")
    move_item("fast-accumulator-3", "angels-power-accumulator", "c[fast]-c")
  end

  -----------------------------------------------------------------------------
  -- BOB NUCLEAR POWER --------------------------------------------------------
  -----------------------------------------------------------------------------
  -- burner reactor
  if settings.startup["bobmods-power-heatsources"].value then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-power-nuclear-reactor-a",
        group = "angels-power",
        order = "c[nuclear]-b[angels-burner-reactor]",
      },
    })

    move_item("burner-reactor", "angels-power-nuclear-reactor-a", "a[fuel-burner]-a")
    move_item("burner-reactor-2", "angels-power-nuclear-reactor-a", "a[fuel-burner]-b")

    move_item("fluid-reactor", "angels-power-nuclear-reactor-a", "b[fluid-burner]-a")
    move_item("fluid-reactor-2", "angels-power-nuclear-reactor-a", "b[fluid-burner]-b")
  end

  -- nuclear fuel
  move_item("plutonium-nucleosynthesis", "angels-power-nuclear-processing", "a[uranium]-z[plutonium-harvest]", "recipe")

  -- nuclear reactor
  if settings.startup["bobmods-power-nuclear"].value then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-power-nuclear-reactor-b",
        group = "angels-power",
        order = "c[nuclear]-c[nuclear-reactor]",
      },
    })

    move_item("nuclear-reactor", "angels-power-nuclear-reactor-b", "a")
    move_item("nuclear-reactor-2", "angels-power-nuclear-reactor-b", "b")
    move_item("nuclear-reactor-3", "angels-power-nuclear-reactor-b", "c")
  end

  -- heat pipes
  if
    settings.startup["bobmods-power-steam"].value
    or settings.startup["bobmods-power-nuclear"].value
    or settings.startup["bobmods-power-heatsources"].value
  then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-power-nuclear-heat-pipe",
        group = "angels-power",
        order = "c[nuclear]-d[heat-pipe]",
      },
    })

    move_item("heat-pipe", "angels-power-nuclear-heat-pipe", "a")
    move_item("heat-pipe-2", "angels-power-nuclear-heat-pipe", "b")
    move_item("heat-pipe-3", "angels-power-nuclear-heat-pipe", "c")
    move_item("heat-pipe-4", "angels-power-nuclear-heat-pipe", "d")
  end

  -- heat exchanger
  if settings.startup["bobmods-power-steam"].value == true then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-power-nuclear-heat-exchanger",
        group = "angels-power",
        order = "c[nuclear]-e[heat-exchanger]",
      },
    })

    move_item("heat-exchanger", "angels-power-nuclear-heat-exchanger", "a")
    move_item("heat-exchanger-2", "angels-power-nuclear-heat-exchanger", "b")
    move_item("heat-exchanger-3", "angels-power-nuclear-heat-exchanger", "c")
    move_item("heat-exchanger-4", "angels-power-nuclear-heat-exchanger", "d")

    move_item("heat-exchanger", "angels-power-nuclear-heat-exchanger", "aa", "recipe")
    move_item("heat-exchanger-2", "angels-power-nuclear-heat-exchanger", "ba", "recipe")
    move_item("heat-exchanger-3", "angels-power-nuclear-heat-exchanger", "ca", "recipe")
    move_item("heat-exchanger-4", "angels-power-nuclear-heat-exchanger", "da", "recipe")

    move_item("heat-exchanger-2-from-boiler-3", "angels-power-nuclear-heat-exchanger", "bb", "recipe")
    move_item("heat-exchanger-3-from-boiler-4", "angels-power-nuclear-heat-exchanger", "cb", "recipe")
    move_item("heat-exchanger-4-from-boiler-5", "angels-power-nuclear-heat-exchanger", "db", "recipe")
  end
end
