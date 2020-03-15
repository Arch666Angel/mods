global.is_lab_given = false
local main_lab = "angels-main-lab"

local function remove_lab_from_inv(inventory)
  if inventory and inventory.get_item_count(main_lab) then
    inventory.remove {name = main_lab}
    global.is_lab_given = false
  end
end

script.on_event(
  {defines.events.on_player_created, defines.events.on_player_respawned},
  function(event)
    if not global.is_lab_given and game.entity_prototypes[main_lab] then
      game.players[event.player_index].insert {name = main_lab, count = 1}
      global.is_lab_given = true
    end
  end
)

script.on_event(
  defines.events.on_entity_died,
  function(event)
    if game.entity_prototypes[main_lab] then
      local etype = event.entity.type
      if event.entity.name == main_lab then
        global.is_lab_given = false
      elseif etype == "container" or etype == "logistic-container" then
        remove_lab_from_inv(event.entity.get_inventory(defines.inventory.chest))
      elseif etype == "construction-robot" or etype == "logistic-robot" then
        remove_lab_from_inv(event.entity.get_inventory(defines.inventory.robot_cargo))
      end
    end
  end
)

script.on_event(
  defines.events.on_pre_player_died,
  function(event)
    if game.entity_prototypes[main_lab] then
      remove_lab_from_inv(game.players[event.player_index].get_main_inventory())
    end
  end
)
