local OV = angelsmods.functions.OV

local move_item = angelsmods.functions.move_item

if angelsmods.industries.overhaul then
  if angelsmods.industries.components then
    -- Move categories
    local function replace_group(list, from_group, to_group)
      for k, v in pairs(list) do
        if v.group == from_group then
          v.group = to_group
        end
      end
    end
    replace_group(data.raw["item-subgroup"], "combat", "angels-warfare")

    -----------------------------------------------------------------------------
    -- GUN, TURRET, AMMO, CAPSULES ----------------------------------------------
    -----------------------------------------------------------------------------
    -- Regular gun
    move_item("pistol", "angels-warfare-bullet-guns", "a[gun]-a[pistol]", "gun")
    move_item("submachine-gun", "angels-warfare-bullet-guns", "a[gun]-b[submachine]", "gun")
    move_item("gun-turret", "angels-warfare-bullet-guns", "b[turret]-a[gun]")
    move_item("firearm-magazine", "angels-warfare-bullet-guns", "c[basic-ammo]-a[basic-rounds]", "ammo")
    move_item("piercing-rounds-magazine", "angels-warfare-bullet-guns", "c[basic-ammo]-b[piercing-rounds]", "ammo")
    move_item("uranium-rounds-magazine", "angels-warfare-bullet-guns", "c[basic-ammo]-c[uranium-rounds]", "ammo")
    -- Shotgun
    move_item("shotgun", "angels-warfare-shotgun-guns", "a[gun]-a[shotgun]", "gun")
    move_item("combat-shotgun", "angels-warfare-shotgun-guns", "a[gun]-b[combat-shotgun]", "gun")
    move_item("shotgun-shell", "angels-warfare-shotgun-guns", "c[basic-ammo]-a[basic-rounds]", "ammo")
    move_item("piercing-shotgun-shell", "angels-warfare-shotgun-guns", "c[basic-ammo]-b[piercing-rounds]", "ammo")
    -- Rockets
    move_item("rocket-launcher", "angels-warfare-rocket-guns", "a[gun]-a[rocket-launcher]", "gun")
    move_item("rocket", "angels-warfare-rocket-guns", "c[basic-ammo]-a[basic-rounds]", "ammo")
    move_item("explosive-rocket", "angels-warfare-rocket-guns", "c[basic-ammo]-b[explosive-rounds]", "ammo")
    move_item("atomic-bomb", "angels-warfare-rocket-guns", "c[basic-ammo]-c[uranium-rounds]", "ammo")
    -- Flamethrower
    move_item("flamethrower", "angels-warfare-flamethrower-guns", "a[gun]-a[flamethrower]", "gun")
    move_item("flamethrower-turret", "angels-warfare-flamethrower-guns", "b[turret]-a[flame]")
    move_item("flamethrower-ammo", "angels-warfare-flamethrower-guns", "c[basic-ammo]-a[basic-rounds]", "ammo")
    -- Laser
    move_item("laser-turret", "angels-warfare-laser-guns", "b[turret]-a[laser]")
    -- Cannon
    move_item("cannon-shell", "angels-warfare-tank-guns", "c[basic-ammo]-a[basic-rounds]", "ammo")
    move_item("explosive-cannon-shell", "angels-warfare-tank-guns", "c[basic-ammo]-b[explosive-rounds]", "ammo")
    move_item("uranium-cannon-shell", "angels-warfare-tank-guns", "c[basic-ammo]-c[uranium-rounds]", "ammo")
    move_item(
      "explosive-uranium-cannon-shell",
      "angels-warfare-tank-guns",
      "c[basic-ammo]-d[explosive-uranium-rounds]",
      "ammo"
    )
    -- Artillery
    move_item("artillery-targeting-remote", "angels-warfare-artillery-guns", "a[gun]-a[remote]", "capsule")
    move_item("artillery-turret", "angels-warfare-artillery-guns", "b[turret]-a[artillery]")
    move_item("artillery-shell", "angels-warfare-artillery-guns", "c[basic-ammo]-a[basic-rounds]", "ammo")
    -- Capsules
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
  end

  -----------------------------------------------------------------------------
  -- VEHICLES -----------------------------------------------------------------
  -----------------------------------------------------------------------------
  move_item("car", "angels-vehicle-car", "a[car]-a", "item-with-entity-data")
  -- order a[car]-b reserved for nilaus truck
  -- order b[crawlers]-a already taken by the crawler (car)
  -- order b[crawlers]-b reserved for CAB
  move_item("tank", "angels-vehicle-car", "a[gun]-a[tank]", "item-with-entity-data")

  if bobmods and bobmods.logistics then
    data:extend(
      {
        {
          type = "item-subgroup",
          name = "angels-artillery",
          group = "angels-vehicles",
          order = "ba[vanilla-train]-d[artillery-wagon]"
        }
      }
    )
    data.raw["item-subgroup"]["bob-locomotive"].group = "angels-vehicles"
    data.raw["item-subgroup"]["bob-locomotive"].order = "ba[vanilla-train]-a[locomotive]"
    data.raw["item-subgroup"]["bob-cargo-wagon"].group = "angels-vehicles"
    data.raw["item-subgroup"]["bob-cargo-wagon"].order = "ba[vanilla-train]-b[cargo-wagon]"
    data.raw["item-subgroup"]["bob-fluid-wagon"].group = "angels-vehicles"
    data.raw["item-subgroup"]["bob-fluid-wagon"].order = "ba[vanilla-train]-c[fluid-wagon]"

    move_item("artillery-wagon", "angels-artillery", "a", "item-with-entity-data")
    --data.raw["item-with-entity-data"]["artillery-wagon"].subgroup = "angels-artillery"
    --data.raw["item-with-entity-data"]["artillery-wagon"].order = "a"
    if data.raw["item-with-entity-data"]["bob-artillery-wagon-2"] then
      move_item("bob-artillery-wagon-2", "angels-artillery", "b", "item-with-entity-data")
      move_item("bob-artillery-wagon-3", "angels-artillery", "c", "item-with-entity-data")
    --data.raw["item-with-entity-data"]["bob-artillery-wagon-2"].subgroup = "angels-artillery"
    --data.raw["item-with-entity-data"]["bob-artillery-wagon-2"].order = "b"
    --data.raw["item-with-entity-data"]["bob-artillery-wagon-3"].subgroup = "angels-artillery"
    --data.raw["item-with-entity-data"]["bob-artillery-wagon-3"].order = "c"
    end
  else
    move_item("locomotive", "angels-vehicle-train-vanilla", false, "item-with-entity-data")
    move_item("cargo-wagon", "angels-vehicle-train-vanilla", false, "item-with-entity-data")
    move_item("fluid-wagon", "angels-vehicle-train-vanilla", false, "item-with-entity-data")
    move_item("artillery-wagon", "angels-vehicle-train-vanilla", false, "item-with-entity-data")
  end

  -----------------------------------------------------------------------------
  -- ROBOTS -------------------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend(
    {
      {type = "item-subgroup", name = "angels-chests-small-a", group = "angels-logistics", order = "aa[chests-small]-a"},
      {type = "item-subgroup", name = "angels-chests-small-b", group = "angels-logistics", order = "aa[chests-small]-b"}
    }
  )
  -- pre-logistics chests (+ repair packs)
  move_item("wooden-chest", "angels-chests-small-a", "a[chest]-a[wood]")
  move_item("iron-chest", "angels-chests-small-a", "a[chest]-b[iron]")
  move_item("repair-pack", "angels-chests-small-a", "b[repair-pack]-a", "repair-tool")
  -- steel chests
  move_item("steel-chest", "angels-chests-small-b", "a")
  move_item("logistic-chest-active-provider", "angels-chests-small-b", "b")
  move_item("logistic-chest-passive-provider", "angels-chests-small-b", "c")
  move_item("logistic-chest-storage", "angels-chests-small-b", "d")
  move_item("logistic-chest-buffer", "angels-chests-small-b", "e")
  move_item("logistic-chest-requester", "angels-chests-small-b", "f")
  -- robots
  move_item("roboport", "angels-cargo-ports", "za")
  move_item("construction-robot", "angels-cargo-ports", "zb")
  move_item("logistic-robot", "angels-cargo-ports", "zc")

  if bobmods and bobmods.logistics then
    --UPDATE LOGISTICS CONTAINERS
    data:extend(
      {
        {
          type = "item-subgroup",
          name = "angels-chests-small-c",
          group = "angels-logistics",
          order = "aa[chests-small]-b"
        },
        {
          type = "item-subgroup",
          name = "angels-chests-small-d",
          group = "angels-logistics",
          order = "aa[chests-small]-c"
        }
      }
    )
    -- repair packs
    move_item("repair-pack-2", "angels-chests-small-a", "b[repair-pack]-b", "repair-tool")
    move_item("repair-pack-3", "angels-chests-small-a", "b[repair-pack]-c", "repair-tool")
    move_item("repair-pack-4", "angels-chests-small-a", "b[repair-pack]-d", "repair-tool")
    move_item("repair-pack-5", "angels-chests-small-a", "b[repair-pack]-e", "repair-tool")
    -- brass chests
    move_item("brass-chest", "angels-chests-small-c", "a")
    move_item("logistic-chest-active-provider-2", "angels-chests-small-c", "b")
    move_item("logistic-chest-passive-provider-2", "angels-chests-small-c", "c")
    move_item("logistic-chest-storage-2", "angels-chests-small-c", "d")
    move_item("logistic-chest-buffer-2", "angels-chests-small-c", "e")
    move_item("logistic-chest-requester-2", "angels-chests-small-c", "f")
    -- titanium chests
    move_item("titanium-chest", "angels-chests-small-d", "a")
    move_item("logistic-chest-active-provider-3", "angels-chests-small-d", "b")
    move_item("logistic-chest-passive-provider-3", "angels-chests-small-d", "c")
    move_item("logistic-chest-storage-3", "angels-chests-small-d", "d")
    move_item("logistic-chest-buffer-3", "angels-chests-small-d", "e")
    move_item("logistic-chest-requester-3", "angels-chests-small-d", "f")

    --UPDATE ROBOPORTS
    data:extend(
      {
        {type = "item-subgroup", name = "angels-roboport-a", group = "angels-logistics", order = "ba[roboport]-a"},
        {type = "item-subgroup", name = "angels-roboport-b", group = "angels-logistics", order = "ba[roboport]-b"},
        {type = "item-subgroup", name = "angels-roboport-c", group = "angels-logistics", order = "ba[roboport]-c"},
        {type = "item-subgroup", name = "angels-roboport-d", group = "angels-logistics", order = "ba[roboport]-d"}
      }
    )
    -- roboport antenna
    move_item("roboport-antenna-1", "angels-roboport-a", "a[parts]-a[roboport-antenna]")
    move_item("roboport-antenna-2", "angels-roboport-b", "a[parts]-a[roboport-antenna]")
    move_item("roboport-antenna-3", "angels-roboport-c", "a[parts]-a[roboport-antenna]")
    move_item("roboport-antenna-4", "angels-roboport-d", "a[parts]-a[roboport-antenna]")
    -- roboport door
    move_item("roboport-door-1", "angels-roboport-a", "a[parts]-b[roboport-door]")
    move_item("roboport-door-2", "angels-roboport-b", "a[parts]-b[roboport-door]")
    move_item("roboport-door-3", "angels-roboport-c", "a[parts]-b[roboport-door]")
    move_item("roboport-door-4", "angels-roboport-d", "a[parts]-b[roboport-door]")
    -- roboport chargepad
    move_item("roboport-chargepad-1", "angels-roboport-a", "a[parts]-c[roboport-chargepad]")
    move_item("roboport-chargepad-2", "angels-roboport-b", "a[parts]-c[roboport-chargepad]")
    move_item("roboport-chargepad-3", "angels-roboport-c", "a[parts]-c[roboport-chargepad]")
    move_item("roboport-chargepad-4", "angels-roboport-d", "a[parts]-c[roboport-chargepad]")
    -- roboport full
    if data.raw["item"]["bob-roboport-2"] then
      move_item("roboport", "angels-roboport-a", "b[port]-a[roboport]")
      move_item("bob-roboport-2", "angels-roboport-b", "b[port]-a[roboport]")
      move_item("bob-roboport-3", "angels-roboport-c", "b[port]-a[roboport]")
      move_item("bob-roboport-4", "angels-roboport-d", "b[port]-a[roboport]")
    end
    -- zone expander
    move_item("bob-logistic-zone-expander", "angels-roboport-a", "b[port]-b[zone-expander]")
    move_item("bob-logistic-zone-expander-2", "angels-roboport-b", "b[port]-b[zone-expander]")
    move_item("bob-logistic-zone-expander-3", "angels-roboport-c", "b[port]-b[zone-expander]")
    move_item("bob-logistic-zone-expander-4", "angels-roboport-d", "b[port]-b[zone-expander]")
    -- robochest
    move_item("bob-robochest", "angels-roboport-a", "b[port]-c[robochest]")
    move_item("bob-robochest-2", "angels-roboport-b", "b[port]-c[robochest]")
    move_item("bob-robochest-3", "angels-roboport-c", "b[port]-c[robochest]")
    move_item("bob-robochest-4", "angels-roboport-d", "b[port]-c[robochest]")
    -- charge port
    move_item("bob-robo-charge-port", "angels-roboport-a", "b[port]-d[charge-port]-a[small]")
    move_item("bob-robo-charge-port-2", "angels-roboport-b", "b[port]-d[charge-port]-a[small]")
    move_item("bob-robo-charge-port-3", "angels-roboport-c", "b[port]-d[charge-port]-a[small]")
    move_item("bob-robo-charge-port-4", "angels-roboport-d", "b[port]-d[charge-port]-a[small]")
    move_item("bob-robo-charge-port-large", "angels-roboport-a", "b[port]-d[charge-port]-b[large]")
    move_item("bob-robo-charge-port-large-2", "angels-roboport-b", "b[port]-d[charge-port]-b[large]")
    move_item("bob-robo-charge-port-large-3", "angels-roboport-c", "b[port]-d[charge-port]-b[large]")
    move_item("bob-robo-charge-port-large-4", "angels-roboport-d", "b[port]-d[charge-port]-b[large]")
    -- interface
    move_item("bob-logistic-zone-interface", "angels-roboport-a", "c[interface]")
    -- angels cargo ports
    move_item("angels-relay-station", "angels-cargo-ports", false)
    move_item("angels-relay-station-2", "angels-cargo-ports", false)
    move_item("angels-zone-expander", "angels-cargo-ports", false)
    move_item("angels-zone-expander-2", "angels-cargo-ports", false)
    move_item("angels-construction-zone-expander", "angels-cargo-ports", false)
    move_item("angels-construction-zone-expander-2", "angels-cargo-ports", false)

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
    move_item("flying-robot-frame", "angels-robot-a", "a[frame]")
    move_item("flying-robot-frame-2", "angels-robot-b", "a[frame]")
    move_item("flying-robot-frame-3", "angels-robot-c", "a[frame]")
    move_item("flying-robot-frame-4", "angels-robot-d", "a[frame]")
    -- robot parts
    if data.raw["item"]["robot-brain-logistic"] then
      move_item("robot-brain-construction", "angels-robot-a", "b[construction]-a[brain]")
      move_item("robot-brain-construction-2", "angels-robot-b", "b[construction]-a[brain]")
      move_item("robot-brain-construction-3", "angels-robot-c", "b[construction]-a[brain]")
      move_item("robot-brain-construction-4", "angels-robot-d", "b[construction]-a[brain]")
      move_item("robot-tool-construction", "angels-robot-a", "b[construction]-b[tool]")
      move_item("robot-tool-construction-2", "angels-robot-b", "b[construction]-b[tool]")
      move_item("robot-tool-construction-3", "angels-robot-c", "b[construction]-b[tool]")
      move_item("robot-tool-construction-4", "angels-robot-d", "b[construction]-b[tool]")
      move_item("robot-brain-logistic", "angels-robot-a", "c[logistic]-a[brain]")
      move_item("robot-brain-logistic-2", "angels-robot-b", "c[logistic]-a[brain]")
      move_item("robot-brain-logistic-3", "angels-robot-c", "c[logistic]-a[brain]")
      move_item("robot-brain-logistic-4", "angels-robot-d", "c[logistic]-a[brain]")
      move_item("robot-tool-logistic", "angels-robot-a", "c[logistic]-b[tool]")
      move_item("robot-tool-logistic-2", "angels-robot-b", "c[logistic]-b[tool]")
      move_item("robot-tool-logistic-3", "angels-robot-c", "c[logistic]-b[tool]")
      move_item("robot-tool-logistic-4", "angels-robot-d", "c[logistic]-b[tool]")
    end
    if data.raw["item"]["robot-brain-combat"] then -- TODO: alternative location when bob logistics is not present
      move_item("robot-brain-combat", "angels-robot-a", "d[combat]-a[brain]")
      move_item("robot-brain-combat-2", "angels-robot-b", "d[combat]-a[brain]")
      move_item("robot-brain-combat-3", "angels-robot-c", "d[combat]-a[brain]")
      move_item("robot-brain-combat-4", "angels-robot-d", "d[combat]-a[brain]")
      move_item("robot-tool-combat", "angels-robot-a", "d[combat]-b[tool]")
      move_item("robot-tool-combat-2", "angels-robot-b", "d[combat]-b[tool]")
      move_item("robot-tool-combat-3", "angels-robot-c", "d[combat]-b[tool]")
      move_item("robot-tool-combat-4", "angels-robot-d", "d[combat]-b[tool]")
    end
    -- regular robots
    move_item("construction-robot", "angels-robot-a", "b[construction]-c[robot]")
    move_item("bob-construction-robot-2", "angels-robot-b", "b[construction]-c[robot]")
    move_item("bob-construction-robot-3", "angels-robot-c", "b[construction]-c[robot]")
    move_item("bob-construction-robot-4", "angels-robot-d", "b[construction]-c[robot]")
    move_item("bob-construction-robot-5", "angels-cargo-bots", "c[bob-fusion]-a[construction]")
    move_item("logistic-robot", "angels-robot-a", "c[logistic]-c[robot]")
    move_item("bob-logistic-robot-2", "angels-robot-b", "c[logistic]-c[robot]")
    move_item("bob-logistic-robot-3", "angels-robot-c", "c[logistic]-c[robot]")
    move_item("bob-logistic-robot-4", "angels-robot-d", "c[logistic]-c[robot]")
    move_item("bob-logistic-robot-5", "angels-cargo-bots", "c[bob-fusion]-b[logistic]")
    if data.raw["item"]["robot-brain-combat"] then
      move_item("defender-robot", "angels-robot-a", "d[combat]-c[robot]")
      move_item("distractor-robot", "angels-robot-b", "d[combat]-c[robot]")
      move_item("destroyer-robot", "angels-robot-c", "d[combat]-c[robot]")
      move_item("bob-laser-robot", "angels-robot-d", "d[combat]-c[robot]")
    end

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
        scale = 64 / 1080 * 0.35,
        shift = {20, -20}
      }
    }
  end

  -----------------------------------------------------------------------------
  -- POWER --------------------------------------------------------------------
  -----------------------------------------------------------------------------
  move_item("boiler", "angels-power-steam", "a[boiler]")
  move_item("steam-engine", "angels-power-steam", "b[steam-engine]")
  move_item("steam-turbine", "angels-power-steam", "c[steam-turbine]")

  move_item("solar-panel", "angels-power-solar", "a[solar-panel]")
  move_item("accumulator", "angels-power-solar", "b[accumulator]")

  move_item("nuclear-reactor", "angels-power-nuclear", "a[reactor]")
  move_item("heat-pipe", "angels-power-nuclear", "b[heat-pipe]")
  move_item("heat-exchanger", "angels-power-nuclear", "c[heat-exchanger]")

  move_item("uranium-235", "angels-power-nuclear-processing", "a[radioactive-element]-b[uranium-235]")
  move_item("uranium-238", "angels-power-nuclear-processing", "a[radioactive-element]-c[uranium-238]")
  move_item("uranium-processing", "angels-power-nuclear-processing", "a[uranium]-a[processing]", "recipe")
  move_item("kovarex-enrichment-process", "angels-power-nuclear-processing", "a[uranium]-b[enrichment]", "recipe")

  move_item("uranium-fuel-cell", "angels-power-nuclear-fuel-cell", "a[uranium]-b")
  move_item("used-up-uranium-fuel-cell", "angels-power-nuclear-fuel-cell", "a[uranium]-c")
  move_item("uranium-fuel-cell", "angels-power-nuclear-fuel-cell", "a[uranium]-a", "recipe")
  move_item("nuclear-fuel-reprocessing", "angels-power-nuclear-fuel-cell", "a[uranium]-c", "recipe")

  move_item("small-electric-pole", "angels-power-poles", "a[small]")
  move_item("medium-electric-pole", "angels-power-poles", "b[medium]")
  move_item("big-electric-pole", "angels-power-poles", "c[big]")
  move_item("substation", "angels-power-poles", "d[substation]")

  if bobmods and bobmods.power then
    -- poles
    if data.raw.item["medium-electric-pole-2"] then
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-medium-power-poles",
            group = "angels-power",
            order = "e[power-poles]-b[medium]"
          },
          {
            type = "item-subgroup",
            name = "angels-big-power-poles",
            group = "angels-power",
            order = "e[power-poles]-c[big]"
          },
          {
            type = "item-subgroup",
            name = "angels-sub-power-poles",
            group = "angels-power",
            order = "e[power-poles]-d[substation]"
          }
        }
      )
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
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-power-steam-boiler",
            group = "angels-power",
            order = "a[steam]-b[boiler]"
          },
          {
            type = "item-subgroup",
            name = "angels-power-steam-generator",
            group = "angels-power",
            order = "a[steam]-c[steam-generator]"
          }
        }
      )
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
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-power-fluid-generator",
            group = "angels-power",
            order = "a[steam]-d[fluid-generator]"
          }
        }
      )
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
    -- solar panel
    if data.raw.item["solar-panel-small"] then
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-power-solar-panel",
            group = "angels-power",
            order = "b[solar]-b[panel]"
          }
        }
      )
      move_item("solar-panel-small", "angels-power-solar-panel", "a[solar-panel]-a[small]-a")
      move_item("solar-panel-small-2", "angels-power-solar-panel", "a[solar-panel]-a[small]-b")
      move_item("solar-panel-small-3", "angels-power-solar-panel", "a[solar-panel]-a[small]-c")
      move_item("solar-panel", "angels-power-solar-panel", "a[solar-panel]-b[medium]-a")
      move_item("solar-panel-2", "angels-power-solar-panel", "a[solar-panel]-b[medium]-b")
      move_item("solar-panel-3", "angels-power-solar-panel", "a[solar-panel]-b[medium]-c")
      move_item("solar-panel-large", "angels-power-solar-panel", "a[solar-panel]-c[large]-a")
      move_item("solar-panel-large-2", "angels-power-solar-panel", "a[solar-panel]-c[large]-b")
      move_item("solar-panel-large-3", "angels-power-solar-panel", "a[solar-panel]-c[large]-c")
    end
    -- accumulators
    if data.raw.item["large-accumulator"] then
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-power-accumulator",
            group = "angels-power",
            order = "b[solar]-c[accumulator]"
          }
        }
      )
      move_item("accumulator", "angels-power-accumulator", "a[capacity]-a")
      move_item("large-accumulator", "angels-power-accumulator", "a[capacity]-b")
      move_item("large-accumulator-2", "angels-power-accumulator", "a[capacity]-c")
      move_item("large-accumulator-3", "angels-power-accumulator", "a[capacity]-d")
      move_item("slow-accumulator", "angels-power-accumulator", "b[slow]-b")
      move_item("slow-accumulator-2", "angels-power-accumulator", "b[slow]-c")
      move_item("slow-accumulator-3", "angels-power-accumulator", "b[slow]-d")
      move_item("fast-accumulator", "angels-power-accumulator", "c[fast]-b")
      move_item("fast-accumulator-2", "angels-power-accumulator", "c[fast]-c")
      move_item("fast-accumulator-3", "angels-power-accumulator", "c[fast]-d")
    end
    -- burner reactor
    if data.raw.item["burner-reactor"] then
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-power-nuclear-reactor-a",
            group = "angels-power",
            order = "c[nuclear]-b[burner-reactor]"
          }
        }
      )
      move_item("burner-reactor", "angels-power-nuclear-reactor-a", "a[fuel-burner]-a")
      move_item("burner-reactor-2", "angels-power-nuclear-reactor-a", "a[fuel-burner]-b")
      move_item("burner-reactor-3", "angels-power-nuclear-reactor-a", "a[fuel-burner]-c")
      move_item("fluid-reactor", "angels-power-nuclear-reactor-a", "b[fluid-burner]-a")
      move_item("fluid-reactor-2", "angels-power-nuclear-reactor-a", "b[fluid-burner]-b")
      move_item("fluid-reactor-3", "angels-power-nuclear-reactor-a", "b[fluid-burner]-c")
    end
    -- nuclear reactor
    if data.raw.item["nuclear-reactor-2"] then
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-power-nuclear-reactor-b",
            group = "angels-power",
            order = "c[nuclear]-c[nuclear-reactor]"
          }
        }
      )
      move_item("nuclear-reactor", "angels-power-nuclear-reactor-b", "a")
      move_item("nuclear-reactor-2", "angels-power-nuclear-reactor-b", "b")
      move_item("nuclear-reactor-3", "angels-power-nuclear-reactor-b", "c")
    end
    -- heat pipes
    if data.raw.item["heat-pipe-2"] then
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-power-nuclear-heat-pipe",
            group = "angels-power",
            order = "c[nuclear]-d[heat-pipe]"
          }
        }
      )
      move_item("heat-pipe", "angels-power-nuclear-heat-pipe", "a")
      move_item("heat-pipe-2", "angels-power-nuclear-heat-pipe", "b")
      move_item("heat-pipe-3", "angels-power-nuclear-heat-pipe", "c")
    end
    -- heat-exchanger
    if data.raw.item["heat-exchanger-2"] then
      data:extend(
        {
          {
            type = "item-subgroup",
            name = "angels-power-nuclear-heat-exchanger",
            group = "angels-power",
            order = "c[nuclear]-e[heat-exchanger]"
          }
        }
      )
      move_item("heat-exchanger", "angels-power-nuclear-heat-exchanger", "a")
      move_item("heat-exchanger-2", "angels-power-nuclear-heat-exchanger", "b")
      move_item("heat-exchanger-3", "angels-power-nuclear-heat-exchanger", "c")
    end
  end
  -- nuclear fuel
  if bobmods and bobmods.plates then
    move_item("plutonium-239", "angels-power-nuclear-processing", "a[refined-ore]-c")
    move_item(
      "uranium-processing",
      "angels-power-nuclear-processing",
      "a[refined-ore]-a[processing]-a[uranium]",
      "recipe"
    )

    move_item("uranium-fuel-cell", "angels-power-nuclear-processing", "b[fuel-cell]-a[new]-a[uranium]-a")
    move_item("deuterium-fuel-cell", "angels-power-nuclear-processing", "b[fuel-cell]-a[new]-c[deuterium]-a")

    move_item("used-up-uranium-fuel-cell", "angels-power-nuclear-processing", "b[fuel-cell]-b[used]-a[uranium]")
    move_item(
      "nuclear-fuel-reprocessing",
      "angels-power-nuclear-processing",
      "b[fuel-cell]-b[reprocessing]-a[uranium]",
      "recipe"
    )
    move_item("used-up-deuterium-fuel-cell", "angels-power-nuclear-processing", "b[fuel-cell]-b[used]-c[deuterium]")
    move_item(
      "deuterium-fuel-reprocessing",
      "angels-power-nuclear-processing",
      "b[fuel-cell]-b[reprocessing]-c[deuterium]",
      "recipe"
    )

    if data.raw.item["thorium-ore"] then
      move_item("thorium-232", "angels-power-nuclear-processing", "a[refined-ore]-d")
      move_item(
        "thorium-processing",
        "angels-power-nuclear-processing",
        "a[refined-ore]-a[processing]-b[thorium]",
        "recipe"
      )

      move_item(
        "kovarex-enrichment-process",
        "angels-power-nuclear-processing",
        "a[refined-ore]-b[enrichment]-a[uranium]",
        "recipe"
      )
      move_item(
        "bobingabout-enrichment-process",
        "angels-power-nuclear-processing",
        "a[refined-ore]-b[enrichment]-b[thorium]",
        "recipe"
      )

      move_item("thorium-fuel-cell", "angels-power-nuclear-processing", "b[fuel-cell]-a[new]-b[thorium]-a")
      move_item("thorium-plutonium-fuel-cell", "angels-power-nuclear-processing", "b[fuel-cell]-a[new]-b[thorium]-b")

      move_item("used-up-thorium-fuel-cell", "angels-power-nuclear-processing", "b[fuel-cell]-b[used]-b[thorium]")
      move_item(
        "thorium-fuel-reprocessing",
        "angels-power-nuclear-processing",
        "b[fuel-cell]-b[reprocessing]-b[thorium]",
        "recipe"
      )
    end
    if data.raw.item["plutonium-fuel-cell"] then
      move_item("plutonium-fuel-cell", "angels-power-nuclear-processing", "b[fuel-cell]-a[new]-a[uranium]-b")
      move_item("fusion-catalyst", "angels-power-nuclear-processing", "a[refined-ore]-e")
    end
  end

  -----------------------------------------------------------------------------
  -- Fluid --------------------------------------------------------------------
  -----------------------------------------------------------------------------
  if bobmods and bobmods.plates then
    move_item("bob-heavy-water", "water-treatment", "b[bob-heavy-water]", "recipe")
  end

  -----------------------------------------------------------------------------
  -- INTERMEDIATES ------------------------------------------------------------
  -----------------------------------------------------------------------------
  -- basics
  move_item("iron-stick", "angels-basic-intermediate", "a[basic]-a")
  if bobmods and bobmods.plates then
    if angelsmods.industries.components then
      data.raw["item-subgroup"]["bob-gears"].group = "angels-components"
      data.raw["item-subgroup"]["bob-gears"].order = "c[mechanics]-e[bob-gears]"
      data.raw["item-subgroup"]["bob-bearings"].group = "angels-components"
      data.raw["item-subgroup"]["bob-bearings"].order = "c[mechanics]-f[bob-bearings]"
    else
      move_item("iron-gear-wheel", "bob-gears", "a[iron]")
      data.raw["item-subgroup"]["bob-gears"].group = "intermediate-products"
      data.raw["item-subgroup"]["bob-gears"].order = "a[basic]-b"
      data.raw["item-subgroup"]["bob-bearings"].group = "intermediate-products"
      data.raw["item-subgroup"]["bob-bearings"].order = "a[basic]-c"
    end
  else
    move_item("iron-gear-wheel", "angels-basic-intermediate", "a[basic]-b")
  end
  -- engines
  move_item("engine-unit", "angels-basic-intermediate", "b[motor]-a")
  move_item("electric-engine-unit", "angels-basic-intermediate", "b[motor]-b")
  -- batteries
  move_item("battery", "angels-basic-intermediate", "c[battery]-a")
  if bobmods and bobmods.plates then
    move_item("lithium-ion-battery", "angels-basic-intermediate", "c[battery]-b")
    move_item("silver-zinc-battery", "angels-basic-intermediate", "c[battery]-c")
  end
  -- rocket parts
  move_item("rocket-control-unit", "angels-basic-intermediate", "z[rocket]-a[rcu]")
  move_item("low-density-structure", "angels-basic-intermediate", "z[rocket]-b[lds]")
  if data.raw.item["heat-shield-tile"] then
    move_item("heat-shield-tile", "angels-basic-intermediate", "z[rocket]-c[heat-shield]")
  end
  if angelsmods.industries.tech then
    move_item("satellite", "angels-pack-components", "dba")
  else
    move_item("satellite", "angels-basic-intermediate", "z[rocket]-z[satellite]")
  end
  move_item("rocket-silo", "production-machine", "z[rocket]-a[silo]")
  --bob classes
  if bobmods then
    if bobmods.classes then
      data.raw["item-subgroup"]["body-parts"].group = "angels-blocks"
      data.raw["item-subgroup"]["body-parts"].order = "z[bob-parts]-a"
    end
    -- electronics
    if bobmods.electronics then
      move_item("basic-electronic-components", "angels-circuit-components", "z[bob]-a")
      move_item("electronic-components", "angels-circuit-components", "z[bob]-b")
      move_item("intergrated-electronics", "angels-circuit-components", "z[bob]-c")
      move_item("processing-electronics", "angels-circuit-components", "z[bob]-d")

      move_item("wooden-board", "angels-board", "z[bob]-a")
      move_item("phenolic-board", "angels-board", "z[bob]-b")
      move_item("fibreglass-board", "angels-board", "z[bob]-c")

      move_item("basic-circuit-board", "angels-circuit-board", "z[bob]-a")
      move_item("circuit-board", "angels-circuit-board", "z[bob]-b")
      move_item("superior-circuit-board", "angels-circuit-board", "z[bob]-c")
      move_item("multi-layer-circuit-board", "angels-circuit-board", "z[bob]-d")

      move_item("electronic-circuit", "angels-loaded-circuit-board", "z[bob]-a")
      move_item("advanced-circuit", "angels-loaded-circuit-board", "z[bob]-b")
      move_item("processing-unit", "angels-loaded-circuit-board", "z[bob]-c")
      move_item("advanced-processing-unit", "angels-loaded-circuit-board", "z[bob]-d")
    end
    -- bob tech
    if bobmods.tech and angelsmods.industries.tech then
      data.raw["item-subgroup"]["science-pack"].group = "angels-tech"
      data.raw["item-subgroup"]["science-pack"].order = "aa[science-packs]-b[bobs-alien]"
    end
    if mods["bobrevamp"] then --- THIS SHOULD BE DONE IN PETROCHEM, and killed if conversion valves are off
      move_item("solid-fuel-from-light-oil", "petrochem-fuel", "e[bob]-a", "recipe")
      move_item("solid-fuel-from-petroleum-gas", "petrochem-fuel", "e[bob]-b", "recipe")
      move_item("solid-fuel-from-heavy-oil", "petrochem-fuel", "e[bob]-c", "recipe")
      move_item("solid-fuel-from-hydrogen", "petrochem-fuel", "e[bob]-d", "recipe")
      move_item("solid-fuel-from-light-oil", "petrochem-fuel", "e[bob]-a")
      move_item("solid-fuel-from-petroleum-gas", "petrochem-fuel", "e[bob]-b")
      move_item("solid-fuel-from-heavy-oil", "petrochem-fuel", "e[bob]-c")
      move_item("solid-fuel-from-hydrogen", "petrochem-fuel", "e[bob]-d")
    end
    --fluids
    if bobmods.plates then
      data.raw["item-subgroup"]["bob-fluid-pump"].group = "water-treatment"
      data.raw["item-subgroup"]["bob-fluid-pump"].order = "c[water]-z[bob-fluid-pump]"
    end
  end
end
