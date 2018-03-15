script.on_event(defines.events.on_player_created, function(event)
local iteminsert = game.players[event.player_index].insert
if game.entity_prototypes["angels-main-lab"] then
	iteminsert{name="angels-main-lab", count=1}
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
end)

