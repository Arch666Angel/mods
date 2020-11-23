global.crash_site_created = false
global.is_lab_given = false

local main_lab = {
    [0] = 'angels-main-lab-0', -- crash site, equivalent to next tier
    [1] = 'angels-main-lab-1',
    [2] = 'angels-main-lab-2',
    [3] = 'angels-main-lab-3',
    [4] = 'angels-main-lab-4',
    [5] = 'angels-main-lab-5',
    [6] = 'angels-main-lab-6',
    [7] = 'angels-main-lab-7'
}

local function remove_lab_from_inv(inventory)
    if inventory then
        local items = game.item_prototypes
        for key, lab in pairs(main_lab) do
            if items[lab] and inventory.get_item_count(lab) > 0 then
                inventory.remove{name = lab}
                global.is_lab_given = false
                return true
            end
        end
    end
end

local function table_contains(table, value)
    for key, val in pairs(table) do if val == value then return true end end
    return false
end

local function initialize_crash_site()
    if game.entity_prototypes[main_lab[1]] and (not global.is_lab_given) then
        -- angels science mode
        local surface = game.surfaces['nauvis']
        if surface and surface.valid then
            local crash_site_entity = surface.find_entities_filtered{
                type = 'container',
                name = 'crash-site-spaceship',
                limit = 1
            }[1]
            if crash_site_entity and crash_site_entity.valid then
                local created_entity = surface.create_entity{
                    name = main_lab[0],
                    position = surface.find_non_colliding_position( --[[name]] main_lab[0], --[[center]] {
                        crash_site_entity.position.x - 15, crash_site_entity.position.y
                    }, --[[radius]] 15 + 15, --[[precision]] 0.5, --[[force_to_tile_center]] true),
                    force = 'player',
                    raise_build = false, -- I don't see why we should raise this?
                    create_build_effect_smoke = false
                }
                if created_entity and created_entity.valid then
                    created_entity.energy = game.item_prototypes['coal'].fuel_value
                    global.is_lab_given = true

                    -- create explosions
                    for k = 1, 3 do
                        local bbox = created_entity.bounding_box
                        local explosions = surface.create_entity{
                            name = 'crash-site-explosion-smoke',
                            position = {
                                x = (bbox.left_top.x + bbox.right_bottom.x) / 2 +
                                    (bbox.right_bottom.x - bbox.left_top.x) * (math.random() - 0.5),
                                y = (bbox.left_top.y + bbox.right_bottom.y) / 2 +
                                    (bbox.right_bottom.y - bbox.left_top.y) * (math.random() - 0.5)
                            }
                        }
                        explosions.time_to_live = math.random(60 * 20, 60 * 30) -
                                                      math.min((8 + (math.random() * 40)) * 100, 15 * 60)
                        explosions.time_to_next_effect = math.random(30)
                    end

                    -- create fires
                    for k = 1, 2 do
                        local bbox = created_entity.bounding_box
                        surface.create_entity{
                            name = 'crash-site-fire-flame',
                            position = {
                                x = (bbox.left_top.x + bbox.right_bottom.x) / 2 +
                                    (bbox.right_bottom.x - bbox.left_top.x) * (math.random() - 0.5),
                                y = (bbox.left_top.y + bbox.right_bottom.y) / 2 +
                                    (bbox.right_bottom.y - bbox.left_top.y) * (math.random() - 0.5)
                            }
                        }
                        local smoke = surface.create_entity{
                            name = 'crash-site-fire-smoke',
                            position = {
                                x = (bbox.left_top.x + bbox.right_bottom.x) / 2 +
                                    (bbox.right_bottom.x - bbox.left_top.x) * (math.random() - 0.5),
                                y = (bbox.left_top.y + bbox.right_bottom.y) / 2 +
                                    (bbox.right_bottom.y - bbox.left_top.y) * (math.random() - 0.5)
                            }
                        }
                        smoke.time_to_live = math.random(60 * 20, 60 * 30) -
                                                 math.min((8 + (math.random() * 40)) * 100, 15 * 60)
                        smoke.time_to_next_effect = math.random(30)
                    end

                end
            end
        end
    end
    global.crash_site_created = true
end

script.on_event(defines.events.on_player_created, function(event)
    if not global.crash_site_created then initialize_crash_site() end
end)

script.on_event(defines.events.on_player_respawned, function(event)
    local player = game.players[event.player_index]

    if not global.is_lab_given and game.entity_prototypes[main_lab[1]] then
        if player and player.valid then global.is_lab_given = player.insert{name = main_lab[0], count = 1} > 0 end
    end

    local force = player and player.force
    if force then
        local available = force.technologies['angels-hidden-ghosting'] and
                              force.technologies['angels-hidden-ghosting'].researched or false
        player.set_shortcut_available('toggle-ghosting', available)
        if available then player.set_shortcut_toggled('toggle-ghosting', force.ghost_time_to_live == 0) end
    end
end)

script.on_event(defines.events.on_entity_died, function(event)
    if game.entity_prototypes[main_lab[1]] then
        local etype = event.entity.type
        if table_contains(main_lab, event.entity.name) then
            global.is_lab_given = false
        elseif etype == 'container' or etype == 'logistic-container' then
            remove_lab_from_inv(event.entity.get_inventory(defines.inventory.chest))
        elseif etype == 'construction-robot' or etype == 'logistic-robot' then
            remove_lab_from_inv(event.entity.get_inventory(defines.inventory.robot_cargo))
        end
    end
end)

script.on_event(defines.events.on_pre_player_died, function(event)
    if game.entity_prototypes[main_lab[1]] then
        remove_lab_from_inv(game.players[event.player_index].get_main_inventory())
    end
end)

----------------
--- GHOSTING ---
----------------
local function unlock(force, shortcut)
    for _, p in pairs(force.players) do p.set_shortcut_available(shortcut, true) end
end

script.on_event(defines.events.on_research_finished, function(event)
    local research = event.research
    if research.name == 'angels-construction-robots' then
        local unlocks = {
            'undo', 'copy', 'cut', 'paste', 'import-string', 'give-blueprint', 'give-blueprint-book',
            'give-deconstruction-planner', 'give-upgrade-planner'
        }
        for _, shortcut in pairs(unlocks) do unlock(event.research.force, shortcut) end
    end

    local ghosting = {
        ['angels-ghosting-construction-robots'] = true,
        ['angels-ghosting-angels-construction-robots'] = true
    }
    if ghosting[research.name] then
        research.force.technologies['angels-hidden-ghosting'].researched = true

        for _, fplayer in pairs(research.force.players) do
            fplayer.set_shortcut_available('toggle-ghosting', true)
            fplayer.set_shortcut_toggled('toggle-ghosting', true)
        end

        ghosting[research.name] = nil
        for tech in pairs(ghosting) do
            if research.force.technologies[tech] then
                if not research.force.technologies[tech].researched then
                    research.force.technologies[tech].researched = true
                    research.force.technologies[tech].enabled = false
                end
            end
        end

    else -- not a ghosting tech (but could be the final prerequisite in order to be researchable)
        -- this makes sure only 1 will be available for research, the others will be disabled
        local already_available = false
        for tech, _ in pairs(ghosting) do
            if research.force.technologies[tech] and (not research.force.technologies[tech].researched) then

                local available = true
                for _, prereq in pairs(research.force.technologies[tech].prerequisites or {}) do
                    if not prereq.researched then available = false end
                end

                if available then -- shows up as researchable
                    if already_available then
                        -- research.force.technologies[tech].researched = true
                        research.force.technologies[tech].enabled = false
                    else
                        already_available = true
                    end
                end

            end
        end
    end

end)

script.on_event({defines.events.on_lua_shortcut, 'toggle-ghosting'}, function(event)
    if event.prototype_name and event.prototype_name ~= 'toggle-ghosting' then return end
    local input = event.prototype_name or event.input_name
    local player = game.players[event.player_index]
    if player and player.valid then
        local force = player.force
        local toggled = force.ghost_time_to_live == 0
        force.ghost_time_to_live = toggled and 60 * 60 * 60 * 24 * 7 or 0

        for _, fplayer in pairs(force.players) do fplayer.set_shortcut_toggled(input, toggled) end
    end
end)

-- Vehicle burner equipment

script.on_init(function(event)
    global.vehicle_burners = {}
    global.current_car = {}
end)

script.on_configuration_changed(function(event)
    if global.vehicle_burners == nil then global.vehicle_burners = {} end
    if global.current_car == nil then global.current_car = {} end
end)

script.on_event(defines.events.on_gui_opened, function(event)
    if event.gui_type == defines.gui_type.entity and event.entity ~= nil and event.entity.type == 'car' then
        global.current_car = event.entity
    end
end)

script.on_event(defines.events.on_gui_closed, function(event)
    if event.gui_type == defines.gui_type.entity and event.entity.type == 'car' and global.current_car == event.entity then
        global.current_car = {}
    end
end)

script.on_event(defines.events.on_player_placed_equipment, function(event)
    if event.equipment.name == 'angels-burner-generator-vequip' and next(global.current_car) ~= nil then
        global.vehicle_burners[global.current_car.unit_number] =
            {vehicle = global.current_car, burner = event.equipment, grid = event.grid}
    end
end)

script.on_event(defines.events.on_player_removed_equipment, function(event)
    if event.equipment == 'angels-burner-generator-vequip' and next(global.current_car) ~= nil then
        global.vehicle_burners[global.current_car.unit_number] = nil
    end
end)

script.on_nth_tick(60, function()
    if next(global.vehicle_burners) ~= nil then
        for v, vehicle in pairs(global.vehicle_burners) do
            local inv = vehicle.burner.burner.inventory.get_item_count()
            if inv < 10 then
                local car_inv = vehicle.vehicle.get_inventory(defines.inventory.car_trunk)
                local car_content = car_inv.get_contents()
                local burner = vehicle.burner.burner
                if burner.currently_burning ~= nil then
                    if car_content[burner.currently_burning.name] ~= nil then
                        local car = vehicle.vehicle.get_inventory(defines.inventory.car_trunk)
                        local amount = burner.inventory.get_insertable_count(burner.currently_burning.name)
                        local removed = car.remove({name = burner.currently_burning.name, count = amount})
                        burner.inventory.insert({name = burner.currently_burning.name, count = removed})
                    else
                        local highest_fuel
                        for i, item in pairs(car_content) do
                            if game.item_prototypes[i] ~= nil and
                                burner.fuel_categories[game.item_prototypes[i].fuel_category] ~= nil and
                                game.item_prototypes[i].fuel_value ~= nil then
                                if highest_fuel ~= nil and i ~= highest_fuel and game.item_prototypes[i].fuel_value >
                                    game.item_prototypes[highest_fuel].fuel_value then
                                    highest_fuel = i
                                elseif highest_fuel == nil then
                                    highest_fuel = i
                                end
                            end
                        end
                        if highest_fuel ~= nil then
                            local car = vehicle.vehicle.get_inventory(defines.inventory.car_trunk)
                            local amount = burner.inventory.get_insertable_count(highest_fuel)
                            local removed = car.remove({name = highest_fuel, count = amount})
                            burner.inventory.insert({name = highest_fuel, count = removed})
                        end
                    end
                else
                    local highest_fuel
                    for i, item in pairs(car_content) do
                        if game.item_prototypes[i] ~= nil and
                            burner.fuel_categories[game.item_prototypes[i].fuel_category] ~= nil and
                            game.item_prototypes[i].fuel_value ~= nil then
                            if highest_fuel ~= nil and i ~= highest_fuel and game.item_prototypes[i].fuel_value >
                                game.item_prototypes[highest_fuel].fuel_value then
                                highest_fuel = i
                            elseif highest_fuel == nil then
                                highest_fuel = i
                            end
                        end
                    end
                    if highest_fuel ~= nil then
                        local car = vehicle.vehicle.get_inventory(defines.inventory.car_trunk)
                        local amount = burner.inventory.get_insertable_count(highest_fuel)
                        local removed = car.remove({name = highest_fuel, count = amount})
                        burner.inventory.insert({name = highest_fuel, count = removed})
                    end
                end
            end
        end
    end
end)

script.on_event(defines.events.on_entity_died, function(event)
    if event.entity.type == 'car' then
        if global.vehicle_burners[event.entity.unit_number] ~= nil then
            global.vehicle_burners[event.entity.unit_number] = nil
        end
    end
end)
