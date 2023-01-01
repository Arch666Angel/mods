-- GATHERING TRIGGERS (can be added by other mods, this list can be extended)
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "small-biter" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "medium-biter" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "big-biter" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "behemoth-biter" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "colossal-biter" })

angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "small-spitter" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "medium-spitter" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "big-spitter" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "behemoth-spitter" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "colossal-spitter" })
if mods["bobenemies"] then
  angelsmods.functions.add_gathering_turret_start_trigger({
    range = 60,
    type = "unit",
    name = "bob-big-electric-spitter",
  })
  angelsmods.functions.add_gathering_turret_start_trigger({
    range = 60,
    type = "unit",
    name = "bob-huge-explosive-spitter",
  })
  angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "bob-huge-acid-spitter" })
  angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "bob-giant-fire-spitter" })
  angelsmods.functions.add_gathering_turret_start_trigger({
    range = 60,
    type = "unit",
    name = "bob-giant-poison-spitter",
  })
  angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "bob-titan-spitter" })
  angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "bob-behemoth-spitter" })
  angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "bob-leviathan-spitter" })
end

angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "small-scarab" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "medium-scarab" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "big-scarab" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "behemoth-scarab" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "colossal-scarab" })

angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "small-psyker" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "medium-psyker" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "big-psyker" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "behemoth-psyker" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "colossal-psyker" })

angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit-spawner", name = "biter-spawner" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit-spawner", name = "spitter-spawner" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit-spawner", name = "scarab-spawner" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "unit-spawner", name = "psyker-spawner" })
if mods["bobenemies"] then
  angelsmods.functions.add_gathering_turret_start_trigger({
    range = 60,
    type = "unit-spawner",
    name = "bob-biter-spawner",
  })
  angelsmods.functions.add_gathering_turret_start_trigger({
    range = 60,
    type = "unit-spawner",
    name = "bob-spitter-spawner",
  })
end

angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "small-worm-turret" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "medium-worm-turret" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "big-worm-turret" })
angelsmods.functions.add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "behemoth-worm-turret" })
if mods["bobenemies"] then
  angelsmods.functions.add_gathering_turret_start_trigger({
    range = 60,
    type = "turret",
    name = "bob-big-explosive-worm-turret",
  })
  angelsmods.functions.add_gathering_turret_start_trigger({
    range = 60,
    type = "turret",
    name = "bob-big-fire-worm-turret",
  })
  angelsmods.functions.add_gathering_turret_start_trigger({
    range = 60,
    type = "turret",
    name = "bob-big-piercing-worm-turret",
  })
  angelsmods.functions.add_gathering_turret_start_trigger({
    range = 60,
    type = "turret",
    name = "bob-big-poison-worm-turret",
  })
  angelsmods.functions.add_gathering_turret_start_trigger({
    range = 60,
    type = "turret",
    name = "bob-big-electric-worm-turret",
  })
  angelsmods.functions.add_gathering_turret_start_trigger({
    range = 60,
    type = "turret",
    name = "bob-big-gaint-worm-turret",
  })
end

-- GATHERING TARGETS (can be added by other mods, this list can be extended)
if angelsmods.triggers.artifacts["base"] then
  angelsmods.functions.create_gathering_turret_target({
    name = "small-alien-artifact",
    require_tech_unlock = "angels-gathering-turret",
  })
end
if angelsmods.triggers.artifacts["red"] then
  angelsmods.functions.create_gathering_turret_target({
    name = "small-alien-artifact-red",
    require_tech_unlock = true,
    additional_tech_prerequisites = "angels-gathering-turret",
  })
end
if angelsmods.triggers.artifacts["yellow"] then
  angelsmods.functions.create_gathering_turret_target({
    name = "small-alien-artifact-yellow",
    require_tech_unlock = true,
    additional_tech_prerequisites = "angels-gathering-turret",
  })
end
if angelsmods.triggers.artifacts["orange"] then
  angelsmods.functions.create_gathering_turret_target({
    name = "small-alien-artifact-orange",
    require_tech_unlock = true,
    additional_tech_prerequisites = "angels-gathering-turret",
  })
end
if angelsmods.triggers.artifacts["blue"] then
  angelsmods.functions.create_gathering_turret_target({
    name = "small-alien-artifact-blue",
    require_tech_unlock = true,
    additional_tech_prerequisites = "angels-gathering-turret",
  })
end
if angelsmods.triggers.artifacts["purple"] then
  angelsmods.functions.create_gathering_turret_target({
    name = "small-alien-artifact-purple",
    require_tech_unlock = true,
    additional_tech_prerequisites = "angels-gathering-turret",
  })
end
if angelsmods.triggers.artifacts["green"] then
  angelsmods.functions.create_gathering_turret_target({
    name = "small-alien-artifact-green",
    require_tech_unlock = true,
    additional_tech_prerequisites = "angels-gathering-turret",
  })
end
