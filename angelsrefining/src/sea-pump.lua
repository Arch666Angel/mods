require("util")

-- Create class ---------------------------------------------------------------
local sea_pump = {}

-------------------------------------------------------------------------------
-- Initiation of the class
-------------------------------------------------------------------------------
function sea_pump:on_init()
  if not storage.SP_data then
    storage.SP_data = self:init_storage_data()
  end
end

function sea_pump:init_storage_data()
  local SP_data = {
    ["version"] = 3, -- version of the storage data

    ["prototype_data"] = self:init_prototype_data(), -- data storing info about the prototypes
    ["entity_modules_data_tag"] = "sea-pump-modules_request", -- the tag name where the data is stored in the entity
  }
  return SP_data
end

function sea_pump:init_prototype_data()
  return {
    ["sea_pump_name"] = "angels-sea-pump", -- the actual pump
    ["sea_pump_placeable"] = "angels-sea-pump-placeable", -- the name of the entity being placed
    ["sea_pump_resource"] = "angels-sea-pump-resource", -- the resource the actual pump is placed on
  }
end

-------------------------------------------------------------------------------
-- Setter functions to alter data into the data structure
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Getter functions to extract data from the data structure
-------------------------------------------------------------------------------
function sea_pump:get_pump_name()
  if storage.SP_data then
    return storage.SP_data.prototype_data.sea_pump_name
  else
    return "angels-void"
  end
end

function sea_pump:get_placeable_name()
  if storage.SP_data then
    return storage.SP_data.prototype_data.sea_pump_placeable
  else
    return "angels-void"
  end
end

function sea_pump:get_resource_name()
  if storage.SP_data then
    return storage.SP_data.prototype_data.sea_pump_resource
  else
    return "angels-void"
  end
end

function sea_pump:get_ghost_tag_name()
  if storage.SP_data then
    return storage.SP_data.entity_modules_data_tag
  else
    return "angels-void"
  end
end

-------------------------------------------------------------------------------
-- Behaviour functions, mostly event handlers
-------------------------------------------------------------------------------
function sea_pump:on_build_entity(created_entity, entity_tags)
  if not (created_entity and created_entity.valid) then
    return
  end

  if created_entity.name == self:get_placeable_name() then
    local surface = created_entity.surface
    local position = created_entity.position
    local force = created_entity.force
    local direction = created_entity.direction

    -- remove the sea pump placeable
    created_entity.destroy({ raise_destroy = true })

    -- create the resource to be mined by the sea pump (miner)
    surface.create_entity({
      name = self:get_resource_name(),
      position = position,
      force = "neutral",
    })

    -- create the actual sea pump
    local created_entity_2 = surface.create_entity({
      name = self:get_pump_name(),
      position = position,
      direction = direction,
      force = force,
      create_build_effect_smoke = true,
      raise_built = true,
    })

    local requested_modules = entity_tags[self:get_ghost_tag_name()]
    if requested_modules then
      local created_entity_2_proxy = surface.create_entity({
        name = "item-request-proxy",
        position = position,
        force = force,
        target = created_entity_2,
        modules = requested_modules,
      })
    end
  elseif created_entity.name == self:get_pump_name() then
    -- make sure the sea pump (miner) cannot be rotated
    created_entity.rotatable = false
  elseif created_entity.name == "entity-ghost" then
    if created_entity.ghost_name == self:get_placeable_name() then
      local modules = {}
      local has_modules = false
      local module_prototypes = prototypes.get_item_filtered({
        { filter = "type", type = "module" },
      })
      for module_name, module_count in pairs(created_entity.item_requests) do
        if module_prototypes[module_name] then
          modules[module_name] = module_count
          has_modules = true
        end
      end
      if has_modules then
        local created_entity_tags = created_entity.tags or {}
        created_entity_tags[self:get_ghost_tag_name()] = modules
        created_entity.tags = created_entity_tags
      end
    elseif created_entity.ghost_name == self:get_pump_name() then
      local surface = created_entity.surface
      local position = created_entity.position
      local force = created_entity.force
      local direction = created_entity.direction
      local time_to_live = created_entity.time_to_live
      local item_requests = created_entity.item_requests

      -- remove the sea pump (miner) ghost
      created_entity.destroy({ raise_destroy = true })

      -- create the sea pump (placeable) ghost
      created_entity_2 = surface.create_entity({
        name = "entity-ghost",
        inner_name = self:get_placeable_name(),
        position = position,
        direction = direction,
        force = force,
        expires = time_to_live,
        create_build_effect_smoke = false,
        raise_built = false, -- raise manually after adding the item requests
      })
      created_entity_2.item_requests = item_requests
      script.raise_event(defines.events.script_raised_built, { entity = created_entity_2 })
    end
  end
end

function sea_pump:on_remove_entity(removed_entity)
  if not removed_entity then
    return
  end
  if removed_entity.name ~= self:get_pump_name() then
    return
  end

  -- remove the resource that was being mined by the sea pump (miner)
  local surface = removed_entity.surface
  local position = removed_entity.position
  local resource_entity = surface.find_entity(self:get_resource_name(), position)
  if resource_entity ~= nil then
    resource_entity.destroy({ raise_destroy = false })
  end
end

function sea_pump:on_blueprint_setup(player_index)
  -- obtain the blueprint from the player
  local player = game.get_player(player_index)
  if not player then
    return
  end

  local blueprint = player.blueprint_to_setup
  if not blueprint or not blueprint.valid_for_read then
    blueprint = player.cursor_stack
    if not blueprint or not blueprint.valid_for_read then
      return
    end
  end

  while blueprint.type == "blueprint-book" do
    local blueprint_inventory = blueprint.get_inventory(defines.inventory.item_main)
    if blueprint_inventory then
      blueprint = blueprint_inventory[blueprint.active_index]
    else
      return
    end
  end

  -- type may be 'upgrade-item'
  if blueprint.type ~= "blueprint" then
    return
  end

  -- obtain all blueprint entitites
  local entities = blueprint.get_blueprint_entities()
  if entities == nil then
    return
  end

  -- replace the sea pump (miner) with sea pump (placeable)
  local pump_mining_name = self:get_pump_name()
  local pump_place_name = self:get_placeable_name()
  local entities_replaced = false
  for index, entity in pairs(entities) do
    if entity.name == pump_mining_name then
      entities[index].name = pump_place_name
      entities_replaced = true
    end
  end
  if entities_replaced then
    blueprint.set_blueprint_entities(entities)
  end
end

-- Return class ---------------------------------------------------------------
return sea_pump
