require("util")

-- Create class ---------------------------------------------------------------
local turbo_bike = {}

-------------------------------------------------------------------------------
-- Initiation of the class
-------------------------------------------------------------------------------
function turbo_bike:on_init()
  if not storage.TB_data then
    storage.TB_data = self:init_storage_data()
  end
end

function turbo_bike:init_storage_data()
  local TB_data = {
    ["version"] = 1, -- version of the storage data

    ["prototype_data"] = self:init_prototype_data(), -- data storing info about the prototypes
  }
  return TB_data
end

function turbo_bike:init_prototype_data()
  return {
    ["turbo_bike_name"] = "angels-turbo-bike", -- the bike name
  }
end

-------------------------------------------------------------------------------
-- Setter functions to alter data into the data structure
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Getter functions to extract data from the data structure
-------------------------------------------------------------------------------
function turbo_bike:get_bike_name()
  if storage.TB_data then
    return storage.TB_data.prototype_data.turbo_bike_name
  else
    return "angels-void"
  end
end

-------------------------------------------------------------------------------
-- Behaviour functions, mostly event handlers
-------------------------------------------------------------------------------
function turbo_bike:on_damaged_entity(damaged_entity, damaging_entity, raw_damage_dealt)
  if
    damaged_entity.name == self:get_bike_name()
    and damaging_entity
    and damaging_entity.name == self:get_bike_name()
  then
    -- drove against something
    local damage_multiplier = 50

    -- damage driver
    local driver = damaged_entity.get_driver()
    if driver and driver.object_name == "LuaPlayer" then
      driver = driver.character
    end
    if driver and driver.valid then
      driver.damage(raw_damage_dealt * damage_multiplier, damaged_entity.force, "impact", damaged_entity)
    end

    -- damage passenger
    if not damaged_entity.valid then
      return
    end    
    local passenger = damaged_entity.get_passenger()
    if passenger and passenger.object_name == "LuaPlayer" then
      passenger = passenger.character
    end
    if passenger and passenger.valid then
      passenger.damage(raw_damage_dealt * damage_multiplier, damaged_entity.force, "impact", damaged_entity)
    end

    -- damage vehicle (more)
    local bike_damage_reduction = 15
    if damage_multiplier - 1 - bike_damage_reduction > 0 then
      damaged_entity.damage(
        raw_damage_dealt * (damage_multiplier - 1 - bike_damage_reduction),
        damaged_entity.force,
        "impact"
      )
    end
  end
end

-- Return class ---------------------------------------------------------------
return turbo_bike
