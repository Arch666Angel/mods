if mods["bobplates"] then
  data:extend({
    --ITEMS
    {
      type = "fluid",
      name = "angels-liquid-molten-cobalt-steel",
      icon = "__angelssmeltinggraphics__/graphics/icons/molten-cobalt-steel.png",
      icon_size = 64,
      subgroup = "angels-alloys-casting",
      order = "e[cobalt-steel]-a[liquid-molten-cobalt-steel]",
      default_temperature = 0,
      heat_capacity = "0kJ",
      base_color = { r = 61 / 256, g = 107 / 256, b = 153 / 256 },
      flow_color = { r = 61 / 256, g = 107 / 256, b = 153 / 256 },
      max_temperature = 0,
      auto_barrel = false,
    },
  })
end
