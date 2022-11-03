local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- BASIC INTERMEDIATES --------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.industries.overhaul then
  -- iron sticks
  move_item("iron-stick", "angels-basic-intermediate", "a[basic]-a")

  -- gear wheels and bearings
  if mods["bobplates"] then
    if angelsmods.industries.components then
      data.raw["item-subgroup"]["bob-gears"].group = "angels-components"
      data.raw["item-subgroup"]["bob-gears"].order = "c[mechanics]-e[bob-gears]"
      data.raw["item-subgroup"]["bob-bearings"].group = "angels-components"
      data.raw["item-subgroup"]["bob-bearings"].order = "c[mechanics]-f[bob-bearings]"
    else
      move_item("iron-gear-wheel", "bob-gears", "a[iron]")
      data.raw["item-subgroup"]["bob-gears"].group = "angels-components"
      data.raw["item-subgroup"]["bob-gears"].order = "a[basic]-b"
      data.raw["item-subgroup"]["bob-bearings"].group = "angels-components"
      data.raw["item-subgroup"]["bob-bearings"].order = "a[basic]-c"
    end
  else
    move_item("iron-gear-wheel", "angels-basic-intermediate", "a[basic]-b")
  end

  -- fluid stuffs
  if mods["bobplates"] then
    data.raw["item-subgroup"]["bob-fluid-pump"].group = "water-treatment"
    data.raw["item-subgroup"]["bob-fluid-pump"].order = "c[water]-z[bob-fluid-pump]"
  end

  -- classes
  if mods["bobclasses"] then
    data.raw["item-subgroup"]["body-parts"].group = "angels-components"
    data.raw["item-subgroup"]["body-parts"].order = "z[bob-parts]-a"
  end
end

-------------------------------------------------------------------------------
-- ENGINES --------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.industries.components then
  -- they are hidden
elseif angelsmods.industries.overhaul then
  move_item("engine-unit", "angels-basic-intermediate", "b[motor]-a")
  move_item("electric-engine-unit", "angels-basic-intermediate", "b[motor]-b")
end

-------------------------------------------------------------------------------
-- CIRCUITS -------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.industries.overhaul then
  move_item("electronic-circuit", "angels-loaded-circuit-board", "y[vanilla]-a")
  move_item("advanced-circuit", "angels-loaded-circuit-board", "y[vanilla]-b")
  move_item("processing-unit", "angels-loaded-circuit-board", "y[vanilla]-c")

  if mods["bobplates"] then
    move_item("advanced-processing-unit", "angels-loaded-circuit-board", "z[bob]-d")
  end

  if mods["bobelectronics"] then
    move_item("basic-electronic-components", "angels-circuit-components", "z[bob]-a")
    move_item("electronic-components", "angels-circuit-components", "z[bob]-b")
    move_item("intergrated-electronics", "angels-circuit-components", "z[bob]-c")
    move_item("processing-electronics", "angels-circuit-components", "z[bob]-d")

    move_item("wooden-board", "angels-board", "z[bob]-a")
    move_item("phenolic-board", "angels-board", "z[bob]-b")
    move_item("fibreglass-board", "angels-board", "z[bob]-c")

    move_item("basic-circuit-board", "angels-circuit-board", "z[bob]-a")
    move_item("circuit-board", "angels-circuit-board", "z[bob]-b")
    move_item("superior-circuit-board", "angels-circuit-board", "z[bob]-c")
    move_item("multi-layer-circuit-board", "angels-circuit-board", "z[bob]-d")

    --move_item("electronic-circuit", "angels-loaded-circuit-board", "z[bob]-a")
    --move_item("advanced-circuit", "angels-loaded-circuit-board", "z[bob]-b")
    --move_item("processing-unit", "angels-loaded-circuit-board", "z[bob]-c")
    --move_item("advanced-processing-unit", "angels-loaded-circuit-board", "z[bob]-d")
  end
end

-------------------------------------------------------------------------------
-- BATTERIES ------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.industries.overhaul then
  move_item("battery", "angels-basic-intermediate", "c[battery]-a")

  if mods["bobplates"] then
    move_item("lithium-ion-battery", "angels-basic-intermediate", "c[battery]-b")
    move_item("silver-zinc-battery", "angels-basic-intermediate", "c[battery]-c")
  end
end

-------------------------------------------------------------------------------
-- ROCKET PARTS ---------------------------------------------------------------
-------------------------------------------------------------------------------
-- rocket building process
move_item("rocket-silo", "production-machine", "z[rocket]-a[silo]")

if angelsmods.industries.overhaul then
  move_item("rocket-control-unit", "angels-basic-intermediate", "z[rocket]-a[rcu]")
  move_item("low-density-structure", "angels-basic-intermediate", "z[rocket]-b[lds]")

  if mods["bobrevamp"] then
    move_item("heat-shield-tile", "angels-basic-intermediate", "z[rocket]-c[heat-shield]")

    if mods["bobplates"] and settings.startup["bobmods-revamp-rtg"].value then
      move_item("rtg", "angels-basic-intermediate", "z[rocket]-d[rtg]")
    end
  end

  -- rocket payload
  if angelsmods.industries.tech then
    move_item("satellite", "angels-pack-components", "dba")
  else
    move_item("satellite", "angels-basic-intermediate", "z[rocket]-z[satellite]")
  end
end

-------------------------------------------------------------------------------
-- SCIENCE PAKCS --------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.industries.tech then
  data.raw["item-subgroup"]["science-pack"].group = "angels-tech"
  data.raw["item-subgroup"]["science-pack"].order = "ba[science-packs]-b[bobs-alien]"
elseif angelsmods.industries.overhaul then
  data.raw["item-subgroup"]["science-pack"].group = "angels-components"
  data.raw["item-subgroup"]["science-pack"].order = "z[science]-a"
end
