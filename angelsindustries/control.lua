script.on_configuration_changed(
  function(event)
    if event.mod_changes["angelsindustries"] or event.mod_startup_settings_changed then
      -- settings have changed
      gifted_main_lab = game.entity_prototypes["angels-main-lab"] and gifted_main_lab or false
    end
  end
)

script.on_event(
  {
    defines.events.on_player_created,
    defines.events.on_player_respawned,
  },
  function(event)
    local iteminsert = game.players[event.player_index].insert
    if game.entity_prototypes["angels-main-lab"] and (not gifted_main_lab) then
      gifted_main_lab = iteminsert{name = "angels-main-lab", count = 1} > 0
    end

    -- iteminsert{name="angels-basic-lab", count=10}
    -- iteminsert{name="angels-enhance-lab-1", count=10}
    -- iteminsert{name="angels-exploration-lab-1", count=10}
    -- iteminsert{name="angels-energy-lab-1", count=10}
    -- iteminsert{name="angels-logistic-lab-1", count=10}
    -- iteminsert{name="angels-processing-lab-1", count=10}
    -- iteminsert{name="angels-war-lab-1", count=10}

    -- iteminsert{name="datacore-basic", count=100}
    -- iteminsert{name="datacore-exploration-1", count=100}
    -- iteminsert{name="datacore-exploration-2", count=100}
    -- iteminsert{name="datacore-enhance-1", count=100}
    -- iteminsert{name="datacore-enhance-2", count=100}
    -- iteminsert{name="datacore-energy-1", count=100}
    -- iteminsert{name="datacore-energy-2", count=100}
    -- iteminsert{name="datacore-logistic-1", count=100}
    -- iteminsert{name="datacore-logistic-2", count=100}
    -- iteminsert{name="datacore-processing-1", count=100}
    -- iteminsert{name="datacore-processing-2", count=100}
    -- iteminsert{name="datacore-war-1", count=100}
    -- iteminsert{name="datacore-war-2", count=100}

    -- iteminsert{name="angels-science-pack-grey", count=100}
    -- iteminsert{name="angels-science-pack-red", count=100}
    -- iteminsert{name="angels-science-pack-green", count=100}
    -- iteminsert{name="angels-science-pack-orange", count=100}
    -- iteminsert{name="angels-science-pack-blue", count=100}
    -- iteminsert{name="angels-science-pack-yellow", count=100}
  end
)
