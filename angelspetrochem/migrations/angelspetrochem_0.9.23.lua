for _, surface in pairs(game.surfaces) do
  for _, entity in pairs(surface.find_entities_filtered({ name = { "angels-air-filter", "angels-air-filter-2" } })) do
    entity.surface.create_entity({
      name = entity.name == "angels-air-filter" and "angels-air-filter-2" or "angels-air-filter-3",
      position = entity.position,
      force = entity.force,
      fast_replace = true,
      spill = false,
    })
  end
end
