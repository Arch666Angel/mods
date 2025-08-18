require("__base__/prototypes/factoriopedia-util");
local simulations = {}

--Strings need to be regenerated after a prototype name change.

-----------------
----LOGISTICS----
-----------------

--Robots

simulations.factoriopedia_cargo_robot =
{
    init =
    [[
        game.simulation.camera_position = {0, -1}
        game.surfaces[1].create_entity{
            name = "cargo-robot",
            position = {0, 0},
        }
    ]]
}

simulations.factoriopedia_cargo_robot_2 =
{
    init =
    [[
        game.simulation.camera_position = {0, -1}
        game.surfaces[1].create_entity{
            name = "cargo-robot-2",
            position = {0, 0},
        }
    ]]
}

simulations.factoriopedia_angels_construction_robot =
{
    init =
    [[
        game.simulation.camera_position = {0, -1}
        game.surfaces[1].create_entity{
            name = "angels-construction-robot",
            position = {0, 0},
        }
    ]]
}

return simulations