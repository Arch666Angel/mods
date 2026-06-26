-------------------------------------------------------------------------------
-- BITER EVOLUTION ------------------------------------------------------------
-------------------------------------------------------------------------------
local map_settings = data.raw["map-settings"]["map-settings"]
map_settings.enemy_evolution.time_factor = 0 -- no evolution increase due to time
map_settings.enemy_evolution.pollution_factor = 0 -- no evolution increase due to pollution
map_settings.enemy_evolution.destroy_factor = map_settings.enemy_evolution.destroy_factor * 0.25 -- half the evolution due to destroying enemy bases

map_settings.enemy_expansion.min_expansion_cooldown = 15 * 60 * 60 -- 15 minutes
map_settings.enemy_expansion.max_expansion_cooldown = 2 * 60 * 60 * 60 -- 2 hours

-------------------------------------------------------------------------------
-- POLLUTION ABSORBTION -------------------------------------------------------
-------------------------------------------------------------------------------
local pollution_absorption_factor_multiplier = 2
for _, tree in pairs(data.raw["tree"]) do
  if tree.emissions_per_second then
    tree.emissions_per_second.pollution = tree.emissions_per_second.pollution * pollution_absorption_factor_multiplier
  end
end

for _, unit_spawner in pairs(data.raw["unit-spawner"]) do
  if unit_spawner.pollution_absorption_absolute then
    unit_spawner.pollution_absorption_absolute = unit_spawner.pollution_absorption_absolute
      * pollution_absorption_factor_multiplier
  end

  if unit_spawner.pollution_absorption_proportional then
    unit_spawner.pollution_absorption_proportional = unit_spawner.pollution_absorption_proportional
      * pollution_absorption_factor_multiplier
  end
end

for _, tile in pairs(data.raw["tile"]) do
  if tile.pollution_absorption_per_second then
    tile.pollution_absorption_per_second = tile.pollution_absorption_per_second * pollution_absorption_factor_multiplier
  end
end

for _, unit in pairs(data.raw["unit"]) do
  if unit.pollution_to_join_attack then
    unit.pollution_to_join_attack = unit.pollution_to_join_attack * pollution_absorption_factor_multiplier
  end
end
