script.on_event(defines.events.on_entity_died, function(event)
  local loot = event.loot
  local killing_force = event.force
  if (not killing_force) or loot.is_empty() then
    return
  end
  loot = loot.get_contents()
  for loot_item_name, loot_technology_to_research in pairs({
    ["small-alien-artifact"] = "angels-alien-artifact",
    ["small-alien-artifact-red"] = "angels-alien-artifact-red",
    ["small-alien-artifact-yellow"] = "angels-alien-artifact-yellow",
    ["small-alien-artifact-orange"] = "angels-alien-artifact-orange",
    ["small-alien-artifact-blue"] = "angels-alien-artifact-blue",
    ["small-alien-artifact-purple"] = "angels-alien-artifact-purple",
    ["small-alien-artifact-green"] = "angels-alien-artifact-green",
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
