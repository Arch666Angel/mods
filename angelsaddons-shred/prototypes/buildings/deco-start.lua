local orderstring = require("orderstring")

for _, decoName in pairs({
  "shred",
  --"santa",
  --"inter",
  --"voske",
  --"east",
}) do
  local buildingName = decoName .. "-start"

  data:extend({
    -- item
    {
      type = "item",
      name = buildingName,
      localised_name = { "decoration.start", { "names.shred" } },
      icon = "__angelsaddons-shred__/graphics/icons/" .. buildingName .. ".png",
      icon_size = 32,
      --flags = {},
      subgroup = "deco-shred",
      order = "z" .. orderstring[decoName] .. "-a",
      place_result = buildingName,
      stack_size = 10,
    },
    -- entity
    {
      type = "lamp",
      name = buildingName,
      localised_name = { "decoration.start", { "names.shred" } },
      icon = "__angelsaddons-shred__/graphics/icons/" .. buildingName .. ".png",
      icon_size = 32,
      flags = { "placeable-neutral", "player-creation" },
      collision_mask = { "ghost-layer", "water-tile" },
      --render_layer = "decals",
      --tile_layer = 70,
      minable = { mining_time = 20, result = buildingName },
      max_health = 1000,
      corpse = "big-remnants",
      collision_box = { { -5.4, -0.4 }, { 5.4, 10.4 } },
      selection_box = { { -5.5, -0.5 }, { 5.5, 10.5 } },
      impact_category = "metal",
      energy_source = {
        type = "electric",
        usage_priority = "lamp",
      },
      energy_usage_per_tick = "50KW",
      darkness_for_all_lamps_on = 0.5,
      darkness_for_all_lamps_off = 0.3,
      light = { intensity = 0.9, size = 40, color = { r = 1.0, g = 1.0, b = 1.0 } },
      light_when_colored = { intensity = 1, size = 6, color = { r = 1.0, g = 1.0, b = 1.0 } },
      glow_size = 6,
      glow_color_intensity = 0.135,
      picture_off = {
        filename = "__angelsaddons-shred__/graphics/entity/" .. buildingName .. "-off.png",
        priority = "high",
        width = 416,
        height = 416,
        frame_count = 1,
        direction_count = 1,
        shift = { 0, 5 },
      },
      picture_on = {
        filename = "__angelsaddons-shred__/graphics/entity/" .. buildingName .. "-on.png",
        priority = "high",
        width = 416,
        height = 416,
        frame_count = 1,
        direction_count = 1,
        shift = { 0, 5 },
      },
      signal_to_color_mapping = {
        { type = "virtual", name = "signal-red", color = { r = 1, g = 0, b = 0 } },
        { type = "virtual", name = "signal-green", color = { r = 0, g = 1, b = 0 } },
        { type = "virtual", name = "signal-blue", color = { r = 0, g = 0, b = 1 } },
        { type = "virtual", name = "signal-yellow", color = { r = 1, g = 1, b = 0 } },
        { type = "virtual", name = "signal-pink", color = { r = 1, g = 0, b = 1 } },
        { type = "virtual", name = "signal-cyan", color = { r = 0, g = 1, b = 1 } },
      },
      circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
      circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance,
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
