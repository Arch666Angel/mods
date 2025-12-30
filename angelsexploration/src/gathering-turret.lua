require("util")

-- Create class ---------------------------------------------------------------
local gathering_turret = {}

-------------------------------------------------------------------------------
-- Initiation of the class
-------------------------------------------------------------------------------
function gathering_turret:on_init()
  if not storage.GT_data then
    storage.GT_data = self:init_storage_data()
  end
end

function gathering_turret:init_storage_data()
  local GT_data = {
    ["version"] = 1, -- version of the storage data

    ["prototype_data"] = self:init_prototype_data(), -- data storing info about the prototypes
    ["force_data"] = {}, -- data storing info about the modifiers (tech unlocks)
    -- is called self:init_force_data(force_name) for each force that is required

    -- states in the turret cycling process
    ["turret_states"] = {
      ["initial_state"] = 1, -- what state the turret is in when it is placed down
      ["inactive"] = 1, -- waiting till turret has a potential target (inactive turret)
      ["searching"] = 2, -- waiting till turret has found a target (active turret)
      ["gathering"] = 3, -- retrieving the loot from the battlefield (active turret)
      ["collecting"] = 4, -- putting the loot into the loot chest (active turret)
    },

    ["turrets"] = {}, -- keep track of all gathering turrets (GT)
    ["active_turret_count"] = 0, -- the amount of active turrets at this point
    ["next_active_turret"] = nil, -- keep track of the next active turret that requires an update.
  }
  return GT_data
end

function gathering_turret:init_prototype_data()
  return {
    ["gathering_turret_name"] = "angels-gathering-turret", -- the actual turret
    ["gathering_turret_range"] = 60, -- the max range of the turret (defined in prototype)
    ["gathering_turret_base_speed"] = 2, -- the gathering of the turret (defined in prototype)
    ["gathering_turret_chest"] = "angels-gathering-turret-base", -- the chest storing the loot
    -- a complete list of possible items to loot and the technology name to unlock it
    ["gathering_items"] = { -- technology "angels-void" unlocks the technology from the start
      ["angels-small-alien-artifact"] = "angels-gathering-turret",
      ["angels-small-alien-artifact-green"] = "angels-gathering-turret-target_small-alien-artifact-green_",
      ["angels-small-alien-artifact-purple"] = "angels-gathering-turret-target_small-alien-artifact-purple_",
      ["angels-small-alien-artifact-blue"] = "angels-gathering-turret-target_small-alien-artifact-blue_",
      ["angels-small-alien-artifact-orange"] = "angels-gathering-turret-target_small-alien-artifact-orange_",
      ["angels-small-alien-artifact-yellow"] = "angels-gathering-turret-target_small-alien-artifact-yellow_",
      ["angels-small-alien-artifact-red"] = "angels-gathering-turret-target_small-alien-artifact-red_",
      ["angels-small-alien-artifact"] = "angels-gathering-turret",
      ["angels-small-alien-artifact-green"] = "angels-gathering-turret-target_small-alien-artifact-green_",
      ["angels-small-alien-artifact-purple"] = "angels-gathering-turret-target_small-alien-artifact-purple_",
      ["angels-small-alien-artifact-blue"] = "angels-gathering-turret-target_small-alien-artifact-blue_",
      ["angels-small-alien-artifact-orange"] = "angels-gathering-turret-target_small-alien-artifact-orange_",
      ["angels-small-alien-artifact-yellow"] = "angels-gathering-turret-target_small-alien-artifact-yellow_",
      ["angels-small-alien-artifact-red"] = "angels-gathering-turret-target_small-alien-artifact-red_",
    },
  }
end

function gathering_turret:init_force_data(force_name)
  local function create_whitelist_for_force()
    local force_whitelist = {}
    local force_technologies = (game.forces[force_name] or { technologies = {} }).technologies
    local gathering_items = self:get_whitelisted_gathering_items()
    for gathering_item, req_tech_name in pairs(gathering_items) do
      force_whitelist[gathering_item] = (req_tech_name == "angels-void")
        or (force_technologies[req_tech_name] and force_technologies[req_tech_name].researched)
        or false
    end
    return force_whitelist
  end

  if storage.GT_data and storage.GT_data.force_data then
    storage.GT_data.force_data[force_name] = {
      ["turret_range"] = self:get_gathering_radius(), -- the actual gathering range of the turret
      ["turret_speed"] = self:get_gathering_speed(), -- the actual gathering speed (tiles/s) of this turret
      ["turret_whitelist"] = create_whitelist_for_force(), -- the list of items whitelisted to be collected
    }
  end
end

-------------------------------------------------------------------------------
-- Setter functions to alter data into the data structure
-------------------------------------------------------------------------------
function gathering_turret:save_new_turret(turret_entity)
  -- STEP 1: We can already store the wanted data in the structure
  -- STEP 1a:Make sure we can index it, meaning, check if the table already
  --         excists for the surface, if not, we make one. Afther that we also
  --         have to check if the surface table has a table we can index for
  --         the y-position, if not, we make one.
  local turret_surface = turret_entity.surface
  local turret_position = turret_entity.position
  if not storage.GT_data["turrets"][turret_surface.index] then
    storage.GT_data["turrets"][turret_surface.index] = {}
  end
  if not storage.GT_data["turrets"][turret_surface.index][turret_position.y] then
    storage.GT_data["turrets"][turret_surface.index][turret_position.y] = {}
  end

  -- STEP 1b:Now we know we can index (without crashing) to the position as:
  --         dataStructure[surfaceIndex][positionY][positionX]
  --         Now we can store our wanted data at this position
  storage.GT_data["turrets"][turret_surface.index][turret_position.y][turret_position.x] = {
    ["entity"] = turret_entity, -- the turret entity
    ["entity-hidden"] = {}, -- the additional entities

    ["status"] = storage.GT_data["turret_states"]["initial_state"], -- status of this turret

    ["cached_targets"] = {}, -- cached targets to shoot
    ["target_data"] = { -- the active target of the turret
      item_name = nil, -- name of the item being gathered
      position = nil, -- position of the item being gathered
      gathering_distance_remaining = nil, -- when the gathering procedure will be finished (in tick)
    },

    ["prev_active_turret"] = nil, -- the previous active turret (only if this turret is active, nil otherwise)
    ["next_active_turret"] = nil, -- the next active turret (only if this turret is active, nil otherwise)
  }

  -- STEP 2: Configure the turret
  -- STEP 2a: Make the turret inactive (so it does not attack anything)
  turret_entity.active = false

  -- STEP 2b: Create the hidden entities
  local hidden_entities =
    storage.GT_data["turrets"][turret_surface.index][turret_position.y][turret_position.x]["entity-hidden"]
  for hidden_entity_index, hidden_entity_data in pairs(self:get_hidden_entity_data(turret_position)) do
    hidden_entities[hidden_entity_index] = turret_surface.create_entity({
      name = hidden_entity_data.name,
      position = hidden_entity_data.position,
      direction = hidden_entity_data.direction,
      force = turret_entity.force,
    })
  end

  -- STEP 3: Activate the turret
  self:activate_turret(turret_surface.index, turret_position)
end

function gathering_turret:remove_saved_turret(turret_entity)
  -- STEP 1: Make sure it is still in the data structure
  local turret_surface_index = turret_entity.surface.index
  local turret_position = turret_entity.position

  if not storage.GT_data["turrets"][turret_surface_index] then
    return
  end
  if not storage.GT_data["turrets"][turret_surface_index][turret_position.y] then
    return
  end

  local turret_data = storage.GT_data["turrets"][turret_surface_index][turret_position.y][turret_position.x]
  if not turret_data then
    return
  end

  -- STEP 2: Make sure the turret is inactive
  if turret_data["status"] ~= storage.GT_data["turret_states"]["inactive"] then
    self:deactivate_turret(turret_surface_index, turret_position)
  end

  -- STEP 3: Remove the hidden entities
  local hidden_entities = turret_data["entity-hidden"]
  for _, hidden_entity in pairs(hidden_entities) do
    hidden_entity.destroy()
  end

  -- STEP 4: Remove the entity from the data structure
  storage.GT_data["turrets"][turret_surface_index][turret_position.y][turret_position.x] = nil

  if not next(storage.GT_data["turrets"][turret_surface_index][turret_position.y]) then
    storage.GT_data["turrets"][turret_surface_index][turret_position.y] = nil

    if not next(storage.GT_data["turrets"][turret_surface_index]) then
      storage.GT_data["turrets"][turret_surface_index] = nil
    end
  end
end

function gathering_turret:activate_turret(turret_surface_index, turret_position)
  -- Activating a turret will put it into the active turret list.

  -- STEP 1: Make sure it is safe to index the data structure
  if not storage.GT_data["turrets"][turret_surface_index] then
    return
  end
  if not storage.GT_data["turrets"][turret_surface_index][turret_position.y] then
    return
  end

  local turret_data = storage.GT_data["turrets"][turret_surface_index][turret_position.y][turret_position.x]
  if not turret_data then
    return
  end

  -- STEP 2: Set the status to searching (for loot), if no loot is found, the turret
  --         will become inactive on its own again
  -- STEP 2a: Make sure we do not make an active turret active again...
  if turret_data["status"] ~= storage.GT_data["turret_states"]["inactive"] then
    return
  end

  -- STEP 2b: Set the status
  turret_data["status"] = storage.GT_data["turret_states"]["searching"]

  -- STEP 3: Add the turret to the active turret list. The best place to insert
  --         the turret is after the turret that is being updated at this point.
  -- STEP 3a: Check if there is an active turret already
  if storage.GT_data["active_turret_count"] > 0 then
    -- STEP 3a OPTION 1: there is already an active turret
    -- STEP 3a OPTION 1a: configure the prev_active_turret of this turret
    turret_data["prev_active_turret"] = util.table.deepcopy(storage.GT_data["next_active_turret"])
    -- STEP 3a OPTION 1b: configure the next_active_turret of this turret
    local active_turret_data =
      storage.GT_data["turrets"][turret_data["prev_active_turret"].surface_index][turret_data["prev_active_turret"].position.y][turret_data["prev_active_turret"].position.x]
    turret_data["next_active_turret"] = util.table.deepcopy(active_turret_data["next_active_turret"])
    -- STEP 3a OPTION 1c: configure the this turret as the next_active_turret of current active turret
    active_turret_data["next_active_turret"] = {
      position = turret_position,
      surface_index = turret_surface_index,
    }
    -- STEP 3a OPTION 1d: configure the this turret as the prev_active_turret of next active turret
    storage.GT_data["turrets"][turret_data["next_active_turret"].surface_index][turret_data["next_active_turret"].position.y][turret_data["next_active_turret"].position.x]["prev_active_turret"] =
      {
        position = turret_position,
        surface_index = turret_surface_index,
      }
  else
    -- STEP 3a OPTION 2: this is the first active turret
    -- STEP 3a OPTION 2a: set the next_active_turret to this turret
    storage.GT_data["next_active_turret"] = {
      position = turret_position,
      surface_index = turret_surface_index,
    }
    -- STEP 3a OPTION 2b: configure the next_active_turret of this turret
    turret_data["next_active_turret"] = {
      position = turret_position,
      surface_index = turret_surface_index,
    }
    -- STEP 3a OPTION 2c: configure the prev_active_turret of this turret
    turret_data["prev_active_turret"] = {
      position = turret_position,
      surface_index = turret_surface_index,
    }
  end
  -- STEP 3b: Update the active turret count
  storage.GT_data["active_turret_count"] = storage.GT_data["active_turret_count"] + 1
end

function gathering_turret:deactivate_turret(turret_surface_index, turret_position)
  -- Deactivating a turret will put it into the active turret list.

  -- STEP 1: Make sure it is safe to index the data structure
  if not storage.GT_data["turrets"][turret_surface_index] then
    return
  end
  if not storage.GT_data["turrets"][turret_surface_index][turret_position.y] then
    return
  end

  local turret_data = storage.GT_data["turrets"][turret_surface_index][turret_position.y][turret_position.x]
  if not turret_data then
    return
  end

  -- STEP 2: Set the status to inactive
  -- STEP 2a: Make sure we do not make an inactive turret inactive again...
  if turret_data["status"] == storage.GT_data["turret_states"]["inactive"] then
    return
  end

  -- STEP 2b: Set the status
  turret_data["status"] = storage.GT_data["turret_states"]["inactive"]

  -- STEP 3: Remove the turret to the active turret list.
  -- STEP 3a: Check if there is are multiple active turret left
  if storage.GT_data["active_turret_count"] > 1 then
    -- STEP 3a OPTION 1: this is not the last active turret
    -- STEP 3a OPTION 1a: set the prev his next turret
    storage.GT_data["turrets"][turret_data["prev_active_turret"].surface_index][turret_data["prev_active_turret"].position.y][turret_data["prev_active_turret"].position.x]["next_active_turret"] =
      util.table.deepcopy(turret_data["next_active_turret"])
    -- STEP 3a OPTION 1b: set the next his prev turret
    storage.GT_data["turrets"][turret_data["next_active_turret"].surface_index][turret_data["next_active_turret"].position.y][turret_data["next_active_turret"].position.x]["prev_active_turret"] =
      util.table.deepcopy(turret_data["prev_active_turret"])
    -- STEP 3a OPTION 1c: update the next_active turret if this is the currently active turret
    local active_turret_data = storage.GT_data["next_active_turret"]
    if
      turret_surface_index == active_turret_data.surface_index
      and turret_position.x == active_turret_data.position.x
      and turret_position.y == active_turret_data.position.y
    then
      storage.GT_data["next_active_turret"] = util.table.deepcopy(turret_data["next_active_turret"])
    end
  else
    -- STEP 3a OPTION 2: this is the last active turret
    storage.GT_data["next_active_turret"] = nil
  end
  -- STEP 3b: update the deactivated turret active data
  turret_data["prev_active_turret"] = nil
  turret_data["next_active_turret"] = nil
  -- STEP 3c: Update the active turret count
  storage.GT_data["active_turret_count"] = storage.GT_data["active_turret_count"] - 1
end

function gathering_turret:update_next_turret()
  -- This function updates a single turret. It is up to the caller to make sure
  -- this function is called sufficient times to have smooth behaviour of the GT.

  -- STEP 1: make sure there is a turret to be updated
  local update_turret_ref = storage.GT_data["next_active_turret"]
  if not update_turret_ref then
    return
  end

  local turret_surface_index = update_turret_ref.surface_index
  local turret_position = update_turret_ref.position

  -- STEP 2: make sure this turret is still valid
  if not storage.GT_data["turrets"][turret_surface_index] then
    return
  end
  if not storage.GT_data["turrets"][turret_surface_index][turret_position.y] then
    return
  end

  local turret_data = storage.GT_data["turrets"][turret_surface_index][turret_position.y][turret_position.x]
  if not turret_data then
    return
  end

  -- STEP 3: update the turret
  if turret_data["status"] == storage.GT_data["turret_states"]["searching"] then
    self:update_searching_turret(turret_data)
  end

  if turret_data["status"] == storage.GT_data["turret_states"]["gathering"] then
    self:update_gathering_turret(turret_data)
  end

  if turret_data["status"] == storage.GT_data["turret_states"]["collecting"] then
    self:update_collecting_turret(turret_data)
  end

  -- STEP 4: if this turret is not inactive, we have to set the next_active_turret...
  --         if it was inactivated, the next_active_turret is already moved.
  if turret_data["status"] ~= storage.GT_data["turret_states"]["inactive"] then
    storage.GT_data["next_active_turret"] = util.table.deepcopy(turret_data["next_active_turret"])
  end
end

function gathering_turret:update_searching_turret(turret_data)
  -- The turret is searching for something to gather, see if it can gather something
  local turret_entity = turret_data["entity"]
  local turret_force_name = turret_entity.force.name
  local turret_target = self:get_next_target(turret_data)

  if not turret_target then
    self:deactivate_turret(turret_entity.surface.index, turret_entity.position)
    return
  end

  -- start gathering the item
  turret_data["target_data"] = { -- the active target of the turret
    item_name = turret_target.stack.name,
    position = turret_target.position,
    gathering_distance_remaining = self:calculate_distance(turret_target.position, turret_entity.position),
  }
  local target_info = {
    name = "angels-gathering-turret-target_" .. turret_data["target_data"].item_name .. "_",
    position = turret_target.position,
    force = "enemy",
    create_build_effect_smoke = false,
    raise_built = true, -- mod compatibility reasons...
  }
  turret_target.destroy({ raise_destroy = true }) -- mod compatibility reasons...

  turret_data["target_data"]["target_entity"] = turret_entity.surface.create_entity(target_info)
  if turret_data["target_data"]["target_entity"] then
    turret_entity.active = true
    turret_entity.shooting_target = turret_data["target_data"]["target_entity"]
    turret_data["status"] = storage.GT_data["turret_states"]["gathering"]
  end
end

function gathering_turret:update_gathering_turret(turret_data)
  local turret_entity = turret_data["entity"]

  -- make sure it is still shooting
  if not turret_entity.shooting_target then
    turret_data["status"] = storage.GT_data["turret_states"]["searching"]
    turret_entity.active = false
    turret_data["target_data"] = nil -- TODO: delete this target??
    return
  end

  -- make sure it is not overdue for the collecting of the loot
  if turret_data["target_data"].gathering_distance_remaining == 0 then
    turret_data["status"] = storage.GT_data["turret_states"]["collecting"]
  end
end

function gathering_turret:update_collecting_turret(turret_data)
  local turret_entity = turret_data["entity"]

  -- make sure the turret stops gathering
  if turret_entity.active then
    if turret_entity.shooting_target then
      turret_entity.shooting_target.destroy({ raise_destroy = true }) -- mod compatibility reasons...
    end
    turret_entity.active = false
  end

  -- insert the loot into the chest
  local turret_chest = turret_data["entity-hidden"][self:get_turret_chest_data_index()]
  if not (turret_chest and turret_chest.valid) then
    return
  end
  if
    turret_chest.get_inventory(defines.inventory.chest).insert({
      name = turret_data["target_data"]["item_name"],
      count = 1,
    }) > 0
  then
    -- finish the collection process
    turret_data["target_data"] = nil
    turret_data["status"] = storage.GT_data["turret_states"]["searching"]
    return
  end

  -- no place to insert
  if game.tick % 60 == 0 then
    turret_entity.surface.create_entity({
      name = "flying-text",
      position = turret_entity.position,
      text = "Inventory full!",
    })
  end
end

function gathering_turret:update_gathering_target(turret_surface_index, turret_position, turret_gathering_damage_amount)
  -- This function updates a single turret target. It is up to the caller to make sure
  -- this function is called only when a gathering cycle has passed.

  -- STEP 1: make sure this turret is still valid for gathering
  if not storage.GT_data["turrets"][turret_surface_index] then
    return
  end
  if not storage.GT_data["turrets"][turret_surface_index][turret_position.y] then
    return
  end

  local turret_data = storage.GT_data["turrets"][turret_surface_index][turret_position.y][turret_position.x]
  if not turret_data then
    return
  end
  if turret_data["status"] ~= storage.GT_data["turret_states"]["gathering"] then
    return
  end

  -- STEP 2: update the turret target
  --local gathering_speed = self:get_gathering_speed(turret_data["entity"].force.name, turret_gathering_damage_amount) -- TODO: speed unused
  if turret_data["target_data"].gathering_distance_remaining <= turret_gathering_damage_amount then
    turret_data["target_data"].gathering_distance_remaining = 0
  else
    turret_data["target_data"].gathering_distance_remaining = turret_data["target_data"].gathering_distance_remaining
      - turret_gathering_damage_amount
  end
end

function gathering_turret:update_gathering_target_whitelist(force_name, technology_name, allow_gathering)
  -- This function updates the gathering whitelist depending on which items are researched
  local force_data = storage.GT_data and storage.GT_data.force_data and storage.GT_data.force_data[force_name]
  if force_data then
    local gathering_items = self:get_whitelisted_gathering_items()
    local force_whitelist = force_data["turret_whitelist"]
    for gathering_item, req_tech_name in pairs(gathering_items) do
      if req_tech_name == technology_name then
        force_whitelist[gathering_item] = (allow_gathering == true) or false
        -- TODO: re-activate all inactive turrets in this force
        --       to search for new gathering targets
        -- TODO: quit gathering of disallowed gathering items?
      end
    end
  else
    self:init_force_data(force_name)
  end
end

-------------------------------------------------------------------------------
-- Getter functions to extract data from the data structure
-------------------------------------------------------------------------------
function gathering_turret:get_turret_name()
  if storage.GT_data then
    return storage.GT_data.prototype_data.gathering_turret_name
  else
    return "angels-void"
  end
end

function gathering_turret:get_turret_chest_name()
  if storage.GT_data then
    return storage.GT_data.prototype_data.gathering_turret_chest
  else
    return "angels-void"
  end
end

function gathering_turret:get_turret_chest_data_index()
  return 1
end

function gathering_turret:get_hidden_entity_data(turret_position)
  return {
    -- chest for the gathered loot
    [self:get_turret_chest_data_index()] = {
      name = self:get_turret_chest_name(),
      position = turret_position,
      direction = nil,
    },
  }
end

function gathering_turret:get_whitelisted_gathering_items(force_name)
  if force_name then
    if not storage.GT_data.force_data[force_name] then
      self:init_force_data(force_name)
    end
    return storage.GT_data.force_data[force_name]["turret_whitelist"]
  else -- if no force name is provided, return all possible items
    return storage.GT_data.prototype_data.gathering_items
  end
end

function gathering_turret:is_gathering_target(target_name)
  return string.match(target_name, "angels%-gathering%-turret%-target%_.+%_") == target_name
end

function gathering_turret:get_gathering_radius(force_name)
  if force_name then
    if not storage.GT_data.force_data[force_name] then
      self:init_force_data(force_name)
    end
    return storage.GT_data.force_data[force_name]["turret_range"]
  else -- if no force name is provided, return the max possible range
    return storage.GT_data.prototype_data.gathering_turret_range
  end
end

function gathering_turret:get_gathering_speed(force_name)
  if force_name then
    if not storage.GT_data.force_data[force_name] then
      self:init_force_data(force_name)
    end
    return storage.GT_data.force_data[force_name]["turret_speed"]
  else -- if no force name is provided, return the base speed
    return storage.GT_data.prototype_data.gathering_turret_base_speed
  end
end

function gathering_turret:calculate_distance(pos1, pos2)
  --if true then return 0 end -- QUICK DEBUG ONLY !!!
  local x = pos1.x - pos2.x
  local y = pos1.y - pos2.y
  return math.sqrt(x * x + y * y)
end

function gathering_turret:get_next_target(turret_data)
  local cached_targets = turret_data["cached_targets"]
  local target_index, cached_target = next(cached_targets)

  local cache_was_filled = (cached_target ~= nil)
  local cache_is_refilled = false
  local turret_entity = turret_data["entity"]
  if not cache_was_filled then
    cached_targets = turret_entity.surface.find_entities_filtered({
      name = "item-on-ground",
      position = turret_entity.position,
      radius = self:get_gathering_radius(turret_entity.force.name),
    })
    target_index, cached_target = next(cached_targets)
    cache_is_refilled = true
  end

  local whitelisted_items = self:get_whitelisted_gathering_items(turret_entity.force.name)
  while cached_target and not (cached_target.valid and whitelisted_items[cached_target.stack.name]) do
    cached_targets[target_index] = nil
    target_index, cached_target = next(cached_targets)
  end

  if cached_target then -- a valid target found from the cache
    return cached_target
  end

  if not cache_is_refilled then -- the cached data is exausted of valid targets, time to search for new targets
    return self:get_next_target(turret_data)
  end

  return nil -- no suitable targets to be found
end

-------------------------------------------------------------------------------
-- Behaviour functions, mostly event handlers
-------------------------------------------------------------------------------
function gathering_turret:on_build_entity(created_entity)
  if created_entity and created_entity.valid and created_entity.name == self:get_turret_name() then
    self:save_new_turret(created_entity)
  end
end

function gathering_turret:on_entity_died(removed_entity, loot_inventory)
  if not removed_entity then
    return
  end

  -- Event filter 1: gathering turret dies
  if removed_entity.name == self:get_turret_name() then
    self:remove_saved_turret(removed_entity)
  end
end

function gathering_turret:on_remove_entity(removed_entity)
  if removed_entity and removed_entity.name == self:get_turret_name() then
    self:remove_saved_turret(removed_entity)
  end
end

function gathering_turret:on_damaged_entity(damaged_entity, damaging_entity, raw_damage_dealt)
  -- Event filter 1: damage to (inactive) gathering turret with 0 health remaining
  if damaged_entity.name == self:get_turret_name() and damaged_entity.active == false then
    damaged_entity.active = true

  -- Event filter 2: gathering damage to a potential gathering target
  elseif
    self:is_gathering_target(damaged_entity.name)
    and damaging_entity
    and damaging_entity.name == self:get_turret_name()
  then
    self:update_gathering_target(damaging_entity.surface.index, damaging_entity.position, raw_damage_dealt)
  end
end

function gathering_turret:on_loot_dropped(surface_index, position)
  if not position then
    return
  end
  self:activate_turret(surface_index, position)
end

function gathering_turret:on_tick_update()
  -- TODO: for now we call this once every tick, this can be a runtime setting
  -- faster update times result in higher ups but smoother behaviour
  if storage.GT_data and storage.GT_data["active_turret_count"] > 0 then
    for i = 0, storage.GT_data["active_turret_count"], 60 do
      self:update_next_turret()
    end
  end
end

function gathering_turret:on_tech_research_finished(force_name, technology_name)
  self:update_gathering_target_whitelist(force_name, technology_name, true)
end

function gathering_turret:on_tech_research_reversed(force_name, technology_name)
  self:update_gathering_target_whitelist(force_name, technology_name, false)
end

function gathering_turret:on_tech_research_reset(force_name)
  if storage.GT_data and storage.GT_data.force_data[force_name] then
    self:init_force_data(force_name) -- re-init all force data to reapply settings
  end
end

-- Return class ---------------------------------------------------------------
return gathering_turret
