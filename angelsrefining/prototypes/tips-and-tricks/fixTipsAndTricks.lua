-- modify base game tips-and-tricks to prevent crashes

if data.raw["tutorial"]["trains-stations"]["scenario"] == "trains-stations" then
  data:extend({
    {
      type = "tutorial",
      name = "angels-trains-stations",
      scenario = "angels-trains-stations",
    },
  })
  data.raw["tips-and-tricks-item"]["train-stops"]["tutorial"] = "angels-trains-stations"
end

data.raw["tips-and-tricks-item"]["clear-cursor"].simulation.init = [[
    require("__core__/lualib/story")
    player = game.simulation.create_test_player{name = "big k"}
    player.teleport({0, 4.5})
    game.simulation.camera_player = player
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_player_cursor_position = player.position

    player.insert{name = "iron-plate", count = 300}
    player.clear_inventory_highlights()
    player.opened = player

    local story_table =
    {
      {
        {
          name = "start",
          condition = function()
            local target = game.simulation.get_slot_position{inventory_index = defines.inventory.character_main, slot_index = 1}
            return game.simulation.move_cursor({position = target})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.control_press{control = "pick-item", notify = false} end
        },
        { condition = story_elapsed_check(0.25) },
        { condition = function() return game.simulation.move_cursor({position = {player.position.x - 2, player.position.y - 0.5}}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.control_press{control = "clear-cursor", notify = true} end
        },
        {
          condition = story_elapsed_check(2),
          action = function() story_jump_to(storage.story, "start") end
        }
      }
    }
    tip_story_init(story_table)
  ]]
  
data.raw["tips-and-tricks-item"]["circuit-network"].simulation.init = [[
    require("__core__/lualib/story")
    player = game.simulation.create_test_player{name = "cable-guy"}
    player.teleport({0.5, -7})
    game.simulation.camera_player = player
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_alt_info = true
    storage.resting_position = {0.5, 4}
    game.simulation.camera_player_cursor_position = storage.resting_position
    storage.character = player.character
    storage.character.character_running_speed_modifier = -0.5

    local technology = "inserter-capacity-bonus-2"
    local technologies = prototypes.technology
    for name, prerequisite in pairs (technologies[technology].prerequisites) do
      game.forces.player.technologies[name].researched = true
    end
    game.forces.player.technologies[technology].researched = true

    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqd1++OojAQAPB36eeyoS1F4FXMhiCOXnOlkLbcnWt49y3cLeqKypwfCFj49V+mkzmTne6hs8p4UpyJqlvjSLE9E6eOptLjf/7UASmI8tAQSkzVjE/eVsZ1rfXRDrQnAyXK7OEPKdjwTgkYr7yCv9L0cCpN3+zAhhdmwzWV1hFoqL1VddS1GkIHXevCt60Zuw5eJPibpOREivxNDgO98/jszRIYsMdTFOYE9lDVy+pkZmHge2XDd1NbQsmuPxzAlk59BJLF82+hZ3GZiQfQUf0DnF/qiz2fQTI7yjiwYdBLSHyF3Ayaham0v8BatYfS+ar++TX6hb7kox2875Hnj3rMFuAUua1cPl+UDdJj+XMvw3riuZcjFjL7R7H4+0omCzKL/2OPVtIMQW9wNEfQKY4WCFri6ARBJzgaE2oCR6cImuPoDYJmODpD0DGOztccoexxHKLOUI4IUIYLUM5W5hR2E51LEv924Omq6Zag5BUkVkLyFZSshMQrCBFZbD5q+Kr1R0TWZQvW0YjIumzKOhoRWZdtWkcj8hzjKFpgwkjgaESeYzGORuQ5xnA0Is9lOBmR5nKcjIhFXCgKRCjiIlFcIlG31X4xVzz06FwPma4fC597PrtKRgdlQtvj0uB24F/vlw68V+boxvcsNCE1lX1o0yGxwb4cS7HQ5G0Pw1hu/Q7jG2utLaOSplS+02240s10F640C3fhvamEK64qPkpCznPTeHjGkkzINE0TKTf5MHwCYxiRcw==",
      position = {-1, 0}
    }
    lamp1 = game.surfaces[1].find_entity("small-lamp", {1.5, 0.5})
    lamp2 = game.surfaces[1].find_entity("small-lamp", {2.5, 0.5})
    lamp3 = game.surfaces[1].find_entity("small-lamp", {3.5, 0.5})
    chest1 = game.surfaces[1].find_entity("steel-chest", {-14.5, -0.5})
    chest2 = game.surfaces[1].find_entity("steel-chest", {-0.5, 0.5})
    inserter = nil

    first_simulation = true

    local story_table =
    {
      {
        {
          name = "start",
          init = function() storage.character.walking_state = {walking = true, direction = defines.direction.south} end
        },
        {
          condition = function() return storage.character.position.y > -0.5 end,
          action = function() storage.character.walking_state = {walking = false} end
        },

        -- SETUP LAMP1

        {
          init = function() player.cursor_stack.set_stack{name = "red-wire", count = 1} end,
          condition = function() return game.simulation.move_cursor({position = chest2.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = chest2.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = lamp1.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = lamp1.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = {lamp1.position.x, lamp1.position.y + 1}, speed = 0.1}) end,
          action = function() player.cursor_stack.clear() end
        },
        { condition = function() return game.simulation.move_cursor({position = lamp1.position, speed = 0.1}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = lamp1 end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "check-box", data = "gui-control-behavior-modes.enable-disable"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-id"})
            return game.simulation.move_cursor({position = target, speed = 0.1})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            game.simulation.mouse_click()
            if first_simulation == false then story_jump_to(storage.story, "setIronPlate") end
          end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "item-group-tab", data = "angels-casting"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_down() end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_up() end
        },
        {
          name = "setIronPlate",
          condition = function()
            local target = game.simulation.get_widget_position({type = "simple-slot", data = "iron-plate"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "drop-down"})
            return game.simulation.move_cursor({position = target, speed = 0.1})
          end
        },
        {
          init = function() chest1.insert({name = "iron-plate", count = 1}) end,
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button", data = ">"})
            return game.simulation.move_cursor({position = target, speed = 0.1})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function() return game.simulation.move_cursor({position = storage.resting_position, speed = 0.2}) end,
          action = function() player.opened = nil end
        },
        { condition = story_elapsed_check(6) },

        -- SETUP LAMP2 & LAMP3

        {
          init = function() player.cursor_stack.set_stack{name = "red-wire", count = 1} end,
          condition = function() return game.simulation.move_cursor({position = lamp1.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = lamp1.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = lamp2.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = lamp2.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = lamp3.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = lamp3.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = {lamp2.position.x, lamp2.position.y + 1}, speed = 0.1}) end,
          action = function() player.cursor_stack.clear() end
        },
        { condition = function() return game.simulation.move_cursor({position = lamp2.position, speed = 0.1}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = lamp2 end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "check-box", data = "gui-control-behavior-modes.enable-disable"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-id"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "simple-slot", data = "iron-plate"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "drop-down"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button", data = ">"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-or-number"})
            return game.simulation.move_cursor({position = target, speed = 0.1})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "textfield", data = "0"})
            return game.simulation.move_cursor({position = target, speed = 0.1})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            game.simulation.mouse_click()
            game.simulation.write({text = "1"})
          end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button-localised-substring", data = "gui.set-constant"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function() return game.simulation.move_cursor({position = storage.resting_position, speed = 0.2}) end,
          action = function() player.opened = nil end
        },
        { condition = function() return game.simulation.move_cursor({position = lamp3.position, speed = 0.15}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = lamp3 end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "check-box", data = "gui-control-behavior-modes.enable-disable"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-id"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "simple-slot", data = "iron-plate"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "drop-down"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button", data = ">"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-or-number"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "textfield", data = "0"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            game.simulation.mouse_click()
            game.simulation.write({text = "2"})
          end
        },
        { condition = story_elapsed_check(0.25) },
        {
          init = function() chest1.insert({name = "iron-plate", count = 2}) end,
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button-localised-substring", data = "gui.set-constant"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function() return game.simulation.move_cursor({position = storage.resting_position, speed = 0.2}) end,
          action = function() player.opened = nil end
        },
        { condition = story_elapsed_check(7) },

        -- SETUP INSERTER

        {
          init = function()
            player.cursor_stack.set_stack{name = "bulk-inserter", count = 1}
            action = function() game.simulation.camera_player_cursor_direction = defines.direction.west end
          end,
          condition = function() return game.simulation.move_cursor({position = {chest2.position.x, chest2.position.y + 1}, speed = 0.1}) end,
          action = function()
            player.build_from_cursor{position = game.simulation.camera_player_cursor_position, direction = defines.direction.west}
          end
        },
        {
          condition = story_elapsed_check(1),
          action = function() inserter = game.surfaces[1].find_entity("bulk-inserter", {chest2.position.x, chest2.position.y + 1}) end
        },
        { condition = function() return game.simulation.move_cursor({position = {inserter.position.x + 1, inserter.position.y}, speed = 0.1}) end },
        {
          init = function() player.cursor_stack.set_stack{name = "red-wire", count = 1} end,
          condition = function() return game.simulation.move_cursor({position = chest2.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = chest2.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = inserter.position, speed = 0.1}) end,
          action = function() player.drag_wire{position = inserter.position} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = {inserter.position.x + 1, inserter.position.y}, speed = 0.1}) end,
          action = function() player.cursor_stack.clear() end
        },
        { condition = function() return game.simulation.move_cursor({position = inserter.position, speed = 0.1}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = inserter end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "check-box", data = "gui-control-behavior-modes.enable-disable"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-id"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "simple-slot", data = "iron-plate"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "drop-down"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button", data = ">"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-or-number"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "textfield", data = "0"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            game.simulation.mouse_click()
            game.simulation.write({text = "3"})
          end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "text-button-localised-substring", data = "gui.set-constant"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          init = function() chest1.insert({name = "iron-plate", count = 7}) end,
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function() return game.simulation.move_cursor({position = storage.resting_position, speed = 0.2}) end,
          action = function() player.opened = nil end
        },
        { condition = story_elapsed_check(0.25) },
        { condition = function() return game.simulation.move_cursor({position = inserter.position, speed = 0.2}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() inserter.rotate({by_player = player}) end
        },
        { condition = function() return game.simulation.move_cursor({position = storage.resting_position, speed = 0.2}) end },

        -- RESET EVERYTHING

        {
          condition = story_elapsed_check(17),
          action = function()
            player.opened = nil
            storage.character.walking_state = {walking = true, direction = defines.direction.north}
          end
        },
        {
          condition = function() return storage.character.position.y < -7 end,
          action = function() storage.character.walking_state = {walking = false} end
        },
        {
          condition = function() return game.simulation.move_cursor({position = storage.resting_position, speed = 0.2}) end,
          action = function()
            lamp1.destroy()
            lamp1 = game.surfaces[1].create_entity{name = "small-lamp", position = {1.5, 0.5}, force = player.force, create_build_effect_smoke = false}
            lamp2.destroy()
            lamp2 = game.surfaces[1].create_entity{name = "small-lamp", position = {2.5, 0.5}, force = player.force, create_build_effect_smoke = false}
            lamp3.destroy()
            lamp3 = game.surfaces[1].create_entity{name = "small-lamp", position = {3.5, 0.5}, force = player.force, create_build_effect_smoke = false}
            inserter.destroy()
            chest2.clear_items_inside()
            first_simulation = false
            story_jump_to(storage.story, "start")
          end
        }
      }
    }
    tip_story_init(story_table)
  ]]
  
data.raw["tips-and-tricks-item"]["belt-lanes"].simulation.init  = [[
    game.simulation.camera_position = {0, 0.5}

    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqtmG1z4iAQgP8Ln0knvESNf6XTcWKyWmYQMkB653X87wfaqteSFuj5RQ3w7Au7C5tXtJUTjEYoh9avSPRaWbR+fEVW7FUnwzPVHQCtkTOdsqM2rtqCdOiEkVAD/EZrcnrCCJQTTsBl7fnPcaOmwxaMn4DfGULthPJDVf8M1iGMRm39Mq2CHI+qaPPQYHT0a8hDcxZxWbCx4JxQexsmGjjoF9hMfkw6MDBshIODH9p10gJGl8cXVd4Ed2oP0lbaAKl6M9lnGLz0Xk/BbFrXGB30cJ7oKgndWbebeacT/mQUvRoldTf4J18Zw7wpgzDQX4ZXGLnjGNbqyY1TcOYnPrvyJ6+H2Ruv63Bx/VeS+NltUVlCzYjiZaJW86LmzWrwTDx9Jan9JClCXqSTSR55WaAzJSnkVQm5TiG3GeT6nhxhkboERmZg99XAgnHR1AkbM2MtoTEqTaIuMqm3JLROK6h2k1FdDzH06s3qqM28IDbTIog0JeikECK3jALpJxrRV6B8fThW/rQAs4t7YvnuiI+1YTvtdmA2VvyBEFPXT0x0Tsrxd6voR6t4DF2Uc2wmmNsSWJKeNCfpaB6aZKBZHpqWlAqaEo6UlaBZEvqWn3aUwsWrR0jIN30THHHLS3vopKyuKTRqGS8g996IERd5hZMllTi6zCucidRVSVVKC4O2BJ0UBqzO3TP6zZ4xkklcfAekJQWHz8DK7pjhxynlBstLEpYn7VSTfTDzqAdKLo2JKi5znEs+ODfvAs9WRRvJ6vuNnKe3RZawuqQ/4HVGX8VoShzykv6Tsf/af/ba99LXhrMp6Dd5QsNJ/nFMZhPI0r1EfuQlZyY4hXcGv7yCwUuP/rBssK++zRN+DF/Y183myc8IK7xCt1cUGL14z55VaRa05W3bLNiy5syn919JB3Zd",
      position = {4, 0}
    }
  ]]
  
data.raw["tips-and-tricks-item"]["inserters"].simulation.init = [[
    game.simulation.camera_position = {0, 0.5}

    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqll92SojAQhd8l18EiCeDPq1iWhdg6qYLESsLMuhbvvh100FVYkx1vEBK+c9J0p+FCdnULJyOVI6sLkZVWlqzWF2LlUZW1v6bKBsiKOFMqe9LGJTuoHekokWoPv8iKdXRkunVaQXJojSoreJjNuw0loJx0Eq5K/cl5q9pmBwZx9BsBNVTOyCoBBeZ4TtAjmIPHUXLSFglaeUWkJoKSM1nlqLOXBm/rhxaU7NrDAczWyt9IZOnw856fhPkgbJuyrpNB/qTrMUk2y6+is7wbwQk6EbkREr+hWDp7WkI2Qs4iyCKKnA/kFp+WORqNx0k2m2ZT4s4nz5Hq1PpkeZEqYqSKACXdugmpeXi88qhwLcLBWRR4GQ6OSx2WhpPjUoex/ywfn0Zj9cN4uNU0zmpMacaR76UplQWD+9Urc9os42PMe1H+vae+gPktnqPRLB6cHaTCsaT6APvv7Uj0Dr9v2FpwTqqj9RMNNPoTti2O1bhM2G+lgwaHDmVtgZLr5esOfxMu1RFqm2gDLKlMaz9gj+oVFj72Hp5iajZ63090SQ1l723oMZvRVd1Lu9blfizaD6vB6L7fLNi9qL802lGTYUofozRGWsYkgwhKBp4GumNvzPHIch2CONHtOA/N0oRdQcUoJrw0hxUWIZXJoyqzCHsYebBZHme2CAaLOHB4K8ziwOGtMI8Dh7fCIgoswjvhPA7MIt5sFtPo969QgkcoMREgNb0tCvF2p2U/WUoW3J7Y03OO607OtND5T5Av9Oe705rTnOLLS76ha3+g3P/HCf4GtHP/PKLkExtabyQv+DJbLvNCzNNMZF33B/lUVs4=",
      position = {0, -3},
    }

    local furnaces = game.surfaces[1].find_entities_filtered{name = "stone-furnace"}
    storage.furnace_1 = furnaces[2]
    storage.furnace_2 = furnaces[1]
    local chests = game.surfaces[1].find_entities_filtered{name = "wooden-chest"}
    storage.chest_1 = chests[1]
    storage.chest_2 = chests[2]
    script.on_nth_tick(600, function()
      storage.furnace_1.clear_items_inside()
      storage.furnace_1.insert("coal")
      storage.furnace_2.insert("coal")
      storage.furnace_2.insert("angels-ore1-crushed")
      storage.chest_1.insert("iron-gear-wheel")
      storage.chest_2.clear_items_inside()
    end)
  ]]
  
  
data.raw["tips-and-tricks-item"]["z-dropping"].simulation.init = [[
    require("__core__/lualib/story")
    player = game.simulation.create_test_player{name = "big k"}
    player.teleport({0, 1.5})
    game.simulation.camera_player = player
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_alt_info = true
    game.simulation.camera_player_cursor_position = player.position

    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqV1NtugzAMANB/8XOoyiWU8ivVhLi4XSRwUBKqVRX/voSql62wkcfEybEfbF+hagfslSAD+RVELUlDfriCFicqW3dnLj1CDsJgBwyo7NxJG0kYHAdFZY0wMhDU4Bfk4cj+/WtUSbqXygQVtublczR+MEAywgi8VTEdLgUNXYXK6ksGg15q+02Sy2qpIEw2nMEF8mzDbYZGKKxv8cSV+AuOPODIB4494NgHTjzgrQ/MPeDQB07Xw5mPu1vv7n3cbL2b+rj79e7Oxw23D7iVZWOv3sEljj0mlfrBjeS7/pw9QUdBNhbUn6jnyv7ZyPfnhUZjBJ20e6awk2csBhtrDSpsCrcjbMioAce5/M8RFUrSYu7o3uxuTmeheGGJzfT3XZp1kvVO/JfD1zvhw7GLclqq+cv+ZnBGpaf3URYmWczTNE043+3H8RtUuPE+",
      position = {5, 0},
    }
    item_count = 0

    local story_table =
    {
      {
        {
          name = "start",
          init = function() item_count = 50 end,
          condition = story_elapsed_check(0.5),
          action = function() player.cursor_stack.set_stack({name = "angels-ore1-crushed", count = 50}) end,
        },
        { condition = function() return game.simulation.move_cursor({position = {-3.5, -2.5}}) end },
        {
          name = "drop_ground",
          condition = story_elapsed_check(0.15),
          action = function()
            game.simulation.control_press{control = "drop-cursor", notify = false}
            item_count = item_count - 1
          end
        },
        { action = function() if item_count > 35 then story_jump_to(storage.story, "drop_ground") end end },
        { condition = function() return game.simulation.move_cursor({position = {-3.5, 2.5}}) end },
        {
          name = "drop_chest",
          condition = story_elapsed_check(0.15),
          action = function()
            game.simulation.control_press{control = "drop-cursor", notify = false}
            item_count = item_count - 1
          end
        },
        { action = function() if item_count > 25 then story_jump_to(storage.story, "drop_chest") end end },
        { condition = function() return game.simulation.move_cursor({position = {2.5, -1.5}}) end },
        {
          name = "drop_belt",
          condition = story_elapsed_check(0.15),
          action = function()
            game.simulation.control_press{control = "drop-cursor", notify = false}
            item_count = item_count - 1
          end
        },
        { action = function() if item_count > 15 then story_jump_to(storage.story, "drop_belt") end end },
        { condition = function() return game.simulation.move_cursor({position = {2.0, 2.0}}) end },
        {
          name = "feed_furnace1",
          condition = story_elapsed_check(0.15),
          action = function()
            player.selected.insert("coal")
            game.simulation.control_press{control = "drop-cursor", notify = false}
            item_count = item_count - 1
          end
        },
        { action = function() if item_count > 12 then story_jump_to(storage.story, "feed_furnace1") end end },
        { condition = function() return game.simulation.move_cursor({position = {4.0, 2.0}}) end },
        {
          name = "feed_furnace2",
          condition = story_elapsed_check(0.15),
          action = function()
            player.selected.insert("coal")
            game.simulation.control_press{control = "drop-cursor", notify = false}
            item_count = item_count - 1
          end
        },
        { action = function() if item_count > 9 then story_jump_to(storage.story, "feed_furnace2") end end },
        { condition = function() return game.simulation.move_cursor({position = {6.0, 2.0}}) end },
        {
          name = "feed_furnace3",
          condition = story_elapsed_check(0.15),
          action = function()
            player.selected.insert("coal")
            game.simulation.control_press{control = "drop-cursor", notify = false}
            item_count = item_count - 1
          end
        },
        { action = function() if item_count > 6 then story_jump_to(storage.story, "feed_furnace3") end end },
        { condition = function() return game.simulation.move_cursor({position = player.position}) end },
        {
          condition = story_elapsed_check(0.5),
          action = function()
            player.clear_cursor()
            for k, v in pairs (game.surfaces[1].find_entities()) do
              if v.type == "item-entity" then
                v.destroy()
              else
                v.clear_items_inside()
              end
            end
          end
        },
        {
          condition = story_elapsed_check(0.5),
          action = function() story_jump_to(storage.story, "start") end
        }
      }
    }
    tip_story_init(story_table)
  ]]


local function fix_e_confirm()
    data.raw["tips-and-tricks-item"]["e-confirm"].simulation.init = [[
    require("__core__/lualib/story")
    player = game.simulation.create_test_player{name = "big k"}
    player.teleport({-8.5, -1.5})
    game.simulation.camera_player = player
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_player_cursor_position = player.position
    player.character.direction = defines.direction.south
    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNptkd2KwyAQhd9lrk2pSQzBV1mWEt1JV0g0609pGnz3NbZkF6o3cgbPd5jjBmIKuFilPfANlDTaAf/YwKmrHqZ95tcFgYPyOAMBPcy7skaYxVgPkYDSX3gHTuMnAdReeYVPRhbrRYdZoE0P3t0EFuOSweg9KUGquiOwAq9jJG+A+gC4IJwfsq+AaDKiKSGaA4ETSm+VrFCjva5VagDtOEgsEemLSECEcUR7ceqRIPR8nEJW+7cv/gR0iV/J73SXEtiJ5Qx6PrG4N5n75v++h8ANrcueuqdt37Cu61rG+tTVLwHtlQY=",
      position = {-7, -5},
    }

    game.forces.player.technologies["logistic-system"].research_recursive()
    game.forces.player.technologies["logistics"].researched = true -- for splitters to be selectable

    chest = game.surfaces[1].find_entities_filtered{name = "requester-chest"}[1]
    button = ""
    slot_data = ""

    local story_table =
    {
      {
        {
          name = "start",
          init = function()
            button = "0"
            slot_data = "transport-belt"
          end,
          condition = function() return game.simulation.move_cursor({position = chest.position, speed = 0.75}) end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = chest end
        },
        { condition = story_elapsed_check(0.25) },
        {
          name = "continue",
          condition = function()
            local target = game.simulation.get_widget_position({type = "logistics-button", data = button})
            return game.simulation.move_cursor({position = target, speed = 0.45})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "signal-id-base", data = slot_data})
            return game.simulation.move_cursor({position = target, speed = 0.45})
          end
        },
        {
          condition = story_elapsed_check(0.35),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = story_elapsed_check(0.75),
          action = function()
            game.simulation.control_press{control = "confirm-gui", notify = true}
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            if button == "5" then button = "6" end
            if button == "4" then
              button = "5"
              slot_data = "storage-chest"
            end
            if button == "3" then
              button = "6"
              slot_data = "small-electric-pole"
            end
            if button == "2" then
              button = "3"
              slot_data = "inserter"
            end
            if button == "1" then
              button = "2"
              slot_data = "splitter"
            end
            if button == "0" then
              button = "1"
              slot_data = "underground-belt"
            end
            if button < "6" then story_jump_to(storage.story, "continue") end
          end
        },
        {
          condition = function() return game.simulation.move_cursor({position = player.position, speed = 0.5}) end,
          action = function() player.opened = nil end
        },
        {
          condition = story_elapsed_check(0.5),
          action = function()
            local position = chest.position
            chest.destroy()
            chest = game.surfaces[1].create_entity{name = "requester-chest", position = position, force = player.force, create_build_effect_smoke = false}
            story_jump_to(storage.story, "start")
          end
        }
      }
    }
    tip_story_init(story_table)
  ]]
end

local function fix_bulk_crafting()
    data.raw["tips-and-tricks-item"]["bulk-crafting"].simulation.init = [[
    require("__core__/lualib/story")
    player = game.simulation.create_test_player{name = "big k"}
    player.teleport({0, 4.5})
    game.simulation.camera_player = player
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_player_cursor_position = player.position

    player.insert{name = "iron-plate", count = 50}
    player.insert{name = "iron-gear-wheel", count = 100}
    player.insert{name = "iron-gear-wheel", count = 100}
    player.clear_inventory_highlights()
    player.opened = player

    local story_table =
    {
      {
        {
          name = "start",
          condition = function()
            local target = game.simulation.get_widget_position({type = "recipe-slot", data = "transport-belt"})
            return game.simulation.move_cursor({position = target})
          end
        },
        { condition = story_elapsed_check(1) },
        {
          init = function() game.simulation.control_down{control = "craft-5", notify = true} end,
          condition = story_elapsed_check(0.25)
        },
        {
          init = function() game.simulation.control_up{control = "craft-5"} end,
          condition = function() return game.simulation.move_cursor({position = player.position}) end
        },
        { condition = story_elapsed_check(3) },

        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "recipe-slot", data = "burner-inserter"})
            return game.simulation.move_cursor({position = target})
          end,
          action = function() player.clear_inventory_highlights() end
        },
        { condition = story_elapsed_check(1) },
        {
          init = function() game.simulation.control_down{control = "craft-5", notify = true} end,
          condition = story_elapsed_check(0.25)
        },
        {
          init = function() game.simulation.control_up{control = "craft-5"} end,
          condition = function() return game.simulation.move_cursor({position = player.position}) end
        },
        { condition = story_elapsed_check(3) },

        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "recipe-slot", data = "transport-belt"})
            return game.simulation.move_cursor({position = target})
          end,
          action = function() player.clear_inventory_highlights() end
        },
        { condition = story_elapsed_check(1) },
        {
          init = function() game.simulation.control_down{control = "craft-all", notify = true} end,
          condition = story_elapsed_check(0.25)
        },
        {
          init = function() game.simulation.control_up{control = "craft-all"} end,
          condition = function() return game.simulation.move_cursor({position = player.position}) end
        },

        {
          condition = story_elapsed_check(15),
          action = function()
            player.clear_items_inside()
            player.insert{name = "iron-plate", count = 100}
            player.insert{name = "iron-plate", count = 100}
            player.insert{name = "iron-gear-wheel", count = 100}
            player.insert{name = "iron-gear-wheel", count = 100}
            player.clear_inventory_highlights()
          end
        },
        {
          condition = story_elapsed_check(1),
          action = function() story_jump_to(storage.story, "start") end
        }
      }
    }
    tip_story_init(story_table)
  ]]
end 

local function fix_splitters()
    data.raw["tips-and-tricks-item"]["splitters"].simulation.init = [[
    require("__core__/lualib/story")
    player = game.simulation.create_test_player{name = "big k"}
    player.teleport({0, 0.5})
    game.simulation.camera_player = player
    game.simulation.camera_position = {0, 0.5}
    game.simulation.camera_alt_info = true
    game.simulation.camera_player_cursor_position = player.position

    local technology = "electronics"
    local technologies = prototypes.technology
    for name, prerequisite in pairs (technologies[technology].prerequisites) do
      game.forces.player.technologies[name].researched = true
    end
    game.forces.player.technologies[technology].researched = true

    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqtme2OqjAQQN+lv2FDv6D4KpuNQey6TRAIlL13s/Hdb9Go11jWmXF/KnjambbT0/rNNs1k+8G1nq2+mau7dmSr1282ul1bNfN3/qu3bMWct3uWsLbaz5/8ULVj3w0+3djGs0PCXLu1f9mKH94SZlvvvLMn0vHD17qd9hs7hBcuDNe+uzY8SusPO/rA7rsx/Kxr51YDKpXyRSfsi63yF31s4fT+erTeu3Y3zu8Ndt992vUUnjXeDna7njsaHvlhsgk7fXvqyLnZoWvTna2G9M+HtU1ot+6mOXyeZQnbd9v5pcqnja2OvboGdjgkd+GIpZREwsluwtm6wdan5yYClhdw01Xb8E0EKOI4lZwHrZt8P83Dc4dXhH4Xdw1FwPoCnkLiht0QkrtdQotyEX2JwbULIeSoltTjlpazVcCzJSQmWwYBFhhwiQBzDJhnCDJq5nAOJ/MSRUasUm5QZIkgFygyYoXyHEXWCLJCkXMEGbVOOGIFctRC4YglyHHzGbEGOWoNigxT+p6psYJjWnqqxgoB2PHogUi4d9yOBV47op6gCN5jftN7bBPSFdzH1Wnthnpy/qo+gqQ+muAQc0gxVg7WHfNwct2Gfw4i+SERIcBIn641Z+wb5320V1yfIwOsW0OovAZii6IkkEuQh2aIiXvOxVwo0TP3vWrG+NStu763Q1pXm8Y+OWnldR68h/fTxzP3vJvMJfrxEEvMgUDcpuvRSECOBGoBCKnAknIoOKYlBqNUh0i/Y+icdMb4KSmL+4YsSKcM4gAYwjkDmLOScNKAoVVGOGsA0Zxw2ACiBeG0cV8DYgtVSQoaVAOUItR5YEI0QbGBaMq5AIguCPoORBuCvwPRJUXgSQVMZxSDp9UvzaEKTwtF4B2eZCJLEq8lxYXEr7rQ8fqybypvn7y51IpiKiK+22sNdxNBmlr5rbf9YOTyMvYCcF1ZUDRFgm5CDQUtINuALmkGJCnXrBnNgCRlmHNOMSDQcOSCYkAwtKQYEAytKAYEQ2uKpsDQOQUtQGjYqdxc+gtAGsIlLjARJeEWF4YuENp9uaQAojnFMmFoQbFMGFpSLBOGVhTLhKE1xTJh6JxkmZRNoihIlknaIwoDtkxSKCXBMiXZMt+S01/rq//+iU/YZ7C+YzvCcGWkzvNcaV2Uh8M/6JlhIQ==",
      position = {-2, 0}
    }

    splitter1 = game.surfaces[1].find_entities_filtered{name = "splitter"}[1]
    splitter2 = game.surfaces[1].find_entities_filtered{name = "splitter"}[2]
    first_simulation = true
    saved_position = player.position

    local story_table =
    {
      {
        {
          name = "start",
          condition = story_elapsed_check(13),
        },
        { condition = function() return game.simulation.move_cursor({position = player.position}) end },
        {
          name = "continue",
          condition = story_elapsed_check(3),
        },
        { condition = function() return game.simulation.move_cursor({position = splitter1.position}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = splitter1 end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "check-box", data = "gui-splitter.input-priority"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = story_elapsed_check(0.5),
          action = function() player.opened = nil end
        },
        { condition = function() return game.simulation.move_cursor({position = player.position}) end },
        { condition = function() return game.simulation.move_cursor({position = splitter2.position}) end },
        {
          condition = story_elapsed_check(0.25),
          action = function() player.opened = splitter2 end
        },
        { condition = story_elapsed_check(0.25) },
        {
          condition = function()
            saved_position = game.simulation.get_widget_position({type = "choose-button"})
            return game.simulation.move_cursor({position = saved_position, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            game.simulation.mouse_click()
            if first_simulation == false then story_jump_to(storage.story, "setElectronicCircuit") end
          end
        },

        { condition = function() return game.simulation.move_cursor({position = {saved_position.x, saved_position.y - 1}}) end },

        {
          condition = function()
            local target = game.simulation.get_widget_position({type = "item-group-tab", data = "angels-components"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_down() end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_up() end
        },
        { condition = story_elapsed_check(0.25) },
        {
          name = "setElectronicCircuit",
          condition = function()
            local target = game.simulation.get_widget_position({type = "simple-item-slot", data = "electronic-circuit"})
            return game.simulation.move_cursor({position = target, speed = 0.15})
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function() game.simulation.mouse_click() end
        },
        {
          condition = story_elapsed_check(0.75),
          action = function()
            game.simulation.control_press{control = "confirm-gui", notify = false}
          end
        },
        {
          condition = story_elapsed_check(0.5),
          action = function() player.opened = nil end
        },

        { condition = function() return game.simulation.move_cursor({position = player.position}) end },
        {
          condition = story_elapsed_check(3),
          action = function()
            splitter1.splitter_filter = nil
            splitter1.splitter_input_priority = "none"
            splitter2.splitter_filter = nil
            splitter2.splitter_output_priority = "none"
          end
        },
        {
          condition = story_elapsed_check(0.25),
          action = function()
            player.clear_cursor()
            first_simulation = false
            story_jump_to(storage.story, "continue")
          end
        }
      }
    }
    tip_story_init(story_table)

  ]]
end

if mods["angelsindustries"] then
    fix_e_confirm()
    fix_bulk_crafting()
    if angelsmods.industries.overhaul then
      fix_splitters()
    end
end