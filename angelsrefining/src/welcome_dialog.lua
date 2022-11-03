-- This class keeps track of welcome screen that appears when not playing with angels exploration.

-- Create class ---------------------------------------------------------------
local welcome_dialog = {}

-------------------------------------------------------------------------------
-- Initiation of the class
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Behavioural functions
-------------------------------------------------------------------------------
function welcome_dialog:create_welcome_dialog(player_index)
  local player = game.players[player_index]

  local welcomeFrame = player.gui.screen.add({
    type = "frame",
    name = "angels_welcome_screen",
    direction = "vertical",
  })
  welcomeFrame.style.maximal_width = 400

  local welcomeFrameHeader = welcomeFrame.add({
    type = "flow",
    name = "header",
  })
  welcomeFrameHeader.drag_target = welcomeFrame
  welcomeFrameHeader.style.horizontally_stretchable = true

  welcomeFrameHeader.add({
    type = "label",
    name = "header_label",
    caption = { "angels-welcome-message-gui.title" },
    style = "frame_title",
    ignored_by_interaction = true,
  }).drag_target =
    welcomeFrame

  local headerSpace = welcomeFrameHeader.add({
    type = "empty-widget",
    name = "space",
    style = "draggable_space_header",
    ignored_by_interaction = true,
  })
  headerSpace.style.horizontally_stretchable = true
  headerSpace.style.height = 24
  headerSpace.style.right_margin = 4

  welcomeFrameHeader.add({
    type = "sprite-button",
    name = "welcome_close_button",
    sprite = "utility/close_white",
    hovered_sprite = "utility/close_black",
    clicked_sprite = "utility/close_black",
    style = "frame_action_button",
  })

  welcomeFrame.force_auto_center()

  local welcomeFrameContent = welcomeFrame.add({
    type = "frame",
    name = "angels_welcome_screen_content",
    direction = "vertical",
    style = "inside_shallow_frame_with_padding",
  })

  welcomeFrameContent.add({
    type = "label",
    name = "intro_message",
    caption = { "", { "angels-welcome-message.intro" }, "\n" },
    ignored_by_interaction = true,
  }).style.single_line =
    false

  local pollutionSetting = game.map_settings.pollution.enabled and "enabled" or "disabled"
  welcomeFrameContent.add({
    type = "label",
    name = "pollution_message",
    caption = {
      "",
      "     ",
      {
        "angels-welcome-message-settings.pollution-setting",
        { "angels-welcome-message-settings." .. pollutionSetting },
      },
      " [img=info]",
    },
    tooltip = { "angels-welcome-message-settings-tooltip.pollution-setting" },
  })

  local enemySizeSetting = ((player.surface.map_gen_settings["autoplace_controls"] or {})["angels-biter-slider"] or {
    ["size"] = 0,
  })["size"] > 1 and "enabled" or "disabled"
  welcomeFrameContent.add({
    type = "label",
    name = "enemy_size_message",
    caption = {
      "",
      "     ",
      { "angels-welcome-message-settings.enemy-setting", { "angels-welcome-message-settings." .. enemySizeSetting } },
      " [img=info]",
    },
    tooltip = { "angels-welcome-message-settings-tooltip.enemy-setting" },
  })

  local enemyEvolutionSetting = game.map_settings.enemy_evolution.enabled and "enabled" or "disabled"
  welcomeFrameContent.add({
    type = "label",
    name = "enemy_evolution_message",
    caption = {
      "",
      "     ",
      {
        "angels-welcome-message-settings.evolution-setting",
        { "angels-welcome-message-settings." .. enemyEvolutionSetting },
      },
      " [img=info]",
    },
    tooltip = { "angels-welcome-message-settings-tooltip.evolution-setting" },
  })

  local enemyExpansionSetting = game.map_settings.enemy_expansion.enabled and "enabled" or "disabled"
  welcomeFrameContent.add({
    type = "label",
    name = "expansion_message",
    caption = {
      "",
      "     ",
      {
        "angels-welcome-message-settings.expansion-setting",
        { "angels-welcome-message-settings." .. enemyExpansionSetting },
      },
      " [img=info]",
    },
    tooltip = { "angels-welcome-message-settings-tooltip.expansion-setting" },
  })

  welcomeFrameContent.add({
    type = "label",
    name = "faq",
    caption = { "", "\n", { "angels-welcome-message.outro" } },
    ignored_by_interaction = true,
  }).style.single_line =
    false

  local welcomeFrameFooter = welcomeFrame.add({
    type = "flow",
    name = "footer",
    style = "dialog_buttons_horizontal_flow",
  })
  welcomeFrameFooter.style.horizontally_stretchable = true

  local footerSpace = welcomeFrameFooter.add({
    type = "empty-widget",
    name = "bottom_space",
    --style = 'draggable_space'
    style = "draggable_space_with_no_left_margin",
    ignored_by_interaction = true,
  })
  footerSpace.style.horizontally_stretchable = true
  footerSpace.style.height = 32

  welcomeFrameFooter.add({
    type = "button",
    name = "welcome_accept_button",
    caption = { "angels-welcome-message-gui.confirm-button" },
    style = "confirm_button",
  })
end

function welcome_dialog:destroy_welcome_dialog(player_index)
  local player = game.players[player_index]
  local dialog_screen = player.gui.screen["angels_welcome_screen"]
  if dialog_screen then
    dialog_screen.destroy()
  end
end

-------------------------------------------------------------------------------
-- Event handlers
-------------------------------------------------------------------------------
function welcome_dialog:on_cutscene_cancelled(player_index)
  if game.active_mods["angelsexploration"] then
    return
  end
  self:create_welcome_dialog(player_index)
end

function welcome_dialog:on_gui_click(gui_element_name, player_index)
  if gui_element_name == "welcome_close_button" or gui_element_name == "welcome_accept_button" then
    self:destroy_welcome_dialog(player_index)
  end
end

-- Return class ---------------------------------------------------------------
return welcome_dialog
