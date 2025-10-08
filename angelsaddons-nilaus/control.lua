script.on_event(defines.events.on_player_created, function(event)
  local iteminsert = game.players[event.player_index].insert
  iteminsert({ name = "nilaus-truck", count = 1 })
end)

remote.add_interface("nilaustruck", {
  hauler_types = function()
    return { "nilaus-truck" }
  end,
})

-----------------------------------------------------------------------------------------------------------------------
-- Everything below here is for the TP joke and can be removed again
-----------------------------------------------------------------------------------------------------------------------

function get_next_event_tick(current_tick)
  local next_event_from_now = 30 + math.random(30) -- next event between 30 minutes and half an hour from now
  return current_tick + 60 * 60 * next_event_from_now
end

function get_event_spawn_location(player_location)
  local radius_min = 10
  local radius_max = 20
  local offset_radius = radius_min * (math.random() < 0.5 and -1 or 1) -- minimum 20 tiles away from the player
  local spawn_radius = (radius_max - radius_min) * math.random() * (offset_radius < 0 and -1 or 1) -- maximum 20+10 tiles away from the player
  local x = offset_radius + spawn_radius

  offset_radius = radius_min * (math.random() < 0.5 and -1 or 1) -- minimum 20 tiles away from the player
  spawn_radius = (radius_max - radius_min) * math.random() * (offset_radius < 0 and -1 or 1) -- maximum 20+10 tiles away from the player
  local y = offset_radius + spawn_radius

  return { x = player_location.x + x, y = player_location.y + y }
end

global.event_part = 0
global.event_entity = nil
global.event_unit = -1
global.next_event_tick = nil

function show_event_stats()
  game.print(serpent.block({
    event_part = global.event_part,
    event_entity = global.event_entity,
    event_unit = global.event_unit,
    next_event = string.format("%d minutes", ((global.next_event_tick or 0) - game.tick) / 60 / 60),
  }))
end
function execute_event_part1()
  local player = game.players["Nilaus"]
  if
    player
    and player.valid
    and player.connected
    and player.character
    and player.character.valid -- nilaus is ingame and alive!
    and game.item_prototypes["angels-solid-paper"] -- TP enabled
    and player.get_item_count("angels-solid-paper") < 1000 -- running low
    and player.can_insert({ name = "angels-solid-paper" }) -- can insert TP as he is running low
    and global.event_unit == -1
    and global.event_part < 1
  then -- event not in progress
    global.event_part = 1
    local surface = player.surface
    local spawn_data = {
      name = "nilaus-TP-compilatron",
      position = get_event_spawn_location(player.character.position),
      force = player.force,
    }
    while not surface.can_place_entity(spawn_data) do
      spawn_data.position = get_event_spawn_location(player.character.position)
    end
    global.event_entity = surface.create_entity(spawn_data)
    for i = 1, 5 do
      surface.create_trivial_smoke({
        name = "car-smoke",
        position = spawn_data.position,
      })
    end
    global.event_entity.set_command({
      type = defines.command.go_to_location,
      destination_entity = player.character,
      distraction = defines.distraction.none,
      radius = 1,
    })
    global.event_entity.destructible = false
    global.event_unit = global.event_entity.unit_number
    global.event_part = 2
  else
    global.event_part = 0
  end
end
function execute_event_part2()
  -- set event entity to wander next to player for now
  local player = game.players["Nilaus"]
  if player and player.valid then
    global.event_entity.set_command({
      type = defines.command.stop,
      distraction = defines.distraction.none,
      ticks_to_wait = 60 * 10,
    })
    global.event_entity.surface.create_entity({
      name = "compi-speech-bubble",
      position = global.event_entity.position,
      target = global.event_entity,
      text = { "compilatron-message.nilaus-paper" },
      lifetime = 60 * 9,
    })
    player.insert({ name = "angels-solid-paper", amount = 1 })
  else
    global.event_entity.set_command({
      type = defines.command.stop,
      distraction = defines.distraction.none,
      ticks_to_wait = 10,
    })
  end
  global.event_part = 3
end
function execute_event_part3()
  -- clean up and reset
  for i = 1, 5 do
    global.event_entity.surface.create_trivial_smoke({
      name = "car-smoke",
      position = global.event_entity.position,
    })
  end
  global.event_entity.destroy()
  global.event_entity = nil
  global.event_unit = -1
  global.event_part = 0
end

remote.add_interface("nilausTP", {
  create_event = execute_event_part1, -- /c remote.call("nilausTP", "create_event")
  log_status = show_event_stats, -- /c remote.call("nilausTP", "log_status")
})

script.on_nth_tick(60 * 5, function(event)
  local tick = event.tick
  if global.event_part < 3 and global.event_entity then -- failsafe in case it fails
    if type(global.event_entity) == "table" and global.event_entity.valid then
      global.event_entity.destroy()
    end
    global.event_unit = -1
    global.event_part = 0
    global.event_entity = nil
    execute_event_part1()
  end
  if global.next_event_tick == nil then
    -- dirty way of initializing variable
    global.next_event_tick = get_next_event_tick(60 * 60 * 60 * 1.5) -- first event will happen between 1.5 and 2 hours of gameplay
    global.event_unit = -1
    global.event_part = 0
    global.event_entity = nil
  elseif tick > global.next_event_tick then -- not in the first 1.5 hours
    execute_event_part1()
    global.next_event_tick = get_next_event_tick(tick)
  end
end)

script.on_event(defines.events.on_ai_command_completed, function(event)
  if global.event_unit == event.unit_number and event.result == defines.behavior_result.success then
    if global.event_part == 2 then
      execute_event_part2()
    elseif global.event_part == 3 then
      execute_event_part3()
    end
  end
end)

script.on_configuration_changed(function(configurationData)
  local modChanges = configurationData.mod_changes["angelsaddons-nilaus"]
  if modChanges and modChanges.new_version ~= (modChanges.old_version or "") then
    log(
      string.format(
        "Updating 'angelsaddons-nilaus' from version %q to version %q",
        modChanges.old_version or "nil",
        modChanges.new_version
      )
    )
    -- reset event
    if type(global.event_entity) == "table" and global.event_entity.valid then
      global.event_entity.destroy()
    end
    global.event_unit = -1
    global.event_part = 0
    global.event_entity = nil
  end
end)
