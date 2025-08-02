game.simulation.camera_position = { -4.5, 1 }
game.simulation.camera_zoom = 1.45
game.simulation.camera_alt_info = true

game.forces.neutral.recipes["angels-ore1-pure"].enabled = true
-- leaching plant
game.surfaces[1].create_entity({
  name = "angels-ore-refinery",
  position = { 0, 0 },
  direction = defines.direction.east,
  force = "neutral",
  recipe = "angels-ore1-pure",
})
-- inserters (input)
game.surfaces[1].create_entity({
  name = "fast-inserter",
  position = { -1, -4 },
  force = "neutral",
  direction = defines.direction.north,
})
game.surfaces[1].create_entity({
  name = "fast-inserter",
  position = { 1, -4 },
  force = "neutral",
  direction = defines.direction.north,
})
-- belts (input)
for x = -16, 2 do
  local belt = game.surfaces[1].create_entity({
    name = "transport-belt",
    position = { x, -5 },
    force = "neutral",
    direction = defines.direction.east,
  })
  for i = 1, 2 do
    for p = 0, 1, 0.1 do
      belt.get_transport_line(i).insert_at(p, { name = "angels-ore1-crystal", count = 1 })
    end
  end
end
game.surfaces[1].create_entity({
  name = "loader",
  position = { -17, -5 },
  force = "neutral",
  direction = defines.direction.east,
  type = "output",
})
-- infinity chest (source)
game.surfaces[1]
  .create_entity({
    name = "infinity-chest",
    position = { -19, -5 },
    force = "neutral",
  })
  .set_infinity_container_filter(1, {
    name = "angels-ore1-crystal",
    count = 100,
    index = 1,
  })
-- inserters (output)
game.surfaces[1].create_entity({
  name = "fast-inserter",
  position = { -1, 4 },
  force = "neutral",
  direction = defines.direction.north,
})
game.surfaces[1].create_entity({
  name = "fast-inserter",
  position = { 1, 4 },
  force = "neutral",
  direction = defines.direction.north,
})
-- belts (output)
game.surfaces[1].create_entity({
  name = "transport-belt",
  position = { -1, 5 },
  force = "neutral",
  direction = defines.direction.east,
})
game.surfaces[1].create_entity({
  name = "transport-belt",
  position = { 1, 5 },
  force = "neutral",
  direction = defines.direction.west,
})
game.surfaces[1].create_entity({
  name = "transport-belt",
  position = { 0, 5 },
  force = "neutral",
  direction = defines.direction.south,
})
for x = 0, 6 do
  game.surfaces[1].create_entity({
    name = "transport-belt",
    position = { x, 6 },
    force = "neutral",
    direction = defines.direction.east,
  })
end
game.surfaces[1].create_entity({
  name = "loader",
  position = { 8, 6 },
  force = "neutral",
  direction = defines.direction.east,
  type = "input",
})
-- infinity chest (sink)
game.surfaces[1].create_entity({
  name = "infinity-chest",
  position = { 9, 6 },
  force = "neutral",
}).remove_unfiltered_items =
  true
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
  sprite = "tips-and-tricks-angels-purification-recipe",
  target = { -9, 1.5 },
  x_scale = 1.6,
  y_scale = 1.6,
  surface = game.surfaces[1],
})
