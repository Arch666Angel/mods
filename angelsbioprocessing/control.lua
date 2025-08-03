script.on_event(defines.events.on_entity_died, function(event)
  local loot = event.loot
  local killing_force = event.force
  if (not killing_force) or loot.is_empty() then
    return
  end
  loot = loot.get_contents()
  for loot_item_name, loot_technology_to_research in pairs({
    ["angels-small-alien-artifact"] = "angels-alien-artifact",
    ["angels-small-alien-artifact-red"] = "angels-alien-artifact-red",
    ["angels-small-alien-artifact-yellow"] = "angels-alien-artifact-yellow",
    ["angels-small-alien-artifact-orange"] = "angels-alien-artifact-orange",
    ["angels-small-alien-artifact-blue"] = "angels-alien-artifact-blue",
    ["angels-small-alien-artifact-purple"] = "angels-alien-artifact-purple",
    ["angels-small-alien-artifact-green"] = "angels-alien-artifact-green",
  }) do
    if loot[loot_item_name] then
      local technology = killing_force.technologies[loot_technology_to_research]
      if technology then
        technology.researched = true
      end
    end
  end
end, {
  { mode = "or", filter = "type", type = "unit" },
  { mode = "or", filter = "type", type = "unit-spawner" },
})
