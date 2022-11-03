-- prevent agriculture modules from being used in research labs
local angels_bio_modules = {
  ["angels-bio-yield-module"] = true,
  ["angels-bio-yield-module-2"] = true,
  ["angels-bio-yield-module-3"] = true,
}

for _, surface in pairs(game.surfaces) do
  local entities = surface.find_entities_filtered({ type = { "lab", "mining-drill" } })
  for _, entity in pairs(entities) do
    local module_inventory = entity.get_module_inventory()
    if module_inventory then
      local module_inventory_content = module_inventory.get_contents()
      for module_name, module_count in pairs(module_inventory_content) do
        if angels_bio_modules[module_name] then -- module_count > 0
          surface.spill_item_stack(entity.position, {
            name = module_name,
            count = module_inventory.remove({
              name = module_name,
              count = module_count,
            }),
          }, true, entity.force, false)
        end
      end
    end
  end
  local ghost_entities = surface.find_entities_filtered({ ghost_type = { "lab", "mining-drill" } })
  for _, ghost_entity in pairs(ghost_entities) do
    if not (ghost_entity and ghost_entity.valid) then
      return
    end
    local item_request_proxy = ghost_entity.item_requests
    for module_name, _ in pairs(angels_bio_modules) do
      item_request_proxy[module_name] = nil
    end
    ghost_entity.item_requests = item_request_proxy
  end
end

for _, force in pairs(game.forces) do
  for newTech, existingTech in pairs({
    ["bio-pressing-2"] = "bio-pressing-1",
    ["bio-pressing-fish-2"] = "bio-pressing-fish-1",
  }) do
    if
      force.technologies[newTech]
      and force.technologies[newTech].prototype.enabled
      and force.technologies[existingTech]
      and force.technologies[existingTech].prototype.enabled
    then
      force.technologies[newTech].researched = force.technologies[existingTech].researched
    end
  end
end
