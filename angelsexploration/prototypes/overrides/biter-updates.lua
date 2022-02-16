--UPDATE BOB SPAWNERS
if mods["bobenemies"] then
  -- update the earliest spawn point of spitter on bobs spawner to the same evolution point of the base game spawner (with a small correction factor)
  local base_spawner = data.raw["unit-spawner"]["spitter-spawner"]
  local bob_spawner = data.raw["unit-spawner"]["bob-spitter-spawner"]
  if base_spawner and bob_spawner then
    for unit,unit_correction in pairs(
      {
        ["small-spitter"] = 1/100000000,

        ["bob-big-electric-spitter"] = 0.02,
        ["bob-huge-acid-spitter"] = 0.02,
        ["bob-huge-explosive-spitter"] = 0.02,
      }
    ) do
      for bob_spawn_idx,bob_spawn_data in pairs(bob_spawner.result_units) do
        if (bob_spawn_data.unit or bob_spawn_data[1]) == unit then
          local first_spawn = true
          for bob_point_idx,bob_point_data in pairs(bob_spawn_data.spawn_points or bob_spawn_data[2]) do
            if first_spawn and (bob_point_data.spawn_weight or bob_point_data[2]) > 0 then

              for base_spawn_idx,base_spawn_data in pairs(base_spawner.result_units) do
                if (base_spawn_data.unit or base_spawn_data[1]) == unit then
                  for base_point_idx,base_point_data in pairs(base_spawn_data.spawn_points or base_spawn_data[2]) do
                    if first_spawn and (base_point_data.spawn_weight or base_point_data[2]) > 0 then

                      local base_point = (base_spawn_data.spawn_points or base_spawn_data[2])[base_point_idx > 1 and (base_point_idx - 1) or 1]
                      bob_spawner.result_units[bob_spawn_idx][bob_spawn_data.spawn_points and "spawn_points" or 2][bob_point_idx > 1 and (bob_point_idx - 1) or 1][bob_point_data.evolution_factor and "evolution_factor" or 1] =
                        base_point[base_point.evolution_factor and "evolution_factor" or 1] + unit_correction -- marginally larger point (required for tips and tricks 1-2-x behaviour)
                      first_spawn = false
                    end
                  end
                end
              end

              if first_spawn and unit_correction ~= 0 then -- not found in base spawner (only adding correction factor)
                bob_spawner.result_units[bob_spawn_idx][bob_spawn_data.spawn_points and "spawn_points" or 2][bob_point_idx > 1 and (bob_point_idx - 1) or 1][bob_point_data.evolution_factor and "evolution_factor" or 1] =
                  bob_spawner.result_units[bob_spawn_idx][bob_spawn_data.spawn_points and "spawn_points" or 2][bob_point_idx > 1 and (bob_point_idx - 1) or 1][bob_point_data.evolution_factor and "evolution_factor" or 1] + unit_correction
              end
            end
          end
        end
      end
    end
  end
end

--function modify_biter(biter, resistance, health, damage, evolution)
--  data.raw.unit[biter].resistances = resistance
--  data.raw.unit[biter].max_health = health
--  data.raw.unit[biter].attack_parameters.ammo_type.action.action_delivery.target_effects = damage
--end

--ADD RESISTANCES
angelsmods.functions.update_alien(small_biter)
angelsmods.functions.update_alien(medium_biter)
angelsmods.functions.update_alien(big_biter)
angelsmods.functions.update_alien(behemoth_biter)
angelsmods.functions.update_alien(colossal_biter)

angelsmods.functions.update_alien(small_spitter)
angelsmods.functions.update_alien(medium_spitter)
angelsmods.functions.update_alien(big_spitter)
angelsmods.functions.update_alien(behemoth_spitter)
angelsmods.functions.update_alien(colossal_spitter)

angelsmods.functions.update_spawner(spitter_spawner)
angelsmods.functions.update_spawner(biter_spawner)

--SHOW RESISTANCES
for _, unit in pairs(data.raw.unit) do
  unit.hide_resistances = false
end

for _, spawner in pairs(data.raw["unit-spawner"]) do
  spawner.hide_resistances = false
end

--CONVERT LOOT
local loot_to_be_converted = {}
if angelsmods.trigger.artifacts["base"] then
  loot_to_be_converted["alien-artifact"] = {name="small-alien-artifact", rate=2}
end
if angelsmods.trigger.artifacts["red"] then
  loot_to_be_converted["alien-artifact-red"] = {name="small-alien-artifact-red", rate=2}
end
if angelsmods.trigger.artifacts["yellow"] then
  loot_to_be_converted["alien-artifact-yellow"] = {name="small-alien-artifact-yellow", rate=2}
end
if angelsmods.trigger.artifacts["orange"] then
  loot_to_be_converted["alien-artifact-orange"] = {name="small-alien-artifact-orange", rate=2}
end
if angelsmods.trigger.artifacts["blue"] then
  loot_to_be_converted["alien-artifact-blue"] = {name="small-alien-artifact-blue", rate=2}
end
if angelsmods.trigger.artifacts["purple"] then
  loot_to_be_converted["alien-artifact-purple"] = {name="small-alien-artifact-purple", rate=2}
end
if angelsmods.trigger.artifacts["green"] then
  loot_to_be_converted["alien-artifact-green"] = {name="small-alien-artifact-green", rate=2}
end

local function update_loot_table(loot_table)
  for _,loot in pairs(loot_table or {}) do
    if loot_to_be_converted[loot.item] then
      --loot.count_min = ((loot.count_min == nil and 1) or loot.count_min) * loot_to_be_converted[loot.item].rate
      loot.count_max = ((loot.count_max == nil and 1) or loot.count_max) * loot_to_be_converted[loot.item].rate
      loot.item = loot_to_be_converted[loot.item].name
    end
  end
end
for _,type in pairs({"unit", "unit-spawner", "turret"}) do
  for _,unit in pairs(data.raw[type] or {}) do
    update_loot_table(unit.loot)
  end
end

if mods["bobenemies"] then
  for _, biter in pairs({"behemoth-biter", "behemoth-spitter"}) do
    local unit = data.raw.unit[biter]
    if biter then
      for _,loot in pairs(unit.loot or {}) do
        if loot.item == "small-alien-artifact" then
          loot.count_min = ((loot.count_min == nil and 1) or loot.count_min) / 4 --  4 -> 1
          loot.count_max = ((loot.count_max == nil and 1) or loot.count_max) / 4 -- 12 -> 3
        end
      end
    end
  end
end
