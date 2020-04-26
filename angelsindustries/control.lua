global.is_lab_given = false
local main_lab = {
  "angels-main-lab-1",
  "angels-main-lab-2",
  "angels-main-lab-3",
  "angels-main-lab-4",
  "angels-main-lab-5",
  "angels-main-lab-6",
  "angels-main-lab-7"
}

local function remove_lab_from_inv(inventory)
  if inventory then
    local items = game.item_prototypes
    for key, lab in pairs(main_lab) do
      if items[lab] and inventory.get_item_count(lab) > 0 then
        inventory.remove {name = lab}
        global.is_lab_given = false
        return true
      end
    end
  end
end

local function table_contains(table, value)
  for key, val in pairs(table) do
    if val == value then
      return true
    end
  end
  return false
end
script.on_event(
  {defines.events.on_player_created, defines.events.on_player_respawned},
  function(event)
    if not global.is_lab_given and game.entity_prototypes[main_lab[1]] then
      local player = game.players[event.player_index]
      if player and player.valid then
        global.is_lab_given = player.insert {name = main_lab[1], count = 1} > 0
      end
    end
  end
)

script.on_event(
  defines.events.on_entity_died,
  function(event)
    if game.entity_prototypes[main_lab[1]] then
      local etype = event.entity.type
      if table_contains(main_lab, event.entity.name) then
        global.is_lab_given = false
      elseif etype == "container" or etype == "logistic-container" then
        remove_lab_from_inv(event.entity.get_inventory(defines.inventory.chest))
      elseif etype == "construction-robot" or etype == "logistic-robot" then
        remove_lab_from_inv(event.entity.get_inventory(defines.inventory.robot_cargo))
      end
    end
  end
)

script.on_event(
  defines.events.on_pre_player_died,
  function(event)
    if game.entity_prototypes[main_lab[1]] then
      remove_lab_from_inv(game.players[event.player_index].get_main_inventory())
    end
  end
)

local function unlock(force, condition, shortcut)
  for t, _ in pairs(condition) do
    if not force.technologies[t].researched then
      return
    end
  end
  for _, p in pairs(force.players) do
    p.set_shortcut_available(shortcut, true)
  end
end

script.on_event(
  defines.events.on_research_finished,
  function(event)
    local unlocks = {
      [{["angels-construction-robots"] = true}] = "undo",
      [{["angels-construction-robots"] = true}] = "copy",
      [{["angels-construction-robots"] = true}] = "cut",
      [{["angels-construction-robots"] = true}] = "paste",
      [{["angels-construction-robots"] = true}] = "import-string",
      [{["angels-construction-robots"] = true}] = "give-blueprint",
      [{["angels-construction-robots"] = true}] = "give-blueprint-book",
      [{["angels-construction-robots"] = true}] = "give-deconstruction-planner",
      [{["angels-construction-robots"] = true}] = "give-upgrade-planner"
    }
    for t, s in pairs(unlocks) do
      if t[event.research.name] then
        unlock(event.research.force, t, s)
      end
    end
  end
)
