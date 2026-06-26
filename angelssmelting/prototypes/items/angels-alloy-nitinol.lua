if mods["bobplates"] then
  data:extend({
    --ITEMS
    {
      type = "fluid",
      name = "angels-liquid-molten-nitinol",
      icon = "__angelssmeltinggraphics__/graphics/icons/molten-nitinol.png",
      icon_size = 64,
      subgroup = "angels-alloys-casting",
      order = "f[nitinol]-a[liquid-molten-nitinol]",
      default_temperature = 0,
      heat_capacity = "0kJ",
      base_color = { r = 106 / 256, g = 92 / 256, b = 153 / 256 },
      flow_color = { r = 106 / 256, g = 92 / 256, b = 153 / 256 },
      max_temperature = 0,
      auto_barrel = false,
    },
  })
end
