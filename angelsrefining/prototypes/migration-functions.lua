local angelsmods = angelsmods or {}
angelsmods.migration = {}

function angelsmods.migration.replace_recipes(entities_to_check, recipe_replacements)
  -- recipe_replacements is a table of recipe_replacement
  -- recipe_replacement is a table with 2 entries, first entry is old recipe name
  -- and second entry is the new recipe name (or nil)
  for _, entity in pairs(entities_to_check or {}) do
    local recipe = entity.get_recipe()
    if recipe then
      for _, recipe_replacement in pairs(recipe_replacements or {}) do
        if recipe.name == recipe_replacement[1] then
          entity.set_recipe(recipe_replacement[2])
          break
        end
      end
    end
  end
end

function angelsmods.migration.replace_signals(entities_to_check, signals_to_replace, signal_type)
  -- signals_to_replace is a table where the keys are the old signals, and
  -- the values are the new signals. signal_type is optional, defaults to item
  signal_type = signal_type or "item"
  signals_to_replace = signals_to_replace or {}

  for _, entity in pairs(entities_to_check or {}) do
    local controlBehavior = entity.get_or_create_control_behavior()
    if controlBehavior and controlBehavior.valid then
      -- circuit_condition
      if
        controlBehavior.type == defines.control_behavior.type.generic_on_off
        or controlBehavior.type == defines.control_behavior.type.inserter
        or controlBehavior.type == defines.control_behavior.type.lamp
        or controlBehavior.type == defines.control_behavior.type.train_stop
        or controlBehavior.type == defines.control_behavior.type.transport_belt
        or controlBehavior.type == defines.control_behavior.type.rail_signal
        or controlBehavior.type == defines.control_behavior.type.wall
        or controlBehavior.type == defines.control_behavior.type.mining_drill
        or controlBehavior.type == defines.control_behavior.type.programmable_speaker
      then
        local oldCondition = controlBehavior.circuit_condition.condition
        controlBehavior.circuit_condition = oldCondition
            and {
              condition = {
                comparator = oldCondition.comparator,
                first_signal = oldCondition.first_signal and {
                  type = oldCondition.first_signal.type,
                  name = oldCondition.first_signal.type == signal_type
                      and signals_to_replace[oldCondition.first_signal.name or "none"]
                    or oldCondition.first_signal.name,
                } or nil,
                second_signal = oldCondition.second_signal and {
                  type = oldCondition.second_signal.type,
                  name = oldCondition.second_signal.type == signal_type
                      and signals_to_replace[oldCondition.second_signal.name or "none"]
                    or oldCondition.second_signal.name,
                } or nil,
                constant = oldCondition.constant,
              },
            }
          or nil
      end

      -- logistic condition
      if
        controlBehavior.type == defines.control_behavior.type.generic_on_off
        or controlBehavior.type == defines.control_behavior.type.inserter
        or controlBehavior.type == defines.control_behavior.type.lamp
        or controlBehavior.type == defines.control_behavior.type.train_stop
        or controlBehavior.type == defines.control_behavior.type.transport_belt
        or controlBehavior.type == defines.control_behavior.type.mining_drill
      then
        local oldCondition = controlBehavior.logistic_condition.condition
        controlBehavior.logistic_condition = oldCondition
            and {
              condition = {
                comparator = oldCondition.comparator,
                first_signal = oldCondition.first_signal and {
                  type = oldCondition.first_signal.type,
                  name = oldCondition.first_signal.type == signal_type
                      and signals_to_replace[oldCondition.first_signal.name or "none"]
                    or oldCondition.first_signal.name,
                } or nil,
                second_signal = oldCondition.second_signal and {
                  type = oldCondition.second_signal.type,
                  name = oldCondition.second_signal.type == signal_type
                      and signals_to_replace[oldCondition.second_signal.name or "none"]
                    or oldCondition.second_signal.name,
                } or nil,
                constant = oldCondition.constant,
              },
            }
          or nil
      end

      -- stack control signal
      if controlBehavior.type == defines.control_behavior.type.inserter then
        local oldSignalID = controlBehavior.circuit_stack_control_signal
        controlBehavior.circuit_stack_control_signal = oldSignalID
            and {
              type = oldSignalID.type,
              name = oldSignalID.type == signal_type and signals_to_replace[oldSignalID.name or "none"]
                or oldSignalID.name,
            }
          or { type = signal_type }
      end

      -- roboport stuffs
      if controlBehavior.type == defines.control_behavior.type.roboport then
        local oldSignalID = controlBehavior.available_logistic_output_signal
        controlBehavior.available_logistic_output_signal = oldSignalID
            and {
              type = oldSignalID.type,
              name = oldSignalID.type == signal_type and signals_to_replace[oldSignalID.name or "none"]
                or oldSignalID.name,
            }
          or { type = signal_type }

        oldSignalID = controlBehavior.total_logistic_output_signal
        controlBehavior.total_logistic_output_signal = oldSignalID
            and {
              type = oldSignalID.type,
              name = oldSignalID.type == signal_type and signals_to_replace[oldSignalID.name or "none"]
                or oldSignalID.name,
            }
          or { type = signal_type }

        oldSignalID = controlBehavior.available_construction_output_signal
        controlBehavior.available_construction_output_signal = oldSignalID
            and {
              type = oldSignalID.type,
              name = oldSignalID.type == signal_type and signals_to_replace[oldSignalID.name or "none"]
                or oldSignalID.name,
            }
          or { type = signal_type }

        oldSignalID = controlBehavior.total_construction_output_signal
        controlBehavior.total_construction_output_signal = oldSignalID
            and {
              type = oldSignalID.type,
              name = oldSignalID.type == signal_type and signals_to_replace[oldSignalID.name or "none"]
                or oldSignalID.name,
            }
          or { type = signal_type }
      end

      -- stopped train signal
      if controlBehavior.type == defines.control_behavior.type.train_stop then
        local oldSignalID = controlBehavior.stopped_train_signal
        controlBehavior.stopped_train_signal = oldSignalID
            and {
              type = oldSignalID.type,
              name = oldSignalID.type == signal_type and signals_to_replace[oldSignalID.name or "none"]
                or oldSignalID.name,
            }
          or { type = signal_type }
      end

      -- decider combinator parameters
      if controlBehavior.type == defines.control_behavior.type.decider_combinator then
        local oldParams = controlBehavior.parameters.parameters or controlBehavior.parameters -- the double parameters seems like a bug in the game, or in the api
        local newParams = oldParams
            and {
              first_signal = oldParams.first_signal and {
                type = oldParams.first_signal.type,
                name = oldParams.first_signal.type == signal_type
                    and signals_to_replace[oldParams.first_signal.name or "none"]
                  or oldParams.first_signal.name,
              } or nil,
              second_signal = oldParams.second_signal and {
                type = oldParams.second_signal.type,
                name = oldParams.second_signal.type == signal_type
                    and signals_to_replace[oldParams.second_signal.name or "none"]
                  or oldParams.second_signal.name,
              } or nil,
              constant = oldParams.constant,
              comparator = oldParams.comparator,
              output_signal = oldParams.output_signal and {
                type = oldParams.output_signal.type,
                name = oldParams.output_signal.type == signal_type
                    and signals_to_replace[oldParams.output_signal.name or "none"]
                  or oldParams.output_signal.name,
              } or nil,
              copy_count_from_input = oldParams.copy_count_from_input,
            }
          or nil
        controlBehavior.parameters = controlBehavior.parameters.parameters and { parameters = newParams } or newParams
      end

      -- arithmetic combinator parameters
      if controlBehavior.type == defines.control_behavior.type.arithmetic_combinator then
        local oldParams = controlBehavior.parameters.parameters or controlBehavior.parameters -- the double parameters seems like a bug in the game, or in the api
        local newParams = oldParams
            and {
              first_signal = oldParams.first_signal and {
                type = oldParams.first_signal.type,
                name = oldParams.first_signal.type == signal_type
                    and signals_to_replace[oldParams.first_signal.name or "none"]
                  or oldParams.first_signal.name,
              } or nil,
              second_signal = oldParams.second_signal and {
                type = oldParams.second_signal.type,
                name = oldParams.second_signal.type == signal_type
                    and signals_to_replace[oldParams.second_signal.name or "none"]
                  or oldParams.second_signal.name,
              } or nil,
              first_constant = oldParams.first_constant,
              second_constant = oldParams.second_constant,
              operation = oldParams.operation,
              output_signal = oldParams.output_signal and {
                type = oldParams.output_signal.type,
                name = oldParams.output_signal.type == signal_type
                    and signals_to_replace[oldParams.output_signal.name or "none"]
                  or oldParams.output_signal.name,
              } or { type = signal_type },
            }
          or nil
        controlBehavior.parameters = controlBehavior.parameters.parameters and { parameters = newParams } or newParams
      end

      -- constant combinator parameters
      if controlBehavior.type == defines.control_behavior.type.constant_combinator then
        local oldParams = (controlBehavior.parameters or {}).parameters or controlBehavior.parameters -- the double parameters seems like a bug in the game, or in the api
        local newParams = {}
        for signalIndex, oldSignal in pairs(oldParams or {}) do
          newParams[signalIndex] = {
            signal = oldSignal.signal
                and {
                  type = oldSignal.signal.type,
                  name = oldSignal.signal.type == signal_type and signals_to_replace[oldSignal.signal.name or "none"]
                    or oldSignal.signal.name,
                }
              or { type = signal_type },
            count = oldSignal.count,
            index = oldSignal.index,
          }
        end
        controlBehavior.parameters = controlBehavior.parameters
            and controlBehavior.parameters.parameters
            and { parameters = newParams }
          or newParams
      end

      -- output signal
      if
        controlBehavior.type == defines.control_behavior.type.accumulator
        or controlBehavior.type == defines.control_behavior.type.wall
      then
        local oldSignalID = controlBehavior.output_signal
        controlBehavior.output_signal = oldSignalID
            and {
              type = oldSignalID.type,
              name = oldSignalID.type == signal_type and signals_to_replace[oldSignalID.name or "none"]
                or oldSignalID.name,
            }
          or { type = signal_type }
      end

      -- rail signal colors
      if
        controlBehavior.type == defines.control_behavior.type.rail_signal
        or controlBehavior.type == defines.control_behavior.type.rail_chain_signal
      then
        local oldSignalID = controlBehavior.red_signal
        controlBehavior.red_signal = oldSignalID
            and {
              type = oldSignalID.type,
              name = oldSignalID.type == signal_type and signals_to_replace[oldSignalID.name or "none"]
                or oldSignalID.name,
            }
          or { type = signal_type }

        oldSignalID = controlBehavior.orange_signal
        controlBehavior.orange_signal = oldSignalID
            and {
              type = oldSignalID.type,
              name = oldSignalID.type == signal_type and signals_to_replace[oldSignalID.name or "none"]
                or oldSignalID.name,
            }
          or { type = signal_type }

        oldSignalID = controlBehavior.green_signal
        controlBehavior.green_signal = oldSignalID
            and {
              type = oldSignalID.type,
              name = oldSignalID.type == signal_type and signals_to_replace[oldSignalID.name or "none"]
                or oldSignalID.name,
            }
          or { type = signal_type }
      end

      -- chain signal
      if controlBehavior.type == defines.control_behavior.type.rail_chain_signal then
        local oldSignalID = controlBehavior.blue_signal
        controlBehavior.blue_signal = oldSignalID
            and {
              type = oldSignalID.type,
              name = oldSignalID.type == signal_type and signals_to_replace[oldSignalID.name or "none"]
                or oldSignalID.name,
            }
          or { type = signal_type }
      end
    end
  end
end

function angelsmods.migration.replace_inventory_content(entities_to_check, items_to_replace)
  -- items_to_replace is a table where the keys are the old item, and
  -- the values are the new item.
  items_to_replace = items_to_replace or {}

  local maxInventoryType = 0
  for _, inventoryType in pairs(defines.inventory) do
    if inventoryType > maxInventoryType then
      maxInventoryType = inventoryType
    end
  end

  for _, entity in pairs(entities_to_check) do
    for _, inventoryType in pairs(defines.inventory) do
      local inventory = entity.get_inventory(inventoryType)
      if inventory and inventory.valid then
        for oldItemName, newItemName in pairs(items_to_replace) do
          local itemCount = prototypes.item[oldItemName]
              and prototypes.item[newItemName]
              and inventory.get_item_count(oldItemName)
            or 0
          if itemCount > 0 then
            inventory.insert({
              name = newItemName,
              count = inventory.remove({
                name = oldItemName,
                count = itemCount,
              }),
            })
          end
        end
      end
    end
  end
end

function angelsmods.migration.replace_inserter_content(entities_to_check, items_to_replace)
  -- items_to_replace is a table where the keys are the old item, and
  -- the values are the new item.
  items_to_replace = items_to_replace or {}
  for _, entity in pairs(entities_to_check) do
    if entity.type == "inserter" then
      local inserterStack = entity.held_stack
      if inserterStack and inserterStack.valid and inserterStack.valid_for_read then
        if
          inserterStack.count > 0
          and items_to_replace[inserterStack.name or "none"]
          and prototypes.item[items_to_replace[inserterStack.name]]
        then
          inserterStack.set_stack({
            name = items_to_replace[inserterStack.name],
            count = inserterStack.count,
          })
        end
      end
    end
  end
end

function angelsmods.migration.replace_belt_content(entities_to_check, items_to_replace)
  -- items_to_replace is a table where the keys are the old item, and
  -- the values are the new item.
  items_to_replace = items_to_replace or {}

  for _, entity in pairs(entities_to_check) do
    if entity.type == "transport-belt" or entity.type == "underground-belt" or entity.type == "splitter" then
      local maxLines = entity.get_max_transport_line_index()
      for lineIndex = 1, maxLines do
        local transportLine = entity.get_transport_line(lineIndex)
        if transportLine and transportLine.valid then
          for oldItem, newItem in pairs(items_to_replace) do
            local itemCount = prototypes.item[oldItem]
                and prototypes.item[newItem]
                and transportLine.get_item_count(oldItem)
              or 0
            if itemCount > 0 then
              transportLine.remove_item({ name = oldItem, count = itemCount })
              local position = 0
              while itemCount > 0 and position <= 1 do
                if transportLine.can_insert_at(position) then
                  itemCount = itemCount - (transportLine.insert_at(position, { name = newItem, count = 1 }) and 1 or 0)
                end
                position = position + 0.001
              end
            end
          end
        end
      end
    end
  end
end

function angelsmods.migration.replace_entity(entities_to_check, items_to_replace)
  -- items_to_replace is a table where the keys are the old item, and
  -- the values are the new item.
  items_to_replace = items_to_replace or {}

  for _, entity in pairs(entities_to_check) do
    for oldItem, newItem in pairs(items_to_replace) do
      local oldItemPrototype = prototypes.item[oldItem]
      local oldEntityPrototype = oldItemPrototype and oldItemPrototype.place_result or nil
      local newItemPrototype = prototypes.item[newItem]
      local newEntityPrototype = newItemPrototype and newItemPrototype.place_result or nil
      if
        oldEntityPrototype
        and newEntityPrototype
        and (entity.name == oldEntityPrototype.name)
        and (oldEntityPrototype.fast_replaceable_group == newEntityPrototype.fast_replaceable_group)
      then
        entity.surface.create_entity({
          name = newEntityPrototype.name,
          position = entity.position,
          force = entity.force,
          fast_replace = true,
          spill = false,
        })
        break
      end
    end
  end
end

function angelsmods.migration.replace_currently_burning(entities_to_check, items_to_replace)
  -- items_to_replace is a table where the keys are the old item, and
  -- the values are the new item.
  items_to_replace = items_to_replace or {}

  for _, entity in pairs(entities_to_check) do
    if entity.burner and entity.burner.currently_burning then
      local burner = entity.burner
      for oldItemName, newItemName in pairs(items_to_replace) do
        if burner.currently_burning.name.name == oldItemName then
          burner.currently_burning = newItemName
        end
      end
    end
  end
end

function angelsmods.migration.replace_item(entities_to_check, items_to_replace)
  -- items_to_replace is a table where the keys are the old item, and
  -- the values are the new item.
  angelsmods.migration.replace_inventory_content(entities_to_check, items_to_replace)
  angelsmods.migration.replace_belt_content(entities_to_check, items_to_replace)
  angelsmods.migration.replace_inserter_content(entities_to_check, items_to_replace)
  angelsmods.migration.replace_signals(entities_to_check, items_to_replace)
  angelsmods.migration.replace_entity(entities_to_check, items_to_replace)
  angelsmods.migration.replace_currently_burning(entities_to_check, items_to_replace)
end

function angelsmods.migration.replace_quick_bar_slot(items_to_replace)
  -- items_to_replace is a table of item_to_replace
  -- item_to_replace is a table with 2 entries, first entry is old item name
  -- and second entry is the new item name (or nil)

  items_to_replace = items_to_replace or {}

  for _, player in pairs(game.players) do
    for i = 1, 100 do
      for _, item_to_replace in pairs(items_to_replace) do
        local slot = player.get_quick_bar_slot(i)
        if slot and (slot.name == item_to_replace[1]) then
          player.set_quick_bar_slot(i, item_to_replace[2])
        end
      end
    end
  end
end

function angelsmods.migration.clear_logistics_slot(items_to_clear)
  -- items_to_clear is a table of item names

  items_to_clear = items_to_clear or {}

  for _, player in pairs(game.players) do
    if player.character ~= nil then
      -- find used slots
      local slots = {}
      for i = 1, player.character.request_slot_count do
        local slot = player.get_personal_logistic_slot(i)
        if slot and slot.name then
          slots[slot.name] = slots[slot.name] or {}
          table.insert(slots[slot.name], i)
        end
      end

      -- clear old slots
      for _, item_name in pairs(items_to_clear) do
        local oldSlots = slots[item_name]
        if oldSlots then
          for name, i in pairs(oldSlots) do
            player.clear_personal_logistic_slot(i)
          end
        end
      end
    end
  end
end

return angelsmods
