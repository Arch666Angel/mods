if angelsmods.industries.overhaul then
  data:extend({
    {
      type = "item",
      name = "angels-burner-reactor",
      icon = "__angelsindustries__/graphics/icons/fast-reactor-icon.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "angels-power-nuclear",
      order = "a[reactor]-b",
      place_result = "angels-burner-reactor",
      stack_size = 10,
    },
  })
end
