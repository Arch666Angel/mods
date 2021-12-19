local generate_spawner_data = function()
  -- map biter spawn range on each spawner
  local spawners = {}
  local calculate_spawn_data = function(raw_spawn_points)
    local spawn_points = {}
    for _,spawn_point in pairs(raw_spawn_points) do -- convert indices to numbers
      table.insert(spawn_points, util.table.deepcopy(spawn_point))
    end
    
    local _,first_spawn_point = next(spawn_points)
    if (first_spawn_point.evolution_factor or first_spawn_point[1]) ~= 0 and
      (first_spawn_point.spawn_weight     or first_spawn_point[2]) ~= 0 then
      table.insert(spawn_points, 1, {0,0}) -- insert start spawn point (if needed)
    end
    
    local res = {} -- look for spawn ranges (=wanted data)
    for spawn_idx,spawn_point in pairs(spawn_points) do
      if ((#res)%2) == 0 then -- looking for a weight > 0
        if (spawn_point.spawn_weight or spawn_point[2]) ~= 0 then
          if spawn_idx == 1 then
            table.insert(res, 0) -- spawns from the start
          else
            table.insert(res, spawn_points[spawn_idx-1].evolution_factor or spawn_points[spawn_idx-1][1])
          end
        end
      else -- looking for a weight == 0
        table.insert(res, spawn_point.evolution_factor or spawn_point[1])
      end
    end
    
    return ((#res)>0) and res or nil -- return the result (if any)
  end
  local combine_spawn_data = function(spawn_data_1, spawn_data_2)
    if spawn_data_1 == nil then return spawn_data_2 end
    if spawn_data_2 == nil then return spawn_data_1 end
    log("TODO!!!")
    return spawn_data_1
  end
  for _,spawner in pairs(data.raw["unit-spawner"]) do
    spawners[spawner.name] = {}
    for _,spawn in pairs(spawner.result_units) do
      spawners[spawner.name][spawn.unit or spawn[1]] = combine_spawn_data(spawners[spawner.name][spawn.unit or spawn[1]], calculate_spawn_data(spawn.spawn_points or spawn[2]))
    end
  end

  -- map units to single spawner (=earliest)
  local units = {}
  for spawner,spawner_data in pairs(spawners) do
    for unit,spawn_data in pairs(spawner_data) do
      units[unit] = units[unit] or {}
      units[unit][spawner] = spawn_data[1] -- first point this unit is spawning
    end
  end
  for unit,spawn_data in pairs(units) do
    local lowest_evo_factor = 2
    for spawner,evo_factor in pairs(spawn_data) do
      if evo_factor < lowest_evo_factor then
        lowest_evo_factor = evo_factor
      end
    end
    if lowest_evo_factor > 1 then
      lowest_evo_factor = -lowest_evo_factor
    end
    local spawners_to_remove = {}
    local highest_evo_factor_2 = 0
    for spawner,evo_factor in pairs(spawn_data) do
      if evo_factor == lowest_evo_factor then
        local evo_factor_2 = (#spawners[spawner][unit]) > 1 and spawners[spawner][unit][2] or 1
        if evo_factor_2 > highest_evo_factor_2 then
          highest_evo_factor_2 = evo_factor_2
        end
      else
        table.insert(spawners_to_remove, spawner)
      end
    end
    local picked = false
    for spawner,evo_factor in pairs(spawn_data) do
      if evo_factor == lowest_evo_factor then
        local evo_factor_2 = (#spawners[spawner][unit]) > 1 and spawners[spawner][unit][2] or 1
        if evo_factor_2 < highest_evo_factor_2 or picked then
          table.insert(spawners_to_remove, spawner)
        else
          picked = true -- picking the first if multiple spawners are 'equal'
        end
      end
    end
    for _,spawner_to_remove in pairs(spawners_to_remove) do
      units[unit][spawner_to_remove] = nil
    end
  end

  -- map all units to the spawner they are assigned to
  spawners = {}
  for unit,unit_data in pairs(units) do
    for spawner,evo_factor in pairs(unit_data) do
      spawners[spawner] = spawners[spawner] or {}
      spawners[spawner][unit] = evo_factor
    end
  end

  -- order biters in rising evolution factor for each spawner
  local order_units
  order_units = function(units)
    local highest_evo_factor = -1
    for _,evo_factor in pairs(units) do
      if evo_factor > highest_evo_factor then
        highest_evo_factor = evo_factor
      end
    end
    if highest_evo_factor < 0 then return units end -- recursion end
    local ordered_units = util.table.deepcopy(units)
    for unit,evo_factor in pairs(ordered_units) do
      if evo_factor == highest_evo_factor then
        ordered_units[unit] = nil
        ordered_units = order_units(ordered_units) -- recursion
        table.insert(ordered_units, {[unit]=evo_factor})
        return ordered_units
      end
    end
  end
  for spawner,unit_data in pairs(spawners) do
    spawners[spawner] = order_units(unit_data)
  end

  -- order spawners in rising evolution factor in unique biter spawns
  local order_spawners
  order_spawners = function(spawners)
    local highest_evo_factor = -1
    for _,spawner_data in pairs(spawners) do
      local _,evo_factor = next(spawner_data[1])
      if evo_factor > highest_evo_factor then
        highest_evo_factor = evo_factor
      end
    end
    if highest_evo_factor < 0 then return spawners end -- recursion end
    local ordered_spawners = util.table.deepcopy(spawners)
    for spawner,spawner_data in pairs(ordered_spawners) do
      local _,evo_factor = next(spawner_data[1])
      if evo_factor == highest_evo_factor then
        ordered_spawners[spawner] = nil
        ordered_spawners = order_spawners(ordered_spawners) -- recursion
        table.insert(ordered_spawners, {[spawner]=util.table.deepcopy(spawner_data)})
        return ordered_spawners
      end
    end
  end
  return order_spawners(spawners)
end

local num_to_char = function(num)
  return string.char(string.byte("a")+num-1)
end

return {
  ["generate_spawner_data"] = generate_spawner_data,
  ["num_to_char"] = num_to_char
}
