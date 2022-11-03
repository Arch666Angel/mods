orderstring = require("orderstring")

for _, decoName in pairs({
  "shred",
  "santa",
  "inter",
  "voske",
  "east",
}) do
  local buildingName = "deco-" .. decoName .. "-1"

  data:extend({
    -- item
    {
      type = "item",
      name = buildingName,
      localised_name = { "decoration.vertical", { "names." .. decoName } },
      icon = "__angelsaddons-shred__/graphics/icons/" .. buildingName .. ".png",
      icon_size = 32,
      --flags = {},
      subgroup = "deco-shred",
      order = "z" .. orderstring[decoName] .. "-b1",
      place_result = buildingName,
      stack_size = 10,
    },
    -- entity
    {
      type = "simple-entity-with-force",
      name = buildingName,
      localised_name = { "decoration.vertical", { "names." .. decoName } },
      render_layer = "object",
      icon = "__angelsaddons-shred__/graphics/icons/" .. buildingName .. ".png",
      icon_size = 32,
      flags = { "placeable-neutral", "player-creation" },
      order = "a",
      minable = { mining_time = 1, result = buildingName },
      max_health = 100,
      corpse = "small-remnants",
      collision_box = { { -1.35, -1.35 }, { 1.35, 1.35 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      drawing_box = { { -1.5, -2.5 }, { 1.5, 1.5 } },
      random_animation_offset = false,
      animations = {
        {
          filename = "__angelsaddons-shred__/graphics/entity/" .. buildingName .. ".png",
          priority = "extra-high",
          width = 320,
          height = 320,
          line_length = 6,
          frame_count = 36,
          animation_speed = 0.25,
          scale = 0.5,
          shift = { 0.5, -0.5 },
        },
      },
    },
    -- recipe
    {
      type = "recipe",
      name = buildingName,
      energy_required = 2,
      enabled = true,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 5 },
        { type = "item", name = "steel-plate", amount = 5 },
        { type = "item", name = "stone-brick", amount = 5 },
      },
      result = buildingName,
    },
  })
end
