script.on_init(function()
  if settings.startup["deco-shred-create-spawn-logo"].value then
    local force = game.forces["player"]
    local surface = game.surfaces["nauvis"]

    local position = force.get_spawn_position(surface)
    -- offset center
    position.x = position.x - 1
    position.y = position.y - 6

    local area = { { position.x - 5, position.y }, { position.x + 6, position.y + 11 } }

    -- landfill water area
    local waterTiles = surface.find_tiles_filtered({
      area = area,
      name = { "deepwater", "deepwater-green", "water", "water-green" },
    })
    if #waterTiles > 0 then
      local tiles = {}
      for _, tile in pairs(waterTiles) do
        table.insert(tiles, { name = "grass-1", position = tile.position })
      end
      surface.set_tiles(tiles, true)
    end

    -- remove entities
    local entities = surface.find_entities(area)
    if #entities > 0 then
      for _, entity in pairs(entities) do
        if entity and entity.valid then
          entity.destroy({
            do_cliff_correction = true,
            raise_destroy = false,
          })
        end
      end
    end

    -- place entity
    local entity = surface.create_entity({
      name = "shred-start",
      position = position,
      force = force,
    })
    if entity and entity.valid then
      entity.destructible = false
      entity.minable = false
    end
  end
end)
