local OV = angelsmods.functions.OV

local move_item = function (i_name, i_subgroup, i_order, i_type)
  if not i_type then i_type = "item" end
  if not data.raw[i_type] then return end
  if not data.raw[i_type][i_name] then return end

  if i_subgroup then data.raw[i_type][i_name].subgroup = i_subgroup end
  if i_order    then data.raw[i_type][i_name].order    = i_order    end
end

if angelsmods.industries.overhaul then
  -- Move guns and ammo
  move_item("pistol", "angels-warfare-bullet-guns", "a[gun]-a[pistol]", "gun")
  move_item("submachine-gun", "angels-warfare-bullet-guns", "a[gun]-b[submachine]", "gun")
  move_item("gun-turret", "angels-warfare-bullet-guns", "b[turret]-a[gun]")
  move_item("firearm-magazine", "angels-warfare-bullet-guns", "c[basic-ammo]-a[basic-rounds]", "ammo")
  move_item("piercing-rounds-magazine", "angels-warfare-bullet-guns", "c[basic-ammo]-b[piercing-rounds]", "ammo")
  move_item("uranium-rounds-magazine", "angels-warfare-bullet-guns", "c[basic-ammo]-c[uranium-rounds]", "ammo")

  move_item("shotgun", "angels-warfare-shotgun-guns", "a[gun]-a[shotgun]", "gun")
  move_item("combat-shotgun", "angels-warfare-shotgun-guns", "a[gun]-b[combat-shotgun]", "gun")
  move_item("shotgun-shell", "angels-warfare-shotgun-guns", "c[basic-ammo]-a[basic-rounds]", "ammo")
  move_item("piercing-shotgun-shell", "angels-warfare-shotgun-guns", "c[basic-ammo]-b[piercing-rounds]", "ammo")

  move_item("rocket-launcher", "angels-warfare-rocket-guns", "a[gun]-a[rocket-launcher]", "gun")
  move_item("rocket", "angels-warfare-rocket-guns", "c[basic-ammo]-a[basic-rounds]", "ammo")
  move_item("explosive-rocket", "angels-warfare-rocket-guns", "c[basic-ammo]-b[explosive-rounds]", "ammo")
  move_item("atomic-bomb", "angels-warfare-rocket-guns", "c[basic-ammo]-c[uranium-rounds]", "ammo")

  move_item("flamethrower", "angels-warfare-flamethrower-guns", "a[gun]-a[flamethrower]", "gun")
  move_item("flamethrower-turret", "angels-warfare-flamethrower-guns", "b[turret]-a[flame]")
  move_item("flamethrower-ammo", "angels-warfare-flamethrower-guns", "c[basic-ammo]-a[basic-rounds]", "ammo")

  move_item("laser-turret", "angels-warfare-laser-guns", "b[turret]-a[laser]")

  move_item("cannon-shell", "angels-warfare-tank-guns", "c[basic-ammo]-a[basic-rounds]", "ammo")
  move_item("explosive-cannon-shell", "angels-warfare-tank-guns", "c[basic-ammo]-b[explosive-rounds]", "ammo")
  move_item("uranium-cannon-shell", "angels-warfare-tank-guns", "c[basic-ammo]-c[uranium-rounds]", "ammo")
  move_item("explosive-uranium-cannon-shell", "angels-warfare-tank-guns", "c[basic-ammo]-d[explosive-uranium-rounds]", "ammo")
  
  move_item("artillery-targeting-remote", "angels-warfare-artillery-guns", "a[gun]-a[remote]", "capsule")
  move_item("artillery-turret", "angels-warfare-artillery-guns", "b[turret]-a[artillery]")
  move_item("artillery-shell", "angels-warfare-artillery-guns", "c[basic-ammo]-a[basic-rounds]", "ammo")

  -- Move vehicles
  move_item("car", "angels-vehicle-car", "a[car]-a", "item-with-entity-data")
  -- order a[car]-b reserved for nilaus truck
  -- order b[crawlers]-a already taken by the crawler (car)
  -- order b[crawlers]-b reserved for CAB
  move_item("tank", "angels-vehicle-car", "a[gun]-a[tank]", "item-with-entity-data")

  -- Move capsules
  move_item("land-mine", "angels-warfare-capsules-manual", "a[mine]-a[basic]")
  move_item("grenade", "angels-warfare-capsules-manual", "b[grenade]-a[single]", "capsule")
  move_item("cluster-grenade", "angels-warfare-capsules-manual", "b[grenade]-b[cluster]", "capsule")
  move_item("poison-capsule", "angels-warfare-capsules-manual", "c[clouds]-a[poison]", "capsule")
  move_item("slowdown-capsule", "angels-warfare-capsules-manual", "c[clouds]-b[slowdown]", "capsule")
  move_item("defender-capsule", "angels-warfare-capsules-manual", "d[troups]-a[defender]", "capsule")
  move_item("distractor-capsule", "angels-warfare-capsules-manual", "d[troups]-b[distractor]", "capsule")
  move_item("destroyer-capsule", "angels-warfare-capsules-manual", "d[troups]-c[destroyer]", "capsule")

  -- Move walls
  move_item("stone-wall", "angels-warfare-wall", "a[wall]-a[stone]-a[wall]")
  move_item("gate", "angels-warfare-wall", "a[wall]-a[stone]-b[gate]")

  if not (bobmods and bobmods.logistics) then -- bobmods will override this for us
    move_item("locomotive", "angels-vehicle-train-vanilla", false, "item-with-entity-data")
    move_item("cargo-wagon", "angels-vehicle-train-vanilla", false, "item-with-entity-data")
    move_item("fluid-wagon", "angels-vehicle-train-vanilla", false, "item-with-entity-data")
    move_item("artillery-wagon", "angels-vehicle-train-vanilla", false, "item-with-entity-data")
  end

  -- Move power
  move_item("boiler", "angels-power-steam", "a[boiler]")
  move_item("steam-engine", "angels-power-steam", "b[steam-engine]")
  move_item("steam-turbine", "angels-power-steam", "c[steam-turbine]")

  move_item("solar-panel", "angels-power-solar", "a[solar-panel]")
  move_item("accumulator", "angels-power-solar", "b[accumulator]")

  move_item("nuclear-reactor", "angels-power-nuclear", "a[reactor]")
  move_item("heat-pipe", "angels-power-nuclear", "b[heat-pipe]")
  move_item("heat-exchanger", "angels-power-nuclear", "c[heat-exchanger]")

  move_item("small-electric-pole", "angels-power-poles", "a[small]")
  move_item("medium-electric-pole", "angels-power-poles", "b[medium]")
  move_item("big-electric-pole", "angels-power-poles", "c[big]")
  move_item("substation", "angels-power-poles", "d[substation]")

  -- Move robots
  data:extend({ { type = "item-subgroup", name = "angels-chests-small-a", group = "angels-logistics", order = "aa[chests-small]-a" } })
  -- pre-logistics chests
  move_item("wooden-chest", "angels-chests-small-a", "za")
  move_item("iron-chest", "angels-chests-small-a", "zb")
  -- steel chests
  move_item("steel-chest", "angels-chests-small-a", "a")
  move_item("logistic-chest-active-provider", "angels-chests-small-a", "b")
  move_item("logistic-chest-passive-provider", "angels-chests-small-a", "c")
  move_item("logistic-chest-storage", "angels-chests-small-a", "d")
  move_item("logistic-chest-buffer", "angels-chests-small-a", "e")
  move_item("logistic-chest-requester", "angels-chests-small-a", "f")

  move_item("roboport", "angels-cargo-ports", "za")
  move_item("construction-robot", "angels-cargo-ports", "zb")
  move_item("logistic-robot", "angels-cargo-ports", "zc")

  -- BOBS
  if bobmods and bobmods.logistics then
    --UPDATE LOGISTICS CONTAINERS
    data:extend(
    {
      { type = "item-subgroup", name = "angels-chests-small-b", group = "angels-logistics", order = "aa[chests-small]-b" },
      { type = "item-subgroup", name = "angels-chests-small-c", group = "angels-logistics", order = "aa[chests-small]-c" },
    }
    )
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
    data:extend(
    {
      {type = "item-subgroup", name = "angels-roboport-a", group = "angels-logistics", order = "ba[roboport]-a"},
      {type = "item-subgroup", name = "angels-roboport-b", group = "angels-logistics", order = "ba[roboport]-b"},
      {type = "item-subgroup", name = "angels-roboport-c", group = "angels-logistics", order = "ba[roboport]-c"},
      {type = "item-subgroup", name = "angels-roboport-d", group = "angels-logistics", order = "ba[roboport]-d"}
    }
    )
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
    data:extend(
    {
      {type = "item-subgroup", name = "angels-robot-a", group = "angels-logistics", order = "ca[robots]-a"},
      {type = "item-subgroup", name = "angels-robot-b", group = "angels-logistics", order = "ca[robots]-b"},
      {type = "item-subgroup", name = "angels-robot-c", group = "angels-logistics", order = "ca[robots]-c"},
      {type = "item-subgroup", name = "angels-robot-d", group = "angels-logistics", order = "ca[robots]-d"}
    }
    )
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
    if data.raw["item"]["robot-brain-combat"] then
      data.raw.item["defender-robot"].subgroup = "angels-robot-a"
      data.raw.item["defender-robot"].order = "d[combat]-c[robot]"
      data.raw.item["distractor-robot"].subgroup = "angels-robot-b"
      data.raw.item["distractor-robot"].order = "d[combat]-c[robot]"
      data.raw.item["destroyer-robot"].subgroup = "angels-robot-c"
      data.raw.item["destroyer-robot"].order = "d[combat]-c[robot]"
      data.raw.item["bob-laser-robot"].subgroup = "angels-robot-d"
      data.raw.item["bob-laser-robot"].order = "d[combat]-c[robot]"
    end

    -- UPDATE TRAINS
    data:extend({
      { type = "item-subgroup", name = "angels-artillery", group = "angels-vehicles", order = "ba[vanilla-train]-d[artillery-wagon]", },
    })
    data.raw["item-subgroup"]["bob-locomotive"].group = "angels-vehicles"
    data.raw["item-subgroup"]["bob-locomotive"].order = "ba[vanilla-train]-a[locomotive]"
    data.raw["item-subgroup"]["bob-cargo-wagon"].group = "angels-vehicles"
    data.raw["item-subgroup"]["bob-cargo-wagon"].order = "ba[vanilla-train]-b[cargo-wagon]"
    data.raw["item-subgroup"]["bob-fluid-wagon"].group = "angels-vehicles"
    data.raw["item-subgroup"]["bob-fluid-wagon"].order = "ba[vanilla-train]-c[fluid-wagon]"
    data.raw["item-with-entity-data"]["artillery-wagon"].subgroup = "angels-artillery"
    data.raw["item-with-entity-data"]["artillery-wagon"].order = "a"
    if data.raw["item-with-entity-data"]["bob-artillery-wagon-2"] then
      data.raw["item-with-entity-data"]["bob-artillery-wagon-2"].subgroup = "angels-artillery"
      data.raw["item-with-entity-data"]["bob-artillery-wagon-2"].order = "b"
      data.raw["item-with-entity-data"]["bob-artillery-wagon-3"].subgroup = "angels-artillery"
      data.raw["item-with-entity-data"]["bob-artillery-wagon-3"].order = "c"
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

    -- UPDATE BOB LOGISTICS TAB
    data.raw["item-group"]["bob-logistics"].order = "lb[bobs]-a[logistics]"
    data.raw["item-group"]["bob-logistics"].inventory_order = "lb[bobs]-a[logistics]"
    data.raw["item-group"]["bob-logistics"].icon = nil
    data.raw["item-group"]["bob-logistics"].icon_size = nil
    data.raw["item-group"]["bob-logistics"].icons = {
      {
        icon = "__boblogistics__/graphics/icons/technology/logistics.png",
        icon_size = 64
      },
      {
        icon = "__angelsrefining__/graphics/icons/bobs-logo.png",
        icon_size = 1080,
        scale = 64/1080 * 0.35,
        shift = {20, -20}
      },
    }
  end

  if bobmods and bobmods.power then
    -- poles
    if data.raw.item["medium-electric-pole-2"] then
      data:extend({
        { type = "item-subgroup", name = "angels-medium-power-poles", group = "angels-power", order = "d[power-poles]-b[medium]" },
        { type = "item-subgroup", name = "angels-big-power-poles", group = "angels-power", order = "d[power-poles]-c[big]" },
        { type = "item-subgroup", name = "angels-sub-power-poles", group = "angels-power", order = "d[power-poles]-d[substation]" },
      })
      move_item("medium-electric-pole", "angels-medium-power-poles", "a")
      move_item("medium-electric-pole-2", "angels-medium-power-poles", "b")
      move_item("medium-electric-pole-3", "angels-medium-power-poles", "c")
      move_item("medium-electric-pole-4", "angels-medium-power-poles", "d")
      move_item("big-electric-pole", "angels-big-power-poles", "a")
      move_item("big-electric-pole-2", "angels-big-power-poles", "b")
      move_item("big-electric-pole-3", "angels-big-power-poles", "c")
      move_item("big-electric-pole-4", "angels-big-power-poles", "d")
      move_item("substation", "angels-sub-power-poles", "a")
      move_item("substation-2", "angels-sub-power-poles", "b")
      move_item("substation-3", "angels-sub-power-poles", "c")
      move_item("substation-4", "angels-sub-power-poles", "d")
    end

    -- steam
    if data.raw.item["boiler-2"] then
      data:extend({
        { type = "item-subgroup", name = "angels-power-steam-boiler", group = "angels-power", order = "a[steam]-a[boiler]" },
        { type = "item-subgroup", name = "angels-power-steam-generator", group = "angels-power", order = "a[steam]-b[steam-generator]" },
      })
      move_item("boiler", "angels-power-steam-boiler", "a")
      move_item("boiler-2", "angels-power-steam-boiler", "b")
      move_item("boiler-3", "angels-power-steam-boiler", "c")
      move_item("boiler-4", "angels-power-steam-boiler", "d")
      move_item("boiler-5", "angels-power-steam-boiler", "e")
      move_item("oil-boiler", "angels-power-steam-boiler", "f")
      move_item("oil-boiler-2", "angels-power-steam-boiler", "g")
      move_item("oil-boiler-3", "angels-power-steam-boiler", "h")
      move_item("oil-boiler-4", "angels-power-steam-boiler", "i")

      move_item("steam-engine", "angels-power-steam-generator", "a")
      move_item("steam-engine-2", "angels-power-steam-generator", "b")
      move_item("steam-engine-3", "angels-power-steam-generator", "c")
      move_item("steam-engine-4", "angels-power-steam-generator", "d")
      move_item("steam-engine-5", "angels-power-steam-generator", "e")
      move_item("steam-turbine", "angels-power-steam-generator", "e")
      move_item("steam-turbine-2", "angels-power-steam-generator", "f")
      move_item("steam-turbine-3", "angels-power-steam-generator", "g")
    end

    -- fluid
    if data.raw.item["fluid-generator"] then
      data:extend({
        { type = "item-subgroup", name = "angels-power-fluid-generator", group = "angels-power", order = "a[steam]-c[fluid-generator]" },
      })
      move_item("fluid-generator", "angels-power-fluid-generator", "b")
      move_item("fluid-generator-2", "angels-power-fluid-generator", "c")
      move_item("fluid-generator-3", "angels-power-fluid-generator", "d")
      if data.raw.item["hydrazine-generator"] then
        move_item("hydrazine-generator", "angels-power-fluid-generator", "e")
      end
      if data.raw.item["bob-burner-generator"] then
        move_item("bob-burner-generator", "angels-power-fluid-generator", "a")
      end
    else
      if data.raw.item["bob-burner-generator"] then
        move_item("bob-burner-generator", "angels-power-steam", "a")
      end
    end

  end
end