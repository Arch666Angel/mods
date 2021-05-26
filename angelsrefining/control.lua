script.on_init(function()
  if remote.interfaces["freeplay"] then
    local items_to_insert = remote.call("freeplay", "get_created_items")
    local technology_overhaul = game.active_mods["angelsindustries"] and settings.startup["angels-enable-tech"].value or false
    local components_overhaul = technology_overhaul or (game.active_mods["angelsindustries"] and settings.startup["angels-enable-components"].value) or false
    
    -- give ore crushers
    items_to_insert["burner-ore-crusher"] = (items_to_insert["burner-ore-crusher"] or 0) + 1
    if game.active_mods["bobclasses"] then
      -- fix character classes starting point
      if components_overhaul then
	-- give two additional iron plates
        items_to_insert["iron-plate"] = (items_to_insert["iron-plate"] or 0) + 2
      end
    end
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

script.on_event(defines.events.on_cutscene_cancelled, function(event)
  if game.active_mods['angelsexploration'] then return end

  local player = game.players[event.player_index]

  local welcomeFrame = player.gui.screen.add(
    {
      type = 'frame',
      name = 'angels_welcome_screen',
      direction = 'vertical'
    }
  )
  welcomeFrame.style.maximal_width = 400

  local welcomeFrameHeader = welcomeFrame.add(
    {
      type = 'flow',
      name = 'header',
    }
  )
  welcomeFrameHeader.drag_target = welcomeFrame
  welcomeFrameHeader.style.horizontally_stretchable = true

  welcomeFrameHeader.add(
    {
      type = 'label',
      name = 'header_label',
      caption = {"angels-welcome-message-gui.title"},
      style = 'frame_title',
      ignored_by_interaction = true
    }
  ).drag_target = welcomeFrame

  local headerSpace = welcomeFrameHeader.add(
    {
      type = 'empty-widget',
      name = 'space',
      style = 'draggable_space_header',
      ignored_by_interaction = true
    }
  )
  headerSpace.style.horizontally_stretchable = true
  headerSpace.style.height = 24
  headerSpace.style.right_margin = 4

  welcomeFrameHeader.add(
    {
      type = "sprite-button",
      name = 'welcome_close_button',
      sprite = "utility/close_white",
      hovered_sprite = "utility/close_black",
      clicked_sprite = "utility/close_black",
      style = 'frame_action_button'
    }
  )

  welcomeFrame.force_auto_center()

  local welcomeFrameContent = welcomeFrame.add(
    {
      type = 'frame',
      name = 'angels_welcome_screen_content',
      direction = 'vertical',
      style = 'inside_shallow_frame_with_padding',
    }
  )

  welcomeFrameContent.add(
    {
      type = 'label',
      name = 'intro_message',
      caption = {'', {'angels-welcome-message.intro'}, '\n'},
      ignored_by_interaction = true
    }
  ).style.single_line = false

  local pollutionSetting = game.map_settings.pollution.enabled and "enabled" or "disabled"
  welcomeFrameContent.add(
    {
      type = 'label',
      name = 'pollution_message',
      caption = {'', '     ', {'angels-welcome-message-settings.pollution-setting', {'angels-welcome-message-settings.' .. pollutionSetting}}, ' [img=info]'},
      tooltip = {'angels-welcome-message-settings-tooltip.pollution-setting'},
    }
  )

  local enemySizeSetting = player.surface.map_gen_settings['autoplace_controls']['angels-biter-slider'].size > 1 and "enabled" or "disabled"
  welcomeFrameContent.add(
    {
      type = 'label',
      name = 'enemy_size_message',
      caption = {'', '     ', {'angels-welcome-message-settings.enemy-setting', {'angels-welcome-message-settings.' .. enemySizeSetting}}, ' [img=info]'},
      tooltip = {'angels-welcome-message-settings-tooltip.enemy-setting'},
    }
  )

  local enemyEvolutionSetting = game.map_settings.enemy_evolution.enabled and "enabled" or "disabled"
  welcomeFrameContent.add(
    {
      type = 'label',
      name = 'enemy_evolution_message',
      caption = {'', '     ', {'angels-welcome-message-settings.evolution-setting', {'angels-welcome-message-settings.' .. enemyEvolutionSetting}}, ' [img=info]'},
      tooltip = {'angels-welcome-message-settings-tooltip.evolution-setting'},
    }
  )

  local enemyExpansionSetting = game.map_settings.enemy_expansion.enabled and "enabled" or "disabled"
  welcomeFrameContent.add(
    {
      type = 'label',
      name = 'expansion_message',
      caption = {'', '     ', {'angels-welcome-message-settings.expansion-setting', {'angels-welcome-message-settings.' .. enemyExpansionSetting}}, ' [img=info]'},
      tooltip = {'angels-welcome-message-settings-tooltip.expansion-setting'},
    }
  )

  welcomeFrameContent.add(
    {
      type = 'label',
      name = 'faq',
      caption = {'', '\n', {'angels-welcome-message.outro'}},
      ignored_by_interaction = true
    }
  ).style.single_line = false

  local welcomeFrameFooter = welcomeFrame.add(
    {
      type = 'flow',
      name = 'footer',
      style = 'dialog_buttons_horizontal_flow'
    }
  )
  welcomeFrameFooter.style.horizontally_stretchable = true

  local footerSpace = welcomeFrameFooter.add(
    {
      type = 'empty-widget',
      name = 'bottom_space',
      --style = 'draggable_space'
      style = 'draggable_space_with_no_left_margin',
      ignored_by_interaction = true
    }
  )
  footerSpace.style.horizontally_stretchable = true
  footerSpace.style.height = 32

  welcomeFrameFooter.add(
    {
      type = 'button',
      name = 'welcome_accept_button',
      caption = {"angels-welcome-message-gui.confirm-button"},
      style = 'confirm_button'
    }
  )

end)

script.on_event(defines.events.on_gui_click, function(event)
  if event.element.name == 'welcome_close_button' or event.element.name == 'welcome_accept_button' then
    local player = game.players[event.player_index]
    if player.gui.screen.angels_welcome_screen then
      player.gui.screen.angels_welcome_screen.destroy()
    end
  end
end)

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
