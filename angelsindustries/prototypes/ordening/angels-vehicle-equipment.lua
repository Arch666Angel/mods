local reorder = function(type, item, subgroup, order)
  angelsmods.functions.move_item(item, subgroup, order, type)
end

if mods["bobvehicleequipment"] then
  -----------------------------------------------------------------------------
  -- POWER GENERATION ---------------------------------------------------------
  -----------------------------------------------------------------------------
  -- solar panels
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobpower-a",
      group = "angels-vehicles",
      order = "dc-a[power]-a[solar]",
    },
  })
  reorder("item", "vehicle-solar-panel-1", "angels-vehicle-equipment-bobpower-a", "a")
  reorder("item", "vehicle-solar-panel-2", "angels-vehicle-equipment-bobpower-a", "b")
  reorder("item", "vehicle-solar-panel-3", "angels-vehicle-equipment-bobpower-a", "c")
  reorder("item", "vehicle-solar-panel-4", "angels-vehicle-equipment-bobpower-a", "d")
  reorder("item", "vehicle-solar-panel-5", "angels-vehicle-equipment-bobpower-a", "e")
  reorder("item", "vehicle-solar-panel-6", "angels-vehicle-equipment-bobpower-a", "f")

  -- fusion cells
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobpower-b",
      group = "angels-vehicles",
      order = "dc-a[power]-b[fusion-cell]",
    },
  })
  reorder("item", "vehicle-fusion-cell-1", "angels-vehicle-equipment-bobpower-b", "a")
  reorder("item", "vehicle-fusion-cell-2", "angels-vehicle-equipment-bobpower-b", "b")
  reorder("item", "vehicle-fusion-cell-3", "angels-vehicle-equipment-bobpower-b", "c")
  reorder("item", "vehicle-fusion-cell-4", "angels-vehicle-equipment-bobpower-b", "d")
  reorder("item", "vehicle-fusion-cell-5", "angels-vehicle-equipment-bobpower-b", "e")
  reorder("item", "vehicle-fusion-cell-6", "angels-vehicle-equipment-bobpower-b", "f")

  -- fusion reactors
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobpower-c",
      group = "angels-vehicles",
      order = "dc-a[power]-c[fusion-reactor]",
    },
  })
  reorder("item", "vehicle-fusion-reactor-1", "angels-vehicle-equipment-bobpower-c", "a")
  reorder("item", "vehicle-fusion-reactor-2", "angels-vehicle-equipment-bobpower-c", "b")
  reorder("item", "vehicle-fusion-reactor-3", "angels-vehicle-equipment-bobpower-c", "c")
  reorder("item", "vehicle-fusion-reactor-4", "angels-vehicle-equipment-bobpower-c", "d")
  reorder("item", "vehicle-fusion-reactor-5", "angels-vehicle-equipment-bobpower-c", "e")
  reorder("item", "vehicle-fusion-reactor-6", "angels-vehicle-equipment-bobpower-c", "f")

  -- batteries
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobpower-d",
      group = "angels-vehicles",
      order = "dc-a[power]-d[battery]",
    },
  })
  reorder("item", "vehicle-battery-1", "angels-vehicle-equipment-bobpower-d", "a")
  reorder("item", "vehicle-battery-2", "angels-vehicle-equipment-bobpower-d", "b")
  reorder("item", "vehicle-battery-3", "angels-vehicle-equipment-bobpower-d", "c")
  reorder("item", "vehicle-battery-4", "angels-vehicle-equipment-bobpower-d", "d")
  reorder("item", "vehicle-battery-5", "angels-vehicle-equipment-bobpower-d", "e")
  reorder("item", "vehicle-battery-6", "angels-vehicle-equipment-bobpower-d", "f")

  -- vehicle acceleration
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobpower-e",
      group = "angels-vehicles",
      order = "dc-a[power]-e[drive]",
    },
  })
  reorder("item", "vehicle-motor", "angels-vehicle-equipment-bobpower-e", "a")
  reorder("item", "vehicle-engine", "angels-vehicle-equipment-bobpower-e", "b")
  reorder("item", "vehicle-belt-immunity-equipment", "angels-vehicle-equipment-bobpower-e", "z")

  -----------------------------------------------------------------------------
  -- ROBOT EQUIPMENT ----------------------------------------------------------
  -----------------------------------------------------------------------------
  -- robot limit
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobrobot-a",
      group = "angels-vehicles",
      order = "dc-b[robot]-a[control]",
    },
  })
  reorder("item", "vehicle-roboport-robot-equipment", "angels-vehicle-equipment-bobrobot-a", "a")
  reorder("item", "vehicle-roboport-robot-equipment-2", "angels-vehicle-equipment-bobrobot-a", "b")
  reorder("item", "vehicle-roboport-robot-equipment-3", "angels-vehicle-equipment-bobrobot-a", "c")
  reorder("item", "vehicle-roboport-robot-equipment-4", "angels-vehicle-equipment-bobrobot-a", "d")

  -- charging pads
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobrobot-b",
      group = "angels-vehicles",
      order = "dc-b[robot]-b[chargepad]",
    },
  })
  reorder("item", "vehicle-roboport-chargepad-equipment", "angels-vehicle-equipment-bobrobot-b", "a")
  reorder("item", "vehicle-roboport-chargepad-equipment-2", "angels-vehicle-equipment-bobrobot-b", "b")
  reorder("item", "vehicle-roboport-chargepad-equipment-3", "angels-vehicle-equipment-bobrobot-b", "c")
  reorder("item", "vehicle-roboport-chargepad-equipment-4", "angels-vehicle-equipment-bobrobot-b", "d")

  -- area expanders
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobrobot-c",
      group = "angels-vehicles",
      order = "dc-b[robot]-c[expander]",
    },
  })
  reorder("item", "vehicle-roboport-antenna-equipment", "angels-vehicle-equipment-bobrobot-c", "a")
  reorder("item", "vehicle-roboport-antenna-equipment-2", "angels-vehicle-equipment-bobrobot-c", "b")
  reorder("item", "vehicle-roboport-antenna-equipment-3", "angels-vehicle-equipment-bobrobot-c", "c")
  reorder("item", "vehicle-roboport-antenna-equipment-4", "angels-vehicle-equipment-bobrobot-c", "d")

  -- combined roboports
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobrobot-d",
      group = "angels-vehicles",
      order = "dc-b[robot]-d[roboport]",
    },
  })
  reorder("item", "vehicle-roboport", "angels-vehicle-equipment-bobrobot-d", "a")
  reorder("item", "vehicle-roboport-2", "angels-vehicle-equipment-bobrobot-d", "b")
  reorder("item", "vehicle-roboport-3", "angels-vehicle-equipment-bobrobot-d", "c")
  reorder("item", "vehicle-roboport-4", "angels-vehicle-equipment-bobrobot-d", "d")

  -----------------------------------------------------------------------------
  -- COMBAT EQUIPMENT ---------------------------------------------------------
  -----------------------------------------------------------------------------
  -- shields
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobcombat-a",
      group = "angels-vehicles",
      order = "dc-c[combat]-a[shield]",
    },
  })
  reorder("item", "vehicle-shield-1", "angels-vehicle-equipment-bobcombat-a", "a")
  reorder("item", "vehicle-shield-2", "angels-vehicle-equipment-bobcombat-a", "b")
  reorder("item", "vehicle-shield-3", "angels-vehicle-equipment-bobcombat-a", "c")
  reorder("item", "vehicle-shield-4", "angels-vehicle-equipment-bobcombat-a", "d")
  reorder("item", "vehicle-shield-5", "angels-vehicle-equipment-bobcombat-a", "e")
  reorder("item", "vehicle-shield-6", "angels-vehicle-equipment-bobcombat-a", "f")

  -- laser defense
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobcombat-b",
      group = "angels-vehicles",
      order = "dc-c[combat]-b[laser]",
    },
  })
  reorder("item", "vehicle-laser-defense-1", "angels-vehicle-equipment-bobcombat-b", "a")
  reorder("item", "vehicle-laser-defense-2", "angels-vehicle-equipment-bobcombat-b", "b")
  reorder("item", "vehicle-laser-defense-3", "angels-vehicle-equipment-bobcombat-b", "c")
  reorder("item", "vehicle-laser-defense-4", "angels-vehicle-equipment-bobcombat-b", "d")
  reorder("item", "vehicle-laser-defense-5", "angels-vehicle-equipment-bobcombat-b", "e")
  reorder("item", "vehicle-laser-defense-6", "angels-vehicle-equipment-bobcombat-b", "f")

  -- big turrets
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobcombat-c",
      group = "angels-vehicles",
      order = "dc-c[combat]-c[plasma]",
    },
  })
  reorder("item", "vehicle-big-turret-1", "angels-vehicle-equipment-bobcombat-c", "a")
  reorder("item", "vehicle-big-turret-2", "angels-vehicle-equipment-bobcombat-c", "b")
  reorder("item", "vehicle-big-turret-3", "angels-vehicle-equipment-bobcombat-c", "c")
  reorder("item", "vehicle-big-turret-4", "angels-vehicle-equipment-bobcombat-c", "d")
  reorder("item", "vehicle-big-turret-5", "angels-vehicle-equipment-bobcombat-c", "e")
  reorder("item", "vehicle-big-turret-6", "angels-vehicle-equipment-bobcombat-c", "f")
end
