require("__base__/prototypes/factoriopedia-util");
local simulations = {}

------------------
---ENVIRONENT-----
------------------

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

return simulations