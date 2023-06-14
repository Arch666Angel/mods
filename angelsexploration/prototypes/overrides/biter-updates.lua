--UPDATE BOB SPAWNERS
if mods["bobenemies"] then
  unit_correction_offset = 1 / 100000000
  -- update the earliest spawn point of spitter on bobs spawner to the same evolution point of the base game spawner (with a small correction factor)
  local base_spawner = data.raw["unit-spawner"]["biter-spawner"]
  for _, bob_spawner in pairs({
    data.raw["unit-spawner"]["bob-biter-spawner"],
    data.raw["unit-spawner"]["bob-super-spawner"],
  }) do
    if base_spawner and bob_spawner then
      for unit, unit_correction in pairs({
        ["big-biter"] = unit_correction_offset,
      }) do
        for bob_spawn_idx, bob_spawn_data in pairs(bob_spawner.result_units) do
          if (bob_spawn_data.unit or bob_spawn_data[1]) == unit then
            local first_spawn = true
            for bob_point_idx, bob_point_data in pairs(bob_spawn_data.spawn_points or bob_spawn_data[2]) do
              if first_spawn and (bob_point_data.spawn_weight or bob_point_data[2]) > 0 then
                for base_spawn_idx, base_spawn_data in pairs(base_spawner.result_units) do
                  if (base_spawn_data.unit or base_spawn_data[1]) == unit then
                    for base_point_idx, base_point_data in pairs(base_spawn_data.spawn_points or base_spawn_data[2]) do
                      if first_spawn and (base_point_data.spawn_weight or base_point_data[2]) > 0 then
                        local base_point = (base_spawn_data.spawn_points or base_spawn_data[2])[base_point_idx > 1 and (base_point_idx - 1) or 1]
                        bob_spawner.result_units[bob_spawn_idx][bob_spawn_data.spawn_points and "spawn_points" or 2][bob_point_idx > 1 and (bob_point_idx - 1) or 1][bob_point_data.evolution_factor and "evolution_factor" or 1] = base_point[base_point.evolution_factor and "evolution_factor" or 1]
                          + unit_correction -- marginally larger point (required for tips and tricks 1-2-x behaviour)

                        if
                          bob_spawner.result_units[bob_spawn_idx][bob_spawn_data.spawn_points and "spawn_points" or 2][(bob_point_idx > 1 and (bob_point_idx - 1) or 1) + 1][bob_point_data.evolution_factor and "evolution_factor" or 1]
                          < base_point[base_point.evolution_factor and "evolution_factor" or 1] + unit_correction
                        then
                          bob_spawner.result_units[bob_spawn_idx][bob_spawn_data.spawn_points and "spawn_points" or 2][(bob_point_idx > 1 and (bob_point_idx - 1) or 1) + 1][bob_point_data.evolution_factor and "evolution_factor" or 1] = base_point[base_point.evolution_factor and "evolution_factor" or 1]
                            + 2 * unit_correction -- marginally larger point than the previous point
                        end
                        first_spawn = false
                      end
                    end
                  end
                end

                if first_spawn and unit_correction ~= 0 then -- not found in base spawner (only adding correction factor)
                  bob_spawner.result_units[bob_spawn_idx][bob_spawn_data.spawn_points and "spawn_points" or 2][bob_point_idx > 1 and (bob_point_idx - 1) or 1][bob_point_data.evolution_factor and "evolution_factor" or 1] = bob_spawner.result_units[bob_spawn_idx][bob_spawn_data.spawn_points and "spawn_points" or 2][bob_point_idx > 1 and (bob_point_idx - 1) or 1][bob_point_data.evolution_factor and "evolution_factor" or 1]
                    + unit_correction
                end
              end
            end
          end
        end
      end
    end
  end

  base_spawner = data.raw["unit-spawner"]["spitter-spawner"]
  for _, bob_spawner in pairs({
    data.raw["unit-spawner"]["bob-spitter-spawner"],
    data.raw["unit-spawner"]["bob-super-spawner"],
  }) do
    if base_spawner and bob_spawner then
      for unit, unit_correction in pairs({
        ["small-spitter"] = unit_correction_offset,
        ["medium-spitter"] = unit_correction_offset,
        ["big-spitter"] = unit_correction_offset,
      }) do
        for bob_spawn_idx, bob_spawn_data in pairs(bob_spawner.result_units) do
          if (bob_spawn_data.unit or bob_spawn_data[1]) == unit then
            local first_spawn = true
            for bob_point_idx, bob_point_data in pairs(bob_spawn_data.spawn_points or bob_spawn_data[2]) do
              if first_spawn and (bob_point_data.spawn_weight or bob_point_data[2]) > 0 then
                for base_spawn_idx, base_spawn_data in pairs(base_spawner.result_units) do
                  if (base_spawn_data.unit or base_spawn_data[1]) == unit then
                    for base_point_idx, base_point_data in pairs(base_spawn_data.spawn_points or base_spawn_data[2]) do
                      if first_spawn and (base_point_data.spawn_weight or base_point_data[2]) > 0 then
                        local base_point = (base_spawn_data.spawn_points or base_spawn_data[2])[base_point_idx > 1 and (base_point_idx - 1) or 1]
                        bob_spawner.result_units[bob_spawn_idx][bob_spawn_data.spawn_points and "spawn_points" or 2][bob_point_idx > 1 and (bob_point_idx - 1) or 1][bob_point_data.evolution_factor and "evolution_factor" or 1] = base_point[base_point.evolution_factor and "evolution_factor" or 1]
                          + unit_correction -- marginally larger point (required for tips and tricks 1-2-x behaviour)

                        if
                          bob_spawner.result_units[bob_spawn_idx][bob_spawn_data.spawn_points and "spawn_points" or 2][(bob_point_idx > 1 and (bob_point_idx - 1) or 1) + 1][bob_point_data.evolution_factor and "evolution_factor" or 1]
                          < base_point[base_point.evolution_factor and "evolution_factor" or 1] + unit_correction
                        then
                          bob_spawner.result_units[bob_spawn_idx][bob_spawn_data.spawn_points and "spawn_points" or 2][(bob_point_idx > 1 and (bob_point_idx - 1) or 1) + 1][bob_point_data.evolution_factor and "evolution_factor" or 1] = base_point[base_point.evolution_factor and "evolution_factor" or 1]
                            + 2 * unit_correction -- marginally larger point than the previous point
                        end
                        first_spawn = false
                      end
                    end
                  end
                end

                if first_spawn and unit_correction ~= 0 then -- not found in base spawner (only adding correction factor)
                  bob_spawner.result_units[bob_spawn_idx][bob_spawn_data.spawn_points and "spawn_points" or 2][bob_point_idx > 1 and (bob_point_idx - 1) or 1][bob_point_data.evolution_factor and "evolution_factor" or 1] = bob_spawner.result_units[bob_spawn_idx][bob_spawn_data.spawn_points and "spawn_points" or 2][bob_point_idx > 1 and (bob_point_idx - 1) or 1][bob_point_data.evolution_factor and "evolution_factor" or 1]
                    + unit_correction
                end
              end
            end
          end
        end
      end
    end
  end

  local elemental_biter_spawner = data.raw["unit-spawner"]["bob-biter-spawner"]
  if elemental_biter_spawner then
    for _, elemental_biter_spawner_data in pairs(elemental_biter_spawner.result_units) do
      local elemental_biter_spawner_biter = elemental_biter_spawner_data[1]
      if elemental_biter_spawner_biter == "bob-huge-acid-biter" then
        elemental_biter_spawner_data[2][1][1] = 0.45
      end
    end
  end

  local elemental_spitter_spawner = data.raw["unit-spawner"]["bob-spitter-spawner"]
  if elemental_spitter_spawner then
    for _, elemental_spitter_spawner_data in pairs(elemental_spitter_spawner.result_units) do
      local elemental_spitter_spawner_spitter = elemental_spitter_spawner_data[1]
      if elemental_spitter_spawner_spitter == "bob-huge-acid-spitter" then
        elemental_spitter_spawner_data[2][1][1] = 0.45 + unit_correction_offset
      end
    end
  end

  local super_spawner = data.raw["unit-spawner"]["bob-super-spawner"]
  if super_spawner then
    for _, super_spawner_data in pairs(super_spawner.result_units) do
      local super_spawner_biter = super_spawner_data[1]
      if super_spawner_biter == "bob-big-piercing-biter" then
        table.remove(super_spawner_data[2], 1)
        super_spawner_data[2][1][2] = 0
      end
      if super_spawner_biter == "bob-big-electric-spitter" then
        table.remove(super_spawner_data[2], 1)
        super_spawner_data[2][1][2] = 0
      end
    end
  end
end

--UPDATE BITERS
local biter_definitions = require("prototypes.entities.biter-definitions")

angelsmods.functions.update_alien(biter_definitions.small_biter)
angelsmods.functions.update_alien(biter_definitions.medium_biter)
angelsmods.functions.update_alien(biter_definitions.big_biter)
angelsmods.functions.update_alien(biter_definitions.behemoth_biter)
angelsmods.functions.update_alien(biter_definitions.colossal_biter)

angelsmods.functions.update_alien(biter_definitions.small_spitter)
angelsmods.functions.update_alien(biter_definitions.medium_spitter)
angelsmods.functions.update_alien(biter_definitions.big_spitter)
angelsmods.functions.update_alien(biter_definitions.behemoth_spitter)
angelsmods.functions.update_alien(biter_definitions.colossal_spitter)

angelsmods.functions.update_alien(biter_definitions.small_scarab)
angelsmods.functions.update_alien(biter_definitions.medium_scarab)
angelsmods.functions.update_alien(biter_definitions.big_scarab)
angelsmods.functions.update_alien(biter_definitions.behemoth_scarab)
angelsmods.functions.update_alien(biter_definitions.colossal_scarab)

angelsmods.functions.update_alien(biter_definitions.small_psyker)
angelsmods.functions.update_alien(biter_definitions.medium_psyker)
angelsmods.functions.update_alien(biter_definitions.big_psyker)
angelsmods.functions.update_alien(biter_definitions.behemoth_psyker)
angelsmods.functions.update_alien(biter_definitions.colossal_psyker)

angelsmods.functions.update_alien(biter_definitions.bob_big_piercing_biter)
angelsmods.functions.update_alien(biter_definitions.bob_huge_acid_biter)
angelsmods.functions.update_alien(biter_definitions.bob_huge_explosive_biter)
angelsmods.functions.update_alien(biter_definitions.bob_giant_fire_biter)
angelsmods.functions.update_alien(biter_definitions.bob_giant_poison_biter)

angelsmods.functions.update_alien(biter_definitions.bob_big_electric_spitter)
angelsmods.functions.update_alien(biter_definitions.bob_huge_acid_spitter)
angelsmods.functions.update_alien(biter_definitions.bob_huge_explosive_spitter)
angelsmods.functions.update_alien(biter_definitions.bob_giant_fire_spitter)
angelsmods.functions.update_alien(biter_definitions.bob_giant_poison_spitter)

angelsmods.functions.update_spawner(biter_definitions.spitter_spawner)
angelsmods.functions.update_spawner(biter_definitions.biter_spawner)
angelsmods.functions.update_spawner(biter_definitions.scarab_spawner)
angelsmods.functions.update_spawner(biter_definitions.psyker_spawner)

--SHOW RESISTANCES
for _, unit in pairs(data.raw.unit) do
  unit.hide_resistances = false
end

for _, spawner in pairs(data.raw["unit-spawner"]) do
  spawner.hide_resistances = false
end

--CONVERT LOOT
local loot_to_be_converted = {}
if angelsmods.triggers.artifacts["base"] then
  loot_to_be_converted["alien-artifact"] = { name = "small-alien-artifact", rate = 2 }
end
if angelsmods.triggers.artifacts["red"] then
  loot_to_be_converted["alien-artifact-red"] = { name = "small-alien-artifact-red", rate = 2 }
end
if angelsmods.triggers.artifacts["yellow"] then
  loot_to_be_converted["alien-artifact-yellow"] = { name = "small-alien-artifact-yellow", rate = 2 }
end
if angelsmods.triggers.artifacts["orange"] then
  loot_to_be_converted["alien-artifact-orange"] = { name = "small-alien-artifact-orange", rate = 2 }
end
if angelsmods.triggers.artifacts["blue"] then
  loot_to_be_converted["alien-artifact-blue"] = { name = "small-alien-artifact-blue", rate = 2 }
end
if angelsmods.triggers.artifacts["purple"] then
  loot_to_be_converted["alien-artifact-purple"] = { name = "small-alien-artifact-purple", rate = 2 }
end
if angelsmods.triggers.artifacts["green"] then
  loot_to_be_converted["alien-artifact-green"] = { name = "small-alien-artifact-green", rate = 2 }
end

local function update_loot_table(loot_table)
  for _, loot in pairs(loot_table or {}) do
    if loot_to_be_converted[loot.item] then
      --loot.count_min = ((loot.count_min == nil and 1) or loot.count_min) * loot_to_be_converted[loot.item].rate
      loot.count_max = ((loot.count_max == nil and 1) or loot.count_max) * loot_to_be_converted[loot.item].rate
      loot.item = loot_to_be_converted[loot.item].name
    end
  end
end
for _, type in pairs({ "unit", "unit-spawner", "turret" }) do
  for _, unit in pairs(data.raw[type] or {}) do
    update_loot_table(unit.loot)
  end
end

--[[if mods["bobenemies"] then
  for _, biter in pairs({ "behemoth-biter", "behemoth-spitter" }) do
    local unit = data.raw.unit[biter]
    if biter then
      for _, loot in pairs(unit.loot or {}) do
        if loot.item == "small-alien-artifact" then
          loot.count_min = ((loot.count_min == nil and 1) or loot.count_min) / 4 --  4 -> 1
          loot.count_max = ((loot.count_max == nil and 1) or loot.count_max) / 4 -- 12 -> 3
        end
      end
    end
  end
end
--]]
