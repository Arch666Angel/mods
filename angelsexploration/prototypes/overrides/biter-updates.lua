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
if angelsmods.triggers.artifacts["base"] then
  loot_to_be_converted["alien-artifact"] = {name="small-alien-artifact", rate=2}
end
if angelsmods.triggers.artifacts["red"] then
  loot_to_be_converted["alien-artifact-red"] = {name="small-alien-artifact-red", rate=2}
end
if angelsmods.triggers.artifacts["yellow"] then
  loot_to_be_converted["alien-artifact-yellow"] = {name="small-alien-artifact-yellow", rate=2}
end
if angelsmods.triggers.artifacts["orange"] then
  loot_to_be_converted["alien-artifact-orange"] = {name="small-alien-artifact-orange", rate=2}
end
if angelsmods.triggers.artifacts["blue"] then
  loot_to_be_converted["alien-artifact-blue"] = {name="small-alien-artifact-blue", rate=2}
end
if angelsmods.triggers.artifacts["purple"] then
  loot_to_be_converted["alien-artifact-purple"] = {name="small-alien-artifact-purple", rate=2}
end
if angelsmods.triggers.artifacts["green"] then
  loot_to_be_converted["alien-artifact-red"] = {name="small-alien-artifact-green", rate=2}
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
      for _,loot in pairs(unit.loot) do
        if loot.item == "small-alien-artifact" then
          loot.count_min = ((loot.count_min == nil and 1) or loot.count_min) / 4 --  4 -> 1
          loot.count_max = ((loot.count_max == nil and 1) or loot.count_max) / 4 -- 12 -> 3
        end
      end
    end
  end
end
