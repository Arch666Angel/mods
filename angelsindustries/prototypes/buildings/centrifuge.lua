-- add runtime tints to centrifuge animation
if data.raw["assembling-machine"]["centrifuge"].animation then
  local animation = util.table.deepcopy(data.raw["assembling-machine"]["centrifuge"].animation)
  data.raw["assembling-machine"]["centrifuge"].animation = nil
  
  animation.layers[1].filename = "__angelsindustries__/graphics/entity/centrifuge/centrifuge-C-light.png"
  animation.layers[1].hr_version.filename = "__angelsindustries__/graphics/entity/centrifuge/hr-centrifuge-C-light.png"
  animation.layers[2].filename = "__angelsindustries__/graphics/entity/centrifuge/centrifuge-B-light.png"
  animation.layers[2].hr_version.filename = "__angelsindustries__/graphics/entity/centrifuge/hr-centrifuge-B-light.png"
  animation.layers[3].filename = "__angelsindustries__/graphics/entity/centrifuge/centrifuge-A-light.png"
  animation.layers[3].hr_version.filename = "__angelsindustries__/graphics/entity/centrifuge/hr-centrifuge-A-light.png"

  animation.layers[1].apply_runtime_tint = true
  animation.layers[1].hr_version.apply_runtime_tint = true
  animation.layers[2].apply_runtime_tint = true
  animation.layers[2].hr_version.apply_runtime_tint = true
  animation.layers[3].apply_runtime_tint = true
  animation.layers[3].hr_version.apply_runtime_tint = true

  data.raw["assembling-machine"]["centrifuge"].working_visualisations =
  {
    {
      effect = "uranium-glow", -- changes alpha based on energy source light intensity
      light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 1.0, b = 1.0}},
      apply_recipe_tint = "primary"
    },
    {
      apply_recipe_tint = "primary",
      animation = animation,
    }
  }
elseif data.raw["assembling-machine"]["centrifuge"].working_visualisations then --for the case where working_visualisations exist but no "animations"
  local wv=data.raw["assembling-machine"]["centrifuge"].working_visualisations
  for i=1,7 do
    if wv[i] then
      if wv[i].apply_recipe_tint then
        wv[i].apply_recipe_tint="primary"
      end
      if wv[i].light then
        if wv[i].light.apply_recipe_tint then
          wv[i].light.apply_recipe_tint="primary"
        end
      end
    end
  end
end