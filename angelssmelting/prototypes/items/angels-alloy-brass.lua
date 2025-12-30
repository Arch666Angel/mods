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
  })
end
