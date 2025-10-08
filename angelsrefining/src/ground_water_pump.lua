-- This class keeps track of the ground-water-pump

-- Create class ---------------------------------------------------------------
local ground_water_pump = {}

-------------------------------------------------------------------------------
-- Initiation of the class
-------------------------------------------------------------------------------

ground_water_pump.prototype_name = "angels-ground-water-pump"

-------------------------------------------------------------------------------
-- Behavioural functions
-------------------------------------------------------------------------------
function ground_water_pump:rotate_entity(entity, entity_old_direction, player_index_who_rotated)
  if entity and entity.valid and entity.name == self.prototype_name then
    local entity_surface = entity.surface
    local new_entity_table = {
      name = entity.name,
      position = entity.position,
      --direction = entity_old_direction,
      force = entity.force,
      player = player_index_who_rotated,
      create_build_effect_smoke = false,
    }
    entity.destroy()

    local entity_old_direction = entity_old_direction
    if entity_old_direction == defines.direction.north then
      new_entity_table.direction = defines.direction.south
      if new_entity_table.position.y then
        new_entity_table.position.y = new_entity_table.position.y - 1
      else
        new_entity_table.position[2] = new_entity_table.position[2] - 1
      end
    elseif entity_old_direction == defines.direction.east then
      new_entity_table.direction = defines.direction.west
      if new_entity_table.position.x then
        new_entity_table.position.x = new_entity_table.position.x + 1
      else
        new_entity_table.position[1] = new_entity_table.position[1] + 1
      end
    elseif entity_old_direction == defines.direction.south then
      new_entity_table.direction = defines.direction.north
      if new_entity_table.position.y then
        new_entity_table.position.y = new_entity_table.position.y + 1
      else
        new_entity_table.position[2] = new_entity_table.position[2] + 1
      end
    elseif entity_old_direction == defines.direction.west then
      new_entity_table.direction = defines.direction.east
      if new_entity_table.position.x then
        new_entity_table.position.x = new_entity_table.position.x - 1
      else
        new_entity_table.position[1] = new_entity_table.position[1] - 1
      end
    end

    entity_surface.create_entity(new_entity_table)
  end
end

-------------------------------------------------------------------------------
-- Event handlers
-------------------------------------------------------------------------------
function ground_water_pump:on_player_rotated_entity(entity, old_direction, player_index)
  self:rotate_entity(entity, old_direction, player_index)
end

-- Return class ---------------------------------------------------------------
return ground_water_pump
