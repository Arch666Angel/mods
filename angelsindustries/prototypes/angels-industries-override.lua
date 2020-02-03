local OV = angelsmods.functions.OV

OV.disable_technology({"angels-yellow-loader", "angels-red-loader", "angels-blue-loader"})

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
    --UPDATE LOGISTICS CONTAINERS
    data:extend({
      { type = "item-subgroup", name = "angels-chests-small-a", group = "angels-logistics", order = "aa[chests-small]-a", },
      { type = "item-subgroup", name = "angels-chests-small-b", group = "angels-logistics", order = "aa[chests-small]-b", },
      { type = "item-subgroup", name = "angels-chests-small-c", group = "angels-logistics", order = "aa[chests-small]-c", },
    })
    -- pre-logistics chests
    data.raw["item"]["wooden-chest"].subgroup = "angels-chests-small-a"
    data.raw["item"]["wooden-chest"].order = "za"
    data.raw["item"]["iron-chest"].subgroup = "angels-chests-small-a"
    data.raw["item"]["iron-chest"].order = "zb"
    -- steel chests
    data.raw["item"]["steel-chest"].subgroup = "angels-chests-small-a"
    data.raw["item"]["steel-chest"].order = "a"
    data.raw["item"]["logistic-chest-active-provider"].subgroup = "angels-chests-small-a"
    data.raw["item"]["logistic-chest-active-provider"].order = "b"
    data.raw["item"]["logistic-chest-passive-provider"].subgroup = "angels-chests-small-a"
    data.raw["item"]["logistic-chest-passive-provider"].order = "c"
    data.raw["item"]["logistic-chest-storage"].subgroup = "angels-chests-small-a"
    data.raw["item"]["logistic-chest-storage"].order = "d"
    data.raw["item"]["logistic-chest-buffer"].subgroup = "angels-chests-small-a"
    data.raw["item"]["logistic-chest-buffer"].order = "e"
    data.raw["item"]["logistic-chest-requester"].subgroup = "angels-chests-small-a"
    data.raw["item"]["logistic-chest-requester"].order = "f"
    -- brass chests
    data.raw["item"]["brass-chest"].subgroup = "angels-chests-small-b"
    data.raw["item"]["brass-chest"].order = "a"
    data.raw["item"]["logistic-chest-active-provider-2"].subgroup = "angels-chests-small-b"
    data.raw["item"]["logistic-chest-active-provider-2"].order = "b"
    data.raw["item"]["logistic-chest-passive-provider-2"].subgroup = "angels-chests-small-b"
    data.raw["item"]["logistic-chest-passive-provider-2"].order = "c"
    data.raw["item"]["logistic-chest-storage-2"].subgroup = "angels-chests-small-b"
    data.raw["item"]["logistic-chest-storage-2"].order = "d"
    data.raw["item"]["logistic-chest-buffer-2"].subgroup = "angels-chests-small-b"
    data.raw["item"]["logistic-chest-buffer-2"].order = "e"
    data.raw["item"]["logistic-chest-requester-2"].subgroup = "angels-chests-small-b"
    data.raw["item"]["logistic-chest-requester-2"].order = "f"
    -- titanium chests
    data.raw["item"]["titanium-chest"].subgroup = "angels-chests-small-c"
    data.raw["item"]["titanium-chest"].order = "a"
    data.raw["item"]["logistic-chest-active-provider-3"].subgroup = "angels-chests-small-c"
    data.raw["item"]["logistic-chest-active-provider-3"].order = "b"
    data.raw["item"]["logistic-chest-passive-provider-3"].subgroup = "angels-chests-small-c"
    data.raw["item"]["logistic-chest-passive-provider-3"].order = "c"
    data.raw["item"]["logistic-chest-storage-3"].subgroup = "angels-chests-small-c"
    data.raw["item"]["logistic-chest-storage-3"].order = "d"
    data.raw["item"]["logistic-chest-buffer-3"].subgroup = "angels-chests-small-c"
    data.raw["item"]["logistic-chest-buffer-3"].order = "e"
    data.raw["item"]["logistic-chest-requester-3"].subgroup = "angels-chests-small-c"
    data.raw["item"]["logistic-chest-requester-3"].order = "f"

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
    -- interface
    data.raw["item"]["bob-logistic-zone-interface"].subgroup = "angels-roboport-a"
    data.raw["item"]["bob-logistic-zone-interface"].order = "c[interface]"
    -- angels cargo ports
    data.raw["item"]["angels-relay-station"].subgroup = "angels-cargo-ports"
    data.raw["item"]["angels-relay-station-2"].subgroup = "angels-cargo-ports"
    data.raw["item"]["angels-zone-expander"].subgroup = "angels-cargo-ports"
    data.raw["item"]["angels-zone-expander-2"].subgroup = "angels-cargo-ports"
    data.raw["item"]["angels-construction-zone-expander"].subgroup = "angels-cargo-ports"
    data.raw["item"]["angels-construction-zone-expander-2"].subgroup = "angels-cargo-ports"

    --UPDATE ROBOTS
    data:extend({
      { type = "item-subgroup", name = "angels-robot-a", group = "angels-logistics", order = "ca[robots]-a", },
      { type = "item-subgroup", name = "angels-robot-b", group = "angels-logistics", order = "ca[robots]-b", },
      { type = "item-subgroup", name = "angels-robot-c", group = "angels-logistics", order = "ca[robots]-c", },
      { type = "item-subgroup", name = "angels-robot-d", group = "angels-logistics", order = "ca[robots]-d", },
    })
    -- frames
    data.raw.item["flying-robot-frame"].subgroup = "angels-robot-a"
    data.raw.item["flying-robot-frame"].order = "a[frame]"
    data.raw.item["flying-robot-frame-2"].subgroup = "angels-robot-b"
    data.raw.item["flying-robot-frame-2"].order = "a[frame]"
    data.raw.item["flying-robot-frame-3"].subgroup = "angels-robot-c"
    data.raw.item["flying-robot-frame-3"].order = "a[frame]"
    data.raw.item["flying-robot-frame-4"].subgroup = "angels-robot-d"
    data.raw.item["flying-robot-frame-4"].order = "a[frame]"
    -- robot parts
    if data.raw["item"]["robot-brain-logistic"] then
      data.raw.item["robot-brain-construction"].subgroup = "angels-robot-a"
      data.raw.item["robot-brain-construction"].order = "b[construction]-a[brain]"
      data.raw.item["robot-brain-construction-2"].subgroup = "angels-robot-b"
      data.raw.item["robot-brain-construction-2"].order = "b[construction]-a[brain]"
      data.raw.item["robot-brain-construction-3"].subgroup = "angels-robot-c"
      data.raw.item["robot-brain-construction-3"].order = "b[construction]-a[brain]"
      data.raw.item["robot-brain-construction-4"].subgroup = "angels-robot-d"
      data.raw.item["robot-brain-construction-4"].order = "b[construction]-a[brain]"
      data.raw.item["robot-tool-construction"].subgroup = "angels-robot-a"
      data.raw.item["robot-tool-construction"].order = "b[construction]-b[tool]"
      data.raw.item["robot-tool-construction-2"].subgroup = "angels-robot-b"
      data.raw.item["robot-tool-construction-2"].order = "b[construction]-b[tool]"
      data.raw.item["robot-tool-construction-3"].subgroup = "angels-robot-c"
      data.raw.item["robot-tool-construction-3"].order = "b[construction]-b[tool]"
      data.raw.item["robot-tool-construction-4"].subgroup = "angels-robot-d"
      data.raw.item["robot-tool-construction-4"].order = "b[construction]-b[tool]"
      data.raw.item["robot-brain-logistic"].subgroup = "angels-robot-a"
      data.raw.item["robot-brain-logistic"].order = "c[logistic]-a[brain]"
      data.raw.item["robot-brain-logistic-2"].subgroup = "angels-robot-b"
      data.raw.item["robot-brain-logistic-2"].order = "c[logistic]-a[brain]"
      data.raw.item["robot-brain-logistic-3"].subgroup = "angels-robot-c"
      data.raw.item["robot-brain-logistic-3"].order = "c[logistic]-a[brain]"
      data.raw.item["robot-brain-logistic-4"].subgroup = "angels-robot-d"
      data.raw.item["robot-brain-logistic-4"].order = "c[logistic]-a[brain]"
      data.raw.item["robot-tool-logistic"].subgroup = "angels-robot-a"
      data.raw.item["robot-tool-logistic"].order = "c[logistic]-b[tool]"
      data.raw.item["robot-tool-logistic-2"].subgroup = "angels-robot-b"
      data.raw.item["robot-tool-logistic-2"].order = "c[logistic]-b[tool]"
      data.raw.item["robot-tool-logistic-3"].subgroup = "angels-robot-c"
      data.raw.item["robot-tool-logistic-3"].order = "c[logistic]-b[tool]"
      data.raw.item["robot-tool-logistic-4"].subgroup = "angels-robot-d"
      data.raw.item["robot-tool-logistic-4"].order = "c[logistic]-b[tool]"
    end
    if data.raw["item"]["robot-brain-combat"] then -- TODO: alternative location when bob logistics is not present
      data.raw.item["robot-brain-combat"].subgroup = "angels-robot-a"
      data.raw.item["robot-brain-combat"].order = "d[combat]-a[brain]"
      data.raw.item["robot-brain-combat-2"].subgroup = "angels-robot-b"
      data.raw.item["robot-brain-combat-2"].order = "d[combat]-a[brain]"
      data.raw.item["robot-brain-combat-3"].subgroup = "angels-robot-c"
      data.raw.item["robot-brain-combat-3"].order = "d[combat]-a[brain]"
      data.raw.item["robot-brain-combat-4"].subgroup = "angels-robot-d"
      data.raw.item["robot-brain-combat-4"].order = "d[combat]-a[brain]"
      data.raw.item["robot-tool-combat"].subgroup = "angels-robot-a"
      data.raw.item["robot-tool-combat"].order = "d[combat]-b[tool]"
      data.raw.item["robot-tool-combat-2"].subgroup = "angels-robot-b"
      data.raw.item["robot-tool-combat-2"].order = "d[combat]-b[tool]"
      data.raw.item["robot-tool-combat-3"].subgroup = "angels-robot-c"
      data.raw.item["robot-tool-combat-3"].order = "d[combat]-b[tool]"
      data.raw.item["robot-tool-combat-4"].subgroup = "angels-robot-d"
      data.raw.item["robot-tool-combat-4"].order = "d[combat]-b[tool]"
    end
    -- regular robots
    data.raw.item["construction-robot"].subgroup = "angels-robot-a"
    data.raw.item["construction-robot"].order = "b[construction]-c[robot]"
    data.raw.item["bob-construction-robot-2"].subgroup = "angels-robot-b"
    data.raw.item["bob-construction-robot-2"].order = "b[construction]-c[robot]"
    data.raw.item["bob-construction-robot-3"].subgroup = "angels-robot-c"
    data.raw.item["bob-construction-robot-3"].order = "b[construction]-c[robot]"
    data.raw.item["bob-construction-robot-4"].subgroup = "angels-robot-d"
    data.raw.item["bob-construction-robot-4"].order = "b[construction]-c[robot]"
    data.raw.item["bob-construction-robot-5"].subgroup = "angels-cargo-bots"
    data.raw.item["bob-construction-robot-5"].order = "c[bob-fusion]-a[construction]"
    data.raw.item["logistic-robot"].subgroup = "angels-robot-a"
    data.raw.item["logistic-robot"].order = "c[logistic]-c[robot]"
    data.raw.item["bob-logistic-robot-2"].subgroup = "angels-robot-b"
    data.raw.item["bob-logistic-robot-2"].order = "c[logistic]-c[robot]"
    data.raw.item["bob-logistic-robot-3"].subgroup = "angels-robot-c"
    data.raw.item["bob-logistic-robot-3"].order = "c[logistic]-c[robot]"
    data.raw.item["bob-logistic-robot-4"].subgroup = "angels-robot-d"
    data.raw.item["bob-logistic-robot-4"].order = "c[logistic]-c[robot]"
    data.raw.item["bob-logistic-robot-5"].subgroup = "angels-cargo-bots"
    data.raw.item["bob-logistic-robot-5"].order = "c[bob-fusion]-b[logistic]"
  end
end
