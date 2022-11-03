if settings.startup["deco-shred-create-tech"].value then
  data:extend({
    {
      type = "technology",
      name = "deco-shred",
      icon = data.raw["lamp"]["shred-start"].picture_on.filename,
      icon_size = data.raw["lamp"]["shred-start"].picture_on.width,

      prerequisites = {
        "optics",
        "steel-processing",
      },

      effects = {},

      unit = {
        count = 2 * data.raw.technology["steel-processing"].unit.count,
        ingredients = util.table.deepcopy(data.raw.technology["steel-processing"].unit.ingredients),
        time = data.raw.technology["steel-processing"].unit.time,
      },
    },
  })

  for _, decoName in pairs({
    "shred",
    "santa",
    "inter",
    "voske",
    "east",
  }) do
    for _, recipeName in pairs({
      "deco-" .. decoName .. "-1",
      "deco-" .. decoName .. "-2",
      decoName .. "-start",
    }) do
      if data.raw.recipe[recipeName] then
        data.raw.recipe[recipeName].enabled = false
        table.insert(data.raw.technology["deco-shred"].effects, { type = "unlock-recipe", recipe = recipeName })
      end
    end
  end
end
