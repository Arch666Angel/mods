-- modify base game tips-and-tricks to prevent crashes

if data.raw["tutorial"]["trains-stations"]["scenario"] == "trains-stations" then
  data:extend({
    {
      type = "tutorial",
      name = "angels-trains-stations",
      scenario = "angels-trains-stations",
    },
  })
  data.raw["tips-and-tricks-item"]["train-stops"]["tutorial"] = "angels-trains-stations"
end

local function replaceAt( str, at, with ) 
    return string.sub(str, 1, at-1 )..with..(string.sub(str, at+1, string.len(str))) 
  end

local function fix_e_confirm()
    local tip = data.raw["tips-and-tricks-item"]["e-confirm"]
    local initFunc = tip.simulation.init or ""
    tip.simulation.init = replaceAt(initFunc, 2884, "6")
end

local function fix_clear_cursor()
    local tip = data.raw["tips-and-tricks-item"]["clear-cursor"]
    local initFunc = tip.simulation.init or ""
    --tip.simulation.init = replaceAt(initFunc, 644, "1")
end

local function fix_bulk_crafting()
    local tip = data.raw["tips-and-tricks-item"]["bulk-crafting"]
    local initFunc = tip.simulation.init or ""
    initFunc = string.gsub(initFunc, [[player%.insert{name = "iron%-plate", count = 100}]], "", 1)
    initFunc = string.gsub(initFunc, [[player%.insert{name = "iron%-plate", count = 100}]], [[player.insert{name = "iron-plate", count = 50}]], 1)
    tip.simulation.init = string.gsub(initFunc, "iron%-chest", "transport-belt")
end 

local function fix_circuit_network()
    local tip = data.raw["tips-and-tricks-item"]["circuit-network"]
    local initFunc = tip.simulation.init or ""
    tip.simulation.init = string.gsub(initFunc, "intermediate%-products", "angels-casting")
end

local function fix_belt_lanes()
    local tip = data.raw["tips-and-tricks-item"]["belt-lanes"]
    tip.simulation.init  = [[
    game.simulation.camera_position = {0, 0.5}

    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqtmG1z4iAQgP8Ln0knvESNf6XTcWKyWmYQMkB653X87wfaqteSFuj5RQ3w7Au7C5tXtJUTjEYoh9avSPRaWbR+fEVW7FUnwzPVHQCtkTOdsqM2rtqCdOiEkVAD/EZrcnrCCJQTTsBl7fnPcaOmwxaMn4DfGULthPJDVf8M1iGMRm39Mq2CHI+qaPPQYHT0a8hDcxZxWbCx4JxQexsmGjjoF9hMfkw6MDBshIODH9p10gJGl8cXVd4Ed2oP0lbaAKl6M9lnGLz0Xk/BbFrXGB30cJ7oKgndWbebeacT/mQUvRoldTf4J18Zw7wpgzDQX4ZXGLnjGNbqyY1TcOYnPrvyJ6+H2Ruv63Bx/VeS+NltUVlCzYjiZaJW86LmzWrwTDx9Jan9JClCXqSTSR55WaAzJSnkVQm5TiG3GeT6nhxhkboERmZg99XAgnHR1AkbM2MtoTEqTaIuMqm3JLROK6h2k1FdDzH06s3qqM28IDbTIog0JeikECK3jALpJxrRV6B8fThW/rQAs4t7YvnuiI+1YTvtdmA2VvyBEFPXT0x0Tsrxd6voR6t4DF2Uc2wmmNsSWJKeNCfpaB6aZKBZHpqWlAqaEo6UlaBZEvqWn3aUwsWrR0jIN30THHHLS3vopKyuKTRqGS8g996IERd5hZMllTi6zCucidRVSVVKC4O2BJ0UBqzO3TP6zZ4xkklcfAekJQWHz8DK7pjhxynlBstLEpYn7VSTfTDzqAdKLo2JKi5znEs+ODfvAs9WRRvJ6vuNnKe3RZawuqQ/4HVGX8VoShzykv6Tsf/af/ba99LXhrMp6Dd5QsNJ/nFMZhPI0r1EfuQlZyY4hXcGv7yCwUuP/rBssK++zRN+DF/Y183myc8IK7xCt1cUGL14z55VaRa05W3bLNiy5syn919JB3Zd",
      position = {4, 0}
    }
  ]]
end

local function fix_splitters()
    local tip = data.raw["tips-and-tricks-item"]["splitters"]
    local initFunc = tip.simulation.init or ""
    tip.simulation.init = string.gsub(initFunc, "intermediate%-products", "angels-components")
end

local function fix_inserters()
    local tip = data.raw["tips-and-tricks-item"]["inserters"]
    tip.simulation.init = [[
    game.simulation.camera_position = {0, 0.5}

    game.surfaces[1].create_entities_from_blueprint_string
    {
      string = "0eNqll92SojAQhd8l18EiCeDPq1iWhdg6qYLESsLMuhbvvh100FVYkx1vEBK+c9J0p+FCdnULJyOVI6sLkZVWlqzWF2LlUZW1v6bKBsiKOFMqe9LGJTuoHekokWoPv8iKdXRkunVaQXJojSoreJjNuw0loJx0Eq5K/cl5q9pmBwZx9BsBNVTOyCoBBeZ4TtAjmIPHUXLSFglaeUWkJoKSM1nlqLOXBm/rhxaU7NrDAczWyt9IZOnw856fhPkgbJuyrpNB/qTrMUk2y6+is7wbwQk6EbkREr+hWDp7WkI2Qs4iyCKKnA/kFp+WORqNx0k2m2ZT4s4nz5Hq1PpkeZEqYqSKACXdugmpeXi88qhwLcLBWRR4GQ6OSx2WhpPjUoex/ywfn0Zj9cN4uNU0zmpMacaR76UplQWD+9Urc9os42PMe1H+vae+gPktnqPRLB6cHaTCsaT6APvv7Uj0Dr9v2FpwTqqj9RMNNPoTti2O1bhM2G+lgwaHDmVtgZLr5esOfxMu1RFqm2gDLKlMaz9gj+oVFj72Hp5iajZ63090SQ1l723oMZvRVd1Lu9blfizaD6vB6L7fLNi9qL802lGTYUofozRGWsYkgwhKBp4GumNvzPHIch2CONHtOA/N0oRdQcUoJrw0hxUWIZXJoyqzCHsYebBZHme2CAaLOHB4K8ziwOGtMI8Dh7fCIgoswjvhPA7MIt5sFtPo969QgkcoMREgNb0tCvF2p2U/WUoW3J7Y03OO607OtND5T5Av9Oe705rTnOLLS76ha3+g3P/HCf4GtHP/PKLkExtabyQv+DJbLvNCzNNMZF33B/lUVs4=",
      position = {0, -3},
    }

    local furnaces = game.surfaces[1].find_entities_filtered{name = "stone-furnace"}
    storage.furnace_1 = furnaces[2]
    storage.furnace_2 = furnaces[1]
    local chests = game.surfaces[1].find_entities_filtered{name = "wooden-chest"}
    storage.chest_1 = chests[1]
    storage.chest_2 = chests[2]
    script.on_nth_tick(600, function()
      storage.furnace_1.clear_items_inside()
      storage.furnace_1.insert("coal")
      storage.furnace_2.insert("coal")
      storage.furnace_2.insert("angels-ore1-crushed")
      storage.chest_1.insert("iron-gear-wheel")
      storage.chest_2.clear_items_inside()
    end)
  ]]
end

local function fix_z_dropping()
    local tip = data.raw["tips-and-tricks-item"]["z-dropping"]
    local initFunc = tip.simulation.init or ""
    tip.simulation.init = string.gsub(initFunc, "iron%-ore", "angels-ore1-crushed")
end

if mods["angelsindustries"] then
    fix_e_confirm()
    fix_bulk_crafting()
    if angelsmods.industries.overhaul then
      fix_splitters()
    end
end

fix_clear_cursor()
fix_circuit_network()
fix_belt_lanes()
fix_inserters()
fix_z_dropping()
