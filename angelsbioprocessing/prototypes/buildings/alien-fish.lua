local simulations = require("prototypes.factoriopedia-simulations")

data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["angels-alien-fish-1"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["angels-alien-fish-2"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["angels-alien-fish-3"] = {}

-- We have four types of fish
-- Make them spawn on different tiles
-- Else they will overwrite each other
--
--                    |  X   |  Y
-- ---------------------------------
--         Levac fish | Odd  | Odd
-- Dorflurp jellyfish | Even | Odd
--          Santa ray | Odd  | Even
--     Factorian fish | Even | Even

data:extend({
  {
    type = "fish",
    name = "angels-alien-fish-1",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-fish-1.png",
    icon_size = 32,
    flags = { "placeable-neutral", "not-on-map" },
    minable = { mining_time = 1, result = "angels-alien-fish-1-raw", count = 5 },
    factoriopedia_simulation = simulations.factoriopedia_angels_alien_fish_1,
    max_health = 20,
    subgroup = "creatures",
    order = "xa",
    collision_box = { { -0.75, -0.75 }, { 0.75, 0.75 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    pictures = {
      {
        filename = "__angelsbioprocessinggraphics__/graphics/entity/aliens/fish-1.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        scale = 0.5,
      },
    },
    autoplace = {
      order = "xa",
      probability_expression = "x%2*y%2*0.01"
    },
    protected_from_tile_building = false,
  },
  {
    type = "fish",
    name = "angels-alien-fish-2",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-fish-2.png",
    icon_size = 32,
    flags = { "placeable-neutral", "not-on-map" },
    minable = { mining_time = 1, result = "angels-alien-fish-2-raw", count = 5 },
    factoriopedia_simulation = simulations.factoriopedia_angels_alien_fish_2,
    max_health = 20,
    subgroup = "creatures",
    order = "xb",
    collision_box = { { -0.75, -0.75 }, { 0.75, 0.75 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    pictures = {
      {
        filename = "__angelsbioprocessinggraphics__/graphics/entity/aliens/fish-2.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        scale = 0.5,
      },
    },
    autoplace = {
      order = "xb",
      probability_expression = "+x%2*y%2*0.01"
    },
    protected_from_tile_building = false,
  },
  {
    type = "fish",
    name = "angels-alien-fish-3",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-fish-3.png",
    icon_size = 32,
    flags = { "placeable-neutral", "not-on-map" },
    minable = { mining_time = 1, result = "angels-alien-fish-3-raw", count = 5 },
    factoriopedia_simulation = simulations.factoriopedia_angels_alien_fish_3,
    max_health = 20,
    subgroup = "creatures",
    order = "xc",
    collision_box = { { -0.75, -0.75 }, { 0.75, 0.75 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    pictures = {
      {
        filename = "__angelsbioprocessinggraphics__/graphics/entity/aliens/fish-3.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        scale = 0.5,
      },
    },
    autoplace = {
      order = "xc",
      probability_expression = "x%2*+y%2*0.01"
    },
    protected_from_tile_building = false,
  },
})

if data.raw["fish"]["fish"] and data.raw["fish"]["fish"].autoplace then
  data.raw["fish"]["fish"].autoplace.probability_expression = "+x%2*+y%2*0.01"
end
