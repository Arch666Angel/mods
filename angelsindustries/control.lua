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

script.on_init(function(event)
	if remote.interfaces["freeplay"] then
		local items_to_insert = remote.call("freeplay", "get_created_items")
		items_to_insert[main_lab[1]] = (items_to_insert[main_lab[1]] or 0) + 1
		remote.call("freeplay", "set_created_items", items_to_insert)
	end
end)

script.on_event(
  {--[[defines.events.on_player_created,]] defines.events.on_player_respawned},
  function(event)
    local player = game.players[event.player_index]

    if not global.is_lab_given and game.entity_prototypes[main_lab[1]] then
      if player and player.valid then
        global.is_lab_given = player.insert {name = main_lab[1], count = 1} > 0
      end
    end

    local force = player and player.force
    if force then
      local available =
        force.technologies["angels-hidden-ghosting"] and force.technologies["angels-hidden-ghosting"].researched or
        false
      player.set_shortcut_available("toggle-ghosting", available)
      if available then
        player.set_shortcut_toggled("toggle-ghosting", force.ghost_time_to_live == 0)
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

----------------
--- GHOSTING ---
----------------
local function unlock(force, shortcut)
  for _, p in pairs(force.players) do
    p.set_shortcut_available(shortcut, true)
  end
end

script.on_event(
  defines.events.on_research_finished,
  function(event)
    local research = event.research
    if research.name == "angels-construction-robots" then
      local unlocks = {
        "undo",
        "copy",
        "cut",
        "paste",
        "import-string",
        "give-blueprint",
        "give-blueprint-book",
        "give-deconstruction-planner",
        "give-upgrade-planner"
      }
      for _, shortcut in pairs(unlocks) do
        unlock(event.research.force, shortcut)
      end
    end

    local ghosting = {
      ["angels-ghosting-construction-robots"] = true,
      ["angels-ghosting-angels-construction-robots"] = true
    }
    if ghosting[research.name] then
      research.force.technologies["angels-hidden-ghosting"].researched = true

      for _, fplayer in pairs(research.force.players) do
        fplayer.set_shortcut_available("toggle-ghosting", true)
        fplayer.set_shortcut_toggled("toggle-ghosting", true)
      end

      ghosting[research.name] = nil
      for tech in pairs(ghosting) do
        if research.force.technologies[tech] then
          if not research.force.technologies[tech].researched then
            research.force.technologies[tech].researched = true
            research.force.technologies[tech].enabled = false
          end
        end
      end

    else -- not a ghosting tech (but could be the final prerequisite in order to be researchable)
      -- this makes sure only 1 will be available for research, the others will be disabled
      local already_available = false
      for tech,_ in pairs(ghosting) do
        if research.force.technologies[tech] and (not research.force.technologies[tech].researched) then

          local available = true
          for _,prereq in pairs(research.force.technologies[tech].prerequisites or {}) do
            if not prereq.researched then
              available = false
            end
          end

          if available then -- shows up as researchable
            if already_available then
              --research.force.technologies[tech].researched = true
              research.force.technologies[tech].enabled = false
            else
              already_available = true
            end
          end

        end
      end
    end

  end
)

script.on_event(
  {
    defines.events.on_lua_shortcut,
    "toggle-ghosting"
  },
  function(event)
    if event.prototype_name and event.prototype_name ~= "toggle-ghosting" then
      return
    end
    local input = event.prototype_name or event.input_name
    local player = game.players[event.player_index]
    if player and player.valid then
      local force = player.force
      local toggled = force.ghost_time_to_live == 0
      force.ghost_time_to_live = toggled and 60 * 60 * 60 * 24 * 7 or 0

      for _, fplayer in pairs(force.players) do
        fplayer.set_shortcut_toggled(input, toggled)
      end
    end
  end
)
