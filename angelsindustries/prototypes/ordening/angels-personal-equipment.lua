local reorder = function(type, item, subgroup, order)
  angelsmods.functions.move_item(item, subgroup, order, type)
end

-------------------------------------------------------------------------------
-- CHARACTERS -----------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobclasses"] then
  data.raw["item-subgroup"]["bodies"].group = "angels-logistics"
  data.raw["item-subgroup"]["bodies"].order = "d-a[armor]-aa"
  data.raw["item-subgroup"]["body-parts"].group = "angels-logistics"
  data.raw["item-subgroup"]["body-parts"].order = "d-a[armor]-ab"
end

-------------------------------------------------------------------------------
-- ARMOR ----------------------------------------------------------------------
-------------------------------------------------------------------------------
reorder("armor", "light-armor", "angels-personal-equipment-armor", "a-a")
reorder("armor", "heavy-armor", "angels-personal-equipment-armor", "a-b")
if mods["bobwarfare"] then
  reorder("armor", "heavy-armor-2", "angels-personal-equipment-armor", "a-c")
  reorder("armor", "heavy-armor-3", "angels-personal-equipment-armor", "a-d")
end

reorder("armor", "modular-armor", "angels-personal-equipment-armor", "b-a")
reorder("armor", "power-armor", "angels-personal-equipment-armor", "b-b")
reorder("armor", "power-armor-mk2", "angels-personal-equipment-armor", "b-c")
if mods["bobwarfare"] then
  reorder("armor", "bob-power-armor-mk3", "angels-personal-equipment-armor", "b-d")
  reorder("armor", "bob-power-armor-mk4", "angels-personal-equipment-armor", "b-e")
  reorder("armor", "bob-power-armor-mk5", "angels-personal-equipment-armor", "b-f")
end

-------------------------------------------------------------------------------
-- POWER EQUIPMENT ------------------------------------------------------------
-------------------------------------------------------------------------------
-- solar panel
reorder("item", "solar-panel-equipment", "angels-personal-equipment-power-a", "a")
if mods["bobequipment"] then
  reorder("item", "solar-panel-equipment-2", "angels-personal-equipment-power-a", "b")
  reorder("item", "solar-panel-equipment-3", "angels-personal-equipment-power-a", "c")
  reorder("item", "solar-panel-equipment-4", "angels-personal-equipment-power-a", "d")
end

-- fusion reactor
reorder("item", "fusion-reactor-equipment", "angels-personal-equipment-power-a", "b")
if mods["bobequipment"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-personal-equipment-power-b",
      group = "angels-logistics",
      order = "d-b[equipment]-b",
    },
  })
  reorder("item", "fusion-reactor-equipment", "angels-personal-equipment-power-b", "a")
  reorder("item", "fusion-reactor-equipment-2", "angels-personal-equipment-power-b", "b")
  reorder("item", "fusion-reactor-equipment-3", "angels-personal-equipment-power-b", "c")
  reorder("item", "fusion-reactor-equipment-4", "angels-personal-equipment-power-b", "d")
end

-- battery equipment
reorder("item", "battery-equipment", "angels-personal-equipment-power-a", "c")
reorder("item", "battery-mk2-equipment", "angels-personal-equipment-power-a", "d")
if mods["bobequipment"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-personal-equipment-power-c",
      group = "angels-logistics",
      order = "d-b[equipment]-c",
    },
  })
  reorder("item", "battery-equipment", "angels-personal-equipment-power-c", "a")
  reorder("item", "battery-mk2-equipment", "angels-personal-equipment-power-c", "b")
  reorder("item", "battery-mk3-equipment", "angels-personal-equipment-power-c", "c")
  reorder("item", "battery-mk4-equipment", "angels-personal-equipment-power-c", "d")
  reorder("item", "battery-mk5-equipment", "angels-personal-equipment-power-c", "e")
  reorder("item", "battery-mk6-equipment", "angels-personal-equipment-power-c", "f")
end

-- other power stuffs
reorder("item", "night-vision-equipment", "angels-personal-equipment-power-a", "e")
reorder("item", "belt-immunity-equipment", "angels-personal-equipment-power-a", "f")
if mods["bobequipment"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-personal-equipment-power-d",
      group = "angels-logistics",
      order = "d-b[equipment]-d",
    },
  })
  reorder("item", "night-vision-equipment", "angels-personal-equipment-power-d", "a")
  reorder("item", "night-vision-equipment-2", "angels-personal-equipment-power-d", "b")
  reorder("item", "night-vision-equipment-3", "angels-personal-equipment-power-d", "c")
  reorder("item", "belt-immunity-equipment", "angels-personal-equipment-power-d", "d")
end

-------------------------------------------------------------------------------
-- ROBOT EQUIPMENT ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobequipment"] then
  reorder("item", "personal-roboport-robot-equipment", "angels-personal-equipment-robot-a", "a")
  reorder("item", "personal-roboport-robot-equipment-2", "angels-personal-equipment-robot-a", "b")
  reorder("item", "personal-roboport-robot-equipment-3", "angels-personal-equipment-robot-a", "c")
  reorder("item", "personal-roboport-robot-equipment-4", "angels-personal-equipment-robot-a", "d")
end

-- chargepad
if mods["bobequipment"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-personal-equipment-robot-b",
      group = "angels-logistics",
      order = "d-c[equipment]-b",
    },
  })
  reorder("item", "personal-roboport-chargepad-equipment", "angels-personal-equipment-robot-b", "a")
  reorder("item", "personal-roboport-chargepad-equipment-2", "angels-personal-equipment-robot-b", "b")
  reorder("item", "personal-roboport-chargepad-equipment-3", "angels-personal-equipment-robot-b", "c")
  reorder("item", "personal-roboport-chargepad-equipment-4", "angels-personal-equipment-robot-b", "d")
end

-- antenna
if mods["bobequipment"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-personal-equipment-robot-c",
      group = "angels-logistics",
      order = "d-c[equipment]-c",
    },
  })
  reorder("item", "personal-roboport-antenna-equipment", "angels-personal-equipment-robot-c", "a")
  reorder("item", "personal-roboport-antenna-equipment-2", "angels-personal-equipment-robot-c", "b")
  reorder("item", "personal-roboport-antenna-equipment-3", "angels-personal-equipment-robot-c", "c")
  reorder("item", "personal-roboport-antenna-equipment-4", "angels-personal-equipment-robot-c", "d")
end

-- roboport
reorder("item", "personal-roboport-equipment", "angels-personal-equipment-power-a", "g")
reorder("item", "personal-roboport-mk2-equipment", "angels-personal-equipment-power-a", "h")
if mods["bobequipment"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-personal-equipment-robot-d",
      group = "angels-logistics",
      order = "d-c[equipment]-d",
    },
  })
  reorder("item", "personal-roboport-equipment", "angels-personal-equipment-robot-d", "a")
  reorder("item", "personal-roboport-mk2-equipment", "angels-personal-equipment-robot-d", "b")
  reorder("item", "personal-roboport-mk3-equipment", "angels-personal-equipment-robot-d", "c")
  reorder("item", "personal-roboport-mk4-equipment", "angels-personal-equipment-robot-d", "d")
end

-------------------------------------------------------------------------------
-- ROBOT COMBAT ---------------------------------------------------------------
-------------------------------------------------------------------------------
-- shields
reorder("item", "energy-shield-equipment", "angels-personal-equipment-combat-a", "a")
reorder("item", "energy-shield-mk2-equipment", "angels-personal-equipment-combat-a", "b")
if mods["bobequipment"] then
  reorder("item", "energy-shield-mk3-equipment", "angels-personal-equipment-combat-a", "c")
  reorder("item", "energy-shield-mk4-equipment", "angels-personal-equipment-combat-a", "d")
  reorder("item", "energy-shield-mk5-equipment", "angels-personal-equipment-combat-a", "e")
  reorder("item", "energy-shield-mk6-equipment", "angels-personal-equipment-combat-a", "f")
end

-- laser
reorder("item", "personal-laser-defense-equipment", "angels-personal-equipment-combat-a", "c")
if mods["bobequipment"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-personal-equipment-combat-b",
      group = "angels-logistics",
      order = "d-d[equipment]-b",
    },
  })
  reorder("item", "personal-laser-defense-equipment", "angels-personal-equipment-combat-b", "a")
  reorder("item", "personal-laser-defense-equipment-2", "angels-personal-equipment-combat-b", "b")
  reorder("item", "personal-laser-defense-equipment-3", "angels-personal-equipment-combat-b", "c")
  reorder("item", "personal-laser-defense-equipment-4", "angels-personal-equipment-combat-b", "d")
  reorder("item", "personal-laser-defense-equipment-5", "angels-personal-equipment-combat-b", "e")
  reorder("item", "personal-laser-defense-equipment-6", "angels-personal-equipment-combat-b", "f")
end

-- exoskeleton
reorder("item", "exoskeleton-equipment", "angels-personal-equipment-combat-a", "d")
if mods["bobequipment"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-personal-equipment-combat-c",
      group = "angels-logistics",
      order = "d-d[equipment]-c",
    },
  })
  reorder("item", "exoskeleton-equipment", "angels-personal-equipment-combat-c", "a")
  reorder("item", "exoskeleton-equipment-2", "angels-personal-equipment-combat-c", "b")
  reorder("item", "exoskeleton-equipment-3", "angels-personal-equipment-combat-c", "c")
end

-- other defensive stuffs
reorder("capsule", "discharge-defense-remote", "angels-personal-equipment-combat-a", "e")
reorder("item", "discharge-defense-equipment", "angels-personal-equipment-combat-a", "f")
if mods["bobequipment"] then
  reorder("capsule", "discharge-defense-remote", "angels-personal-equipment-combat-c", "d")
  reorder("item", "discharge-defense-equipment", "angels-personal-equipment-combat-c", "e")
end
