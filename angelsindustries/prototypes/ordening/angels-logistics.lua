local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item
local reorder = function(type, item, subgroup, order)
  move_item(item, subgroup, order, type)
end

-------------------------------------------------------------------------------
-- BOB LOGISTIC TAB -----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["boblogistics"] then
  data.raw["item-group"]["bob-logistics"].order = "lb[bobs]-a[logistics]"
  data.raw["item-group"]["bob-logistics"].icon = nil
  data.raw["item-group"]["bob-logistics"].icon_size = nil
  data.raw["item-group"]["bob-logistics"].icons = {
    {
      icon = "__boblogistics__/graphics/icons/technology/logistics.png",
      icon_size = 64,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/bobs-logo.png",
      icon_size = 1080,
      scale = 64 / 1080 * 0.35,
      shift = { 20, -20 },
    },
  }
end

-------------------------------------------------------------------------------
-- LOGISTIC CHESTS + REPAIR PACKS ---------------------------------------------
-------------------------------------------------------------------------------
data:extend({
  { type = "item-subgroup", name = "angels-chests-small-a", group = "angels-logistics", order = "aa[chests-small]-a" },
  { type = "item-subgroup", name = "angels-chests-small-b", group = "angels-logistics", order = "aa[chests-small]-b" },
})
-- pre-logistics chests (+ repair packs)
move_item("wooden-chest", "angels-chests-small-a", "a[chest]-a[wood]")
move_item("iron-chest", "angels-chests-small-a", "a[chest]-b[iron]")
move_item("steel-chest", "angels-chests-small-b", "a")
move_item("repair-pack", "angels-chests-small-a", "b[repair-pack]-a", "repair-tool")
-- steel chests
move_item("logistic-chest-active-provider", "angels-chests-small-b", "b")
move_item("logistic-chest-passive-provider", "angels-chests-small-b", "c")
move_item("logistic-chest-storage", "angels-chests-small-b", "d")
move_item("logistic-chest-buffer", "angels-chests-small-b", "e")
move_item("logistic-chest-requester", "angels-chests-small-b", "f")

if mods["boblogistics"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-chests-small-c",
      group = "angels-logistics",
      order = "aa[chests-small]-b",
    },
    {
      type = "item-subgroup",
      name = "angels-chests-small-d",
      group = "angels-logistics",
      order = "aa[chests-small]-c",
    },
  })
  -- repair packs
  move_item("repair-pack-2", "angels-chests-small-a", "b[repair-pack]-b", "repair-tool")
  move_item("repair-pack-3", "angels-chests-small-a", "b[repair-pack]-c", "repair-tool")
  move_item("repair-pack-4", "angels-chests-small-a", "b[repair-pack]-d", "repair-tool")
  move_item("repair-pack-5", "angels-chests-small-a", "b[repair-pack]-e", "repair-tool")
  -- steel chests
  if mods["bobplates"] then
    move_item("steel-chest", "angels-chests-small-b", "a")
  end
  -- brass chests
  if mods["bobplates"] then
    move_item("brass-chest", "angels-chests-small-c", "a")
  end
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
end

-------------------------------------------------------------------------------
-- ROBOPORTS ------------------------------------------------------------------
-------------------------------------------------------------------------------
move_item("roboport", "angels-cargo-ports", "a[roboport]-e")

if mods["boblogistics"] then
  data:extend({
    { type = "item-subgroup", name = "angels-roboport-a", group = "angels-logistics", order = "ba[roboport]-a" },
    { type = "item-subgroup", name = "angels-roboport-b", group = "angels-logistics", order = "ba[roboport]-b" },
    { type = "item-subgroup", name = "angels-roboport-c", group = "angels-logistics", order = "ba[roboport]-c" },
    { type = "item-subgroup", name = "angels-roboport-d", group = "angels-logistics", order = "ba[roboport]-d" },
  })
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
  if settings.startup["bobmods-logistics-disableroboports"].value == false then
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
end

-------------------------------------------------------------------------------
-- ROBOTS ---------------------------------------------------------------------
-------------------------------------------------------------------------------
move_item("construction-robot", "angels-cargo-ports", "b[robots]-a")
move_item("logistic-robot", "angels-cargo-ports", "b[robots]-b")
move_item("flying-robot-frame", "angels-cargo-ports", "c[intermediates]-a")

if mods["boblogistics"] then
  data:extend({
    { type = "item-subgroup", name = "angels-robot-a", group = "angels-logistics", order = "ca[robots]-a" },
    { type = "item-subgroup", name = "angels-robot-b", group = "angels-logistics", order = "ca[robots]-b" },
    { type = "item-subgroup", name = "angels-robot-c", group = "angels-logistics", order = "ca[robots]-c" },
    { type = "item-subgroup", name = "angels-robot-d", group = "angels-logistics", order = "ca[robots]-d" },
  })
  -- robot frames
  if settings.startup["bobmods-logistics-flyingrobotframes"].value then
    move_item("flying-robot-frame", "angels-robot-a", "a[frame]")
    move_item("flying-robot-frame-2", "angels-robot-b", "a[frame]")
    move_item("flying-robot-frame-3", "angels-robot-c", "a[frame]")
    move_item("flying-robot-frame-4", "angels-robot-d", "a[frame]")
  end
  -- robot brains
  if settings.startup["bobmods-logistics-robotparts"].value == true then
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
    if mods["bobwarfare"] and settings.startup["bobmods-warfare-robotupdate"].value then
      move_item("robot-brain-combat", "angels-robot-a", "d[combat]-a[brain]")
      move_item("robot-brain-combat-2", "angels-robot-b", "d[combat]-a[brain]")
      move_item("robot-brain-combat-3", "angels-robot-c", "d[combat]-a[brain]")
      move_item("robot-brain-combat-4", "angels-robot-d", "d[combat]-a[brain]")
      move_item("robot-tool-combat", "angels-robot-a", "d[combat]-b[tool]")
      move_item("robot-tool-combat-2", "angels-robot-b", "d[combat]-b[tool]")
      move_item("robot-tool-combat-3", "angels-robot-c", "d[combat]-b[tool]")
      move_item("robot-tool-combat-4", "angels-robot-d", "d[combat]-b[tool]")
    end
  end
  -- flying robots
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
  if mods["bobwarfare"] and settings.startup["bobmods-warfare-robotupdate"].value then
    move_item("defender-robot", "angels-robot-a", "d[combat]-c[robot]")
    move_item("distractor-robot", "angels-robot-b", "d[combat]-c[robot]")
    move_item("destroyer-robot", "angels-robot-c", "d[combat]-c[robot]")
    move_item("bob-laser-robot", "angels-robot-d", "d[combat]-c[robot]")
  end
else
  if mods["bobwarfare"] and settings.startup["bobmods-warfare-robotupdate"].value then
    data:extend({
      {
        type = "item-subgroup",
        name = "angels-robot-brains",
        group = "angels-logistics",
        order = "cc[robot-parts]",
      },
    })

    move_item("robot-brain-combat", "angels-robot-brains", "a[brain]-a")
    move_item("robot-brain-combat-2", "angels-robot-brains", "[brain]-b")
    move_item("robot-brain-combat-3", "angels-robot-brains", "a[brain]-c")
    move_item("robot-brain-combat-4", "angels-robot-brains", "a[brain]-d")
    move_item("robot-tool-combat", "angels-robot-brains", "b[tool]-a")
    move_item("robot-tool-combat-2", "angels-robot-brains", "b[tool]-b")
    move_item("robot-tool-combat-3", "angels-robot-brains", "b[tool]-c")
    move_item("robot-tool-combat-4", "angels-robot-brains", "b[tool]-d")

    move_item("defender-robot", "angels-cargo-bots", "c[drone]-a[gun]")
    move_item("distractor-robot", "angels-cargo-bots", "c[drone]-b[laser]")
    move_item("destroyer-robot", "angels-cargo-bots", "c[drone]-c[flamethrower]")
    move_item("bob-laser-robot", "angels-cargo-bots", "c[drone]-d[plasma]")
  end
end
