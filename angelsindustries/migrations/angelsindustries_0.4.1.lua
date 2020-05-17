game.reload_script()

for _, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()
end

-- fix nuclear technologies
if settings.startup["angels-enable-industries"].value then -- overhaul enabled
  for _, force in pairs(game.forces) do

    for newTech, oldTechs in pairs{
      ["water-chemistry-1"] = {
        "heavy-water-processing"
      },
      ["water-chemistry-2"] = {
        "deuterium-processing"
      },
      ["angels-plutonium-power"] = {
        "plutonium-fuel-cell"
      },
      ["angels-thorium-power"] = {
        "thorium-processing",
        "thorium-fuel-reprocessing",
        "thorium-plutonium-fuel-cell",
        "bob-nuclear-power-2",
      },
      ["angels-fusion-power"] = {
        "deuterium-fuel-reprocessing",
        "bob-nuclear-power-3"
      },
    } do
      if force.technologies[newTech] then
        for _, oldTech in pairs(oldTechs) do
          force.technologies[newTech].researched = force.technologies[newTech].researched or
            (force.technologies[oldTech] and force.technologies[oldTech].researched)
        end
      end
    end

    for techname, enabled in pairs{
      -- deuterium
      ["heavy-water-processing"] = false,
      ["water-chemistry-1"] = true,
      ["deuterium-processing"] = false,
      ["water-chemistry-2"] = true,

      -- bob recipes to disable
      ["thorium-processing"] = false,
      ["thorium-fuel-reprocessing"] = false,
      ["thorium-plutonium-fuel-cell"] = false,
      ["deuterium-fuel-reprocessing"] = false,
      ["plutonium-fuel-cell"] = false,
    } do
      if force.technologies[techname] then
        if not enabled then
          force.technologies[techname].researched = false
          force.technologies[techname].visible_when_disabled = false
        end
        force.technologies[techname].enabled = enabled
      end
    end

  end
end

-- fix nuclear recipes
if settings.startup["angels-enable-industries"].value then -- overhaul enabled
  for _, surface in pairs(game.surfaces) do
    local centrifuges = surface.find_entities_filtered{
      name = {
        "centrifuge",
        game.active_mods["bobassembly"] and "centrifuge-2",
        game.active_mods["bobassembly"] and "centrifuge-3",
      },
      type = "assembling-machine"
    }
    for _, centrifuge in pairs(centrifuges) do
      local recipe = centrifuge.get_recipe()
      if recipe and (not recipe.enabled) then
        if recipe.name == "kovarex-enrichment-process" then
          centrifuge.set_recipe(nil) -- remove recipe
        elseif recipe.name == "thorium-processing" then
          centrifuge.set_recipe("angels-thorium-processing") -- replace with angels version
        elseif recipe.name == "thorium-fuel-reprocessing" then
          centrifuge.set_recipe("angels-thorium-fuel-cell-reprocessing") -- replace with angels version
        elseif recipe.name == "deuterium-fuel-reprocessing" then
          centrifuge.set_recipe("angels-deuterium-fuel-cell-reprocessing") -- replace with angels version
        elseif recipe.name == "bobingabout-process" then
          if game.active_mods["bobrevamp"] and settings.startup["bobmods-revamp-rtg"] and settings.startup["bobmods-revamp-rtg"].value then
            -- leave the recipe as is
          else
            centrifuge.set_recipe(nil) -- remove recipe
          end
        end
      end
    end
    local assemblers = surface.find_entities_filtered{
      name = {
        "assembling-machine-1",
        "assembling-machine-2",
        "assembling-machine-3",
        game.active_mods["bobassembly"] and "assembling-machine-4",
        game.active_mods["bobassembly"] and "assembling-machine-5",
        game.active_mods["bobassembly"] and "assembling-machine-6",
      },
      type = "assembling-machine"
    }
    for _, assembler in pairs(assemblers) do
      local recipe = assembler.get_recipe()
      if recipe and (not recipe.enabled) then
        if recipe.name == "thorium-plutonium-fuel-cell" then
          assembler.set_recipe(nil) -- replace with angels version, but it is in different machine, so remove recipe
        elseif recipe.name == "thorium-fuel-cell" then
          assembler.set_recipe(nil) -- replace with angels version, but it is in different machine, so remove recipe
        elseif recipe.name == "deuterium-fuel-cell" then
          assembler.set_recipe(nil) -- replace with angels version, but it is in different machine, so remove recipe
        elseif recipe.name == "plutonium-fuel-cell" then
          assembler.set_recipe(nil) -- replace with angels version, but it is in different machine, so remove recipe
        end
      end
    end
  end
end

-- fix nuclear items
if settings.startup["angels-enable-industries"].value then -- overhaul enabled
  local maxInventoryType = 0
  for _,inventoryType in pairs(defines.inventory) do
    if inventoryType > maxInventoryType then
      maxInventoryType = inventoryType
    end
  end

  local itemsToSwap =
  {
    ["plutonium-fuel-cell"] = "AMOX-cell",
    ["thorium-fuel-cell"] = "angels-thorium-fuel-cell",
    ["thorium-plutonium-fuel-cell"] = "angels-thorium-fuel-cell",
    ["deuterium-fuel-cell"] = "angels-deuterium-fuel-cell",
    ["used-up-thorium-fuel-cell"] = "used-up-angels-thorium-fuel-cell",
    ["used-up-deuterium-fuel-cell"] = "used-up-angels-deuterium-fuel-cell",
    ["fusion-catalyst"] = "angels-muon-fusion-catalyst"
  }

  for _, surface in pairs(game.surfaces) do
    for chunk in surface.get_chunks() do
      local entities = surface.find_entities(chunk.area)
      for _, entity in pairs(entities) do

        -- swap items in inventory
        for inventoryType = 1, maxInventoryType do
          local inventory = entity.get_inventory(inventoryType)
          if inventory and inventory.valid then
            for oldItemName, newItemName in pairs(itemsToSwap) do
              local itemCount = game.item_prototypes[oldItemName] and game.item_prototypes[newItemName] and inventory.get_item_count(oldItemName) or 0
              if itemCount > 0 then
                inventory.insert{
                  name = newItemName,
                  count = inventory.remove{
                    name = oldItemName,
                    count = itemCount
                  }
                }
              end
            end
          end
        end

        -- swap signals
        local controlBehavior = entity.get_or_create_control_behavior()
        if controlBehavior and controlBehavior.valid then

          -- circuit_condition
          if controlBehavior.type == defines.control_behavior.type.generic_on_off       or
             controlBehavior.type == defines.control_behavior.type.inserter             or
             controlBehavior.type == defines.control_behavior.type.lamp                 or
             controlBehavior.type == defines.control_behavior.type.train_stop           or
             controlBehavior.type == defines.control_behavior.type.transport_belt       or
             controlBehavior.type == defines.control_behavior.type.rail_signal          or
             controlBehavior.type == defines.control_behavior.type.wall                 or
             controlBehavior.type == defines.control_behavior.type.mining_drill         or
             controlBehavior.type == defines.control_behavior.type.programmable_speaker
          then
            local oldCondition = controlBehavior.circuit_condition.condition
            controlBehavior.circuit_condition.condition = oldCondition and {
              comparator = oldCondition.comparator,
              first_signal = oldCondition.first_signal and {
                type = oldCondition.first_signal.type,
                name = oldCondition.first_signal.type == "item" and itemsToSwap[oldCondition.first_signal.name or "none"] or oldCondition.first_signal.name
              } or nil,
              second_signal = oldCondition.second_signal and {
                type = oldCondition.second_signal.type,
                name = oldCondition.second_signal.type == "item" and itemsToSwap[oldCondition.second_signal.name or "none"] or oldCondition.second_signal.name
              } or nil,
              constant = oldCondition.constant,
            } or nil
          end

          -- logistic condition
          if controlBehavior.type == defines.control_behavior.type.generic_on_off or
             controlBehavior.type == defines.control_behavior.type.inserter       or
             controlBehavior.type == defines.control_behavior.type.lamp           or
             controlBehavior.type == defines.control_behavior.type.train_stop     or
             controlBehavior.type == defines.control_behavior.type.transport_belt or
             controlBehavior.type == defines.control_behavior.type.mining_drill
          then
            local oldCondition = controlBehavior.logistic_condition.condition
            controlBehavior.logistic_condition.condition = oldCondition and {
              comparator = oldCondition.comparator,
              first_signal = oldCondition.first_signal and {
                type = oldCondition.first_signal.type,
                name = oldCondition.first_signal.type == "item" and itemsToSwap[oldCondition.first_signal.name or "none"] or oldCondition.first_signal.name
              } or nil,
              second_signal = oldCondition.second_signal and {
                type = oldCondition.second_signal.type,
                name = oldCondition.second_signal.type == "item" and itemsToSwap[oldCondition.second_signal.name or "none"] or oldCondition.second_signal.name
              } or nil,
              constant = oldCondition.constant,
            } or nil
          end

          -- stack control signal
          if controlBehavior.type == defines.control_behavior.type.inserter then
            local oldSignalID = controlBehavior.circuit_stack_control_signal
            controlBehavior.circuit_stack_control_signal = oldSignalID and {
              type = oldSignalID.type,
              name = oldSignalID.type == "item" and itemsToSwap[oldSignalID.name or "none"] or oldSignalID.name
            } or { type = "item" }
          end

          -- roboport stuffs
          if controlBehavior.type == defines.control_behavior.type.roboport then
            local oldSignalID = controlBehavior.available_logistic_output_signal
            controlBehavior.available_logistic_output_signal = oldSignalID and {
              type = oldSignalID.type,
              name = oldSignalID.type == "item" and itemsToSwap[oldSignalID.name or "none"] or oldSignalID.name
            } or { type = "item" }

            oldSignalID = controlBehavior.total_logistic_output_signal
            controlBehavior.total_logistic_output_signal = oldSignalID and {
              type = oldSignalID.type,
              name = oldSignalID.type == "item" and itemsToSwap[oldSignalID.name or "none"] or oldSignalID.name
            } or { type = "item" }

            oldSignalID = controlBehavior.available_construction_output_signal
            controlBehavior.available_construction_output_signal = oldSignalID and {
              type = oldSignalID.type,
              name = oldSignalID.type == "item" and itemsToSwap[oldSignalID.name or "none"] or oldSignalID.name
            } or { type = "item" }

            oldSignalID = controlBehavior.total_construction_output_signal
            controlBehavior.total_construction_output_signal = oldSignalID and {
              type = oldSignalID.type,
              name = oldSignalID.type == "item" and itemsToSwap[oldSignalID.name or "none"] or oldSignalID.name
            } or { type = "item" }
          end

          -- stopped train signal
          if controlBehavior.type == defines.control_behavior.type.train_stop then
            local oldSignalID = controlBehavior.stopped_train_signal
            controlBehavior.stopped_train_signal = oldSignalID and {
              type = oldSignalID.type,
              name = oldSignalID.type == "item" and itemsToSwap[oldSignalID.name or "none"] or oldSignalID.name
            } or nil
          end

          -- decider combinator parameters
          if controlBehavior.type == defines.control_behavior.type.decider_combinator then
            local oldParams = controlBehavior.parameters.parameters or controlBehavior.parameters -- the double parameters seems like a bug in the game, or in the api
            local newParams = oldParams and {
              first_signal = oldParams.first_signal and {
                type = oldParams.first_signal.type,
                name = oldParams.first_signal.type == "item" and itemsToSwap[oldParams.first_signal.name or "none"] or oldParams.first_signal.name
              } or nil,
              second_signal = oldParams.second_signal and {
                type = oldParams.second_signal.type,
                name = oldParams.second_signal.type == "item" and itemsToSwap[oldParams.second_signal.name or "none"] or oldParams.second_signal.name
              } or nil,
              constant = oldParams.constant,
              comparator = oldParams.comparator,
              output_signal = oldParams.output_signal and {
                type = oldParams.output_signal.type,
                name = oldParams.output_signal.type == "item" and itemsToSwap[oldParams.output_signal.name or "none"] or oldParams.output_signal.name
              } or nil,
              copy_count_from_input = oldParams.copy_count_from_input,
            } or nil
            controlBehavior.parameters = controlBehavior.parameters.parameters and { parameters = newParams } or newParams
          end

          -- arithmetic combinator parameters
          if controlBehavior.type == defines.control_behavior.type.arithmetic_combinator then
            local oldParams = controlBehavior.parameters.parameters or controlBehavior.parameters -- the double parameters seems like a bug in the game, or in the api
            local newParams = oldParams and {
              first_signal = oldParams.first_signal and {
                type = oldParams.first_signal.type,
                name = oldParams.first_signal.type == "item" and itemsToSwap[oldParams.first_signal.name or "none"] or oldParams.first_signal.name
              } or nil,
              second_signal = oldParams.second_signal and {
                type = oldParams.second_signal.type,
                name = oldParams.second_signal.type == "item" and itemsToSwap[oldParams.second_signal.name or "none"] or oldParams.second_signal.name
              } or nil,
              first_constant = oldParams.first_constant,
              second_constant = oldParams.second_constant,
              operator = oldParams.operator,
              output_signal = oldParams.output_signal and {
                type = oldParams.output_signal.type,
                name = oldParams.output_signal.type == "item" and itemsToSwap[oldParams.output_signal.name or "none"] or oldParams.output_signal.name
              } or { type = "item" }
            } or nil
            controlBehavior.parameters = controlBehavior.parameters.parameters and { parameters = newParams } or newParams
          end

          -- constant combinator parameters
          if controlBehavior.type == defines.control_behavior.type.constant_combinator then
            local oldParams = controlBehavior.parameters.parameters or controlBehavior.parameters -- the double parameters seems like a bug in the game, or in the api
            local newParams = {}
            for signalIndex, oldSignal in pairs(oldParams) do
              newParams[signalIndex] = {
                signal = oldSignal.signal and {
                  type = oldSignal.signal.type,
                  name = oldSignal.signal.type == "item" and itemsToSwap[oldSignal.signal.name or "none"] or oldSignal.signal.name
                } or { type = "item" },
                count = oldSignal.count,
                index = oldSignal.index,
              }
            end
            controlBehavior.parameters = controlBehavior.parameters.parameters and { parameters = newParams } or newParams
          end

          -- output signal
          if controlBehavior.type == defines.control_behavior.type.accumulator or
             controlBehavior.type == defines.control_behavior.type.wall
          then
            local oldSignalID = controlBehavior.output_signal
            controlBehavior.output_signal = oldSignalID and {
              type = oldSignalID.type,
              name = oldSignalID.type == "item" and itemsToSwap[oldSignalID.name or "none"] or oldSignalID.name
            } or { type = "item" }
          end

          -- rail signal colors
          if controlBehavior.type == defines.control_behavior.type.rail_signal or
             controlBehavior.type == defines.control_behavior.type.rail_chain_signal
          then
            local oldSignalID = controlBehavior.red_signal
            controlBehavior.red_signal = oldSignalID and {
              type = oldSignalID.type,
              name = oldSignalID.type == "item" and itemsToSwap[oldSignalID.name or "none"] or oldSignalID.name
            } or { type = "item" }

            oldSignalID = controlBehavior.orange_signal
            controlBehavior.orange_signal = oldSignalID and {
              type = oldSignalID.type,
              name = oldSignalID.type == "item" and itemsToSwap[oldSignalID.name or "none"] or oldSignalID.name
            } or { type = "item" }

            oldSignalID = controlBehavior.green_signal
            controlBehavior.green_signal = oldSignalID and {
              type = oldSignalID.type,
              name = oldSignalID.type == "item" and itemsToSwap[oldSignalID.name or "none"] or oldSignalID.name
            } or { type = "item" }
          end

          -- chain signal
          if controlBehavior.type == defines.control_behavior.type.rail_chain_signal then
            local oldSignalID = controlBehavior.blue_signal
            controlBehavior.blue_signal = oldSignalID and {
              type = oldSignalID.type,
              name = oldSignalID.type == "item" and itemsToSwap[oldSignalID.name or "none"] or oldSignalID.name
            } or { type = "item" }
          end
        end

      end
    end
  end

end