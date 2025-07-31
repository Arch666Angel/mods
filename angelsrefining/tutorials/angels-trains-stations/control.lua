require("story")
require("angels-train-stations")

function on_player_created(event)
  local player = game.players[event.player_index]
  player.game_view_settings = {
    show_side_menu = false,
    show_research_info = false,
    show_alert_gui = false,
    show_minimap = false,
  }
  game.permissions.get_group(0).set_allows_action(defines.input_action.remove_cables, false)
  game.permissions.get_group(0).set_allows_action(defines.input_action.open_production_gui, false)
  game.permissions.get_group(0).set_allows_action(defines.input_action.open_tips_and_tricks_gui, false)
  game.permissions.get_group(0).set_allows_action(defines.input_action.open_logistic_gui, false)
  game.permissions.get_group(0).set_allows_action(defines.input_action.open_technology_gui, false)
  player.force.disable_all_prototypes()
  player.force.mining_drill_productivity_bonus = 4

  player.set_quick_bar_slot(1, "rail")
  player.set_quick_bar_slot(2, "locomotive")
  player.set_quick_bar_slot(3, "cargo-wagon")
  player.set_quick_bar_slot(4, "train-stop")
  player.set_quick_bar_slot(5, "inserter")
  player.set_quick_bar_slot(6, "iron-chest")
  player.set_quick_bar_slot(7, "coal")
end
intermission = {
  init = function()
    flying_congrats(global.last_built_position)
    set_goal()
    set_info()
  end,
  condition = story_elapsed_check(2),
}
story_table = {
  {
    {
      init = function()
        recreate_entities_on_tick(entities, { offset = { 0, -16 } }, 1.4)
      end,
      condition = function()
        return recreate_entities_on_tick()
      end,
    },
    {
      init = function()
        for k, drill in pairs(surface().find_entities_filtered({ type = "mining-drill" })) do
          drill.mining_progress = math.random()
          drill.bonus_mining_progress = math.random()
        end
        for k, entity in pairs(surface().find_entities()) do
          entity.minable = false
          entity.operable = false
        end
        set_info({ text = { "intro" } })
        if player().input_method == defines.input_method.game_controller then
          set_info({ text = { "button-controller-note" }, append = true })
        end
        set_info({ custom_function = add_button, append = true })
        flash_goal()
      end,
      condition = function()
        return global.continue
      end,
    },
    {
      init = function()
        player().character.destructible = false
        local stop = surface().find_entities_filtered({ name = "train-stop", area = { { -50, 0 }, { 50, 50 } } })[1]
        surface().create_entity({ name = "fake-selection-box-2x2", position = stop.position })
        global.correct_position = { x = stop.position.x, y = stop.position.y }
        stop.destroy()
        player().insert({ name = "train-stop" })
        set_goal({ "place-stop" })
        set_info()
      end,
      condition = function()
        for k, stop in pairs(surface().find_entities_filtered({ name = "train-stop" })) do
          if stop.position.x == global.correct_position.x and stop.position.y == global.correct_position.y then
            global.correct_position = nil
            stop.minable = false
            stop.backer_name = "B"
            return true
          end
        end
      end,
      action = function()
        for k, entity in pairs(surface().find_entities_filtered({ type = "arrow" })) do
          entity.destroy()
        end
      end,
    },
    intermission,
    {
      init = function()
        set_goal({ "place-locomotive" })
        set_info({ text = { "place-locomotive-info" }, picture = "file/place-locomotive.png" })
        player().insert({ name = "locomotive" })
      end,
      condition = function()
        local offset = { x = -3, y = -2 } --The relationship between stop position and a locomotive placed at it
        for k, entity in pairs(surface().find_entities_filtered({ type = "locomotive" })) do
          if entity.orientation == 0.75 then
            local position = { x = entity.position.x + offset.x, y = entity.position.y + offset.y }
            for k, stop in pairs(surface().find_entities_filtered({ name = "train-stop" })) do
              if stop.position.x == position.x and stop.position.y == position.y then
                global.locomotive = entity
                return true
              end
            end
          end
        end
      end,
      action = function()
        global.locomotive.minable = false
        global.locomotive.rotatable = false
        global.locomotive.destructible = false
      end,
    },
    intermission,
    {
      init = function()
        set_goal({ "fuel-train" })
        set_info({ picture = "file/fuel-train.png" })
        global.locomotive.operable = false
        player().insert({ name = "coal", count = 50 })
        player().insert({ name = "inserter" })
        player().insert({ name = "iron-chest" })
      end,
      update = function(event)
        if event.name ~= defines.events.on_built_entity then
          return
        end
        local entity = event.created_entity
        if entity.name == "inserter" then
          global.inserter = entity
        end
      end,
      condition = function()
        if not global.inserter then
          return
        end
        if not global.inserter.valid then
          return
        end
        if (not global.inserter.drop_target) or not global.inserter.pickup_target then
          return
        end
        if not global.inserter.drop_target.name == "locomotive" then
          return
        end
        if not global.inserter.pickup_target.name == "iron-chest" then
          return
        end
        return global.locomotive.get_item_count("coal") > 0
      end,
      action = function()
        global.locomotive.operable = true
        global.last_built_position = nil
        player().clear_items_inside()
      end,
    },
    intermission,
    {
      init = function()
        player().insert({ name = "cargo-wagon" })
        set_goal({ "place-wagon" })
        set_info({ text = { "place-wagon-info" }, picture = "file/place-wagon.png" })
      end,
      condition = function(event)
        return global.locomotive.train.back_stock.name == "cargo-wagon"
      end,
      action = function(event)
        local wagon = surface().find_entities_filtered({ name = "cargo-wagon" })[1]
        wagon.minable = false
        wagon.destructible = false
        wagon.operable = false
        global.wagon = wagon
      end,
    },
    intermission,
    {
      init = function()
        set_goal({ "load-wagon" })
        set_info()
        player().insert({ name = "fast-inserter", count = 6 })
        player().set_quick_bar_slot(11, "fast-inserter")
        player().force.inserter_stack_size_bonus = 3
        for k, chest in pairs(surface().find_entities_filtered({ name = "steel-chest" })) do
          if chest.position.y > 0 then
            chest.clear_items_inside()
            chest.insert({ name = "angels-ore1", count = 1000 })
          end
        end
      end,
      condition = function()
        return global.wagon.get_item_count("angels-ore1") > 100
      end,
      action = function()
        global.last_built_position = global.wagon.position
        player().clear_items_inside()
      end,
    },
    intermission,
    {
      init = function()
        local stop
        for k, entity in pairs(surface().find_entities_filtered({ name = "train-stop" })) do
          if entity.position.y < 0 then
            stop = entity
            break
          end
        end
        global.stop = stop
        set_goal({ "set-schedule", stop.backer_name, { "gui-train.add-empty-condition" } })
        set_info({
          pictures = {
            { path = "file/add-station.png" },
            { path = "file/empty-cargo.png", split = true },
          },
        })
        global.last_built_position = global.locomotive.position
      end,
      condition = function()
        local schedule = global.locomotive.train.schedule
        if not schedule then
          return
        end
        local record = schedule.records[1]
        if not (record and record.wait_conditions) then
          return
        end
        return (record.station == global.stop.backer_name) and (record.wait_conditions[1].type == "empty")
      end,
    },
    intermission,
    {
      init = function()
        set_goal({ "start-train" })
        set_info({ picture = "file/start-train.png" })
      end,
      condition = function()
        return (global.locomotive.train.manual_mode == false)
      end,
      action = function()
        global.locomotive.operable = false
      end,
    },
    intermission,
    {
      condition = function()
        return global.locomotive.train.station ~= nil
      end,
    },
    {
      init = function()
        set_goal({ "unload-train" })
        set_info({ text = { "unload-train-info" } })
        local player = player()
        for name, count in pairs({
          ["fast-transport-belt"] = 20,
          ["fast-inserter"] = 20,
          ["fast-splitter"] = 5,
          ["fast-underground-belt"] = 10,
          ["steel-chest"] = 10,
        }) do
          player.insert({ name = name, count = count })
        end
        player.set_quick_bar_slot(12, "fast-transport-belt")
        player.set_quick_bar_slot(13, "fast-splitter")
        player.set_quick_bar_slot(14, "fast-underground-belt")
        player.set_quick_bar_slot(15, "steel-chest")
        for k, furnace in pairs(surface().find_entities_filtered({ name = "steel-furnace" })) do
          furnace.force = "neutral"
        end
        for k, crusher in pairs(surface().find_entities_filtered({ name = "angels-ore-crusher" })) do
          crusher.force = "neutral"
          crusher.set_recipe("angels-ore1-crushed")
        end
      end,
      condition = function()
        local chest = surface().find_entities_filtered({ name = "iron-chest", area = { { -50, -50 }, { 50, 0 } } })[1]
        return chest.get_item_count("iron-plate") > 0
      end,
      action = function()
        global.last_built_position = nil
      end,
    },
    intermission,
    {
      init = function()
        local load_stop
        for k, entity in pairs(surface().find_entities_filtered({ name = "train-stop" })) do
          if entity.position.y > 0 then
            load_stop = entity
            break
          end
        end
        global.load_stop = load_stop
        set_goal({ "set-schedule", load_stop.backer_name, { "gui-train.add-full-condition" } })
        global.last_built_position = global.locomotive.position
        global.locomotive.operable = true
      end,
      condition = function()
        local schedule = global.locomotive.train.schedule
        if not schedule then
          return
        end
        local record = schedule.records[2]
        if not record then
          return
        end
        if not record.wait_conditions then
          return
        end
        return (record.station == global.load_stop.backer_name) and (record.wait_conditions[1].type == "full")
      end,
    },
    intermission,
    {
      init = function()
        set_goal({ "trains-will-loop" })
        local wagon = surface().find_entities_filtered({ name = "cargo-wagon" })[1]
        wagon.clear_items_inside()
        wagon.get_inventory(defines.inventory.cargo_wagon).set_bar(5)
        for k, entity in pairs(surface().find_entities()) do
          entity.minable = true
          entity.operable = true
          entity.rotatable = true
        end
        set_info()
        if player().input_method == defines.input_method.game_controller then
          set_info({ text = { "button-controller-note" }, append = true })
        end
        set_info({
          custom_function = function(flow)
            add_button(flow).caption = { "continue" }
          end,
          append = true,
        })
      end,
      condition = function()
        return global.continue
      end,
    },
    intermission,
    {
      init = function()
        set_info({ text = { "finish-info" } })
        if player().input_method == defines.input_method.game_controller then
          set_info({ text = { "button-controller-note" }, append = true })
        end
        set_info({
          custom_function = function(flow)
            add_button(flow).caption = { "finish" }
          end,
          append = true,
        })
        set_goal(nil, false)
        player().insert({ name = "fast-inserter", count = 40 })
        player().insert({ name = "fast-transport-belt", count = 200 })
        player().insert({ name = "fast-splitter", count = 10 })
        player().insert({ name = "fast-underground-belt", count = 10 })
        player().insert({ name = "locomotive", count = 3 })
        player().insert({ name = "cargo-wagon", count = 3 })
        player().insert({ name = "train-stop", count = 5 })
        player().insert({ name = "rail", count = 1000 })
        player().insert({ name = "steel-chest", count = 30 })
        player().insert({ name = "coal", count = 500 })
        player().insert({ name = "medium-electric-pole", count = 20 })
        player().insert({ name = "electronic-circuit", count = 4000 })
        player().set_quick_bar_slot(8, "medium-electric-pole")
      end,
      condition = function()
        return global.continue
      end,
    },
  },
}

story_init_helpers(story_table)

script.on_init(function()
  game.forces.player.manual_mining_speed_modifier = 4
  game.forces.player.disable_all_prototypes()
  surface().always_day = true
  global.story = story_init()
end)

script.on_event(defines.events, function(event)
  story_update(global.story, event, "")
  if event.name == defines.events.on_player_created then
    on_player_created(event)
  end
end)
