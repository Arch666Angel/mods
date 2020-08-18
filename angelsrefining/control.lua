script.on_init(function()
  if remote.interfaces["freeplay"] then
    local items_to_insert = remote.call("freeplay", "get_created_items")
    items_to_insert["burner-ore-crusher"] = (items_to_insert["burner-ore-crusher"] or 0) + 1
    remote.call("freeplay", "set_created_items", items_to_insert)
  end
end)

--[[script.on_event(
  defines.events.on_player_created,
  function(event)
    local iteminsert = game.players[event.player_index].insert
    iteminsert {name = "burner-ore-crusher", count = 1}
  end
)]]

script.on_event(defines.events.on_player_rotated_entity, function(event)
  local entity = event.entity
  if entity and entity.valid and entity.name == "ground-water-pump" then
    local entity_surface = entity.surface
    local new_entity_table = {
      name = entity.name,
      position = entity.position,
      --direction = event.previous_direction,
      force = entity.force,
      player = event.player_index,
      create_build_effect_smoke = false
    }
    entity.destroy()

    local entity_old_direction = event.previous_direction
    if entity_old_direction == defines.direction.north then
      new_entity_table.direction = defines.direction.south
      if new_entity_table.position.y then
        new_entity_table.position.y = new_entity_table.position.y - 1
      else
        new_entity_table.position[2] = new_entity_table.position[2] - 1
      end

    elseif entity_old_direction == defines.direction.east then
      new_entity_table.direction = defines.direction.west
      if new_entity_table.position.x then
        new_entity_table.position.x = new_entity_table.position.x + 1
      else
        new_entity_table.position[1] = new_entity_table.position[1] + 1
      end

    elseif entity_old_direction == defines.direction.south then
      new_entity_table.direction = defines.direction.north
      if new_entity_table.position.y then
        new_entity_table.position.y = new_entity_table.position.y + 1
      else
        new_entity_table.position[2] = new_entity_table.position[2] + 1
      end

    elseif entity_old_direction == defines.direction.west then
      new_entity_table.direction = defines.direction.east
      if new_entity_table.position.x then
        new_entity_table.position.x = new_entity_table.position.x - 1
      else
        new_entity_table.position[1] = new_entity_table.position[1] - 1
      end
    end

    entity_surface.create_entity(new_entity_table)
  end
end)
