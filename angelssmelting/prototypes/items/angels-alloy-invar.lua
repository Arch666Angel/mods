if mods["bobplates"] then
  data:extend({
    --INVAR
    --ITEMS
    {
      type = "fluid",
      name = "angels-liquid-molten-invar",
      icon = "__angelssmeltinggraphics__/graphics/icons/molten-invar.png",
      icon_size = 64,
      subgroup = "angels-alloys-casting",
      order = "d[invar]-a[liquid-molten-invar]",
      default_temperature = 0,
      heat_capacity = "0kJ",
      base_color = { r = 95 / 256, g = 125 / 256, b = 122 / 256 },
      flow_color = { r = 95 / 256, g = 125 / 256, b = 122 / 256 },
      max_temperature = 0,
      auto_barrel = false,
    },
  })
end
