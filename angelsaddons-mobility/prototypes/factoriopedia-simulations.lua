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

simulations.factoriopedia_crawler_wagon = 
{
    init =
    [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyN09tugzAMANB/8XOoyiXQ8ivThAL1qLWQVEloVyH+fQa6i9RNymMc+8RR4glaPeLFkQlQT0CdNR7qlwk89UbpJWbUgFCDU6RhFkDmhB9Qp/OrADSBAuFWsS7ujRmHFh0niK9KH7i2P4dkJQRcrOcqaxacpaQScIc6k4yfyGG37RWzeDKzaFNGm3m0mUebxbfZOXXT6JKb6jn52dzvjnn1q1k0qtXYaNuTD9T55nYmXg/2SqaH+k1pjwKsIz5RbdB+l8nlWa4cso4hM2r9R1My+qJp9EXLWDOerGLJ+Oc4xJL//Rr+6j7Y7r3h8TBb+DElS/SRQQEHPuJnngRc0fmVyA5pcchlWZaFLOVxnj8BtbconA==",
            position = {0, 0}
        }
    ]]
}

simulations.factoriopedia_crawler_bot_wagon = 
{
    init =
    [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyN09uOgyAQBuB3mWts6gHb+iqbjUE7ayeL0ADqNsZ337F2D0l3Ey4Z+D8gMDM0esCrIxOgmoFaazxULzN46ozSa82oHqECp0jDIoDMGT+gSpdXAWgCBcItcR/cajP0DTpeIL6SPnC2u4TkTgi4Ws8pa1acpeQg4AZVJhk/k8N2mysW8WRm0aaMNvNoM482i2+zdWrS6JLGhmRSHQee3f3ulB9+HRiNajTW2nbkA7W+ni7E496OZDqo3pT2KMA64l3VBu13mVyfZuSSdQyZQes/DiajL5tGX7aMNePJQywZ/yTHWPK/n8Pf3QfbvtfcImYrPzplrT5WUMCet/jpKQEjOn8nsmNaHHNZlmUhS3lalk+WgCoO",
            position = {0, 0}
        }
    ]]
}

--Petro Trains

simulations.factoriopedia_petro_locomotive =
{
    init =
    [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9FuwjAMRf/FzylaoS2svzKhKgRTLNIEJWk3hPLvcwkbSGxSpL7Yvfck9a2vsNMjnh2ZAO0VSFnjof24gqfeSD33jBwQWnCSNEQBZPb4BW0ZtwLQBAqEyXErLp0Zhx06Fogfpw/s7Y+huCEEnK1nlzUznEnFWsCF9WuG78mhSu+qKF6Yy2xmnc1cZTNX2czql3nG4GyhrbKDDTRhUf4BLhfl8unCaOROY6dtTz6Q8t3nkbge7ESmh/YgtUcB1hGfKhPnbTEDKOCQsqD9U3JmVBqlKw4jpgSTjFWmIzMxxbpLsj0qjs8HqU7MjtvIz+tX1tmTK7Mn1+Qy85HrXGR+vptc5H+/4XaerlWnjvfNpPZ97ebuXTHnxEc8FlTAhM7fEMtNWW1WddM0Vd3U7zF+A1XHRFc=",
            position = {0, 0}
        }
    ]]
}

simulations.factoriopedia_petro_tank1 =
{
    init =
    [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9FuwjAMRf/FzylaoS2svzKhKhRTLFqnSlI2hPLvcwkbSGxSpL7Yvfck9a2vsOsnHC2xh/oK1Bp2UH9cwVHHup97rAeEGqymHoIC4j1+QZ2HrQJkT54wOm7FpeFp2KEVgfpxOi/e7uizG0LBaJy4DM9wIWVrBRfRrwW+J4ttfFcE9cJcJjPLZOYqmblKZha/zBG9NZnXfMr/IOaLfPl0U2S967HpTUfOU+uazyNJPZgzcQf1QfcOFRhLcpyOnLfFDCCPQwyB9k+R8dT2qG12mDBGF2Wi4ob4LBRjL9H2qCQ353V7EnbYBnleP69MHlmePLIqlZmOXKci04PdpCL/+/+283RNe2pk0Ti27/s2d++KOSc54rGZCs5o3Q2x3OTFZlVWVVWUVfkewjeGckGX",
            position = {0, 0}
        }
    ]]
}

simulations.factoriopedia_petro_tank2 =
{
    init =
    [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9FuwjAMRf/FzylaS1tYf2VCVSimWLQOSlI2hPLvcwkbSGxSpL7Yvfck9a2vsB0mPFliD80VqDPsoPm4gqOe9TD3WI8IDVhNAwQFxDv8giYPGwXInjxhdNyKS8vTuEUrAvXjdF68/cFnN4SCk3HiMjzDhZStFFxEvxL4jix28V0Z1AuzSGZWycxlMnOZzCx/mSf01mRe87H4g5gv8uLppsh6O2A7mJ6cp861nweSejRn4h6avR4cKjCW5DgdOW+LGUAexxgC7Z4i46kbUNtsP2GMLspExS3xWSjGXqLtUUluzuvuKOywCfK8fl6VPLI8eWR1KjMduUpFpge7TkX+9/9t5uma7tjKonFs3/dt7t4Vc05yxGMzFZzRuhuiWOflelnVdV1WdfUewjeIykGY",
            position = {0, 0}
        }
    ]]
}

--Smelting Trains

simulations.factoriopedia_smelting_locomotive =
{
    init =
    [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9FuwjAMRf/FzylaoS2sv4JQFYIpFmmCkrQbQvn3uYQJJDYpUl/s3nuS+tY32OsRL45MgPYGpKzx0G5v4Kk3Us89IweEFpwkDVEAmQN+Q1vGnQA0gQJhctyLa2fGYY+OBeLX6QN7+1Mo7ggBF+vZZc0MZ1KxFnBl/ZrhB3Ko0rsqijfmMptZZzNX2cxVNrN6MgfUgUxfaKvsYANNWJR/sMtFuXy5Mxq519hp25MPpHz3dSKuBzsxC9qj1B4FWEd8sEycj8UMoIBDioMOL+GZUWmUrjiOmEJMMlaZjszEFOuuyfasOEEfpDozO+4iP+8fWmcPr8weXpPLzEeuc5H5EW9ykf/9ibt5uladO145k9qPzZu7D8WcEx/x3FEBEzp/Ryw3ZbVZ1U3TVHVTf8b4A6r4RZA=",
            position = {0, 0}
        }
    ]]
}

simulations.factoriopedia_smelting_locomotive_tender =
{
    init =
    [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9FuwjAMRf/FzylaoS2sv4JQFYIpFmmCkrQbQvn3uYQJJDYpUl7sXh+nvvEN9nrEiyMToL0BKWs8tNsbeOqN1HPOyAGhBSdJQxRA5oDf0JZxJwBNoECYKu7BtTPjsEfHAvFb6QPX9qdQ3BECLtZzlTUznEnFWsCV9WuGH8ihSt+qKN6Yy2xmnc1cZTNX2czqyRxQBzJ9oa2ygw00YRGQR+j+aFAuyuXLxdHIvcZO2558IOW7rxNxPNiJgdAepfYowDri7jJxPhYzgAIOyRM6vDhoRqVRuuI4YnIyyVhlOjITU6y7prJnxDb6INWZ2XEX+bz/bZ09wTJ7gk0uMx+5zkXm+7zJRf73HHfzdK06d7x3JqUf6zdnH4rZJ27xXFQBEzp/Ryw3ZbVZ1U3TVHVTf8b4A5HcR+E=",
            position = {0, 0}
        }
    ]]
}

simulations.factoriopedia_smelting_wagon =
{
    init =
    [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk91uwjAMhd/F1yla6Q+srzKhKhRTLFIHJSkMob77XMIEEpsUqTd2z/mS+tQ32JoRT444QHMD6ix7aL5u4KlnbeYe6wGhAafJwKSAeIff0OTTRgFyoEAYHffi2vI4bNGJQP06fRBvfwjZHaHgZL24LM9wIWUrBVfRrwS+I4ddfFdO6o25TGZWycwimVkkM8snc0ATiPvsonvLWf4HNl/ky5frIuutwdbYnnygzreXA0k92LNgoNlr41GBdSRn6sj5WMwACjjEJGj3khuPnUHtsv2IMb8oExW3xGehWHeNtmcl4fmgu6Owp80kz/s3Vslzy5PnVqcy05GrVGR6uutU5H8/4Waeru2OrWwbx/Zj6ebuQzHnJEc811PBGZ2/I5brvFwXVV3XZVVXn9P0AzSWQ2s=",
            position = {0, 0}
        }
    ]]
}

return simulations