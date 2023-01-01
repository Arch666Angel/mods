-- This class keeps track of the starting items required by angels.

-- Create class ---------------------------------------------------------------
local starting_items = {}

-------------------------------------------------------------------------------
-- Initiation of the class
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Behavioural functions
-------------------------------------------------------------------------------
function starting_items:increment_freeplay_starting_item(item_name, incremental_amount)
  -- note that incremental_amount can be negative to reduce the amount.
  if remote.interfaces["freeplay"] then
    local items_to_insert = remote.call("freeplay", "get_created_items")
    local new_amount = (items_to_insert[item_name] or 0) + incremental_amount
    items_to_insert[item_name] = new_amount > 0 and new_amount or 0 -- cap it at 0
    remote.call("freeplay", "set_created_items", items_to_insert)
  end
end

function starting_items:configure_starting_items()
  -- configuration settings
  local technology_overhaul = game.active_mods["angelsindustries"] and settings.startup["angels-enable-tech"].value
    or false
  local components_overhaul = technology_overhaul
    or (game.active_mods["angelsindustries"] and settings.startup["angels-enable-components"].value)
    or false

  self:increment_freeplay_starting_item("burner-ore-crusher", 1)

  if game.active_mods["bobclasses"] then -- fix character classes starting point
    if components_overhaul then
      self:increment_freeplay_starting_item("iron-plate", 2)
    end
  end
end

-------------------------------------------------------------------------------
-- Event handlers
-------------------------------------------------------------------------------
function starting_items:on_init()
  self:configure_starting_items()
end

-- Return class ---------------------------------------------------------------
return starting_items
