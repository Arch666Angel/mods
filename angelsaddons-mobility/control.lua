local source_entity_types = {
  ["train-stop"] = true,
  ["locomotive"] = true,
  ["cargo-wagon"] = true,
  ["fluid-wagon"] = true,
}

local destination_entity_types = {
  ["cargo-wagon"] = true,
  ["fluid-wagon"] = true,
}

local petro_tier_amount = settings.startup["angels-petrotrain-tier-amount"].value
local smelting_tier_amount = settings.startup["angels-smeltingtrain-tier-amount"].value
local wagons_to_copy = {
  ["angels-petro-tank1"] = petro_tier_amount >= 1,
  ["angels-petro-tank1-2"] = petro_tier_amount >= 2,
  ["angels-petro-tank1-3"] = petro_tier_amount >= 3,
  ["angels-petro-tank1-4"] = petro_tier_amount >= 4,
  ["angels-petro-tank1-5"] = petro_tier_amount >= 5,

  ["angels-petro-tank2"] = petro_tier_amount >= 1,
  ["angels-petro-tank2-2"] = petro_tier_amount >= 2,
  ["angels-petro-tank2-3"] = petro_tier_amount >= 3,
  ["angels-petro-tank2-4"] = petro_tier_amount >= 4,
  ["angels-petro-tank2-5"] = petro_tier_amount >= 5,

  ["angels-smelting-wagon-1"] = smelting_tier_amount >= 1,
  ["angels-smelting-wagon-1-2"] = smelting_tier_amount >= 2,
  ["angels-smelting-wagon-1-3"] = smelting_tier_amount >= 3,
  ["angels-smelting-wagon-1-4"] = smelting_tier_amount >= 4,
  ["angels-smelting-wagon-1-5"] = smelting_tier_amount >= 5,
}

---Copies and pastes the color from the source entity to the destination entity, if the source and
---destination entities are valid for the operation.
---@param event EventData.on_entity_settings_pasted
local on_entity_settings_pasted = function(event)
  local source = event.source
  local destination = event.destination

  local is_valid_source = wagons_to_copy[source.name] or wagons_to_copy[destination.name]

  local is_valid_destination =
      (source_entity_types[source.type] and destination_entity_types[destination.type]) or
      (source_entity_types[destination.type] and destination_entity_types[source.type])

  if is_valid_source and is_valid_destination then
    local source_color = source.color or source.prototype.color
    if source_color then
      local destination_color = destination.color or destination.prototype.color

      destination.color = {
        r = source_color.r,
        g = source_color.g,
        b = source_color.b,
        a = destination_color and destination_color.a or 1, -- keep alpha color
      }
    end
  end
end

local init_events = function()
  script.on_event(defines.events.on_entity_settings_pasted, on_entity_settings_pasted)
end

script.on_load(function()
  init_events()
end)

script.on_init(function()
  init_events()
end)
