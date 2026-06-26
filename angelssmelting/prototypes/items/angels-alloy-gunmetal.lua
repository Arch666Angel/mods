if mods["bobplates"] then
  data:extend({
    --ITEMS
    {
      type = "fluid",
      name = "angels-liquid-molten-gunmetal",
      icon = "__angelssmeltinggraphics__/graphics/icons/molten-gunmetal.png",
      icon_size = 64,
      subgroup = "angels-alloys-casting",
      order = "c[gunmetal]-a[liquid-molten-gunmetal]",
      default_temperature = 0,
      heat_capacity = "0kJ",
      base_color = { r = 224 / 256, g = 103 / 256, b = 70 / 256 },
      flow_color = { r = 224 / 256, g = 103 / 256, b = 70 / 256 },
      max_temperature = 0,
      auto_barrel = false,
    },
  })
end
