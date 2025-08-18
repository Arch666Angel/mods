require("__base__/prototypes/factoriopedia-util");
local simulations = {}

------------------
---ENVIRONENT-----
------------------

-------Fish-------

simulations.factoriopedia_angels_alien_fish_1 =
{
    init =
    [[
        for x = -8, 8, 1 do
            for y = -3, 3, 1 do
                game.surfaces[1].set_tiles{{position = {x, y}, name = "water"}}
            end
        end
    game.surfaces[1].create_entity{name = "angels-alien-fish-1", position = {0, 0}}
  ]]
}

simulations.factoriopedia_angels_alien_fish_2 =
{
    init =
    [[
        for x = -8, 8, 1 do
            for y = -3, 3 do
                game.surfaces[1].set_tiles{{position = {x, y}, name = "water"}}
            end
        end
    game.surfaces[1].create_entity{name = "angels-alien-fish-2", position = {0, 0}}
  ]]
}

simulations.factoriopedia_angels_alien_fish_3 =
{
    init =
    [[
        for x = -8, 8, 1 do
            for y = -3, 3 do
                game.surfaces[1].set_tiles{{position = {x, y}, name = "water"}}
            end
        end
    game.surfaces[1].create_entity{name = "angels-alien-fish-3", position = {0, 0}}
  ]]
}

------Plants------

simulations.factoriopedia_angels_temperate_tree =
{
  hide_factoriopedia_gradient = true,
  init =
  [[
    game.simulation.camera_zoom = 1.4
    game.simulation.camera_position = {-0.5, -0.5}
    for x = -10, 9, 1 do
      for y = -4, 4 do
        game.surfaces[1].set_tiles{{position = {x, y}, name = "grass-1"}}
      end
    end

    game.surfaces[1].create_entity{name = "angels-temperate-tree", position = {0, 1.5}}
  ]]
}

simulations.factoriopedia_angels_swamp_tree =
{
  hide_factoriopedia_gradient = true,
  init =
  [[
    game.simulation.camera_zoom = 1.4
    game.simulation.camera_position = {-0.5, -0.5}
    for x = -10, 9, 1 do
      for y = -4, 4 do
        game.surfaces[1].set_tiles{{position = {x, y}, name = "dirt-1"}}
      end
    end

    game.surfaces[1].create_entity{name = "angels-swamp-tree", position = {0, 1.5}}
  ]]
}

simulations.factoriopedia_angels_desert_tree =
{
  hide_factoriopedia_gradient = true,
  init =
  [[
    game.simulation.camera_zoom = 1.4
    game.simulation.camera_position = {-0.5, -0.5}
    for x = -10, 9, 1 do
      for y = -4, 4 do
        game.surfaces[1].set_tiles{{position = {x, y}, name = "grass-1"}}
      end
    end

    game.surfaces[1].create_entity{name = "angels-desert-tree", position = {0, 1.5}}
  ]]
}

simulations.factoriopedia_angels_puffer_nest =
{
  hide_factoriopedia_gradient = true,
  init =
  [[
    game.simulation.camera_zoom = 1.4
    game.simulation.camera_position = {-0.5, 0}
    for x = -10, 9, 1 do
      for y = -4, 4 do
        game.surfaces[1].set_tiles{{position = {x, y}, name = "grass-1"}}
      end
    end

    game.surfaces[1].create_entity{name = "angels-puffer-nest", position = {0, 1.5}}
  ]]
}

simulations.factoriopedia_angels_temperate_garden =
{
  hide_factoriopedia_gradient = true,
  init =
  [[
    game.simulation.camera_zoom = 1.4
    game.simulation.camera_position = {-0.5, 0}
    for x = -10, 9, 1 do
      for y = -4, 4 do
        game.surfaces[1].set_tiles{{position = {x, y}, name = "grass-1"}}
      end
    end

    game.surfaces[1].create_entity{name = "angels-temperate-garden", position = {0, 1.5}}
  ]]
}

simulations.factoriopedia_angels_desert_garden =
{
  hide_factoriopedia_gradient = true,
  init =
  [[
    game.simulation.camera_zoom = 1.4
    game.simulation.camera_position = {-0.5, 0}
    for x = -10, 9, 1 do
      for y = -4, 4 do
        game.surfaces[1].set_tiles{{position = {x, y}, name = "red-desert-1"}}
      end
    end

    game.surfaces[1].create_entity{name = "angels-desert-garden", position = {0, 1.5}}
  ]]
}

simulations.factoriopedia_angels_swamp_garden =
{
  hide_factoriopedia_gradient = true,
  init =
  [[
    game.simulation.camera_zoom = 1.4
    game.simulation.camera_position = {-0.5, 0}
    for x = -10, 9, 1 do
      for y = -4, 4 do
        game.surfaces[1].set_tiles{{position = {x, y}, name = "dirt-1"}}
      end
    end

    game.surfaces[1].create_entity{name = "angels-swamp-garden", position = {0, 1.5}}
  ]]
}

return simulations