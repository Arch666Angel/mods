require("__base__/prototypes/factoriopedia-util")
local simulations = {}

--Note on prototype name changes.
--If prototype names are changed, which is likely to happen, the blueprint strings need to be decoded to json, where the prototype name needs to be changed.
--Afterwards, the json needs to be encrypted back into the string and the string in this file needs to be replaced.
--Basic encoder/decoder: https://haapanen.github.io/factorio-tools/#/codec

-- Crawler Trains

simulations.factoriopedia_crawler_locomotive = {
  init = [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9FuwjAMRf/FzylaoS2svzKhKgRTrKUOStIyhPLvSwkbSGxSpL7Yvfck9a2vsNMjniyxh/YKpAw7aD+u4KhnqeceywGhBStJQxBAvMcvaMuwFYDsyRMmx624dDwOO7RRIH6czkdvf/TFDSHgZFx0GZ7hkVSsBVyifh3he7Ko0rsqiBfmMptZZzNX2cxVNrP6ZUruUbtCWXnWaAttlBmMpwn/4JeLcvl0b2S509hp05PzpFx3PlKsBzMR99AepHYowFiKh8vEeVvMAPI4pEho/xQgj0qjtMVhxBRkkkUVd8RTpBh7SbZHFVN0XqrPyA7bEJ/Xj62zB1hmD7DJZeYj17nI/Jg3ucj//sbtPF2jPru4dpza9+2bu3fFnFM84rGnAia07oZYbspqs6qbpqnqpn4P4RvuKEdm",
            position = {0, 0}
        }
    ]],
}

simulations.factoriopedia_crawler_locomotive_wagon = {
  init = [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9FuwjAMRf/FzylaoS2svzKhKgRTrKUJStIyhPLvcwkbSGxSpL7Yvfck9a2vsNMjnhyZAO0VSFnjof24gqfeSD33jBwQWnCSNEQBZPb4BW0ZtwLQBAqEyXErLp0Zhx06Fogfpw/s7Y+huCEEnKxnlzUznEnFWsCF9WuG78mhSu+qKF6Yy2xmnc1cZTNX2czqlylNj9oXysmzRldoq+xgA01YBORBuj+OKRfl8un6aOROY6dtTz6Q8t35SFwPdiLTQ3uQ2qMA64jvIBPnbTEDKOCQkqH9U45mVBqlKw4jpjyTjFWmIzMxxbpLsj0qDtMHqT6ZHbeRn9dvrrPnWGbPscll5iPXucj8tDe5yP9+yu08Xas+O94+k9r3JZy7d8WcEx/xWFcBEzp/Qyw3ZbVZ1U3TVHVTv8f4Dbs7ShU=",
            position = {0, 0}
        }
    ]],
}

simulations.factoriopedia_crawler_wagon = {
  init = [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk91uwjAMhd/F1ymCtinQV5mmKhQvWEsdlAQYQn33uZT9SGxSLnPi89mW7Rvs3AmPgThBewPqPUdoX24QybJxk8ZmQGghGHIwKiDe4we0q/FVAXKiRDg77o9rx6dhh0EC1JczJvHaQyruCAVHH8XleYILqVgruEJbaoHvKWA//9WjemKW2UydzayymVU2s/5mGrboYtEHc3EYit4E64uLseJ8TrBcbKv1r8qRzc5h57ylmKiP3eVA8h78mdhC+2ZcRAU+kKQ3M2i5KPU0o7NIPgiIT879UaHO7nqV3XWTy8xHrnOR+bPZ5CL/WyHZ+5h8/97JrfAsP05mUh8RlHCQFD/HpeCMId4R5WZVbyrdNE2tG70dx08ELi18",
            position = {0, 0}
        }
    ]],
}

simulations.factoriopedia_crawler_bot_wagon = {
  init = [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk91uwjAMhd/F1ymCtinQV5mmKi1esZY6KElhCPXd51L2I7FJucyJz2dbtm/Q2hFPnjhCfQPqHAeoX24QqGdjZ43NgFCDN2RhUkB8wA+oN9OrAuRIkXBx3B/XhsehRS8B6ssZonj7Y8zuCAUnF8TleIYLKdsquEKda4EfyGO3/JWTemLmyUydzCySmUUys/xmGu7Rhqzz5mLRZ961LmYX04vzOcF6tS+2vypHNq3FxrqeQqQuNJcjyXtwZ+Ie6jdjAypwniS9WUDrVa7nGZ1Fcl5APFr7R4U6uetNctdVKjMduU1Fps9ml4r8b4Vk70N03Xsjt8KL/DiZWX1EUMRBUvwcl4Iz+nBH5LtNuSt0VVWlrvR+mj4BOlAtlg==",
            position = {0, 0}
        }
    ]],
}

--Petro Trains

simulations.factoriopedia_petro_locomotive = {
  init = [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9FuwjAMRf/FzylaoS2svzKhKhRTLFIHJWk3hPrvcwkbSGxSpL7Yvfck9a2vsDMDnh1xgPoK1Fr2UH9cwVPH2sw91j1CDU6TgUkB8R6/oM6nrQLkQIEwOm7FpeGh36ETgfpx+iDe7hiyG0LB2XpxWZ7hQsrWCi6iXwt8Tw7b+K6Y1Atzmcwsk5mrZOYqmVn8MjV3aHx2xuBsZmxrextoxD/o+SJfPt0aWe8MNsZ25AO1vvk8ktS9HYk7qA/aeFRgHcnROnLeFjOAAvYxENo/xcdDa1C77DBgjDHKRMUN8SgU6y7R9qgkQx90exL2tJ3kef3UMnl8efL4qlRmOnKdikwPeZOK/O9f3M7Tte2pkaXj2L7v3ty9K+ac5IjHlioY0fkbYrnJi82qrKqqKKvyfZq+ASE7RqA=",
            position = {0, 0}
        }
    ]],
}

simulations.factoriopedia_petro_tank1 = {
  init = [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9GOgjAQRf9lnotZFNDlVzaGVBxxYpmStugaw7/vYN3VxGzShJcZ7j0tc5kb7MyIgyMOUN+AWsse6q8beOpYm7nHukeowWkyMCkg3uM31Pm0VYAcKBBGx724Njz2O3QiUL9OH8TbHUN2RygYrBeX5RkupGyt4Cr6tcD35LCN74pJvTGXycwymblKZq6SmcUfU3OHxmcDBmezTvvsojtxvcPzRb58uTSy3hlsjO3IB2p9czmS1L09E3dQH7TxqMA6kpN15HwsZgAF7GMetH9Jj8fWoHbZYcSYYpSJihvis1Csu0bbs5IIfdDtSdjTdpLn/UvL5OnlydOrUpnpyHUqMj3jTSryv19xO0/XtqdGdo5j+7F6c/ehmHOSI55LquCMzt8Ry01ebFZlVVVFWZWf0/QD5m9F4w==",
            position = {0, 0}
        }
    ]],
}

simulations.factoriopedia_petro_tank2 = {
  init = [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9GOgjAQRf9lnotZFNDlVzaGVBxxYpmStugaw7/vYN3VxGzShJcZ7j0tc5kb7MyIgyMOUN+AWsse6q8beOpYm7nHukeowWkyMCkg3uM31Pm0VYAcKBBGx724Njz2O3QiUL9OH8TbHUN2RygYrBeX5RkupGyt4Cr6tcD35LCN74pJvTGXycwymblKZq6SmcUfU3OHxmcDBmczSya76E5c7/B8kS9fLo2sdwYbYzvygVrfXI4kdW/PxB3UB208KrCO5GQdOR+LGUAB+5gH7V/S47E1qF12GDGmGGWi4ob4LBTrrtH2rCRCH3R7Eva0neR5/9IyeXp58vSqVGY6cp2KTM94k4r871fcztO17amRnePYfqze3H0o5pzkiOeSKjij83fEcpMXm1VZVVVRVuXnNP0A+9VF7A==",
            position = {0, 0}
        }
    ]],
}

--Smelting Trains

simulations.factoriopedia_smelting_locomotive = {
  init = [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9FuwjAMRf/FzylaoS2svzKhKhRTLFIHJWk3hPrvcwkbSGxSpLzY9T1OfeMr7MyAZ0ccoL4CtZY91B9X8NSxNnOOdY9Qg9NkYFJAvMcvqPNpqwA5UCCMiltwaXjod+ikQP0ofRBtdwzZDaHgbL2oLM9wIWVrBRepXwt8Tw7b+K2Y1Atzmcwsk5mrZOYqmVn8MjV3aHzmezSBuMuMbW1vA434R4N8kS+fLo6sdwYbYzvygVrffB5J4t6OQoL6oI1HBdaRdNeR87aYARSwj57Q/slBHlqD2mWHAaOTsUyquCEehWLdJcoekdjog25Pwp62k5zXvy2TJ5gnT7BKZaYj16nIdJ83qcj/nuN2nq5tT43sHcf0ff3m7L1i9klaPBZVwYjO3xDLTV5sVmVVVUVZle/T9A1770fZ",
            position = {0, 0}
        }
    ]],
}

simulations.factoriopedia_smelting_locomotive_tender = {
  init = [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk9FuwjAMRf/FzylaoS2svzKhKhRTLFIHJWk3hPrvcwkbSGxSpL7Yvfck9a2vsDMDnh1xgPoK1Fr2UH9cwVPH2sw91j1CDU6TgUkB8R6/oM6nrQLkQIEwOm7FpeGh36ETgfpx+iDe7hiyG0LB2XpxWZ7hQsrWCi6iXwt8Tw7b+K6Y1Atzmcwsk5mrZOYqmVn8MjV3aHzmezSBuMuMbW1vA42YBZRJuj/OyRf58un+yHpnsDG2Ix+o9c3nkaTu7ShAqA/aeFRgHckldOS8LWYABexjNLR/CpKH1qB22WHAGGiUiYob4lEo1l2i7VFJmj7o9iTsaTvJ8/rRZfIg8+RBVqnMdOQ6FZke9yYV+d9fuZ2na9tTI+vHsX3fwrl7V8w5yRGPfVUwovM3xHKTF5tVWVVVUVbl+zR9A0wnSog=",
            position = {0, 0}
        }
    ]],
}

simulations.factoriopedia_smelting_wagon = {
  init = [[
        game.simulation.camera_position = {1, 0.5}
        game.surfaces[1].create_entities_from_blueprint_string
        {
            string = "0eJyNk91uwjAMhd/F1yla6Q+srzKhKhRTLFIHJSkMob77XMIGEpoUKTd2fT6nPvENtmbEkyMO0NyAOssemq8beOpZmznHekBowGkyMCkg3uE3NPm0UYAcKBBGxT24tjwOW3RSoH6VPoi2P4TsjlBwsl5Ulme4kLKVgqvUrwS+I4dd/FZO6o25TGZWycwimVkkM8s/puYejc/8gCYQ91mnXW+zi+5F+t4hX+TLl5sj663B1tiefKDOt5cDSTzYs6Cg2WvjUYF1JO115HwsZgAFHKIptHuxkMfOoHbZfsRoZSyTKm6Jz0Kx7hplz0h89EF3R2FPm0nO++9WySPMk0dYpzLTkatUZLrR61Tkf+9xM0/XdsdWFo9j+rF/c/ZRMfskLZ6bquCMzt8Ry3VerouqruuyqqvPafoBKKNH7Q==",
            position = {0, 0}
        }
    ]],
}

return simulations
