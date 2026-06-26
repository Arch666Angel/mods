local create_description = require("prototypes.tips-and-tricks.1-2-x-x-native-aliens.1-2-x-x-native-aliens-description")
local navive_data = angelsmods.functions.compile_alien_data()

for spawner_idx, spawner_data in pairs(navive_data) do
  local spawner_char = string.char(string.byte("a") + math.floor(spawner_idx / 26))
    .. string.char(string.byte("a") + (spawner_idx % 26) - 1)
  local spawner_name, spawn_data = next(spawner_data)
  for unit_idx, unit_data in pairs(spawn_data) do
    local unit_char = string.char(string.byte("a") + math.floor(unit_idx / 26))
      .. string.char(string.byte("a") + (unit_idx % 26) - 1)
    local unit_name, evolution_factor = next(unit_data)
    data:extend({
      {
        type = "technology",
        name = "tips-and-tricks-trigger-angels-native-inhabitants-unit-" .. unit_name,
        icon = "__angelsrefininggraphics__/graphics/icons/void.png",
        icon_size = 32,
        hidden = true,
        prerequisites = nil,
        effects = nil,
        unit = {
          count = 1,
          ingredients = {},
          time = 1,
        },
        order = "z-z",
      },
      {
        type = "tips-and-tricks-item",
        name = "angels-native-inhabitants-unit-" .. unit_name,

        is_title = false,
        tag = "[entity=" .. unit_name .. "]",
        localised_name = data.raw["unit"][unit_name].localised_name
          or { "tips-and-tricks-name.angels-native-inhabitants-unit", "__ENTITY__" .. unit_name .. "__" },
        localised_description = create_description(spawner_name, unit_name, evolution_factor),

        category = "angelsexploration",
        order = "b[native-inhabitants]-"
          .. spawner_char
          .. "["
          .. spawner_name
          .. "]-"
          .. unit_char
          .. "["
          .. unit_name
          .. "]",
        indent = 3,

        starting_status = "locked",
        dependencies = { "angelsexploration" },
        trigger = {
          type = "research",
          technology = "tips-and-tricks-trigger-angels-native-inhabitants-unit-" .. unit_name,
        },

        --simulation = require "prototypes.tips-and-tricks.1-ore-refining.1-ore-refining-simulation",
      },
    })
  end
end
