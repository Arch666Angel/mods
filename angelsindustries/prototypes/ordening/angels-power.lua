local move_item = angelsmods.functions.move_item

-----------------------------------------------------------------------------
-- VANILLA POWER STUFFS -----------------------------------------------------
-----------------------------------------------------------------------------
move_item("boiler", "angels-power-steam", "a[boiler]")
move_item("steam-engine", "angels-power-steam", "b[steam-engine]")
move_item("steam-turbine", "angels-power-steam", "c[steam-turbine]")

move_item("solar-panel", "angels-power-solar", "a[solar-panel]")
move_item("accumulator", "angels-power-solar", "b[accumulator]")

move_item("small-electric-pole", "angels-power-poles", "a[small]")
move_item("medium-electric-pole", "angels-power-poles", "b[medium]")
move_item("big-electric-pole", "angels-power-poles", "c[big]")
move_item("substation", "angels-power-poles", "d[substation]")

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
    move_item("bob-medium-electric-pole-2", "angels-medium-power-poles", "b")
    move_item("bob-medium-electric-pole-3", "angels-medium-power-poles", "c")
    move_item("bob-medium-electric-pole-4", "angels-medium-power-poles", "d")

    move_item("big-electric-pole", "angels-big-power-poles", "a")
    move_item("bob-big-electric-pole-2", "angels-big-power-poles", "b")
    move_item("bob-big-electric-pole-3", "angels-big-power-poles", "c")
    move_item("bob-big-electric-pole-4", "angels-big-power-poles", "d")

    move_item("substation", "angels-sub-power-poles", "a")
    move_item("bob-substation-2", "angels-sub-power-poles", "b")
    move_item("bob-substation-3", "angels-sub-power-poles", "c")
    move_item("bob-substation-4", "angels-sub-power-poles", "d")
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
    move_item("bob-boiler-2", "angels-power-steam-boiler", "b")
    move_item("bob-boiler-3", "angels-power-steam-boiler", "c")
    move_item("bob-boiler-4", "angels-power-steam-boiler", "d")
    move_item("bob-boiler-5", "angels-power-steam-boiler", "e")

    move_item("boiler", "angels-power-steam-boiler", "aa", "recipe")
    move_item("bob-boiler-2", "angels-power-steam-boiler", "ba", "recipe")
    move_item("bob-boiler-3", "angels-power-steam-boiler", "ca", "recipe")
    move_item("bob-boiler-4", "angels-power-steam-boiler", "da", "recipe")
    move_item("bob-boiler-5", "angels-power-steam-boiler", "ea", "recipe")

    move_item("bob-oil-boiler", "angels-power-steam-boiler", "f")
    move_item("bob-oil-boiler-2", "angels-power-steam-boiler", "g")
    move_item("bob-oil-boiler-3", "angels-power-steam-boiler", "h")
    move_item("bob-oil-boiler-4", "angels-power-steam-boiler", "i")

    move_item("bob-oil-boiler", "angels-power-steam-boiler", "fa", "recipe")
    move_item("bob-oil-boiler-2", "angels-power-steam-boiler", "ga", "recipe")
    move_item("bob-oil-boiler-3", "angels-power-steam-boiler", "ha", "recipe")
    move_item("bob-oil-boiler-4", "angels-power-steam-boiler", "ia", "recipe")

    move_item("steam-engine", "angels-power-steam-generator", "a")
    move_item("bob-steam-engine-2", "angels-power-steam-generator", "b")
    move_item("bob-steam-engine-3", "angels-power-steam-generator", "c")
    move_item("bob-steam-engine-4", "angels-power-steam-generator", "d")
    move_item("bob-steam-engine-5", "angels-power-steam-generator", "e")

    move_item("steam-turbine", "angels-power-steam-generator", "f")
    move_item("bob-steam-turbine-2", "angels-power-steam-generator", "g")
    move_item("bob-steam-turbine-3", "angels-power-steam-generator", "h")
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

    move_item("bob-fluid-generator", "angels-power-fluid-generator", "b")
    move_item("bob-fluid-generator-2", "angels-power-fluid-generator", "c")
    move_item("bob-fluid-generator-3", "angels-power-fluid-generator", "d")

    if mods["bobrevamp"] and data.raw.item["bob-hydrazine-generator"] then
      move_item("bob-hydrazine-generator", "angels-power-fluid-generator", "e")
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

    move_item("bob-solar-panel-small", "angels-power-solar-panel", "a[solar-panel]-a[small]-a")
    move_item("bob-solar-panel-small-2", "angels-power-solar-panel", "a[solar-panel]-a[small]-b")
    move_item("bob-solar-panel-small-3", "angels-power-solar-panel", "a[solar-panel]-a[small]-c")

    move_item("solar-panel", "angels-power-solar-panel", "a[solar-panel]-b[medium]-a")
    move_item("bob-solar-panel-2", "angels-power-solar-panel", "a[solar-panel]-b[medium]-b")
    move_item("bob-solar-panel-3", "angels-power-solar-panel", "a[solar-panel]-b[medium]-c")

    move_item("bob-solar-panel-large", "angels-power-solar-panel", "a[solar-panel]-c[large]-a")
    move_item("bob-solar-panel-large-2", "angels-power-solar-panel", "a[solar-panel]-c[large]-b")
    move_item("bob-solar-panel-large-3", "angels-power-solar-panel", "a[solar-panel]-c[large]-c")
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
    move_item("bob-large-accumulator-2", "angels-power-accumulator", "a[capacity]-b")
    move_item("bob-large-accumulator-3", "angels-power-accumulator", "a[capacity]-c")

    move_item("bob-slow-accumulator", "angels-power-accumulator", "b[slow]-a")
    move_item("bob-slow-accumulator-2", "angels-power-accumulator", "b[slow]-b")
    move_item("bob-slow-accumulator-3", "angels-power-accumulator", "b[slow]-c")

    move_item("bob-fast-accumulator", "angels-power-accumulator", "c[fast]-a")
    move_item("bob-fast-accumulator-2", "angels-power-accumulator", "c[fast]-b")
    move_item("bob-fast-accumulator-3", "angels-power-accumulator", "c[fast]-c")
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
  end
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
  end
end
