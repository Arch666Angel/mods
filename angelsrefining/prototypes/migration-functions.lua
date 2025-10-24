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

local function find_and_replace(init_table, replacement_table)
  for name, value in pairs(init_table) do
    if type(value) == "table" then
      find_and_replace(init_table[name], replacement_table)
    else
      if replacement_table[value] then
        init_table[name] = replacement_table[value]
      end
    end
  end
end

local function replace_control_behavior(name, controlBehavior, signals_to_replace)
  local to_change = controlBehavior[name]

  if not to_change then
    return
  end

  find_and_replace(to_change, signals_to_replace)
  controlBehavior[name] = to_change
end

function angelsmods.migration.replace_signals(entities_to_check, signals_to_replace)
  -- signals_to_replace is a table where the keys are the old signals, and
  -- the values are the new signals.
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
        or controlBehavior.type == defines.control_behavior.type.loader
        or controlBehavior.type == defines.control_behavior.type.pump
        or controlBehavior.type == defines.control_behavior.type.turret

      then
        replace_control_behavior("circuit_condition", controlBehavior, signals_to_replace)
      end

      -- logistic condition
      if
        controlBehavior.type == defines.control_behavior.type.generic_on_off
        or controlBehavior.type == defines.control_behavior.type.inserter
        or controlBehavior.type == defines.control_behavior.type.lamp
        or controlBehavior.type == defines.control_behavior.type.train_stop
        or controlBehavior.type == defines.control_behavior.type.transport_belt
        or controlBehavior.type == defines.control_behavior.type.mining_drill
        or controlBehavior.type == defines.control_behavior.type.loader
        or controlBehavior.type == defines.control_behavior.type.pump
        or controlBehavior.type == defines.control_behavior.type.turret
      then
        replace_control_behavior("logistic_condition", controlBehavior, signals_to_replace)
      end

      -- stack control signal
      if controlBehavior.type == defines.control_behavior.type.inserter then
        replace_control_behavior("circuit_stack_control_signal", controlBehavior, signals_to_replace)
      end

      -- roboport stuffs
      if controlBehavior.type == defines.control_behavior.type.roboport then
        replace_control_behavior("available_logistic_output_signal", controlBehavior, signals_to_replace)
        replace_control_behavior("total_logistic_output_signal", controlBehavior, signals_to_replace)
        replace_control_behavior("available_construction_output_signal", controlBehavior, signals_to_replace)
        replace_control_behavior("total_construction_output_signal", controlBehavior, signals_to_replace)
        replace_control_behavior("roboport_count_output_signal", controlBehavior, signals_to_replace)
      end

      -- train stop signal
      if controlBehavior.type == defines.control_behavior.type.train_stop then
        replace_control_behavior("stopped_train_signal", controlBehavior, signals_to_replace)
        replace_control_behavior("trains_count_signal", controlBehavior, signals_to_replace)
        replace_control_behavior("trains_limit_signal", controlBehavior, signals_to_replace)
        replace_control_behavior("priority_signal", controlBehavior, signals_to_replace)
      end

      -- combinator parameters
      if
        controlBehavior.type == defines.control_behavior.type.decider_combinator
        or controlBehavior.type == defines.control_behavior.type.arithmetic_combinator
        or controlBehavior.type == defines.control_behavior.type.selector_combinator
      then
        replace_control_behavior("parameters", controlBehavior, signals_to_replace)
      end

      -- constant combinator parameters
      if controlBehavior.type == defines.control_behavior.type.constant_combinator then
        for idx, _ in ipairs(controlBehavior.sections) do
          local filters = controlBehavior.sections[idx].filters
          find_and_replace(filters, signals_to_replace)
          controlBehavior.sections[idx].filters = filters
        end
      end

      -- output signal
      if
        controlBehavior.type == defines.control_behavior.type.accumulator
        or controlBehavior.type == defines.control_behavior.type.wall
      then
        replace_control_behavior("output_signal", controlBehavior, signals_to_replace)
      end

      -- rail signal colors
      if
        controlBehavior.type == defines.control_behavior.type.rail_signal
        or controlBehavior.type == defines.control_behavior.type.rail_chain_signal
      then
        replace_control_behavior("red_signal", controlBehavior, signals_to_replace)
        replace_control_behavior("green_signal", controlBehavior, signals_to_replace)
        replace_control_behavior("orange_signal", controlBehavior, signals_to_replace)
      end

      -- chain signal
      if controlBehavior.type == defines.control_behavior.type.rail_chain_signal then
        replace_control_behavior("blue_signal", controlBehavior, signals_to_replace)
      end

      -- reactor
      if controlBehavior.type == defines.control_behavior.type.reactor then
        replace_control_behavior("temperature_signal", controlBehavior, signals_to_replace)
      end

      -- splitter
      if controlBehavior.type == defines.control_behavior.type.splitter then
        replace_control_behavior("input_left_condition", controlBehavior, signals_to_replace)
        replace_control_behavior("input_right_condition", controlBehavior, signals_to_replace)
        replace_control_behavior("output_left_condition", controlBehavior, signals_to_replace)
        replace_control_behavior("output_right_condition", controlBehavior, signals_to_replace)
      end

      -- turret
      if controlBehavior.type == defines.control_behavior.type.turret then
        replace_control_behavior("ignore_unlisted_targets_condition", controlBehavior, signals_to_replace)
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
