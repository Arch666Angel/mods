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
  reorder("item", "bob-vehicle-solar-panel-equipment-1", "angels-vehicle-equipment-bobpower-a", "a")
  reorder("item", "bob-vehicle-solar-panel-equipment-2", "angels-vehicle-equipment-bobpower-a", "b")
  reorder("item", "bob-vehicle-solar-panel-equipment-3", "angels-vehicle-equipment-bobpower-a", "c")
  reorder("item", "bob-vehicle-solar-panel-equipment-4", "angels-vehicle-equipment-bobpower-a", "d")
  reorder("item", "bob-vehicle-solar-panel-equipment-5", "angels-vehicle-equipment-bobpower-a", "e")

  -- fusion cells
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobpower-b",
      group = "angels-vehicles",
      order = "dc-a[power]-b[fusion-cell]",
    },
  })
  reorder("item", "bob-vehicle-fission-cell-equipment-1", "angels-vehicle-equipment-bobpower-b", "a")
  reorder("item", "bob-vehicle-fission-cell-equipment-2", "angels-vehicle-equipment-bobpower-b", "b")
  reorder("item", "bob-vehicle-fission-cell-equipment-3", "angels-vehicle-equipment-bobpower-b", "c")
  reorder("item", "bob-vehicle-fission-cell-equipment-4", "angels-vehicle-equipment-bobpower-b", "d")
  reorder("item", "bob-vehicle-fission-cell-equipment-5", "angels-vehicle-equipment-bobpower-b", "e")
  reorder("item", "bob-vehicle-fission-cell-equipment-6", "angels-vehicle-equipment-bobpower-b", "f")

  -- fusion reactors
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobpower-c",
      group = "angels-vehicles",
      order = "dc-a[power]-c[fusion-reactor]",
    },
  })
  reorder("item", "bob-vehicle-fission-reactor-equipment-1", "angels-vehicle-equipment-bobpower-c", "a")
  reorder("item", "bob-vehicle-fission-reactor-equipment-2", "angels-vehicle-equipment-bobpower-c", "b")
  reorder("item", "bob-vehicle-fission-reactor-equipment-3", "angels-vehicle-equipment-bobpower-c", "c")
  reorder("item", "bob-vehicle-fission-reactor-equipment-4", "angels-vehicle-equipment-bobpower-c", "d")
  reorder("item", "bob-vehicle-fission-reactor-equipment-5", "angels-vehicle-equipment-bobpower-c", "e")
  reorder("item", "bob-vehicle-fission-reactor-equipment-6", "angels-vehicle-equipment-bobpower-c", "f")

  -- batteries
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobpower-d",
      group = "angels-vehicles",
      order = "dc-a[power]-d[battery]",
    },
  })
  reorder("item", "bob-vehicle-battery-equipment-1", "angels-vehicle-equipment-bobpower-d", "a")
  reorder("item", "bob-vehicle-battery-equipment-2", "angels-vehicle-equipment-bobpower-d", "b")
  reorder("item", "bob-vehicle-battery-equipment-3", "angels-vehicle-equipment-bobpower-d", "c")
  reorder("item", "bob-vehicle-battery-equipment-4", "angels-vehicle-equipment-bobpower-d", "d")
  reorder("item", "bob-vehicle-battery-equipment-5", "angels-vehicle-equipment-bobpower-d", "e")
  reorder("item", "bob-vehicle-battery-equipment-6", "angels-vehicle-equipment-bobpower-d", "f")

  -- vehicle acceleration
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobpower-e",
      group = "angels-vehicles",
      order = "dc-a[power]-e[drive]",
    },
  })
  reorder("item", "bob-vehicle-motor-equipment", "angels-vehicle-equipment-bobpower-e", "a")
  reorder("item", "bob-vehicle-engine-equipment", "angels-vehicle-equipment-bobpower-e", "b")
  reorder("item", "bob-vehicle-belt-immunity-equipment", "angels-vehicle-equipment-bobpower-e", "z")

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
  reorder("item", "bob-vehicle-roboport-robot-equipment", "angels-vehicle-equipment-bobrobot-a", "a")
  reorder("item", "bob-vehicle-roboport-robot-equipment-2", "angels-vehicle-equipment-bobrobot-a", "b")
  reorder("item", "bob-vehicle-roboport-robot-equipment-3", "angels-vehicle-equipment-bobrobot-a", "c")
  reorder("item", "bob-vehicle-roboport-robot-equipment-4", "angels-vehicle-equipment-bobrobot-a", "d")

  -- charging pads
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobrobot-b",
      group = "angels-vehicles",
      order = "dc-b[robot]-b[chargepad]",
    },
  })
  reorder("item", "bob-vehicle-roboport-chargepad-equipment", "angels-vehicle-equipment-bobrobot-b", "a")
  reorder("item", "bob-vehicle-roboport-chargepad-equipment-2", "angels-vehicle-equipment-bobrobot-b", "b")
  reorder("item", "bob-vehicle-roboport-chargepad-equipment-3", "angels-vehicle-equipment-bobrobot-b", "c")
  reorder("item", "bob-vehicle-roboport-chargepad-equipment-4", "angels-vehicle-equipment-bobrobot-b", "d")

  -- area expanders
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobrobot-c",
      group = "angels-vehicles",
      order = "dc-b[robot]-c[expander]",
    },
  })
  reorder("item", "bob-vehicle-roboport-antenna-equipment", "angels-vehicle-equipment-bobrobot-c", "a")
  reorder("item", "bob-vehicle-roboport-antenna-equipment-2", "angels-vehicle-equipment-bobrobot-c", "b")
  reorder("item", "bob-vehicle-roboport-antenna-equipment-3", "angels-vehicle-equipment-bobrobot-c", "c")
  reorder("item", "bob-vehicle-roboport-antenna-equipment-4", "angels-vehicle-equipment-bobrobot-c", "d")

  -- combined roboports
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobrobot-d",
      group = "angels-vehicles",
      order = "dc-b[robot]-d[roboport]",
    },
  })
  reorder("item", "bob-vehicle-roboport-equipment-1", "angels-vehicle-equipment-bobrobot-d", "a")
  reorder("item", "bob-vehicle-roboport-equipment-2", "angels-vehicle-equipment-bobrobot-d", "b")
  reorder("item", "bob-vehicle-roboport-equipment-3", "angels-vehicle-equipment-bobrobot-d", "c")
  reorder("item", "bob-vehicle-roboport-equipment-4", "angels-vehicle-equipment-bobrobot-d", "d")

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
  reorder("item", "bob-vehicle-shield-equipment-1", "angels-vehicle-equipment-bobcombat-a", "a")
  reorder("item", "bob-vehicle-shield-equipment-2", "angels-vehicle-equipment-bobcombat-a", "b")
  reorder("item", "bob-vehicle-shield-equipment-3", "angels-vehicle-equipment-bobcombat-a", "c")
  reorder("item", "bob-vehicle-shield-equipment-4", "angels-vehicle-equipment-bobcombat-a", "d")
  reorder("item", "bob-vehicle-shield-equipment-5", "angels-vehicle-equipment-bobcombat-a", "e")
  reorder("item", "bob-vehicle-shield-equipment-6", "angels-vehicle-equipment-bobcombat-a", "f")

  -- laser defense
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobcombat-b",
      group = "angels-vehicles",
      order = "dc-c[combat]-b[laser]",
    },
  })
  reorder("item", "bob-vehicle-laser-defense-equipment-1", "angels-vehicle-equipment-bobcombat-b", "a")
  reorder("item", "bob-vehicle-laser-defense-equipment-2", "angels-vehicle-equipment-bobcombat-b", "b")
  reorder("item", "bob-vehicle-laser-defense-equipment-3", "angels-vehicle-equipment-bobcombat-b", "c")
  reorder("item", "bob-vehicle-laser-defense-equipment-4", "angels-vehicle-equipment-bobcombat-b", "d")
  reorder("item", "bob-vehicle-laser-defense-equipment-5", "angels-vehicle-equipment-bobcombat-b", "e")
  reorder("item", "bob-vehicle-laser-defense-equipment-6", "angels-vehicle-equipment-bobcombat-b", "f")

  -- big turrets
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-vehicle-equipment-bobcombat-c",
      group = "angels-vehicles",
      order = "dc-c[combat]-c[plasma]",
    },
  })
  reorder("item", "bob-vehicle-big-turret-equipment-1", "angels-vehicle-equipment-bobcombat-c", "a")
  reorder("item", "bob-vehicle-big-turret-equipment-2", "angels-vehicle-equipment-bobcombat-c", "b")
  reorder("item", "bob-vehicle-big-turret-equipment-3", "angels-vehicle-equipment-bobcombat-c", "c")
  reorder("item", "bob-vehicle-big-turret-equipment-4", "angels-vehicle-equipment-bobcombat-c", "d")
end
