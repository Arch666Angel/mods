local sourceEntityTypes = {
  ["train-stop"] = true,
  ["locomotive"] = true,
  ["cargo-wagon"] = true,
  ["fluid-wagon"] = true,
}

local destinationEntityTypes = {
  ["cargo-wagon"] = true,
  ["fluid-wagon"] = true,
}

local ptier_amount = settings.startup["angels-petrotrain-tier-amount"].value
local stier_amount = settings.startup["angels-smeltingtrain-tier-amount"].value
local wagonsToCopy = {
  ["petro-tank1"] = ptier_amount >= 1,
  ["petro-tank1-2"] = ptier_amount >= 2,
  ["petro-tank1-3"] = ptier_amount >= 3,
  ["petro-tank1-4"] = ptier_amount >= 4,
  ["petro-tank1-5"] = ptier_amount >= 5,
  ["petro-tank2"] = ptier_amount >= 1,
  ["petro-tank2-2"] = ptier_amount >= 2,
  ["petro-tank2-3"] = ptier_amount >= 3,
  ["petro-tank2-4"] = ptier_amount >= 4,
  ["petro-tank2-5"] = ptier_amount >= 5,
  ["smelting-wagon-1"] = stier_amount >= 1,
  ["smelting-wagon-1-2"] = stier_amount >= 2,
  ["smelting-wagon-1-3"] = stier_amount >= 3,
  ["smelting-wagon-1-4"] = stier_amount >= 4,
  ["smelting-wagon-1-5"] = stier_amount >= 5,
}

local on_entity_settings_pasted = function(event)
  local source = event.source
  local destination = event.destination

  if
    (wagonsToCopy[source.name] or wagonsToCopy[destination.name]) -- correct train to do behaviour for
    and (
      (sourceEntityTypes[source.type] and destinationEntityTypes[destination.type]) -- paste to a cargo or fluid wagon
      or (sourceEntityTypes[destination.type] and destinationEntityTypes[source.type])
    )
  then -- copy from a cargo or fluid wagon
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
