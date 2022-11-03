-- control behaviour to prevent agriculture modules from being used in research labs
local angels_bio_modules = {
  ["angels-bio-yield-module"] = true,
  ["angels-bio-yield-module-2"] = true,
  ["angels-bio-yield-module-3"] = true,
  ["angels-bio-yield-module-4"] = true,
  ["angels-bio-yield-module-5"] = true,
  ["angels-bio-yield-module-6"] = true,
  ["angels-bio-yield-module-7"] = true,
  ["angels-bio-yield-module-8"] = true,
}

function on_ghost_build(ghost_entity)
  if not (ghost_entity and ghost_entity.valid) then
    return
  end
  local item_request_proxy = ghost_entity.item_requests
  for module_name, _ in pairs(angels_bio_modules) do
    item_request_proxy[module_name] = nil
  end
  ghost_entity.item_requests = item_request_proxy
end

script.on_event(defines.events.on_built_entity, function(event)
  on_ghost_build(event.created_entity)
end, {
  { filter = "ghost_type", type = "lab" },
  { filter = "ghost_type", type = "mining-drill" },
})

script.on_event(defines.events.on_robot_built_entity, function(event)
  on_ghost_build(event.created_entity)
end, {
  { filter = "ghost_type", type = "lab" },
  { filter = "ghost_type", type = "mining-drill" },
})

script.on_event(defines.events.on_entity_cloned, function(event)
  on_ghost_build(event.source) -- you never know where the source came from...
  on_ghost_build(event.destination)
end, {
  { filter = "ghost_type", type = "lab" },
  { filter = "ghost_type", type = "mining-drill" },
})

script.on_event(defines.events.script_raised_revive, function(event)
  on_ghost_build(event.entity)
end, {
  { filter = "ghost_type", type = "lab" },
  { filter = "ghost_type", type = "mining-drill" },
})

script.on_event(defines.events.script_raised_built, function(event)
  on_ghost_build(event.entity)
end, {
  { filter = "ghost_type", type = "lab" },
  { filter = "ghost_type", type = "mining-drill" },
})

script.on_event(defines.events.on_player_fast_transferred, function(event)
  if not event.from_player then
    return
  end

  local entity = event.entity
  if not (entity.type == "lab" or entity.type == "mining-drill") then
    return
  end

  local player = game.get_player(event.player_index)
  local player_cursor_stack = player.cursor_stack
  if not player_cursor_stack then
    return
  end

  local module_inventory = entity.get_module_inventory()
  if not module_inventory then
    return
  end

  local module_inventory_content = module_inventory.get_contents()
  for module_name, module_count in pairs(module_inventory_content) do
    if angels_bio_modules[module_name] then -- module_count > 0
      local remaining = module_inventory.remove({
        name = module_name,
        count = module_count,
      })
      if player_cursor_stack.valid_for_read then
        if player_cursor_stack.name == module_name then
          local player_cursor_stack_count = player_cursor_stack.count
          player_cursor_stack.set_stack({ name = module_name, count = player_cursor_stack_count + remaining })
          remaining = remaining - (player_cursor_stack.count - player_cursor_stack_count)
        end
      else
        if player_cursor_stack.can_set_stack({ name = module_name, count = 1 }) then
          player_cursor_stack.set_stack({ name = module_name, count = remaining })
          if player_cursor_stack.valid_for_read and player_cursor_stack.name == module_name then
            remaining = remaining - player_cursor_stack.count
          end
        end
      end
      if remaining > 0 then
        remaining = remaining - player.insert({
          name = module_name,
          count = remaining,
        })
        if remaining > 0 then
          player.surface.spill_item_stack(player.position, {
            name = module_name,
            count = remaining,
          }, true, entity.force, false)
        end
      end
    end
  end
end)

script.on_event(defines.events.on_player_cursor_stack_changed, function(event)
  local player = game.get_player(event.player_index)
  local opened_entity = player.opened
  if not (opened_entity and opened_entity.valid) then
    return
  end
  if opened_entity.object_name == "LuaEquipmentGrid" or opened_entity.object_name == "LuaPlayer" then
    return
  end
  if not (opened_entity.type == "lab" or opened_entity.type == "mining-drill") then
    return
  end

  local player_cursor_stack = player.cursor_stack
  if not player_cursor_stack then
    return
  end

  local module_inventory = opened_entity.get_module_inventory()
  if not module_inventory then
    return
  end

  local module_inventory_content = module_inventory.get_contents()
  for module_name, module_count in pairs(module_inventory_content) do
    if angels_bio_modules[module_name] then -- count > 0
      local remaining = module_inventory.remove({
        name = module_name,
        count = module_count,
      })
      if player_cursor_stack.valid_for_read then
        if player_cursor_stack.name == module_name then
          local player_cursor_stack_count = player_cursor_stack.count
          player_cursor_stack.set_stack({ name = module_name, count = player_cursor_stack_count + remaining })
          remaining = remaining - (player_cursor_stack.count - player_cursor_stack_count)
        end
      else
        if player_cursor_stack.can_set_stack({ name = module_name, count = 1 }) then
          player_cursor_stack.set_stack({ name = module_name, count = remaining })
          if player_cursor_stack.valid_for_read and player_cursor_stack.name == module_name then
            remaining = remaining - player_cursor_stack.count
          end
        end
      end
      if remaining > 0 then
        remaining = remaining - player.insert({
          name = module_name,
          count = remaining,
        })
        if remaining > 0 then
          player.surface.spill_item_stack(player.position, {
            name = module_name,
            count = remaining,
          }, true, opened_entity.force, false)
        end
      end
    end
  end
end)

script.on_event(defines.events.on_player_main_inventory_changed, function(event)
  local player = game.get_player(event.player_index)
  local opened_entity = player.opened
  if not (opened_entity and opened_entity.valid) then
    return
  end
  if opened_entity.object_name == "LuaEquipmentGrid" or opened_entity.object_name == "LuaPlayer" then
    return
  end
  if not (opened_entity.type == "lab" or opened_entity.type == "mining-drill") then
    return
  end

  local module_inventory = opened_entity.get_module_inventory()
  if not module_inventory then
    return
  end

  local module_inventory_content = module_inventory.get_contents()
  for module_name, module_count in pairs(module_inventory_content) do
    if angels_bio_modules[module_name] then -- count > 0
      local remaining = module_inventory.remove({
        name = module_name,
        count = module_count,
      })
      remaining = remaining - player.insert({
        name = module_name,
        count = remaining,
      })
      if remaining > 0 then
        player.surface.spill_item_stack(player.position, {
          name = module_name,
          count = remaining,
        }, true, opened_entity.force, false)
      end
    end
  end
end)
