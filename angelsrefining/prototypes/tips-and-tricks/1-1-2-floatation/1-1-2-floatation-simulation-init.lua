game.camera_position = { -2.5, 1 }
game.camera_zoom = 1.7
game.camera_alt_info = true

-- floatation cell
game.surfaces[1].create_entity({
  name = "ore-floatation-cell",
  position = { 0, 0 },
  direction = defines.direction.east,
  force = "neutral",
  recipe = "angelsore1-chunk",
})
-- inserters (input)
game.surfaces[1].create_entity({
  name = "fast-inserter",
  position = { -1, -3 },
  force = "neutral",
  direction = defines.direction.north,
})
game.surfaces[1].create_entity({
  name = "fast-inserter",
  position = { 1, -3 },
  force = "neutral",
  direction = defines.direction.north,
})
-- belts (input)
for x = -12, 2 do
  local belt = game.surfaces[1].create_entity({
    name = "transport-belt",
    position = { x, -4 },
    force = "neutral",
    direction = defines.direction.east,
  })
  for i = 1, 2 do
    for p = 0, 1, 0.1 do
      belt.get_transport_line(i).insert_at(p, { name = "angels-ore1-crushed", count = 1 })
    end
  end
end
game.surfaces[1].create_entity({
  name = "loader",
  position = { -13, -4 },
  force = "neutral",
  direction = defines.direction.east,
  type = "output",
})
-- pipes (input)
game.surfaces[1].create_entity({
  name = "pipe-to-ground",
  position = { -3, 0 },
  force = "neutral",
  direction = defines.direction.east,
})
game.surfaces[1].create_entity({
  name = "pipe-to-ground",
  position = { -13, 0 },
  force = "neutral",
  direction = defines.direction.west,
})
-- infinity chest (source)
game.surfaces[1]
  .create_entity({
    name = "infinity-chest",
    position = { -15, -4 },
    force = "neutral",
  })
  .set_infinity_container_filter(1, {
    name = "angels-ore1-crushed",
    count = 100,
    index = 1,
  })
-- infinity pipe (source)
game.surfaces[1]
  .create_entity({
    name = "infinity-pipe",
    position = { -14, 0 },
    force = "neutral",
  })
  .set_infinity_pipe_filter({
    name = "water-purified",
    percentage = 1,
  })
-- inserters (output)
game.surfaces[1].create_entity({
  name = "fast-inserter",
  position = { -1, 3 },
  force = "neutral",
  direction = defines.direction.north,
})
game.surfaces[1].create_entity({
  name = "fast-inserter",
  position = { 1, 3 },
  force = "neutral",
  direction = defines.direction.north,
})
-- belts (output)
game.surfaces[1].create_entity({
  name = "transport-belt",
  position = { -1, 4 },
  force = "neutral",
  direction = defines.direction.east,
})
game.surfaces[1].create_entity({
  name = "transport-belt",
  position = { 1, 4 },
  force = "neutral",
  direction = defines.direction.west,
})
game.surfaces[1].create_entity({
  name = "transport-belt",
  position = { 0, 4 },
  force = "neutral",
  direction = defines.direction.south,
})
for x = 0, 6 do
  game.surfaces[1].create_entity({
    name = "transport-belt",
    position = { x, 5 },
    force = "neutral",
    direction = defines.direction.east,
  })
end
game.surfaces[1].create_entity({
  name = "loader",
  position = { 8, 5 },
  force = "neutral",
  direction = defines.direction.east,
  type = "input",
})
-- pipes (output)
game.surfaces[1].create_entity({
  name = "pipe-to-ground",
  position = { 3, 0 },
  force = "neutral",
  direction = defines.direction.west,
})
game.surfaces[1].create_entity({
  name = "pipe-to-ground",
  position = { 11, 0 },
  force = "neutral",
  direction = defines.direction.east,
})
-- infinity chest (sink)
game.surfaces[1].create_entity({
  name = "infinity-chest",
  position = { 9, 5 },
  force = "neutral",
}).remove_unfiltered_items =
  true
-- infinity pipe (sink)
game.surfaces[1]
  .create_entity({
    name = "infinity-pipe",
    position = { 12, 0 },
    force = "neutral",
  })
  .set_infinity_pipe_filter({
    name = "water-yellow-waste",
    percentage = 0.5,
    mode = "at-most",
  })
-- power
game.surfaces[1].create_entity({
  name = "substation",
  position = { 8, 0 },
  force = "neutral",
})
game.surfaces[1].create_entity({
  name = "electric-energy-interface",
  position = { 10, 0 },
  force = "neutral",
})
--recipe
rendering.draw_sprite({
  sprite = "tips-and-tricks-angels-floatation-recipe",
  target = { -6.5, 1.8 },
  x_scale = 1.11,
  y_scale = 1.11,
  surface = game.surfaces[1],
})
