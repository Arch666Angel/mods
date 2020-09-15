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

script.on_event(defines.events.on_cutscene_cancelled, function(event)

if not game.active_mods['angelsexploration'] then

local player = game.players[event.player_index]

local welcome = player.gui.screen.add(
  {
    type = 'frame',
    name = 'welcome_screen',
    direction = 'vertical',
  }
)

welcome.style.maximal_width = 400

welcome.add(
  {
    type = 'flow',
    name = 'header',
  }
)

welcome.header.drag_target = welcome

welcome.header.add(
  {
    type = 'label',
    name = 'header_label',
    caption = 'Enemy settings'
  }
)

welcome.header.header_label.drag_target = welcome

welcome.header.add(
  {
    type = 'empty-widget',
    name = 'space',
  }
)

welcome.header.space.drag_target = welcome

welcome.header.space.style.horizontally_stretchable = true

welcome.header.add(
  {
    type = "sprite-button",
    name = 'welcome_close_button',
    sprite = "utility/close_fat"
  }
)

welcome.header.style.horizontal_align = 'right'

welcome.force_auto_center()

local pollution = ''
if game.map_settings.pollution.enabled == true then
  pollution = {'angels_welcome_accept_button.enabled'}
else
  pollution = {'angels_welcome_accept_button.disabled'}
end

--local string = ({'angels_welcome_accept_button.pollution-check', pollution})

welcome.add(
  {
    type = 'label',
    name = 'pollution_message',
    caption = {'angels_welcome_accept_button.pollution-check', pollution}
  }
)

local enemy = ''
if player.surface.map_gen_settings['autoplace_controls']['angels-biter-slider'].size > 1 then
  enemy = {'angels_welcome_accept_button.enabled'}
else
  enemy = {'angels_welcome_accept_button.disabled'}
end

welcome.add(
  {
    type = 'label',
    name = 'enemy_message',
    caption = {'angels_welcome_accept_button.enemy-check', enemy}
  }
)

local evo = ''
if game.map_settings.enemy_evolution.enabled == true then
  evo = {'angels_welcome_accept_button.enabled'}
else
  evo = {'angels_welcome_accept_button.disabled'}
end

welcome.add(
  {
    type = 'label',
    name = 'evolution_message',
    caption = {'angels_welcome_accept_button.evo-check', evo}
  }
)

local exp = ''
if game.map_settings.enemy_expansion.enabled == true then
  exp = {'angels_welcome_accept_button.enabled'}
else
  exp = {'angels_welcome_accept_button.disabled'}
end

welcome.add(
  {
    type = 'label',
    name = 'expansion_message',
    caption = {'angels_welcome_accept_button.exp-check', exp}
  }
)

welcome.add(
  {
    type = 'label',
    name = 'faq',
    caption = {'angels_welcome_accept_button.faq'}
  }
)

welcome.faq.style.single_line = false

welcome.add(
  {
    type = 'flow',
    name = 'bottom',
  }
)

welcome.bottom.style.horizontal_align = 'right'
welcome.bottom.add(
  {
    type = 'empty-widget',
    name = 'bottom_space',
  }
)

welcome.bottom.bottom_space.style.horizontally_stretchable = true

welcome.bottom.add(
  {
    type = 'button',
    name = 'welcome_accept_button',
    caption = 'OK'
  }
)

welcome.bottom.welcome_accept_button.style = 'confirm_button'

end

end)

script.on_event(defines.events.on_gui_click, function(event)

  local player = game.players[event.player_index]

  if event.element.name == 'welcome_close_button' and player.gui.screen.welcome_screen ~= nil then
    player.gui.screen.welcome_screen.destroy()
  elseif event.element.name == 'welcome_accept_button' and player.gui.screen.welcome_screen ~= nil then
    player.gui.screen.welcome_screen.destroy()
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
