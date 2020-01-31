if angelsmods.industries and angelsmods.industries.overhaul then
	data.raw["item-with-entity-data"]["car"].subgroup = "angels-exploration"
	data.raw["item-with-entity-data"]["tank"].subgroup = "angels-exploration"
-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-energy")
-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-repair")
-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-defense")
-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-attack")
-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-movement")
end

-- if data.raw["equipment-category"]["armoured-vehicle"] then
-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"tank")
-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"vehicle")
-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"armoured-vehicle")
-- end

-- function modify_biter(biter, resistance, health, damage, evolution)
-- data.raw.unit[biter].resistances = resistance
-- data.raw.unit[biter].max_health = health
-- data.raw.unit[biter].attack_parameters.ammo_type.action.action_delivery.target_effects = damage
-- end

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
