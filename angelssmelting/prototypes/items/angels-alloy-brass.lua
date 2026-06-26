local bearing_drop_move = {
  filename = "__base__/sound/item/metal-small-inventory-move.ogg",
  volume = 1,
  speed = 1.8,
}
local bearing_pick = {
  filename = "__base__/sound/item/metal-small-inventory-pickup.ogg",
  volume = 1,
  speed = 1.6,
}
local ball_drop_move = {
  filename = "__base__/sound/item/low-density-inventory-move.ogg",
  volume = 0.9,
  speed = 1.6,
}
local ball_pick = {
  filename = "__base__/sound/item/low-density-inventory-pickup.ogg",
  volume = 0.7,
  speed = 1.6,
}

if mods["bobplates"] then
  data:extend({
    --ITEMS
    {
      type = "fluid",
      name = "angels-liquid-molten-brass",
      icon = "__angelssmeltinggraphics__/graphics/icons/molten-brass.png",
      icon_size = 64,
      subgroup = "angels-alloys-casting",
      order = "b[brass]-a[liquid-molten-brass]",
      default_temperature = 0,
      heat_capacity = "0kJ",
      base_color = { r = 204 / 256, g = 153 / 256, b = 102 / 256 },
      flow_color = { r = 204 / 256, g = 153 / 256, b = 102 / 256 },
      max_temperature = 0,
      auto_barrel = false,
    },
    {
      type = "item",
      name = "bob-brass-bearing-ball",
      icon = "__bobplates__/graphics/icons/brass-bearing-ball.png",
      icon_size = 32,
      subgroup = "bob-bearings",
      order = "bab[bob-ball-bearing-cobalt-steel]",
      stack_size = 500,
      drop_sound = ball_drop_move,
      inventory_move_sound = ball_drop_move,
      pick_sound = ball_pick,
      weight = 200,
    },
    {
      type = "item",
      name = "bob-brass-bearing",
      icon = "__bobplates__/graphics/icons/brass-bearing.png",
      icon_size = 32,
      subgroup = "bob-bearings",
      order = "bbb[bob-bearing-cobalt-steel]",
      stack_size = 100,
      drop_sound = bearing_drop_move,
      inventory_move_sound = bearing_drop_move,
      pick_sound = bearing_pick,
      weight = 5000,
    },
  })
end
