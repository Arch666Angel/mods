game.simulation.camera_position = { -2.5, 1 }
game.simulation.camera_zoom = 2
game.simulation.camera_alt_info = true

game.forces.neutral.recipes["angels-ore1-crushed"].enabled = true
-- ore crusher
game.surfaces[1].create_entity({
  name = "angels-ore-crusher",
  position = { 0, 0 },
  force = "neutral",
  recipe = "angels-ore1-crushed",
})
-- inserters (input)
game.surfaces[1].create_entity({
  name = "fast-inserter",
  position = { -1, -2 },
  force = "neutral",
  direction = defines.direction.north,
})
game.surfaces[1].create_entity({
  name = "fast-inserter",
  position = { 1, -2 },
  force = "neutral",
  direction = defines.direction.north,
})
-- belts (input)
for x = -11, 2 do
  local belt = game.surfaces[1].create_entity({
    name = "transport-belt",
    position = { x, -3 },
    force = "neutral",
    direction = defines.direction.east,
  })
  for i = 1, 2 do
    for p = 0, 1, 0.1 do
      belt.get_transport_line(i).insert_at(p, { name = "angels-ore1", count = 1 })
    end
  end
end
game.surfaces[1].create_entity({
  name = "loader",
  position = { -12, -3 },
  force = "neutral",
  direction = defines.direction.east,
  type = "output",
})
-- infinity chest (source)
storage.sink = game.surfaces[1]
  .create_entity({
    name = "infinity-chest",
    position = { -14, -3 },
    force = "neutral",
  })
  .set_infinity_container_filter(1, {
    name = "angels-ore1",
    count = 100,
    index = 1,
  })
-- inserters (output)
game.surfaces[1].create_entity({
  name = "fast-inserter",
  position = { -1, 2 },
  force = "neutral",
  direction = defines.direction.north,
})
game.surfaces[1].create_entity({
  name = "fast-inserter",
  position = { 1, 2 },
  force = "neutral",
  direction = defines.direction.north,
})
-- belts (output)
game.surfaces[1].create_entity({
  name = "transport-belt",
  position = { -1, 3 },
  force = "neutral",
  direction = defines.direction.east,
})
game.surfaces[1].create_entity({
  name = "transport-belt",
  position = { 1, 3 },
  force = "neutral",
  direction = defines.direction.west,
})
game.surfaces[1].create_entity({
  name = "transport-belt",
  position = { 0, 3 },
  force = "neutral",
  direction = defines.direction.south,
})
for x = 0, 5 do
  game.surfaces[1].create_entity({
    name = "transport-belt",
    position = { x, 4 },
    force = "neutral",
    direction = defines.direction.east,
  })
end
game.surfaces[1].create_entity({
  name = "loader",
  position = { 7, 4 },
  force = "neutral",
  direction = defines.direction.east,
  type = "input",
})
-- infinity chest (sink)
game.surfaces[1].create_entity({
  name = "infinity-chest",
  position = { 8, 4 },
  force = "neutral",
}).remove_unfiltered_items =
  true
-- power
game.surfaces[1].create_entity({
  name = "substation",
  position = { 7, 0 },
  force = "neutral",
})
game.surfaces[1].create_entity({
  name = "electric-energy-interface",
  position = { 9, 0 },
  force = "neutral",
})
--recipe
rendering.draw_sprite({
  sprite = "tips-and-tricks-angels-crushing-recipe",
  target = { -5.5, 1.8 },
  surface = game.surfaces[1],
})
