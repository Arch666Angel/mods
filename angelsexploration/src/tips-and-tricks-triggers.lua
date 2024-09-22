require("util")

-- Create class ---------------------------------------------------------------
local tips_and_tricks_triggers = {}

-------------------------------------------------------------------------------
-- Initiation of the class
-------------------------------------------------------------------------------
function tips_and_tricks_triggers:on_init()
  if not storage.TNT_data then
    storage.TNT_data = self:init_storage_data()
  end
end

function tips_and_tricks_triggers:init_storage_data()
  local TNT_data = {
    ["version"] = 1, -- version of the storage data

    ["prototype_data"] = {
      ["trigger_data"] = self:init_trigger_data(), -- data storing info about the trigger prototypes
    },
    ["force_data"] = {}, -- data storing info about the trigger state for each force
  }
  return TNT_data
end

function tips_and_tricks_triggers:init_trigger_data()
  -- init trigger data
  local trigger_data = {}
  local alien_data = prototypes.get_entity_filtered({
    { mode = "or", filter = "type", type = "unit" },
    { mode = "or", filter = "type", type = "unit-spawner" },
  })
  local technology_data = prototypes.technology
  for alien_name, alien_prototype_data in pairs(alien_data) do
    local technology_name = "tips-and-tricks-trigger[angels-native-inhabitants-"
      .. (alien_prototype_data.type == "unit" and "unit" or "spawner")
      .. "["
      .. alien_name
      .. "]]"
    trigger_data[alien_name] = technology_data[technology_name] and technology_name or nil
  end
  return trigger_data
end

function tips_and_tricks_triggers:init_force_data(force_name)
  -- create the trigger data for this force
  local force_trigger_data = {}
  local trigger_data = self:get_trigger_data()
  local technologies = game.forces[force_name].technologies
  for alien_name, trigger_name in pairs(trigger_data) do
    if technologies[trigger_name] then
      if technologies[trigger_name].researched then
      else
        force_trigger_data[alien_name] = trigger_name
      end
    end
  end

  -- store all force data
  storage.TNT_data.force_data[force_name] = {
    ["trigger_data"] = force_trigger_data,
  }
end

-------------------------------------------------------------------------------
-- Setter functions to alter data into the data structure
-------------------------------------------------------------------------------
function tips_and_tricks_triggers:remove_trigger(force_name, trigger_name)
  if force_name and storage.TNT_data and storage.TNT_data.force_data[force_name] then
    local force_triggers = storage.TNT_data.force_data[force_name]["trigger_data"]
    local triggers_to_remove = {}
    for trigger_key, trigger_value in pairs(force_triggers) do
      if trigger_value == trigger_name then
        triggers_to_remove[trigger_key] = trigger_value
      end
    end
    for trigger_key, _ in pairs(triggers_to_remove) do
      force_triggers[trigger_key] = nil
    end
  end
end

-------------------------------------------------------------------------------
-- Getter functions to extract data from the data structure
-------------------------------------------------------------------------------
function tips_and_tricks_triggers:get_trigger_data(force_name)
  if force_name then
    if not storage.TNT_data.force_data[force_name] then
      self:init_force_data(force_name)
    end
    return storage.TNT_data.force_data[force_name]["trigger_data"]
  else
    return storage.TNT_data.prototype_data["trigger_data"]
  end
end

-------------------------------------------------------------------------------
-- Behaviour functions, mostly event handlers
-------------------------------------------------------------------------------
function tips_and_tricks_triggers:on_entity_died(killed_entity, killing_entity)
  local killing_force_name = killing_entity and killing_entity.force.name
  local trigger_name = self:get_trigger_data(killing_force_name)[killed_entity.name]
  if killing_force_name and trigger_name then
    local trigger_technology = game.forces[killing_force_name].technologies[trigger_name]
    if trigger_technology then
      trigger_technology.researched = true
    end
  end
end

function tips_and_tricks_triggers:on_tech_research_finished(force_name, technology_name)
  self:remove_trigger(force_name, technology_name)
end

function tips_and_tricks_triggers:on_tech_research_reset(force_name)
  if storage.TNT_data and storage.TNT_data.force_data[force_name] then
    self:init_force_data(force_name) -- re-init all force data to reapply settings
  end
end

-- Return class ---------------------------------------------------------------
return tips_and_tricks_triggers
