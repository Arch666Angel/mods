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
local crawler_tier_amount = settings.startup["angels-crawlertrain-tier-amount"].value

local wagons_to_copy = {
  ["angels-petro-gas-wagon"] = petro_tier_amount >= 1,
  ["angels-petro-gas-wagon-2"] = petro_tier_amount >= 2,
  ["angels-petro-gas-wagon-3"] = petro_tier_amount >= 3,
  ["angels-petro-gas-wagon-4"] = petro_tier_amount >= 4,
  ["angels-petro-gas-wagon-5"] = petro_tier_amount >= 5,

  ["angels-petro-oil-wagon"] = petro_tier_amount >= 1,
  ["angels-petro-oil-wagon-2"] = petro_tier_amount >= 2,
  ["angels-petro-oil-wagon-3"] = petro_tier_amount >= 3,
  ["angels-petro-oil-wagon-4"] = petro_tier_amount >= 4,
  ["angels-petro-oil-wagon-5"] = petro_tier_amount >= 5,

  ["angels-smelting-cargo-wagon"] = smelting_tier_amount >= 1,
  ["angels-smelting-cargo-wagon-2"] = smelting_tier_amount >= 2,
  ["angels-smelting-cargo-wagon-3"] = smelting_tier_amount >= 3,
  ["angels-smelting-cargo-wagon-4"] = smelting_tier_amount >= 4,
  ["angels-smelting-cargo-wagon-5"] = smelting_tier_amount >= 5,

  ["angels-crawler-cargo-wagon"] = crawler_tier_amount >= 1,
  ["angels-crawler-cargo-wagon-2"] = crawler_tier_amount >= 2,
  ["angels-crawler-cargo-wagon-3"] = crawler_tier_amount >= 3,
  ["angels-crawler-cargo-wagon-4"] = crawler_tier_amount >= 4,
  ["angels-crawler-cargo-wagon-5"] = crawler_tier_amount >= 5,

  ["angels-crawler-robot-wagon"] = crawler_tier_amount >= 1,
  ["angels-crawler-robot-wagon-2"] = crawler_tier_amount >= 2,
  ["angels-crawler-robot-wagon-3"] = crawler_tier_amount >= 3,
  ["angels-crawler-robot-wagon-4"] = crawler_tier_amount >= 4,
  ["angels-crawler-robot-wagon-5"] = crawler_tier_amount >= 5,
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
    destination.color = source.color or source.prototype.color
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
