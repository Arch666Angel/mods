-- GATHERING TRIGGERS (can be added by other mods, this list can be extended)
local add_gathering_turret_start_trigger = angelsmods.functions.add_gathering_turret_start_trigger

add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "small-biter" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "medium-biter" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "big-biter" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "behemoth-biter" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "colossal-biter" })

add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "small-spitter" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "medium-spitter" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "big-spitter" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "behemoth-spitter" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "colossal-spitter" })
if mods["bobenemies"] then
  add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "bob-big-electric-spitter" })
  add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "bob-huge-explosive-spitter" })
  add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "bob-huge-acid-spitter" })
  add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "bob-giant-fire-spitter" })
  add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "bob-giant-poison-spitter" })
  add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "bob-titan-spitter" })
  add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "bob-behemoth-spitter" })
  add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "bob-leviathan-spitter" })
end

add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "small-scarab" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "medium-scarab" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "big-scarab" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "behemoth-scarab" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "colossal-scarab" })

add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "small-psyker" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "medium-psyker" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "big-psyker" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "behemoth-psyker" })
add_gathering_turret_start_trigger({ range = 60, type = "unit", name = "colossal-psyker" })

add_gathering_turret_start_trigger({ range = 60, type = "unit-spawner", name = "biter-spawner" })
add_gathering_turret_start_trigger({ range = 60, type = "unit-spawner", name = "spitter-spawner" })
add_gathering_turret_start_trigger({ range = 60, type = "unit-spawner", name = "scarab-spawner" })
add_gathering_turret_start_trigger({ range = 60, type = "unit-spawner", name = "psyker-spawner" })
if mods["bobenemies"] then
  add_gathering_turret_start_trigger({ range = 60, type = "unit-spawner", name = "bob-biter-spawner" })
  add_gathering_turret_start_trigger({ range = 60, type = "unit-spawner", name = "bob-spitter-spawner" })
end

add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "small-worm-turret" })
add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "medium-worm-turret" })
add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "big-worm-turret" })
add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "behemoth-worm-turret" })
if mods["bobenemies"] then
  add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "bob-big-explosive-worm-turret" })
  add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "bob-big-fire-worm-turret" })
  add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "bob-big-piercing-worm-turret" })
  add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "bob-big-poison-worm-turret" })
  add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "bob-big-electric-worm-turret" })
  add_gathering_turret_start_trigger({ range = 60, type = "turret", name = "bob-big-gaint-worm-turret" })
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
