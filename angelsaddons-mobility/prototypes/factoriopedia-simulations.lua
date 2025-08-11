require("__base__/prototypes/factoriopedia-util");
local simulations = {}

--Note on prototype name changes.
--If prototype names are changed, which is likely to happen, the blueprint strings need to be decoded to json, where the prototype name needs to be changed.
--Afterwards, the json needs to be encrypted back into the string and the string in this file needs to be replaced.
--Basic encoder/decoder: https://haapanen.github.io/factorio-tools/#/codec



-- Crawler Trains

simulations.factoriopedia_crawler_locomotive =
{
    init =
    [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9FuwjAMRf/FzylaoS2svzKhKgRTrKUJStIyhPLvcwkbSGxSpL7Yvfck9a2vsNMjnhyZAO0VSFnjof24gqfeSD33jBwQWnCSNEQBZPb4BW0ZtwLQBAqEyXErLp0Zhx06Fogfpw/s7Y+huCEEnKxnlzUznEnFWsCF9WuG78mhSu+qKF6Yy2xmnc1cZTNX2czql6mcPGt0hbbKDjbQhH+Ay0W5fLowGrnT2Gnbkw+kfHc+EteDncj00B6k9ijAOuJTZeK8LWYABRxSFrR/Ss6MSqN0xWHElGCSscp0ZCamWHdJtkfF8fkg1Sez4zby8/qVdfbkyuzJNbnMfOQ6F5mf7yYX+d9vuJ2na9Vnx/tmUvu+dnP3rphz4iMeCypgQudviOWmrDarummaqm7q9xi/AUkkRL8=",
            position = {0, 0}
        }
    ]]
}

simulations.factoriopedia_crawler_locomotive_wagon =
{
    init =
    [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9FuwjAMRf/FzylaoS2svzKhKgRTLNIEJWkZQvn3uYQNJDQpUl/s3nuS+tY32OkRz45MgPYGpKzx0H7dwFNvpJ57Rg4ILThJGqIAMnv8hraMWwFoAgXC5LgX186Mww4dC8Sv0wf29sdQ3BECztazy5oZzqRiLeDK+jXD9+RQpXdVFG/MZTazzmauspmrbGb1x1ROXjS6QltlBxtowuIie/a948tFuXy5Nhq509hp25MPpHx3ORLXg53I9NAepPYowDris2XifCxmAAUcUiK0f8nPjEqjdMVhxJRjkrHKdGQmplh3TbZnxSH6INWJ2XEb+Xn/1jp7fmX2/JpcZj5ynYvMT3mTi/zvZ9zO07Xq1PHWmdR+LN/cfSjmnPiI55oKmND5O2K5KavNqm6apqqb+jPGH5WXRwg=",
            position = {0, 0}
        }
    ]]
}




return simulations