-- if angelsmods.components then
	-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-energy")
	-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-repair")
	-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-defense")
	-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-attack")
	-- table.insert(data.raw["equipment-grid"]["angels-heavy-tank"].equipment_categories,"angels-heavy-movement")
-- end

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
-- if data.raw.unit["small-biter"] then
-- data.raw.unit["small-biter"].resistances = { {type = "physical", decrease = 0, percent = 0}, {type = "explosion", decrease = 0, percent = 0}, {type = "fire", decrease = 10, percent = 40}, {type = "laser", decrease = 10, percent = 40}, {type = "plasma", decrease = 10, percent = 40} }
-- data.raw.unit["small-biter"].max_health = 100
--data.raw.unit["small-biter"].resistances
-- end
-- if data.raw.unit["medium-biter"] then
-- data.raw.unit["medium-biter"].resistances = { {type = "physical", decrease = 10, percent = 40}, {type = "explosion", decrease = 0, percent = 0}, {type = "fire", decrease = 0, percent = 0}, {type = "laser", decrease = 10, percent = 40}, {type = "plasma", decrease = 10, percent = 40} }
-- data.raw.unit["medium-biter"].max_health = 200
--data.raw.unit["medium-biter"].resistances 
-- end
-- if data.raw.unit["big-biter"] then
-- data.raw.unit["big-biter"].resistances = { {type = "physical", decrease = 0, percent = 0}, {type = "explosion", decrease = 0, percent = 0}, {type = "fire", decrease = 10, percent = 40}, {type = "laser", decrease = 0, percent = 0}, {type = "plasma", decrease = 10, percent = 40} }
-- data.raw.unit["big-biter"].max_health = 300
--data.raw.unit["big-biter"].resistances
-- end
-- if data.raw.unit["behemoth-biter"] then
-- data.raw.unit["behemoth-biter"].resistances = { {type = "physical", decrease = 0, percent = 0}, {type = "explosion", decrease = 0, percent = 0}, {type = "fire", decrease = 10, percent = 40}, {type = "laser", decrease = 0, percent = 0}, {type = "plasma", decrease = 0, percent = 0} }
-- data.raw.unit["behemoth-biter"].max_health = 400
--data.raw.unit["behemoth-biter"].resistances
-- end

-- if data.raw.unit["small-spitter"] then
-- data.raw.unit["small-spitter"].resistances = { {type = "physical", decrease = 0, percent = 0}, {type = "explosion", decrease = 0, percent = 0}, {type = "fire", decrease = 10, percent = 40}, {type = "laser", decrease = 10, percent = 40}, {type = "plasma", decrease = 10, percent = 40} }
-- data.raw.unit["small-spitter"].max_health = 50
-- end
-- if data.raw.unit["medium-spitter"] then
-- data.raw.unit["medium-spitter"].resistances = { {type = "physical", decrease = 10, percent = 40}, {type = "explosion", decrease = 0, percent = 0}, {type = "fire", decrease = 0, percent = 0}, {type = "laser", decrease = 10, percent = 40}, {type = "plasma", decrease = 10, percent = 40} }
-- data.raw.unit["medium-spitter"].max_health = 100
-- end
-- if data.raw.unit["big-spitter"] then
-- data.raw.unit["big-spitter"].resistances = { {type = "physical", decrease = 0, percent = 0}, {type = "explosion", decrease = 0, percent = 0}, {type = "fire", decrease = 10, percent = 40}, {type = "laser", decrease = 0, percent = 0}, {type = "plasma", decrease = 10, percent = 40} }
-- data.raw.unit["big-spitter"].max_health = 150
-- end
-- if data.raw.unit["behemoth-spitter"] then
-- data.raw.unit["behemoth-spitter"].resistances = { {type = "physical", decrease = 0, percent = 0}, {type = "explosion", decrease = 0, percent = 0}, {type = "fire", decrease = 10, percent = 40}, {type = "laser", decrease = 0, percent = 0}, {type = "plasma", decrease = 0, percent = 0} }
-- data.raw.unit["behemoth-spitter"].max_health = 200
-- end

--SHOW RESISTANCES
for _, unit in pairs(data.raw.unit) do
	unit.hide_resistances = false
end

for _, spawner in pairs(data.raw["unit-spawner"]) do
	spawner.hide_resistances = false
end
