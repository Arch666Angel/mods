if mods["bobplates"] then
  data:extend({
    --ITEMS
    {
      type = "fluid",
      name = "angels-liquid-molten-bronze",
      icon = "__angelssmeltinggraphics__/graphics/icons/molten-bronze.png",
      icon_size = 64,
      subgroup = "angels-alloys-casting",
      order = "a[bronze]-a[liquid-molten-bronze]",
      default_temperature = 0,
      heat_capacity = "0kJ",
      base_color = { r = 224 / 256, g = 155 / 256, b = 58 / 256 },
      flow_color = { r = 224 / 256, g = 155 / 256, b = 58 / 256 },
      max_temperature = 0,
      auto_barrel = false,
    },
  })
end
