require("util")

-- Create class ---------------------------------------------------------------
local debug_info = {}
debug_info.debug_enabled = false -- disable before release!

-------------------------------------------------------------------------------
-- Initiation of the class
-------------------------------------------------------------------------------
function debug_info:on_init()
  if not global.debug_data then
    global.debug_data = self:init_global_data()
  end
end

function debug_info:init_global_data()
  if not debug_info.debug_enabled then
    return {}
  end
  local debug_data = {
    ["version"] = 1, -- version of the global data

    ["prototype_data"] = self:init_prototype_data(), -- data storing info about the prototypes
  }
  return debug_data
end

function debug_info:init_prototype_data()
  return {
    ["enemy_statistics"] = self:init_enemy_data(500),
  }
end

function debug_info:init_enemy_data(resolution)
  -- STEP 1 get a list of all biter spawners and spawning units
  local enemy_units = {}
  local entity_prototypes = game.entity_prototypes
  for entity_name, entity_prototype in pairs(entity_prototypes) do
    if entity_prototype.type == "unit-spawner" then
      enemy_units[entity_name] = {}
      for _, unit_spawn_data in pairs(entity_prototype.result_units) do
        enemy_units[entity_name][unit_spawn_data.unit] = unit_spawn_data.spawn_points
      end
    end
  end

  -- STEP 2 get a list of all weighted unit spawn rate for each spawner
  local function interpolate_weighted_spawn_rate(weighted_rates, evolution_factor, precission)
    local max_precission = 10
    precission = precission or max_precission
    local precission_factor = 10 ^ math.min(math.max(0, math.floor(precission + 0.5)), max_precission)

    -- make sure data is valid
    if type(weighted_rates) ~= "table" then
      return
    end
    local _, first_point = next(weighted_rates)

    -- lower end of the evolution range
    if evolution_factor <= first_point.evolution_factor then
      return first_point.weight
    end

    -- middle part of the evolution range
    for _, weighted_rate in pairs(weighted_rates) do
      if evolution_factor == weighted_rate.evolution_factor then
        return weighted_rate.weight -- if it is reference point, no interpolation is required
      elseif evolution_factor > weighted_rate.evolution_factor then
        first_point = weighted_rate
      else -- evolution_factor < weighted_rate.evolution_factor => second_point found
        local second_point = weighted_rate

        -- linear interpolation: y = y1 + ((x – x1) / (x2 – x1)) * (y2 – y1)
        local res = first_point.weight
          + (
              (evolution_factor - first_point.evolution_factor)
              / (second_point.evolution_factor - first_point.evolution_factor)
            )
            * (second_point.weight - first_point.weight)
        return math.floor(res * precission_factor + 0.5) / precission_factor
      end
    end

    -- upper end of the evolution range
    return first_point.weight
  end

  local weighted_enemy_unit_rate = {}
  for spawner_name, spawn_data in pairs(enemy_units) do
    weighted_enemy_unit_rate[spawner_name] = {}
    for enemy_name, enemy_weighted_rate in pairs(spawn_data) do
      weighted_enemy_unit_rate[spawner_name][enemy_name] = {}
      for evolution_factor = 0, resolution do
        weighted_enemy_unit_rate[spawner_name][enemy_name][evolution_factor] =
          interpolate_weighted_spawn_rate(enemy_weighted_rate, evolution_factor / resolution)
      end
    end
  end

  -- STEP 3 normalize the spawn rate probabilities for each spawner
  for spawner_name, spawn_data in pairs(weighted_enemy_unit_rate) do
    for enemy_name, _ in pairs(spawn_data) do
      enemy_units[spawner_name][enemy_name] = {}
    end
    for evolution_factor = 0, resolution do
      local relative_total_spawn_rate = 0
      for enemy_name, enemy_weighted_rate in pairs(spawn_data) do
        relative_total_spawn_rate = relative_total_spawn_rate
          + weighted_enemy_unit_rate[spawner_name][enemy_name][evolution_factor]
      end
      for enemy_name, enemy_weighted_rate in pairs(spawn_data) do
        enemy_units[spawner_name][enemy_name][evolution_factor] = weighted_enemy_unit_rate[spawner_name][enemy_name][evolution_factor]
          / relative_total_spawn_rate
      end
    end
  end

  return enemy_units
end

-------------------------------------------------------------------------------
-- Setter functions to alter data into the data structure
-------------------------------------------------------------------------------
function debug_info:create_enemy_statistic_captions(sections)
  local enemy_statistics = self:get_enemy_statistics()

  local _, statistics_precission = next(enemy_statistics)
  _, statistics_precission = next(statistics_precission)
  statistics_precission = #statistics_precission

  local enemy_order = self:create_enemy_spawn_order()
  local graph_colors = self:create_graph_colors()

  local caption_lines = {}
  for spawner_name, spawn_data in pairs(enemy_statistics) do
    local caption_sections = {}
    for section = 0, sections do
      caption_sections[section] = {}
      for evolution_factor = 0, statistics_precission do
        caption_sections[section][evolution_factor] = {}
      end
    end
    for unit_name, unit_data in pairs(spawn_data) do
      for evolution_factor, spawn_probability in pairs(unit_data) do
        table.insert(caption_sections[math.floor(spawn_probability * sections + 0.5)][evolution_factor], unit_name)
      end
    end

    caption_lines[spawner_name] = {}
    for line = 0, sections do
      local caption_line = ""
      for x = 0, statistics_precission do
        local graph_count = #caption_sections[line][x]
        if graph_count > 0 then
          if graph_count > 1 then -- multipe graphs at this spot
            caption_line = caption_line .. "[color=1,1,1]A[/color]"
          else -- single graph at this spot
            local _, unit_name = next(caption_sections[line][x])
            local unit_color = graph_colors[enemy_order[spawner_name][unit_name]] or { r = 1, g = 1, b = 1 }
            caption_line = caption_line
              .. "[color="
              .. unit_color.r
              .. ","
              .. unit_color.g
              .. ","
              .. unit_color.b
              .. "]A[/color]"
          end
        else -- no graph at this spot
          caption_line = caption_line .. "[color=36,35,36]A[/color]"
        end
      end
      caption_lines[spawner_name][line] = caption_line
    end
  end

  return caption_lines
end

function debug_info:create_enemy_spawn_order()
  local enemy_statistics = self:get_enemy_statistics()

  local _, statistics_precission = next(enemy_statistics)
  _, statistics_precission = next(statistics_precission)
  statistics_precission = #statistics_precission

  local spawn_order = {}
  for spawner_name, spawn_data in pairs(enemy_statistics) do
    local start_evolution = {}
    local start_amount = 0
    for unit_name, unit_data in pairs(spawn_data) do
      for evolution_factor, spawn_probability in pairs(unit_data) do
        if spawn_probability > 0 then
          start_evolution[unit_name] = evolution_factor
          start_amount = start_amount + 1
          break
        end
      end
    end

    if start_amount > 0 then
      spawn_order[spawner_name] = {}
      for spawn_index = 1, start_amount do
        local lowest_evolution = statistics_precission + 1 -- impossible value
        local lowest_evolution_unit_name = nil
        for unit_name, evolution_factor in pairs(start_evolution) do
          if evolution_factor < lowest_evolution then
            lowest_evolution = evolution_factor
            lowest_evolution_unit_name = unit_name
          end
        end
        if lowest_evolution <= statistics_precission then
          spawn_order[spawner_name][lowest_evolution_unit_name] = spawn_index
          start_evolution[lowest_evolution_unit_name] = nil
        end
      end
    end
  end

  return spawn_order
end

function debug_info:create_graph_colors()
  return {
    { r = 1, g = 0, b = 0 },
    { r = 0, g = 1, b = 0 },
    { r = 0, g = 0, b = 1 },
    { r = 1, g = 0, b = 1 },
    { r = 1, g = 1, b = 0 },
    { r = 0, g = 1, b = 1 },
    { r = 1, g = 165 / 255, b = 0 },
    { r = 0, g = 0.5, b = 0.5 },
    { r = 165 / 255, g = 042 / 255, b = 042 / 255 },
    { r = 150 / 255, g = 1, b = 0.2 },
  }
end

-------------------------------------------------------------------------------
-- Getter functions to extract data from the data structure
-------------------------------------------------------------------------------
function debug_info:get_enemy_statistics()
  return global.debug_data.prototype_data.enemy_statistics
end

-------------------------------------------------------------------------------
-- Behaviour functions, mostly event handlers
-------------------------------------------------------------------------------
function debug_info:create_enemy_statistics(root_element)
  -- STEP 1: create UI frame
  local frame = root_element.add({
    type = "frame",
    direction = "vertical",
  })
  local header = frame.add({
    type = "flow",
    direction = "horizontal",
  })
  header.style.horizontally_stretchable = true
  header.add({
    type = "label",
    caption = "Enemy spawn probability",
    style = "frame_title",
    ignored_by_interaction = true,
  })
  local drag_space = header.add({
    type = "empty-widget",
    style = "draggable_space_header",
  })
  drag_space.drag_target = frame
  local drag_space_style = drag_space.style
  drag_space_style.horizontally_stretchable = true
  drag_space_style.minimal_width = 24
  drag_space_style.natural_height = 24

  -- STEP 2: create graph content space
  local content_table = frame
    .add({
      type = "scroll-pane",
      horizontal_scroll_policy = "never",
      vertical_scroll_policy = "auto",
    })
    .add({
      type = "table",
      column_count = 2,
      draw_horizontal_lines = true,
    })
  content_table.style.cell_padding = 2
  local enemy_captions = self:create_enemy_statistic_captions(100)
  for spawner_name, spawner_data in pairs(enemy_captions) do
    local legend_flow = content_table.add({
      type = "flow",
      direction = "vertical",
    })
    legend_flow.add({
      type = "label",
      caption = { "", "[img=entity/" .. spawner_name .. "] ", { "entity-name." .. spawner_name } },
      style = "heading_2_label",
    })
    local legend_pane = legend_flow.add({
      type = "scroll-pane",
      horizontal_scroll_policy = "never",
      vertical_scroll_policy = "always",
    })
    legend_pane.style.width = 250
    legend_pane.style.height = 170
    legend_flow = legend_pane.add({
      type = "flow",
      direction = "vertical",
    })
    local enemy_order = self:create_enemy_spawn_order()
    local graph_colors = self:create_graph_colors()
    for unit_name, unit_order in pairs(enemy_order[spawner_name]) do
      local unit_color = graph_colors[unit_order] or { r = 1, g = 1, b = 1 }
      local style = legend_flow.add({
        type = "label",
        caption = {
          "",
          "[img=entity/"
            .. unit_name
            .. "] [color="
            .. unit_color.r
            .. ","
            .. unit_color.g
            .. ","
            .. unit_color.b
            .. "]",
          { "entity-name." .. unit_name },
          "[/color]",
        },
      }).style
      style.minimal_height = 10
      style.rich_text_setting = defines.rich_text_setting.enabled
    end
    local content = content_table.add({
      type = "frame",
      direction = "vertical",
      style = "inside_shallow_frame",
    })
    for y = #spawner_data, 1, -1 do
      content.add({
        type = "label",
        name = y,
        caption = spawner_data[y],
        style = "enemy_statistics_graph_label",
      })
    end
  end
end

function debug_info:on_player_created(player_index)
  local player = game.get_player(player_index)
  if debug_info.debug_enabled and player.name == "lovely_santa" then
    debug_info:create_enemy_statistics(player.gui.screen)
  end
end

-- Return class ---------------------------------------------------------------
return debug_info
