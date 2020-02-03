local OV = angelsmods.functions.OV

OV.disable_technology({ "angels-yellow-loader", "angels-red-loader", "angels-blue-loader" })

if data.raw["equipment-category"]["armoured-vehicle"] then
  table.insert(data.raw["equipment-grid"]["angels-crawler"].equipment_categories,"vehicle")
  table.insert(data.raw["equipment-grid"]["angels-crawler-locomotive"].equipment_categories,"vehicle")
  table.insert(data.raw["equipment-grid"]["angels-crawler-loco-wagon"].equipment_categories,"vehicle")
  table.insert(data.raw["equipment-grid"]["angels-crawler-bot-wagon"].equipment_categories,"vehicle")
end

if angelsmods.industries.overhaul and angelsmods.industries.components then
  --UPDATE RECIPES FOR ENTITIES
  require("prototypes.recipes.components-entity-update")
  require("prototypes.overrides.global-components-entity-update")

  --MODIFY ASSEMBLING MACHINES
  data.raw["item"]["assembling-machine-1"].subgroup = "angels-assemblers-medium"
  data.raw["item"]["assembling-machine-1"].order = "a"
  data.raw["item"]["assembling-machine-2"].subgroup = "angels-assemblers-medium"
  data.raw["item"]["assembling-machine-2"].order = "a"
  data.raw["item"]["assembling-machine-3"].subgroup = "angels-assemblers-medium"
  data.raw["item"]["assembling-machine-3"].order = "a"
  OV.add_unlock("automation", "angels-assembling-machine-small-1")
  OV.add_unlock("automation", "angels-assembling-machine-big-1")
  OV.add_unlock("automation-2", "angels-assembling-machine-small-2")
  OV.add_unlock("automation-2", "angels-assembling-machine-big-2")
  OV.add_unlock("automation-3", "angels-assembling-machine-small-3")
  OV.add_unlock("automation-3", "angels-assembling-machine-big-3")
  data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 2
  data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 3
  data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 4
  data.raw["item"]["assembling-machine-1"].subgroup = "angels-assemblers-medium"
  data.raw["item"]["assembling-machine-2"].subgroup = "angels-assemblers-medium"
  data.raw["item"]["assembling-machine-3"].subgroup = "angels-assemblers-medium"
end

-- BOBS
if mods['bobplates'] and angelsmods.industries.overhaul then
  if bobmods.logistics then
    --UPDATE ROBOPORTS
    data:extend({
      { type = "item-subgroup", name = "angels-roboport-a", group = "angels-logistics", order = "ba[roboport]-a", },
      { type = "item-subgroup", name = "angels-roboport-b", group = "angels-logistics", order = "ba[roboport]-b", },
      { type = "item-subgroup", name = "angels-roboport-c", group = "angels-logistics", order = "ba[roboport]-c", },
      { type = "item-subgroup", name = "angels-roboport-d", group = "angels-logistics", order = "ba[roboport]-d", },
    })
    -- antenna
    data.raw["item"]["roboport-antenna-1"].subgroup = "angels-roboport-a"
    data.raw["item"]["roboport-antenna-1"].order = "a[parts]-a[roboport-antenna]"
    data.raw["item"]["roboport-antenna-2"].subgroup = "angels-roboport-b"
    data.raw["item"]["roboport-antenna-2"].order = "a[parts]-a[roboport-antenna]"
    data.raw["item"]["roboport-antenna-3"].subgroup = "angels-roboport-c"
    data.raw["item"]["roboport-antenna-3"].order = "a[parts]-a[roboport-antenna]"
    data.raw["item"]["roboport-antenna-4"].subgroup = "angels-roboport-d"
    data.raw["item"]["roboport-antenna-4"].order = "a[parts]-a[roboport-antenna]"
    -- hatch
    data.raw["item"]["roboport-door-1"].subgroup = "angels-roboport-a"
    data.raw["item"]["roboport-door-1"].order = "a[parts]-b[roboport-door]"
    data.raw["item"]["roboport-door-2"].subgroup = "angels-roboport-b"
    data.raw["item"]["roboport-door-2"].order = "a[parts]-b[roboport-door]"
    data.raw["item"]["roboport-door-3"].subgroup = "angels-roboport-c"
    data.raw["item"]["roboport-door-3"].order = "a[parts]-b[roboport-door]"
    data.raw["item"]["roboport-door-4"].subgroup = "angels-roboport-d"
    data.raw["item"]["roboport-door-4"].order = "a[parts]-b[roboport-door]"
    -- chargepad
    data.raw["item"]["roboport-chargepad-1"].subgroup = "angels-roboport-a"
    data.raw["item"]["roboport-chargepad-1"].order = "a[parts]-c[roboport-chargepad]"
    data.raw["item"]["roboport-chargepad-2"].subgroup = "angels-roboport-b"
    data.raw["item"]["roboport-chargepad-2"].order = "a[parts]-c[roboport-chargepad]"
    data.raw["item"]["roboport-chargepad-3"].subgroup = "angels-roboport-c"
    data.raw["item"]["roboport-chargepad-3"].order = "a[parts]-c[roboport-chargepad]"
    data.raw["item"]["roboport-chargepad-4"].subgroup = "angels-roboport-d"
    data.raw["item"]["roboport-chargepad-4"].order = "a[parts]-c[roboport-chargepad]"
    -- roboport
    if data.raw["item"]["bob-roboport-2"] then
      data.raw["item"]["roboport"].subgroup = "angels-roboport-a"
      data.raw["item"]["roboport"].order = "b[port]-a[roboport]"
      data.raw["item"]["bob-roboport-2"].subgroup = "angels-roboport-b"
      data.raw["item"]["bob-roboport-2"].order = "b[port]-a[roboport]"
      data.raw["item"]["bob-roboport-3"].subgroup = "angels-roboport-c"
      data.raw["item"]["bob-roboport-3"].order = "b[port]-a[roboport]"
      data.raw["item"]["bob-roboport-4"].subgroup = "angels-roboport-d"
      data.raw["item"]["bob-roboport-4"].order = "b[port]-a[roboport]"
    end
    -- robochest
    data.raw["item"]["bob-logistic-zone-expander"].subgroup = "angels-roboport-a"
    data.raw["item"]["bob-logistic-zone-expander"].order = "b[port]-b[zone-expander]"
    data.raw["item"]["bob-logistic-zone-expander-2"].subgroup = "angels-roboport-b"
    data.raw["item"]["bob-logistic-zone-expander-2"].order = "b[port]-b[zone-expander]"
    data.raw["item"]["bob-logistic-zone-expander-3"].subgroup = "angels-roboport-c"
    data.raw["item"]["bob-logistic-zone-expander-3"].order = "b[port]-b[zone-expander]"
    data.raw["item"]["bob-logistic-zone-expander-4"].subgroup = "angels-roboport-d"
    data.raw["item"]["bob-logistic-zone-expander-4"].order = "b[port]-b[zone-expander]"
    -- robochest
    data.raw["item"]["bob-robochest"].subgroup = "angels-roboport-a"
    data.raw["item"]["bob-robochest"].order = "b[port]-c[robochest]"
    data.raw["item"]["bob-robochest-2"].subgroup = "angels-roboport-b"
    data.raw["item"]["bob-robochest-2"].order = "b[port]-c[robochest]"
    data.raw["item"]["bob-robochest-3"].subgroup = "angels-roboport-c"
    data.raw["item"]["bob-robochest-3"].order = "b[port]-c[robochest]"
    data.raw["item"]["bob-robochest-4"].subgroup = "angels-roboport-d"
    data.raw["item"]["bob-robochest-4"].order = "b[port]-c[robochest]"
    -- charge port
    data.raw["item"]["bob-robo-charge-port"].subgroup = "angels-roboport-a"
    data.raw["item"]["bob-robo-charge-port"].order = "b[port]-d[charge-port]-a[small]"
    data.raw["item"]["bob-robo-charge-port-2"].subgroup = "angels-roboport-b"
    data.raw["item"]["bob-robo-charge-port-2"].order = "b[port]-d[charge-port]-a[small]"
    data.raw["item"]["bob-robo-charge-port-3"].subgroup = "angels-roboport-c"
    data.raw["item"]["bob-robo-charge-port-3"].order = "b[port]-d[charge-port]-a[small]"
    data.raw["item"]["bob-robo-charge-port-4"].subgroup = "angels-roboport-d"
    data.raw["item"]["bob-robo-charge-port-4"].order = "b[port]-d[charge-port]-a[small]"
    data.raw["item"]["bob-robo-charge-port-large"].subgroup = "angels-roboport-a"
    data.raw["item"]["bob-robo-charge-port-large"].order = "b[port]-d[charge-port]-b[large]"
    data.raw["item"]["bob-robo-charge-port-large-2"].subgroup = "angels-roboport-b"
    data.raw["item"]["bob-robo-charge-port-large-2"].order = "b[port]-d[charge-port]-b[large]"
    data.raw["item"]["bob-robo-charge-port-large-3"].subgroup = "angels-roboport-c"
    data.raw["item"]["bob-robo-charge-port-large-3"].order = "b[port]-d[charge-port]-b[large]"
    data.raw["item"]["bob-robo-charge-port-large-4"].subgroup = "angels-roboport-d"
    data.raw["item"]["bob-robo-charge-port-large-4"].order = "b[port]-d[charge-port]-b[large]"
  end
end