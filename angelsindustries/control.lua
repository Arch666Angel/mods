local tech_archive = require("src.tech-archive")

script.on_event(defines.events.on_player_created, function(event)
  tech_archive:on_player_created()
end)

script.on_event(defines.events.on_pre_player_died, function(event)
  tech_archive:on_pre_player_died(event.player_index)
end)

script.on_event(defines.events.on_player_respawned, function(event)
  tech_archive:on_player_respawned(event.player_index)
end)

script.on_event(defines.events.on_entity_died, function(event)
  tech_archive:on_entity_died(event.entity)
end)

----------------
--- GHOSTING ---
----------------
--[[local function unlock(force, shortcut)
  for _, p in pairs(force.players) do
    p.set_shortcut_available(shortcut, true)
  end
end]]

script.on_event(defines.events.on_research_finished, function(event)
  local research = event.research
  --moved this first module to data stage by changing unlock tech to angels-hidden-ghosting
  --[[if research.name == "angels-construction-robots" then
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
  end]]

  local ghosting = {
    ["angels-ghosting-construction-robots"] = true,
    ["angels-ghosting-angels-construction-robots"] = true,
  }
  if ghosting[research.name] then
    research.force.technologies["angels-hidden-ghosting"].researched = true

    --[[for _, fplayer in pairs(research.force.players) do
      --fplayer.shortcut.unlockset_shortcut_available("toggle-ghosting", true)
      fplayer.set_shortcut_toggled("toggle-ghosting", true)
    end]]

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
    for tech, _ in pairs(ghosting) do
      if research.force.technologies[tech] and not research.force.technologies[tech].researched then
        local available = true
        for _, prereq in pairs(research.force.technologies[tech].prerequisites or {}) do
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
end)

script.on_event({ defines.events.on_lua_shortcut, "toggle-ghosting" }, function(event)
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
end)
